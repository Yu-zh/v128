// Note: Comparison operations return 0xFFFF (all bits set) for true, 0x0000 for false per lane
// I16x8 type is already imported in i16x8_arith_test.mbt

// i16x8.eq tests

///|
test "i16x8_eq_same_positive" {
  let v1 = I16x8::const_(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000)
  let v2 = I16x8::const_(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000)
  assert_eq(I16x8::eq(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_eq_different" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(8, 7, 6, 5, 4, 3, 2, 1)
  assert_eq(I16x8::eq(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

///|
test "i16x8_eq_all_zeros" {
  let v1 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  let v2 = I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0)
  assert_eq(I16x8::eq(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_eq_all_max" {
  let v1 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  let v2 = I16x8::const_(65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535)
  assert_eq(I16x8::eq(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_eq_negative_values" {
  let v1 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-100 : Int16).reinterpret_as_uint16(), (-1000 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 0, 1, 100, 32767)
  let v2 = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), (-100 : Int16).reinterpret_as_uint16(), (-1000 : Int16).reinterpret_as_uint16(), (-32768 : Int16).reinterpret_as_uint16(), 0, 1, 100, 32767)
  assert_eq(I16x8::eq(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

// i16x8.ne tests

///|
test "i16x8_ne_different" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(8, 7, 6, 5, 4, 3, 2, 1)
  assert_eq(I16x8::ne(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_ne_same" {
  let v1 = I16x8::const_(100, 200, 300, 400, 500, 600, 700, 800)
  let v2 = I16x8::const_(100, 200, 300, 400, 500, 600, 700, 800)
  assert_eq(I16x8::ne(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

///|
test "i16x8_ne_mixed" {
  let v1 = I16x8::const_(1, 1, 2, 2, 3, 3, 4, 4)
  let v2 = I16x8::const_(1, 2, 2, 3, 3, 4, 4, 5)
  let expected = I16x8::const_(0, 0xFFFF, 0, 0xFFFF, 0, 0xFFFF, 0, 0xFFFF)
  assert_eq(I16x8::ne(v1, v2), expected)
}

// i16x8.lt_s tests (signed less than)

///|
test "i16x8_lt_s_positive" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  assert_eq(I16x8::lt_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_lt_s_negative" {
  let v1 = I16x8::const_((-100 : Int16).reinterpret_as_uint16(), (-50 : Int16).reinterpret_as_uint16(), (-25 : Int16).reinterpret_as_uint16(), (-10 : Int16).reinterpret_as_uint16(), 0, 10, 25, 50)
  let v2 = I16x8::const_((-50 : Int16).reinterpret_as_uint16(), (-25 : Int16).reinterpret_as_uint16(), (-10 : Int16).reinterpret_as_uint16(), 0, 10, 25, 50, 100)
  assert_eq(I16x8::lt_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_lt_s_equal" {
  let v1 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  assert_eq(I16x8::lt_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

///|
test "i16x8_lt_s_greater" {
  let v1 = I16x8::const_(10, 20, 30, 40, 50, 60, 70, 80)
  let v2 = I16x8::const_(5, 10, 15, 20, 25, 30, 35, 40)
  assert_eq(I16x8::lt_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

// i16x8.lt_u tests (unsigned less than)

///|
test "i16x8_lt_u_positive" {
  let v1 = I16x8::const_(100, 200, 300, 400, 500, 600, 700, 800)
  let v2 = I16x8::const_(200, 300, 400, 500, 600, 700, 800, 900)
  assert_eq(I16x8::lt_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_lt_u_unsigned_comparison" {
  // In unsigned comparison, large values (negative in signed) are > small values
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(65535, 65534, 65533, 65532, 65531, 65530, 65529, 65528)  
  assert_eq(I16x8::lt_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

// i16x8.le_s tests (signed less than or equal)

///|
test "i16x8_le_s_less" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  assert_eq(I16x8::le_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_le_s_equal" {
  let v1 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  let v2 = I16x8::const_(5, 5, 5, 5, 5, 5, 5, 5)
  assert_eq(I16x8::le_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_le_s_greater" {
  let v1 = I16x8::const_(10, 20, 30, 40, 50, 60, 70, 80)
  let v2 = I16x8::const_(5, 10, 15, 20, 25, 30, 35, 40)
  assert_eq(I16x8::le_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

// i16x8.le_u tests (unsigned less than or equal)

///|
test "i16x8_le_u_less" {
  let v1 = I16x8::const_(100, 200, 300, 400, 500, 600, 700, 800)
  let v2 = I16x8::const_(200, 300, 400, 500, 600, 700, 800, 900)
  assert_eq(I16x8::le_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_le_u_equal" {
  let v1 = I16x8::const_(1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000)
  let v2 = I16x8::const_(1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000)
  assert_eq(I16x8::le_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

// i16x8.gt_s tests (signed greater than)

///|
test "i16x8_gt_s_greater" {
  let v1 = I16x8::const_(10, 20, 30, 40, 50, 60, 70, 80)
  let v2 = I16x8::const_(5, 10, 15, 20, 25, 30, 35, 40)
  assert_eq(I16x8::gt_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_gt_s_equal" {
  let v1 = I16x8::const_(7, 7, 7, 7, 7, 7, 7, 7)
  let v2 = I16x8::const_(7, 7, 7, 7, 7, 7, 7, 7)
  assert_eq(I16x8::gt_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

///|
test "i16x8_gt_s_less" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  assert_eq(I16x8::gt_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

///|
test "i16x8_gt_s_negative" {
  let v1 = I16x8::const_(0, 10, 25, 50, 100, 200, 500, 1000)
  let v2 = I16x8::const_((-100 : Int16).reinterpret_as_uint16(), (-50 : Int16).reinterpret_as_uint16(), (-25 : Int16).reinterpret_as_uint16(), (-10 : Int16).reinterpret_as_uint16(), (-5 : Int16).reinterpret_as_uint16(), (-2 : Int16).reinterpret_as_uint16(), (-1 : Int16).reinterpret_as_uint16(), 0)
  assert_eq(I16x8::gt_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

// i16x8.gt_u tests (unsigned greater than)

///|
test "i16x8_gt_u_greater" {
  let v1 = I16x8::const_(200, 300, 400, 500, 600, 700, 800, 900)
  let v2 = I16x8::const_(100, 200, 300, 400, 500, 600, 700, 800)
  assert_eq(I16x8::gt_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_gt_u_unsigned" {
  // Large unsigned values are > small unsigned values
  let v1 = I16x8::const_(65535, 65534, 65533, 65532, 65531, 65530, 65529, 65528)
  let v2 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  assert_eq(I16x8::gt_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

// i16x8.ge_s tests (signed greater than or equal)

///|
test "i16x8_ge_s_greater" {
  let v1 = I16x8::const_(10, 20, 30, 40, 50, 60, 70, 80)
  let v2 = I16x8::const_(5, 10, 15, 20, 25, 30, 35, 40)
  assert_eq(I16x8::ge_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_ge_s_equal" {
  let v1 = I16x8::const_(9, 9, 9, 9, 9, 9, 9, 9)
  let v2 = I16x8::const_(9, 9, 9, 9, 9, 9, 9, 9)
  assert_eq(I16x8::ge_s(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_ge_s_less" {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(2, 3, 4, 5, 6, 7, 8, 9)
  assert_eq(I16x8::ge_s(v1, v2), I16x8::const_(0, 0, 0, 0, 0, 0, 0, 0))
}

// i16x8.ge_u tests (unsigned greater than or equal)

///|
test "i16x8_ge_u_greater" {
  let v1 = I16x8::const_(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000)
  let v2 = I16x8::const_(500, 1000, 1500, 2000, 2500, 3000, 3500, 4000)
  assert_eq(I16x8::ge_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

///|
test "i16x8_ge_u_equal" {
  let v1 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  let v2 = I16x8::const_(12345, 12345, 12345, 12345, 12345, 12345, 12345, 12345)
  assert_eq(I16x8::ge_u(v1, v2), I16x8::const_(0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))
}

