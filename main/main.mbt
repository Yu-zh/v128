///|
fn main {
  let v1 = @v128.i16x8_const_(1, 2, 3, 4, 5, 6, 7, 8)
  let v2 = @v128.i16x8_const_(8, 7, 6, 5, 4, 3, 2, 1)
  //let expected = @v128.i16x8_const_(9, 9, 9, 9, 9, 9, 9, 9)
  println(@v128.v128_to_string(@v128.i16x8_add(v1, v2)))
}
