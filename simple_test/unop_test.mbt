///|
// Simple tests for unop.mbt functions


// ========== I8x16 Unary Operations ==========

test "I8x16::neg" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I8x16::const_(255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240)
  assert_eq(I8x16::neg(v), expected)
}

test "I8x16::abs" {
  let v = I8x16::const_(255, 2, 253, 4, 251, 6, 249, 8, 247, 10, 245, 12, 243, 14, 241, 16)
  let expected = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I8x16::abs(v), expected)
}

test "I8x16::popcnt" {
  let v = I8x16::const_(0, 1, 3, 7, 15, 31, 63, 127, 255, 0, 0, 0, 0, 0, 0, 0)
  let expected = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::popcnt(v), expected)
}

// ========== I16x8 Unary Operations ==========

test "I16x8::neg" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I16x8::const_(65535, 65534, 65533, 65532, 65531, 65530, 65529, 65528)
  assert_eq(I16x8::neg(v), expected)
}

test "I16x8::abs" {
  let v = I16x8::const_(65535, 2, 65533, 4, 65531, 6, 65529, 8)
  let expected = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::abs(v), expected)
}

// ========== I32x4 Unary Operations ==========

test "I32x4::neg" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I32x4::const_(4294967295, 4294967294, 4294967293, 4294967292)
  assert_eq(I32x4::neg(v), expected)
}

test "I32x4::abs" {
  let v = I32x4::const_(4294967295, 2, 4294967293, 4)
  let expected = I32x4::const_(1, 2, 3, 4)
  assert_eq(I32x4::abs(v), expected)
}

// ========== I64x2 Unary Operations ==========

test "I64x2::neg" {
  let v = I64x2::const_(100UL, 200UL)
  let expected = I64x2::const_(18446744073709551516UL, 18446744073709551416UL)
  assert_eq(I64x2::neg(v), expected)
}

test "I64x2::abs" {
  let v = I64x2::const_(18446744073709551516UL, 200UL)
  let expected = I64x2::const_(100UL, 200UL)
  assert_eq(I64x2::abs(v), expected)
}

// ========== F32x4 Unary Operations ==========

test "F32x4::neg" {
  let v = F32x4::const_(1.5, 2.5, 3.5, 4.5)
  let expected = F32x4::const_(-1.5, -2.5, -3.5, -4.5)
  assert_eq(F32x4::neg(v), expected)
}

test "F32x4::abs" {
  let v = F32x4::const_(-1.5, 2.5, -3.5, 4.5)
  let expected = F32x4::const_(1.5, 2.5, 3.5, 4.5)
  assert_eq(F32x4::abs(v), expected)
}

test "F32x4::sqrt" {
  let v = F32x4::const_(4.0, 9.0, 16.0, 25.0)
  let expected = F32x4::const_(2.0, 3.0, 4.0, 5.0)
  assert_eq(F32x4::sqrt(v), expected)
}

test "F32x4::ceil" {
  let v = F32x4::const_(1.3, 2.7, -1.3, -2.7)
  let expected = F32x4::const_(2.0, 3.0, -1.0, -2.0)
  assert_eq(F32x4::ceil(v), expected)
}

test "F32x4::floor" {
  let v = F32x4::const_(1.3, 2.7, -1.3, -2.7)
  let expected = F32x4::const_(1.0, 2.0, -2.0, -3.0)
  assert_eq(F32x4::floor(v), expected)
}

test "F32x4::trunc" {
  let v = F32x4::const_(1.7, 2.3, -1.7, -2.3)
  let expected = F32x4::const_(1.0, 2.0, -1.0, -2.0)
  assert_eq(F32x4::trunc(v), expected)
}

test "F32x4::nearest" {
  let v = F32x4::const_(1.3, 1.7, 2.4, 3.6)
  let expected = F32x4::const_(1.0, 2.0, 2.0, 4.0)
  assert_eq(F32x4::nearest(v), expected)
}

// ========== F64x2 Unary Operations ==========

test "F64x2::neg" {
  let v = F64x2::const_(1.5, 2.5)
  let expected = F64x2::const_(-1.5, -2.5)
  assert_eq(F64x2::neg(v), expected)
}

test "F64x2::abs" {
  let v = F64x2::const_(-1.5, 2.5)
  let expected = F64x2::const_(1.5, 2.5)
  assert_eq(F64x2::abs(v), expected)
}

test "F64x2::sqrt" {
  let v = F64x2::const_(4.0, 9.0)
  let expected = F64x2::const_(2.0, 3.0)
  assert_eq(F64x2::sqrt(v), expected)
}

test "F64x2::ceil" {
  let v = F64x2::const_(1.3, -2.7)
  let expected = F64x2::const_(2.0, -2.0)
  assert_eq(F64x2::ceil(v), expected)
}

test "F64x2::floor" {
  let v = F64x2::const_(1.3, -2.7)
  let expected = F64x2::const_(1.0, -3.0)
  assert_eq(F64x2::floor(v), expected)
}

test "F64x2::trunc" {
  let v = F64x2::const_(1.7, -2.3)
  let expected = F64x2::const_(1.0, -2.0)
  assert_eq(F64x2::trunc(v), expected)
}

test "F64x2::nearest" {
  let v = F64x2::const_(1.3, 2.4)
  let expected = F64x2::const_(1.0, 2.0)
  assert_eq(F64x2::nearest(v), expected)
}
