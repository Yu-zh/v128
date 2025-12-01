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

  // Test with negative bytes (>= 128) to verify sign extension
  let bytes2 : FixedArray[Byte] = [0xFF, 0x80, 0x7F, 0x01, 0xFE, 0x81, 0x00, 0x82]
  let v2 = @v128.v128_load8x8_s(bytes2, 0)
  // 0xFF as signed i8 = -1, extended to i16 = -1 = 0xFFFF
  // 0x80 as signed i8 = -128, extended to i16 = -128 = 0xFF80
  // 0x7F as signed i8 = 127, extended to i16 = 127
  // 0xFE as signed i8 = -2, extended to i16 = -2 = 0xFFFE
  // 0x81 as signed i8 = -127, extended to i16 = -127 = 0xFF81
  // 0x82 as signed i8 = -126, extended to i16 = -126 = 0xFF82
  let expected2 = @v128.i16x8_const(0xFFFF, 0xFF80, 127, 1, 0xFFFE, 0xFF81, 0, 0xFF82)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  let bytes3 : FixedArray[Byte] = [0, 0, 0, 0, 10, 20, 30, 40, 50, 60, 70, 80]
  let v3 = @v128.v128_load8x8_s(bytes3, 4)
  let expected3 = @v128.i16x8_const(10, 20, 30, 40, 50, 60, 70, 80)
  assert_eq(v3, expected3)
}

///|
test "v128_load8x8_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load8x8_u(bytes, 0)
  let expected = @v128.i16x8_const(0, 1, 2, 3, 4, 5, 6, 7)
  assert_eq(v, expected)

  // Test with high bytes (>= 128) to verify zero extension (not sign extension)
  let bytes2 : FixedArray[Byte] = [0xFF, 0x80, 0x7F, 0x01, 0xFE, 0x81, 0x00, 0x82]
  let v2 = @v128.v128_load8x8_u(bytes2, 0)
  // 0xFF as unsigned i8 = 255, zero-extended to i16 = 255
  // 0x80 as unsigned i8 = 128, zero-extended to i16 = 128
  let expected2 = @v128.i16x8_const(0xFF, 0x80, 0x7F, 0x01, 0xFE, 0x81, 0x00, 0x82)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  let bytes3 : FixedArray[Byte] = [0, 0, 0, 200, 210, 220, 230, 240, 250, 128, 129]
  let v3 = @v128.v128_load8x8_u(bytes3, 3)
  let expected3 = @v128.i16x8_const(200, 210, 220, 230, 240, 250, 128, 129)
  assert_eq(v3, expected3)
}

///|
test "v128_load16x4_s" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load16x4_s(bytes, 0)
  let expected = @v128.i32x4_const(256, 770, 1284, 1798)
  assert_eq(v, expected)

  // Test with negative i16 values to verify sign extension
  // 0xFFFF as signed i16 = -1, extended to i32 = -1 = 0xFFFFFFFF
  // 0x8000 as signed i16 = -32768, extended to i32 = -32768 = 0xFFFF8000
  // 0x7FFF as signed i16 = 32767, extended to i32 = 32767
  // 0x8001 as signed i16 = -32767, extended to i32 = -32767 = 0xFFFF8001
  let bytes2 : FixedArray[Byte] = [0xFF, 0xFF, 0x00, 0x80, 0xFF, 0x7F, 0x01, 0x80]
  let v2 = @v128.v128_load16x4_s(bytes2, 0)
  let expected2 = @v128.i32x4_const(0xFFFFFFFF, 0xFFFF8000, 32767, 0xFFFF8001)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  let bytes3 : FixedArray[Byte] = [0, 0, 0, 0, 0x10, 0x00, 0x20, 0x00, 0x30, 0x00, 0x40, 0x00]
  let v3 = @v128.v128_load16x4_s(bytes3, 4)
  let expected3 = @v128.i32x4_const(0x10, 0x20, 0x30, 0x40)
  assert_eq(v3, expected3)
}

///|
test "v128_load16x4_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load16x4_u(bytes, 0)
  let expected = @v128.i32x4_const(256, 770, 1284, 1798)
  assert_eq(v, expected)

  // Test with high i16 values to verify zero extension (not sign extension)
  // 0xFFFF as unsigned i16 = 65535, zero-extended to i32 = 65535
  // 0x8000 as unsigned i16 = 32768, zero-extended to i32 = 32768
  let bytes2 : FixedArray[Byte] = [0xFF, 0xFF, 0x00, 0x80, 0xFF, 0x7F, 0x01, 0x80]
  let v2 = @v128.v128_load16x4_u(bytes2, 0)
  let expected2 = @v128.i32x4_const(0xFFFF, 0x8000, 0x7FFF, 0x8001)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  let bytes3 : FixedArray[Byte] = [0, 0, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x11, 0x22]
  let v3 = @v128.v128_load16x4_u(bytes3, 2)
  let expected3 = @v128.i32x4_const(0xBBAA, 0xDDCC, 0xFFEE, 0x2211)
  assert_eq(v3, expected3)
}

///|
test "v128_load32x2_s" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load32x2_s(bytes, 0)
  let expected = @v128.i64x2_const(50462976, 117835012)
  assert_eq(v, expected)

  // Test with negative i32 values to verify sign extension
  // 0xFFFFFFFF as signed i32 = -1, extended to i64 = -1 = 0xFFFFFFFFFFFFFFFF
  // 0x80000000 as signed i32 = -2147483648, extended to i64 = -2147483648 = 0xFFFFFFFF80000000
  let bytes2 : FixedArray[Byte] = [0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x80]
  let v2 = @v128.v128_load32x2_s(bytes2, 0)
  let expected2 = @v128.i64x2_const(0xFFFFFFFFFFFFFFFFUL, 0xFFFFFFFF80000000UL)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  let bytes3 : FixedArray[Byte] = [0, 0, 0, 0, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00]
  let v3 = @v128.v128_load32x2_s(bytes3, 4)
  let expected3 = @v128.i64x2_const(0x10UL, 0x20UL)
  assert_eq(v3, expected3)
}

///|
test "v128_load32x2_u" {
  let bytes : FixedArray[Byte] = [0, 1, 2, 3, 4, 5, 6, 7]
  let v = @v128.v128_load32x2_u(bytes, 0)
  let expected = @v128.i64x2_const(50462976, 117835012)
  assert_eq(v, expected)

  // Test with high i32 values to verify zero extension (not sign extension)
  // 0xFFFFFFFF as unsigned i32 = 4294967295, zero-extended to i64 = 4294967295
  // 0x80000000 as unsigned i32 = 2147483648, zero-extended to i64 = 2147483648
  let bytes2 : FixedArray[Byte] = [0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x80]
  let v2 = @v128.v128_load32x2_u(bytes2, 0)
  let expected2 = @v128.i64x2_const(0xFFFFFFFFUL, 0x80000000UL)
  assert_eq(v2, expected2)

  // Test with non-zero offset
  // bytes[2:6] = [0xAA, 0xBB, 0xCC, 0xDD] -> little-endian i32 = 0xDDCCBBAA
  // bytes[6:10] = [0xEE, 0xFF, 0x11, 0x22] -> little-endian i32 = 0x2211FFEE
  let bytes3 : FixedArray[Byte] = [0, 0, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x11, 0x22]
  let v3 = @v128.v128_load32x2_u(bytes3, 2)
  let expected3 = @v128.i64x2_const(0xDDCCBBAAUL, 0x2211FFEEUL)
  assert_eq(v3, expected3)
}

///|
test "v128_load8_splat" {
  let bytes : FixedArray[Byte] = [42]
  let v = @v128.v128_load8_splat(bytes, 0)
  let expected = @v128.i8x16_const(
    42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42,
  )
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [10, 20, 30, 100, 50]
  let v2 = @v128.v128_load8_splat(bytes2, 3)
  let expected2 = @v128.i8x16_const(
    100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
  )
  assert_eq(v2, expected2)
}

///|
test "v128_load16_splat" {
  let bytes : FixedArray[Byte] = [0x34, 0x12]
  let v = @v128.v128_load16_splat(bytes, 0)
  let expected = @v128.i16x8_const(
    0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234, 0x1234,
  )
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [0, 0, 0xAB, 0xCD, 0]
  let v2 = @v128.v128_load16_splat(bytes2, 2)
  let expected2 = @v128.i16x8_const(
    0xCDAB, 0xCDAB, 0xCDAB, 0xCDAB, 0xCDAB, 0xCDAB, 0xCDAB, 0xCDAB,
  )
  assert_eq(v2, expected2)
}

///|
test "v128_load32_splat" {
  let bytes : FixedArray[Byte] = [0x78, 0x56, 0x34, 0x12]
  let v = @v128.v128_load32_splat(bytes, 0)
  let expected = @v128.i32x4_const(
    0x12345678, 0x12345678, 0x12345678, 0x12345678,
  )
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [0, 0, 0, 0xAA, 0xBB, 0xCC, 0xDD, 0]
  let v2 = @v128.v128_load32_splat(bytes2, 3)
  let expected2 = @v128.i32x4_const(
    0xDDCCBBAA, 0xDDCCBBAA, 0xDDCCBBAA, 0xDDCCBBAA,
  )
  assert_eq(v2, expected2)
}

///|
test "v128_load64_splat" {
  let bytes : FixedArray[Byte] = [
    0xEF, 0xCD, 0xAB, 0x90, 0x78, 0x56, 0x34, 0x12,
  ]
  let v = @v128.v128_load64_splat(bytes, 0)
  let expected = @v128.i64x2_const(0x1234567890ABCDEF, 0x1234567890ABCDEF)
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [
    0, 0, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
  ]
  let v2 = @v128.v128_load64_splat(bytes2, 2)
  let expected2 = @v128.i64x2_const(0x8877665544332211UL, 0x8877665544332211UL)
  assert_eq(v2, expected2)
}

///|
test "v128_load32_zero" {
  let bytes : FixedArray[Byte] = [0x78, 0x56, 0x34, 0x12]
  let v = @v128.v128_load32_zero(bytes, 0)
  let expected = @v128.i32x4_const(0x12345678, 0, 0, 0)
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [0, 0, 0, 0xAA, 0xBB, 0xCC, 0xDD]
  let v2 = @v128.v128_load32_zero(bytes2, 3)
  let expected2 = @v128.i32x4_const(0xDDCCBBAA, 0, 0, 0)
  assert_eq(v2, expected2)
}

///|
test "v128_load64_zero" {
  let bytes : FixedArray[Byte] = [
    0xEF, 0xCD, 0xAB, 0x90, 0x78, 0x56, 0x34, 0x12,
  ]
  let v = @v128.v128_load64_zero(bytes, 0)
  let expected = @v128.i64x2_const(0x1234567890ABCDEF, 0)
  assert_eq(v, expected)

  // Test with non-zero offset
  let bytes2 : FixedArray[Byte] = [
    0, 0, 0, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
  ]
  let v2 = @v128.v128_load64_zero(bytes2, 3)
  let expected2 = @v128.i64x2_const(0x8877665544332211UL, 0)
  assert_eq(v2, expected2)
}
