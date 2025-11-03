///|
fn UInt16::narrow_sat_i16_s(i : UInt16) -> Byte {
  let val = i.reinterpret_as_int16()
  if val > 127 {
    0x7F
  } else if val < -128 {
    0x80
  } else {
    val.to_byte()
  }
}

///|
fn UInt16::narrow_sat_i16_u(i : UInt16) -> Byte {
  if i > 255 {
    0xFF
  } else {
    i.to_byte()
  }
}

///|
fn UInt16::add_sat_s(a : UInt16, b : UInt16) -> UInt16 {
  let sum = a.reinterpret_as_int16().to_int() +
    b.reinterpret_as_int16().to_int()
  if sum > 32767 {
    0x7FFF
  } else if sum < -32768 {
    0x8000
  } else {
    sum.to_uint16()
  }
}

///|
fn UInt16::add_sat_u(a : UInt16, b : UInt16) -> UInt16 {
  let sum = a.to_uint() + b.to_uint()
  if sum > 65535 {
    0xFFFF
  } else {
    sum.to_uint16()
  }
}

///|
fn UInt16::sub_sat_s(a : UInt16, b : UInt16) -> UInt16 {
  let diff = a.reinterpret_as_int16().to_int() - b.reinterpret_as_int16().to_int()
  if diff > 32767 {
    32767
  } else if diff < -32768 {
    (-32768 : Int16).reinterpret_as_uint16()
  } else {
    diff.to_uint16()
  }
}

///|
fn UInt16::sub_sat_u(a : UInt16, b : UInt16) -> UInt16 {
  if a < b {
    0
  } else {
    a - b
  }
}

///|
fn UInt16::min_s(a : UInt16, b : UInt16) -> UInt16 {
  if a.reinterpret_as_int16() < b.reinterpret_as_int16() {
    a
  } else {
    b
  }
}

///|
fn UInt16::min_u(a : UInt16, b : UInt16) -> UInt16 {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn UInt16::max_s(a : UInt16, b : UInt16) -> UInt16 {
  if a.reinterpret_as_int16() > b.reinterpret_as_int16() {
    a
  } else {
    b
  }
}

///|
fn UInt16::max_u(a : UInt16, b : UInt16) -> UInt16 {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn UInt16::avgr_u(a : UInt16, b : UInt16) -> UInt16 {
  let a_uint = a.to_uint()
  let b_uint = b.to_uint()
  ((a_uint + b_uint + 1) / 2).to_uint16()
}

///|
fn UInt16::extend_s(a : UInt16) -> UInt {
  a.reinterpret_as_int16().to_int().reinterpret_as_uint()
}

///|
fn UInt16::extend_u(a : UInt16) -> UInt {
  a.to_uint()
}

///|
fn UInt16::ne(a : UInt16, b : UInt16) -> Bool {
  !a.equal(b)
}

///|
fn UInt16::lt_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() < b.reinterpret_as_int16()
}

///|
fn UInt16::lt_u(a : UInt16, b : UInt16) -> Bool {
  a < b
}

///|
fn UInt16::le_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() <= b.reinterpret_as_int16()
}

///|
fn UInt16::le_u(a : UInt16, b : UInt16) -> Bool {
  a <= b
}

///|
fn UInt16::gt_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() > b.reinterpret_as_int16()
}

///|
fn UInt16::gt_u(a : UInt16, b : UInt16) -> Bool {
  a > b
}

///|
fn UInt16::ge_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() >= b.reinterpret_as_int16()
}

///|
fn UInt16::ge_u(a : UInt16, b : UInt16) -> Bool {
  a >= b
}

///|
fn UInt16::shr_s(a : UInt16, shift : Int) -> UInt16 {
  (a.reinterpret_as_int16() >> shift).reinterpret_as_uint16()
}

///|
fn UInt16::abs(a : UInt16) -> UInt16 {
  let signed = a.reinterpret_as_int16()
  if signed < 0 {
    (-signed).reinterpret_as_uint16()
  } else {
    a
  }
}

///|
fn UInt16::neg(a : UInt16) -> UInt16 {
  (-a.reinterpret_as_int16()).reinterpret_as_uint16()
}
