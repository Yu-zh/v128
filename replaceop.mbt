///|
pub fn I8x16::replace(v : V128, laneid : Int, value : UInt) -> V128 {
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
pub fn I16x8::replace(v : V128, laneid : Int, value : UInt) -> V128 {
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
pub fn I32x4::replace(v : V128, laneid : Int, value : UInt) -> V128 {
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
pub fn I64x2::replace(v : V128, laneid : Int, value : UInt64) -> V128 {
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
pub fn F32x4::replace(v : V128, laneid : Int, value : Float) -> V128 {
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
pub fn F64x2::replace(v : V128, laneid : Int, value : Double) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  if laneid == 0 {
    F64x2::to(F64x2(value, a1))
  } else if laneid == 1 {
    F64x2::to(F64x2(a0, value))
  } else {
    v
  }
}
