///|
test "v128_store" {
  let v = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let bytes : FixedArray[Byte] = FixedArray::make(16, 0)
  @v128.v128_store(bytes, 0, v)
  let expected : FixedArray[Byte] = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  ]
  @builtin.assert_eq(bytes, expected)
}

///|
test "v128_store8_lane" {
  let v = @v128.i8x16_const(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let bytes : FixedArray[Byte] = FixedArray::make(16, 0)
  @v128.v128_store8_lane(bytes, 0, v, 0)
  let expected : FixedArray[Byte] = [
    100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ]
  @builtin.assert_eq(bytes, expected)
}

///|
test "v128_store16_lane" {
  let v = @v128.i16x8_const(2000, 0, 0, 0, 0, 0, 0, 0)
  let bytes : FixedArray[Byte] = FixedArray::make(16, 0)
  @v128.v128_store16_lane(bytes, 0, v, 0)
  let expected : FixedArray[Byte] = [
    208, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ]
  @builtin.assert_eq(bytes, expected)
}

///|
test "v128_store32_lane" {
  let v = @v128.i32x4_const(300000, 0, 0, 0)
  let bytes : FixedArray[Byte] = FixedArray::make(16, 0)
  @v128.v128_store32_lane(bytes, 0, v, 0)
  let expected : FixedArray[Byte] = [
    224, 147, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ]
  @builtin.assert_eq(bytes, expected)
}

///|
test "v128_store64_lane" {
  let v = @v128.i64x2_const(4000000000, 0)
  let bytes : FixedArray[Byte] = FixedArray::make(16, 0)
  @v128.v128_store64_lane(bytes, 0, v, 0)
  let expected : FixedArray[Byte] = [
    0, 40, 107, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ]
  @builtin.assert_eq(bytes, expected)
}
