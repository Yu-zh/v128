///|
// Simple tests for cvtop.mbt functions (conversion operations)

// ========== I16x8 Extend Operations ==========

test "I16x8::extend_low_i8x16_s" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(@v128.i16x8_extend_low_i8x16_s(v), expected)
}

///|
test "I16x8::extend_high_i8x16_s" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(@v128.i16x8_extend_high_i8x16_s(v), expected)
}

///|
test "I16x8::extend_low_i8x16_u" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(@v128.i16x8_extend_low_i8x16_u(v), expected)
}

///|
test "I16x8::extend_high_i8x16_u" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(@v128.i16x8_extend_high_i8x16_u(v), expected)
}

// ========== I16x8 ExtAdd Pairwise Operations ==========

///|
test "I16x8::extadd_pairwise_i8x16_s" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(3, 7, 11, 15, 19, 23, 27, 31)
  assert_eq(@v128.i16x8_extadd_pairwise_i8x16_s(v), expected)
}

///|
test "I16x8::extadd_pairwise_i8x16_u" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i16x8_const(3, 7, 11, 15, 19, 23, 27, 31)
  assert_eq(@v128.i16x8_extadd_pairwise_i8x16_u(v), expected)
}

// ========== I32x4 Extend Operations ==========

///|
test "I32x4::extend_low_i16x8_s" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(1, 2, 3, 4)
  assert_eq(@v128.i32x4_extend_low_i16x8_s(v), expected)
}

///|
test "I32x4::extend_high_i16x8_s" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(5, 6, 7, 8)
  assert_eq(@v128.i32x4_extend_high_i16x8_s(v), expected)
}

///|
test "I32x4::extend_low_i16x8_u" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(1, 2, 3, 4)
  assert_eq(@v128.i32x4_extend_low_i16x8_u(v), expected)
}

///|
test "I32x4::extend_high_i16x8_u" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(5, 6, 7, 8)
  assert_eq(@v128.i32x4_extend_high_i16x8_u(v), expected)
}

// ========== I32x4 ExtAdd Pairwise Operations ==========

///|
test "I32x4::extadd_pairwise_i16x8_s" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(3, 7, 11, 15)
  assert_eq(@v128.i32x4_extadd_pairwise_i16x8_s(v), expected)
}

///|
test "I32x4::extadd_pairwise_i16x8_u" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i32x4_const(3, 7, 11, 15)
  assert_eq(@v128.i32x4_extadd_pairwise_i16x8_u(v), expected)
}

// ========== I64x2 Extend Operations (from I32x4) ==========

///|
test "I64x2::extend_low_i32x4_s" {
  let v = @v128.i32x4_const(100, 200, 300, 400)
  let expected = @v128.i64x2_const(100UL, 200UL)
  assert_eq(@v128.i64x2_extend_low_i32x4_s(v), expected)
}

///|
test "I64x2::extend_high_i32x4_s" {
  let v = @v128.i32x4_const(100, 200, 300, 400)
  let expected = @v128.i64x2_const(300UL, 400UL)
  assert_eq(@v128.i64x2_extend_high_i32x4_s(v), expected)
}

///|
test "I64x2::extend_low_i32x4_u" {
  let v = @v128.i32x4_const(100, 200, 300, 400)
  let expected = @v128.i64x2_const(100UL, 200UL)
  assert_eq(@v128.i64x2_extend_low_i32x4_u(v), expected)
}

///|
test "I64x2::extend_high_i32x4_u" {
  let v = @v128.i32x4_const(100, 200, 300, 400)
  let expected = @v128.i64x2_const(300UL, 400UL)
  assert_eq(@v128.i64x2_extend_high_i32x4_u(v), expected)
}

// ========== Float Conversion Operations ==========

///|
test "F32x4::convert_i32x4_s" {
  let v = @v128.i32x4_const(1, 2, 3, 4)
  let expected = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  assert_eq(@v128.f32x4_convert_i32x4_s(v), expected)
}

///|
test "F32x4::convert_i32x4_u" {
  let v = @v128.i32x4_const(1, 2, 3, 4)
  let expected = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  assert_eq(@v128.f32x4_convert_i32x4_u(v), expected)
}

///|
test "F64x2::convert_low_i32x4_s" {
  let v = @v128.i32x4_const(10, 20, 30, 40)
  let expected = @v128.f64x2_const(10.0, 20.0)
  assert_eq(@v128.f64x2_convert_low_i32x4_s(v), expected)
}

///|
test "F64x2::convert_low_i32x4_u" {
  let v = @v128.i32x4_const(10, 20, 30, 40)
  let expected = @v128.f64x2_const(10.0, 20.0)
  assert_eq(@v128.f64x2_convert_low_i32x4_u(v), expected)
}

///|
test "F32x4::demote_f64x2_zero" {
  let v = @v128.f64x2_const(1.5, 2.5)
  let expected = @v128.f32x4_const(1.5, 2.5, 0.0, 0.0)
  assert_eq(@v128.f32x4_demote_f64x2_zero(v), expected)
}

///|
test "F64x2::promote_low_f32x4" {
  let v = @v128.f32x4_const(1.5, 2.5, 3.5, 4.5)
  let expected = @v128.f64x2_const(1.5, 2.5)
  assert_eq(@v128.f64x2_promote_low_f32x4(v), expected)
}

// ========== Truncation Operations ==========

///|
test "I32x4::trunc_sat_f32x4_s" {
  let v = @v128.f32x4_const(1.7, 2.3, 3.9, 4.1)
  let expected = @v128.i32x4_const(1, 2, 3, 4)
  assert_eq(@v128.i32x4_trunc_sat_f32x4_s(v), expected)
}

///|
test "I32x4::trunc_sat_f32x4_u" {
  let v = @v128.f32x4_const(1.7, 2.3, 3.9, 4.1)
  let expected = @v128.i32x4_const(1, 2, 3, 4)
  assert_eq(@v128.i32x4_trunc_sat_f32x4_u(v), expected)
}

///|
test "I32x4::trunc_sat_f64x2_s_zero" {
  let v = @v128.f64x2_const(1.7, 2.3)
  let expected = @v128.i32x4_const(1, 2, 0, 0)
  assert_eq(@v128.i32x4_trunc_sat_f64x2_s_zero(v), expected)
}

///|
test "I32x4::trunc_sat_f64x2_u_zero" {
  let v = @v128.f64x2_const(1.7, 2.3)
  let expected = @v128.i32x4_const(1, 2, 0, 0)
  assert_eq(@v128.i32x4_trunc_sat_f64x2_u_zero(v), expected)
}
