// ///|
// // Simple tests for extractop.mbt functions

// ///|
// test "I8x16::extract_lane_s" {
//   let v = @v128.i8x16_const(
//     0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
//   )
//   @builtin.assert_eq(@v128.i8x16_extract_lane_s(v, 0), 0)
//   @builtin.assert_eq(@v128.i8x16_extract_lane_s(v, 5), 5)
//   @builtin.assert_eq(@v128.i8x16_extract_lane_s(v, 15), 15)
// }

// ///|
// test "I8x16::extract_lane_u" {
//   let v = @v128.i8x16_const(
//     0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
//   )
//   @builtin.assert_eq(@v128.i8x16_extract_lane_u(v, 0), 0)
//   @builtin.assert_eq(@v128.i8x16_extract_lane_u(v, 5), 5)
//   @builtin.assert_eq(@v128.i8x16_extract_lane_u(v, 15), 15)
// }

// ///|
// test "I16x8::extract_lane_s" {
//   let v = @v128.i16x8_const(0, 100, 200, 300, 400, 500, 600, 700)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_s(v, 0), 0)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_s(v, 3), 300)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_s(v, 7), 700)
// }

// ///|
// test "I16x8::extract_lane_u" {
//   let v = @v128.i16x8_const(0, 100, 200, 300, 400, 500, 600, 700)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_u(v, 0), 0)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_u(v, 3), 300)
//   @builtin.assert_eq(@v128.i16x8_extract_lane_u(v, 7), 700)
// }

// ///|
// test "I32x4::extract_lane" {
//   let v = @v128.i32x4_const(100, 200, 300, 400)
//   @builtin.assert_eq(@v128.i32x4_extract_lane(v, 0), 100)
//   @builtin.assert_eq(@v128.i32x4_extract_lane(v, 2), 300)
//   @builtin.assert_eq(@v128.i32x4_extract_lane(v, 3), 400)
// }

// ///|
// test "I64x2::extract_lane" {
//   let v = @v128.i64x2_const(123456789UL, 987654321UL)
//   @builtin.assert_eq(@v128.i64x2_extract_lane(v, 0), 123456789UL)
//   @builtin.assert_eq(@v128.i64x2_extract_lane(v, 1), 987654321UL)
// }

// ///|
// test "F32x4::extract_lane" {
//   let v = @v128.f32x4_const(1.1, 2.2, 3.3, 4.4)
//   @builtin.assert_eq(@v128.f32x4_extract_lane(v, 0), 1.1)
//   @builtin.assert_eq(@v128.f32x4_extract_lane(v, 2), 3.3)
//   @builtin.assert_eq(@v128.f32x4_extract_lane(v, 3), 4.4)
// }

// ///|
// test "F64x2::extract_lane" {
//   let v = @v128.f64x2_const(1.23, 4.56)
//   @builtin.assert_eq(@v128.f64x2_extract_lane(v, 0), 1.23)
//   @builtin.assert_eq(@v128.f64x2_extract_lane(v, 1), 4.56)
// }
