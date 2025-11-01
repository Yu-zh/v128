///|
pub fn I8x16::const_(
  a0 : Byte,
  a1 : Byte,
  a2 : Byte,
  a3 : Byte,
  a4 : Byte,
  a5 : Byte,
  a6 : Byte,
  a7 : Byte,
  a8 : Byte,
  a9 : Byte,
  a10 : Byte,
  a11 : Byte,
  a12 : Byte,
  a13 : Byte,
  a14 : Byte,
  a15 : Byte,
) -> V128 {
  I8x16::to(
    I8x16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15),
  )
}

///|
pub fn I16x8::const_(
  a0 : UInt16,
  a1 : UInt16,
  a2 : UInt16,
  a3 : UInt16,
  a4 : UInt16,
  a5 : UInt16,
  a6 : UInt16,
  a7 : UInt16,
) -> V128 {
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn I32x4::const_(a0 : UInt, a1 : UInt, a2 : UInt, a3 : UInt) -> V128 {
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn I64x2::const_(a0 : UInt64, a1 : UInt64) -> V128 {
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn F32x4::const_(a0 : Float, a1 : Float, a2 : Float, a3 : Float) -> V128 {
  F32x4::to(F32x4(a0, a1, a2, a3))
}

///|
pub fn F64x2::const_(a0 : Double, a1 : Double) -> V128 {
  F64x2::to(F64x2(a0, a1))
}
