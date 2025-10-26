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
