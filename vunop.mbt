///|
#intrinsic("simd")
pub fn V128::not(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0.lnot(), a1.lnot(), a2.lnot(), a3.lnot()))
}

///|
#intrinsic("simd")
pub fn V128::and_(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 & b0, a1 & b1, a2 & b2, a3 & b3))
}

///|
#intrinsic("simd")
pub fn V128::or_(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 | b0, a1 | b1, a2 | b2, a3 | b3))
}

///|
#intrinsic("simd")
pub fn V128::xor(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 ^ b0, a1 ^ b1, a2 ^ b2, a3 ^ b3))
}

///|
#intrinsic("simd")
pub fn V128::andnot(v1 : V128, v2 : V128) -> V128 {
  v1.and_(v2.not())
}
