///|
pub fn decode_baseline(input : FixedArray[Byte]) -> FixedArray[Byte]? {
  let input_len = input.length()
  let pad_len = count_padding(input)

  if pad_len > 0 && input_len % 4 != 0 {
    return None
  }

  let effective_len = input_len - pad_len
  let tail_len = effective_len % 4
  if tail_len == 1 {
    return None
  }
  if pad_len == 1 && tail_len != 3 {
    return None
  }
  if pad_len == 2 && tail_len != 2 {
    return None
  }

  let out_len = effective_len / 4 * 3 +
    (if tail_len == 0 { 0 } else if tail_len == 2 { 1 } else { 2 })
  let out = FixedArray::make(out_len, b'\x00')

  let mut in_offset = 0
  let mut out_offset = 0
  while in_offset + 4 <= effective_len {
    if !decode_scalar_quartet(input, in_offset, out, out_offset) {
      return None
    }
    in_offset += 4
    out_offset += 3
  }

  if decode_scalar_tail(
      input,
      in_offset,
      out,
      out_offset,
      effective_len - in_offset,
    ) {
    Some(out)
  } else {
    None
  }
}
