///|
pub fn V128::not(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0.lnot(), a1.lnot(), a2.lnot(), a3.lnot()))
}

///|
pub impl BitAnd for V128 with land(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 & b0, a1 & b1, a2 & b2, a3 & b3))
}

///|
pub impl BitOr for V128 with lor(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 | b0, a1 | b1, a2 | b2, a3 | b3))
}

///|
pub impl BitXOr for V128 with lxor(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 ^ b0, a1 ^ b1, a2 ^ b2, a3 ^ b3))
}

///|
pub fn V128::and_not(v1 : V128, v2 : V128) -> V128 {
  v1 & v2.not()
}
