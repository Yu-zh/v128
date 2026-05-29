# MoonBit Core V128 Proposal

## Summary

Add a first-class `V128` value type to the MoonBit compiler and expose SIMD operations through a `moonbitlang/core/v128` package.

The design has two layers:

1. A small compiler primitive layer that defines the bit representation of `V128`.
2. A core library layer that implements SIMD operations as ordinary MoonBit functions with fallback bodies, while allowing the compiler to recognize selected calls as target intrinsics.

This keeps portable semantics in MoonBit source and lets wasm/native backends lower hot operations to dedicated SIMD instructions.

## Goals

- Provide a stable 128-bit SIMD value type for MoonBit code.
- Preserve WebAssembly SIMD naming and semantics where practical.
- Support efficient lowering on wasm SIMD and AArch64 NEON.
- Keep every operation executable on targets that do not recognize SIMD intrinsics.
- Make fallback MoonBit implementations the semantic source of truth.
- Avoid heap allocation, GC tracing, or FFI object wrappers for `V128` values.

## Non-Goals

- Do not require every backend to implement native SIMD instructions initially.
- Do not rely on the optimizer to rediscover SIMD from scalar code.
- Do not expose target-specific NEON/SSE APIs in the first core package.
- Do not make `V128` a vector of references or any GC-traced value.

## Primitive Type

The compiler adds an unboxed primitive value type:

```moonbit
type V128
```

`V128` is a non-reference scalar value. It is copied and passed by value. It contains exactly 128 bits and has no GC-visible fields.

The canonical bit representation is two `UInt64` words:

```text
V128 = { lo : UInt64, hi : UInt64 }
```

Byte lane order:

- Byte lane 0 is the least significant byte of `lo`.
- Byte lane 7 is the most significant byte of `lo`.
- Byte lane 8 is the least significant byte of `hi`.
- Byte lane 15 is the most significant byte of `hi`.
- `v128.load` and `v128.store` preserve these 16 bytes exactly.

This matches the expected little-endian lane order for WebAssembly-style SIMD APIs.

## Required Bit Primitives

The compiler provides three primitive operations:

```moonbit
fn V128::from_bits(lo : UInt64, hi : UInt64) -> V128 = "%v128.make"
fn V128::lo_bits(self : V128) -> UInt64 = "%v128.lo"
fn V128::hi_bits(self : V128) -> UInt64 = "%v128.hi"
```

Required identities:

```moonbit
V128::from_bits(lo, hi).lo_bits() == lo
V128::from_bits(lo, hi).hi_bits() == hi
V128::from_bits(v.lo_bits(), v.hi_bits()) == v
```

These primitives are enough to define all portable fallback behavior.

## Core Package

Add a package:

```text
moonbitlang/core/v128
```

The package exports the primitive type and SIMD operations:

```moonbit
pub type V128

pub fn V128::from_bits(lo : UInt64, hi : UInt64) -> V128
pub fn V128::lo_bits(self : V128) -> UInt64
pub fn V128::hi_bits(self : V128) -> UInt64

pub fn i8x16_add(a : V128, b : V128) -> V128
pub fn i16x8_add(a : V128, b : V128) -> V128
pub fn i32x4_add(a : V128, b : V128) -> V128
pub fn f32x4_add(a : V128, b : V128) -> V128
pub fn v128_and_(a : V128, b : V128) -> V128
```

The public operation names should follow WebAssembly SIMD instruction names closely. This makes the API easy to compare against wasm behavior and keeps the existing `Yu-zh/v128` experiment useful as a conformance prototype.

## Intrinsic Candidate Functions

SIMD operations should be written as normal MoonBit functions with fallback bodies, plus metadata that marks them as intrinsic candidates.

Illustrative syntax:

```moonbit
#intrinsic("%v128.i8x16.add")
pub fn i8x16_add(a : V128, b : V128) -> V128 {
  // Portable fallback using lo_bits/hi_bits/from_bits.
}
```

The exact annotation syntax is open, but the compiler behavior should be:

- Type check and compile the function body normally.
- When a direct call to the known core function is seen, the backend may replace it with the intrinsic.
- If the backend does not recognize the intrinsic, compile the fallback body.
- If the function is used as a first-class value, use the ordinary function.
- The intrinsic lowering must be behaviorally equivalent to the fallback body.

This avoids making all SIMD operations hard compiler primitives while still enabling efficient target lowering.

## Immediate-Sensitive Intrinsics

Some SIMD operations need immediate operands for best lowering, especially `i8x16.shuffle` and lane extract/replace.

These should also be normal functions with fallback bodies:

```moonbit
#intrinsic("%v128.i8x16.shuffle", const_args=[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17])
pub fn i8x16_shuffle(
  a : V128,
  b : V128,
  i0 : Int,
  i1 : Int,
  i2 : Int,
  i3 : Int,
  i4 : Int,
  i5 : Int,
  i6 : Int,
  i7 : Int,
  i8 : Int,
  i9 : Int,
  i10 : Int,
  i11 : Int,
  i12 : Int,
  i13 : Int,
  i14 : Int,
  i15 : Int,
) -> V128 {
  // Dynamic fallback: validate indexes and select bytes.
}
```

Compiler behavior:

- If required arguments are compile-time constants and valid, lower to the target intrinsic.
- If any required argument is not constant, compile the fallback implementation.
- If a constant argument is out of range, report the same error behavior as the fallback or reject during compilation if the API specifies compile-time validation.

This keeps one user-facing function while allowing efficient immediate forms.

## Backend Lowering

### Wasm Backend

Lower recognized intrinsic candidates directly to wasm SIMD instructions:

```text
%v128.i8x16.add      -> i8x16.add
%v128.i16x8.add      -> i16x8.add
%v128.f32x4.add      -> f32x4.add
%v128.i8x16.shuffle  -> i8x16.shuffle
```

If wasm SIMD is disabled or unavailable, use the fallback body.

### C Backend

The C backend should support multiple target implementations behind one compiler-level `V128` abstraction:

```c
#if defined(__aarch64__) || defined(__ARM_NEON)
  #include <arm_neon.h>
  typedef uint8x16_t moonbit_v128_t;
  #define MOONBIT_V128_NEON 1
#elif defined(__SSE2__)
  #include <emmintrin.h>
  typedef __m128i moonbit_v128_t;
  #define MOONBIT_V128_SSE2 1
#else
  typedef struct {
    uint64_t lo;
    uint64_t hi;
  } moonbit_v128_t;
  #define MOONBIT_V128_SCALAR 1
#endif
```

The generated C should choose a target implementation with conditional compilation:

- AArch64/ARM NEON: use `uint8x16_t` as the native carrier.
- x86/x86_64: use SSE/AVX family intrinsics when the required feature is available.
- Generic fallback: use `struct { uint64_t lo; uint64_t hi; }` and scalar helper code.

For AArch64, use `uint8x16_t` as the canonical bit container and reinterpret to lane-specific vector types for each operation:

```c
static inline moonbit_v128_t moonbit_v128_i8x16_add(
  moonbit_v128_t a,
  moonbit_v128_t b
) {
  return vaddq_u8(a, b);
}

static inline moonbit_v128_t moonbit_v128_i16x8_add(
  moonbit_v128_t a,
  moonbit_v128_t b
) {
  return vreinterpretq_u8_u16(
    vaddq_u16(vreinterpretq_u16_u8(a), vreinterpretq_u16_u8(b))
  );
}

static inline moonbit_v128_t moonbit_v128_f32x4_add(
  moonbit_v128_t a,
  moonbit_v128_t b
) {
  return vreinterpretq_u8_f32(
    vaddq_f32(vreinterpretq_f32_u8(a), vreinterpretq_f32_u8(b))
  );
}
```

`lo_bits`, `hi_bits`, and `from_bits` can lower through `uint64x2_t` reinterpretation and lane extract/combine operations.

For x86 targets, use the narrowest available feature level that preserves semantics:

- SSE2 for basic integer bitwise operations, byte/word/dword arithmetic, and 128-bit loads/stores.
- SSSE3 for byte shuffle-like operations where applicable.
- SSE4.1 for selected min/max, blend, extension, and conversion operations.
- AVX/AVX2 only when the compiler target enables them; the public `V128` value still remains 128 bits.

Example x86 lowering:

```c
#if defined(__SSE2__)
static inline moonbit_v128_t moonbit_v128_i8x16_add(
  moonbit_v128_t a,
  moonbit_v128_t b
) {
  return _mm_add_epi8(a, b);
}
#endif
```

For fallback C targets, operations either lower to inline scalar code over `lo`/`hi` or call small static helper functions. Unrecognized intrinsics use the MoonBit fallback body.

## Semantic Requirements

All backends must preserve these properties:

- `V128` is exactly 128 bits.
- `V128` has no references and is not GC-traced.
- Bit reinterpretation between lane types is exact and allocation-free.
- Integer lane arithmetic wraps unless the operation is explicitly saturating.
- Signed operations interpret lane bits as two's-complement signed integers.
- Unsigned operations interpret lane bits as unsigned integers.
- Comparison operations produce all-ones lanes for true and all-zero lanes for false.
- Loads and stores preserve byte order exactly.
- Float behavior should match WebAssembly SIMD for functions named after wasm SIMD instructions.

Float operations require special care for:

- NaN propagation.
- Signed zero.
- `min`, `max`, `pmin`, and `pmax`.
- Saturating float-to-int conversions.
- Relaxed SIMD operations.

These should be added after the integer and bitwise subset is stable.

## Suggested Initial Operation Set

The first milestone should be intentionally small:

- Bit primitives: `from_bits`, `lo_bits`, `hi_bits`.
- Constants and splats for integer lanes.
- `v128_and_`, `v128_or_`, `v128_xor`, `v128_not`, `v128_andnot`, `v128_bitselect`.
- `v128_load`, `v128_store`.
- Integer add/sub for `i8x16`, `i16x8`, `i32x4`, `i64x2`.
- Integer comparisons for `i8x16`, `i16x8`, `i32x4`, `i64x2`.
- Lane extract/replace with constant-lane intrinsic lowering and dynamic fallback.
- `i8x16_shuffle` with constant-index intrinsic lowering and dynamic fallback.

After that:

- Saturating integer arithmetic.
- Widening, narrowing, pairwise, and extmul operations.
- Float arithmetic and comparisons.
- Conversion operations.
- Relaxed SIMD operations.

## Testing Strategy

Use the existing `Yu-zh/v128` experiment as the conformance seed.

For every operation:

1. Test the fallback implementation directly.
2. Test wasm intrinsic lowering.
3. Test C backend intrinsic lowering for available target SIMD features.
4. Compare all backends on the same byte-level expected values.

Important test categories:

- Lane order and bit reinterpretation.
- Boundary values for signed and unsigned lanes.
- Saturating boundaries.
- Dynamic and constant shuffle indexes.
- Load/store offsets and lane loads/stores.
- Float edge cases: NaN, infinity, signed zero, conversion boundaries.

## Open Questions

- What annotation syntax should mark intrinsic candidate functions?
- Should immediate-sensitive intrinsics reject invalid constant indexes at compile time, or preserve fallback runtime behavior?
- Should relaxed SIMD operations be included in the first public package or delayed?
- Should `V128` live directly in `moonbitlang/core/v128`, or should the primitive type be globally known with the package only providing operations?
- Which C target feature levels should be enabled by default, and which should require explicit compiler flags?

## Recommendation

Adopt the three bit primitives as the minimal compiler contract, but implement public SIMD operations as fallback MoonBit functions annotated as intrinsic candidates.

This gives MoonBit a portable semantic definition for `V128` while allowing wasm and native C backends to use real SIMD instructions without forcing every operation to be a hardwired compiler primitive.
