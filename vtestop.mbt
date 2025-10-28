///|
pub fn V128::any_true(v : V128) -> Bool {
  let I64x2(a0, a1) = I64x2::from(v)
  a0 != 0 || a1 != 0
}
