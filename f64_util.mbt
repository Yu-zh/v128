///|
fn Double::min(a : Double, b : Double) -> Double {
  if a.is_nan() || b.is_nan() {
    0.0 / 0.0
  } else if a == 0.0 && b == 0.0 {
    // Handle -0.0 and +0.0: -0.0 < +0.0
    let a_bits = a.reinterpret_as_int64().land(0x8000000000000000L)
    let b_bits = b.reinterpret_as_int64().land(0x8000000000000000L)
    if a_bits != 0L {
      a // a is -0.0
    } else if b_bits != 0L {
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
fn Double::max(a : Double, b : Double) -> Double {
  if a.is_nan() || b.is_nan() {
    0.0 / 0.0
  } else if a == 0.0 && b == 0.0 {
    // Handle -0.0 and +0.0: +0.0 > -0.0
    let a_bits = a.reinterpret_as_int64().land(0x8000000000000000L)
    let b_bits = b.reinterpret_as_int64().land(0x8000000000000000L)
    if a_bits == 0L {
      a // a is +0.0
    } else if b_bits == 0L {
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
fn Double::pmin(a : Double, b : Double) -> Double {
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
fn Double::pmax(a : Double, b : Double) -> Double {
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
fn Double::trunc_sat_s(a : Double) -> Int {
  a.to_int()
}

///|
fn Double::trunc_sat_u(a : Double) -> Int {
  if a.is_nan() || a <= -1.0 {
    0
  } else if a >= 4294967296.0 {
    -1 // 0xFFFFFFFF as signed int
  } else {
    a.to_int()
  }
}
