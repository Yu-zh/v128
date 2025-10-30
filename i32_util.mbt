///|
fn Int::narrow_sat_i32_s(i : Int) -> Int16 {
  if i > 32767 {
    (32767).to_int16()
  } else if i < -32768 {
    (-32768).to_int16()
  } else {
    i.to_int16()
  }
}

///|
fn Int::narrow_sat_i32_u(i : Int) -> Int16 {
  if i > 65535 {
    (65535).to_uint16().reinterpret_as_int16()
  } else if i < 0 {
    (0).to_uint16().reinterpret_as_int16()
  } else {
    i.to_uint16().reinterpret_as_int16()
  }
}

///|
fn Int::min_s(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn Int::min_u(a : Int, b : Int) -> Int {
  if a.reinterpret_as_uint() < b.reinterpret_as_uint() {
    a
  } else {
    b
  }
}

///|
fn Int::max_s(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn Int::max_u(a : Int, b : Int) -> Int {
  if a.reinterpret_as_uint() > b.reinterpret_as_uint() {
    a
  } else {
    b
  }
}

///|
fn Int::extend_s(a : Int) -> Int64 {
  a.to_int64()
}

///|
fn Int::extend_u(a : Int) -> Int64 {
  a.reinterpret_as_uint().to_int64()
}

///|
fn Int::ne(a : Int, b : Int) -> Bool {
  !a.equal(b)
}

///|
fn Int::lt_s(a : Int, b : Int) -> Bool {
  a < b
}

///|
fn Int::lt_u(a : Int, b : Int) -> Bool {
  a.reinterpret_as_uint() < b.reinterpret_as_uint()
}

///|
fn Int::le_s(a : Int, b : Int) -> Bool {
  a <= b
}

///|
fn Int::le_u(a : Int, b : Int) -> Bool {
  a.reinterpret_as_uint() <= b.reinterpret_as_uint()
}

///|
fn Int::gt_s(a : Int, b : Int) -> Bool {
  a > b
}

///|
fn Int::gt_u(a : Int, b : Int) -> Bool {
  a.reinterpret_as_uint() > b.reinterpret_as_uint()
}

///|
fn Int::ge_s(a : Int, b : Int) -> Bool {
  a >= b
}

///|
fn Int::ge_u(a : Int, b : Int) -> Bool {
  a.reinterpret_as_uint() >= b.reinterpret_as_uint()
}

///|
fn Int::shr_u(a : Int, shift : Int) -> Int {
  (a.reinterpret_as_uint() >> shift).reinterpret_as_int()
}
