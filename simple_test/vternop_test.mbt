///|
// Simple tests for vternop.mbt functions


test "V128::select" {
  let v1 = I32x4::const_(100, 200, 300, 400)
  let v2 = I32x4::const_(10, 20, 30, 40)
  let mask = I32x4::const_(0xFFFFFFFF, 0, 0xFFFFFFFF, 0)
  let expected = I32x4::const_(100, 20, 300, 40)
  assert_eq(V128::select(v1, v2, mask), expected)
}
