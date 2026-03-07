// ///|
// fn main {
//   let v1 = @v128.i16x8_const_(1, 2, 3, 4, 5, 6, 7, 8)
//   let v2 = @v128.i16x8_const_(8, 7, 6, 5, 4, 3, 2, 1)
//   //let expected = @v128.i16x8_const_(9, 9, 9, 9, 9, 9, 9, 9)
//   println(@v128.v128_to_string(@v128.i16x8_add(v1, v2)))
// }

///|
fn main {
  let bytes : FixedArray[Byte] = [
    10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160,
  ]
  let x = @v128.i8x16_const(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  let v = @v128.v128_load8_lane(bytes, 4, x, 0)
  let expected = @v128.i8x16_const(
    50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  )
  ignore(v)
  ignore(expected)
}
