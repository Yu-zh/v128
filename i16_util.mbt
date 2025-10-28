///|
fn Int16::narrow_sat_i16_s(i : Int16) -> I8 {
  ...
}

///|
fn Int16::narrow_sat_i16_u(i : Int16) -> I8 {
  ...
}

///|
fn Int16::add_sat_s(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::add_sat_u(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::sub_sat_s(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::sub_sat_u(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::min_s(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::min_u(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::max_s(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::max_u(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::avgr_u(a : Int16, b : Int16) -> Int16 {
  ...
}

///|
fn Int16::extend_s(a : Int16) -> Int {
  ...
}

///|
fn Int16::extend_u(a : Int16) -> Int {
  ...
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
