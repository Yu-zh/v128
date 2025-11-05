///|
#intrinsic("simd")
pub fn V128::bitselect(v1 : V128, v2 : V128, mask : V128) -> V128 {
  v1.and_(mask).or_(v2.and_(mask.not()))
}
