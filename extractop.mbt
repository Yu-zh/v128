///|
pub fn I8x16::extract_s(v : V128, laneid : Int) -> UInt {
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
pub fn I8x16::extract_u(v : V128, laneid : Int) -> UInt {
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
pub fn I16x8::extract_s(v : V128, laneid : Int) -> UInt {
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
pub fn I16x8::extract_u(v : V128, laneid : Int) -> UInt {
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
pub fn I32x4::extract(v : V128, laneid : Int) -> UInt {
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
pub fn I64x2::extract(v : V128, laneid : Int) -> UInt64 {
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
pub fn F32x4::extract(v : V128, laneid : Int) -> Float {
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
pub fn F64x2::extract(v : V128, laneid : Int) -> Double {
  let F64x2(a0, a1) = F64x2::from(v)
  if laneid == 0 {
    a0
  } else if laneid == 1 {
    a1
  } else {
    0.0
  }
}
