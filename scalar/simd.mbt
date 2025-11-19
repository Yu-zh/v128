///|
/// V128 is an abstract 128-bit vector type as in WebAssembly. 
pub struct V128(I8x16)

///|
struct I8x16(
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte,
  Byte
) derive(Eq)

///|
struct I16x8(UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16) derive (
  Eq,
)

///|
#valtype
struct I32x4(UInt, UInt, UInt, UInt) derive(Eq)

///|
#valtype
struct I64x2(UInt64, UInt64) derive(Eq)

///|
#valtype
struct F32x4(Float, Float, Float, Float) derive(Eq)

///|
#valtype
struct F64x2(Double, Double) derive(Eq)

///|
fn I8x16::from(v : V128) -> I8x16 {
  v.0
}

///|
fn I8x16::to(self : I8x16) -> V128 {
  V128(self)
}

///|
fn I16x8::from(v : V128) -> I16x8 {
  let I8x16(
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15
  ) = I8x16::from(v)
  let b0 = a0.to_uint16() | (a1.to_uint16() << 8)
  let b1 = a2.to_uint16() | (a3.to_uint16() << 8)
  let b2 = a4.to_uint16() | (a5.to_uint16() << 8)
  let b3 = a6.to_uint16() | (a7.to_uint16() << 8)
  let b4 = a8.to_uint16() | (a9.to_uint16() << 8)
  let b5 = a10.to_uint16() | (a11.to_uint16() << 8)
  let b6 = a12.to_uint16() | (a13.to_uint16() << 8)
  let b7 = a14.to_uint16() | (a15.to_uint16() << 8)
  I16x8(b0, b1, b2, b3, b4, b5, b6, b7)
}

///|
fn I16x8::to(v : I16x8) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = v
  let b0 = a0.to_byte()
  let b1 = (a0 >> 8).to_byte()
  let b2 = a1.to_byte()
  let b3 = (a1 >> 8).to_byte()
  let b4 = a2.to_byte()
  let b5 = (a2 >> 8).to_byte()
  let b6 = a3.to_byte()
  let b7 = (a3 >> 8).to_byte()
  let b8 = a4.to_byte()
  let b9 = (a4 >> 8).to_byte()
  let b10 = a5.to_byte()
  let b11 = (a5 >> 8).to_byte()
  let b12 = a6.to_byte()
  let b13 = (a6 >> 8).to_byte()
  let b14 = a7.to_byte()
  let b15 = (a7 >> 8).to_byte()
  I8x16::to(
    I8x16(b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15),
  )
}

///|
fn I32x4::from(v : V128) -> I32x4 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  let b0 = a0.to_uint() | (a1.to_uint() << 16)
  let b1 = a2.to_uint() | (a3.to_uint() << 16)
  let b2 = a4.to_uint() | (a5.to_uint() << 16)
  let b3 = a6.to_uint() | (a7.to_uint() << 16)
  I32x4(b0, b1, b2, b3)
}

///|
fn I32x4::to(v : I32x4) -> V128 {
  let I32x4(a0, a1, a2, a3) = v
  let b0 = a0.to_uint16()
  let b1 = (a0 >> 16).to_uint16()
  let b2 = a1.to_uint16()
  let b3 = (a1 >> 16).to_uint16()
  let b4 = a2.to_uint16()
  let b5 = (a2 >> 16).to_uint16()
  let b6 = a3.to_uint16()
  let b7 = (a3 >> 16).to_uint16()
  I16x8::to(I16x8(b0, b1, b2, b3, b4, b5, b6, b7))
}

///|
fn I64x2::from(v : V128) -> I64x2 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  let b0 = a0.to_uint64() | (a1.to_uint64() << 32)
  let b1 = a2.to_uint64() | (a3.to_uint64() << 32)
  I64x2(b0, b1)
}

///|
fn I64x2::to(v : I64x2) -> V128 {
  let I64x2(a0, a1) = v
  let b0 = a0.to_uint()
  let b1 = (a0 >> 32).to_uint()
  let b2 = a1.to_uint()
  let b3 = (a1 >> 32).to_uint()
  I32x4::to(I32x4(b0, b1, b2, b3))
}

///|
fn F32x4::from(v : V128) -> F32x4 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  let b0 = a0.reinterpret_as_float()
  let b1 = a1.reinterpret_as_float()
  let b2 = a2.reinterpret_as_float()
  let b3 = a3.reinterpret_as_float()
  F32x4(b0, b1, b2, b3)
}

///|
fn F32x4::to(v : F32x4) -> V128 {
  let F32x4(a0, a1, a2, a3) = v
  I32x4::to(
    I32x4(
      a0.reinterpret_as_uint(),
      a1.reinterpret_as_uint(),
      a2.reinterpret_as_uint(),
      a3.reinterpret_as_uint(),
    ),
  )
}

///|
fn F64x2::from(v : V128) -> F64x2 {
  let I64x2(a0, a1) = I64x2::from(v)
  let b0 = a0.reinterpret_as_double()
  let b1 = a1.reinterpret_as_double()
  F64x2(b0, b1)
}

///|
fn F64x2::to(v : F64x2) -> V128 {
  let F64x2(a0, a1) = v
  I64x2::to(I64x2(a0.reinterpret_as_uint64(), a1.reinterpret_as_uint64()))
}

///|
pub impl Show for I8x16 with output(self, logger) {
  let I8x16(
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15
  ) = self
  logger.write_string("I8x16(")
  logger.write_string(a0.to_string())
  logger.write_string(a1.to_string())
  logger.write_string(a2.to_string())
  logger.write_string(a3.to_string())
  logger.write_string(a4.to_string())
  logger.write_string(a5.to_string())
  logger.write_string(a6.to_string())
  logger.write_string(a7.to_string())
  logger.write_string(a8.to_string())
  logger.write_string(a9.to_string())
  logger.write_string(a10.to_string())
  logger.write_string(a11.to_string())
  logger.write_string(a12.to_string())
  logger.write_string(a13.to_string())
  logger.write_string(a14.to_string())
  logger.write_string(a15.to_string())
  logger.write_string(")")
}

///|
pub impl Show for I16x8 with output(self, logger) {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = self
  logger.write_string("I16x8(")
  logger.write_string(a0.to_string(radix=16))
  logger.write_string(a1.to_string(radix=16))
  logger.write_string(a2.to_string(radix=16))
  logger.write_string(a3.to_string(radix=16))
  logger.write_string(a4.to_string(radix=16))
  logger.write_string(a5.to_string(radix=16))
  logger.write_string(a6.to_string(radix=16))
  logger.write_string(a7.to_string(radix=16))
  logger.write_string(")")
}

///|
pub impl Show for I32x4 with output(self, logger) {
  let I32x4(a0, a1, a2, a3) = self
  logger.write_string("I32x4(")
  logger.write_string(a0.to_string(radix=16))
  logger.write_string(a1.to_string(radix=16))
  logger.write_string(a2.to_string(radix=16))
  logger.write_string(a3.to_string(radix=16))
  logger.write_string(")")
}

///|
pub impl Show for I64x2 with output(self, logger) {
  let I64x2(a0, a1) = self
  logger.write_string("I64x2(")
  logger.write_string(a0.to_string(radix=16))
  logger.write_string(a1.to_string(radix=16))
  logger.write_string(")")
}

///|
pub impl Show for F32x4 with output(self, logger) {
  let F32x4(a0, a1, a2, a3) = self
  logger.write_string("F32x4(")
  logger.write_string(a0.to_string())
  logger.write_string(a1.to_string())
  logger.write_string(a2.to_string())
  logger.write_string(a3.to_string())
  logger.write_string(")")
}

///|
pub impl Show for F64x2 with output(self, logger) {
  let F64x2(a0, a1) = self
  logger.write_string("F64x2(")
  logger.write_string(a0.to_string())
  logger.write_string(a1.to_string())
  logger.write_string(")")
}

///|
pub impl Show for V128 with output(self, logger) {
  let I8x16(
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15
  ) = I8x16::from(self)
  logger.write_string("V128(")
  logger.write_string(a0.to_string())
  logger.write_string(a1.to_string())
  logger.write_string(a2.to_string())
  logger.write_string(a3.to_string())
  logger.write_string(a4.to_string())
  logger.write_string(a5.to_string())
  logger.write_string(a6.to_string())
  logger.write_string(a7.to_string())
  logger.write_string(a8.to_string())
  logger.write_string(a9.to_string())
  logger.write_string(a10.to_string())
  logger.write_string(a11.to_string())
  logger.write_string(a12.to_string())
  logger.write_string(a13.to_string())
  logger.write_string(a14.to_string())
  logger.write_string(a15.to_string())
  logger.write_string(")")
}

///|
pub impl Eq for V128 with equal(self, other) {
  let v1 = I8x16::from(self)
  let v2 = I8x16::from(other)
  v1 == v2
}

///|
pub fn v128_to_string(v : V128) -> String {
  v.to_string()
}

///|
pub fn v128_eq(v1 : V128, v2 : V128) -> Bool {
  v1 == v2
}

///|
test "back and forth conversion1" {
  let v1 = i8x16_const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  assert_eq(I8x16::from(v1).to(), v1)
  assert_eq(I16x8::from(v1).to(), v1)
  assert_eq(I32x4::from(v1).to(), v1)
  assert_eq(I64x2::from(v1).to(), v1)
  assert_eq(F32x4::from(v1).to(), v1)
  assert_eq(F64x2::from(v1).to(), v1)
  let v2 = i16x8_const_(
    0x0201, 0x0403, 0x0605, 0x0807, 0x0A09, 0x0C0B, 0x0E0D, 0x100F,
  )
  assert_eq(v2, v1)
  assert_eq(I16x8::from(v2).to(), v2)
  assert_eq(I32x4::from(v2).to(), v2)
  assert_eq(I64x2::from(v2).to(), v2)
  assert_eq(F32x4::from(v2).to(), v2)
  assert_eq(F64x2::from(v2).to(), v2)
  let v3 = i32x4_const_(0x04030201, 0x08070605, 0x0C0B0A09, 0x100F0E0D)
  assert_eq(v3, v1)
  assert_eq(I32x4::from(v3).to(), v3)
  assert_eq(I64x2::from(v3).to(), v3)
  assert_eq(F32x4::from(v3).to(), v3)
  assert_eq(F64x2::from(v3).to(), v3)
  let v4 = i64x2_const_(0x0807060504030201, 0x100F0E0D0C0B0A09)
  assert_eq(v4, v1)
  assert_eq(I64x2::from(v4).to(), v4)
  assert_eq(F32x4::from(v4).to(), v4)
  assert_eq(F64x2::from(v4).to(), v4)
}
