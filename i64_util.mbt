///|
fn UInt64::shr_s(a : UInt64, shift : Int) -> UInt64 {
  (a.reinterpret_as_int64() >> shift).reinterpret_as_uint64()
}

///|
fn UInt64::abs(a : UInt64) -> UInt64 {
  let signed = a.reinterpret_as_int64()
  if signed < 0L {
    (-signed).reinterpret_as_uint64()
  } else {
    a
  }
}

///|
fn UInt64::neg(a : UInt64) -> UInt64 {
  (-a.reinterpret_as_int64()).reinterpret_as_uint64()
}
