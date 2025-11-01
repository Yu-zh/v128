///|
fn UInt::narrow_sat_i32_s(i : UInt) -> UInt16 {
  let val = i.reinterpret_as_int()
  if val > 32767 {
    0x7FFF
  } else if val < -32768 {
    0x8000
  } else {
    val.to_uint16()
  }
}

///|
fn UInt::narrow_sat_i32_u(i : UInt) -> UInt16 {
  if i > 65535 {
    0xFFFF
  } else {
    i.to_uint16()
  }
}

///|
fn UInt::min_s(a : UInt, b : UInt) -> UInt {
  if a.reinterpret_as_int() < b.reinterpret_as_int() {
    a
  } else {
    b
  }
}

///|
fn UInt::min_u(a : UInt, b : UInt) -> UInt {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn UInt::max_s(a : UInt, b : UInt) -> UInt {
  if a.reinterpret_as_int() > b.reinterpret_as_int() {
    a
  } else {
    b
  }
}

///|
fn UInt::max_u(a : UInt, b : UInt) -> UInt {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn UInt::extend_s(a : UInt) -> UInt64 {
  a.reinterpret_as_int().to_int64().reinterpret_as_uint64()
}

///|
fn UInt::extend_u(a : UInt) -> UInt64 {
  a.to_uint64()
}

///|
fn UInt::ne(a : UInt, b : UInt) -> Bool {
  !a.equal(b)
}

///|
fn UInt::lt_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() < b.reinterpret_as_int()
}

///|
fn UInt::lt_u(a : UInt, b : UInt) -> Bool {
  a < b
}

///|
fn UInt::le_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() <= b.reinterpret_as_int()
}

///|
fn UInt::le_u(a : UInt, b : UInt) -> Bool {
  a <= b
}

///|
fn UInt::gt_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() > b.reinterpret_as_int()
}

///|
fn UInt::gt_u(a : UInt, b : UInt) -> Bool {
  a > b
}

///|
fn UInt::ge_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() >= b.reinterpret_as_int()
}

///|
fn UInt::ge_u(a : UInt, b : UInt) -> Bool {
  a >= b
}

///|
fn UInt::shr_s(a : UInt, shift : Int) -> UInt {
  (a.reinterpret_as_int() >> shift).reinterpret_as_uint()
}

///|
fn UInt::abs(a : UInt) -> UInt {
  let signed = a.reinterpret_as_int()
  if signed < 0 {
    (-signed).reinterpret_as_uint()
  } else {
    a
  }
}

///|
fn UInt::neg(a : UInt) -> UInt {
  (-a.reinterpret_as_int()).reinterpret_as_uint()
}
