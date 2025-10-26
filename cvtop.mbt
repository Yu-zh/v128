///|
pub fn I16x8::extend_low_s(v : V128) -> V128 {
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
pub fn I16x8::extend_high_s(v : V128) -> V128 {
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
pub fn I16x8::extend_low_u(v : V128) -> V128 {
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
pub fn I16x8::extend_high_u(v : V128) -> V128 {
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

// | I16x8 (ExtAddPairwise S) -> V128.I16x8_convert.extadd_pairwise_s
// | I16x8 (ExtAddPairwise U) -> V128.I16x8_convert.extadd_pairwise_u

///|
pub fn I32x4::extend_low_s(v : V128) -> V128 {
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
pub fn I32x4::extend_high_s(v : V128) -> V128 {
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
pub fn I32x4::extend_low_u(v : V128) -> V128 {
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
pub fn I32x4::extend_high_u(v : V128) -> V128 {
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

// | I32x4 (TruncSatF32x4 S) -> V128.I32x4_convert.trunc_sat_f32x4_s
// | I32x4 (TruncSatF32x4 U) -> V128.I32x4_convert.trunc_sat_f32x4_u
// | I32x4 (TruncSatZeroF64x2 S) -> V128.I32x4_convert.trunc_sat_f64x2_s_zero
// | I32x4 (TruncSatZeroF64x2 U) -> V128.I32x4_convert.trunc_sat_f64x2_u_zero
// | I32x4 (RelaxedTruncF32x4 S) -> V128.I32x4_convert.trunc_sat_f32x4_s
// | I32x4 (RelaxedTruncF32x4 U) -> V128.I32x4_convert.trunc_sat_f32x4_u
// | I32x4 (RelaxedTruncZeroF64x2 S) -> V128.I32x4_convert.trunc_sat_f64x2_s_zero
// | I32x4 (RelaxedTruncZeroF64x2 U) -> V128.I32x4_convert.trunc_sat_f64x2_u_zero
// | I32x4 (ExtAddPairwise S) -> V128.I32x4_convert.extadd_pairwise_s
// | I32x4 (ExtAddPairwise U) -> V128.I32x4_convert.extadd_pairwise_u
// | I64x2 (Extend (Low, S)) -> V128.I64x2_convert.extend_low_s
// | I64x2 (Extend (High, S)) -> V128.I64x2_convert.extend_high_s
// | I64x2 (Extend (Low, U)) -> V128.I64x2_convert.extend_low_u
// | I64x2 (Extend (High, U)) -> V128.I64x2_convert.extend_high_u
// | F32x4 (ConvertI32x4 S) -> V128.F32x4_convert.convert_i32x4_s
// | F32x4 (ConvertI32x4 U)-> V128.F32x4_convert.convert_i32x4_u
// | F32x4 DemoteZeroF64x2 -> V128.F32x4_convert.demote_f64x2_zero
// | F64x2 PromoteLowF32x4 -> V128.F64x2_convert.promote_low_f32x4
// | F64x2 (ConvertI32x4 S) -> V128.F64x2_convert.convert_i32x4_s
// | F64x2 (ConvertI32x4 U) -> V128.F64x2_convert.convert_i32x4_u
