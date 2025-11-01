///|
fn Float::min(a : Float, b : Float) -> Float {
  if a.is_nan() || b.is_nan() {
    0.0 / 0.0
  } else if a == 0.0 && b == 0.0 {
    // Handle -0.0 and +0.0: -0.0 < +0.0
    if (a.reinterpret_as_int() & 0x80000000) != 0 {
      a // a is -0.0
    } else if (b.reinterpret_as_int() & 0x80000000) != 0 {
      b // b is -0.0
    } else {
      a // both are +0.0
    }
  } else if a < b {
    a
  } else {
    b
  }
}

///|
fn Float::max(a : Float, b : Float) -> Float {
  if a.is_nan() || b.is_nan() {
    0.0 / 0.0
  } else if a == 0.0 && b == 0.0 {
    // Handle -0.0 and +0.0: +0.0 > -0.0
    if (a.reinterpret_as_int() & 0x80000000) == 0 {
      a // a is +0.0
    } else if (b.reinterpret_as_int() & 0x80000000) == 0 {
      b // b is +0.0
    } else {
      a // both are -0.0
    }
  } else if a > b {
    a
  } else {
    b
  }
}

///|
fn Float::pmin(a : Float, b : Float) -> Float {
  if a.is_nan() {
    b
  } else if b.is_nan() {
    a
  } else if a < b {
    a
  } else {
    b
  }
}

///|
fn Float::pmax(a : Float, b : Float) -> Float {
  if a.is_nan() {
    b
  } else if b.is_nan() {
    a
  } else if a > b {
    a
  } else {
    b
  }
}

///|
fn Float::trunc_sat_s(a : Float) -> UInt {
  a.to_int().reinterpret_as_uint()
}

///|
fn Float::trunc_sat_u(a : Float) -> UInt {
  if a.is_nan() || a <= -1.0 {
    0
  } else if a >= 4294967296.0 {
    (-1).reinterpret_as_uint() // 0xFFFFFFFF as signed int
  } else {
    a.to_int().reinterpret_as_uint()
  }
}
