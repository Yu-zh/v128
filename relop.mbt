///|
pub fn I8x16::relop(v1 : V128, v2 : V128, op : (Byte, Byte) -> Bool) -> V128 {
  let i8_from_bool = b => if b { (0xFF : Byte) } else { 0 }
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
  ) = I8x16::from(v1)
  let I8x16(
    b0,
    b1,
    b2,
    b3,
    b4,
    b5,
    b6,
    b7,
    b8,
    b9,
    b10,
    b11,
    b12,
    b13,
    b14,
    b15
  ) = I8x16::from(v2)
  I8x16::to(
    I8x16(
      i8_from_bool(op(a0, b0)),
      i8_from_bool(op(a1, b1)),
      i8_from_bool(op(a2, b2)),
      i8_from_bool(op(a3, b3)),
      i8_from_bool(op(a4, b4)),
      i8_from_bool(op(a5, b5)),
      i8_from_bool(op(a6, b6)),
      i8_from_bool(op(a7, b7)),
      i8_from_bool(op(a8, b8)),
      i8_from_bool(op(a9, b9)),
      i8_from_bool(op(a10, b10)),
      i8_from_bool(op(a11, b11)),
      i8_from_bool(op(a12, b12)),
      i8_from_bool(op(a13, b13)),
      i8_from_bool(op(a14, b14)),
      i8_from_bool(op(a15, b15)),
    ),
  )
}

///|
pub fn I8x16::eq(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::equal)
}

///|
pub fn I8x16::ne(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::ne)
}

///|
pub fn I8x16::lt_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::lt_s)
}

///|
pub fn I8x16::lt_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::lt_u)
}

///|
pub fn I8x16::le_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::le_s)
}

///|
pub fn I8x16::le_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::le_u)
}

///|
pub fn I8x16::gt_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::gt_s)
}

///|
pub fn I8x16::gt_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::gt_u)
}

///|
pub fn I8x16::ge_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::ge_s)
}

///|
pub fn I8x16::ge_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::ge_u)
}

///|
fn I16x8::relop(v1 : V128, v2 : V128, op : (UInt16, UInt16) -> Bool) -> V128 {
  let i16_from_bool = b => if b { (0xFFFF : UInt16) } else { 0 }
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v1)
  let I16x8(b0, b1, b2, b3, b4, b5, b6, b7) = I16x8::from(v2)
  I16x8::to(
    I16x8(
      i16_from_bool(op(a0, b0)),
      i16_from_bool(op(a1, b1)),
      i16_from_bool(op(a2, b2)),
      i16_from_bool(op(a3, b3)),
      i16_from_bool(op(a4, b4)),
      i16_from_bool(op(a5, b5)),
      i16_from_bool(op(a6, b6)),
      i16_from_bool(op(a7, b7)),
    ),
  )
}

///|
pub fn I16x8::eq(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::equal)
}

///|
pub fn I16x8::ne(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::ne)
}

///|
pub fn I16x8::lt_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::lt_s)
}

///|
pub fn I16x8::lt_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::lt_u)
}

///|
pub fn I16x8::le_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::le_s)
}

///|
pub fn I16x8::le_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::le_u)
}

///|
pub fn I16x8::gt_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::gt_s)
}

///|
pub fn I16x8::gt_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::gt_u)
}

///|
pub fn I16x8::ge_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::ge_s)
}

///|
pub fn I16x8::ge_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::ge_u)
}

///|
fn I32x4::relop(v1 : V128, v2 : V128, op : (UInt, UInt) -> Bool) -> V128 {
  let i32_from_bool = b => if b { (0xFFFFFFFF : UInt) } else { 0 }
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(
    I32x4(
      i32_from_bool(op(a0, b0)),
      i32_from_bool(op(a1, b1)),
      i32_from_bool(op(a2, b2)),
      i32_from_bool(op(a3, b3)),
    ),
  )
}

///|
pub fn I32x4::eq(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::equal)
}

///|
pub fn I32x4::ne(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::ne)
}

///|
pub fn I32x4::lt_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::lt_s)
}

///|
pub fn I32x4::lt_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::lt_u)
}

///|
pub fn I32x4::le_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::le_s)
}

///|
pub fn I32x4::le_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::le_u)
}

///|
pub fn I32x4::gt_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::gt_s)
}

///|
pub fn I32x4::gt_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::gt_u)
}

///|
pub fn I32x4::ge_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::ge_s)
}

///|
pub fn I32x4::ge_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::ge_u)
}

///|
fn I64x2::relop(v1 : V128, v2 : V128, op : (UInt64, UInt64) -> Bool) -> V128 {
  let i64_from_bool = b => if b { (0xFFFFFFFFFFFFFFFF : UInt64) } else { 0 }
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(i64_from_bool(op(a0, b0)), i64_from_bool(op(a1, b1))))
}

///|
pub fn I64x2::eq(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn I64x2::ne(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn I64x2::lt_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn I64x2::le_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn I64x2::gt_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn I64x2::ge_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a >= b)
}

///|
fn F32x4::relop(v1 : V128, v2 : V128, op : (Float, Float) -> Bool) -> V128 {
  let f32_from_bool = b => if b {
    (-1 : Int).reinterpret_as_float()
  } else {
    (0).reinterpret_as_float()
  }
  let F32x4(a0, a1, a2, a3) = F32x4::from(v1)
  let F32x4(b0, b1, b2, b3) = F32x4::from(v2)
  F32x4::to(
    F32x4(
      f32_from_bool(op(a0, b0)),
      f32_from_bool(op(a1, b1)),
      f32_from_bool(op(a2, b2)),
      f32_from_bool(op(a3, b3)),
    ),
  )
}

///|
pub fn F32x4::eq(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn F32x4::ne(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn F32x4::lt(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn F32x4::le(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn F32x4::gt(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn F32x4::ge(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a >= b)
}

///|
pub fn F64x2::relop(
  v1 : V128,
  v2 : V128,
  op : (Double, Double) -> Bool,
) -> V128 {
  let f64_from_bool = b => if b {
    (-1 : Int64).reinterpret_as_double()
  } else {
    0
  }
  let F64x2(a0, a1) = F64x2::from(v1)
  let F64x2(b0, b1) = F64x2::from(v2)
  F64x2::to(F64x2(f64_from_bool(op(a0, b0)), f64_from_bool(op(a1, b1))))
}

///|
pub fn F64x2::eq(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn F64x2::ne(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn F64x2::lt(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn F64x2::le(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn F64x2::gt(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn F64x2::ge(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a >= b)
}
