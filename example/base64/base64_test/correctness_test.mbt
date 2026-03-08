///|
fn encode_sextet(x : Int) -> Byte {
  if x < 26 {
    (x + b'A'.to_int()).to_byte()
  } else if x < 52 {
    (x - 26 + b'a'.to_int()).to_byte()
  } else if x < 62 {
    (x - 52 + b'0'.to_int()).to_byte()
  } else if x == 62 {
    b'+'
  } else {
    b'/'
  }
}

///|
fn encode_baseline(input : FixedArray[Byte], padded : Bool) -> FixedArray[Byte] {
  let input_len = input.length()
  let rem = input_len % 3
  let out_len = input_len / 3 * 4 +
    (if rem == 0 { 0 } else if padded { 4 } else { rem + 1 })
  let out = FixedArray::make(out_len, b'=')
  let mut in_offset = 0
  let mut out_offset = 0

  while in_offset + 3 <= input_len {
    let a = input[in_offset].to_int()
    let b = input[in_offset + 1].to_int()
    let c = input[in_offset + 2].to_int()
    out[out_offset] = encode_sextet(a >> 2)
    out[out_offset + 1] = encode_sextet(((a & 0x03) << 4) | (b >> 4))
    out[out_offset + 2] = encode_sextet(((b & 0x0F) << 2) | (c >> 6))
    out[out_offset + 3] = encode_sextet(c & 0x3F)
    in_offset += 3
    out_offset += 4
  }

  if rem == 1 {
    let a = input[in_offset].to_int()
    out[out_offset] = encode_sextet(a >> 2)
    out[out_offset + 1] = encode_sextet((a & 0x03) << 4)
    if !padded {
      ()
    }
  } else if rem == 2 {
    let a = input[in_offset].to_int()
    let b = input[in_offset + 1].to_int()
    out[out_offset] = encode_sextet(a >> 2)
    out[out_offset + 1] = encode_sextet(((a & 0x03) << 4) | (b >> 4))
    out[out_offset + 2] = encode_sextet((b & 0x0F) << 2)
    if !padded {
      ()
    }
  }

  out
}

///|
fn assert_both_decode_to(
  encoded : FixedArray[Byte],
  expected : FixedArray[Byte],
) -> Unit raise {
  match (@base64.decode(encoded), @base64.decode_baseline(encoded)) {
    (Some(simd), Some(baseline)) => {
      @builtin.assert_eq(simd, expected)
      @builtin.assert_eq(baseline, expected)
    }
    _ => panic()
  }
}

///|
fn assert_both_reject(encoded : FixedArray[Byte]) -> Unit raise {
  assert_true(@base64.decode(encoded) is None)
  assert_true(@base64.decode_baseline(encoded) is None)
}

///|
fn make_pattern_bytes(len : Int, seed : Int) -> FixedArray[Byte] {
  let out = FixedArray::make(len, b'\x00')
  for i in 0..<len {
    out[i] = ((seed * 73 + i * 151 + i * i * 19 + i / 7 * 31) & 0xFF).to_byte()
  }
  out
}

///|
test "exhaustive roundtrip for all one-byte payloads" {
  for x in 0..<256 {
    let payload : FixedArray[Byte] = [x.to_byte()]
    assert_both_decode_to(encode_baseline(payload, true), payload)
    assert_both_decode_to(encode_baseline(payload, false), payload)
  }
}

///|
test "exhaustive roundtrip for all two-byte payloads" {
  for x in 0..<256 {
    for y in 0..<256 {
      let payload : FixedArray[Byte] = [x.to_byte(), y.to_byte()]
      assert_both_decode_to(encode_baseline(payload, true), payload)
      assert_both_decode_to(encode_baseline(payload, false), payload)
    }
  }
}

///|
test "differential roundtrip on patterned payloads across lengths" {
  let lengths = [
    0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 12, 13, 15, 16, 17, 18, 19, 20, 24, 31, 32, 33,
    47, 48, 49, 63, 64, 65, 95, 96, 97, 127, 128, 129, 191, 192,
  ]
  for seed in 0..<64 {
    for len in lengths {
      let payload = make_pattern_bytes(len, seed)
      assert_both_decode_to(encode_baseline(payload, true), payload)
      assert_both_decode_to(encode_baseline(payload, false), payload)
    }
  }
}

///|
test "exhaustive invalid two-char tails are rejected" {
  for a in 0..<64 {
    for b in 0..<64 {
      if (b & 0x0F) != 0 {
        let c0 = encode_sextet(a)
        let c1 = encode_sextet(b)
        assert_both_reject([c0, c1])
        assert_both_reject([c0, c1, b'=', b'='])
      }
    }
  }
}

///|
test "exhaustive invalid three-char tails are rejected" {
  for a in 0..<64 {
    for b in 0..<64 {
      for c in 0..<64 {
        if (c & 0x03) != 0 {
          let c0 = encode_sextet(a)
          let c1 = encode_sextet(b)
          let c2 = encode_sextet(c)
          assert_both_reject([c0, c1, c2])
          assert_both_reject([c0, c1, c2, b'='])
        }
      }
    }
  }
}
