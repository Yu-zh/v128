///|
fn Int64::shr_u(a : Int64, shift : Int) -> Int64 {
  (a.reinterpret_as_uint64() >> shift).reinterpret_as_int64()
}
