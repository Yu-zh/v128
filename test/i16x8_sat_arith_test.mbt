// i16x8 tests

// i16x8.add_sat_s tests

///|
test "i16x8_add_sat_s_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_2" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_3" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_4" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_5" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_6" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_7" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_8" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_9" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_10" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_11" {
  let v1 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_12" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_13" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_14" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_15" {
  let v1 = I16x8::const_((-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_16" {
  let v1 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_17" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_18" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_19" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_20" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_21" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_22" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_23" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_24" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_25" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_26" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_27" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_28" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_29" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_30" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_31" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_32" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_33" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_34" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_35" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_36" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_37" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_38" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_39" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-3 : Int16).reinterpret_as_uint16(), (-4 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-6 : Int16).reinterpret_as_uint16(), (-7 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_40" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, 3, 6, 9, 12, 15, 18, 21)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_41" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(32123, 32123, 32123, 32123, 32123, 32123, 32123, 32123)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_42" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(56789, 56789, 56789, 56789, 56789, 56789, 56789, 56789)
  let expected = I16x8::const_(3598, 3598, 3598, 3598, 3598, 3598, 3598, 3598)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_43" {
  let v1 = I16x8::const_(4660, 4660, 4660, 4660, 4660, 4660, 4660, 4660)
  let v2 = I16x8::const_(22136, 22136, 22136, 22136, 22136, 22136, 22136, 22136)
  let expected = I16x8::const_(26796, 26796, 26796, 26796, 26796, 26796, 26796, 26796)
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

///|
test "i16x8_add_sat_s_44" {
  let v1 = I16x8::const_((-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_s(v1, v2), expected)
}

// i16x8.add_sat_u tests

///|
test "i16x8_add_sat_u_45" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_46" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_47" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_48" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_49" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_50" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_51" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_52" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_53" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_54" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_55" {
  let v1 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_56" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_57" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_58" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32769, 32769, 32769, 32769, 32769, 32769, 32769, 32769)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_59" {
  let v1 = I16x8::const_((-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_60" {
  let v1 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_61" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_62" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(65534, 65534, 65534, 65534, 65534, 65534, 65534, 65534)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_63" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_64" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_65" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_66" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_67" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_68" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_69" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_70" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_71" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_72" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_73" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_74" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_75" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_76" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(65534, 65534, 65534, 65534, 65534, 65534, 65534, 65534)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_77" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_78" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_79" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_80" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_81" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_82" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_83" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-3 : Int16).reinterpret_as_uint16(), (-4 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-6 : Int16).reinterpret_as_uint16(), (-7 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_84" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, 3, 6, 9, 12, 15, 18, 21)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_85" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(56789, 56789, 56789, 56789, 56789, 56789, 56789, 56789)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_86" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_((-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_87" {
  let v1 = I16x8::const_(4660, 4660, 4660, 4660, 4660, 4660, 4660, 4660)
  let v2 = I16x8::const_(22136, 22136, 22136, 22136, 22136, 22136, 22136, 22136)
  let expected = I16x8::const_(26796, 26796, 26796, 26796, 26796, 26796, 26796, 26796)
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

///|
test "i16x8_add_sat_u_88" {
  let v1 = I16x8::const_((-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::add_sat_u(v1, v2), expected)
}

// i16x8.sub_sat_s tests

///|
test "i16x8_sub_sat_s_89" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_90" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_91" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_92" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_93" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_94" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_95" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_96" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_97" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_98" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_99" {
  let v1 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_100" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32764, 32764, 32764, 32764, 32764, 32764, 32764, 32764)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_101" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_102" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_103" {
  let v1 = I16x8::const_((-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16(), (-32765 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_104" {
  let v1 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_105" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_106" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_107" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_108" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_109" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_110" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_111" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_112" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_113" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_114" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_115" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_116" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_117" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_118" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_119" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_120" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_121" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_122" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_123" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_124" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_125" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_((-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_126" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_127" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-3 : Int16).reinterpret_as_uint16(), (-4 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-6 : Int16).reinterpret_as_uint16(), (-7 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_128" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-3 : Int16).reinterpret_as_uint16(), (-4 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-6 : Int16).reinterpret_as_uint16(), (-7 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_129" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(56789, 56789, 56789, 56789, 56789, 56789, 56789, 56789)
  let expected = I16x8::const_(21092, 21092, 21092, 21092, 21092, 21092, 21092, 21092)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_130" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_((-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(24690, 24690, 24690, 24690, 24690, 24690, 24690, 24690)
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_131" {
  let v1 = I16x8::const_(4660, 4660, 4660, 4660, 4660, 4660, 4660, 4660)
  let v2 = I16x8::const_(22136, 22136, 22136, 22136, 22136, 22136, 22136, 22136)
  let expected = I16x8::const_((-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16(), (-17476 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

///|
test "i16x8_sub_sat_s_132" {
  let v1 = I16x8::const_((-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16(), (-4660 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16(), (-23841 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::sub_sat_s(v1, v2), expected)
}

// i16x8.sub_sat_u tests

///|
test "i16x8_sub_sat_u_133" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_134" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_135" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_136" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_137" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_138" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_139" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_140" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_141" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_142" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_143" {
  let v1 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_144" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32764, 32764, 32764, 32764, 32764, 32764, 32764, 32764)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_145" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_146" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_147" {
  let v1 = I16x8::const_((-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16(), (-32766 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_148" {
  let v1 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_149" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_150" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_151" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_152" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16(), (-32767 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_153" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_154" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65534, 65534, 65534, 65534, 65534, 65534, 65534, 65534)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_155" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_156" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_157" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_158" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_159" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_160" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_161" {
  let v1 = I16x8::const_((-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16(), (-16383 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_162" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_163" {
  let v1 = I16x8::const_((-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16(), (-16384 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16(), (-16385 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_164" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_165" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_166" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_167" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_168" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_169" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65534, 65534, 65534, 65534, 65534, 65534, 65534, 65534)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_170" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_171" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, (-1 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-3 : Int16).reinterpret_as_uint16(), (-4 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-6 : Int16).reinterpret_as_uint16(), (-7 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_172" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_173" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(56789, 56789, 56789, 56789, 56789, 56789, 56789, 56789)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_174" {
  let v1 = I16x8::const_(56789, 56789, 56789, 56789, 56789, 56789, 56789, 56789)
  let v2 = I16x8::const_((-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16(), (-12345 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(3598, 3598, 3598, 3598, 3598, 3598, 3598, 3598)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_175" {
  let v1 = I16x8::const_(4660, 4660, 4660, 4660, 4660, 4660, 4660, 4660)
  let v2 = I16x8::const_((-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16(), (-22136 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

///|
test "i16x8_sub_sat_u_176" {
  let v1 = I16x8::const_((-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16(), (-12817 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16(), (-28501 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(15684, 15684, 15684, 15684, 15684, 15684, 15684, 15684)
  assert_eq(I16x8::sub_sat_u(v1, v2), expected)
}

