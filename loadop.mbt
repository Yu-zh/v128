///|
fn FixedArray::load_i16_le(bytes : FixedArray[Byte], offset : Int) -> Int16 {
  let a0 = bytes[offset].to_uint16()
  let a1 = bytes[offset + 1].to_uint16()
  (a0 | (a1 << 8)).reinterpret_as_int16()
}

///|
fn FixedArray::load_i32_le(bytes : FixedArray[Byte], offset : Int) -> Int {
  let a0 = bytes[offset].to_uint()
  let a1 = bytes[offset + 1].to_uint()
  let a2 = bytes[offset + 2].to_uint()
  let a3 = bytes[offset + 3].to_uint()
  (a0 | (a1 << 8) | (a2 << 16) | (a3 << 24)).reinterpret_as_int()
}

///|
fn FixedArray::load_i64_le(bytes : FixedArray[Byte], offset : Int) -> Int64 {
  let a0 = bytes[offset].to_uint64()
  let a1 = bytes[offset + 1].to_uint64()
  let a2 = bytes[offset + 2].to_uint64()
  let a3 = bytes[offset + 3].to_uint64()
  let a4 = bytes[offset + 4].to_uint64()
  let a5 = bytes[offset + 5].to_uint64()
  let a6 = bytes[offset + 6].to_uint64()
  let a7 = bytes[offset + 7].to_uint64()
  (a0 |
  (a1 << 8) |
  (a2 << 16) |
  (a3 << 24) |
  (a4 << 32) |
  (a5 << 40) |
  (a6 << 48) |
  (a7 << 56)).reinterpret_as_int64()
}

///|
pub fn V128::load(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = I8::reinterpret_from_byte(bytes[offset])
  let a1 = I8::reinterpret_from_byte(bytes[offset + 1])
  let a2 = I8::reinterpret_from_byte(bytes[offset + 2])
  let a3 = I8::reinterpret_from_byte(bytes[offset + 3])
  let a4 = I8::reinterpret_from_byte(bytes[offset + 4])
  let a5 = I8::reinterpret_from_byte(bytes[offset + 5])
  let a6 = I8::reinterpret_from_byte(bytes[offset + 6])
  let a7 = I8::reinterpret_from_byte(bytes[offset + 7])
  let a8 = I8::reinterpret_from_byte(bytes[offset + 8])
  let a9 = I8::reinterpret_from_byte(bytes[offset + 9])
  let a10 = I8::reinterpret_from_byte(bytes[offset + 10])
  let a11 = I8::reinterpret_from_byte(bytes[offset + 11])
  let a12 = I8::reinterpret_from_byte(bytes[offset + 12])
  let a13 = I8::reinterpret_from_byte(bytes[offset + 13])
  let a14 = I8::reinterpret_from_byte(bytes[offset + 14])
  let a15 = I8::reinterpret_from_byte(bytes[offset + 15])
  I8x16::to(
    I8x16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15),
  )
}

///|
pub fn V128::load8x8_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = I8::reinterpret_from_byte(bytes[offset]).extend_s()
  let a1 = I8::reinterpret_from_byte(bytes[offset + 1]).extend_s()
  let a2 = I8::reinterpret_from_byte(bytes[offset + 2]).extend_s()
  let a3 = I8::reinterpret_from_byte(bytes[offset + 3]).extend_s()
  let a4 = I8::reinterpret_from_byte(bytes[offset + 4]).extend_s()
  let a5 = I8::reinterpret_from_byte(bytes[offset + 5]).extend_s()
  let a6 = I8::reinterpret_from_byte(bytes[offset + 6]).extend_s()
  let a7 = I8::reinterpret_from_byte(bytes[offset + 7]).extend_s()
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn V128::load8x8_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = I8::reinterpret_from_byte(bytes[offset]).extend_u()
  let a1 = I8::reinterpret_from_byte(bytes[offset + 1]).extend_u()
  let a2 = I8::reinterpret_from_byte(bytes[offset + 2]).extend_u()
  let a3 = I8::reinterpret_from_byte(bytes[offset + 3]).extend_u()
  let a4 = I8::reinterpret_from_byte(bytes[offset + 4]).extend_u()
  let a5 = I8::reinterpret_from_byte(bytes[offset + 5]).extend_u()
  let a6 = I8::reinterpret_from_byte(bytes[offset + 6]).extend_u()
  let a7 = I8::reinterpret_from_byte(bytes[offset + 7]).extend_u()
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn V128::load16x4_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset).extend_s()
  let a1 = bytes.load_i16_le(offset + 1).extend_s()
  let a2 = bytes.load_i16_le(offset + 2).extend_s()
  let a3 = bytes.load_i16_le(offset + 3).extend_s()
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn V128::load16x4_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset).extend_u()
  let a1 = bytes.load_i16_le(offset + 1).extend_u()
  let a2 = bytes.load_i16_le(offset + 2).extend_u()
  let a3 = bytes.load_i16_le(offset + 3).extend_u()
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn V128::load32x2_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset).extend_s()
  let a1 = bytes.load_i32_le(offset + 1).extend_s()
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn V128::load32x2_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset).extend_u()
  let a1 = bytes.load_i32_le(offset + 1).extend_u()
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn V128::load8_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = I8::reinterpret_from_byte(bytes[offset])
  I8x16::to(
    I8x16(a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0),
  )
}

///|
pub fn V128::load16_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset)
  I16x8::to(I16x8(a0, a0, a0, a0, a0, a0, a0, a0))
}

///|
pub fn V128::load32_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  I32x4::to(I32x4(a0, a0, a0, a0))
}

///|
pub fn V128::load64_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  I64x2::to(I64x2(a0, a0))
}

///|
pub fn V128::load32_zero(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  I32x4::to(I32x4(a0, 0, 0, 0))
}

///|
pub fn V128::load64_zero(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  I64x2::to(I64x2(a0, 0))
}

///|
pub fn V128::load8_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = I8::reinterpret_from_byte(bytes[offset])
  I8x16::replace(x, laneid, a0.to_int())
}

///|
pub fn V128::load16_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i16_le(offset)
  I16x8::replace(x, laneid, a0.to_int())
}

///|
pub fn V128::load32_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  I32x4::replace(x, laneid, a0)
}

///|
pub fn V128::load64_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  I64x2::replace(x, laneid, a0)
}
