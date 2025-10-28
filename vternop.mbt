///|
pub fn V128::select(v1 : V128, v2 : V128, mask : V128) -> V128 {
  (v1 & mask) | (v2 & mask.not())
}
