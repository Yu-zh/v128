// ============================
// binop
// ============================

///|
pub fn i8x16_swizzle(v1 : V128, v2 : V128) -> V128 {
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
  fn select(b : Byte) -> Byte {
    let b = b.to_int()
    if b == 0 {
      a0
    } else if b == 1 {
      a1
    } else if b == 2 {
      a2
    } else if b == 3 {
      a3
    } else if b == 4 {
      a4
    } else if b == 5 {
      a5
    } else if b == 6 {
      a6
    } else if b == 7 {
      a7
    } else if b == 8 {
      a8
    } else if b == 9 {
      a9
    } else if b == 10 {
      a10
    } else if b == 11 {
      a11
    } else if b == 12 {
      a12
    } else if b == 13 {
      a13
    } else if b == 14 {
      a14
    } else if b == 15 {
      a15
    } else {
      0
    }
  }

  I8x16::to(
    I8x16(
      select(b0),
      select(b1),
      select(b2),
      select(b3),
      select(b4),
      select(b5),
      select(b6),
      select(b7),
      select(b8),
      select(b9),
      select(b10),
      select(b11),
      select(b12),
      select(b13),
      select(b14),
      select(b15),
    ),
  )
}

///|
// for this, we need attribute to guarantee that i0 to i15 must be integer literal
// and this function must not be used as first-class function
pub fn i8x16_shuffle(
  v1 : V128,
  v2 : V128,
  i0 : Int,
  i1 : Int,
  i2 : Int,
  i3 : Int,
  i4 : Int,
  i5 : Int,
  i6 : Int,
  i7 : Int,
  i8 : Int,
  i9 : Int,
  i10 : Int,
  i11 : Int,
  i12 : Int,
  i13 : Int,
  i14 : Int,
  i15 : Int,
) -> V128 {
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
  fn select(i : Int) -> Byte {
    if i == 0 {
      a0
    } else if i == 1 {
      a1
    } else if i == 2 {
      a2
    } else if i == 3 {
      a3
    } else if i == 4 {
      a4
    } else if i == 5 {
      a5
    } else if i == 6 {
      a6
    } else if i == 7 {
      a7
    } else if i == 8 {
      a8
    } else if i == 9 {
      a9
    } else if i == 10 {
      a10
    } else if i == 11 {
      a11
    } else if i == 12 {
      a12
    } else if i == 13 {
      a13
    } else if i == 14 {
      a14
    } else if i == 15 {
      a15
    } else if i == 16 {
      b0
    } else if i == 17 {
      b1
    } else if i == 18 {
      b2
    } else if i == 19 {
      b3
    } else if i == 20 {
      b4
    } else if i == 21 {
      b5
    } else if i == 22 {
      b6
    } else if i == 23 {
      b7
    } else if i == 24 {
      b8
    } else if i == 25 {
      b9
    } else if i == 26 {
      b10
    } else if i == 27 {
      b11
    } else if i == 28 {
      b12
    } else if i == 29 {
      b13
    } else if i == 30 {
      b14
    } else if i == 31 {
      b15
    } else {
      abort("I8x16::shuffle: invalid index")
    }
  }

  I8x16::to(
    I8x16(
      select(i0),
      select(i1),
      select(i2),
      select(i3),
      select(i4),
      select(i5),
      select(i6),
      select(i7),
      select(i8),
      select(i9),
      select(i10),
      select(i11),
      select(i12),
      select(i13),
      select(i14),
      select(i15),
    ),
  )
}

///|
pub fn i8x16_narrow_i16x8_s(v1 : V128, v2 : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v1)
  let I16x8(b0, b1, b2, b3, b4, b5, b6, b7) = I16x8::from(v2)
  I8x16::to(
    I8x16(
      UInt16::narrow_sat_i16_s(a0),
      UInt16::narrow_sat_i16_s(a1),
      UInt16::narrow_sat_i16_s(a2),
      UInt16::narrow_sat_i16_s(a3),
      UInt16::narrow_sat_i16_s(a4),
      UInt16::narrow_sat_i16_s(a5),
      UInt16::narrow_sat_i16_s(a6),
      UInt16::narrow_sat_i16_s(a7),
      UInt16::narrow_sat_i16_s(b0),
      UInt16::narrow_sat_i16_s(b1),
      UInt16::narrow_sat_i16_s(b2),
      UInt16::narrow_sat_i16_s(b3),
      UInt16::narrow_sat_i16_s(b4),
      UInt16::narrow_sat_i16_s(b5),
      UInt16::narrow_sat_i16_s(b6),
      UInt16::narrow_sat_i16_s(b7),
    ),
  )
}

///|
pub fn i8x16_narrow_i16x8_u(v1 : V128, v2 : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v1)
  let I16x8(b0, b1, b2, b3, b4, b5, b6, b7) = I16x8::from(v2)
  I8x16::to(
    I8x16(
      UInt16::narrow_sat_i16_u(a0),
      UInt16::narrow_sat_i16_u(a1),
      UInt16::narrow_sat_i16_u(a2),
      UInt16::narrow_sat_i16_u(a3),
      UInt16::narrow_sat_i16_u(a4),
      UInt16::narrow_sat_i16_u(a5),
      UInt16::narrow_sat_i16_u(a6),
      UInt16::narrow_sat_i16_u(a7),
      UInt16::narrow_sat_i16_u(b0),
      UInt16::narrow_sat_i16_u(b1),
      UInt16::narrow_sat_i16_u(b2),
      UInt16::narrow_sat_i16_u(b3),
      UInt16::narrow_sat_i16_u(b4),
      UInt16::narrow_sat_i16_u(b5),
      UInt16::narrow_sat_i16_u(b6),
      UInt16::narrow_sat_i16_u(b7),
    ),
  )
}

///|
fn I8x16::binop(v1 : V128, v2 : V128, op : (Byte, Byte) -> Byte) -> V128 {
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
      op(a0, b0),
      op(a1, b1),
      op(a2, b2),
      op(a3, b3),
      op(a4, b4),
      op(a5, b5),
      op(a6, b6),
      op(a7, b7),
      op(a8, b8),
      op(a9, b9),
      op(a10, b10),
      op(a11, b11),
      op(a12, b12),
      op(a13, b13),
      op(a14, b14),
      op(a15, b15),
    ),
  )
}

///|
pub fn i8x16_add(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add)
}

///|
pub fn i8x16_add_sat_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add_sat_s)
}

///|
pub fn i8x16_add_sat_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add_sat_u)
}

///|
pub fn i8x16_sub(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub)
}

///|
pub fn i8x16_sub_sat_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub_sat_s)
}

///|
pub fn i8x16_sub_sat_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub_sat_u)
}

///|
pub fn i8x16_min_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::min_s)
}

///|
pub fn i8x16_min_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::min_u)
}

///|
pub fn i8x16_max_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::max_s)
}

///|
pub fn i8x16_max_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::max_u)
}

///|
pub fn i8x16_avgr_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::avgr_u)
}

///|
pub fn i8x16_relaxed_swizzle(v1 : V128, v2 : V128) -> V128 {
  i8x16_swizzle(v1, v2)
}

///|
pub fn i16x8_narrow_i32x4_s(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I16x8::to(
    I16x8(
      UInt::narrow_sat_i32_s(a0),
      UInt::narrow_sat_i32_s(a1),
      UInt::narrow_sat_i32_s(a2),
      UInt::narrow_sat_i32_s(a3),
      UInt::narrow_sat_i32_s(b0),
      UInt::narrow_sat_i32_s(b1),
      UInt::narrow_sat_i32_s(b2),
      UInt::narrow_sat_i32_s(b3),
    ),
  )
}

///|
pub fn i16x8_narrow_i32x4_u(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I16x8::to(
    I16x8(
      UInt::narrow_sat_i32_u(a0),
      UInt::narrow_sat_i32_u(a1),
      UInt::narrow_sat_i32_u(a2),
      UInt::narrow_sat_i32_u(a3),
      UInt::narrow_sat_i32_u(b0),
      UInt::narrow_sat_i32_u(b1),
      UInt::narrow_sat_i32_u(b2),
      UInt::narrow_sat_i32_u(b3),
    ),
  )
}

///|
fn I16x8::binop(v1 : V128, v2 : V128, op : (UInt16, UInt16) -> UInt16) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v1)
  let I16x8(b0, b1, b2, b3, b4, b5, b6, b7) = I16x8::from(v2)
  I16x8::to(
    I16x8(
      op(a0, b0),
      op(a1, b1),
      op(a2, b2),
      op(a3, b3),
      op(a4, b4),
      op(a5, b5),
      op(a6, b6),
      op(a7, b7),
    ),
  )
}

///|
pub fn i16x8_add(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add)
}

///|
pub fn i16x8_add_sat_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add_sat_s)
}

///|
pub fn i16x8_add_sat_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add_sat_u)
}

///|
pub fn i16x8_sub(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub)
}

///|
pub fn i16x8_sub_sat_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub_sat_s)
}

///|
pub fn i16x8_sub_sat_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub_sat_u)
}

///|
pub fn i16x8_mul(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::mul)
}

///|
pub fn i16x8_min_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::min_s)
}

///|
pub fn i16x8_min_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::min_u)
}

///|
pub fn i16x8_max_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::max_s)
}

///|
pub fn i16x8_max_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::max_u)
}

///|
pub fn i16x8_avgr_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::avgr_u)
}

///|
pub fn i16x8_extmul_low_i8x16_s(v1 : V128, v2 : V128) -> V128 {
  i16x8_mul(i16x8_extend_low_i8x16_s(v1), i16x8_extend_low_i8x16_s(v2))
}

///|
pub fn i16x8_extmul_high_i8x16_s(v1 : V128, v2 : V128) -> V128 {
  i16x8_mul(i16x8_extend_high_i8x16_s(v1), i16x8_extend_high_i8x16_s(v2))
}

///|
pub fn i16x8_extmul_low_i8x16_u(v1 : V128, v2 : V128) -> V128 {
  i16x8_mul(i16x8_extend_low_i8x16_u(v1), i16x8_extend_low_i8x16_u(v2))
}

///|
pub fn i16x8_extmul_high_i8x16_u(v1 : V128, v2 : V128) -> V128 {
  i16x8_mul(i16x8_extend_high_i8x16_u(v1), i16x8_extend_high_i8x16_u(v2))
}

// | I16x8 Q15MulRSatS -> V128.I16x8.q15mulr_sat_s
// | I16x8 RelaxedQ15MulRS -> V128.I16x8.q15mulr_sat_s

///|
pub fn i16x8_relaxed_dot_s_i8x16(v1 : V128, v2 : V128) -> V128 {
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
  I16x8::to(
    I16x8(
      a0.extend_s() * b0.extend_s() + a1.extend_s() * b1.extend_s(),
      a2.extend_s() * b2.extend_s() + a3.extend_s() * b3.extend_s(),
      a4.extend_s() * b4.extend_s() + a5.extend_s() * b5.extend_s(),
      a6.extend_s() * b6.extend_s() + a7.extend_s() * b7.extend_s(),
      a8.extend_s() * b8.extend_s() + a9.extend_s() * b9.extend_s(),
      a10.extend_s() * b10.extend_s() + a11.extend_s() * b11.extend_s(),
      a12.extend_s() * b12.extend_s() + a13.extend_s() * b13.extend_s(),
      a14.extend_s() * b14.extend_s() + a15.extend_s() * b15.extend_s(),
    ),
  )
}

///|
fn I32x4::binop(v1 : V128, v2 : V128, op : (UInt, UInt) -> UInt) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(op(a0, b0), op(a1, b1), op(a2, b2), op(a3, b3)))
}

///|
pub fn i32x4_add(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::add)
}

///|
pub fn i32x4_sub(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::sub)
}

///|
pub fn i32x4_min_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::min_s)
}

///|
pub fn i32x4_min_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::min_u)
}

///|
pub fn i32x4_max_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::max_s)
}

///|
pub fn i32x4_max_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::max_u)
}

///|
pub fn i32x4_mul(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::mul)
}

///|
pub fn i32x4_extmul_low_i16x8_s(v1 : V128, v2 : V128) -> V128 {
  i32x4_mul(i32x4_extend_low_i16x8_s(v1), i32x4_extend_low_i16x8_s(v2))
}

///|
pub fn i32x4_extmul_high_i16x8_s(v1 : V128, v2 : V128) -> V128 {
  i32x4_mul(i32x4_extend_high_i16x8_s(v1), i32x4_extend_high_i16x8_s(v2))
}

///|
pub fn i32x4_extmul_low_i16x8_u(v1 : V128, v2 : V128) -> V128 {
  i32x4_mul(i32x4_extend_low_i16x8_u(v1), i32x4_extend_low_i16x8_u(v2))
}

///|
pub fn i32x4_extmul_high_i16x8_u(v1 : V128, v2 : V128) -> V128 {
  i32x4_mul(i32x4_extend_high_i16x8_u(v1), i32x4_extend_high_i16x8_u(v2))
}

///|
pub fn i64x2_add(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 + b0, a1 + b1))
}

///|
pub fn i64x2_sub(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 - b0, a1 - b1))
}

///|
pub fn i64x2_mul(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 * b0, a1 * b1))
}

///|
pub fn i32x4_relaxed_dot_add_s_i16x8(v1 : V128, v2 : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v1)
  let I16x8(b0, b1, b2, b3, b4, b5, b6, b7) = I16x8::from(v2)
  I32x4::to(
    I32x4(
      a0.extend_s() * b0.extend_s() + a1.extend_s() * b1.extend_s(),
      a2.extend_s() * b2.extend_s() + a3.extend_s() * b3.extend_s(),
      a4.extend_s() * b4.extend_s() + a5.extend_s() * b5.extend_s(),
      a6.extend_s() * b6.extend_s() + a7.extend_s() * b7.extend_s(),
    ),
  )
}

///|
pub fn i64x2_extmul_low_i32x4_s(v1 : V128, v2 : V128) -> V128 {
  i64x2_mul(i64x2_extend_low_i32x4_s(v1), i64x2_extend_low_i32x4_s(v2))
}

///|
pub fn i64x2_extmul_high_i32x4_s(v1 : V128, v2 : V128) -> V128 {
  i64x2_mul(i64x2_extend_high_i32x4_s(v1), i64x2_extend_high_i32x4_s(v2))
}

///|
pub fn i64x2_extmul_low_i32x4_u(v1 : V128, v2 : V128) -> V128 {
  i64x2_mul(i64x2_extend_low_i32x4_u(v1), i64x2_extend_low_i32x4_u(v2))
}

///|
pub fn i64x2_extmul_high_i32x4_u(v1 : V128, v2 : V128) -> V128 {
  i64x2_mul(i64x2_extend_high_i32x4_u(v1), i64x2_extend_high_i32x4_u(v2))
}

///|
fn F32x4::binop(v1 : V128, v2 : V128, op : (Float, Float) -> Float) -> V128 {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v1)
  let F32x4(b0, b1, b2, b3) = F32x4::from(v2)
  F32x4::to(F32x4(op(a0, b0), op(a1, b1), op(a2, b2), op(a3, b3)))
}

///|
pub fn f32x4_add(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::add)
}

///|
pub fn f32x4_sub(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::sub)
}

///|
pub fn f32x4_mul(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::mul)
}

///|
pub fn f32x4_div(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::div)
}

///|
pub fn f32x4_min(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::min)
}

///|
pub fn f32x4_max(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::max)
}

///|
pub fn f32x4_pmin(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::pmin)
}

///|
pub fn f32x4_pmax(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::pmax)
}

///|
pub fn f32x4_relaxed_min(v1 : V128, v2 : V128) -> V128 {
  f32x4_min(v1, v2)
}

///|
pub fn f32x4_relaxed_max(v1 : V128, v2 : V128) -> V128 {
  f32x4_max(v1, v2)
}

///|
fn F64x2::binop(v1 : V128, v2 : V128, op : (Double, Double) -> Double) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v1)
  let F64x2(b0, b1) = F64x2::from(v2)
  F64x2::to(F64x2(op(a0, b0), op(a1, b1)))
}

///|
pub fn f64x2_add(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::add)
}

///|
pub fn f64x2_sub(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::sub)
}

///|
pub fn f64x2_mul(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::mul)
}

///|
pub fn f64x2_div(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::div)
}

///|
pub fn f64x2_min(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::min)
}

///|
pub fn f64x2_max(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::max)
}

///|
pub fn f64x2_pmin(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::pmin)
}

///|
pub fn f64x2_pmax(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::pmax)
}

///|
pub fn f64x2_relaxed_min(v1 : V128, v2 : V128) -> V128 {
  f64x2_min(v1, v2)
}

///|
pub fn f64x2_relaxed_max(v1 : V128, v2 : V128) -> V128 {
  f64x2_max(v1, v2)
}

// ============================
// bitmaskop
// ============================

///|
pub fn i8x16_bitmask(v : V128) -> Int {
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
  ((if (a0 & 0x80) > 0 { 1 } else { 0 }) << 0) |
  ((if (a1 & 0x80) > 0 { 1 } else { 0 }) << 1) |
  ((if (a2 & 0x80) > 0 { 1 } else { 0 }) << 2) |
  ((if (a3 & 0x80) > 0 { 1 } else { 0 }) << 3) |
  ((if (a4 & 0x80) > 0 { 1 } else { 0 }) << 4) |
  ((if (a5 & 0x80) > 0 { 1 } else { 0 }) << 5) |
  ((if (a6 & 0x80) > 0 { 1 } else { 0 }) << 6) |
  ((if (a7 & 0x80) > 0 { 1 } else { 0 }) << 7) |
  ((if (a8 & 0x80) > 0 { 1 } else { 0 }) << 8) |
  ((if (a9 & 0x80) > 0 { 1 } else { 0 }) << 9) |
  ((if (a10 & 0x80) > 0 { 1 } else { 0 }) << 10) |
  ((if (a11 & 0x80) > 0 { 1 } else { 0 }) << 11) |
  ((if (a12 & 0x80) > 0 { 1 } else { 0 }) << 12) |
  ((if (a13 & 0x80) > 0 { 1 } else { 0 }) << 13) |
  ((if (a14 & 0x80) > 0 { 1 } else { 0 }) << 14) |
  ((if (a15 & 0x80) > 0 { 1 } else { 0 }) << 15)
}

///|
pub fn i16x8_bitmask(v : V128) -> Int {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  ((if (a0 & 0x8000) > 0 { 1 } else { 0 }) << 0) |
  ((if (a1 & 0x8000) > 0 { 1 } else { 0 }) << 1) |
  ((if (a2 & 0x8000) > 0 { 1 } else { 0 }) << 2) |
  ((if (a3 & 0x8000) > 0 { 1 } else { 0 }) << 3) |
  ((if (a4 & 0x8000) > 0 { 1 } else { 0 }) << 4) |
  ((if (a5 & 0x8000) > 0 { 1 } else { 0 }) << 5) |
  ((if (a6 & 0x8000) > 0 { 1 } else { 0 }) << 6) |
  ((if (a7 & 0x8000) > 0 { 1 } else { 0 }) << 7)
}

///|
pub fn i32x4_bitmask(v : V128) -> Int {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  ((if (a0 & 0x80000000) > 0 { 1 } else { 0 }) << 0) |
  ((if (a1 & 0x80000000) > 0 { 1 } else { 0 }) << 1) |
  ((if (a2 & 0x80000000) > 0 { 1 } else { 0 }) << 2) |
  ((if (a3 & 0x80000000) > 0 { 1 } else { 0 }) << 3)
}

///|
pub fn i64x2_bitmask(v : V128) -> Int {
  let I64x2(a0, a1) = I64x2::from(v)
  ((if (a0 & 0x8000000000000000) > 0 { 1 } else { 0 }) << 0) |
  ((if (a1 & 0x8000000000000000) > 0 { 1 } else { 0 }) << 1)
}

// ============================
// constop
// ============================

///|
pub fn i8x16_const_(
  a0 : Byte,
  a1 : Byte,
  a2 : Byte,
  a3 : Byte,
  a4 : Byte,
  a5 : Byte,
  a6 : Byte,
  a7 : Byte,
  a8 : Byte,
  a9 : Byte,
  a10 : Byte,
  a11 : Byte,
  a12 : Byte,
  a13 : Byte,
  a14 : Byte,
  a15 : Byte,
) -> V128 {
  I8x16::to(
    I8x16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15),
  )
}

///|
pub fn i16x8_const_(
  a0 : UInt16,
  a1 : UInt16,
  a2 : UInt16,
  a3 : UInt16,
  a4 : UInt16,
  a5 : UInt16,
  a6 : UInt16,
  a7 : UInt16,
) -> V128 {
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn i32x4_const_(a0 : UInt, a1 : UInt, a2 : UInt, a3 : UInt) -> V128 {
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn i64x2_const_(a0 : UInt64, a1 : UInt64) -> V128 {
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn f32x4_const_(a0 : Float, a1 : Float, a2 : Float, a3 : Float) -> V128 {
  F32x4::to(F32x4(a0, a1, a2, a3))
}

///|
pub fn f64x2_const_(a0 : Double, a1 : Double) -> V128 {
  F64x2::to(F64x2(a0, a1))
}

// ============================
// cvtop
// ============================

///|
pub fn i16x8_extend_low_i8x16_s(v : V128) -> V128 {
  let I8x16(
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    _a8,
    _a9,
    _a10,
    _a11,
    _a12,
    _a13,
    _a14,
    _a15
  ) = I8x16::from(v)
  I16x8::to(
    I16x8(
      a0.extend_s(),
      a1.extend_s(),
      a2.extend_s(),
      a3.extend_s(),
      a4.extend_s(),
      a5.extend_s(),
      a6.extend_s(),
      a7.extend_s(),
    ),
  )
}

///|
pub fn i16x8_extend_high_i8x16_s(v : V128) -> V128 {
  let I8x16(
    _a0,
    _a1,
    _a2,
    _a3,
    _a4,
    _a5,
    _a6,
    _a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15
  ) = I8x16::from(v)
  I16x8::to(
    I16x8(
      a8.extend_s(),
      a9.extend_s(),
      a10.extend_s(),
      a11.extend_s(),
      a12.extend_s(),
      a13.extend_s(),
      a14.extend_s(),
      a15.extend_s(),
    ),
  )
}

///|
pub fn i16x8_extend_low_i8x16_u(v : V128) -> V128 {
  let I8x16(
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    _a8,
    _a9,
    _a10,
    _a11,
    _a12,
    _a13,
    _a14,
    _a15
  ) = I8x16::from(v)
  I16x8::to(
    I16x8(
      a0.extend_u(),
      a1.extend_u(),
      a2.extend_u(),
      a3.extend_u(),
      a4.extend_u(),
      a5.extend_u(),
      a6.extend_u(),
      a7.extend_u(),
    ),
  )
}

///|
pub fn i16x8_extend_high_i8x16_u(v : V128) -> V128 {
  let I8x16(
    _a0,
    _a1,
    _a2,
    _a3,
    _a4,
    _a5,
    _a6,
    _a7,
    a8,
    a9,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15
  ) = I8x16::from(v)
  I16x8::to(
    I16x8(
      a8.extend_u(),
      a9.extend_u(),
      a10.extend_u(),
      a11.extend_u(),
      a12.extend_u(),
      a13.extend_u(),
      a14.extend_u(),
      a15.extend_u(),
    ),
  )
}

///|
pub fn i16x8_extadd_pairwise_i8x16_s(v : V128) -> V128 {
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
  I16x8::to(
    I16x8(
      a0.extend_s() + a1.extend_s(),
      a2.extend_s() + a3.extend_s(),
      a4.extend_s() + a5.extend_s(),
      a6.extend_s() + a7.extend_s(),
      a8.extend_s() + a9.extend_s(),
      a10.extend_s() + a11.extend_s(),
      a12.extend_s() + a13.extend_s(),
      a14.extend_s() + a15.extend_s(),
    ),
  )
}

///|
pub fn i16x8_extadd_pairwise_i8x16_u(v : V128) -> V128 {
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
  I16x8::to(
    I16x8(
      a0.extend_u() + a1.extend_u(),
      a2.extend_u() + a3.extend_u(),
      a4.extend_u() + a5.extend_u(),
      a6.extend_u() + a7.extend_u(),
      a8.extend_u() + a9.extend_u(),
      a10.extend_u() + a11.extend_u(),
      a12.extend_u() + a13.extend_u(),
      a14.extend_u() + a15.extend_u(),
    ),
  )
}

///|
pub fn i32x4_extend_low_i16x8_s(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, _a4, _a5, _a6, _a7) = I16x8::from(v)
  I32x4::to(I32x4(a0.extend_s(), a1.extend_s(), a2.extend_s(), a3.extend_s()))
}

///|
pub fn i32x4_extend_high_i16x8_s(v : V128) -> V128 {
  let I16x8(_a0, _a1, _a2, _a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(I32x4(a4.extend_s(), a5.extend_s(), a6.extend_s(), a7.extend_s()))
}

///|
pub fn i32x4_extend_low_i16x8_u(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, _a4, _a5, _a6, _a7) = I16x8::from(v)
  I32x4::to(I32x4(a0.extend_u(), a1.extend_u(), a2.extend_u(), a3.extend_u()))
}

///|
pub fn i32x4_extend_high_i16x8_u(v : V128) -> V128 {
  let I16x8(_a0, _a1, _a2, _a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(I32x4(a4.extend_u(), a5.extend_u(), a6.extend_u(), a7.extend_u()))
}

///|
pub fn i32x4_trunc_sat_f32x4_s(v : V128) -> V128 {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v)
  I32x4::to(
    I32x4(
      a0.trunc_sat_s(),
      a1.trunc_sat_s(),
      a2.trunc_sat_s(),
      a3.trunc_sat_s(),
    ),
  )
}

///|
pub fn i32x4_trunc_sat_f32x4_u(v : V128) -> V128 {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v)
  I32x4::to(
    I32x4(
      a0.trunc_sat_u(),
      a1.trunc_sat_u(),
      a2.trunc_sat_u(),
      a3.trunc_sat_u(),
    ),
  )
}

///|
pub fn i32x4_trunc_sat_f64x2_s_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  I32x4::to(I32x4(a0.trunc_sat_s(), a1.trunc_sat_s(), 0, 0))
}

///|
pub fn i32x4_trunc_sat_f64x2_u_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  I32x4::to(I32x4(a0.trunc_sat_u(), a1.trunc_sat_u(), 0, 0))
}

///|
pub fn i32x4_relaxed_trunc_f32x4_s(v : V128) -> V128 {
  i32x4_trunc_sat_f32x4_s(v)
}

///|
pub fn i32x4_relaxed_trunc_f32x4_u(v : V128) -> V128 {
  i32x4_trunc_sat_f32x4_u(v)
}

///|
pub fn i32x4_relaxed_trunc_f64x2_s_zero(v : V128) -> V128 {
  i32x4_trunc_sat_f64x2_s_zero(v)
}

///|
pub fn i32x4_relaxed_trunc_f64x2_u_zero(v : V128) -> V128 {
  i32x4_trunc_sat_f64x2_u_zero(v)
}

///|
pub fn i32x4_extadd_pairwise_i16x8_s(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      a0.extend_s() + a1.extend_s(),
      a2.extend_s() + a3.extend_s(),
      a4.extend_s() + a5.extend_s(),
      a6.extend_s() + a7.extend_s(),
    ),
  )
}

///|
pub fn i32x4_extadd_pairwise_i16x8_u(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      a0.extend_u() + a1.extend_u(),
      a2.extend_u() + a3.extend_u(),
      a4.extend_u() + a5.extend_u(),
      a6.extend_u() + a7.extend_u(),
    ),
  )
}

///|
pub fn i64x2_extend_low_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  I64x2::to(I64x2(a0.extend_s(), a1.extend_s()))
}

///|
pub fn i64x2_extend_high_i32x4_s(v : V128) -> V128 {
  let I32x4(_a0, _a1, a2, a3) = I32x4::from(v)
  I64x2::to(I64x2(a2.extend_s(), a3.extend_s()))
}

///|
pub fn i64x2_extend_low_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  I64x2::to(I64x2(a0.extend_u(), a1.extend_u()))
}

///|
pub fn i64x2_extend_high_i32x4_u(v : V128) -> V128 {
  let I32x4(_a0, _a1, a2, a3) = I32x4::from(v)
  I64x2::to(I64x2(a2.extend_u(), a3.extend_u()))
}

///|
pub fn f32x4_convert_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  F32x4::to(F32x4(a0.to_float(), a1.to_float(), a2.to_float(), a3.to_float()))
}

///|
pub fn f32x4_convert_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  F32x4::to(F32x4(a0.to_float(), a1.to_float(), a2.to_float(), a3.to_float()))
}

///|
pub fn f32x4_demote_f64x2_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  F32x4::to(F32x4(a0.to_float(), a1.to_float(), 0, 0))
}

///|
pub fn f64x2_promote_low_f32x4(v : V128) -> V128 {
  let F32x4(a0, a1, _a2, _a3) = F32x4::from(v)
  F64x2::to(F64x2(a0.to_double(), a1.to_double()))
}

///|
pub fn f64x2_convert_low_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  F64x2::to(F64x2(a0.to_double(), a1.to_double()))
}

///|
pub fn f64x2_convert_low_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  F64x2::to(F64x2(a0.to_double(), a1.to_double()))
}

// ============================
// extractop
// ============================

///|
pub fn i8x16_extract_lane_s(v : V128, laneid : Int) -> UInt {
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
  if laneid == 0 {
    a0.to_uint()
  } else if laneid == 1 {
    a1.to_uint()
  } else if laneid == 2 {
    a2.to_uint()
  } else if laneid == 3 {
    a3.to_uint()
  } else if laneid == 4 {
    a4.to_uint()
  } else if laneid == 5 {
    a5.to_uint()
  } else if laneid == 6 {
    a6.to_uint()
  } else if laneid == 7 {
    a7.to_uint()
  } else if laneid == 8 {
    a8.to_uint()
  } else if laneid == 9 {
    a9.to_uint()
  } else if laneid == 10 {
    a10.to_uint()
  } else if laneid == 11 {
    a11.to_uint()
  } else if laneid == 12 {
    a12.to_uint()
  } else if laneid == 13 {
    a13.to_uint()
  } else if laneid == 14 {
    a14.to_uint()
  } else if laneid == 15 {
    a15.to_uint()
  } else {
    0
  }
}

///|
pub fn i8x16_extract_lane_u(v : V128, laneid : Int) -> UInt {
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
  if laneid == 0 {
    a0.to_uint()
  } else if laneid == 1 {
    a1.to_uint()
  } else if laneid == 2 {
    a2.to_uint()
  } else if laneid == 3 {
    a3.to_uint()
  } else if laneid == 4 {
    a4.to_uint()
  } else if laneid == 5 {
    a5.to_uint()
  } else if laneid == 6 {
    a6.to_uint()
  } else if laneid == 7 {
    a7.to_uint()
  } else if laneid == 8 {
    a8.to_uint()
  } else if laneid == 9 {
    a9.to_uint()
  } else if laneid == 10 {
    a10.to_uint()
  } else if laneid == 11 {
    a11.to_uint()
  } else if laneid == 12 {
    a12.to_uint()
  } else if laneid == 13 {
    a13.to_uint()
  } else if laneid == 14 {
    a14.to_uint()
  } else if laneid == 15 {
    a15.to_uint()
  } else {
    0
  }
}

///|
pub fn i16x8_extract_lane_s(v : V128, laneid : Int) -> UInt {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  if laneid == 0 {
    a0.extend_s()
  } else if laneid == 1 {
    a1.extend_s()
  } else if laneid == 2 {
    a2.extend_s()
  } else if laneid == 3 {
    a3.extend_s()
  } else if laneid == 4 {
    a4.extend_s()
  } else if laneid == 5 {
    a5.extend_s()
  } else if laneid == 6 {
    a6.extend_s()
  } else if laneid == 7 {
    a7.extend_s()
  } else {
    0
  }
}

///|
pub fn i16x8_extract_lane_u(v : V128, laneid : Int) -> UInt {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  if laneid == 0 {
    a0.to_uint()
  } else if laneid == 1 {
    a1.to_uint()
  } else if laneid == 2 {
    a2.to_uint()
  } else if laneid == 3 {
    a3.to_uint()
  } else if laneid == 4 {
    a4.to_uint()
  } else if laneid == 5 {
    a5.to_uint()
  } else if laneid == 6 {
    a6.to_uint()
  } else if laneid == 7 {
    a7.to_uint()
  } else {
    0
  }
}

///|
pub fn i32x4_extract_lane(v : V128, laneid : Int) -> UInt {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  if laneid == 0 {
    a0
  } else if laneid == 1 {
    a1
  } else if laneid == 2 {
    a2
  } else if laneid == 3 {
    a3
  } else {
    0
  }
}

///|
pub fn i64x2_extract_lane(v : V128, laneid : Int) -> UInt64 {
  let I64x2(a0, a1) = I64x2::from(v)
  if laneid == 0 {
    a0
  } else if laneid == 1 {
    a1
  } else {
    0
  }
}

///|
pub fn f32x4_extract_lane(v : V128, laneid : Int) -> Float {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v)
  if laneid == 0 {
    a0
  } else if laneid == 1 {
    a1
  } else if laneid == 2 {
    a2
  } else if laneid == 3 {
    a3
  } else {
    0.0
  }
}

///|
pub fn f64x2_extract_lane(v : V128, laneid : Int) -> Double {
  let F64x2(a0, a1) = F64x2::from(v)
  if laneid == 0 {
    a0
  } else if laneid == 1 {
    a1
  } else {
    0.0
  }
}

// ============================
// loadop
// ============================

///|
fn FixedArray::load_i16_le(bytes : FixedArray[Byte], offset : Int) -> UInt16 {
  let a0 = bytes[offset].to_uint16()
  let a1 = bytes[offset + 1].to_uint16()
  a0 | (a1 << 8)
}

///|
fn FixedArray::load_i32_le(bytes : FixedArray[Byte], offset : Int) -> UInt {
  let a0 = bytes[offset].to_uint()
  let a1 = bytes[offset + 1].to_uint()
  let a2 = bytes[offset + 2].to_uint()
  let a3 = bytes[offset + 3].to_uint()
  a0 | (a1 << 8) | (a2 << 16) | (a3 << 24)
}

///|
fn FixedArray::load_i64_le(bytes : FixedArray[Byte], offset : Int) -> UInt64 {
  let a0 = bytes[offset].to_uint64()
  let a1 = bytes[offset + 1].to_uint64()
  let a2 = bytes[offset + 2].to_uint64()
  let a3 = bytes[offset + 3].to_uint64()
  let a4 = bytes[offset + 4].to_uint64()
  let a5 = bytes[offset + 5].to_uint64()
  let a6 = bytes[offset + 6].to_uint64()
  let a7 = bytes[offset + 7].to_uint64()
  a0 |
  (a1 << 8) |
  (a2 << 16) |
  (a3 << 24) |
  (a4 << 32) |
  (a5 << 40) |
  (a6 << 48) |
  (a7 << 56)
}

///|
pub fn v128_load(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes[offset]
  let a1 = bytes[offset + 1]
  let a2 = bytes[offset + 2]
  let a3 = bytes[offset + 3]
  let a4 = bytes[offset + 4]
  let a5 = bytes[offset + 5]
  let a6 = bytes[offset + 6]
  let a7 = bytes[offset + 7]
  let a8 = bytes[offset + 8]
  let a9 = bytes[offset + 9]
  let a10 = bytes[offset + 10]
  let a11 = bytes[offset + 11]
  let a12 = bytes[offset + 12]
  let a13 = bytes[offset + 13]
  let a14 = bytes[offset + 14]
  let a15 = bytes[offset + 15]
  I8x16::to(
    I8x16(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15),
  )
}

///|
pub fn v128_load8x8_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes[offset].extend_s()
  let a1 = bytes[offset + 1].extend_s()
  let a2 = bytes[offset + 2].extend_s()
  let a3 = bytes[offset + 3].extend_s()
  let a4 = bytes[offset + 4].extend_s()
  let a5 = bytes[offset + 5].extend_s()
  let a6 = bytes[offset + 6].extend_s()
  let a7 = bytes[offset + 7].extend_s()
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn v128_load8x8_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes[offset].extend_u()
  let a1 = bytes[offset + 1].extend_u()
  let a2 = bytes[offset + 2].extend_u()
  let a3 = bytes[offset + 3].extend_u()
  let a4 = bytes[offset + 4].extend_u()
  let a5 = bytes[offset + 5].extend_u()
  let a6 = bytes[offset + 6].extend_u()
  let a7 = bytes[offset + 7].extend_u()
  I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, a7))
}

///|
pub fn v128_load16x4_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset).extend_s()
  let a1 = bytes.load_i16_le(offset + 1).extend_s()
  let a2 = bytes.load_i16_le(offset + 2).extend_s()
  let a3 = bytes.load_i16_le(offset + 3).extend_s()
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn v128_load16x4_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset).extend_u()
  let a1 = bytes.load_i16_le(offset + 1).extend_u()
  let a2 = bytes.load_i16_le(offset + 2).extend_u()
  let a3 = bytes.load_i16_le(offset + 3).extend_u()
  I32x4::to(I32x4(a0, a1, a2, a3))
}

///|
pub fn v128_load32x2_s(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset).extend_s()
  let a1 = bytes.load_i32_le(offset + 1).extend_s()
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn v128_load32x2_u(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset).extend_u()
  let a1 = bytes.load_i32_le(offset + 1).extend_u()
  I64x2::to(I64x2(a0, a1))
}

///|
pub fn v128_load8_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes[offset]
  I8x16::to(
    I8x16(a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0, a0),
  )
}

///|
pub fn v128_load16_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i16_le(offset)
  I16x8::to(I16x8(a0, a0, a0, a0, a0, a0, a0, a0))
}

///|
pub fn v128_load32_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  I32x4::to(I32x4(a0, a0, a0, a0))
}

///|
pub fn v128_load64_splat(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  I64x2::to(I64x2(a0, a0))
}

///|
pub fn v128_load32_zero(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  I32x4::to(I32x4(a0, 0, 0, 0))
}

///|
pub fn v128_load64_zero(bytes : FixedArray[Byte], offset : Int) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  I64x2::to(I64x2(a0, 0))
}

///|
pub fn v128_load8_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes[offset].to_uint()
  i8x16_replace_lane(x, laneid, a0)
}

///|
pub fn v128_load16_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i16_le(offset).to_uint()
  i16x8_replace_lane(x, laneid, a0)
}

///|
pub fn v128_load32_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i32_le(offset)
  i32x4_replace_lane(x, laneid, a0)
}

///|
pub fn v128_load64_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 {
  let a0 = bytes.load_i64_le(offset)
  i64x2_replace_lane(x, laneid, a0)
}

// ============================
// relop
// ============================

///|
fn I8x16::relop(v1 : V128, v2 : V128, op : (Byte, Byte) -> Bool) -> V128 {
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
pub fn i8x16_eq(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::equal)
}

///|
pub fn i8x16_ne(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::ne)
}

///|
pub fn i8x16_lt_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::lt_s)
}

///|
pub fn i8x16_lt_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::lt_u)
}

///|
pub fn i8x16_le_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::le_s)
}

///|
pub fn i8x16_le_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::le_u)
}

///|
pub fn i8x16_gt_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::gt_s)
}

///|
pub fn i8x16_gt_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::gt_u)
}

///|
pub fn i8x16_ge_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::relop(v1, v2, Byte::ge_s)
}

///|
pub fn i8x16_ge_u(v1 : V128, v2 : V128) -> V128 {
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
pub fn i16x8_eq(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::equal)
}

///|
pub fn i16x8_ne(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::ne)
}

///|
pub fn i16x8_lt_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::lt_s)
}

///|
pub fn i16x8_lt_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::lt_u)
}

///|
pub fn i16x8_le_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::le_s)
}

///|
pub fn i16x8_le_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::le_u)
}

///|
pub fn i16x8_gt_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::gt_s)
}

///|
pub fn i16x8_gt_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::gt_u)
}

///|
pub fn i16x8_ge_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::relop(v1, v2, UInt16::ge_s)
}

///|
pub fn i16x8_ge_u(v1 : V128, v2 : V128) -> V128 {
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
pub fn i32x4_eq(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::equal)
}

///|
pub fn i32x4_ne(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::ne)
}

///|
pub fn i32x4_lt_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::lt_s)
}

///|
pub fn i32x4_lt_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::lt_u)
}

///|
pub fn i32x4_le_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::le_s)
}

///|
pub fn i32x4_le_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::le_u)
}

///|
pub fn i32x4_gt_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::gt_s)
}

///|
pub fn i32x4_gt_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::gt_u)
}

///|
pub fn i32x4_ge_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::relop(v1, v2, UInt::ge_s)
}

///|
pub fn i32x4_ge_u(v1 : V128, v2 : V128) -> V128 {
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
pub fn i64x2_eq(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn i64x2_ne(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn i64x2_lt_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn i64x2_le_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn i64x2_gt_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn i64x2_ge_s(v1 : V128, v2 : V128) -> V128 {
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
pub fn f32x4_eq(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn f32x4_ne(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn f32x4_lt(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn f32x4_le(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn f32x4_gt(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn f32x4_ge(v1 : V128, v2 : V128) -> V128 {
  F32x4::relop(v1, v2, (a, b) => a >= b)
}

///|
fn F64x2::relop(v1 : V128, v2 : V128, op : (Double, Double) -> Bool) -> V128 {
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
pub fn f64x2_eq(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a == b)
}

///|
pub fn f64x2_ne(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a != b)
}

///|
pub fn f64x2_lt(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a < b)
}

///|
pub fn f64x2_le(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a <= b)
}

///|
pub fn f64x2_gt(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a > b)
}

///|
pub fn f64x2_ge(v1 : V128, v2 : V128) -> V128 {
  F64x2::relop(v1, v2, (a, b) => a >= b)
}

// ============================
// replaceop
// ============================

///|
pub fn i8x16_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 {
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
  let value = value.to_byte()
  if laneid == 0 {
    I8x16::to(
      I8x16(
        value, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 1 {
    I8x16::to(
      I8x16(
        a0, value, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 2 {
    I8x16::to(
      I8x16(
        a0, a1, value, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 3 {
    I8x16::to(
      I8x16(
        a0, a1, a2, value, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 4 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, value, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 5 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, value, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 6 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, value, a7, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 7 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, value, a8, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 8 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, value, a9, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 9 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, value, a10, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 10 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, value, a11, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 11 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, value, a12, a13, a14, a15,
      ),
    )
  } else if laneid == 12 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, value, a13, a14, a15,
      ),
    )
  } else if laneid == 13 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, value, a14, a15,
      ),
    )
  } else if laneid == 14 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, value, a15,
      ),
    )
  } else if laneid == 15 {
    I8x16::to(
      I8x16(
        a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, value,
      ),
    )
  } else {
    v
  }
}

///|
pub fn i16x8_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  let value = value.to_uint16()
  if laneid == 0 {
    I16x8::to(I16x8(value, a1, a2, a3, a4, a5, a6, a7))
  } else if laneid == 1 {
    I16x8::to(I16x8(a0, value, a2, a3, a4, a5, a6, a7))
  } else if laneid == 2 {
    I16x8::to(I16x8(a0, a1, value, a3, a4, a5, a6, a7))
  } else if laneid == 3 {
    I16x8::to(I16x8(a0, a1, a2, value, a4, a5, a6, a7))
  } else if laneid == 4 {
    I16x8::to(I16x8(a0, a1, a2, a3, value, a5, a6, a7))
  } else if laneid == 5 {
    I16x8::to(I16x8(a0, a1, a2, a3, a4, value, a6, a7))
  } else if laneid == 6 {
    I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, value, a7))
  } else if laneid == 7 {
    I16x8::to(I16x8(a0, a1, a2, a3, a4, a5, a6, value))
  } else {
    v
  }
}

///|
pub fn i32x4_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  if laneid == 0 {
    I32x4::to(I32x4(value, a1, a2, a3))
  } else if laneid == 1 {
    I32x4::to(I32x4(a0, value, a2, a3))
  } else if laneid == 2 {
    I32x4::to(I32x4(a0, a1, value, a3))
  } else if laneid == 3 {
    I32x4::to(I32x4(a0, a1, a2, value))
  } else {
    v
  }
}

///|
pub fn i64x2_replace_lane(v : V128, laneid : Int, value : UInt64) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  if laneid == 0 {
    I64x2::to(I64x2(value, a1))
  } else if laneid == 1 {
    I64x2::to(I64x2(a0, value))
  } else {
    v
  }
}

///|
pub fn f32x4_replace_lane(v : V128, laneid : Int, value : Float) -> V128 {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v)
  if laneid == 0 {
    F32x4::to(F32x4(value, a1, a2, a3))
  } else if laneid == 1 {
    F32x4::to(F32x4(a0, value, a2, a3))
  } else if laneid == 2 {
    F32x4::to(F32x4(a0, a1, value, a3))
  } else if laneid == 3 {
    F32x4::to(F32x4(a0, a1, a2, value))
  } else {
    v
  }
}

///|
pub fn f64x2_replace_lane(v : V128, laneid : Int, value : Double) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  if laneid == 0 {
    F64x2::to(F64x2(value, a1))
  } else if laneid == 1 {
    F64x2::to(F64x2(a0, value))
  } else {
    v
  }
}

// ============================
// shiftop
// ============================

///|
pub fn i8x16_shl(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0 << shift,
      a1 << shift,
      a2 << shift,
      a3 << shift,
      a4 << shift,
      a5 << shift,
      a6 << shift,
      a7 << shift,
      a8 << shift,
      a9 << shift,
      a10 << shift,
      a11 << shift,
      a12 << shift,
      a13 << shift,
      a14 << shift,
      a15 << shift,
    ),
  )
}

///|
pub fn i8x16_shr_u(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0 >> shift,
      a1 >> shift,
      a2 >> shift,
      a3 >> shift,
      a4 >> shift,
      a5 >> shift,
      a6 >> shift,
      a7 >> shift,
      a8 >> shift,
      a9 >> shift,
      a10 >> shift,
      a11 >> shift,
      a12 >> shift,
      a13 >> shift,
      a14 >> shift,
      a15 >> shift,
    ),
  )
}

///|
pub fn i8x16_shr_s(v : V128, shift : Int) -> V128 {
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
  I8x16::to(
    I8x16(
      a0.shr_s(shift),
      a1.shr_s(shift),
      a2.shr_s(shift),
      a3.shr_s(shift),
      a4.shr_s(shift),
      a5.shr_s(shift),
      a6.shr_s(shift),
      a7.shr_s(shift),
      a8.shr_s(shift),
      a9.shr_s(shift),
      a10.shr_s(shift),
      a11.shr_s(shift),
      a12.shr_s(shift),
      a13.shr_s(shift),
      a14.shr_s(shift),
      a15.shr_s(shift),
    ),
  )
}

///|
pub fn i16x8_shl(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0 << shift,
      a1 << shift,
      a2 << shift,
      a3 << shift,
      a4 << shift,
      a5 << shift,
      a6 << shift,
      a7 << shift,
    ),
  )
}

///|
pub fn i16x8_shr_u(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0 >> shift,
      a1 >> shift,
      a2 >> shift,
      a3 >> shift,
      a4 >> shift,
      a5 >> shift,
      a6 >> shift,
      a7 >> shift,
    ),
  )
}

///|
pub fn i16x8_shr_s(v : V128, shift : Int) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a0.shr_s(shift),
      a1.shr_s(shift),
      a2.shr_s(shift),
      a3.shr_s(shift),
      a4.shr_s(shift),
      a5.shr_s(shift),
      a6.shr_s(shift),
      a7.shr_s(shift),
    ),
  )
}

///|
pub fn i32x4_shl(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0 << shift, a1 << shift, a2 << shift, a3 << shift))
}

///|
pub fn i32x4_shr_u(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0 >> shift, a1 >> shift, a2 >> shift, a3 >> shift))
}

///|
pub fn i32x4_shr_s(v : V128, shift : Int) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(
    I32x4(a0.shr_s(shift), a1.shr_s(shift), a2.shr_s(shift), a3.shr_s(shift)),
  )
}

///|
pub fn i64x2_shl(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0 << shift, a1 << shift))
}

///|
pub fn i64x2_shr_u(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0 >> shift, a1 >> shift))
}

///|
pub fn i64x2_shr_s(v : V128, shift : Int) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v)
  I64x2::to(I64x2(a0.shr_s(shift), a1.shr_s(shift)))
}

// ============================
// splatop
// ============================

///|
pub fn i8x16_splat(v : Byte) -> V128 {
  I8x16::to(I8x16(v, v, v, v, v, v, v, v, v, v, v, v, v, v, v, v))
}

///|
pub fn i16x8_splat(v : UInt16) -> V128 {
  I16x8::to(I16x8(v, v, v, v, v, v, v, v))
}

///|
pub fn i32x4_splat(v : UInt) -> V128 {
  I32x4::to(I32x4(v, v, v, v))
}

///|
pub fn i64x2_splat(v : UInt64) -> V128 {
  I64x2::to(I64x2(v, v))
}

///|
pub fn f32x4_splat(v : Float) -> V128 {
  F32x4::to(F32x4(v, v, v, v))
}

///|
pub fn f64x2_splat(v : Double) -> V128 {
  F64x2::to(F64x2(v, v))
}

// ============================
// storeop
// ============================

///|
fn FixedArray::store_i16_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : UInt16,
) -> Unit {
  bytes[offset] = value.to_byte()
  bytes[offset + 1] = (value >> 8).to_byte()
}

///|
fn FixedArray::store_i32_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : UInt,
) -> Unit {
  bytes[offset] = value.to_byte()
  bytes[offset + 1] = (value >> 8).to_byte()
  bytes[offset + 2] = (value >> 16).to_byte()
  bytes[offset + 3] = (value >> 24).to_byte()
}

///|
fn FixedArray::store_i64_le(
  bytes : FixedArray[Byte],
  offset : Int,
  value : UInt64,
) -> Unit {
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
pub fn v128_store(bytes : FixedArray[Byte], offset : Int, value : V128) -> Unit {
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
  bytes[offset] = a0
  bytes[offset + 1] = a1
  bytes[offset + 2] = a2
  bytes[offset + 3] = a3
  bytes[offset + 4] = a4
  bytes[offset + 5] = a5
  bytes[offset + 6] = a6
  bytes[offset + 7] = a7
  bytes[offset + 8] = a8
  bytes[offset + 9] = a9
  bytes[offset + 10] = a10
  bytes[offset + 11] = a11
  bytes[offset + 12] = a12
  bytes[offset + 13] = a13
  bytes[offset + 14] = a14
  bytes[offset + 15] = a15
}

///|
pub fn v128_store8_lane(
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
    bytes[offset] = a0
  } else if laneid == 1 {
    bytes[offset] = a1
  } else if laneid == 2 {
    bytes[offset] = a2
  } else if laneid == 3 {
    bytes[offset] = a3
  } else if laneid == 4 {
    bytes[offset] = a4
  } else if laneid == 5 {
    bytes[offset] = a5
  } else if laneid == 6 {
    bytes[offset] = a6
  } else if laneid == 7 {
    bytes[offset] = a7
  } else if laneid == 8 {
    bytes[offset] = a8
  } else if laneid == 9 {
    bytes[offset] = a9
  } else if laneid == 10 {
    bytes[offset] = a10
  } else if laneid == 11 {
    bytes[offset] = a11
  } else if laneid == 12 {
    bytes[offset] = a12
  } else if laneid == 13 {
    bytes[offset] = a13
  } else if laneid == 14 {
    bytes[offset] = a14
  } else if laneid == 15 {
    bytes[offset] = a15
  }
}

///|
pub fn v128_store16_lane(
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
pub fn v128_store32_lane(
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
pub fn v128_store64_lane(
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

// ============================
// testop
// ============================

///|
pub fn i8x16_all_true(v : V128) -> Bool {
  let I8x16(
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
    a15,
    a16
  ) = I8x16::from(v)
  a1 != 0 &&
  a2 != 0 &&
  a3 != 0 &&
  a4 != 0 &&
  a5 != 0 &&
  a6 != 0 &&
  a7 != 0 &&
  a8 != 0 &&
  a9 != 0 &&
  a10 != 0 &&
  a11 != 0 &&
  a12 != 0 &&
  a13 != 0 &&
  a14 != 0 &&
  a15 != 0 &&
  a16 != 0
}

///|
pub fn i16x8_all_true(v : V128) -> Bool {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  a1 != 0 &&
  a2 != 0 &&
  a3 != 0 &&
  a4 != 0 &&
  a5 != 0 &&
  a6 != 0 &&
  a7 != 0 &&
  a8 != 0
}

///|
pub fn i32x4_all_true(v : V128) -> Bool {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  a1 != 0 && a2 != 0 && a3 != 0 && a4 != 0
}

///|
pub fn i64x2_all_true(v : V128) -> Bool {
  let I64x2(a1, a2) = I64x2::from(v)
  a1 != 0 && a2 != 0
}

// ============================
// unop
// ============================

///|
pub fn i8x16_neg(v : V128) -> V128 {
  let I8x16(
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
    a15,
    a16
  ) = I8x16::from(v)
  I8x16::to(
    I8x16(
      a1.neg(),
      a2.neg(),
      a3.neg(),
      a4.neg(),
      a5.neg(),
      a6.neg(),
      a7.neg(),
      a8.neg(),
      a9.neg(),
      a10.neg(),
      a11.neg(),
      a12.neg(),
      a13.neg(),
      a14.neg(),
      a15.neg(),
      a16.neg(),
    ),
  )
}

///|
pub fn i8x16_abs(v : V128) -> V128 {
  let I8x16(
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
    a15,
    a16
  ) = I8x16::from(v)
  I8x16::to(
    I8x16(
      a1.abs(),
      a2.abs(),
      a3.abs(),
      a4.abs(),
      a5.abs(),
      a6.abs(),
      a7.abs(),
      a8.abs(),
      a9.abs(),
      a10.abs(),
      a11.abs(),
      a12.abs(),
      a13.abs(),
      a14.abs(),
      a15.abs(),
      a16.abs(),
    ),
  )
}

///|
pub fn i8x16_popcnt(v : V128) -> V128 {
  let I8x16(
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
    a15,
    a16
  ) = I8x16::from(v)
  I8x16::to(
    I8x16(
      a1.popcnt().to_byte(),
      a2.popcnt().to_byte(),
      a3.popcnt().to_byte(),
      a4.popcnt().to_byte(),
      a5.popcnt().to_byte(),
      a6.popcnt().to_byte(),
      a7.popcnt().to_byte(),
      a8.popcnt().to_byte(),
      a9.popcnt().to_byte(),
      a10.popcnt().to_byte(),
      a11.popcnt().to_byte(),
      a12.popcnt().to_byte(),
      a13.popcnt().to_byte(),
      a14.popcnt().to_byte(),
      a15.popcnt().to_byte(),
      a16.popcnt().to_byte(),
    ),
  )
}

///|
pub fn i16x8_neg(v : V128) -> V128 {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a1.neg(),
      a2.neg(),
      a3.neg(),
      a4.neg(),
      a5.neg(),
      a6.neg(),
      a7.neg(),
      a8.neg(),
    ),
  )
}

///|
pub fn i16x8_abs(v : V128) -> V128 {
  let I16x8(a1, a2, a3, a4, a5, a6, a7, a8) = I16x8::from(v)
  I16x8::to(
    I16x8(
      a1.abs(),
      a2.abs(),
      a3.abs(),
      a4.abs(),
      a5.abs(),
      a6.abs(),
      a7.abs(),
      a8.abs(),
    ),
  )
}

///|
pub fn i32x4_abs(v : V128) -> V128 {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  I32x4::to(I32x4(a1.abs(), a2.abs(), a3.abs(), a4.abs()))
}

///|
pub fn i32x4_neg(v : V128) -> V128 {
  let I32x4(a1, a2, a3, a4) = I32x4::from(v)
  I32x4::to(I32x4(a1.neg(), a2.neg(), a3.neg(), a4.neg()))
}

///|
pub fn i64x2_abs(v : V128) -> V128 {
  let I64x2(a1, a2) = I64x2::from(v)
  I64x2::to(I64x2(a1.abs(), a2.abs()))
}

///|
pub fn i64x2_neg(v : V128) -> V128 {
  let I64x2(a1, a2) = I64x2::from(v)
  I64x2::to(I64x2(a1.neg(), a2.neg()))
}

///|
pub fn f32x4_abs(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.abs(), a2.abs(), a3.abs(), a4.abs()))
}

///|
pub fn f32x4_neg(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(-a1, -a2, -a3, -a4))
}

///|
pub fn f32x4_sqrt(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.sqrt(), a2.sqrt(), a3.sqrt(), a4.sqrt()))
}

///|
pub fn f32x4_ceil(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.ceil(), a2.ceil(), a3.ceil(), a4.ceil()))
}

///|
pub fn f32x4_floor(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.floor(), a2.floor(), a3.floor(), a4.floor()))
}

///|
pub fn f32x4_trunc(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.trunc(), a2.trunc(), a3.trunc(), a4.trunc()))
}

///|
pub fn f32x4_nearest(v : V128) -> V128 {
  let F32x4(a1, a2, a3, a4) = F32x4::from(v)
  F32x4::to(F32x4(a1.round(), a2.round(), a3.round(), a4.round()))
}

///|
pub fn f64x2_abs(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.abs(), a2.abs()))
}

///|
pub fn f64x2_neg(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(-a1, -a2))
}

///|
pub fn f64x2_sqrt(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.sqrt(), a2.sqrt()))
}

///|
pub fn f64x2_ceil(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.ceil(), a2.ceil()))
}

///|
pub fn f64x2_floor(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.floor(), a2.floor()))
}

///|
pub fn f64x2_trunc(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.trunc(), a2.trunc()))
}

///|
pub fn f64x2_nearest(v : V128) -> V128 {
  let F64x2(a1, a2) = F64x2::from(v)
  F64x2::to(F64x2(a1.round(), a2.round()))
}

// ============================
// vternop
// ============================

///|
pub fn v128_bitselect(v1 : V128, v2 : V128, mask : V128) -> V128 {
  v128_and_(v1, v128_or_(mask, v128_and_(v2, v128_not(mask))))
}

// ===========================
// vtestop
// ===========================

///|
pub fn v128_any_true(v : V128) -> Bool {
  let I64x2(a0, a1) = I64x2::from(v)
  a0 != 0 || a1 != 0
}

// ============================
// vunop
// ============================

///|
pub fn v128_not(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  I32x4::to(I32x4(a0.lnot(), a1.lnot(), a2.lnot(), a3.lnot()))
}

///|
pub fn v128_and_(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 & b0, a1 & b1, a2 & b2, a3 & b3))
}

///|
pub fn v128_or_(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 | b0, a1 | b1, a2 | b2, a3 | b3))
}

///|
pub fn v128_xor(v1 : V128, v2 : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v1)
  let I32x4(b0, b1, b2, b3) = I32x4::from(v2)
  I32x4::to(I32x4(a0 ^ b0, a1 ^ b1, a2 ^ b2, a3 ^ b3))
}

///|
pub fn v128_andnot(v1 : V128, v2 : V128) -> V128 {
  v128_and_(v1, v128_not(v2))
}
