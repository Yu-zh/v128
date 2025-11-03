///|
// Simple tests for replaceop.mbt functions


test "I8x16::replace" {
  let v = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  let expected = I8x16::const_(99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  assert_eq(I8x16::replace(v, 0, 99), expected)

  let expected2 = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 88, 9, 10, 11, 12, 13, 14, 15)
  assert_eq(I8x16::replace(v, 8, 88), expected2)
}

test "I16x8::replace" {
  let v = I16x8::const_(0, 100, 200, 300, 400, 500, 600, 700)
  let expected = I16x8::const_(9999, 100, 200, 300, 400, 500, 600, 700)
  assert_eq(I16x8::replace(v, 0, 9999), expected)

  let expected2 = I16x8::const_(0, 100, 200, 300, 400, 8888, 600, 700)
  assert_eq(I16x8::replace(v, 5, 8888), expected2)
}

test "I32x4::replace" {
  let v = I32x4::const_(100, 200, 300, 400)
  let expected = I32x4::const_(999999, 200, 300, 400)
  assert_eq(I32x4::replace(v, 0, 999999), expected)

  let expected2 = I32x4::const_(100, 200, 888888, 400)
  assert_eq(I32x4::replace(v, 2, 888888), expected2)
}

test "I64x2::replace" {
  let v = I64x2::const_(123456789UL, 987654321UL)
  let expected = I64x2::const_(111111111UL, 987654321UL)
  assert_eq(I64x2::replace(v, 0, 111111111UL), expected)

  let expected2 = I64x2::const_(123456789UL, 222222222UL)
  assert_eq(I64x2::replace(v, 1, 222222222UL), expected2)
}

test "F32x4::replace" {
  let v = F32x4::const_(1.1, 2.2, 3.3, 4.4)
  let expected = F32x4::const_(9.9, 2.2, 3.3, 4.4)
  assert_eq(F32x4::replace(v, 0, 9.9), expected)

  let expected2 = F32x4::const_(1.1, 2.2, 8.8, 4.4)
  assert_eq(F32x4::replace(v, 2, 8.8), expected2)
}

test "F64x2::replace" {
  let v = F64x2::const_(1.23, 4.56)
  let expected = F64x2::const_(9.87, 4.56)
  assert_eq(F64x2::replace(v, 0, 9.87), expected)

  let expected2 = F64x2::const_(1.23, 6.54)
  assert_eq(F64x2::replace(v, 1, 6.54), expected2)
}
