///|
// Simple tests for vunop.mbt functions

test "V128::not" {
  let v = I32x4::const_(0xFFFFFFFF, 0x00000000, 0xFF00FF00, 0x00FF00FF)
  let expected = I32x4::const_(0x00000000, 0xFFFFFFFF, 0x00FF00FF, 0xFF00FF00)
  assert_eq(V128::not(v), expected)
}

///|
test "V128::and_" {
  let v1 = I32x4::const_(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = I32x4::const_(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = I32x4::const_(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  assert_eq(V128::and_(v1, v2), expected)
}

///|
test "V128::or_" {
  let v1 = I32x4::const_(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let v2 = I32x4::const_(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  let expected = I32x4::const_(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  assert_eq(V128::or_(v1, v2), expected)
}

///|
test "V128::xor" {
  let v1 = I32x4::const_(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = I32x4::const_(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = I32x4::const_(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  assert_eq(V128::xor(v1, v2), expected)
}

///|
test "V128::andnot" {
  let v1 = I32x4::const_(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF)
  let v2 = I32x4::const_(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00)
  let expected = I32x4::const_(0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF)
  assert_eq(V128::andnot(v1, v2), expected)
}
