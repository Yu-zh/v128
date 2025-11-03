///|
fn Byte::add_sat_s(a : Byte, b : Byte) -> Byte {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  let sum = a_int + b_int
  if sum > 127 {
    0x7F
  } else if sum < -128 {
    0x80
  } else {
    sum.to_byte()
  }
}

///|
fn Byte::add_sat_u(a : Byte, b : Byte) -> Byte {
  let sum = a.to_uint() + b.to_uint()
  if sum > 255 {
    0xFF
  } else {
    sum.to_byte()
  }
}

///|
fn Byte::sub_sat_s(a : Byte, b : Byte) -> Byte {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  let diff = a_int - b_int
  if diff > 127 {
    0x7F
  } else if diff < -128 {
    0x80
  } else {
    diff.to_byte()
  }
}

///|
fn Byte::sub_sat_u(a : Byte, b : Byte) -> Byte {
  if a < b {
    0
  } else {
    a - b
  }
}

///|
fn Byte::min_s(a : Byte, b : Byte) -> Byte {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  if a_int < b_int {
    a
  } else {
    b
  }
}

///|
fn Byte::min_u(a : Byte, b : Byte) -> Byte {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn Byte::max_s(a : Byte, b : Byte) -> Byte {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  if a_int > b_int {
    a
  } else {
    b
  }
}

///|
fn Byte::max_u(a : Byte, b : Byte) -> Byte {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn Byte::avgr_u(a : Byte, b : Byte) -> Byte {
  let a_uint = a.to_uint()
  let b_uint = b.to_uint()
  ((a_uint + b_uint + 1) / 2).to_byte()
}

///|
fn Byte::sext(a : Byte) -> Int16 {
  a.to_int16() << 8 >> 8
}

///|
fn Byte::extend_s(a : Byte) -> UInt16 {
  (a.to_int16() << 8 >> 8).reinterpret_as_uint16()
}

///|
fn Byte::extend_u(a : Byte) -> UInt16 {
  a.to_uint16()
}

///|
fn Byte::ne(a : Byte, b : Byte) -> Bool {
  !a.equal(b)
}

///|
fn Byte::lt_s(a : Byte, b : Byte) -> Bool {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  a_int < b_int
}

///|
fn Byte::lt_u(a : Byte, b : Byte) -> Bool {
  a < b
}

///|
fn Byte::le_s(a : Byte, b : Byte) -> Bool {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  a_int <= b_int
}

///|
fn Byte::le_u(a : Byte, b : Byte) -> Bool {
  a <= b
}

///|
fn Byte::gt_s(a : Byte, b : Byte) -> Bool {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  a_int > b_int
}

///|
fn Byte::gt_u(a : Byte, b : Byte) -> Bool {
  a > b
}

///|
fn Byte::ge_s(a : Byte, b : Byte) -> Bool {
  let a_int = if a > 127 { a.to_int() - 256 } else { a.to_int() }
  let b_int = if b > 127 { b.to_int() - 256 } else { b.to_int() }
  a_int >= b_int
}

///|
fn Byte::ge_u(a : Byte, b : Byte) -> Bool {
  a >= b
}

///|
fn Byte::shr_s(a : Byte, shift : Int) -> Byte {
  (a.to_int() >> shift).to_byte()
}

///|
fn Byte::neg(a : Byte) -> Byte {
  (-a.sext()).to_byte()
}

///|
fn Byte::abs(a : Byte) -> Byte {
  let signed = a.sext()
  if signed < 0 {
    (-signed).to_byte()
  } else {
    a
  }
}
