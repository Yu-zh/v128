///|
using @i8 {type I8}

///|
/// V128 is an abstract 128-bit vector type as in WebAssembly. 
pub type V128

///|
pub struct I8x16(I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8) derive (
  Eq,
)

///|
pub struct I16x8(Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16) derive (
  Eq,
)

///|
pub struct I32x4(Int, Int, Int, Int) derive(Eq)

///|
pub struct I64x2(Int64, Int64) derive(Eq)

///|
pub struct F32x4(Float, Float, Float, Float) derive(Eq)

///|
pub struct F64x2(Double, Double) derive(Eq)

///|
fn I8x16::from(v : V128) -> I8x16 = "%identity"

///|
fn I8x16::to(self : I8x16) -> V128 = "%identity"

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
  let b0 = a0.to_int().to_int16() | (a1.to_int().to_int16() << 8)
  let b1 = a2.to_int().to_int16() | (a3.to_int().to_int16() << 8)
  let b2 = a4.to_int().to_int16() | (a5.to_int().to_int16() << 8)
  let b3 = a6.to_int().to_int16() | (a7.to_int().to_int16() << 8)
  let b4 = a8.to_int().to_int16() | (a9.to_int().to_int16() << 8)
  let b5 = a10.to_int().to_int16() | (a11.to_int().to_int16() << 8)
  let b6 = a12.to_int().to_int16() | (a13.to_int().to_int16() << 8)
  let b7 = a14.to_int().to_int16() | (a15.to_int().to_int16() << 8)
  I16x8(b0, b1, b2, b3, b4, b5, b6, b7)
}

///|
fn I16x8::to(v : I16x8) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = v
  let b0 = I8::from_int(a0.to_int())
  let b1 = I8::from_int((a0 >> 8).to_int())
  let b2 = I8::from_int(a1.to_int())
  let b3 = I8::from_int((a1 >> 8).to_int())
  let b4 = I8::from_int(a2.to_int())
  let b5 = I8::from_int((a2 >> 8).to_int())
  let b6 = I8::from_int(a3.to_int())
  let b7 = I8::from_int((a3 >> 8).to_int())
  let b8 = I8::from_int(a4.to_int())
  let b9 = I8::from_int((a4 >> 8).to_int())
  let b10 = I8::from_int(a5.to_int())
  let b11 = I8::from_int((a5 >> 8).to_int())
  let b12 = I8::from_int(a6.to_int())
  let b13 = I8::from_int((a6 >> 8).to_int())
  let b14 = I8::from_int(a7.to_int())
  let b15 = I8::from_int((a7 >> 8).to_int())
  I8x16::to(
    I8x16(b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15),
  )
}

///|
fn I32x4::from(v : V128) -> I32x4 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  let b0 = a0.to_int() | (a1.to_int() << 16)
  let b1 = a2.to_int() | (a3.to_int() << 16)
  let b2 = a4.to_int() | (a5.to_int() << 16)
  let b3 = a6.to_int() | (a7.to_int() << 16)
  I32x4(b0, b1, b2, b3)
}

///|
fn I32x4::to(v : I32x4) -> V128 {
  let I32x4(a0, a1, a2, a3) = v
  let b0 = a0.to_int16()
  let b1 = (a0 >> 16).to_int16()
  let b2 = a1.to_int16()
  let b3 = (a1 >> 16).to_int16()
  let b4 = a2.to_int16()
  let b5 = (a2 >> 16).to_int16()
  let b6 = a3.to_int16()
  let b7 = (a3 >> 16).to_int16()
  I16x8::to(I16x8(b0, b1, b2, b3, b4, b5, b6, b7))
}

///|
fn I64x2::from(v : V128) -> I64x2 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  let b0 = a0.to_int64() | (a1.to_int64() << 32)
  let b1 = a2.to_int64() | (a3.to_int64() << 32)
  I64x2(b0, b1)
}

///|
fn I64x2::to(v : I64x2) -> V128 {
  let I64x2(a0, a1) = v
  let b0 = a0.to_int()
  let b1 = (a0 >> 32).to_int()
  let b2 = a1.to_int()
  let b3 = (a1 >> 32).to_int()
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
      a0.reinterpret_as_int(),
      a1.reinterpret_as_int(),
      a2.reinterpret_as_int(),
      a3.reinterpret_as_int(),
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
  I64x2::to(I64x2(a0.reinterpret_as_int64(), a1.reinterpret_as_int64()))
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
  logger.write_string(a0.reinterpret_as_byte().to_string())
  logger.write_string(a1.reinterpret_as_byte().to_string())
  logger.write_string(a2.reinterpret_as_byte().to_string())
  logger.write_string(a3.reinterpret_as_byte().to_string())
  logger.write_string(a4.reinterpret_as_byte().to_string())
  logger.write_string(a5.reinterpret_as_byte().to_string())
  logger.write_string(a6.reinterpret_as_byte().to_string())
  logger.write_string(a7.reinterpret_as_byte().to_string())
  logger.write_string(a8.reinterpret_as_byte().to_string())
  logger.write_string(a9.reinterpret_as_byte().to_string())
  logger.write_string(a10.reinterpret_as_byte().to_string())
  logger.write_string(a11.reinterpret_as_byte().to_string())
  logger.write_string(a12.reinterpret_as_byte().to_string())
  logger.write_string(a13.reinterpret_as_byte().to_string())
  logger.write_string(a14.reinterpret_as_byte().to_string())
  logger.write_string(a15.reinterpret_as_byte().to_string())
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
  logger.write_string(a0.reinterpret_as_byte().to_string())
  logger.write_string(a1.reinterpret_as_byte().to_string())
  logger.write_string(a2.reinterpret_as_byte().to_string())
  logger.write_string(a3.reinterpret_as_byte().to_string())
  logger.write_string(a4.reinterpret_as_byte().to_string())
  logger.write_string(a5.reinterpret_as_byte().to_string())
  logger.write_string(a6.reinterpret_as_byte().to_string())
  logger.write_string(a7.reinterpret_as_byte().to_string())
  logger.write_string(a8.reinterpret_as_byte().to_string())
  logger.write_string(a9.reinterpret_as_byte().to_string())
  logger.write_string(a10.reinterpret_as_byte().to_string())
  logger.write_string(a11.reinterpret_as_byte().to_string())
  logger.write_string(a12.reinterpret_as_byte().to_string())
  logger.write_string(a13.reinterpret_as_byte().to_string())
  logger.write_string(a14.reinterpret_as_byte().to_string())
  logger.write_string(a15.reinterpret_as_byte().to_string())
  logger.write_string(")")
}

///|
pub impl Eq for V128 with equal(self, other) {
  let v1 = I8x16::from(self)
  let v2 = I8x16::from(other)
  v1 == v2
}

///|
test "back and forth conversion1" {
  let v1 = I8x16::const_(
    I8::from_int(1),
    I8::from_int(2),
    I8::from_int(3),
    I8::from_int(4),
    I8::from_int(5),
    I8::from_int(6),
    I8::from_int(7),
    I8::from_int(8),
    I8::from_int(9),
    I8::from_int(10),
    I8::from_int(11),
    I8::from_int(12),
    I8::from_int(13),
    I8::from_int(14),
    I8::from_int(15),
    I8::from_int(16),
  )
  assert_eq(I8x16::from(v1).to(), v1)
  assert_eq(I16x8::from(v1).to(), v1)
  assert_eq(I32x4::from(v1).to(), v1)
  assert_eq(I64x2::from(v1).to(), v1)
  assert_eq(F32x4::from(v1).to(), v1)
  assert_eq(F64x2::from(v1).to(), v1)
  let v2 = I16x8::const_(
    0x0201, 0x0403, 0x0605, 0x0807, 0x0A09, 0x0C0B, 0x0E0D, 0x100F,
  )
  assert_eq(v2, v1)
  assert_eq(I16x8::from(v2).to(), v2)
  assert_eq(I32x4::from(v2).to(), v2)
  assert_eq(I64x2::from(v2).to(), v2)
  assert_eq(F32x4::from(v2).to(), v2)
  assert_eq(F64x2::from(v2).to(), v2)
  let v3 = I32x4::const_(0x04030201, 0x08070605, 0x0C0B0A09, 0x100F0E0D)
  assert_eq(v3, v1)
  assert_eq(I32x4::from(v3).to(), v3)
  assert_eq(I64x2::from(v3).to(), v3)
  assert_eq(F32x4::from(v3).to(), v3)
  assert_eq(F64x2::from(v3).to(), v3)
  let v4 = I64x2::const_(0x0807060504030201, 0x100F0E0D0C0B0A09)
  assert_eq(v4, v1)
  assert_eq(I64x2::from(v4).to(), v4)
  assert_eq(F32x4::from(v4).to(), v4)
  assert_eq(F64x2::from(v4).to(), v4)
}
