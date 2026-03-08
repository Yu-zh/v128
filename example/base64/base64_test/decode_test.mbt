///|
fn assert_decodes(
  input : FixedArray[Byte],
  expected : FixedArray[Byte],
) -> Unit raise {
  match @base64.decode(input) {
    Some(actual) => @builtin.assert_eq(actual, expected)
    None => panic()
  }
}

///|
test "decode empty input" {
  assert_decodes([], [])
}

///|
test "decode padded rfc4648 examples" {
  assert_decodes([b'Z', b'g', b'=', b'='], [b'f'])
  assert_decodes([b'Z', b'm', b'8', b'='], [b'f', b'o'])
  assert_decodes([b'Z', b'm', b'9', b'v'], [b'f', b'o', b'o'])
  assert_decodes([b'Z', b'm', b'9', b'v', b'Y', b'm', b'F', b'y'], [
    b'f', b'o', b'o', b'b', b'a', b'r',
  ])
}

///|
test "decode unpadded tail examples" {
  assert_decodes([b'Z', b'g'], [b'f'])
  assert_decodes([b'Z', b'm', b'8'], [b'f', b'o'])
  assert_decodes([b'Z', b'm', b'9', b'v'], [b'f', b'o', b'o'])
}

///|
test "decode one full simd block" {
  assert_decodes(
    [
      b'Y', b'W', b'J', b'j', b'Z', b'G', b'V', b'm', b'Z', b'2', b'h', b'p', b'a',
      b'm', b't', b's',
    ],
    [b'a', b'b', b'c', b'd', b'e', b'f', b'g', b'h', b'i', b'j', b'k', b'l'],
  )
}

///|
test "decode one full simd block with plus and slash" {
  assert_decodes(
    [
      b'A', b'A', b'E', b'C', b'/', b'P', b'3', b'+', b'P', b'z', b'4', b'9', b'+',
      b'v', b'v', b'8',
    ],
    [
      b'\x00', b'\x01', b'\x02', b'\xFC', b'\xFD', b'\xFE', b'?', b'>', b'=', b'\xFA',
      b'\xFB', b'\xFC',
    ],
  )
}

///|
test "decode multiple simd blocks" {
  assert_decodes(
    [
      b'Y', b'W', b'J', b'j', b'Z', b'G', b'V', b'm', b'Z', b'2', b'h', b'p', b'a',
      b'm', b't', b's', b'b', b'W', b'5', b'v', b'c', b'H', b'F', b'y', b'c', b'3',
      b'R', b'1', b'd', b'n', b'd', b'4',
    ],
    [
      b'a', b'b', b'c', b'd', b'e', b'f', b'g', b'h', b'i', b'j', b'k', b'l', b'm',
      b'n', b'o', b'p', b'q', b'r', b's', b't', b'u', b'v', b'w', b'x',
    ],
  )
}

///|
test "decode mixed block plus padded tail" {
  assert_decodes(
    [
      b'Y', b'W', b'J', b'j', b'Z', b'G', b'V', b'm', b'Z', b'2', b'h', b'p', b'a',
      b'm', b't', b's', b'Z', b'g', b'=', b'=',
    ],
    [
      b'a', b'b', b'c', b'd', b'e', b'f', b'g', b'h', b'i', b'j', b'k', b'l', b'f',
    ],
  )
}

///|
test "reject invalid input" {
  assert_true(@base64.decode([b'Z']) is None)
  assert_true(@base64.decode([b'=']) is None)
  assert_true(@base64.decode([b'Z', b'h']) is None)
  assert_true(@base64.decode([b'Z', b'h', b'=', b'=']) is None)
  assert_true(@base64.decode([b'Z', b'm', b'9']) is None)
  assert_true(@base64.decode([b'Z', b'm', b'9', b'=']) is None)
  assert_true(@base64.decode([b'Z', b'g', b'=', b'A']) is None)
  assert_true(
    @base64.decode([
      b'Y', b'W', b'J', b'j', b'Z', b'G', b'V', b'm', b'Z', b'2', b'h', b'!', b'a',
      b'm', b't', b's',
    ])
    is None,
  )
  assert_true(
    @base64.decode([b'Y', b'W', b'J', b'j', b'=', b'G', b'V', b'm']) is None,
  )
  assert_true(@base64.decode([b'Z', b'm', b'9', b'v', b'-']) is None)
}
