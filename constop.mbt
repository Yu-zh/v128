///|
pub fn I8x16::const_(
  a0 : I8,
  a1 : I8,
  a2 : I8,
  a3 : I8,
  a4 : I8,
  a5 : I8,
  a6 : I8,
  a7 : I8,
  a8 : I8,
  a9 : I8,
  a10 : I8,
  a11 : I8,
  a12 : I8,
  a13 : I8,
  a14 : I8,
  a15 : I8,
) -> V128 {
  I8x16::to(
    I8x16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15),
  )
}

///|
pub fn I16x8::const_(
  a0 : Int16,
  a1 : Int16,
  a2 : Int16,
  a3 : Int16,
  a4 : Int16,
  a5 : Int16,
  a6 : Int16,
  a7 : Int16,
) -> V128 {
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn I32x4::const_(a0 : Int, a1 : Int, a2 : Int, a3 : Int) -> V128 {
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn I64x2::const_(a0 : Int64, a1 : Int64) -> V128 {
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
