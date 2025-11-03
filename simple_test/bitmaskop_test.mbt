///|
// Simple tests for bitmaskop.mbt functions


test "I8x16::bitmask" {
  let v = I8x16::const_((-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1, (-1 : Int).to_byte(), 1)
  let result = I8x16::bitmask(v)
  assert_eq(result, 0b0101010101010101)
}

test "I8x16::bitmask_all_neg" {
  let v = I8x16::const_((-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte(), (-1 : Int).to_byte())
  let result = I8x16::bitmask(v)
  assert_eq(result, 0xFFFF)
}

test "I16x8::bitmask" {
  let v = I16x8::const_((-1 : Int16).reinterpret_as_uint16(), 1, (-1 : Int16).reinterpret_as_uint16(), 1, (-1 : Int16).reinterpret_as_uint16(), 1, (-1 : Int16).reinterpret_as_uint16(), 1)
  let result = I16x8::bitmask(v)
  assert_eq(result, 0b01010101)
}

test "I32x4::bitmask" {
  let v = I32x4::const_((-1 : Int).reinterpret_as_uint(), 1, (-1 : Int).reinterpret_as_uint(), 1)
  let result = I32x4::bitmask(v)
  assert_eq(result, 0b0101)
}

test "I64x2::bitmask" {
  let v = I64x2::const_((-1L : Int64).reinterpret_as_uint64(), 1UL)
  let result = I64x2::bitmask(v)
  assert_eq(result, 0b01)
}
