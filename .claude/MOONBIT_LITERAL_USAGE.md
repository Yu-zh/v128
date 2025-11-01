# MoonBit Literal Usage Notes for v128 SIMD Types

## General Principle for All SIMD const_ Functions

**All SIMD `const_()` functions accept UNSIGNED integer types**, not signed types:
- `I8x16::const_()` takes **Byte** (UInt8, range: 0-255)
- `I16x8::const_()` takes **UInt16** (range: 0-65535)
- `I32x4::const_()` takes **UInt** (UInt32, range: 0-4294967295)
- `I64x2::const_()` takes **UInt64** (range: 0-18446744073709551615)

### Universal Pattern for All SIMD Types

#### ✅ Rule 1: Non-negative values
Use literals directly - **no conversion needed**:
```moonbit
I8x16::const_(0, 1, 127, 128, 255, ...)           // 0-255
I16x8::const_(0, 1, 32767, 32768, 65535, ...)     // 0-65535
I32x4::const_(0, 1, 2147483647, 2147483648, ...)  // 0-4294967295
I64x2::const_(0, 1, 9223372036854775807, ...)     // 0-18446744073709551615
```

#### ✅ Rule 2: Negative signed values
Conversion depends on the type:

**I8x16 (special case - no Int8 type in MoonBit):**
Use `.to_byte()` conversion from Int:
```moonbit
I8x16::const_(
  (-1 : Int).to_byte(),      // -1 as Int8
  (-128 : Int).to_byte(),    // -128 as Int8
  (-64 : Int).to_byte(),     // -64 as Int8
  // ...
)
```

**I16x8, I32x4, I64x2:**
Use `reinterpret_as_uint*()` conversion:
```moonbit
I16x8::const_(
  (-1 : Int16).reinterpret_as_uint16(),     // -1 in Int16
  (-32768 : Int16).reinterpret_as_uint16(), // -32768 in Int16
)

I32x4::const_(
  (-1 : Int).reinterpret_as_uint(),          // -1 in Int32
  (-2147483648 : Int).reinterpret_as_uint(), // -2147483648 in Int32
)

I64x2::const_(
  (-1 : Int64).reinterpret_as_uint64(),      // -1 in Int64
  (-9223372036854775808 : Int64).reinterpret_as_uint64(), // min Int64
)
```

### ❌ Common Mistakes to Avoid

#### DON'T use `.to_*()` conversions on POSITIVE literals:
```moonbit
// Wrong - unnecessary conversions for positive values:
I8x16::const_((127).to_byte(), ...)
I16x8::const_((32767).to_int16(), ...)
I32x4::const_((100).to_int(), ...)

// Correct - use literals directly:
I8x16::const_(127, ...)
I16x8::const_(32767, ...)
I32x4::const_(100, ...)
```

#### DON'T use `(value : UInt*).reinterpret_as_int*()`:
```moonbit
// Wrong:
I8x16::const_((255 : Byte).reinterpret_as_int(), ...)
I16x8::const_((65535 : UInt16).reinterpret_as_int16(), ...)
I32x4::const_((4294967295 : UInt).reinterpret_as_int(), ...)

// Correct:
I8x16::const_(255, ...)
I16x8::const_(65535, ...)
I32x4::const_(4294967295, ...)
```

#### DON'T use raw negative literals:
```moonbit
// Wrong - will cause type errors:
I8x16::const_(-1, -128, ...)
I16x8::const_(-1, -32768, ...)
I32x4::const_(-1, -2147483648, ...)

// Correct:
I8x16::const_((-1 : Int).to_byte(), ...)            // Note: .to_byte() for I8x16
I16x8::const_((-1 : Int16).reinterpret_as_uint16(), ...)
I32x4::const_((-1 : Int).reinterpret_as_uint(), ...)
```

#### DON'T use `reinterpret_as_byte()` for I8x16 (doesn't exist):
```moonbit
// Wrong - Int doesn't have reinterpret_as_byte():
I8x16::const_((-1 : Int).reinterpret_as_byte(), ...)

// Correct - use .to_byte() instead:
I8x16::const_((-1 : Int).to_byte(), ...)
```

## Quick Reference Table

| SIMD Type | Parameter Type | Unsigned Range | Negative Conversion |
|-----------|---------------|----------------|---------------------|
| `I8x16::const_` | Byte (UInt8) | 0 - 255 | `(-N : Int).to_byte()` ⚠️ |
| `I16x8::const_` | UInt16 | 0 - 65535 | `(-N : Int16).reinterpret_as_uint16()` |
| `I32x4::const_` | UInt (UInt32) | 0 - 4294967295 | `(-N : Int).reinterpret_as_uint()` |
| `I64x2::const_` | UInt64 | 0 - 18446744073709551615 | `(-N : Int64).reinterpret_as_uint64()` |

⚠️ **Note:** I8x16 uses `.to_byte()` because MoonBit has no Int8 type

## Examples by Type

### I8x16 (Byte/UInt8) ⚠️ Special Case

**I8x16 is different** - MoonBit has no Int8 type, so use `.to_byte()` instead of `.reinterpret_as_*()`:

```moonbit
// Positive values: direct
I8x16::const_(0, 127, 128, 255, 100, 200, 50, 75, 10, 20, 30, 40, 60, 80, 90, 110)

// Negative Int8 values: use .to_byte()
I8x16::const_(
  (-1 : Int).to_byte(),      // -1 as signed byte
  (-128 : Int).to_byte(),    // -128 (min Int8)
  (-64 : Int).to_byte(),     // -64
  (-32 : Int).to_byte(),
  (-16 : Int).to_byte(),
  (-8 : Int).to_byte(),
  (-4 : Int).to_byte(),
  (-2 : Int).to_byte(),
  (-100 : Int).to_byte(),
  (-50 : Int).to_byte(),
  (-25 : Int).to_byte(),
  (-127 : Int).to_byte(),
  (-120 : Int).to_byte(),
  (-60 : Int).to_byte(),
  (-30 : Int).to_byte(),
  (-15 : Int).to_byte(),
)
```

### I16x8 (UInt16)
```moonbit
// Positive values: direct
I16x8::const_(0, 32767, 32768, 65535, 1000, 2000, 3000, 4000)

// Negative Int16 values: convert
I16x8::const_(
  (-1 : Int16).reinterpret_as_uint16(),
  (-32768 : Int16).reinterpret_as_uint16(),
  (-16384 : Int16).reinterpret_as_uint16(),
  // ... 5 more values
)
```

### I32x4 (UInt/UInt32)
```moonbit
// Positive values: direct
I32x4::const_(0, 2147483647, 2147483648, 4294967295)

// Negative Int32 values: convert
I32x4::const_(
  (-1 : Int).reinterpret_as_uint(),
  (-2147483648 : Int).reinterpret_as_uint(),
  (-1000000 : Int).reinterpret_as_uint(),
  (-500 : Int).reinterpret_as_uint(),
)
```

### I64x2 (UInt64)
```moonbit
// Positive values: direct
I64x2::const_(0, 18446744073709551615)

// Negative Int64 values: convert
I64x2::const_(
  (-1 : Int64).reinterpret_as_uint64(),
  (-9223372036854775808 : Int64).reinterpret_as_uint64(),
)
```

---
*Last updated: 2025-11-01*
*Project: moonbit-playground/v128*
