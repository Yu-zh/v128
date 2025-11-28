///|
// Simple tests for vunop.mbt functions

test "V128::not" {
  let v = @v128.i32x4_const(0xFFFFFFFF, 0x00000000, 0xFF00FF00, 0x00FF00FF)
  let expected = @v128.i32x4_const(0x00000000, 0xFFFFFFFF, 0x00FF00FF, 0xFF00FF00)
  assert_eq(@v128.v128_not(v), expected)
}

///|
test "V128::and_" {
  let v1 = @v128.i32x4_const(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = @v128.i32x4_const(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = @v128.i32x4_const(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  assert_eq(@v128.v128_and_(v1, v2), expected)
}

///|
test "V128::or_" {
  let v1 = @v128.i32x4_const(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let v2 = @v128.i32x4_const(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  let expected = @v128.i32x4_const(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  assert_eq(@v128.v128_or_(v1, v2), expected)
}

///|
test "V128::xor" {
  let v1 = @v128.i32x4_const(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = @v128.i32x4_const(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = @v128.i32x4_const(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  assert_eq(@v128.v128_xor(v1, v2), expected)
}

///|
test "V128::andnot" {
  let v1 = @v128.i32x4_const(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = @v128.i32x4_const(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = @v128.i32x4_const(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  assert_eq(@v128.v128_andnot(v1, v2), expected)
}
