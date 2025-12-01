// ============================
// binop
// ============================

///|
pub extern "wasm" fn i8x16_swizzle(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.swizzle (local.get $v1) (local.get $v2)))

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
) -> V128 = "%i8x16.shuffle"

///|
pub extern "wasm" fn i8x16_narrow_i16x8_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.narrow_i16x8_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_narrow_i16x8_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.narrow_i16x8_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_add_sat_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.add_sat_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_add_sat_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.add_sat_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_sub_sat_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.sub_sat_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_sub_sat_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.sub_sat_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_min_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.min_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_min_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.min_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_max_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.max_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_max_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.max_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_avgr_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.avgr_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_relaxed_swizzle(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.relaxed_swizzle (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_narrow_i32x4_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.narrow_i32x4_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_narrow_i32x4_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.narrow_i32x4_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_add_sat_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.add_sat_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_add_sat_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.add_sat_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_sub_sat_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.sub_sat_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_sub_sat_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.sub_sat_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_mul(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.mul (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_min_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.min_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_min_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.min_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_max_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.max_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_max_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.max_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_avgr_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.avgr_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_extmul_low_i8x16_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.extmul_low_i8x16_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_extmul_high_i8x16_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.extmul_high_i8x16_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_extmul_low_i8x16_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.extmul_low_i8x16_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_extmul_high_i8x16_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.extmul_high_i8x16_u (local.get $v1) (local.get $v2)))

// | I16x8 Q15MulRSatS -> V128.I16x8.q15mulr_sat_s
// | I16x8 RelaxedQ15MulRS -> V128.I16x8.q15mulr_sat_s

///|
pub extern "wasm" fn i16x8_relaxed_dot_s_i8x16(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.relaxed_dot_s_i8x16 (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_min_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.min_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_min_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.min_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_max_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.max_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_max_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.max_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_mul(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.mul (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_extmul_low_i16x8_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.extmul_low_i16x8_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_extmul_high_i16x8_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.extmul_high_i16x8_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_extmul_low_i16x8_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.extmul_low_i16x8_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_extmul_high_i16x8_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.extmul_high_i16x8_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_mul(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.mul (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_relaxed_dot_add_s_i16x8(
  v1 : V128,
  v2 : V128,
) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.relaxed_dot_add_s_i16x8 (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_extmul_low_i32x4_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.extmul_low_i32x4_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_extmul_high_i32x4_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.extmul_high_i32x4_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_extmul_low_i32x4_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.extmul_low_i32x4_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_extmul_high_i32x4_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.extmul_high_i32x4_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_mul(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.mul (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_div(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.div (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_min(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.min (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_max(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.max (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_pmin(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.pmin (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_pmax(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.pmax (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_relaxed_min(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.relaxed_min (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_relaxed_max(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.relaxed_max (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_add(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.add (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_sub(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.sub (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_mul(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.mul (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_div(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.div (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_min(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.min (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_max(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.max (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_pmin(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.pmin (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_pmax(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.pmax (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_relaxed_min(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.relaxed_min (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_relaxed_max(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.relaxed_max (local.get $v1) (local.get $v2)))

// ============================
// bitmaskop
// ============================

///|
pub extern "wasm" fn i8x16_bitmask(v : V128) -> Int =
  #| (func (param $v v128) (result i32)
  #|    (i8x16.bitmask (local.get $v)))

///|
pub extern "wasm" fn i16x8_bitmask(v : V128) -> Int =
  #| (func (param $v v128) (result i32)
  #|    (i16x8.bitmask (local.get $v)))

///|
pub extern "wasm" fn i32x4_bitmask(v : V128) -> Int =
  #| (func (param $v v128) (result i32)
  #|    (i32x4.bitmask (local.get $v)))

///|
pub extern "wasm" fn i64x2_bitmask(v : V128) -> Int =
  #| (func (param $v v128) (result i32)
  #|    (i64x2.bitmask (local.get $v)))

// ============================
// constop
// ============================

///|
pub fn i8x16_const(
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
) -> V128 = "%i8x16.const"

///|
pub fn i16x8_const(
  a0 : UInt16,
  a1 : UInt16,
  a2 : UInt16,
  a3 : UInt16,
  a4 : UInt16,
  a5 : UInt16,
  a6 : UInt16,
  a7 : UInt16,
) -> V128 = "%i16x8.const"

///|
pub fn i32x4_const(a0 : UInt, a1 : UInt, a2 : UInt, a3 : UInt) -> V128 = "%i32x4.const"

///|
pub fn i64x2_const(a0 : UInt64, a1 : UInt64) -> V128 = "%i64x2.const"

///|
pub fn f32x4_const(a0 : Float, a1 : Float, a2 : Float, a3 : Float) -> V128 = "%f32x4.const"

///|
pub fn f64x2_const(a0 : Double, a1 : Double) -> V128 = "%f64x2.const"

// ============================
// cvtop
// ============================

///|
pub extern "wasm" fn i16x8_extend_low_i8x16_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extend_low_i8x16_s (local.get $v)))

///|
pub extern "wasm" fn i16x8_extend_high_i8x16_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extend_high_i8x16_s (local.get $v)))

///|
pub extern "wasm" fn i16x8_extend_low_i8x16_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extend_low_i8x16_u (local.get $v)))

///|
pub extern "wasm" fn i16x8_extend_high_i8x16_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extend_high_i8x16_u (local.get $v)))

///|
pub extern "wasm" fn i16x8_extadd_pairwise_i8x16_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extadd_pairwise_i8x16_s (local.get $v)))

///|
pub extern "wasm" fn i16x8_extadd_pairwise_i8x16_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.extadd_pairwise_i8x16_u (local.get $v)))

///|
pub extern "wasm" fn i32x4_extend_low_i16x8_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extend_low_i16x8_s (local.get $v)))

///|
pub extern "wasm" fn i32x4_extend_high_i16x8_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extend_high_i16x8_s (local.get $v)))

///|
pub extern "wasm" fn i32x4_extend_low_i16x8_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extend_low_i16x8_u (local.get $v)))

///|
pub extern "wasm" fn i32x4_extend_high_i16x8_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extend_high_i16x8_u (local.get $v)))

///|
pub extern "wasm" fn i32x4_trunc_sat_f32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.trunc_sat_f32x4_s (local.get $v)))

///|
pub extern "wasm" fn i32x4_trunc_sat_f32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.trunc_sat_f32x4_u (local.get $v)))

///|
pub extern "wasm" fn i32x4_trunc_sat_f64x2_s_zero(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.trunc_sat_f64x2_s_zero (local.get $v)))

///|
pub extern "wasm" fn i32x4_trunc_sat_f64x2_u_zero(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.trunc_sat_f64x2_u_zero (local.get $v)))

///|
pub extern "wasm" fn i32x4_relaxed_trunc_f32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.relaxed_trunc_f32x4_s (local.get $v)))

///|
pub extern "wasm" fn i32x4_relaxed_trunc_f32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.relaxed_trunc_f32x4_u (local.get $v)))

///|
pub extern "wasm" fn i32x4_relaxed_trunc_f64x2_s_zero(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.relaxed_trunc_f64x2_s_zero (local.get $v)))

///|
pub extern "wasm" fn i32x4_relaxed_trunc_f64x2_u_zero(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.relaxed_trunc_f64x2_u_zero (local.get $v)))

///|
pub extern "wasm" fn i32x4_extadd_pairwise_i16x8_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extadd_pairwise_i16x8_s (local.get $v)))

///|
pub extern "wasm" fn i32x4_extadd_pairwise_i16x8_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.extadd_pairwise_i16x8_u (local.get $v)))

///|
pub extern "wasm" fn i64x2_extend_low_i32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.extend_low_i32x4_s (local.get $v)))

///|
pub extern "wasm" fn i64x2_extend_high_i32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.extend_high_i32x4_s (local.get $v)))

///|
pub extern "wasm" fn i64x2_extend_low_i32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.extend_low_i32x4_u (local.get $v)))

///|
pub extern "wasm" fn i64x2_extend_high_i32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.extend_high_i32x4_u (local.get $v)))

///|
pub extern "wasm" fn f32x4_convert_i32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.convert_i32x4_s (local.get $v)))

///|
pub extern "wasm" fn f32x4_convert_i32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.convert_i32x4_u (local.get $v)))

///|
pub extern "wasm" fn f32x4_demote_f64x2_zero(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.demote_f64x2_zero (local.get $v)))

///|
pub extern "wasm" fn f64x2_promote_low_f32x4(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.promote_low_f32x4 (local.get $v)))

///|
pub extern "wasm" fn f64x2_convert_low_i32x4_s(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.convert_low_i32x4_s (local.get $v)))

///|
pub extern "wasm" fn f64x2_convert_low_i32x4_u(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.convert_low_i32x4_u (local.get $v)))

// ============================
// extractop
// ============================

///|
pub fn i8x16_extract_lane_s(v : V128, laneid : Int) -> UInt = "%i8x16.extract_lane_s"

///|
pub fn i8x16_extract_lane_u(v : V128, laneid : Int) -> UInt = "%i8x16.extract_lane_u"

///|
pub fn i16x8_extract_lane_s(v : V128, laneid : Int) -> UInt = "%i16x8.extract_lane_s"

///|
pub fn i16x8_extract_lane_u(v : V128, laneid : Int) -> UInt = "%i16x8.extract_lane_u"

///|
pub fn i32x4_extract_lane(v : V128, laneid : Int) -> UInt = "%i32x4.extract_lane"

///|
pub fn i64x2_extract_lane(v : V128, laneid : Int) -> UInt64 = "%i64x2.extract_lane"

///|
pub fn f32x4_extract_lane(v : V128, laneid : Int) -> Float = "%f32x4.extract_lane"

///|
pub fn f64x2_extract_lane(v : V128, laneid : Int) -> Double = "%f64x2.extract_lane"

// ============================
// loadop
// ============================

///|
#borrow(bytes)
pub extern "wasm" fn v128_load(bytes : FixedArray[Byte], offset : Int) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load8x8_s(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load8x8_s offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load8x8_u(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load8x8_u offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load16x4_s(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load16x4_s offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load16x4_u(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load16x4_u offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load32x2_s(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load32x2_s offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load32x2_u(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load32x2_u offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load8_splat(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load8_splat offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load16_splat(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load16_splat offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load32_splat(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load32_splat offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load64_splat(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load64_splat offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load32_zero(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load32_zero offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
#borrow(bytes)
pub extern "wasm" fn v128_load64_zero(
  bytes : FixedArray[Byte],
  offset : Int,
) -> V128 =
  #| (func (param $bytes i32) (param $offset i32) (result v128)
  #|    (v128.load64_zero offset=8 (i32.add (local.get $offset) (local.get $bytes))))

///|
pub fn v128_load8_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 = "%v128.load8_lane"

///|
pub fn v128_load16_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 = "%v128.load16_lane"

///|
pub fn v128_load32_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 = "%v128.load32_lane"

///|
pub fn v128_load64_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  x : V128,
  laneid : Int,
) -> V128 = "%v128.load64_lane"

// ============================
// relop
// ============================

///|
pub extern "wasm" fn i8x16_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_lt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.lt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_lt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.lt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_le_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.le_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_le_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.le_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_gt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.gt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_gt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.gt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_ge_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.ge_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i8x16_ge_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i8x16.ge_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_lt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.lt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_lt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.lt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_le_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.le_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_le_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.le_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_gt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.gt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_gt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.gt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_ge_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.ge_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i16x8_ge_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i16x8.ge_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_lt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.lt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_lt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.lt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_le_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.le_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_le_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.le_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_gt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.gt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_gt_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.gt_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_ge_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.ge_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i32x4_ge_u(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i32x4.ge_u (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_lt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.lt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_le_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.le_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_gt_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.gt_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn i64x2_ge_s(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (i64x2.ge_s (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_lt(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.lt (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_le(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.le (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_gt(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.gt (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f32x4_ge(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f32x4.ge (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_eq(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.eq (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_ne(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.ne (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_lt(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.lt (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_le(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.le (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_gt(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.gt (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn f64x2_ge(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (f64x2.ge (local.get $v1) (local.get $v2)))

// ============================
// replaceop
// ============================

///|
pub fn i8x16_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 = "%i8x16.replace_lane"

///|
pub fn i16x8_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 = "%i16x8.replace_lane"

///|
pub fn i32x4_replace_lane(v : V128, laneid : Int, value : UInt) -> V128 = "%i32x4.replace_lane"

///|
pub fn i64x2_replace_lane(v : V128, laneid : Int, value : UInt64) -> V128 = "%i64x2.replace_lane"

///|
pub fn f32x4_replace_lane(v : V128, laneid : Int, value : Float) -> V128 = "%f32x4.replace_lane"

///|
pub fn f64x2_replace_lane(v : V128, laneid : Int, value : Double) -> V128 = "%f64x2.replace_lane"

// ============================
// shiftop
// ============================

///|
pub extern "wasm" fn i8x16_shl(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i8x16.shl (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i8x16_shr_u(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i8x16.shr_u (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i8x16_shr_s(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i8x16.shr_s (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i16x8_shl(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i16x8.shl (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i16x8_shr_u(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i16x8.shr_u (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i16x8_shr_s(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i16x8.shr_s (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i32x4_shl(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i32x4.shl (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i32x4_shr_u(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i32x4.shr_u (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i32x4_shr_s(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i32x4.shr_s (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i64x2_shl(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i64x2.shl (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i64x2_shr_u(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i64x2.shr_u (local.get $v) (local.get $shift)))

///|
pub extern "wasm" fn i64x2_shr_s(v : V128, shift : Int) -> V128 =
  #| (func (param $v v128) (param $shift i32) (result v128)
  #|    (i64x2.shr_s (local.get $v) (local.get $shift)))

// ============================
// splatop
// ============================

///|
pub extern "wasm" fn i8x16_splat(v : Byte) -> V128 =
  #| (func (param $v i32) (result v128)
  #|    (i8x16.splat (local.get $v)))

///|
pub extern "wasm" fn i16x8_splat(v : UInt16) -> V128 =
  #| (func (param $v i32) (result v128)
  #|    (i16x8.splat (local.get $v)))

///|
pub extern "wasm" fn i32x4_splat(v : UInt) -> V128 =
  #| (func (param $v i32) (result v128)
  #|    (i32x4.splat (local.get $v)))

///|
pub extern "wasm" fn i64x2_splat(v : UInt64) -> V128 =
  #| (func (param $v i64) (result v128)
  #|    (i64x2.splat (local.get $v)))

///|
pub extern "wasm" fn f32x4_splat(v : Float) -> V128 =
  #| (func (param $v f32) (result v128)
  #|    (f32x4.splat (local.get $v)))

///|
pub extern "wasm" fn f64x2_splat(v : Double) -> V128 =
  #| (func (param $v f64) (result v128)
  #|    (f64x2.splat (local.get $v)))

// ============================
// storeop
// ============================

///|
#borrow(bytes)
pub extern "wasm" fn v128_store(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
) -> Unit =
  #| (func (param $bytes i32) (param $offset i32) (param $value v128) (result i32)
  #|    (v128.store offset=8 (i32.add (local.get $offset) (local.get $bytes)) (local.get $value)) (i32.const 0))

///|
pub fn v128_store8_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit = "%v128.store8_lane"

///|
pub fn v128_store16_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit = "%v128.store16_lane"

///|
pub fn v128_store32_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit = "%v128.store32_lane"

///|
pub fn v128_store64_lane(
  bytes : FixedArray[Byte],
  offset : Int,
  value : V128,
  laneid : Int,
) -> Unit = "%v128.store64_lane"

// ============================
// testop
// ============================

///|
pub extern "wasm" fn i8x16_all_true(v : V128) -> Bool =
  #| (func (param $v v128) (result i32)
  #|    (i8x16.all_true (local.get $v)))

///|
pub extern "wasm" fn i16x8_all_true(v : V128) -> Bool =
  #| (func (param $v v128) (result i32)
  #|    (i16x8.all_true (local.get $v)))

///|
pub extern "wasm" fn i32x4_all_true(v : V128) -> Bool =
  #| (func (param $v v128) (result i32)
  #|    (i32x4.all_true (local.get $v)))

///|
pub extern "wasm" fn i64x2_all_true(v : V128) -> Bool =
  #| (func (param $v v128) (result i32)
  #|    (i64x2.all_true (local.get $v)))

// ============================
// unop
// ============================

///|
pub extern "wasm" fn i8x16_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i8x16.neg (local.get $v)))

///|
pub extern "wasm" fn i8x16_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i8x16.abs (local.get $v)))

///|
pub extern "wasm" fn i8x16_popcnt(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i8x16.popcnt (local.get $v)))

///|
pub extern "wasm" fn i16x8_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.neg (local.get $v)))

///|
pub extern "wasm" fn i16x8_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i16x8.abs (local.get $v)))

///|
pub extern "wasm" fn i32x4_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.abs (local.get $v)))

///|
pub extern "wasm" fn i32x4_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i32x4.neg (local.get $v)))

///|
pub extern "wasm" fn i64x2_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.abs (local.get $v)))

///|
pub extern "wasm" fn i64x2_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (i64x2.neg (local.get $v)))

///|
pub extern "wasm" fn f32x4_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.abs (local.get $v)))

///|
pub extern "wasm" fn f32x4_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.neg (local.get $v)))

///|
pub extern "wasm" fn f32x4_sqrt(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.sqrt (local.get $v)))

///|
pub extern "wasm" fn f32x4_ceil(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.ceil (local.get $v)))

///|
pub extern "wasm" fn f32x4_floor(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.floor (local.get $v)))

///|
pub extern "wasm" fn f32x4_trunc(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.trunc (local.get $v)))

///|
pub extern "wasm" fn f32x4_nearest(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f32x4.nearest (local.get $v)))

///|
pub extern "wasm" fn f64x2_abs(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.abs (local.get $v)))

///|
pub extern "wasm" fn f64x2_neg(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.neg (local.get $v)))

///|
pub extern "wasm" fn f64x2_sqrt(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.sqrt (local.get $v)))

///|
pub extern "wasm" fn f64x2_ceil(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.ceil (local.get $v)))

///|
pub extern "wasm" fn f64x2_floor(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.floor (local.get $v)))

///|
pub extern "wasm" fn f64x2_trunc(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.trunc (local.get $v)))

///|
pub extern "wasm" fn f64x2_nearest(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (f64x2.nearest (local.get $v)))

// ============================
// vternop
// ============================

///|
pub extern "wasm" fn v128_bitselect(v1 : V128, v2 : V128, mask : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (param $mask v128) (result v128)
  #|    (v128.bitselect (local.get $v1) (local.get $v2) (local.get $mask)))

// ===========================
// vtestop
// ===========================

///|
pub extern "wasm" fn v128_any_true(v : V128) -> Bool =
  #| (func (param $v v128) (result i32)
  #|    (v128.any_true (local.get $v)))

// ============================
// vunop
// ============================

///|
pub extern "wasm" fn v128_not(v : V128) -> V128 =
  #| (func (param $v v128) (result v128)
  #|    (v128.not (local.get $v)))

///|
pub extern "wasm" fn v128_and_(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (v128.and (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn v128_or_(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (v128.or (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn v128_xor(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (v128.xor (local.get $v1) (local.get $v2)))

///|
pub extern "wasm" fn v128_andnot(v1 : V128, v2 : V128) -> V128 =
  #| (func (param $v1 v128) (param $v2 v128) (result v128)
  #|    (v128.andnot (local.get $v1) (local.get $v2)))

///|
pub fn v128_to_string(v : V128) -> String {
  ""
}

///|
pub fn v128_eq(v1 : V128, v2 : V128) -> Bool {
  not(v128_any_true(v128_xor(v1, v2)))
}
