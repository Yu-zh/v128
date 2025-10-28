///|
pub fn I8x16::splat(v : Int) -> V128 {
  let v = I8::from_int(v)
  I8x16::to(I8x16(v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v))
}

///|
pub fn I16x8::splat(v : Int) -> V128 {
  let v = v.to_int16()
  I16x8::to(I16x8(v, v, v, v, v, v, v, v))
}

///|
pub fn I32x4::splat(v : Int) -> V128 {
  I32x4::to(I32x4(v, v, v, v))
}

///|
pub fn I64x2::splat(v : Int64) -> V128 {
  I64x2::to(I64x2(v, v))
}

///|
pub fn F32x4::splat(v : Float) -> V128 {
  F32x4::to(F32x4(v, v, v, v))
}

///|
pub fn F64x2::splat(v : Double) -> V128 {
  F64x2::to(F64x2(v, v))
}
