///|
fn FixedArray::store_i16_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : Int16,
) -> Unit {
  let value = value.reinterpret_as_uint16()
  bytes[offset] = value.to_byte()
  bytes[offset + 1] = (value >> 8).to_byte()
}

///|
fn FixedArray::store_i32_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : Int,
) -> Unit {
  let value = value.reinterpret_as_uint()
  bytes[offset] = value.to_byte()
  bytes[offset + 1] = (value >> 8).to_byte()
  bytes[offset + 2] = (value >> 16).to_byte()
  bytes[offset + 3] = (value >> 24).to_byte()
}

///|
fn FixedArray::store_i64_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : Int64,
) -> Unit {
  let value = value.reinterpret_as_uint64()
  bytes[offset] = value.to_byte()
  bytes[offset + 1] = (value >> 8).to_byte()
  bytes[offset + 2] = (value >> 16).to_byte()
  bytes[offset + 3] = (value >> 24).to_byte()
  bytes[offset + 4] = (value >> 32).to_byte()
  bytes[offset + 5] = (value >> 40).to_byte()
  bytes[offset + 6] = (value >> 48).to_byte()
  bytes[offset + 7] = (value >> 56).to_byte()
}

///|
pub fn V128::store(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
) -> Unit {
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
  ) = I8x16::from(value)
  bytes[offset] = a0.reinterpret_as_byte()
  bytes[offset + 1] = a1.reinterpret_as_byte()
  bytes[offset + 2] = a2.reinterpret_as_byte()
  bytes[offset + 3] = a3.reinterpret_as_byte()
  bytes[offset + 4] = a4.reinterpret_as_byte()
  bytes[offset + 5] = a5.reinterpret_as_byte()
  bytes[offset + 6] = a6.reinterpret_as_byte()
  bytes[offset + 7] = a7.reinterpret_as_byte()
  bytes[offset + 8] = a8.reinterpret_as_byte()
  bytes[offset + 9] = a9.reinterpret_as_byte()
  bytes[offset + 10] = a10.reinterpret_as_byte()
  bytes[offset + 11] = a11.reinterpret_as_byte()
  bytes[offset + 12] = a12.reinterpret_as_byte()
  bytes[offset + 13] = a13.reinterpret_as_byte()
  bytes[offset + 14] = a14.reinterpret_as_byte()
  bytes[offset + 15] = a15.reinterpret_as_byte()
}

///|
pub fn V128::store8_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit {
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
  ) = I8x16::from(value)
  if laneid == 0 {
    bytes[offset] = a0.reinterpret_as_byte()
  } else if laneid == 1 {
    bytes[offset] = a1.reinterpret_as_byte()
  } else if laneid == 2 {
    bytes[offset] = a2.reinterpret_as_byte()
  } else if laneid == 3 {
    bytes[offset] = a3.reinterpret_as_byte()
  } else if laneid == 4 {
    bytes[offset] = a4.reinterpret_as_byte()
  } else if laneid == 5 {
    bytes[offset] = a5.reinterpret_as_byte()
  } else if laneid == 6 {
    bytes[offset] = a6.reinterpret_as_byte()
  } else if laneid == 7 {
    bytes[offset] = a7.reinterpret_as_byte()
  } else if laneid == 8 {
    bytes[offset] = a8.reinterpret_as_byte()
  } else if laneid == 9 {
    bytes[offset] = a9.reinterpret_as_byte()
  } else if laneid == 10 {
    bytes[offset] = a10.reinterpret_as_byte()
  } else if laneid == 11 {
    bytes[offset] = a11.reinterpret_as_byte()
  } else if laneid == 12 {
    bytes[offset] = a12.reinterpret_as_byte()
  } else if laneid == 13 {
    bytes[offset] = a13.reinterpret_as_byte()
  } else if laneid == 14 {
    bytes[offset] = a14.reinterpret_as_byte()
  } else if laneid == 15 {
    bytes[offset] = a15.reinterpret_as_byte()
  }
}

///|
pub fn V128::store16_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(value)
  if laneid == 0 {
    bytes.store_i16_le(offset, a0)
  } else if laneid == 1 {
    bytes.store_i16_le(offset, a1)
  } else if laneid == 2 {
    bytes.store_i16_le(offset, a2)
  } else if laneid == 3 {
    bytes.store_i16_le(offset, a3)
  } else if laneid == 4 {
    bytes.store_i16_le(offset, a4)
  } else if laneid == 5 {
    bytes.store_i16_le(offset, a5)
  } else if laneid == 6 {
    bytes.store_i16_le(offset, a6)
  } else if laneid == 7 {
    bytes.store_i16_le(offset, a7)
  }
}

///|
pub fn V128::store32_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit {
  let I32x4(a0, a1, a2, a3) = I32x4::from(value)
  if laneid == 0 {
    bytes.store_i32_le(offset, a0)
  } else if laneid == 1 {
    bytes.store_i32_le(offset, a1)
  } else if laneid == 2 {
    bytes.store_i32_le(offset, a2)
  } else if laneid == 3 {
    bytes.store_i32_le(offset, a3)
  }
}

///|
pub fn V128::store64_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit {
  let I64x2(a0, a1) = I64x2::from(value)
  if laneid == 0 {
    bytes.store_i64_le(offset, a0)
  } else if laneid == 1 {
    bytes.store_i64_le(offset, a1)
  }
}
