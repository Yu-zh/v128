///|
// Simple tests for binop.mbt functions

// ========== I8x16 Tests ==========

test "I8x16::add" {
  let v1 = I8x16::const_(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  let v2 = I8x16::const_(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
  let expected = I8x16::const_(
    17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17,
  )
  if I8x16::add(v1, v2) == expected {
    println("ok")
  }
}
