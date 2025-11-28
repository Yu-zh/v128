///|
// Simple tests for bitmaskop.mbt functions

test "I8x16::bitmask" {
  let v = @v128.i8x16_const(
    255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1,
  )
  let result = @v128.i8x16_bitmask(v)
  @builtin.assert_eq(result, 0b0101010101010101)
}

///|
test "I8x16::bitmask_all_neg" {
  let v = @v128.i8x16_const(
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
  )
  let result = @v128.i8x16_bitmask(v)
  @builtin.assert_eq(result, 0xFFFF)
}

///|
test "I16x8::bitmask" {
  let v = @v128.i16x8_const(65535, 1, 65535, 1, 65535, 1, 65535, 1)
  let result = @v128.i16x8_bitmask(v)
  @builtin.assert_eq(result, 0b01010101)
}

///|
test "I32x4::bitmask" {
  let v = @v128.i32x4_const(4294967295, 1, 4294967295, 1)
  let result = @v128.i32x4_bitmask(v)
  @builtin.assert_eq(result, 0b0101)
}

///|
test "I64x2::bitmask" {
  let v = @v128.i64x2_const(18446744073709551615UL, 1UL)
  let result = @v128.i64x2_bitmask(v)
  @builtin.assert_eq(result, 0b01)
}
