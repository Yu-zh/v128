///|
// Simple tests for relop.mbt functions


// ========== I8x16 Relational Operations ==========

test "I8x16::eq" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(1, 0, 3, 0, 5, 0, 7, 0, 9, 0, 11, 0, 13, 0, 15, 0)
  let expected = I8x16::const_(255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0)
  assert_eq(I8x16::eq(v1, v2), expected)
}

test "I8x16::ne" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(1, 0, 3, 0, 5, 0, 7, 0, 9, 0, 11, 0, 13, 0, 15, 0)
  let expected = I8x16::const_(0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255)
  assert_eq(I8x16::ne(v1, v2), expected)
}

test "I8x16::lt_s" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I8x16::const_(255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::lt_s(v1, v2), expected)
}

test "I8x16::lt_u" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I8x16::const_(255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::lt_u(v1, v2), expected)
}

test "I8x16::le_s" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I8x16::const_(255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::le_s(v1, v2), expected)
}

test "I8x16::le_u" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I8x16::const_(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::le_u(v1, v2), expected)
}

test "I8x16::gt_s" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I8x16::const_(0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I8x16::gt_s(v1, v2), expected)
}

test "I8x16::gt_u" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255)
  assert_eq(I8x16::gt_u(v1, v2), expected)
}

test "I8x16::ge_s" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I8x16::const_(0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I8x16::ge_s(v1, v2), expected)
}

test "I8x16::ge_u" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I8x16::ge_u(v1, v2), expected)
}

// ========== I16x8 Relational Operations ==========

test "I16x8::eq" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(1, 0, 3, 0, 5, 0, 7, 0)
  let expected = I16x8::const_(65535, 0, 65535, 0, 65535, 0, 65535, 0)
  assert_eq(I16x8::eq(v1, v2), expected)
}

test "I16x8::ne" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(1, 0, 3, 0, 5, 0, 7, 0)
  let expected = I16x8::const_(0, 65535, 0, 65535, 0, 65535, 0, 65535)
  assert_eq(I16x8::ne(v1, v2), expected)
}

test "I16x8::lt_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 0, 0, 0, 0)
  assert_eq(I16x8::lt_s(v1, v2), expected)
}

test "I16x8::lt_u" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 0, 0, 0, 0)
  assert_eq(I16x8::lt_u(v1, v2), expected)
}

test "I16x8::le_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 0, 0, 0)
  assert_eq(I16x8::le_s(v1, v2), expected)
}

test "I16x8::le_u" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 0, 0, 0)
  assert_eq(I16x8::le_u(v1, v2), expected)
}

test "I16x8::gt_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 65535, 65535, 65535)
  assert_eq(I16x8::gt_s(v1, v2), expected)
}

test "I16x8::gt_u" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 65535, 65535, 65535)
  assert_eq(I16x8::gt_u(v1, v2), expected)
}

test "I16x8::ge_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(0, 0, 0, 0, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::ge_s(v1, v2), expected)
}

test "I16x8::ge_u" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I16x8::const_(0, 0, 0, 0, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::ge_u(v1, v2), expected)
}

// ========== I32x4 Relational Operations ==========

test "I32x4::eq" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(1, 0, 3, 0)
  let expected = I32x4::const_(4294967295, 0, 4294967295, 0)
  assert_eq(I32x4::eq(v1, v2), expected)
}

test "I32x4::ne" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(1, 0, 3, 0)
  let expected = I32x4::const_(0, 4294967295, 0, 4294967295)
  assert_eq(I32x4::ne(v1, v2), expected)
}

test "I32x4::lt_s" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(4294967295, 4294967295, 0, 0)
  assert_eq(I32x4::lt_s(v1, v2), expected)
}

test "I32x4::lt_u" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(4294967295, 4294967295, 0, 0)
  assert_eq(I32x4::lt_u(v1, v2), expected)
}

test "I32x4::le_s" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(4294967295, 4294967295, 4294967295, 0)
  assert_eq(I32x4::le_s(v1, v2), expected)
}

test "I32x4::le_u" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(4294967295, 4294967295, 4294967295, 0)
  assert_eq(I32x4::le_u(v1, v2), expected)
}

test "I32x4::gt_s" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(0, 0, 0, 4294967295)
  assert_eq(I32x4::gt_s(v1, v2), expected)
}

test "I32x4::gt_u" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(0, 0, 0, 4294967295)
  assert_eq(I32x4::gt_u(v1, v2), expected)
}

test "I32x4::ge_s" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(0, 0, 4294967295, 4294967295)
  assert_eq(I32x4::ge_s(v1, v2), expected)
}

test "I32x4::ge_u" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(0, 0, 4294967295, 4294967295)
  assert_eq(I32x4::ge_u(v1, v2), expected)
}

// ========== I64x2 Relational Operations ==========

test "I64x2::eq" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(100UL, 300UL)
  let expected = I64x2::const_(18446744073709551615UL, 0UL)
  assert_eq(I64x2::eq(v1, v2), expected)
}

test "I64x2::ne" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(100UL, 300UL)
  let expected = I64x2::const_(0UL, 18446744073709551615UL)
  assert_eq(I64x2::ne(v1, v2), expected)
}

test "I64x2::lt_s" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(150UL, 150UL)
  let expected = I64x2::const_(18446744073709551615UL, 0UL)
  assert_eq(I64x2::lt_s(v1, v2), expected)
}

test "I64x2::le_s" {
  let v1 = I64x2::const_(100UL, 150UL)
  let v2 = I64x2::const_(150UL, 150UL)
  let expected = I64x2::const_(18446744073709551615UL, 18446744073709551615UL)
  assert_eq(I64x2::le_s(v1, v2), expected)
}

test "I64x2::gt_s" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(150UL, 150UL)
  let expected = I64x2::const_(0UL, 18446744073709551615UL)
  assert_eq(I64x2::gt_s(v1, v2), expected)
}

test "I64x2::ge_s" {
  let v1 = I64x2::const_(150UL, 200UL)
  let v2 = I64x2::const_(150UL, 150UL)
  let expected = I64x2::const_(18446744073709551615UL, 18446744073709551615UL)
  assert_eq(I64x2::ge_s(v1, v2), expected)
}

// ========== F32x4 Relational Operations ==========

test "F32x4::eq" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(1.0, 0.0, 3.0, 0.0)
  let expected = I32x4::const_(4294967295, 0, 4294967295, 0)
  assert_eq(F32x4::eq(v1, v2), expected)
}

test "F32x4::ne" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(1.0, 0.0, 3.0, 0.0)
  let expected = I32x4::const_(0, 4294967295, 0, 4294967295)
  assert_eq(F32x4::ne(v1, v2), expected)
}

test "F32x4::lt" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(2.5, 2.5, 2.5, 2.5)
  let expected = I32x4::const_(4294967295, 4294967295, 0, 0)
  assert_eq(F32x4::lt(v1, v2), expected)
}

test "F32x4::le" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(2.0, 2.0, 2.0, 2.0)
  let expected = I32x4::const_(4294967295, 4294967295, 0, 0)
  assert_eq(F32x4::le(v1, v2), expected)
}

test "F32x4::gt" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(2.5, 2.5, 2.5, 2.5)
  let expected = I32x4::const_(0, 0, 4294967295, 4294967295)
  assert_eq(F32x4::gt(v1, v2), expected)
}

test "F32x4::ge" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(2.0, 2.0, 2.0, 2.0)
  let expected = I32x4::const_(0, 4294967295, 4294967295, 4294967295)
  assert_eq(F32x4::ge(v1, v2), expected)
}

// ========== F64x2 Relational Operations ==========

test "F64x2::eq" {
  let v1 = F64x2::const_(1.0, 2.0)
  let v2 = F64x2::const_(1.0, 0.0)
  let expected = I64x2::const_(18446744073709551615UL, 0UL)
  assert_eq(F64x2::eq(v1, v2), expected)
}

test "F64x2::ne" {
  let v1 = F64x2::const_(1.0, 2.0)
  let v2 = F64x2::const_(1.0, 0.0)
  let expected = I64x2::const_(0UL, 18446744073709551615UL)
  assert_eq(F64x2::ne(v1, v2), expected)
}

test "F64x2::lt" {
  let v1 = F64x2::const_(1.0, 3.0)
  let v2 = F64x2::const_(2.0, 2.0)
  let expected = I64x2::const_(18446744073709551615UL, 0UL)
  assert_eq(F64x2::lt(v1, v2), expected)
}

test "F64x2::le" {
  let v1 = F64x2::const_(1.0, 2.0)
  let v2 = F64x2::const_(2.0, 2.0)
  let expected = I64x2::const_(18446744073709551615UL, 18446744073709551615UL)
  assert_eq(F64x2::le(v1, v2), expected)
}

test "F64x2::gt" {
  let v1 = F64x2::const_(1.0, 3.0)
  let v2 = F64x2::const_(2.0, 2.0)
  let expected = I64x2::const_(0UL, 18446744073709551615UL)
  assert_eq(F64x2::gt(v1, v2), expected)
}

test "F64x2::ge" {
  let v1 = F64x2::const_(2.0, 3.0)
  let v2 = F64x2::const_(2.0, 2.0)
  let expected = I64x2::const_(18446744073709551615UL, 18446744073709551615UL)
  assert_eq(F64x2::ge(v1, v2), expected)
}
