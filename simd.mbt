///|
using @i8 {type I8}

///|
/// V128 is an abstract 128-bit vector type as in WebAssembly. 
pub type V128

///|
pub struct I8x16(I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8, I8)

///|
fn I8x16::from(v : V128) -> I8x16 = "%identity"

///|
fn I8x16::to(self : I8x16) -> V128 = "%identity"

///|
pub struct I16x8(Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)

///|
fn I16x8::from(v : V128) -> I16x8 = "%identity"

///|
fn I16x8::to(self : I16x8) -> V128 = "%identity"

///|
pub struct I32x4(Int, Int, Int, Int)

///|
fn I32x4::from(v : V128) -> I32x4 = "%identity"

///|
fn I32x4::to(self : I32x4) -> V128 = "%identity"

///|
pub struct I64x2(Int64, Int64)

///|
fn I64x2::from(v : V128) -> I64x2 = "%identity"

///|
fn I64x2::to(self : I64x2) -> V128 = "%identity"

///|
pub struct F32x4(Float, Float, Float, Float)

///|
fn F32x4::from(v : V128) -> F32x4 = "%identity"

///|
fn F32x4::to(self : F32x4) -> V128 = "%identity"

///|
pub struct F64x2(Double, Double)

///|
fn F64x2::from(v : V128) -> F64x2 = "%identity"

///|
fn F64x2::to(self : F64x2) -> V128 = "%identity"
