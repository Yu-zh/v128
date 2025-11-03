///|
// Simple tests for cvtop.mbt functions (conversion operations)


// ========== I16x8 Extend Operations ==========

test "I16x8::extend_low_i8x16_s" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::extend_low_i8x16_s(v), expected)
}

test "I16x8::extend_high_i8x16_s" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I16x8::const_(9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I16x8::extend_high_i8x16_s(v), expected)
}

test "I16x8::extend_low_i8x16_u" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::extend_low_i8x16_u(v), expected)
}

test "I16x8::extend_high_i8x16_u" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I16x8::const_(9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I16x8::extend_high_i8x16_u(v), expected)
}

// ========== I32x4 Extend Operations ==========

test "I32x4::extend_low_i16x8_s" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I32x4::const_(1, 2, 3, 4)
  assert_eq(I32x4::extend_low_i16x8_s(v), expected)
}

test "I32x4::extend_high_i16x8_s" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I32x4::const_(5, 6, 7, 8)
  assert_eq(I32x4::extend_high_i16x8_s(v), expected)
}

test "I32x4::extend_low_i16x8_u" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I32x4::const_(1, 2, 3, 4)
  assert_eq(I32x4::extend_low_i16x8_u(v), expected)
}

test "I32x4::extend_high_i16x8_u" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I32x4::const_(5, 6, 7, 8)
  assert_eq(I32x4::extend_high_i16x8_u(v), expected)
}

// ========== I64x2 Extend Operations (from I32x4) ==========

test "I64x2::extend_low_i32x4_s" {
  let v = I32x4::const_(100, 200, 300, 400)
  let expected = I64x2::const_(100UL, 200UL)
  assert_eq(I64x2::extend_low_s(v), expected)
}

test "I64x2::extend_high_i32x4_s" {
  let v = I32x4::const_(100, 200, 300, 400)
  let expected = I64x2::const_(300UL, 400UL)
  assert_eq(I64x2::extend_high_s(v), expected)
}

test "I64x2::extend_low_i32x4_u" {
  let v = I32x4::const_(100, 200, 300, 400)
  let expected = I64x2::const_(100UL, 200UL)
  assert_eq(I64x2::extend_low_u(v), expected)
}

test "I64x2::extend_high_i32x4_u" {
  let v = I32x4::const_(100, 200, 300, 400)
  let expected = I64x2::const_(300UL, 400UL)
  assert_eq(I64x2::extend_high_u(v), expected)
}

// ========== Float Conversion Operations ==========

test "F32x4::convert_i32x4_s" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  assert_eq(F32x4::convert_i32x4_s(v), expected)
}

test "F32x4::convert_i32x4_u" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  assert_eq(F32x4::convert_i32x4_u(v), expected)
}

test "F64x2::convert_i32x4_s" {
  let v = I32x4::const_(10, 20, 30, 40)
  let expected = F64x2::const_(10.0, 20.0)
  assert_eq(F64x2::convert_i32x4_s(v), expected)
}

test "F64x2::convert_i32x4_u" {
  let v = I32x4::const_(10, 20, 30, 40)
  let expected = F64x2::const_(10.0, 20.0)
  assert_eq(F64x2::convert_i32x4_u(v), expected)
}

test "F32x4::demote_f64x2_zero" {
  let v = F64x2::const_(1.5, 2.5)
  let expected = F32x4::const_(1.5, 2.5, 0.0, 0.0)
  assert_eq(F32x4::demote_f64x2_zero(v), expected)
}

test "F64x2::promote_low_f32x4" {
  let v = F32x4::const_(1.5, 2.5, 3.5, 4.5)
  let expected = F64x2::const_(1.5, 2.5)
  assert_eq(F64x2::promote_low_f32x4(v), expected)
}

// ========== Truncation Operations ==========

test "I32x4::trunc_sat_f32x4_s" {
  let v = F32x4::const_(1.7, 2.3, 3.9, 4.1)
  let expected = I32x4::const_(1, 2, 3, 4)
  assert_eq(I32x4::trunc_sat_f32x4_s(v), expected)
}

test "I32x4::trunc_sat_f32x4_u" {
  let v = F32x4::const_(1.7, 2.3, 3.9, 4.1)
  let expected = I32x4::const_(1, 2, 3, 4)
  assert_eq(I32x4::trunc_sat_f32x4_u(v), expected)
}

test "I32x4::trunc_sat_f64x2_s_zero" {
  let v = F64x2::const_(1.7, 2.3)
  let expected = I32x4::const_(1, 2, 0, 0)
  assert_eq(I32x4::trunc_sat_f64x2_s_zero(v), expected)
}

test "I32x4::trunc_sat_f64x2_u_zero" {
  let v = F64x2::const_(1.7, 2.3)
  let expected = I32x4::const_(1, 2, 0, 0)
  assert_eq(I32x4::trunc_sat_f64x2_u_zero(v), expected)
}
