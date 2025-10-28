///|
pub fn I16x8::extend_low_i8x16_s(v : V128) -> V128 {
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
      I8::extend_s(a0),
      I8::extend_s(a1),
      I8::extend_s(a2),
      I8::extend_s(a3),
      I8::extend_s(a4),
      I8::extend_s(a5),
      I8::extend_s(a6),
      I8::extend_s(a7),
    ),
  )
}

///|
pub fn I16x8::extend_high_i8x16_s(v : V128) -> V128 {
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
      I8::extend_s(a8),
      I8::extend_s(a9),
      I8::extend_s(a10),
      I8::extend_s(a11),
      I8::extend_s(a12),
      I8::extend_s(a13),
      I8::extend_s(a14),
      I8::extend_s(a15),
    ),
  )
}

///|
pub fn I16x8::extend_low_i8x16_u(v : V128) -> V128 {
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
      I8::extend_u(a0),
      I8::extend_u(a1),
      I8::extend_u(a2),
      I8::extend_u(a3),
      I8::extend_u(a4),
      I8::extend_u(a5),
      I8::extend_u(a6),
      I8::extend_u(a7),
    ),
  )
}

///|
pub fn I16x8::extend_high_i8x16_u(v : V128) -> V128 {
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
      I8::extend_u(a8),
      I8::extend_u(a9),
      I8::extend_u(a10),
      I8::extend_u(a11),
      I8::extend_u(a12),
      I8::extend_u(a13),
      I8::extend_u(a14),
      I8::extend_u(a15),
    ),
  )
}

///|
pub fn I16x8::ext_add_pairwise_i8x16_s(v : V128) -> V128 {
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
      I8::extend_s(a0) + I8::extend_s(a1),
      I8::extend_s(a2) + I8::extend_s(a3),
      I8::extend_s(a4) + I8::extend_s(a5),
      I8::extend_s(a6) + I8::extend_s(a7),
      I8::extend_s(a8) + I8::extend_s(a9),
      I8::extend_s(a10) + I8::extend_s(a11),
      I8::extend_s(a12) + I8::extend_s(a13),
      I8::extend_s(a14) + I8::extend_s(a15),
    ),
  )
}

///|
pub fn I16x8::ext_add_pairwise_i8x16_u(v : V128) -> V128 {
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
      I8::extend_u(a0) + I8::extend_u(a1),
      I8::extend_u(a2) + I8::extend_u(a3),
      I8::extend_u(a4) + I8::extend_u(a5),
      I8::extend_u(a6) + I8::extend_u(a7),
      I8::extend_u(a8) + I8::extend_u(a9),
      I8::extend_u(a10) + I8::extend_u(a11),
      I8::extend_u(a12) + I8::extend_u(a13),
      I8::extend_u(a14) + I8::extend_u(a15),
    ),
  )
}

///|
pub fn I32x4::extend_low_i16x8_s(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, _a4, _a5, _a6, _a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_s(a0),
      Int16::extend_s(a1),
      Int16::extend_s(a2),
      Int16::extend_s(a3),
    ),
  )
}

///|
pub fn I32x4::extend_high_i16x8_s(v : V128) -> V128 {
  let I16x8(_a0, _a1, _a2, _a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_s(a4),
      Int16::extend_s(a5),
      Int16::extend_s(a6),
      Int16::extend_s(a7),
    ),
  )
}

///|
pub fn I32x4::extend_low_i16x8_u(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, _a4, _a5, _a6, _a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_u(a0),
      Int16::extend_u(a1),
      Int16::extend_u(a2),
      Int16::extend_u(a3),
    ),
  )
}

///|
pub fn I32x4::extend_high_i16x8_u(v : V128) -> V128 {
  let I16x8(_a0, _a1, _a2, _a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_u(a4),
      Int16::extend_u(a5),
      Int16::extend_u(a6),
      Int16::extend_u(a7),
    ),
  )
}

///|
pub fn I32x4::trunc_sat_f32x4_s(v : V128) -> V128 {
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
pub fn I32x4::trunc_sat_f32x4_u(v : V128) -> V128 {
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
pub fn I32x4::trunc_sat_f64x2_s_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  I32x4::to(I32x4(0, 0, a0.trunc_sat_s(), a1.trunc_sat_s()))
}

///|
pub fn I32x4::trunc_sat_f64x2_u_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  I32x4::to(I32x4(0, 0, a0.trunc_sat_u(), a1.trunc_sat_u()))
}

///|
pub fn I32x4::relaxed_trunc_f32x4_s(v : V128) -> V128 {
  I32x4::trunc_sat_f32x4_s(v)
}

///|
pub fn I32x4::relaxed_trunc_f32x4_u(v : V128) -> V128 {
  I32x4::trunc_sat_f32x4_u(v)
}

///|
pub fn I32x4::relaxed_trunc_f64x2_s_zero(v : V128) -> V128 {
  I32x4::trunc_sat_f64x2_s_zero(v)
}

///|
pub fn I32x4::relaxed_trunc_f64x2_u_zero(v : V128) -> V128 {
  I32x4::trunc_sat_f64x2_u_zero(v)
}

///|
pub fn I32x4::ext_add_pairwise_i16x8_s(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_s(a0) + Int16::extend_s(a1),
      Int16::extend_s(a2) + Int16::extend_s(a3),
      Int16::extend_s(a4) + Int16::extend_s(a5),
      Int16::extend_s(a6) + Int16::extend_s(a7),
    ),
  )
}

///|
pub fn I32x4::ext_add_pairwise_i16x8_u(v : V128) -> V128 {
  let I16x8(a0, a1, a2, a3, a4, a5, a6, a7) = I16x8::from(v)
  I32x4::to(
    I32x4(
      Int16::extend_u(a0) + Int16::extend_u(a1),
      Int16::extend_u(a2) + Int16::extend_u(a3),
      Int16::extend_u(a4) + Int16::extend_u(a5),
      Int16::extend_u(a6) + Int16::extend_u(a7),
    ),
  )
}

///|
pub fn I64x2::extend_low_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  I64x2::to(I64x2(Int::extend_s(a0), Int::extend_s(a1)))
}

///|
pub fn I64x2::extend_high_i32x4_s(v : V128) -> V128 {
  let I32x4(_a0, _a1, a2, a3) = I32x4::from(v)
  I64x2::to(I64x2(Int::extend_s(a2), Int::extend_s(a3)))
}

///|
pub fn I64x2::extend_low_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  I64x2::to(I64x2(Int::extend_u(a0), Int::extend_u(a1)))
}

///|
pub fn I64x2::extend_high_i32x4_u(v : V128) -> V128 {
  let I32x4(_a0, _a1, a2, a3) = I32x4::from(v)
  I64x2::to(I64x2(Int::extend_u(a2), Int::extend_u(a3)))
}

///|
pub fn F32x4::convert_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  F32x4::to(F32x4(a0.to_float(), a1.to_float(), a2.to_float(), a3.to_float()))
}

///|
pub fn F32x4::convert_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, a2, a3) = I32x4::from(v)
  F32x4::to(
    F32x4(
      a0.reinterpret_as_uint().to_float(),
      a1.reinterpret_as_uint().to_float(),
      a2.reinterpret_as_uint().to_float(),
      a3.reinterpret_as_uint().to_float(),
    ),
  )
}

///|
pub fn F32x4::demote_f64x2_zero(v : V128) -> V128 {
  let F64x2(a0, a1) = F64x2::from(v)
  F32x4::to(F32x4(a0.to_float(), a1.to_float(), 0, 0))
}

///|
pub fn F64x2::promote_low_f32x4(v : V128) -> V128 {
  let F32x4(a0, a1, _a2, _a3) = F32x4::from(v)
  F64x2::to(F64x2(a0.to_double(), a1.to_double()))
}

///|
pub fn F64x2::convert_i32x4_s(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  F64x2::to(F64x2(a0.to_double(), a1.to_double()))
}

///|
pub fn F64x2::convert_i32x4_u(v : V128) -> V128 {
  let I32x4(a0, a1, _a2, _a3) = I32x4::from(v)
  F64x2::to(
    F64x2(
      a0.reinterpret_as_uint().to_double(),
      a1.reinterpret_as_uint().to_double(),
    ),
  )
}
