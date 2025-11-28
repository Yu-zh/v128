///|
// Simple tests for vtestop.mbt functions


test "V128::any_true" {
  let v = @v128.i64x2_const(0UL, 1UL)
  assert_true(@v128.v128_any_true(v))

  let v2 = @v128.i64x2_const(0UL, 0UL)
  assert_false(@v128.v128_any_true(v2))

  let v3 = @v128.i64x2_const(100UL, 200UL)
  assert_true(@v128.v128_any_true(v3))
}
