///|
// Simple tests for splatop.mbt functions


test "I8x16::splat" {
  let v = @v128.i8x16_splat(42)
  let expected = @v128.i8x16_const(42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42)
  assert_eq(v, expected)
}

test "I16x8::splat" {
  let v = @v128.i16x8_splat(1234)
  let expected = @v128.i16x8_const(1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234)
  assert_eq(v, expected)
}

test "I32x4::splat" {
  let v = @v128.i32x4_splat(123456)
  let expected = @v128.i32x4_const(123456, 123456, 123456, 123456)
  assert_eq(v, expected)
}

test "I64x2::splat" {
  let v = @v128.i64x2_splat(9876543210UL)
  let expected = @v128.i64x2_const(9876543210UL, 9876543210UL)
  assert_eq(v, expected)
}

test "F32x4::splat" {
  let v = @v128.f32x4_splat(3.14)
  let expected = @v128.f32x4_const(3.14, 3.14, 3.14, 3.14)
  assert_eq(v, expected)
}

test "F64x2::splat" {
  let v = @v128.f64x2_splat(2.718)
  let expected = @v128.f64x2_const(2.718, 2.718)
  assert_eq(v, expected)
}
