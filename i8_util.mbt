///|
fn I8::add_sat_s(a : I8, b : I8) -> I8 {
  let sum = a.to_int() + b.to_int()
  if sum > 127 {
    I8::from_int(127)
  } else if sum < -128 {
    I8::from_int(-128)
  } else {
    I8::from_int(sum)
  }
}

///|
fn I8::add_sat_u(a : I8, b : I8) -> I8 {
  let sum = a.reinterpret_as_byte().to_int() + b.reinterpret_as_byte().to_int()
  if sum > 255 {
    I8::reinterpret_from_byte(255)
  } else {
    I8::reinterpret_from_byte(sum.to_byte())
  }
}

///|
fn I8::sub_sat_s(a : I8, b : I8) -> I8 {
  let diff = a.to_int() - b.to_int()
  if diff > 127 {
    I8::from_int(127)
  } else if diff < -128 {
    I8::from_int(-128)
  } else {
    I8::from_int(diff)
  }
}

///|
fn I8::sub_sat_u(a : I8, b : I8) -> I8 {
  let a_uint = a.reinterpret_as_byte().to_int()
  let b_uint = b.reinterpret_as_byte().to_int()
  let diff = a_uint - b_uint
  if diff < 0 {
    I8::reinterpret_from_byte(0)
  } else {
    I8::reinterpret_from_byte(diff.to_byte())
  }
}

///|
fn I8::min_s(a : I8, b : I8) -> I8 {
  if a.to_int() < b.to_int() {
    a
  } else {
    b
  }
}

///|
fn I8::min_u(a : I8, b : I8) -> I8 {
  if a.to_int().reinterpret_as_uint() < b.to_int().reinterpret_as_uint() {
    a
  } else {
    b
  }
}

///|
fn I8::max_s(a : I8, b : I8) -> I8 {
  if a.to_int() > b.to_int() {
    a
  } else {
    b
  }
}

///|
fn I8::max_u(a : I8, b : I8) -> I8 {
  if a.to_int().reinterpret_as_uint() > b.to_int().reinterpret_as_uint() {
    a
  } else {
    b
  }
}

///|
fn I8::avgr_u(a : I8, b : I8) -> I8 {
  let a_uint = a.reinterpret_as_byte().to_int()
  let b_uint = b.reinterpret_as_byte().to_int()
  I8::reinterpret_from_byte(((a_uint + b_uint + 1) / 2).to_byte())
}

///|
fn I8::extend_s(a : I8) -> Int16 {
  a.to_int().to_int16()
}

///|
fn I8::extend_u(a : I8) -> Int16 {
  a.reinterpret_as_byte().to_int().to_int16()
}

///|
fn I8::ne(a : I8, b : I8) -> Bool {
  !a.equal(b)
}

///|
fn I8::lt_s(a : I8, b : I8) -> Bool {
  a.to_int() < b.to_int()
}

///|
fn I8::lt_u(a : I8, b : I8) -> Bool {
  a.to_int().reinterpret_as_uint() < b.to_int().reinterpret_as_uint()
}

///|
fn I8::le_s(a : I8, b : I8) -> Bool {
  a.to_int() <= b.to_int()
}

///|
fn I8::le_u(a : I8, b : I8) -> Bool {
  a.to_int().reinterpret_as_uint() <= b.to_int().reinterpret_as_uint()
}

///|
fn I8::gt_s(a : I8, b : I8) -> Bool {
  a.to_int() > b.to_int()
}

///|
fn I8::gt_u(a : I8, b : I8) -> Bool {
  a.to_int().reinterpret_as_uint() > b.to_int().reinterpret_as_uint()
}

///|
fn I8::ge_s(a : I8, b : I8) -> Bool {
  a.to_int() >= b.to_int()
}

///|
fn I8::ge_u(a : I8, b : I8) -> Bool {
  a.to_int().reinterpret_as_uint() >= b.to_int().reinterpret_as_uint()
}

///|
fn I8::shr_u(a : I8, shift : Int) -> I8 {
  I8::reinterpret_from_byte(a.reinterpret_as_byte() >> shift)
}
