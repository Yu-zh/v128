///|
struct I8(Byte)

///|
pub fn I8::to_int(i : I8) -> Int {
  if i.0 <= 127 {
    i.0.to_int()
  } else {
    i.0.to_int() - 256
  }
}

///|
pub fn I8::from_int(i : Int) -> I8 {
  if i >= 0 {
    I8(i.to_byte())
  } else {
    I8((i + 256).to_byte())
  }
}

///|
pub impl Eq for I8 with equal(self, other) {
  self.0 == other.0
}

///|
pub impl Compare for I8 with compare(self, other) {
  self.to_int().compare(other.to_int())
}

///|
pub let zero : I8 = I8(0)

///|
pub impl Add for I8 with add(self, other) {
  I8::from_int(self.to_int() + other.to_int())
}

///|
pub impl Sub for I8 with sub(self, other) {
  I8::from_int(self.to_int() - other.to_int())
}

///|
pub impl Neg for I8 with neg(self) {
  I8::from_int(-self.to_int())
}

///|
pub fn I8::abs(i : I8) -> I8 {
  I8::from_int(i.to_int().abs())
}

///|
pub fn I8::popcnt(i : I8) -> I8 {
  I8::from_int(i.0.popcnt())
}
