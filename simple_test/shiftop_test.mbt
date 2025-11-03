///|
// Simple tests for shiftop.mbt functions


// ========== I8x16 Shift Operations ==========

test "I8x16::shl" {
  let v = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let expected = I8x16::const_(2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32)
  assert_eq(I8x16::shl(v, 1), expected)
}

test "I8x16::shr_u" {
  let v = I8x16::const_(16, 32, 48, 64, 80, 96, 112, 128, 144, 160, 176, 192, 208, 224, 240, 255)
  let expected = I8x16::const_(8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 127)
  assert_eq(I8x16::shr_u(v, 1), expected)
}

test "I8x16::shr_s" {
  let v = I8x16::const_(16, 32, 48, 64, 80, 96, 112, 128, 144, 160, 176, 192, 208, 224, 240, 255)
  let expected = I8x16::const_(8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 127)
  assert_eq(I8x16::shr_s(v, 1), expected)
}

// ========== I16x8 Shift Operations ==========

test "I16x8::shl" {
  let v = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let expected = I16x8::const_(2, 4, 6, 8, 10, 12, 14, 16)
  assert_eq(I16x8::shl(v, 1), expected)
}

test "I16x8::shr_u" {
  let v = I16x8::const_(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000)
  let expected = I16x8::const_(500, 1000, 1500, 2000, 2500, 3000, 3500, 4000)
  assert_eq(I16x8::shr_u(v, 1), expected)
}

test "I16x8::shr_s" {
  let v = I16x8::const_(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000)
  let expected = I16x8::const_(500, 1000, 1500, 2000, 2500, 3000, 3500, 4000)
  assert_eq(I16x8::shr_s(v, 1), expected)
}

// ========== I32x4 Shift Operations ==========

test "I32x4::shl" {
  let v = I32x4::const_(1, 2, 3, 4)
  let expected = I32x4::const_(4, 8, 12, 16)
  assert_eq(I32x4::shl(v, 2), expected)
}

test "I32x4::shr_u" {
  let v = I32x4::const_(100000, 200000, 300000, 400000)
  let expected = I32x4::const_(50000, 100000, 150000, 200000)
  assert_eq(I32x4::shr_u(v, 1), expected)
}

test "I32x4::shr_s" {
  let v = I32x4::const_(100000, 200000, 300000, 400000)
  let expected = I32x4::const_(50000, 100000, 150000, 200000)
  assert_eq(I32x4::shr_s(v, 1), expected)
}

// ========== I64x2 Shift Operations ==========

test "I64x2::shl" {
  let v = I64x2::const_(100UL, 200UL)
  let expected = I64x2::const_(400UL, 800UL)
  assert_eq(I64x2::shl(v, 2), expected)
}

test "I64x2::shr_u" {
  let v = I64x2::const_(1000000UL, 2000000UL)
  let expected = I64x2::const_(500000UL, 1000000UL)
  assert_eq(I64x2::shr_u(v, 1), expected)
}

test "I64x2::shr_s" {
  let v = I64x2::const_(1000000UL, 2000000UL)
  let expected = I64x2::const_(500000UL, 1000000UL)
  assert_eq(I64x2::shr_s(v, 1), expected)
}
