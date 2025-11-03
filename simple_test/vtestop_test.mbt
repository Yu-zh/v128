///|
// Simple tests for vtestop.mbt functions


test "V128::any_true" {
  let v = I64x2::const_(0UL, 1UL)
  assert_true(V128::any_true(v))

  let v2 = I64x2::const_(0UL, 0UL)
  assert_false(V128::any_true(v2))

  let v3 = I64x2::const_(100UL, 200UL)
  assert_true(V128::any_true(v3))
}
