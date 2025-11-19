// ============================
// I8 Utilities
// ============================

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

// ============================
// I16 Utilities
// ============================

///|
fn UInt16::narrow_sat_i16_s(i : UInt16) -> Byte {
  let val = i.reinterpret_as_int16()
  if val > 127 {
    0x7F
  } else if val < -128 {
    0x80
  } else {
    val.to_byte()
  }
}

///|
fn UInt16::narrow_sat_i16_u(i : UInt16) -> Byte {
  if i > 255 {
    0xFF
  } else {
    i.to_byte()
  }
}

///|
fn UInt16::add_sat_s(a : UInt16, b : UInt16) -> UInt16 {
  let sum = a.reinterpret_as_int16().to_int() +
    b.reinterpret_as_int16().to_int()
  if sum > 32767 {
    0x7FFF
  } else if sum < -32768 {
    0x8000
  } else {
    sum.to_uint16()
  }
}

///|
fn UInt16::add_sat_u(a : UInt16, b : UInt16) -> UInt16 {
  let sum = a.to_uint() + b.to_uint()
  if sum > 65535 {
    0xFFFF
  } else {
    sum.to_uint16()
  }
}

///|
fn UInt16::sub_sat_s(a : UInt16, b : UInt16) -> UInt16 {
  let diff = a.reinterpret_as_int16().to_int() -
    b.reinterpret_as_int16().to_int()
  if diff > 32767 {
    32767
  } else if diff < -32768 {
    (-32768 : Int16).reinterpret_as_uint16()
  } else {
    diff.to_uint16()
  }
}

///|
fn UInt16::sub_sat_u(a : UInt16, b : UInt16) -> UInt16 {
  if a < b {
    0
  } else {
    a - b
  }
}

///|
fn UInt16::min_s(a : UInt16, b : UInt16) -> UInt16 {
  if a.reinterpret_as_int16() < b.reinterpret_as_int16() {
    a
  } else {
    b
  }
}

///|
fn UInt16::min_u(a : UInt16, b : UInt16) -> UInt16 {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn UInt16::max_s(a : UInt16, b : UInt16) -> UInt16 {
  if a.reinterpret_as_int16() > b.reinterpret_as_int16() {
    a
  } else {
    b
  }
}

///|
fn UInt16::max_u(a : UInt16, b : UInt16) -> UInt16 {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn UInt16::avgr_u(a : UInt16, b : UInt16) -> UInt16 {
  let a_uint = a.to_uint()
  let b_uint = b.to_uint()
  ((a_uint + b_uint + 1) / 2).to_uint16()
}

///|
fn UInt16::extend_s(a : UInt16) -> UInt {
  a.reinterpret_as_int16().to_int().reinterpret_as_uint()
}

///|
fn UInt16::extend_u(a : UInt16) -> UInt {
  a.to_uint()
}

///|
fn UInt16::ne(a : UInt16, b : UInt16) -> Bool {
  !a.equal(b)
}

///|
fn UInt16::lt_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() < b.reinterpret_as_int16()
}

///|
fn UInt16::lt_u(a : UInt16, b : UInt16) -> Bool {
  a < b
}

///|
fn UInt16::le_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() <= b.reinterpret_as_int16()
}

///|
fn UInt16::le_u(a : UInt16, b : UInt16) -> Bool {
  a <= b
}

///|
fn UInt16::gt_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() > b.reinterpret_as_int16()
}

///|
fn UInt16::gt_u(a : UInt16, b : UInt16) -> Bool {
  a > b
}

///|
fn UInt16::ge_s(a : UInt16, b : UInt16) -> Bool {
  a.reinterpret_as_int16() >= b.reinterpret_as_int16()
}

///|
fn UInt16::ge_u(a : UInt16, b : UInt16) -> Bool {
  a >= b
}

///|
fn UInt16::shr_s(a : UInt16, shift : Int) -> UInt16 {
  (a.reinterpret_as_int16() >> shift).reinterpret_as_uint16()
}

///|
fn UInt16::abs(a : UInt16) -> UInt16 {
  let signed = a.reinterpret_as_int16()
  if signed < 0 {
    (-signed).reinterpret_as_uint16()
  } else {
    a
  }
}

///|
fn UInt16::neg(a : UInt16) -> UInt16 {
  (-a.reinterpret_as_int16()).reinterpret_as_uint16()
}

// ============================
// I32 Utilities
// ============================

///|
fn UInt::narrow_sat_i32_s(i : UInt) -> UInt16 {
  let val = i.reinterpret_as_int()
  if val > 32767 {
    0x7FFF
  } else if val < -32768 {
    0x8000
  } else {
    val.to_uint16()
  }
}

///|
fn UInt::narrow_sat_i32_u(i : UInt) -> UInt16 {
  if i > 65535 {
    0xFFFF
  } else {
    i.to_uint16()
  }
}

///|
fn UInt::min_s(a : UInt, b : UInt) -> UInt {
  if a.reinterpret_as_int() < b.reinterpret_as_int() {
    a
  } else {
    b
  }
}

///|
fn UInt::min_u(a : UInt, b : UInt) -> UInt {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn UInt::max_s(a : UInt, b : UInt) -> UInt {
  if a.reinterpret_as_int() > b.reinterpret_as_int() {
    a
  } else {
    b
  }
}

///|
fn UInt::max_u(a : UInt, b : UInt) -> UInt {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn UInt::extend_s(a : UInt) -> UInt64 {
  a.reinterpret_as_int().to_int64().reinterpret_as_uint64()
}

///|
fn UInt::extend_u(a : UInt) -> UInt64 {
  a.to_uint64()
}

///|
fn UInt::ne(a : UInt, b : UInt) -> Bool {
  !a.equal(b)
}

///|
fn UInt::lt_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() < b.reinterpret_as_int()
}

///|
fn UInt::lt_u(a : UInt, b : UInt) -> Bool {
  a < b
}

///|
fn UInt::le_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() <= b.reinterpret_as_int()
}

///|
fn UInt::le_u(a : UInt, b : UInt) -> Bool {
  a <= b
}

///|
fn UInt::gt_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() > b.reinterpret_as_int()
}

///|
fn UInt::gt_u(a : UInt, b : UInt) -> Bool {
  a > b
}

///|
fn UInt::ge_s(a : UInt, b : UInt) -> Bool {
  a.reinterpret_as_int() >= b.reinterpret_as_int()
}

///|
fn UInt::ge_u(a : UInt, b : UInt) -> Bool {
  a >= b
}

///|
fn UInt::shr_s(a : UInt, shift : Int) -> UInt {
  (a.reinterpret_as_int() >> shift).reinterpret_as_uint()
}

///|
fn UInt::abs(a : UInt) -> UInt {
  let signed = a.reinterpret_as_int()
  if signed < 0 {
    (-signed).reinterpret_as_uint()
  } else {
    a
  }
}

///|
fn UInt::neg(a : UInt) -> UInt {
  (-a.reinterpret_as_int()).reinterpret_as_uint()
}

// ============================
// I64 Utilities
// ============================

///|
fn UInt64::shr_s(a : UInt64, shift : Int) -> UInt64 {
  (a.reinterpret_as_int64() >> shift).reinterpret_as_uint64()
}

///|
fn UInt64::abs(a : UInt64) -> UInt64 {
  let signed = a.reinterpret_as_int64()
  if signed < 0L {
    (-signed).reinterpret_as_uint64()
  } else {
    a
  }
}

///|
fn UInt64::neg(a : UInt64) -> UInt64 {
  (-a.reinterpret_as_int64()).reinterpret_as_uint64()
}

// ============================
// F32 Utilities
// ============================

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

// ============================
// F64 Utilities
// ============================

///|
fn Double::min(a : Double, b : Double) -> Double {
  if a.is_nan() || b.is_nan() {
    0.0 / 0.0
  } else if a == 0.0 && b == 0.0 {
    // Handle -0.0 and +0.0: -0.0 < +0.0
    let a_bits = a.reinterpret_as_int64() & 0x8000000000000000L
    let b_bits = b.reinterpret_as_int64() & 0x8000000000000000L
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
    let a_bits = a.reinterpret_as_int64() & 0x8000000000000000L
    let b_bits = b.reinterpret_as_int64() & 0x8000000000000000L
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
fn Double::trunc_sat_s(a : Double) -> UInt {
  a.to_int().reinterpret_as_uint()
}

///|
fn Double::trunc_sat_u(a : Double) -> UInt {
  if a.is_nan() || a <= -1.0 {
    0
  } else if a >= 4294967296.0 {
    (-1).reinterpret_as_uint() // 0xFFFFFFFF as signed int
  } else {
    a.to_int().reinterpret_as_uint()
  }
}
