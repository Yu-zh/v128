///|
fn Int16::narrow_sat_i16_s(i : Int16) -> I8 {
  let val = i.to_int()
  if val > 127 {
    I8::from_int(127)
  } else if val < -128 {
    I8::from_int(-128)
  } else {
    I8::from_int(val)
  }
}

///|
fn Int16::narrow_sat_i16_u(i : Int16) -> I8 {
  let val = i.to_int()
  if val > 255 {
    I8::reinterpret_from_byte(255)
  } else if val < 0 {
    I8::reinterpret_from_byte(0)
  } else {
    I8::reinterpret_from_byte(val.to_byte())
  }
}

///|
fn Int16::add_sat_s(a : Int16, b : Int16) -> Int16 {
  let sum = a.to_int() + b.to_int()
  if sum > 32767 {
    (32767).to_int16()
  } else if sum < -32768 {
    (-32768).to_int16()
  } else {
    sum.to_int16()
  }
}

///|
fn Int16::add_sat_u(a : Int16, b : Int16) -> Int16 {
  let a_uint = a.reinterpret_as_uint16().to_int()
  let b_uint = b.reinterpret_as_uint16().to_int()
  let sum = a_uint + b_uint
  if sum > 65535 {
    (65535).to_uint16().reinterpret_as_int16()
  } else {
    sum.to_uint16().reinterpret_as_int16()
  }
}

///|
fn Int16::sub_sat_s(a : Int16, b : Int16) -> Int16 {
  let diff = a.to_int() - b.to_int()
  if diff > 32767 {
    (32767).to_int16()
  } else if diff < -32768 {
    (-32768).to_int16()
  } else {
    diff.to_int16()
  }
}

///|
fn Int16::sub_sat_u(a : Int16, b : Int16) -> Int16 {
  let a_uint = a.reinterpret_as_uint16().to_int()
  let b_uint = b.reinterpret_as_uint16().to_int()
  let diff = a_uint - b_uint
  if diff < 0 {
    (0).to_uint16().reinterpret_as_int16()
  } else {
    diff.to_uint16().reinterpret_as_int16()
  }
}

///|
fn Int16::min_s(a : Int16, b : Int16) -> Int16 {
  if a.to_int() < b.to_int() {
    a
  } else {
    b
  }
}

///|
fn Int16::min_u(a : Int16, b : Int16) -> Int16 {
  if a.reinterpret_as_uint16().to_int() < b.reinterpret_as_uint16().to_int() {
    a
  } else {
    b
  }
}

///|
fn Int16::max_s(a : Int16, b : Int16) -> Int16 {
  if a.to_int() > b.to_int() {
    a
  } else {
    b
  }
}

///|
fn Int16::max_u(a : Int16, b : Int16) -> Int16 {
  if a.reinterpret_as_uint16().to_int() > b.reinterpret_as_uint16().to_int() {
    a
  } else {
    b
  }
}

///|
fn Int16::avgr_u(a : Int16, b : Int16) -> Int16 {
  let a_uint = a.reinterpret_as_uint16().to_int()
  let b_uint = b.reinterpret_as_uint16().to_int()
  ((a_uint + b_uint + 1) / 2).to_uint16().reinterpret_as_int16()
}

///|
fn Int16::extend_s(a : Int16) -> Int {
  a.to_int()
}

///|
fn Int16::extend_u(a : Int16) -> Int {
  a.reinterpret_as_uint16().to_int()
}

///|
fn Int16::ne(a : Int16, b : Int16) -> Bool {
  !a.equal(b)
}

///|
fn Int16::lt_s(a : Int16, b : Int16) -> Bool {
  a.to_int() < b.to_int()
}

///|
fn Int16::lt_u(a : Int16, b : Int16) -> Bool {
  a.to_int().reinterpret_as_uint() < b.to_int().reinterpret_as_uint()
}

///|
fn Int16::le_s(a : Int16, b : Int16) -> Bool {
  a.to_int() <= b.to_int()
}

///|
fn Int16::le_u(a : Int16, b : Int16) -> Bool {
  a.to_int().reinterpret_as_uint() <= b.to_int().reinterpret_as_uint()
}

///|
fn Int16::gt_s(a : Int16, b : Int16) -> Bool {
  a.to_int() > b.to_int()
}

///|
fn Int16::gt_u(a : Int16, b : Int16) -> Bool {
  a.to_int().reinterpret_as_uint() > b.to_int().reinterpret_as_uint()
}

///|
fn Int16::ge_s(a : Int16, b : Int16) -> Bool {
  a.to_int() >= b.to_int()
}

///|
fn Int16::ge_u(a : Int16, b : Int16) -> Bool {
  a.to_int().reinterpret_as_uint() >= b.to_int().reinterpret_as_uint()
}

///|
fn Int16::shr_u(a : Int16, shift : Int) -> Int16 {
  (a.reinterpret_as_uint16() >> shift).reinterpret_as_int16()
}
