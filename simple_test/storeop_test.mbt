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
