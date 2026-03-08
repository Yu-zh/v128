///|
pub fn decode_baseline(
  input : FixedArray[Byte],
) -> FixedArray[Byte] raise DecodeError {
  let input_len = input.length()
  let pad_len = count_padding(input)

  if pad_len > 0 && input_len % 4 != 0 {
    raise DecodeError::InvalidPadding
  }

  let effective_len = input_len - pad_len
  let tail_len = effective_len % 4
  if tail_len == 1 {
    raise DecodeError::InvalidLength
  }
  if pad_len == 1 && tail_len != 3 {
    raise DecodeError::InvalidPadding
  }
  if pad_len == 2 && tail_len != 2 {
    raise DecodeError::InvalidPadding
  }

  let out_len = effective_len / 4 * 3 +
    (if tail_len == 0 { 0 } else if tail_len == 2 { 1 } else { 2 })
  let out = FixedArray::make(out_len, b'\x00')

  let mut in_offset = 0
  let mut out_offset = 0
  while in_offset + 4 <= effective_len {
    decode_scalar_quartet(input, in_offset, out, out_offset)
    in_offset += 4
    out_offset += 3
  }

  decode_scalar_tail(
    input,
    in_offset,
    out,
    out_offset,
    effective_len - in_offset,
  )
  out
}
