// Simple tests for binop.mbt functions

// ========== I8x16 Tests ==========

///|
test "I8x16::add" {
  // let v1 = @v128.i8x16_splat(1)
  // let v2 = @v128.i8x16_splat(2)
  // let expected = @v128.i8x16_splat(3)
  // assert_true(@v128.v128_eq(@v128.i8x16_add(v1, v2), expected))
  let v1 = @v128.i8x16_const(
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  )
  let v2 = @v128.i8x16_const(
    16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,
  )
  let expected = @v128.i8x16_const(
    17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17,
  )
  assert_true(@v128.v128_eq(@v128.i8x16_add(v1, v2), expected))
}
