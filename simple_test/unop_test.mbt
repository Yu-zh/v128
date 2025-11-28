///|
// Simple tests for unop.mbt functions


// ========== I8x16 Unary Operations ==========

test "I8x16::neg" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i8x16_const(255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240)
  assert_eq(@v128.i8x16_neg(v), expected)
}

test "I8x16::abs" {
  let v = @v128.i8x16_const(255, 2, 253, 4, 251, 6, 249, 8, 247, 10, 245, 12, 243, 14, 241, 16)
  let expected = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(@v128.i8x16_abs(v), expected)
}

test "I8x16::popcnt" {
  let v = @v128.i8x16_const(0, 1, 3, 7, 15, 31, 63, 127, 255, 0, 0, 0, 0, 0, 0, 0)
  let expected = @v128.i8x16_const(0, 1, 2, 3, 4, 5, 6, 7, 8, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(@v128.i8x16_popcnt(v), expected)
}

// ========== I16x8 Unary Operations ==========

test "I16x8::neg" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = @v128.i16x8_const(65535, 65534, 65533, 65532, 65531, 65530, 65529, 65528)
  assert_eq(@v128.i16x8_neg(v), expected)
}

test "I16x8::abs" {
  let v = @v128.i16x8_const(65535, 2, 65533, 4, 65531, 6, 65529, 8)
  let expected = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(@v128.i16x8_abs(v), expected)
}

// ========== I32x4 Unary Operations ==========

test "I32x4::neg" {
  let v = @v128.i32x4_const(1, 2, 3, 4)
  let expected = @v128.i32x4_const(4294967295, 4294967294, 4294967293, 4294967292)
  assert_eq(@v128.i32x4_neg(v), expected)
}

test "I32x4::abs" {
  let v = @v128.i32x4_const(4294967295, 2, 4294967293, 4)
  let expected = @v128.i32x4_const(1, 2, 3, 4)
  assert_eq(@v128.i32x4_abs(v), expected)
}

// ========== I64x2 Unary Operations ==========

test "I64x2::neg" {
  let v = @v128.i64x2_const(100UL, 200UL)
  let expected = @v128.i64x2_const(18446744073709551516UL, 18446744073709551416UL)
  assert_eq(@v128.i64x2_neg(v), expected)
}

test "I64x2::abs" {
  let v = @v128.i64x2_const(18446744073709551516UL, 200UL)
  let expected = @v128.i64x2_const(100UL, 200UL)
  assert_eq(@v128.i64x2_abs(v), expected)
}

// ========== F32x4 Unary Operations ==========

test "F32x4::neg" {
  let v = @v128.f32x4_const(1.5, 2.5, 3.5, 4.5)
  let expected = @v128.f32x4_const(-1.5, -2.5, -3.5, -4.5)
  assert_eq(@v128.f32x4_neg(v), expected)
}

test "F32x4::abs" {
  let v = @v128.f32x4_const(-1.5, 2.5, -3.5, 4.5)
  let expected = @v128.f32x4_const(1.5, 2.5, 3.5, 4.5)
  assert_eq(@v128.f32x4_abs(v), expected)
}

test "F32x4::sqrt" {
  let v = @v128.f32x4_const(4.0, 9.0, 16.0, 25.0)
  let expected = @v128.f32x4_const(2.0, 3.0, 4.0, 5.0)
  assert_eq(@v128.f32x4_sqrt(v), expected)
}

test "F32x4::ceil" {
  let v = @v128.f32x4_const(1.3, 2.7, -1.3, -2.7)
  let expected = @v128.f32x4_const(2.0, 3.0, -1.0, -2.0)
  assert_eq(@v128.f32x4_ceil(v), expected)
}

test "F32x4::floor" {
  let v = @v128.f32x4_const(1.3, 2.7, -1.3, -2.7)
  let expected = @v128.f32x4_const(1.0, 2.0, -2.0, -3.0)
  assert_eq(@v128.f32x4_floor(v), expected)
}

test "F32x4::trunc" {
  let v = @v128.f32x4_const(1.7, 2.3, -1.7, -2.3)
  let expected = @v128.f32x4_const(1.0, 2.0, -1.0, -2.0)
  assert_eq(@v128.f32x4_trunc(v), expected)
}

test "F32x4::nearest" {
  let v = @v128.f32x4_const(1.3, 1.7, 2.4, 3.6)
  let expected = @v128.f32x4_const(1.0, 2.0, 2.0, 4.0)
  assert_eq(@v128.f32x4_nearest(v), expected)
}

// ========== F64x2 Unary Operations ==========

test "F64x2::neg" {
  let v = @v128.f64x2_const(1.5, 2.5)
  let expected = @v128.f64x2_const(-1.5, -2.5)
  assert_eq(@v128.f64x2_neg(v), expected)
}

test "F64x2::abs" {
  let v = @v128.f64x2_const(-1.5, 2.5)
  let expected = @v128.f64x2_const(1.5, 2.5)
  assert_eq(@v128.f64x2_abs(v), expected)
}

test "F64x2::sqrt" {
  let v = @v128.f64x2_const(4.0, 9.0)
  let expected = @v128.f64x2_const(2.0, 3.0)
  assert_eq(@v128.f64x2_sqrt(v), expected)
}

test "F64x2::ceil" {
  let v = @v128.f64x2_const(1.3, -2.7)
  let expected = @v128.f64x2_const(2.0, -2.0)
  assert_eq(@v128.f64x2_ceil(v), expected)
}

test "F64x2::floor" {
  let v = @v128.f64x2_const(1.3, -2.7)
  let expected = @v128.f64x2_const(1.0, -3.0)
  assert_eq(@v128.f64x2_floor(v), expected)
}

test "F64x2::trunc" {
  let v = @v128.f64x2_const(1.7, -2.3)
  let expected = @v128.f64x2_const(1.0, -2.0)
  assert_eq(@v128.f64x2_trunc(v), expected)
}

test "F64x2::nearest" {
  let v = @v128.f64x2_const(1.3, 2.4)
  let expected = @v128.f64x2_const(1.0, 2.0)
  assert_eq(@v128.f64x2_nearest(v), expected)
}
