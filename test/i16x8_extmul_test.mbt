// i16x8 extmul tests

///|
using @v128 {type I8x16}

// i16x8.extmul_low_i8x16_s tests

///|
test "i16x8_extmul_low_i8x16_s_1" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_2" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_3" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_4" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_5" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_6" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_7" {
  let v1 = I8x16::const_(63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_8" {
  let v1 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_9" {
  let v1 = I8x16::const_((-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_10" {
  let v1 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_11" {
  let v1 = I8x16::const_((-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4160, 4160, 4160, 4160, 4160, 4160, 4160, 4160)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_12" {
  let v1 = I8x16::const_(125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(125, 125, 125, 125, 125, 125, 125, 125)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_13" {
  let v1 = I8x16::const_(126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_14" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_15" {
  let v1 = I8x16::const_((-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_16" {
  let v1 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(127, 127, 127, 127, 127, 127, 127, 127)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_17" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_18" {
  let v1 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(16129, 16129, 16129, 16129, 16129, 16129, 16129, 16129)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_19" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_20" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let expected = I16x8::const_(16256, 16256, 16256, 16256, 16256, 16256, 16256, 16256)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_21" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_22" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_23" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_24" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_((-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_25" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_s_26" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_low_i8x16_s(v1, v2), expected)
}

// i16x8.extmul_high_i8x16_s tests

///|
test "i16x8_extmul_high_i8x16_s_27" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_28" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_29" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_30" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_31" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_32" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_33" {
  let v1 = I8x16::const_(63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_34" {
  let v1 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_35" {
  let v1 = I8x16::const_((-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_36" {
  let v1 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_37" {
  let v1 = I8x16::const_((-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_(4160, 4160, 4160, 4160, 4160, 4160, 4160, 4160)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_38" {
  let v1 = I8x16::const_(125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(125, 125, 125, 125, 125, 125, 125, 125)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_39" {
  let v1 = I8x16::const_(126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_40" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_41" {
  let v1 = I8x16::const_((-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_42" {
  let v1 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(127, 127, 127, 127, 127, 127, 127, 127)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_43" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_44" {
  let v1 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(16129, 16129, 16129, 16129, 16129, 16129, 16129, 16129)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_45" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_46" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let expected = I16x8::const_(16256, 16256, 16256, 16256, 16256, 16256, 16256, 16256)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_47" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_48" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_49" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_50" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_((-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16(), (-127 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_51" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_s_52" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_high_i8x16_s(v1, v2), expected)
}

// i16x8.extmul_low_i8x16_u tests

///|
test "i16x8_extmul_low_i8x16_u_53" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_54" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_55" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_56" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_57" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_58" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_59" {
  let v1 = I8x16::const_(63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_60" {
  let v1 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_61" {
  let v1 = I8x16::const_((-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_62" {
  let v1 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_63" {
  let v1 = I8x16::const_((-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_64" {
  let v1 = I8x16::const_(125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(125, 125, 125, 125, 125, 125, 125, 125)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_65" {
  let v1 = I8x16::const_(126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_66" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_67" {
  let v1 = I8x16::const_((-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_68" {
  let v1 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_69" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(32640, 32640, 32640, 32640, 32640, 32640, 32640, 32640)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_70" {
  let v1 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(16129, 16129, 16129, 16129, 16129, 16129, 16129, 16129)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_71" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_72" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let expected = I16x8::const_(16512, 16512, 16512, 16512, 16512, 16512, 16512, 16512)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_73" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_74" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_75" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_76" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(32385, 32385, 32385, 32385, 32385, 32385, 32385, 32385)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_77" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(32640, 32640, 32640, 32640, 32640, 32640, 32640, 32640)
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_low_i8x16_u_78" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_low_i8x16_u(v1, v2), expected)
}

// i16x8.extmul_high_i8x16_u tests

///|
test "i16x8_extmul_high_i8x16_u_79" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_80" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_81" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_82" {
  let v1 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_83" {
  let v1 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_84" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_85" {
  let v1 = I8x16::const_(63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4032, 4032, 4032, 4032, 4032, 4032, 4032, 4032)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_86" {
  let v1 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let v2 = I8x16::const_(64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64)
  let expected = I16x8::const_(4096, 4096, 4096, 4096, 4096, 4096, 4096, 4096)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_87" {
  let v1 = I8x16::const_((-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte(), (-63 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16(), (-28480 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_88" {
  let v1 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16(), (-28672 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_89" {
  let v1 = I8x16::const_((-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte(), (-65 : Int).to_byte())
  let v2 = I8x16::const_((-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte(), (-64 : Int).to_byte())
  let expected = I16x8::const_((-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16(), (-28864 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_90" {
  let v1 = I8x16::const_(125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(125, 125, 125, 125, 125, 125, 125, 125)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_91" {
  let v1 = I8x16::const_(126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126)
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(126, 126, 126, 126, 126, 126, 126, 126)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_92" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_93" {
  let v1 = I8x16::const_((-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte(), (-126 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16(), (-32386 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_94" {
  let v1 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16(), (-32641 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_95" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_(32640, 32640, 32640, 32640, 32640, 32640, 32640, 32640)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_96" {
  let v1 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(16129, 16129, 16129, 16129, 16129, 16129, 16129, 16129)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_97" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_98" {
  let v1 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let v2 = I8x16::const_((-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte(), (-127 : Int).to_byte())
  let expected = I16x8::const_(16512, 16512, 16512, 16512, 16512, 16512, 16512, 16512)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_99" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_100" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(255, 255, 255, 255, 255, 255, 255, 255)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_101" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_102" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127)
  let expected = I16x8::const_(32385, 32385, 32385, 32385, 32385, 32385, 32385, 32385)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_103" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte(), (-128 : Int).to_byte())
  let expected = I16x8::const_(32640, 32640, 32640, 32640, 32640, 32640, 32640, 32640)
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

///|
test "i16x8_extmul_high_i8x16_u_104" {
  let v1 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let v2 = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let expected = I16x8::const_((-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16(), (-511 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::extmul_high_i8x16_u(v1, v2), expected)
}

