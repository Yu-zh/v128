///|
// Simple tests for binop.mbt functions


// ========== I8x16 Tests ==========

test "I8x16::add" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
  let expected = I8x16::const_(17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17)
  assert_eq(I8x16::add(v1, v2), expected)
}

test "I8x16::add_sat_s" {
  let v1 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  assert_eq(I8x16::add_sat_s(v1, v2), expected)
}

test "I8x16::add_sat_u" {
  let v1 = I8x16::const_(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I8x16::const_(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I8x16::add_sat_u(v1, v2), expected)
}

test "I8x16::sub" {
  let v1 = I8x16::const_(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20)
  let v2 = I8x16::const_(5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)
  let expected = I8x16::const_(15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15)
  assert_eq(I8x16::sub(v1, v2), expected)
}

test "I8x16::sub_sat_s" {
  let v1 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  assert_eq(I8x16::sub_sat_s(v1, v2), expected)
}

test "I8x16::sub_sat_u" {
  let v1 = I8x16::const_(5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = I8x16::const_(10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I8x16::sub_sat_u(v1, v2), expected)
}

test "I8x16::min_s" {
  let v1 = I8x16::const_((-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20)
  let v2 = I8x16::const_(10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte())
  let expected = I8x16::const_((-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte(), (-10 : Int).to_byte(), (-20 : Int).to_byte())
  assert_eq(I8x16::min_s(v1, v2), expected)
}

test "I8x16::min_u" {
  let v1 = I8x16::const_(100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200)
  let v2 = I8x16::const_(150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150)
  let expected = I8x16::const_(100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150, 100, 150)
  assert_eq(I8x16::min_u(v1, v2), expected)
}

test "I8x16::max_s" {
  let v1 = I8x16::const_((-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20, (-10 : Int).to_byte(), 20)
  let v2 = I8x16::const_(10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte(), 10, (-20 : Int).to_byte())
  let expected = I8x16::const_(10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20, 10, 20)
  assert_eq(I8x16::max_s(v1, v2), expected)
}

test "I8x16::max_u" {
  let v1 = I8x16::const_(100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200, 100, 200)
  let v2 = I8x16::const_(150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 150)
  let expected = I8x16::const_(150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200, 150, 200)
  assert_eq(I8x16::max_u(v1, v2), expected)
}

test "I8x16::avgr_u" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I8x16::avgr_u(v1, v2), expected)
}

test "I8x16::swizzle" {
  let v1 = I8x16::const_(10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
  let v2 = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  let expected = I8x16::const_(10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
  assert_eq(I8x16::swizzle(v1, v2), expected)
}

test "I8x16::shuffle" {
  let v1 = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  let v2 = I8x16::const_(16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31)
  let expected = I8x16::const_(0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23)
  assert_eq(I8x16::shuffle(v1, v2, 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23), expected)
}

test "I8x16::narrow_i16x8_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I8x16::narrow_i16x8_s(v1, v2), expected)
}

test "I8x16::narrow_i16x8_u" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I8x16::narrow_i16x8_u(v1, v2), expected)
}

test "I8x16::relaxed_swizzle" {
  let v1 = I8x16::const_(10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
  let v2 = I8x16::const_(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
  let expected = I8x16::const_(10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
  assert_eq(I8x16::relaxed_swizzle(v1, v2), expected)
}

// ========== I16x8 Tests ==========

test "I16x8::add" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(8, 7, 6, 5, 4, 3, 2, 1)
  let expected = I16x8::const_(9, 9, 9, 9, 9, 9, 9, 9)
  assert_eq(I16x8::add(v1, v2), expected)
}

test "I16x8::add_sat_s" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

test "I16x8::add_sat_u" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

test "I16x8::sub" {
  let v1 = I16x8::const_(100, 100, 100, 100, 100, 100, 100, 100)
  let v2 = I16x8::const_(50, 50, 50, 50, 50, 50, 50, 50)
  let expected = I16x8::const_(50, 50, 50, 50, 50, 50, 50, 50)
  assert_eq(I16x8::sub(v1, v2), expected)
}

test "I16x8::sub_sat_s" {
  let v1 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

test "I16x8::sub_sat_u" {
  let v1 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = I16x8::const_(10, 10, 10, 10, 10, 10, 10, 10)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

test "I16x8::mul" {
  let v1 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = I16x8::const_(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I16x8::const_(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(I16x8::mul(v1, v2), expected)
}

test "I16x8::min_s" {
  let v1 = I16x8::const_((-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200)
  let v2 = I16x8::const_(100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-100 : Int16).reinterpret_as_uint16(), (-200 : Int16).reinterpret_as_uint16(), (-100 : Int16).reinterpret_as_uint16(), (-200 : Int16).reinterpret_as_uint16(), (-100 : Int16).reinterpret_as_uint16(), (-200 : Int16).reinterpret_as_uint16(), (-100 : Int16).reinterpret_as_uint16(), (-200 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

test "I16x8::min_u" {
  let v1 = I16x8::const_(1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000)
  let v2 = I16x8::const_(1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500)
  let expected = I16x8::const_(1000, 1500, 1000, 1500, 1000, 1500, 1000, 1500)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

test "I16x8::max_s" {
  let v1 = I16x8::const_((-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200, (-100 : Int16).reinterpret_as_uint16(), 200)
  let v2 = I16x8::const_(100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16(), 100, (-200 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(100, 200, 100, 200, 100, 200, 100, 200)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

test "I16x8::max_u" {
  let v1 = I16x8::const_(1000, 2000, 1000, 2000, 1000, 2000, 1000, 2000)
  let v2 = I16x8::const_(1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500)
  let expected = I16x8::const_(1500, 2000, 1500, 2000, 1500, 2000, 1500, 2000)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

test "I16x8::avgr_u" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

test "I16x8::narrow_i16x8_s" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(5, 6, 7, 8)
  let expected = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::narrow_i16x8_s(v1, v2), expected)
}

test "I16x8::narrow_i16x8_u" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(5, 6, 7, 8)
  let expected = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::narrow_i16x8_u(v1, v2), expected)
}

test "I16x8::extmul_low_i8x16_s" {
  let v1 = I8x16::const_(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
  let v2 = I8x16::const_(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I16x8::const_(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

test "I16x8::extmul_high_i8x16_s" {
  let v1 = I8x16::const_(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
  let v2 = I8x16::const_(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I16x8::const_(30, 33, 36, 39, 42, 45, 48, 51)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

test "I16x8::extmul_low_i8x16_u" {
  let v1 = I8x16::const_(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
  let v2 = I8x16::const_(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I16x8::const_(6, 9, 12, 15, 18, 21, 24, 27)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

test "I16x8::extmul_high_i8x16_u" {
  let v1 = I8x16::const_(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
  let v2 = I8x16::const_(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I16x8::const_(30, 33, 36, 39, 42, 45, 48, 51)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

test "I16x8::dot_s" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I16x8::const_(6, 14, 22, 30, 38, 46, 54, 62)
  assert_eq(I16x8::dot_s(v1, v2), expected)
}

// ========== I32x4 Tests ==========

test "I32x4::add" {
  let v1 = I32x4::const_(1, 2, 3, 4)
  let v2 = I32x4::const_(4, 3, 2, 1)
  let expected = I32x4::const_(5, 5, 5, 5)
  assert_eq(I32x4::add(v1, v2), expected)
}

test "I32x4::sub" {
  let v1 = I32x4::const_(100, 100, 100, 100)
  let v2 = I32x4::const_(50, 50, 50, 50)
  let expected = I32x4::const_(50, 50, 50, 50)
  assert_eq(I32x4::sub(v1, v2), expected)
}

test "I32x4::mul" {
  let v1 = I32x4::const_(2, 3, 4, 5)
  let v2 = I32x4::const_(3, 3, 3, 3)
  let expected = I32x4::const_(6, 9, 12, 15)
  assert_eq(I32x4::mul(v1, v2), expected)
}

test "I32x4::min_s" {
  let v1 = I32x4::const_((-100 : Int).reinterpret_as_uint(), 200, (-100 : Int).reinterpret_as_uint(), 200)
  let v2 = I32x4::const_(100, (-200 : Int).reinterpret_as_uint(), 100, (-200 : Int).reinterpret_as_uint())
  let expected = I32x4::const_((-100 : Int).reinterpret_as_uint(), (-200 : Int).reinterpret_as_uint(), (-100 : Int).reinterpret_as_uint(), (-200 : Int).reinterpret_as_uint())
  assert_eq(I32x4::min_s(v1, v2), expected)
}

test "I32x4::min_u" {
  let v1 = I32x4::const_(1000, 2000, 1000, 2000)
  let v2 = I32x4::const_(1500, 1500, 1500, 1500)
  let expected = I32x4::const_(1000, 1500, 1000, 1500)
  assert_eq(I32x4::min_u(v1, v2), expected)
}

test "I32x4::max_s" {
  let v1 = I32x4::const_((-100 : Int).reinterpret_as_uint(), 200, (-100 : Int).reinterpret_as_uint(), 200)
  let v2 = I32x4::const_(100, (-200 : Int).reinterpret_as_uint(), 100, (-200 : Int).reinterpret_as_uint())
  let expected = I32x4::const_(100, 200, 100, 200)
  assert_eq(I32x4::max_s(v1, v2), expected)
}

test "I32x4::max_u" {
  let v1 = I32x4::const_(1000, 2000, 1000, 2000)
  let v2 = I32x4::const_(1500, 1500, 1500, 1500)
  let expected = I32x4::const_(1500, 2000, 1500, 2000)
  assert_eq(I32x4::max_u(v1, v2), expected)
}

test "I32x4::extmul_low_i16x8_s" {
  let v1 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = I16x8::const_(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I32x4::const_(6, 9, 12, 15)
  assert_eq(I32x4::extmul_low_i16x8_s(v1, v2), expected)
}

test "I32x4::extmul_high_i16x8_s" {
  let v1 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = I16x8::const_(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I32x4::const_(18, 21, 24, 27)
  assert_eq(I32x4::extmul_high_i16x8_s(v1, v2), expected)
}

test "I32x4::extmul_low_i16x8_u" {
  let v1 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = I16x8::const_(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I32x4::const_(6, 9, 12, 15)
  assert_eq(I32x4::extmul_low_i16x8_u(v1, v2), expected)
}

test "I32x4::extmul_high_i16x8_u" {
  let v1 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  let v2 = I16x8::const_(3, 3, 3, 3, 3, 3, 3, 3)
  let expected = I32x4::const_(18, 21, 24, 27)
  assert_eq(I32x4::extmul_high_i16x8_u(v1, v2), expected)
}

test "I32x4::dot_s" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  let expected = I32x4::const_(6, 14, 22, 30)
  assert_eq(I32x4::dot_s(v1, v2), expected)
}

// ========== I64x2 Tests ==========

test "I64x2::add" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(50UL, 75UL)
  let expected = I64x2::const_(150UL, 275UL)
  assert_eq(I64x2::add(v1, v2), expected)
}

test "I64x2::sub" {
  let v1 = I64x2::const_(100UL, 200UL)
  let v2 = I64x2::const_(50UL, 75UL)
  let expected = I64x2::const_(50UL, 125UL)
  assert_eq(I64x2::sub(v1, v2), expected)
}

test "I64x2::mul" {
  let v1 = I64x2::const_(5UL, 10UL)
  let v2 = I64x2::const_(3UL, 4UL)
  let expected = I64x2::const_(15UL, 40UL)
  assert_eq(I64x2::mul(v1, v2), expected)
}

test "I64x2::extend_low_s" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I64x2::const_(1UL, 2UL)
  assert_eq(I64x2::extend_low_s(v), expected)
}

test "I64x2::extend_high_s" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I64x2::const_(1UL, 2UL)
  assert_eq(I64x2::extend_high_s(v), expected)
}

test "I64x2::extend_low_u" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I64x2::const_(1UL, 2UL)
  assert_eq(I64x2::extend_low_u(v), expected)
}

test "I64x2::extend_high_u" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I64x2::const_(1UL, 2UL)
  assert_eq(I64x2::extend_high_u(v), expected)
}

// ========== F32x4 Tests ==========

test "F32x4::add" {
  let v1 = F32x4::const_(1.0, 2.0, 3.0, 4.0)
  let v2 = F32x4::const_(4.0, 3.0, 2.0, 1.0)
  let expected = F32x4::const_(5.0, 5.0, 5.0, 5.0)
  assert_eq(F32x4::add(v1, v2), expected)
}

test "F32x4::sub" {
  let v1 = F32x4::const_(10.0, 10.0, 10.0, 10.0)
  let v2 = F32x4::const_(5.0, 5.0, 5.0, 5.0)
  let expected = F32x4::const_(5.0, 5.0, 5.0, 5.0)
  assert_eq(F32x4::sub(v1, v2), expected)
}

test "F32x4::mul" {
  let v1 = F32x4::const_(2.0, 3.0, 4.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(6.0, 9.0, 12.0, 15.0)
  assert_eq(F32x4::mul(v1, v2), expected)
}

test "F32x4::div" {
  let v1 = F32x4::const_(12.0, 15.0, 18.0, 21.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(4.0, 5.0, 6.0, 7.0)
  assert_eq(F32x4::div(v1, v2), expected)
}

test "F32x4::min" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(1.0, 3.0, 1.0, 3.0)
  assert_eq(F32x4::min(v1, v2), expected)
}

test "F32x4::max" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(3.0, 5.0, 3.0, 5.0)
  assert_eq(F32x4::max(v1, v2), expected)
}

test "F32x4::pmin" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(1.0, 3.0, 1.0, 3.0)
  assert_eq(F32x4::pmin(v1, v2), expected)
}

test "F32x4::pmax" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(3.0, 5.0, 3.0, 5.0)
  assert_eq(F32x4::pmax(v1, v2), expected)
}

test "F32x4::relaxed_min" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(1.0, 3.0, 1.0, 3.0)
  assert_eq(F32x4::relaxed_min(v1, v2), expected)
}

test "F32x4::relaxed_max" {
  let v1 = F32x4::const_(1.0, 5.0, 1.0, 5.0)
  let v2 = F32x4::const_(3.0, 3.0, 3.0, 3.0)
  let expected = F32x4::const_(1.0, 3.0, 1.0, 3.0)
  assert_eq(F32x4::relaxed_max(v1, v2), expected)
}

// ========== F64x2 Tests ==========

test "F64x2::add" {
  let v1 = F64x2::const_(1.0, 2.0)
  let v2 = F64x2::const_(3.0, 4.0)
  let expected = F64x2::const_(4.0, 6.0)
  assert_eq(F64x2::add(v1, v2), expected)
}

test "F64x2::sub" {
  let v1 = F64x2::const_(10.0, 20.0)
  let v2 = F64x2::const_(5.0, 10.0)
  let expected = F64x2::const_(5.0, 10.0)
  assert_eq(F64x2::sub(v1, v2), expected)
}

test "F64x2::mul" {
  let v1 = F64x2::const_(2.0, 3.0)
  let v2 = F64x2::const_(4.0, 5.0)
  let expected = F64x2::const_(8.0, 15.0)
  assert_eq(F64x2::mul(v1, v2), expected)
}

test "F64x2::div" {
  let v1 = F64x2::const_(12.0, 20.0)
  let v2 = F64x2::const_(3.0, 4.0)
  let expected = F64x2::const_(4.0, 5.0)
  assert_eq(F64x2::div(v1, v2), expected)
}

test "F64x2::min" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(1.0, 3.0)
  assert_eq(F64x2::min(v1, v2), expected)
}

test "F64x2::max" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(3.0, 5.0)
  assert_eq(F64x2::max(v1, v2), expected)
}

test "F64x2::pmin" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(1.0, 3.0)
  assert_eq(F64x2::pmin(v1, v2), expected)
}

test "F64x2::pmax" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(3.0, 5.0)
  assert_eq(F64x2::pmax(v1, v2), expected)
}

test "F64x2::relaxed_min" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(1.0, 3.0)
  assert_eq(F64x2::relaxed_min(v1, v2), expected)
}

test "F64x2::relaxed_max" {
  let v1 = F64x2::const_(1.0, 5.0)
  let v2 = F64x2::const_(3.0, 3.0)
  let expected = F64x2::const_(1.0, 3.0)
  assert_eq(F64x2::relaxed_max(v1, v2), expected)
}
