// i16x8 tests

// i16x8.min_s tests

///|
test "i16x8_min_s_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_2" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_3" {
  let v1 = I16x8::const_(0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_4" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_5" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_6" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_7" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_8" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_9" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_10" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let v2 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_11" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_12" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 16384, 16384, 32767, 32767, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 16384, 16384, 16384, 16384, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_s(v1, v2), expected)
}

///|
test "i16x8_min_s_13" {
  let v1 = I16x8::const_(0, 0, 1, 1, 2, 2, 128, 128)
  let v2 = I16x8::const_(0, 0, 2, 2, 1, 1, 128, 128)
  let expected = I16x8::const_(0, 0, 1, 1, 1, 1, 128, 128)
  assert_eq(I16x8::min_s(v1, v2), expected)
}

// i16x8.min_u tests

///|
test "i16x8_min_u_14" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_15" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_16" {
  let v1 = I16x8::const_(0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_17" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_18" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_19" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_20" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_21" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_22" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_23" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let v2 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_24" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_25" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 16384, 16384, 32767, 32767, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 16384, 16384, 16384, 16384, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::min_u(v1, v2), expected)
}

///|
test "i16x8_min_u_26" {
  let v1 = I16x8::const_(0, 0, 1, 1, 2, 2, 128, 128)
  let v2 = I16x8::const_(0, 0, 2, 2, 1, 1, 128, 128)
  let expected = I16x8::const_(0, 0, 1, 1, 1, 1, 128, 128)
  assert_eq(I16x8::min_u(v1, v2), expected)
}

// i16x8.max_s tests

///|
test "i16x8_max_s_27" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_28" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_29" {
  let v1 = I16x8::const_(0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_30" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_31" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_32" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_33" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_34" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_35" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_36" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let v2 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_37" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_38" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 16384, 16384, 32767, 32767, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 32767, 32767, 32767, 32767, 65535, 65535)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

///|
test "i16x8_max_s_39" {
  let v1 = I16x8::const_(0, 0, 1, 1, 2, 2, 128, 128)
  let v2 = I16x8::const_(0, 0, 2, 2, 1, 1, 128, 128)
  let expected = I16x8::const_(0, 0, 2, 2, 2, 2, 128, 128)
  assert_eq(I16x8::max_s(v1, v2), expected)
}

// i16x8.max_u tests

///|
test "i16x8_max_u_40" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_41" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_42" {
  let v1 = I16x8::const_(0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_43" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_44" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_45" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_46" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_47" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_48" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_49" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let v2 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_50" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_51" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 16384, 16384, 32767, 32767, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(65535, 65535, 32767, 32767, 32767, 32767, 65535, 65535)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

///|
test "i16x8_max_u_52" {
  let v1 = I16x8::const_(0, 0, 1, 1, 2, 2, 128, 128)
  let v2 = I16x8::const_(0, 0, 2, 2, 1, 1, 128, 128)
  let expected = I16x8::const_(0, 0, 2, 2, 2, 2, 128, 128)
  assert_eq(I16x8::max_u(v1, v2), expected)
}

// i16x8.avgr_u tests

///|
test "i16x8_avgr_u_53" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_54" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_55" {
  let v1 = I16x8::const_(0, 0, 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_(0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0, 0, (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(0, 0, 32768, 32768, 32768, 32768, 65535, 65535)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_56" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_57" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_58" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_59" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(32832, 32832, 32832, 32832, 32832, 32832, 32832, 32832)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_60" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_61" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let v2 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_62" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let v2 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_63" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let v2 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_64" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 16384, 16384, 32767, 32767, (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(49152, 49152, 24576, 24576, 24576, 24576, 49152, 49152)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}

///|
test "i16x8_avgr_u_65" {
  let v1 = I16x8::const_(0, 0, 1, 1, 2, 2, 128, 128)
  let v2 = I16x8::const_(0, 0, 2, 2, 1, 1, 128, 128)
  let expected = I16x8::const_(0, 0, 2, 2, 2, 2, 128, 128)
  assert_eq(I16x8::avgr_u(v1, v2), expected)
}


// i16x8.abs tests

///|
test "i16x8_abs_66" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_67" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_68" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_69" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_70" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_71" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_72" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_73" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16())
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_74" {
  let v1 = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_75" {
  let v1 = I16x8::const_((-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16(), (-123 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(123, 123, 123, 123, 123, 123, 123, 123)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_76" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_77" {
  let v1 = I16x8::const_((-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_78" {
  let v1 = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_79" {
  let v1 = I16x8::const_((-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16(), (-128 : Int16).reinterpret_as_uint16())
  let expected = I16x8::const_(128, 128, 128, 128, 128, 128, 128, 128)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_80" {
  let v1 = I16x8::const_((-32768 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 32767, 32767, 16384, 16384, 65535, 65535)
  let expected = I16x8::const_(32768, 32768, 32767, 32767, 16384, 16384, 1, 1)
  assert_eq(I16x8::abs(v1), expected)
}

///|
test "i16x8_abs_81" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::abs(v1), expected)
}

