///|
// Simple tests for bitmaskop.mbt functions


test "I8x16::bitmask" {
  let v = I8x16::const_(255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1, 255, 1)
  let result = I8x16::bitmask(v)
  assert_eq(result, 0b0101010101010101)
}

test "I8x16::bitmask_all_neg" {
  let v = I8x16::const_(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
  let result = I8x16::bitmask(v)
  assert_eq(result, 0xFFFF)
}

test "I16x8::bitmask" {
  let v = I16x8::const_(65535, 1, 65535, 1, 65535, 1, 65535, 1)
  let result = I16x8::bitmask(v)
  assert_eq(result, 0b01010101)
}

test "I32x4::bitmask" {
  let v = I32x4::const_(4294967295, 1, 4294967295, 1)
  let result = I32x4::bitmask(v)
  assert_eq(result, 0b0101)
}

test "I64x2::bitmask" {
  let v = I64x2::const_(18446744073709551615UL, 1UL)
  let result = I64x2::bitmask(v)
  assert_eq(result, 0b01)
}
