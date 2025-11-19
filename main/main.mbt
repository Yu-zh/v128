///|
using @v128 {
  type I8x16,
  type I16x8,
  type I32x4,
  type I64x2,
  type F32x4,
  type F64x2,
  type V128,
}

///|
fn main {
  let v1 = I16x8::const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = I16x8::const_(8, 7, 6, 5, 4, 3, 2, 1)
  //let expected = I16x8::const_(9, 9, 9, 9, 9, 9, 9, 9)
  ignore(I16x8::add(v1, v2))
}
