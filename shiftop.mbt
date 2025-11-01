///|
pub fn I8x16::shl(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0 << shift,
      a1 << shift,
      a2 << shift,
      a3 << shift,
      a4 << shift,
      a5 << shift,
      a6 << shift,
      a7 << shift,
      a8 << shift,
      a9 << shift,
      a10 << shift,
      a11 << shift,
      a12 << shift,
      a13 << shift,
      a14 << shift,
      a15 << shift,
    ),
  )
}

///|
pub fn I8x16::shr_u(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0 >> shift,
      a1 >> shift,
      a2 >> shift,
      a3 >> shift,
      a4 >> shift,
      a5 >> shift,
      a6 >> shift,
      a7 >> shift,
      a8 >> shift,
      a9 >> shift,
      a10 >> shift,
      a11 >> shift,
      a12 >> shift,
      a13 >> shift,
      a14 >> shift,
      a15 >> shift,
    ),
  )
}

///|
pub fn I8x16::shr_s(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0.shr_s(shift),
      a1.shr_s(shift),
      a2.shr_s(shift),
      a3.shr_s(shift),
      a4.shr_s(shift),
      a5.shr_s(shift),
      a6.shr_s(shift),
      a7.shr_s(shift),
      a8.shr_s(shift),
      a9.shr_s(shift),
      a10.shr_s(shift),
      a11.shr_s(shift),
      a12.shr_s(shift),
      a13.shr_s(shift),
      a14.shr_s(shift),
      a15.shr_s(shift),
    ),
  )
}

///|
pub fn I16x8::shl(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0 << shift,
      a1 << shift,
      a2 << shift,
      a3 << shift,
      a4 << shift,
      a5 << shift,
      a6 << shift,
      a7 << shift,
    ),
  )
}

///|
pub fn I16x8::shr_u(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0 >> shift,
      a1 >> shift,
      a2 >> shift,
      a3 >> shift,
      a4 >> shift,
      a5 >> shift,
      a6 >> shift,
      a7 >> shift,
    ),
  )
}

///|
pub fn I16x8::shr_s(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0.shr_s(shift),
      a1.shr_s(shift),
      a2.shr_s(shift),
      a3.shr_s(shift),
      a4.shr_s(shift),
      a5.shr_s(shift),
      a6.shr_s(shift),
      a7.shr_s(shift),
    ),
  )
}

///|
pub fn I32x4::shl(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0 << shift, a1 << shift, a2 << shift, a3 << shift))
}

///|
pub fn I32x4::shr_u(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0 >> shift, a1 >> shift, a2 >> shift, a3 >> shift))
}

///|
pub fn I32x4::shr_s(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(
    I32x4(a0.shr_s(shift), a1.shr_s(shift), a2.shr_s(shift), a3.shr_s(shift)),
  )
}

///|
pub fn I64x2::shl(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0 << shift, a1 << shift))
}

///|
pub fn I64x2::shr_u(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0 >> shift, a1 >> shift))
}

///|
pub fn I64x2::shr_s(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0.shr_s(shift), a1.shr_s(shift)))
}
