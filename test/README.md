# V128 SIMD Test Porting Status

This directory contains tests ported from the [WebAssembly SIMD specification](https://github.com/WebAssembly/spec/tree/main/test/core/simd).

## Porting Progress

**Total:** 5/59 spec files ported (8.5%)
**Total Tests:** 483 tests passing (100% spec coverage for ported files)

### ✅ Ported Tests

| Spec File | MoonBit Test File | Status | Notes |
|-----------|-------------------|--------|-------|
| `simd_i16x8_arith.wast` | `i16x8_arith_test.mbt` | ✅ Complete | 92 tests (add, sub, mul, neg) |
| `simd_i16x8_cmp.wast` | `i16x8_cmp_test.mbt` | ✅ Complete | 30 tests (eq, ne, lt_s, lt_u, le_s, le_u, gt_s, gt_u, ge_s, ge_u) |
| `simd_i16x8_sat_arith.wast` | `i16x8_sat_arith_test.mbt` | ✅ Complete | **176 tests** - 100% spec coverage (add_sat_s, add_sat_u, sub_sat_s, sub_sat_u) |
| `simd_i16x8_arith2.wast` | `i16x8_arith2_test.mbt` | ✅ Complete | **81 tests** (min_s, min_u, max_s, max_u, avgr_u, abs) |
| `simd_i16x8_extmul_i8x16.wast` | `i16x8_extmul_test.mbt` | ✅ Complete | **104 tests** (extmul_low_i8x16_s, extmul_high_i8x16_s, extmul_low_i8x16_u, extmul_high_i8x16_u) |

### ⏳ Not Yet Ported

#### Basic Operations
- [ ] `simd_address.wast` - Memory addressing tests
- [ ] `simd_align.wast` - Memory alignment tests
- [ ] `simd_const.wast` - Constant value tests
- [ ] `simd_bitwise.wast` - Bitwise operations
- [ ] `simd_bit_shift.wast` - Bit shift operations
- [ ] `simd_boolean.wast` - Boolean operations
- [ ] `simd_conversions.wast` - Type conversions
- [ ] `simd_int_to_int_extend.wast` - Integer extension operations
- [ ] `simd_select.wast` - Select operations
- [ ] `simd_splat.wast` - Splat operations
- [ ] `simd_lane.wast` - Lane operations

#### I8x16 Tests (8 files)
- [ ] `simd_i8x16_arith.wast` - Basic arithmetic (add, sub, mul, neg)
- [ ] `simd_i8x16_arith2.wast` - Extended arithmetic operations
- [ ] `simd_i8x16_cmp.wast` - Comparison operations
- [ ] `simd_i8x16_sat_arith.wast` - Saturating arithmetic

#### I16x8 Tests (7 files)
- [x] `simd_i16x8_arith.wast` - Basic arithmetic (add, sub, mul, neg) ✅
- [x] `simd_i16x8_arith2.wast` - Extended arithmetic operations ✅
- [x] `simd_i16x8_cmp.wast` - Comparison operations ✅
- [x] `simd_i16x8_sat_arith.wast` - Saturating arithmetic ✅
- [ ] `simd_i16x8_extadd_pairwise_i8x16.wast` - Extended add pairwise (operations not implemented)
- [x] `simd_i16x8_extmul_i8x16.wast` - Extended multiply ✅
- [ ] `simd_i16x8_q15mulr_sat_s.wast` - Q15 saturating multiply (not implemented)

#### I32x4 Tests (8 files)
- [ ] `simd_i32x4_arith.wast` - Basic arithmetic (add, sub, mul, neg)
- [ ] `simd_i32x4_arith2.wast` - Extended arithmetic operations
- [ ] `simd_i32x4_cmp.wast` - Comparison operations
- [ ] `simd_i32x4_dot_i16x8.wast` - Dot product with i16x8
- [ ] `simd_i32x4_extadd_pairwise_i16x8.wast` - Extended add pairwise
- [ ] `simd_i32x4_extmul_i16x8.wast` - Extended multiply
- [ ] `simd_i32x4_trunc_sat_f32x4.wast` - Truncate from f32x4
- [ ] `simd_i32x4_trunc_sat_f64x2.wast` - Truncate from f64x2

#### I64x2 Tests (4 files)
- [ ] `simd_i64x2_arith.wast` - Basic arithmetic (add, sub, mul, neg)
- [ ] `simd_i64x2_arith2.wast` - Extended arithmetic operations
- [ ] `simd_i64x2_cmp.wast` - Comparison operations
- [ ] `simd_i64x2_extmul_i32x4.wast` - Extended multiply

#### F32x4 Tests (5 files)
- [ ] `simd_f32x4.wast` - Basic f32x4 operations
- [ ] `simd_f32x4_arith.wast` - Arithmetic operations
- [ ] `simd_f32x4_cmp.wast` - Comparison operations
- [ ] `simd_f32x4_pmin_pmax.wast` - Pseudo min/max operations
- [ ] `simd_f32x4_rounding.wast` - Rounding operations

#### F64x2 Tests (5 files)
- [ ] `simd_f64x2.wast` - Basic f64x2 operations
- [ ] `simd_f64x2_arith.wast` - Arithmetic operations
- [ ] `simd_f64x2_cmp.wast` - Comparison operations
- [ ] `simd_f64x2_pmin_pmax.wast` - Pseudo min/max operations
- [ ] `simd_f64x2_rounding.wast` - Rounding operations

#### Memory Operations (13 files)
- [ ] `simd_load.wast` - Load operations
- [ ] `simd_load_extend.wast` - Load with extension
- [ ] `simd_load_splat.wast` - Load and splat
- [ ] `simd_load_zero.wast` - Load with zero extension
- [ ] `simd_load8_lane.wast` - Load 8-bit lane
- [ ] `simd_load16_lane.wast` - Load 16-bit lane
- [ ] `simd_load32_lane.wast` - Load 32-bit lane
- [ ] `simd_load64_lane.wast` - Load 64-bit lane
- [ ] `simd_store.wast` - Store operations
- [ ] `simd_store8_lane.wast` - Store 8-bit lane
- [ ] `simd_store16_lane.wast` - Store 16-bit lane
- [ ] `simd_store32_lane.wast` - Store 32-bit lane
- [ ] `simd_store64_lane.wast` - Store 64-bit lane

#### Other Tests (2 files)
- [ ] `simd_linking.wast` - Module linking tests
- [ ] `simd_memory-multi.wast` - Multi-memory tests

## Test Categories Summary

| Category | Total | Ported | Remaining |
|----------|-------|--------|-----------|
| I8x16 | 4 | 0 | 4 |
| I16x8 | 7 | 5 | 2 |
| I32x4 | 8 | 0 | 8 |
| I64x2 | 4 | 0 | 4 |
| F32x4 | 5 | 0 | 5 |
| F64x2 | 5 | 0 | 5 |
| Memory Ops | 13 | 0 | 13 |
| Basic Ops | 11 | 0 | 11 |
| Other | 2 | 0 | 2 |
| **Total** | **59** | **5** | **54** |

## Porting Guidelines

When porting tests from the WebAssembly spec:

1. **File Naming:** Use the pattern `{type}_{operation}_test.mbt`
   - Example: `simd_i16x8_arith.wast` → `i16x8_arith_test.mbt`

2. **Literal Usage:** Follow the guidelines in `../.claude/MOONBIT_LITERAL_USAGE.md`
   - Use direct literals for non-negative values
   - Use `(-N : IntType).reinterpret_as_uinttype()` for negative values
   - Exception: I8x16 uses `(-N : Int).to_byte()` (no Int8 in MoonBit)

3. **Test Structure:**
   ```moonbit
   ///|
   test "descriptive_test_name" {
     let v1 = Type::const_(...)
     let v2 = Type::const_(...)
     let expected = Type::const_(...)
     assert_eq(Type::operation(v1, v2), expected)
   }
   ```

4. **Running Tests:**
   ```bash
   moon check                              # Type checking
   moon test -p v128/test --target wasm    # Run tests
   ```

## Contributing

Priority order for porting:
1. ✅ I16x8 arithmetic (completed)
2. ✅ I16x8 comparison (completed)
3. ✅ I16x8 saturating arithmetic (completed)
4. I16x8 extended operations (arith2, extadd, extmul, q15mulr)
5. I8x16 arithmetic and comparison
6. I32x4 arithmetic and comparison
7. I64x2 arithmetic and comparison
8. Saturating arithmetic for all integer types
9. Floating point operations (F32x4, F64x2)
10. Memory operations
11. Advanced operations (extended multiply, dot product, etc.)

## Parser Tools

The `test/` directory includes Python scripts for automated test generation:

- **`parse_wast_generic.py`** - Generic parser for all SIMD types (i8x16, i16x8, i32x4, i64x2)
  - Usage: `python3 parse_wast_generic.py <wast_file> <vector_type> <operations>`
  - Example: `python3 parse_wast_generic.py simd_i16x8_sat_arith.wast i16x8 add_sat_s,sub_sat_u`
  - Handles hex values, negative numbers, underscores in literals
  - 100% test coverage from WebAssembly spec

---
*Last updated: 2025-11-03*
