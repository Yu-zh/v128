///|
// Simple tests for testop.mbt functions


test "I8x16::all_true" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_true(I8x16::all_true(v))

  let v2 = I8x16::const_(1, 2, 3, 0, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_false(I8x16::all_true(v2))
}

test "I16x8::all_true" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_true(I16x8::all_true(v))

  let v2 = I16x8::const_(1, 2, 0, 4, 5, 6, 7, 8)
  assert_false(I16x8::all_true(v2))
}

test "I32x4::all_true" {
  let v = I32x4::const_(1, 2, 3, 4)
  assert_true(I32x4::all_true(v))

  let v2 = I32x4::const_(1, 0, 3, 4)
  assert_false(I32x4::all_true(v2))
}

test "I64x2::all_true" {
  let v = I64x2::const_(100UL, 200UL)
  assert_true(I64x2::all_true(v))

  let v2 = I64x2::const_(0UL, 200UL)
  assert_false(I64x2::all_true(v2))
}
