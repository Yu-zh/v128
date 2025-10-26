///|
pub fn I8x16::all_true(v : V128) -> Bool {
  let I8x16(
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15,
    a16
  ) = I8x16::from(v)
  a1 != @i8.zero &&
  a2 != @i8.zero &&
  a3 != @i8.zero &&
  a4 != @i8.zero &&
  a5 != @i8.zero &&
  a6 != @i8.zero &&
  a7 != @i8.zero &&
  a8 != @i8.zero &&
  a9 != @i8.zero &&
  a10 != @i8.zero &&
  a11 != @i8.zero &&
  a12 != @i8.zero &&
  a13 != @i8.zero &&
  a14 != @i8.zero &&
  a15 != @i8.zero &&
  a16 != @i8.zero
}

///|
pub fn I16x8::all_true(v : V128) -> Bool {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  a1 != 0 &&
  a2 != 0 &&
  a3 != 0 &&
  a4 != 0 &&
  a5 != 0 &&
  a6 != 0 &&
  a7 != 0 &&
  a8 != 0
}

///|
pub fn I32x4::all_true(v : V128) -> Bool {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  a1 != 0 && a2 != 0 && a3 != 0 && a4 != 0
}

///|
pub fn I64x2::all_true(v : V128) -> Bool {
  let I64x2(a1, a2) = I64x2::from(v)
  a1 != 0 && a2 != 0
}
