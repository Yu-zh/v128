///|
fn Int::narrow_sat_i32_s(i : Int) -> Int16 {
  ...
}

///|
fn Int::narrow_sat_i32_u(i : Int) -> Int16 {
  ...
}

///|
fn Int::min_s(a : Int, b : Int) -> Int {
  ...
}

///|
fn Int::min_u(a : Int, b : Int) -> Int {
  ...
}

///|
fn Int::max_s(a : Int, b : Int) -> Int {
  ...
}

///|
fn Int::max_u(a : Int, b : Int) -> Int {
  ...
}

///|
fn Int::extend_s(a : Int) -> Int64 {
  ...
}

///|
fn Int::extend_u(a : Int) -> Int64 {
  ...
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
