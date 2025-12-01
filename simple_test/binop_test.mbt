///|
// Simple tests for binop.mbt functions

// ========== I8x16 Tests ==========

test "I8x16::add" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
  )
  let expected = @v128.i8x16_const(
    17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17,
  )
  assert_eq(@v128.i8x16_add(v1, v2), expected)
}

///|
test "I8x16::add_sat_s" {
  let v1 = @v128.i8x16_const(
    127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
  )
  let v2 = @v128.i8x16_const(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i8x16_const(
    127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
  )
  assert_eq(@v128.i8x16_add_sat_s(v1, v2), expected)
}

///|
test "I8x16::add_sat_u" {
  let v1 = @v128.i8x16_const(
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
  )
  let v2 = @v128.i8x16_const(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i8x16_const(
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
  )
  assert_eq(@v128.i8x16_add_sat_u(v1, v2), expected)
}

///|
test "I8x16::sub" {
  let v1 = @v128.i8x16_const(
    20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
  )
  let v2 = @v128.i8x16_const(5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)
  let expected = @v128.i8x16_const(
    15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
  )
  assert_eq(@v128.i8x16_sub(v1, v2), expected)
}

///|
test "I8x16::sub_sat_s" {
  let v1 = @v128.i8x16_const(
    0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81,
    0x81, 0x81, 0x81,
  )
  let v2 = @v128.i8x16_const(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i8x16_const(
    0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
    0x80, 0x80, 0x80,
  )
  assert_eq(@v128.i8x16_sub_sat_s(v1, v2), expected)
}

///|
test "I8x16::sub_sat_u" {
  let v1 = @v128.i8x16_const(5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = @v128.i8x16_const(
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
  )
  let expected = @v128.i8x16_const(
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  )
  assert_eq(@v128.i8x16_sub_sat_u(v1, v2), expected)
}

///|
test "I8x16::min_s" {
  let v1 = @v128.i8x16_const(
    0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20,
  )
  let v2 = @v128.i8x16_const(
    10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec,
  )
  let expected = @v128.i8x16_const(
    0xf6, 0xec, 0xf6, 0xec, 0xf6, 0xec, 0xf6, 0xec, 0xf6, 0xec, 0xf6, 0xec, 0xf6,
    0xec, 0xf6, 0xec,
  )
  assert_eq(@v128.i8x16_min_s(v1, v2), expected)
}

///|
test "I8x16::min_u" {
  let v1 = @v128.i8x16_const(
    100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200,
  )
  let v2 = @v128.i8x16_const(
    150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150,
  )
  let expected = @v128.i8x16_const(
    100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150,
  )
  assert_eq(@v128.i8x16_min_u(v1, v2), expected)
}

///|
test "I8x16::max_s" {
  let v1 = @v128.i8x16_const(
    0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20, 0xf6, 20,
  )
  let v2 = @v128.i8x16_const(
    10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec, 10, 0xec,
  )
  let expected = @v128.i8x16_const(
    10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20,
  )
  assert_eq(@v128.i8x16_max_s(v1, v2), expected)
}

///|
test "I8x16::max_u" {
  let v1 = @v128.i8x16_const(
    100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200,
  )
  let v2 = @v128.i8x16_const(
    150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150,
  )
  let expected = @v128.i8x16_const(
    150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200,
  )
  assert_eq(@v128.i8x16_max_u(v1, v2), expected)
}

///|
test "I8x16::avgr_u" {
  let v1 = @v128.i8x16_const(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = @v128.i8x16_const(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i8x16_const(
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  )
  assert_eq(@v128.i8x16_avgr_u(v1, v2), expected)
}

///|
test "I8x16::swizzle" {
  let v1 = @v128.i8x16_const(
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
  )
  let v2 = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  let expected = @v128.i8x16_const(
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
  )
  assert_eq(@v128.i8x16_swizzle(v1, v2), expected)
}

///|
test "I8x16::shuffle" {
  let v1 = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  let v2 = @v128.i8x16_const(
    16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
  )
  let expected = @v128.i8x16_const(
    0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23,
  )
  assert_eq(
    @v128.i8x16_shuffle(
      v1, v2, 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23,
    ),
    expected,
  )
}

///|
test "I8x16::narrow_i16x8_s" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  assert_eq(@v128.i8x16_narrow_i16x8_s(v1, v2), expected)
}

///|
test "I8x16::narrow_i16x8_u" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(9, 10, 11, 12, 13, 14, 15, 16)
  let expected = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  assert_eq(@v128.i8x16_narrow_i16x8_u(v1, v2), expected)
}

///|
test "I8x16::relaxed_swizzle" {
  let v1 = @v128.i8x16_const(
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
  )
  let v2 = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  let expected = @v128.i8x16_const(
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
  )
  assert_eq(@v128.i8x16_relaxed_swizzle(v1, v2), expected)
}

// ========== I16x8 Tests ==========

///|
test "I16x8::add" {
  let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const(8, 7, 6, 5, 4, 3, 2, 1)
  let expected = @v128.i16x8_const(9, 9, 9, 9, 9, 9, 9, 9)
  assert_eq(@v128.i16x8_add(v1, v2), expected)
}

///|
test "I16x8::add_sat_s" {
  let v1 = @v128.i16x8_const(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  let v2 = @v128.i16x8_const(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i16x8_const(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(@v128.i16x8_add_sat_s(v1, v2), expected)
}

///|
test "I16x8::add_sat_u" {
  let v1 = @v128.i16x8_const(
    65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535,
  )
  let v2 = @v128.i16x8_const(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i16x8_const(
    65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535,
  )
  assert_eq(@v128.i16x8_add_sat_u(v1, v2), expected)
}

///|
test "I16x8::sub" {
  let v1 = @v128.i16x8_const(100, 100, 100, 100, 100, 100, 100, 100)
  let v2 = @v128.i16x8_const(50, 50, 50, 50, 50, 50, 50, 50)
  let expected = @v128.i16x8_const(50, 50, 50, 50, 50, 50, 50, 50)
  assert_eq(@v128.i16x8_sub(v1, v2), expected)
}

///|
test "I16x8::sub_sat_s" {
  let v1 = @v128.i16x8_const(
    0x8001, 0x8001, 0x8001, 0x8001, 0x8001, 0x8001, 0x8001, 0x8001,
  )
  let v2 = @v128.i16x8_const(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i16x8_const(
    0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000,
  )
  assert_eq(@v128.i16x8_sub_sat_s(v1, v2), expected)
}

///|
test "I16x8::sub_sat_u" {
  let v1 = @v128.i16x8_const(5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = @v128.i16x8_const(10, 10, 10, 10, 10, 10, 10, 10)
  let expected = @v128.i16x8_const(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(@v128.i16x8_sub_sat_u(v1, v2), expected)
}

///|
test "I16x8::mul" {
  let v1 = @v128.i16x8_const(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = @v128.i16x8_const(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i16x8_const(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(@v128.i16x8_mul(v1, v2), expected)
}

///|
test "I16x8::min_s" {
  let v1 = @v128.i16x8_const(0xff9c, 200, 0xff9c, 200, 0xff9c, 200, 0xff9c, 200)
  let v2 = @v128.i16x8_const(100, 0xff38, 100, 0xff38, 100, 0xff38, 100, 0xff38)
  let expected = @v128.i16x8_const(
    0xff9c, 0xff38, 0xff9c, 0xff38, 0xff9c, 0xff38, 0xff9c, 0xff38,
  )
  assert_eq(@v128.i16x8_min_s(v1, v2), expected)
}

///|
test "I16x8::min_u" {
  let v1 = @v128.i16x8_const(1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000)
  let v2 = @v128.i16x8_const(1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500)
  let expected = @v128.i16x8_const(
    1000, 1500, 1000, 1500, 1000, 1500, 1000, 1500,
  )
  assert_eq(@v128.i16x8_min_u(v1, v2), expected)
}

///|
test "I16x8::max_s" {
  let v1 = @v128.i16x8_const(0xff9c, 200, 0xff9c, 200, 0xff9c, 200, 0xff9c, 200)
  let v2 = @v128.i16x8_const(100, 0xff38, 100, 0xff38, 100, 0xff38, 100, 0xff38)
  let expected = @v128.i16x8_const(100, 200, 100, 200, 100, 200, 100, 200)
  assert_eq(@v128.i16x8_max_s(v1, v2), expected)
}

///|
test "I16x8::max_u" {
  let v1 = @v128.i16x8_const(1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000)
  let v2 = @v128.i16x8_const(1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500)
  let expected = @v128.i16x8_const(
    1500, 2000, 1500, 2000, 1500, 2000, 1500, 2000,
  )
  assert_eq(@v128.i16x8_max_u(v1, v2), expected)
}

///|
test "I16x8::avgr_u" {
  let v1 = @v128.i16x8_const(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = @v128.i16x8_const(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = @v128.i16x8_const(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(@v128.i16x8_avgr_u(v1, v2), expected)
}

///|
test "I16x8::narrow_i16x8_s" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(5, 6, 7, 8)
  let expected = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(@v128.i16x8_narrow_i32x4_s(v1, v2), expected)
}

///|
test "I16x8::narrow_i16x8_u" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(5, 6, 7, 8)
  let expected = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(@v128.i16x8_narrow_i32x4_u(v1, v2), expected)
}

///|
test "I16x8::extmul_low_i8x16_s" {
  let v1 = @v128.i8x16_const(
    2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  )
  let v2 = @v128.i8x16_const(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i16x8_const(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(@v128.i16x8_extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "I16x8::extmul_high_i8x16_s" {
  let v1 = @v128.i8x16_const(
    2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  )
  let v2 = @v128.i8x16_const(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i16x8_const(30, 33, 36, 39, 42, 45, 48, 51)
  assert_eq(@v128.i16x8_extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "I16x8::extmul_low_i8x16_u" {
  let v1 = @v128.i8x16_const(
    2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  )
  let v2 = @v128.i8x16_const(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i16x8_const(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(@v128.i16x8_extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "I16x8::extmul_high_i8x16_u" {
  let v1 = @v128.i8x16_const(
    2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  )
  let v2 = @v128.i8x16_const(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i16x8_const(30, 33, 36, 39, 42, 45, 48, 51)
  assert_eq(@v128.i16x8_extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "I16x8::dot_s" {
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = @v128.i16x8_const(6, 14, 22, 30, 38, 46, 54, 62)
  assert_eq(@v128.i16x8_relaxed_dot_s_i8x16(v1, v2), expected)
}

// ========== I32x4 Tests ==========

///|
test "I32x4::add" {
  let v1 = @v128.i32x4_const(1, 2, 3, 4)
  let v2 = @v128.i32x4_const(4, 3, 2, 1)
  let expected = @v128.i32x4_const(5, 5, 5, 5)
  assert_eq(@v128.i32x4_add(v1, v2), expected)
}

///|
test "I32x4::sub" {
  let v1 = @v128.i32x4_const(100, 100, 100, 100)
  let v2 = @v128.i32x4_const(50, 50, 50, 50)
  let expected = @v128.i32x4_const(50, 50, 50, 50)
  assert_eq(@v128.i32x4_sub(v1, v2), expected)
}

///|
test "I32x4::mul" {
  let v1 = @v128.i32x4_const(2, 3, 4, 5)
  let v2 = @v128.i32x4_const(3, 3, 3, 3)
  let expected = @v128.i32x4_const(6, 9, 12, 15)
  assert_eq(@v128.i32x4_mul(v1, v2), expected)
}

///|
test "I32x4::min_s" {
  let v1 = @v128.i32x4_const(0xffffff9c, 200, 0xffffff9c, 200)
  let v2 = @v128.i32x4_const(100, 0xffffff38, 100, 0xffffff38)
  let expected = @v128.i32x4_const(
    0xffffff9c, 0xffffff38, 0xffffff9c, 0xffffff38,
  )
  assert_eq(@v128.i32x4_min_s(v1, v2), expected)
}

///|
test "I32x4::min_u" {
  let v1 = @v128.i32x4_const(1000, 2000, 1000, 2000)
  let v2 = @v128.i32x4_const(1500, 1500, 1500, 1500)
  let expected = @v128.i32x4_const(1000, 1500, 1000, 1500)
  assert_eq(@v128.i32x4_min_u(v1, v2), expected)
}

///|
test "I32x4::max_s" {
  let v1 = @v128.i32x4_const(0xffffff9c, 200, 0xffffff9c, 200)
  let v2 = @v128.i32x4_const(100, 0xffffff38, 100, 0xffffff38)
  let expected = @v128.i32x4_const(100, 200, 100, 200)
  assert_eq(@v128.i32x4_max_s(v1, v2), expected)
}

///|
test "I32x4::max_u" {
  let v1 = @v128.i32x4_const(1000, 2000, 1000, 2000)
  let v2 = @v128.i32x4_const(1500, 1500, 1500, 1500)
  let expected = @v128.i32x4_const(1500, 2000, 1500, 2000)
  assert_eq(@v128.i32x4_max_u(v1, v2), expected)
}

///|
test "I32x4::extmul_low_i16x8_s" {
  let v1 = @v128.i16x8_const(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = @v128.i16x8_const(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i32x4_const(6, 9, 12, 15)
  assert_eq(@v128.i32x4_extmul_low_i16x8_s(v1, v2), expected)
}

///|
test "I32x4::extmul_high_i16x8_s" {
  let v1 = @v128.i16x8_const(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = @v128.i16x8_const(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i32x4_const(18, 21, 24, 27)
  assert_eq(@v128.i32x4_extmul_high_i16x8_s(v1, v2), expected)
}

///|
test "I32x4::extmul_low_i16x8_u" {
  let v1 = @v128.i16x8_const(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = @v128.i16x8_const(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i32x4_const(6, 9, 12, 15)
  assert_eq(@v128.i32x4_extmul_low_i16x8_u(v1, v2), expected)
}

///|
test "I32x4::extmul_high_i16x8_u" {
  let v1 = @v128.i16x8_const(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = @v128.i16x8_const(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = @v128.i32x4_const(18, 21, 24, 27)
  assert_eq(@v128.i32x4_extmul_high_i16x8_u(v1, v2), expected)
}

// ///|
// test "I32x4::dot_s" {
//   let v1 = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
//   let v2 = @v128.i16x8_const(2, 2, 2, 2, 2, 2, 2, 2)
//   let expected = @v128.i32x4_const(6, 14, 22, 30)
//   assert_eq(@v128.i32x4_relaxed_dot_add_s_i16x8(v1, v2), expected)
// }

// ========== I64x2 Tests ==========

///|
test "I64x2::add" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(50UL, 75UL)
  let expected = @v128.i64x2_const(150UL, 275UL)
  assert_eq(@v128.i64x2_add(v1, v2), expected)
}

///|
test "I64x2::sub" {
  let v1 = @v128.i64x2_const(100UL, 200UL)
  let v2 = @v128.i64x2_const(50UL, 75UL)
  let expected = @v128.i64x2_const(50UL, 125UL)
  assert_eq(@v128.i64x2_sub(v1, v2), expected)
}

///|
test "I64x2::mul" {
  let v1 = @v128.i64x2_const(5UL, 10UL)
  let v2 = @v128.i64x2_const(3UL, 4UL)
  let expected = @v128.i64x2_const(15UL, 40UL)
  assert_eq(@v128.i64x2_mul(v1, v2), expected)
}

///|
test "I64x2::extmul_low_i32x4_s" {
  let v1 = @v128.i32x4_const(2, 3, 4, 5)
  let v2 = @v128.i32x4_const(3, 4, 5, 6)
  let expected = @v128.i64x2_const(6UL, 12UL)
  assert_eq(@v128.i64x2_extmul_low_i32x4_s(v1, v2), expected)
}

///|
test "I64x2::extmul_high_i32x4_s" {
  let v1 = @v128.i32x4_const(2, 3, 4, 5)
  let v2 = @v128.i32x4_const(3, 4, 5, 6)
  let expected = @v128.i64x2_const(20UL, 30UL)
  assert_eq(@v128.i64x2_extmul_high_i32x4_s(v1, v2), expected)
}

///|
test "I64x2::extmul_low_i32x4_u" {
  let v1 = @v128.i32x4_const(2, 3, 4, 5)
  let v2 = @v128.i32x4_const(3, 4, 5, 6)
  let expected = @v128.i64x2_const(6UL, 12UL)
  assert_eq(@v128.i64x2_extmul_low_i32x4_u(v1, v2), expected)
}

///|
test "I64x2::extmul_high_i32x4_u" {
  let v1 = @v128.i32x4_const(2, 3, 4, 5)
  let v2 = @v128.i32x4_const(3, 4, 5, 6)
  let expected = @v128.i64x2_const(20UL, 30UL)
  assert_eq(@v128.i64x2_extmul_high_i32x4_u(v1, v2), expected)
}

// ========== F32x4 Tests ==========

///|
test "F32x4::add" {
  let v1 = @v128.f32x4_const(1.0, 2.0, 3.0, 4.0)
  let v2 = @v128.f32x4_const(4.0, 3.0, 2.0, 1.0)
  let expected = @v128.f32x4_const(5.0, 5.0, 5.0, 5.0)
  assert_eq(@v128.f32x4_add(v1, v2), expected)
}

///|
test "F32x4::sub" {
  let v1 = @v128.f32x4_const(10.0, 10.0, 10.0, 10.0)
  let v2 = @v128.f32x4_const(5.0, 5.0, 5.0, 5.0)
  let expected = @v128.f32x4_const(5.0, 5.0, 5.0, 5.0)
  assert_eq(@v128.f32x4_sub(v1, v2), expected)
}

///|
test "F32x4::mul" {
  let v1 = @v128.f32x4_const(2.0, 3.0, 4.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(6.0, 9.0, 12.0, 15.0)
  assert_eq(@v128.f32x4_mul(v1, v2), expected)
}

///|
test "F32x4::div" {
  let v1 = @v128.f32x4_const(12.0, 15.0, 18.0, 21.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(4.0, 5.0, 6.0, 7.0)
  assert_eq(@v128.f32x4_div(v1, v2), expected)
}

///|
test "F32x4::min" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(1.0, 3.0, 1.0, 3.0)
  assert_eq(@v128.f32x4_min(v1, v2), expected)
}

///|
test "F32x4::max" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(3.0, 5.0, 3.0, 5.0)
  assert_eq(@v128.f32x4_max(v1, v2), expected)
}

///|
test "F32x4::pmin" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(1.0, 3.0, 1.0, 3.0)
  assert_eq(@v128.f32x4_pmin(v1, v2), expected)
}

///|
test "F32x4::pmax" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(3.0, 5.0, 3.0, 5.0)
  assert_eq(@v128.f32x4_pmax(v1, v2), expected)
}

///|
test "F32x4::relaxed_min" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(1.0, 3.0, 1.0, 3.0)
  assert_eq(@v128.f32x4_relaxed_min(v1, v2), expected)
}

///|
test "F32x4::relaxed_max" {
  let v1 = @v128.f32x4_const(1.0, 5.0, 1.0, 5.0)
  let v2 = @v128.f32x4_const(3.0, 3.0, 3.0, 3.0)
  let expected = @v128.f32x4_const(3.0, 5.0, 3.0, 5.0)
  assert_eq(@v128.f32x4_relaxed_max(v1, v2), expected)
}

// ========== F64x2 Tests ==========

///|
test "F64x2::add" {
  let v1 = @v128.f64x2_const(1.0, 2.0)
  let v2 = @v128.f64x2_const(3.0, 4.0)
  let expected = @v128.f64x2_const(4.0, 6.0)
  assert_eq(@v128.f64x2_add(v1, v2), expected)
}

///|
test "F64x2::sub" {
  let v1 = @v128.f64x2_const(10.0, 20.0)
  let v2 = @v128.f64x2_const(5.0, 10.0)
  let expected = @v128.f64x2_const(5.0, 10.0)
  assert_eq(@v128.f64x2_sub(v1, v2), expected)
}

///|
test "F64x2::mul" {
  let v1 = @v128.f64x2_const(2.0, 3.0)
  let v2 = @v128.f64x2_const(4.0, 5.0)
  let expected = @v128.f64x2_const(8.0, 15.0)
  assert_eq(@v128.f64x2_mul(v1, v2), expected)
}

///|
test "F64x2::div" {
  let v1 = @v128.f64x2_const(12.0, 20.0)
  let v2 = @v128.f64x2_const(3.0, 4.0)
  let expected = @v128.f64x2_const(4.0, 5.0)
  assert_eq(@v128.f64x2_div(v1, v2), expected)
}

///|
test "F64x2::min" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(1.0, 3.0)
  assert_eq(@v128.f64x2_min(v1, v2), expected)
}

///|
test "F64x2::max" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(3.0, 5.0)
  assert_eq(@v128.f64x2_max(v1, v2), expected)
}

///|
test "F64x2::pmin" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(1.0, 3.0)
  assert_eq(@v128.f64x2_pmin(v1, v2), expected)
}

///|
test "F64x2::pmax" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(3.0, 5.0)
  assert_eq(@v128.f64x2_pmax(v1, v2), expected)
}

///|
test "F64x2::relaxed_min" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(1.0, 3.0)
  assert_eq(@v128.f64x2_relaxed_min(v1, v2), expected)
}

///|
test "F64x2::relaxed_max" {
  let v1 = @v128.f64x2_const(1.0, 5.0)
  let v2 = @v128.f64x2_const(3.0, 3.0)
  let expected = @v128.f64x2_const(3.0, 5.0)
  assert_eq(@v128.f64x2_relaxed_max(v1, v2), expected)
}
