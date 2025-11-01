///|
using @v128 {type I16x8}

// i16x8.add tests

///|
test "i16x8_add_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_2" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_3" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_4" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_5" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_6" {
  let v1 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_7" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_8" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_9" {
  let v1 = I16x8::const_(
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_10" {
  let v1 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_11" {
  let v1 = I16x8::const_(
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_12" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_13" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_14" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_15" {
  let v1 = I16x8::const_(
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_16" {
  let v1 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_17" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_18" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_19" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_20" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_21" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_22" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_23" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_24" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(
    32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_25" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_26" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_27" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 65535, 65534, 65533, 65532, 65531, 65530, 65529)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::add(v1, v2), expected)
}

///|
test "i16x8_add_28" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, 3, 6, 9, 12, 15, 18, 21)
  assert_eq(I16x8::add(v1, v2), expected)
}

// i16x8.sub tests

///|
test "i16x8_sub_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_2" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_3" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_4" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_5" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(2, 2, 2, 2, 2, 2, 2, 2)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_6" {
  let v1 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_7" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_8" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_9" {
  let v1 = I16x8::const_(
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_10" {
  let v1 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_11" {
  let v1 = I16x8::const_(
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_12" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32764, 32764, 32764, 32764, 32764, 32764, 32764, 32764,
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_13" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765,
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_14" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_15" {
  let v1 = I16x8::const_(
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
    (-32765 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_16" {
  let v1 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_17" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_18" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_19" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_20" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_21" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_22" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_23" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_24" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_25" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_26" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_27" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 65535, 65534, 65533, 65532, 65531, 65530, 65529)
  let expected = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  assert_eq(I16x8::sub(v1, v2), expected)
}

///|
test "i16x8_sub_28" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(
    0,
    (-1 : Int16).reinterpret_as_uint16(),
    (-2 : Int16).reinterpret_as_uint16(),
    (-3 : Int16).reinterpret_as_uint16(),
    (-4 : Int16).reinterpret_as_uint16(),
    (-5 : Int16).reinterpret_as_uint16(),
    (-6 : Int16).reinterpret_as_uint16(),
    (-7 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::sub(v1, v2), expected)
}

// i16x8.mul tests

///|
test "i16x8_mul_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_2" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_3" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_4" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_5" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_6" {
  let v1 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_7" {
  let v1 = I16x8::const_(16383, 16383, 16383, 16383, 16383, 16383, 16383, 16383)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_8" {
  let v1 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let v2 = I16x8::const_(16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_9" {
  let v1 = I16x8::const_(
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
    (-16383 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_10" {
  let v1 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_11" {
  let v1 = I16x8::const_(
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
    (-16385 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
    (-16384 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_12" {
  let v1 = I16x8::const_(32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32765, 32765, 32765, 32765, 32765, 32765, 32765, 32765,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_13" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_14" {
  let v1 = I16x8::const_(32768, 32768, 32768, 32768, 32768, 32768, 32768, 32768)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_15" {
  let v1 = I16x8::const_(
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_16" {
  let v1 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_17" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_18" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_19" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_20" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let v2 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_21" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_22" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_23" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_24" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_25" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_26" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_27" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 65535, 65534, 65533, 65532, 65531, 65530, 65529)
  let expected = I16x8::const_(
    0, 65535, 65532, 65527, 65520, 65511, 65500, 65487,
  )
  assert_eq(I16x8::mul(v1, v2), expected)
}

///|
test "i16x8_mul_28" {
  let v1 = I16x8::const_(0, 1, 2, 3, 4, 5, 6, 7)
  let v2 = I16x8::const_(0, 2, 4, 6, 8, 10, 12, 14)
  let expected = I16x8::const_(0, 2, 8, 18, 32, 50, 72, 98)
  assert_eq(I16x8::mul(v1, v2), expected)
}

// i16x8.neg tests

///|
test "i16x8_neg_1" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let expected = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_2" {
  let v1 = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  let expected = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_3" {
  let v1 = I16x8::const_(
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
    (-1 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_4" {
  let v1 = I16x8::const_(32766, 32766, 32766, 32766, 32766, 32766, 32766, 32766)
  let expected = I16x8::const_(
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
    (-32766 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_5" {
  let v1 = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767,
  )
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_6" {
  let v1 = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  let expected = I16x8::const_(
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
    (-32768 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_7" {
  let v1 = I16x8::const_(32767, 32767, 32767, 32767, 32767, 32767, 32767, 32767)
  let expected = I16x8::const_(
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
    (-32767 : Int16).reinterpret_as_uint16(),
  )
  assert_eq(I16x8::neg(v1), expected)
}

///|
test "i16x8_neg_8" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let expected = I16x8::const_(1, 1, 1, 1, 1, 1, 1, 1)
  assert_eq(I16x8::neg(v1), expected)
}
