///|
// Simple tests for vternop.mbt functions

///|
test "V128::bitselect" {
  let v1 = @v128.i32x4_const(100, 200, 300, 400)
  let v2 = @v128.i32x4_const(10, 20, 30, 40)
  let mask = @v128.i32x4_const(0xFFFFFFFF, 0, 0xFFFFFFFF, 0)
  let expected = @v128.i32x4_const(100, 20, 300, 40)
  assert_eq(@v128.v128_bitselect(v1, v2, mask), expected)
}
