///|
// Simple tests for splatop.mbt functions


test "I8x16::splat" {
  let v = I8x16::splat(42)
  let expected = I8x16::const_(42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42)
  assert_eq(v, expected)
}

test "I16x8::splat" {
  let v = I16x8::splat(1234)
  let expected = I16x8::const_(1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234)
  assert_eq(v, expected)
}

test "I32x4::splat" {
  let v = I32x4::splat(123456)
  let expected = I32x4::const_(123456, 123456, 123456, 123456)
  assert_eq(v, expected)
}

test "I64x2::splat" {
  let v = I64x2::splat(9876543210UL)
  let expected = I64x2::const_(9876543210UL, 9876543210UL)
  assert_eq(v, expected)
}

test "F32x4::splat" {
  let v = F32x4::splat(3.14)
  let expected = F32x4::const_(3.14, 3.14, 3.14, 3.14)
  assert_eq(v, expected)
}

test "F64x2::splat" {
  let v = F64x2::splat(2.718)
  let expected = F64x2::const_(2.718, 2.718)
  assert_eq(v, expected)
}
