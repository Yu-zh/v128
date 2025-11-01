// | I8x16 Popcnt -> V128.I8x16.popcnt

///|
pub fn I8x16::neg(v : V128) -> V128 {
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
  I8x16::to(
    I8x16(
      a1.neg(),
      a2.neg(),
      a3.neg(),
      a4.neg(),
      a5.neg(),
      a6.neg(),
      a7.neg(),
      a8.neg(),
      a9.neg(),
      a10.neg(),
      a11.neg(),
      a12.neg(),
      a13.neg(),
      a14.neg(),
      a15.neg(),
      a16.neg(),
    ),
  )
}

///|
pub fn I8x16::abs(v : V128) -> V128 {
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
  I8x16::to(
    I8x16(
      a1.abs(),
      a2.abs(),
      a3.abs(),
      a4.abs(),
      a5.abs(),
      a6.abs(),
      a7.abs(),
      a8.abs(),
      a9.abs(),
      a10.abs(),
      a11.abs(),
      a12.abs(),
      a13.abs(),
      a14.abs(),
      a15.abs(),
      a16.abs(),
    ),
  )
}

///|
pub fn I8x16::popcnt(v : V128) -> V128 {
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
  I8x16::to(
    I8x16(
      a1.popcnt().to_byte(),
      a2.popcnt().to_byte(),
      a3.popcnt().to_byte(),
      a4.popcnt().to_byte(),
      a5.popcnt().to_byte(),
      a6.popcnt().to_byte(),
      a7.popcnt().to_byte(),
      a8.popcnt().to_byte(),
      a9.popcnt().to_byte(),
      a10.popcnt().to_byte(),
      a11.popcnt().to_byte(),
      a12.popcnt().to_byte(),
      a13.popcnt().to_byte(),
      a14.popcnt().to_byte(),
      a15.popcnt().to_byte(),
      a16.popcnt().to_byte(),
    ),
  )
}

///|
pub fn I16x8::neg(v : V128) -> V128 {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a1.neg(),
      a2.neg(),
      a3.neg(),
      a4.neg(),
      a5.neg(),
      a6.neg(),
      a7.neg(),
      a8.neg(),
    ),
  )
}

///|
pub fn I16x8::abs(v : V128) -> V128 {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a1.abs(),
      a2.abs(),
      a3.abs(),
      a4.abs(),
      a5.abs(),
      a6.abs(),
      a7.abs(),
      a8.abs(),
    ),
  )
}

///|
pub fn I32x4::abs(v : V128) -> V128 {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  I32x4::to(I32x4(a1.abs(), a2.abs(), a3.abs(), a4.abs()))
}

///|
pub fn I32x4::neg(v : V128) -> V128 {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  I32x4::to(I32x4(a1.neg(), a2.neg(), a3.neg(), a4.neg()))
}

///|
pub fn I64x2::abs(v : V128) -> V128 {
  let I64x2(a1, a2) = I64x2::from(v)
  I64x2::to(I64x2(a1.abs(), a2.abs()))
}

///|
pub fn I64x2::neg(v : V128) -> V128 {
  let I64x2(a1, a2) = I64x2::from(v)
  I64x2::to(I64x2(a1.neg(), a2.neg()))
}

///|
pub fn F32x4::abs(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.abs(), a2.abs(), a3.abs(), a4.abs()))
}

///|
pub fn F32x4::neg(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(-a1, -a2, -a3, -a4))
}

///|
pub fn F32x4::sqrt(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.sqrt(), a2.sqrt(), a3.sqrt(), a4.sqrt()))
}

///|
pub fn F32x4::ceil(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.ceil(), a2.ceil(), a3.ceil(), a4.ceil()))
}

///|
pub fn F32x4::floor(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.floor(), a2.floor(), a3.floor(), a4.floor()))
}

///|
pub fn F32x4::trunc(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.trunc(), a2.trunc(), a3.trunc(), a4.trunc()))
}

///|
pub fn F32x4::nearest(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.round(), a2.round(), a3.round(), a4.round()))
}

///|
pub fn F64x2::abs(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.abs(), a2.abs()))
}

///|
pub fn F64x2::neg(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(-a1, -a2))
}

///|
pub fn F64x2::sqrt(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.sqrt(), a2.sqrt()))
}

///|
pub fn F64x2::ceil(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.ceil(), a2.ceil()))
}

///|
pub fn F64x2::floor(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.floor(), a2.floor()))
}

///|
pub fn F64x2::trunc(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.trunc(), a2.trunc()))
}

///|
pub fn F64x2::nearest(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.round(), a2.round()))
}
