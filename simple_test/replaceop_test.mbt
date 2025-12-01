///|
// Simple tests for replaceop.mbt functions

///|
test "I8x16::replace_lane" {
  let v = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  let expected = @v128.i8x16_const(
    99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  assert_eq(@v128.i8x16_replace_lane(v, 0, 99), expected)
  let expected2 = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 88, 9, 10, 11, 12, 13, 14, 15,
  )
  assert_eq(@v128.i8x16_replace_lane(v, 8, 88), expected2)
}

///|
test "I16x8::replace_lane" {
  let v = @v128.i16x8_const(0, 100, 200, 300, 400, 500, 600, 700)
  let expected = @v128.i16x8_const(9999, 100, 200, 300, 400, 500, 600, 700)
  assert_eq(@v128.i16x8_replace_lane(v, 0, 9999), expected)
  let expected2 = @v128.i16x8_const(0, 100, 200, 300, 400, 8888, 600, 700)
  assert_eq(@v128.i16x8_replace_lane(v, 5, 8888), expected2)
}

///|
test "I32x4::replace_lane" {
  let v = @v128.i32x4_const(100, 200, 300, 400)
  let expected = @v128.i32x4_const(999999, 200, 300, 400)
  assert_eq(@v128.i32x4_replace_lane(v, 0, 999999), expected)
  let expected2 = @v128.i32x4_const(100, 200, 888888, 400)
  assert_eq(@v128.i32x4_replace_lane(v, 2, 888888), expected2)
}

///|
test "I64x2::replace_lane" {
  let v = @v128.i64x2_const(123456789UL, 987654321UL)
  let expected = @v128.i64x2_const(111111111UL, 987654321UL)
  assert_eq(@v128.i64x2_replace_lane(v, 0, 111111111UL), expected)
  let expected2 = @v128.i64x2_const(123456789UL, 222222222UL)
  assert_eq(@v128.i64x2_replace_lane(v, 1, 222222222UL), expected2)
}

///|
test "F32x4::replace_lane" {
  let v = @v128.f32x4_const(1.1, 2.2, 3.3, 4.4)
  let expected = @v128.f32x4_const(9.9, 2.2, 3.3, 4.4)
  assert_eq(@v128.f32x4_replace_lane(v, 0, 9.9), expected)
  let expected2 = @v128.f32x4_const(1.1, 2.2, 8.8, 4.4)
  assert_eq(@v128.f32x4_replace_lane(v, 2, 8.8), expected2)
}

///|
test "F64x2::replace_lane" {
  let v = @v128.f64x2_const(1.23, 4.56)
  let expected = @v128.f64x2_const(9.87, 4.56)
  assert_eq(@v128.f64x2_replace_lane(v, 0, 9.87), expected)
  let expected2 = @v128.f64x2_const(1.23, 6.54)
  assert_eq(@v128.f64x2_replace_lane(v, 1, 6.54), expected2)
}
