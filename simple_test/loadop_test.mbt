///|
test "v128_load" {
  let bytes : FixedArray[Byte] = [
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
    22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
  ]
  let v1 = @v128.v128_load(bytes, 0)
  let expected1 = @v128.i8x16_const(
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  )
  let v2 = @v128.v128_load(bytes, 16)
  let expected2 = @v128.i8x16_const(
    16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
  )
  assert_eq(v1, expected1)
  assert_eq(v2, expected2)
}

///|
test "v128_load8x8_s" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load8x8_s(bytes, 0)
  let expected = @v128.i16x8_const(0, 1, 2, 3, 4, 5, 6, 7)
  assert_eq(v, expected)
}

///|
test "v128_load8x8_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load8x8_u(bytes, 0)
  let expected = @v128.i16x8_const(0, 1, 2, 3, 4, 5, 6, 7)
  assert_eq(v, expected)
}

///|
test "v128_load16x4_s" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load16x4_s(bytes, 0)
  let expected = @v128.i32x4_const(256, 770, 1284, 1798)
  assert_eq(v, expected)
}

///|
test "v128_load16x4_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load16x4_u(bytes, 0)
  let expected = @v128.i32x4_const(256, 770, 1284, 1798)
  assert_eq(v, expected)
}

///|
test "v128_load32x2_s" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load32x2_s(bytes, 0)
  let expected = @v128.i64x2_const(50462976, 117835012)
  assert_eq(v, expected)
}

///|
test "v128_load32x2_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load32x2_u(bytes, 0)
  let expected = @v128.i64x2_const(50462976, 117835012)
  assert_eq(v, expected)
}

///|
test "v128_load8_splat" {
  let bytes : FixedArray[Byte] = [42]
  let v = @v128.v128_load8_splat(bytes, 0)
  let expected = @v128.i8x16_const(
    42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42,
  )
  assert_eq(v, expected)
}

///|
test "v128_load16_splat" {
  let bytes : FixedArray[Byte] = [0x34, 0x12]
  let v = @v128.v128_load16_splat(bytes, 0)
  let expected = @v128.i16x8_const(
    0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234,
  )
  assert_eq(v, expected)
}

///|
test "v128_load32_splat" {
  let bytes : FixedArray[Byte] = [0x78, 0x56, 0x34, 0x12]
  let v = @v128.v128_load32_splat(bytes, 0)
  let expected = @v128.i32x4_const(
    0x12345678, 0x12345678, 0x12345678, 0x12345678,
  )
  assert_eq(v, expected)
}

///|
test "v128_load64_splat" {
  let bytes : FixedArray[Byte] = [
    0xEF, 0xCD, 0xAB, 0x90, 0x78, 0x56, 0x34, 0x12,
  ]
  let v = @v128.v128_load64_splat(bytes, 0)
  let expected = @v128.i64x2_const(0x1234567890ABCDEF, 0x1234567890ABCDEF)
  assert_eq(v, expected)
}

///|
test "v128_load32_zero" {
  let bytes : FixedArray[Byte] = [0x78, 0x56, 0x34, 0x12]
  let v = @v128.v128_load32_zero(bytes, 0)
  let expected = @v128.i32x4_const(0x12345678, 0, 0, 0)
  assert_eq(v, expected)
}

///|
test "v128_load64_zero" {
  let bytes : FixedArray[Byte] = [
    0xEF, 0xCD, 0xAB, 0x90, 0x78, 0x56, 0x34, 0x12,
  ]
  let v = @v128.v128_load64_zero(bytes, 0)
  let expected = @v128.i64x2_const(0x1234567890ABCDEF, 0)
  assert_eq(v, expected)
}
