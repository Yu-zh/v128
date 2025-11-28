///|
// Simple tests for testop.mbt functions


test "I8x16::all_true" {
  let v = @v128.i8x16_const(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_true(@v128.i8x16_all_true(v))

  let v2 = @v128.i8x16_const(1, 2, 3, 0, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_false(@v128.i8x16_all_true(v2))
}

test "I16x8::all_true" {
  let v = @v128.i16x8_const(1, 2, 3, 4, 5, 6, 7, 8)
  assert_true(@v128.i16x8_all_true(v))

  let v2 = @v128.i16x8_const(1, 2, 0, 4, 5, 6, 7, 8)
  assert_false(@v128.i16x8_all_true(v2))
}

test "I32x4::all_true" {
  let v = @v128.i32x4_const(1, 2, 3, 4)
  assert_true(@v128.i32x4_all_true(v))

  let v2 = @v128.i32x4_const(1, 0, 3, 4)
  assert_false(@v128.i32x4_all_true(v2))
}

test "I64x2::all_true" {
  let v = @v128.i64x2_const(100UL, 200UL)
  assert_true(@v128.i64x2_all_true(v))

  let v2 = @v128.i64x2_const(0UL, 200UL)
  assert_false(@v128.i64x2_all_true(v2))
}
