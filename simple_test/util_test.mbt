///|
using @v128 {type V128}

///|
fn assert_eq(actual : V128, expected : V128) -> Unit raise {
  assert_true(@v128.v128_eq(actual, expected))
}
