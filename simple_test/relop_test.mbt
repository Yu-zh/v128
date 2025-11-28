///|
// Simple tests for relop.mbt functions

// ========== I8x16 Relational Operations ==========

test "I8x16::eq" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(1, 0, 3, 0, 5, 0, 7, 0, 9, 0, 11, 0, 13, 0, 15, 0)
  let expected = @v128.i8x16_const(
    255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0,
  )
  assert_eq(@v128.i8x16_eq(v1, v2), expected)
}

///|
test "I8x16::ne" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(1, 0, 3, 0, 5, 0, 7, 0, 9, 0, 11, 0, 13, 0, 15, 0)
  let expected = @v128.i8x16_const(
    0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255, 0, 255,
  )
  assert_eq(@v128.i8x16_ne(v1, v2), expected)
}

///|
test "I8x16::lt_s" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = @v128.i8x16_const(
    255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  )
  assert_eq(@v128.i8x16_lt_s(v1, v2), expected)
}

///|
test "I8x16::lt_u" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  )
  let expected = @v128.i8x16_const(
    255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0,
  )
  assert_eq(@v128.i8x16_lt_u(v1, v2), expected)
}

///|
test "I8x16::le_s" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = @v128.i8x16_const(
    255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  )
  assert_eq(@v128.i8x16_le_s(v1, v2), expected)
}

///|
test "I8x16::le_u" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  )
  let expected = @v128.i8x16_const(
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0,
  )
  assert_eq(@v128.i8x16_le_u(v1, v2), expected)
}

///|
test "I8x16::gt_s" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = @v128.i8x16_const(
    0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
  )
  assert_eq(@v128.i8x16_gt_s(v1, v2), expected)
}

///|
test "I8x16::gt_u" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  )
  let expected = @v128.i8x16_const(
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255,
  )
  assert_eq(@v128.i8x16_gt_u(v1, v2), expected)
}

///|
test "I8x16::ge_s" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = @v128.i8x16_const(
    0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
  )
  assert_eq(@v128.i8x16_ge_s(v1, v2), expected)
}

///|
test "I8x16::ge_u" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  )
  let expected = @v128.i8x16_const(
    0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255,
  )
  assert_eq(@v128.i8x16_ge_u(v1, v2), expected)
}

// ========== I16x8 Relational Operations ==========

///|
test "I16x8::eq" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(1, 0, 3, 0, 5, 0, 7, 0)
  let expected = @v128.i16x8_const(65535, 0, 65535, 0, 65535, 0, 65535, 0)
  assert_eq(@v128.i16x8_eq(v1, v2), expected)
}

///|
test "I16x8::ne" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(1, 0, 3, 0, 5, 0, 7, 0)
  let expected = @v128.i16x8_const(0, 65535, 0, 65535, 0, 65535, 0, 65535)
  assert_eq(@v128.i16x8_ne(v1, v2), expected)
}

///|
test "I16x8::lt_s" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(65535, 65535, 65535, 65535, 0, 0, 0, 0)
  assert_eq(@v128.i16x8_lt_s(v1, v2), expected)
}

///|
test "I16x8::lt_u" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(65535, 65535, 65535, 65535, 0, 0, 0, 0)
  assert_eq(@v128.i16x8_lt_u(v1, v2), expected)
}

///|
test "I16x8::le_s" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(65535, 65535, 65535, 65535, 65535, 0, 0, 0)
  assert_eq(@v128.i16x8_le_s(v1, v2), expected)
}

///|
test "I16x8::le_u" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(65535, 65535, 65535, 65535, 65535, 0, 0, 0)
  assert_eq(@v128.i16x8_le_u(v1, v2), expected)
}

///|
test "I16x8::gt_s" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(0, 0, 0, 0, 0, 65535, 65535, 65535)
  assert_eq(@v128.i16x8_gt_s(v1, v2), expected)
}

///|
test "I16x8::gt_u" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(0, 0, 0, 0, 0, 65535, 65535, 65535)
  assert_eq(@v128.i16x8_gt_u(v1, v2), expected)
}

///|
test "I16x8::ge_s" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(0, 0, 0, 0, 65535, 65535, 65535, 65535)
  assert_eq(@v128.i16x8_ge_s(v1, v2), expected)
}

///|
test "I16x8::ge_u" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i16x8_const(0, 0, 0, 0, 65535, 65535, 65535, 65535)
  assert_eq(@v128.i16x8_ge_u(v1, v2), expected)
}

// ========== I32x4 Relational Operations ==========

///|
test "I32x4::eq" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(1, 0, 3, 0)
  let expected = @v128.i32x4_const(4294967295, 0, 4294967295, 0)
  assert_eq(@v128.i32x4_eq(v1, v2), expected)
}

///|
test "I32x4::ne" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(1, 0, 3, 0)
  let expected = @v128.i32x4_const(0, 4294967295, 0, 4294967295)
  assert_eq(@v128.i32x4_ne(v1, v2), expected)
}

///|
test "I32x4::lt_s" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 0, 0)
  assert_eq(@v128.i32x4_lt_s(v1, v2), expected)
}

///|
test "I32x4::lt_u" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 0, 0)
  assert_eq(@v128.i32x4_lt_u(v1, v2), expected)
}

///|
test "I32x4::le_s" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 4294967295, 0)
  assert_eq(@v128.i32x4_le_s(v1, v2), expected)
}

///|
test "I32x4::le_u" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 4294967295, 0)
  assert_eq(@v128.i32x4_le_u(v1, v2), expected)
}

///|
test "I32x4::gt_s" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(0, 0, 0, 4294967295)
  assert_eq(@v128.i32x4_gt_s(v1, v2), expected)
}

///|
test "I32x4::gt_u" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(0, 0, 0, 4294967295)
  assert_eq(@v128.i32x4_gt_u(v1, v2), expected)
}

///|
test "I32x4::ge_s" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(0, 0, 4294967295, 4294967295)
  assert_eq(@v128.i32x4_ge_s(v1, v2), expected)
}

///|
test "I32x4::ge_u" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(0, 0, 4294967295, 4294967295)
  assert_eq(@v128.i32x4_ge_u(v1, v2), expected)
}

// ========== I64x2 Relational Operations ==========

///|
test "I64x2::eq" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(100UL, 300UL)
  let expected = @v128.i64x2_const(18446744073709551615UL, 0UL)
  assert_eq(@v128.i64x2_eq(v1, v2), expected)
}

///|
test "I64x2::ne" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(100UL, 300UL)
  let expected = @v128.i64x2_const(0UL, 18446744073709551615UL)
  assert_eq(@v128.i64x2_ne(v1, v2), expected)
}

///|
test "I64x2::lt_s" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(150UL, 150UL)
  let expected = @v128.i64x2_const(18446744073709551615UL, 0UL)
  assert_eq(@v128.i64x2_lt_s(v1, v2), expected)
}

///|
test "I64x2::le_s" {
  let v1 = @v128.i64x2_const(100UL, 150UL)
  let v2 = @v128.i64x2_const(150UL, 150UL)
  let expected = @v128.i64x2_const(
    18446744073709551615UL, 18446744073709551615UL,
  )
  assert_eq(@v128.i64x2_le_s(v1, v2), expected)
}

///|
test "I64x2::gt_s" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(150UL, 150UL)
  let expected = @v128.i64x2_const(0UL, 18446744073709551615UL)
  assert_eq(@v128.i64x2_gt_s(v1, v2), expected)
}

///|
test "I64x2::ge_s" {
  let v1 = @v128.i64x2_const(150UL, 200UL)
  let v2 = @v128.i64x2_const(150UL, 150UL)
  let expected = @v128.i64x2_const(
    18446744073709551615UL, 18446744073709551615UL,
  )
  assert_eq(@v128.i64x2_ge_s(v1, v2), expected)
}

// ========== F32x4 Relational Operations ==========

///|
test "F32x4::eq" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(1.0, 0.0, 3.0, 0.0)
  let expected = @v128.i32x4_const(4294967295, 0, 4294967295, 0)
  assert_eq(@v128.f32x4_eq(v1, v2), expected)
}

///|
test "F32x4::ne" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(1.0, 0.0, 3.0, 0.0)
  let expected = @v128.i32x4_const(0, 4294967295, 0, 4294967295)
  assert_eq(@v128.f32x4_ne(v1, v2), expected)
}

///|
test "F32x4::lt" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(2.5, 2.5, 2.5, 2.5)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 0, 0)
  assert_eq(@v128.f32x4_lt(v1, v2), expected)
}

///|
test "F32x4::le" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(2.0, 2.0, 2.0, 2.0)
  let expected = @v128.i32x4_const(4294967295, 4294967295, 0, 0)
  assert_eq(@v128.f32x4_le(v1, v2), expected)
}

///|
test "F32x4::gt" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(2.5, 2.5, 2.5, 2.5)
  let expected = @v128.i32x4_const(0, 0, 4294967295, 4294967295)
  assert_eq(@v128.f32x4_gt(v1, v2), expected)
}

///|
test "F32x4::ge" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(2.0, 2.0, 2.0, 2.0)
  let expected = @v128.i32x4_const(0, 4294967295, 4294967295, 4294967295)
  assert_eq(@v128.f32x4_ge(v1, v2), expected)
}

// ========== F64x2 Relational Operations ==========

///|
test "F64x2::eq" {
  let v1 = @v128.f64x2_const(1.0, 2.0)
  let v2 = @v128.f64x2_const(1.0, 0.0)
  let expected = @v128.i64x2_const(18446744073709551615UL, 0UL)
  assert_eq(@v128.f64x2_eq(v1, v2), expected)
}

///|
test "F64x2::ne" {
  let v1 = @v128.f64x2_const(1.0, 2.0)
  let v2 = @v128.f64x2_const(1.0, 0.0)
  let expected = @v128.i64x2_const(0UL, 18446744073709551615UL)
  assert_eq(@v128.f64x2_ne(v1, v2), expected)
}

///|
test "F64x2::lt" {
  let v1 = @v128.f64x2_const(1.0, 3.0)
  let v2 = @v128.f64x2_const(2.0, 2.0)
  let expected = @v128.i64x2_const(18446744073709551615UL, 0UL)
  assert_eq(@v128.f64x2_lt(v1, v2), expected)
}

///|
test "F64x2::le" {
  let v1 = @v128.f64x2_const(1.0, 2.0)
  let v2 = @v128.f64x2_const(2.0, 2.0)
  let expected = @v128.i64x2_const(
    18446744073709551615UL, 18446744073709551615UL,
  )
  assert_eq(@v128.f64x2_le(v1, v2), expected)
}

///|
test "F64x2::gt" {
  let v1 = @v128.f64x2_const(1.0, 3.0)
  let v2 = @v128.f64x2_const(2.0, 2.0)
  let expected = @v128.i64x2_const(0UL, 18446744073709551615UL)
  assert_eq(@v128.f64x2_gt(v1, v2), expected)
}

///|
test "F64x2::ge" {
  let v1 = @v128.f64x2_const(2.0, 3.0)
  let v2 = @v128.f64x2_const(2.0, 2.0)
  let expected = @v128.i64x2_const(
    18446744073709551615UL, 18446744073709551615UL,
  )
  assert_eq(@v128.f64x2_ge(v1, v2), expected)
}
