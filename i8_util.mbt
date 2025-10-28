///|
fn I8::add_sat_s(a : I8, b : I8) -> I8 {
  I8::from_int(a.to_int() + b.to_int())
}

///|
fn I8::add_sat_u(a : I8, b : I8) -> I8 {
  ...
}

///|
fn I8::sub_sat_s(a : I8, b : I8) -> I8 {
  ...
}

///|
fn I8::sub_sat_u(a : I8, b : I8) -> I8 {
  ...
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
  ...
}

///|
fn I8::extend_s(a : I8) -> Int16 {
  ...
}

///|
fn I8::extend_u(a : I8) -> Int16 {
  ...
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
