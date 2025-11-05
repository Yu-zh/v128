///|
#intrinsic("simd")
pub fn I8x16::swizzle(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I8x16::shuffle(
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
#intrinsic("simd")
pub fn I8x16::narrow_i16x8_s(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I8x16::narrow_i16x8_u(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I8x16::add(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add)
}

///|
#intrinsic("simd")
pub fn I8x16::add_sat_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add_sat_s)
}

///|
#intrinsic("simd")
pub fn I8x16::add_sat_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::add_sat_u)
}

///|
#intrinsic("simd")
pub fn I8x16::sub(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub)
}

///|
#intrinsic("simd")
pub fn I8x16::sub_sat_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub_sat_s)
}

///|
#intrinsic("simd")
pub fn I8x16::sub_sat_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::sub_sat_u)
}

///|
#intrinsic("simd")
pub fn I8x16::min_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::min_s)
}

///|
#intrinsic("simd")
pub fn I8x16::min_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::min_u)
}

///|
#intrinsic("simd")
pub fn I8x16::max_s(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::max_s)
}

///|
#intrinsic("simd")
pub fn I8x16::max_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::max_u)
}

///|
#intrinsic("simd")
pub fn I8x16::avgr_u(v1 : V128, v2 : V128) -> V128 {
  I8x16::binop(v1, v2, Byte::avgr_u)
}

///|
#intrinsic("simd")
pub fn I8x16::relaxed_swizzle(v1 : V128, v2 : V128) -> V128 {
  I8x16::swizzle(v1, v2)
}

///|
#intrinsic("simd")
pub fn I16x8::narrow_i32x4_s(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I16x8::narrow_i32x4_u(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I16x8::add(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add)
}

///|
#intrinsic("simd")
pub fn I16x8::add_sat_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add_sat_s)
}

///|
#intrinsic("simd")
pub fn I16x8::add_sat_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::add_sat_u)
}

///|
#intrinsic("simd")
pub fn I16x8::sub(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub)
}

///|
#intrinsic("simd")
pub fn I16x8::sub_sat_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub_sat_s)
}

///|
#intrinsic("simd")
pub fn I16x8::sub_sat_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::sub_sat_u)
}

///|
#intrinsic("simd")
pub fn I16x8::mul(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::mul)
}

///|
#intrinsic("simd")
pub fn I16x8::min_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::min_s)
}

///|
#intrinsic("simd")
pub fn I16x8::min_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::min_u)
}

///|
#intrinsic("simd")
pub fn I16x8::max_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::max_s)
}

///|
#intrinsic("simd")
pub fn I16x8::max_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::max_u)
}

///|
#intrinsic("simd")
pub fn I16x8::avgr_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::binop(v1, v2, UInt16::avgr_u)
}

///|
#intrinsic("simd")
pub fn I16x8::extmul_low_i8x16_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::mul(I16x8::extend_low_i8x16_s(v1), I16x8::extend_low_i8x16_s(v2))
}

///|
#intrinsic("simd")
pub fn I16x8::extmul_high_i8x16_s(v1 : V128, v2 : V128) -> V128 {
  I16x8::mul(I16x8::extend_high_i8x16_s(v1), I16x8::extend_high_i8x16_s(v2))
}

///|
#intrinsic("simd")
pub fn I16x8::extmul_low_i8x16_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::mul(I16x8::extend_low_i8x16_u(v1), I16x8::extend_low_i8x16_u(v2))
}

///|
#intrinsic("simd")
pub fn I16x8::extmul_high_i8x16_u(v1 : V128, v2 : V128) -> V128 {
  I16x8::mul(I16x8::extend_high_i8x16_u(v1), I16x8::extend_high_i8x16_u(v2))
}
// | I16x8 Q15MulRSatS -> V128.I16x8.q15mulr_sat_s
// | I16x8 RelaxedQ15MulRS -> V128.I16x8.q15mulr_sat_s

///|
#intrinsic("simd")
pub fn I16x8::relaxed_dot_s_i8x16(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I32x4::add(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::add)
}

///|
#intrinsic("simd")
pub fn I32x4::sub(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::sub)
}

///|
#intrinsic("simd")
pub fn I32x4::min_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::min_s)
}

///|
#intrinsic("simd")
pub fn I32x4::min_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::min_u)
}

///|
#intrinsic("simd")
pub fn I32x4::max_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::max_s)
}

///|
#intrinsic("simd")
pub fn I32x4::max_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::max_u)
}

///|
#intrinsic("simd")
pub fn I32x4::mul(v1 : V128, v2 : V128) -> V128 {
  I32x4::binop(v1, v2, UInt::mul)
}

///|
#intrinsic("simd")
pub fn I32x4::extmul_low_i16x8_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::mul(I32x4::extend_low_i16x8_s(v1), I32x4::extend_low_i16x8_s(v2))
}

///|
#intrinsic("simd")
pub fn I32x4::extmul_high_i16x8_s(v1 : V128, v2 : V128) -> V128 {
  I32x4::mul(I32x4::extend_high_i16x8_s(v1), I32x4::extend_high_i16x8_s(v2))
}

///|
#intrinsic("simd")
pub fn I32x4::extmul_low_i16x8_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::mul(I32x4::extend_low_i16x8_u(v1), I32x4::extend_low_i16x8_u(v2))
}

///|
#intrinsic("simd")
pub fn I32x4::extmul_high_i16x8_u(v1 : V128, v2 : V128) -> V128 {
  I32x4::mul(I32x4::extend_high_i16x8_u(v1), I32x4::extend_high_i16x8_u(v2))
}

///|
#intrinsic("simd")
pub fn I64x2::add(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 + b0, a1 + b1))
}

///|
#intrinsic("simd")
pub fn I64x2::sub(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 - b0, a1 - b1))
}

///|
#intrinsic("simd")
pub fn I64x2::mul(v1 : V128, v2 : V128) -> V128 {
  let I64x2(a0, a1) = I64x2::from(v1)
  let I64x2(b0, b1) = I64x2::from(v2)
  I64x2::to(I64x2(a0 * b0, a1 * b1))
}

///|
#intrinsic("simd")
pub fn I32x4::relaxed_dot_add_s_i16x8(v1 : V128, v2 : V128) -> V128 {
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
#intrinsic("simd")
pub fn I64x2::extmul_low_i32x4_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::mul(I64x2::extend_low_i32x4_s(v1), I64x2::extend_low_i32x4_s(v2))
}

///|
#intrinsic("simd")
pub fn I64x2::extmul_high_i32x4_s(v1 : V128, v2 : V128) -> V128 {
  I64x2::mul(I64x2::extend_high_i32x4_s(v1), I64x2::extend_high_i32x4_s(v2))
}

///|
#intrinsic("simd")
pub fn I64x2::extmul_low_i32x4_u(v1 : V128, v2 : V128) -> V128 {
  I64x2::mul(I64x2::extend_low_i32x4_u(v1), I64x2::extend_low_i32x4_u(v2))
}

///|
#intrinsic("simd")
pub fn I64x2::extmul_high_i32x4_u(v1 : V128, v2 : V128) -> V128 {
  I64x2::mul(I64x2::extend_high_i32x4_u(v1), I64x2::extend_high_i32x4_u(v2))
}

///|
fn F32x4::binop(v1 : V128, v2 : V128, op : (Float, Float) -> Float) -> V128 {
  let F32x4(a0, a1, a2, a3) = F32x4::from(v1)
  let F32x4(b0, b1, b2, b3) = F32x4::from(v2)
  F32x4::to(F32x4(op(a0, b0), op(a1, b1), op(a2, b2), op(a3, b3)))
}

///|
#intrinsic("simd")
pub fn F32x4::add(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::add)
}

///|
#intrinsic("simd")
pub fn F32x4::sub(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::sub)
}

///|
#intrinsic("simd")
pub fn F32x4::mul(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::mul)
}

///|
#intrinsic("simd")
pub fn F32x4::div(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::div)
}

///|
#intrinsic("simd")
pub fn F32x4::min(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::min)
}

///|
#intrinsic("simd")
pub fn F32x4::max(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::max)
}

///|
#intrinsic("simd")
pub fn F32x4::pmin(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::pmin)
}

///|
#intrinsic("simd")
pub fn F32x4::pmax(v1 : V128, v2 : V128) -> V128 {
  F32x4::binop(v1, v2, Float::pmax)
}

///|
#intrinsic("simd")
pub fn F32x4::relaxed_min(v1 : V128, v2 : V128) -> V128 {
  F32x4::min(v1, v2)
}

///|
#intrinsic("simd")
pub fn F32x4::relaxed_max(v1 : V128, v2 : V128) -> V128 {
  F32x4::max(v1, v2)
}

///|
fn F64x2::binop(v1 : V128, v2 : V128, op : (Double, Double) -> Double) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v1)
  let F64x2(b0, b1) = F64x2::from(v2)
  F64x2::to(F64x2(op(a0, b0), op(a1, b1)))
}

///|
#intrinsic("simd")
pub fn F64x2::add(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::add)
}

///|
#intrinsic("simd")
pub fn F64x2::sub(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::sub)
}

///|
#intrinsic("simd")
pub fn F64x2::mul(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::mul)
}

///|
#intrinsic("simd")
pub fn F64x2::div(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::div)
}

///|
#intrinsic("simd")
pub fn F64x2::min(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::min)
}

///|
#intrinsic("simd")
pub fn F64x2::max(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::max)
}

///|
#intrinsic("simd")
pub fn F64x2::pmin(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::pmin)
}

///|
#intrinsic("simd")
pub fn F64x2::pmax(v1 : V128, v2 : V128) -> V128 {
  F64x2::binop(v1, v2, Double::pmax)
}

///|
#intrinsic("simd")
pub fn F64x2::relaxed_min(v1 : V128, v2 : V128) -> V128 {
  F64x2::min(v1, v2)
}

///|
#intrinsic("simd")
pub fn F64x2::relaxed_max(v1 : V128, v2 : V128) -> V128 {
  F64x2::max(v1, v2)
}
