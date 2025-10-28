///|
pub fn I8x16::bitmask(v : V128) -> Int {
  let I8x16(
    a0,
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
    a15
  ) = I8x16::from(v)
  ((if a0 < @i8.zero { 1 } else { 0 }) << 0) |
  ((if a1 < @i8.zero { 1 } else { 0 }) << 1) |
  ((if a2 < @i8.zero { 1 } else { 0 }) << 2) |
  ((if a3 < @i8.zero { 1 } else { 0 }) << 3) |
  ((if a4 < @i8.zero { 1 } else { 0 }) << 4) |
  ((if a5 < @i8.zero { 1 } else { 0 }) << 5) |
  ((if a6 < @i8.zero { 1 } else { 0 }) << 6) |
  ((if a7 < @i8.zero { 1 } else { 0 }) << 7) |
  ((if a8 < @i8.zero { 1 } else { 0 }) << 8) |
  ((if a9 < @i8.zero { 1 } else { 0 }) << 9) |
  ((if a10 < @i8.zero { 1 } else { 0 }) << 10) |
  ((if a11 < @i8.zero { 1 } else { 0 }) << 11) |
  ((if a12 < @i8.zero { 1 } else { 0 }) << 12) |
  ((if a13 < @i8.zero { 1 } else { 0 }) << 13) |
  ((if a14 < @i8.zero { 1 } else { 0 }) << 14) |
  ((if a15 < @i8.zero { 1 } else { 0 }) << 15)
}

///|
pub fn I16x8::bitmask(v : V128) -> Int {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  ((if a0 < 0 { 1 } else { 0 }) << 0) |
  ((if a1 < 0 { 1 } else { 0 }) << 1) |
  ((if a2 < 0 { 1 } else { 0 }) << 2) |
  ((if a3 < 0 { 1 } else { 0 }) << 3) |
  ((if a4 < 0 { 1 } else { 0 }) << 4) |
  ((if a5 < 0 { 1 } else { 0 }) << 5) |
  ((if a6 < 0 { 1 } else { 0 }) << 6) |
  ((if a7 < 0 { 1 } else { 0 }) << 7)
}

///|
pub fn I32x4::bitmask(v : V128) -> Int {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  ((if a0 < 0 { 1 } else { 0 }) << 0) |
  ((if a1 < 0 { 1 } else { 0 }) << 1) |
  ((if a2 < 0 { 1 } else { 0 }) << 2) |
  ((if a3 < 0 { 1 } else { 0 }) << 3)
}

///|
pub fn I64x2::bitmask(v : V128) -> Int {
  let I64x2(a0, a1) = I64x2::from(v)
  ((if a0 < 0 { 1 } else { 0 }) << 0) | ((if a1 < 0 { 1 } else { 0 }) << 1)
}
