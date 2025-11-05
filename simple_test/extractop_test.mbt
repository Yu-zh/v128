///|
// Simple tests for extractop.mbt functions

///|
test "I8x16::extract_lane_s" {
  let v = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  assert_eq(I8x16::extract_lane_s(v, 0), 0)
  assert_eq(I8x16::extract_lane_s(v, 5), 5)
  assert_eq(I8x16::extract_lane_s(v, 15), 15)
}

///|
test "I8x16::extract_lane_u" {
  let v = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  assert_eq(I8x16::extract_lane_u(v, 0), 0)
  assert_eq(I8x16::extract_lane_u(v, 5), 5)
  assert_eq(I8x16::extract_lane_u(v, 15), 15)
}

///|
test "I16x8::extract_lane_s" {
  let v = I16x8::const_(0, 100, 200, 300, 400, 500, 600, 700)
  assert_eq(I16x8::extract_lane_s(v, 0), 0)
  assert_eq(I16x8::extract_lane_s(v, 3), 300)
  assert_eq(I16x8::extract_lane_s(v, 7), 700)
}

///|
test "I16x8::extract_lane_u" {
  let v = I16x8::const_(0, 100, 200, 300, 400, 500, 600, 700)
  assert_eq(I16x8::extract_lane_u(v, 0), 0)
  assert_eq(I16x8::extract_lane_u(v, 3), 300)
  assert_eq(I16x8::extract_lane_u(v, 7), 700)
}

///|
test "I32x4::extract_lane" {
  let v = I32x4::const_(100, 200, 300, 400)
  assert_eq(I32x4::extract_lane(v, 0), 100)
  assert_eq(I32x4::extract_lane(v, 2), 300)
  assert_eq(I32x4::extract_lane(v, 3), 400)
}

///|
test "I64x2::extract_lane" {
  let v = I64x2::const_(123456789UL, 987654321UL)
  assert_eq(I64x2::extract_lane(v, 0), 123456789UL)
  assert_eq(I64x2::extract_lane(v, 1), 987654321UL)
}

///|
test "F32x4::extract_lane" {
  let v = F32x4::const_(1.1, 2.2, 3.3, 4.4)
  assert_eq(F32x4::extract_lane(v, 0), 1.1)
  assert_eq(F32x4::extract_lane(v, 2), 3.3)
  assert_eq(F32x4::extract_lane(v, 3), 4.4)
}

///|
test "F64x2::extract_lane" {
  let v = F64x2::const_(1.23, 4.56)
  assert_eq(F64x2::extract_lane(v, 0), 1.23)
  assert_eq(F64x2::extract_lane(v, 1), 4.56)
}
