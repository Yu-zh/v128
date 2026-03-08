///|
using @v128 {type V128}

///|
pub suberror DecodeError {
  InvalidLength
  InvalidPadding
  InvalidByte(offset~ : Int, byte~ : Byte)
  InvalidTailBits(offset~ : Int, byte~ : Byte)
} derive(Eq, Show)

///|
fn decode_char_or_none(ch : Byte) -> UInt? {
  if ch >= b'A' && ch <= b'Z' {
    Some((ch - b'A').to_uint())
  } else if ch >= b'a' && ch <= b'z' {
    Some((ch - b'a').to_uint() + 26)
  } else if ch >= b'0' && ch <= b'9' {
    Some((ch - b'0').to_uint() + 52)
  } else if ch == b'+' {
    Some(62)
  } else if ch == b'/' {
    Some(63)
  } else {
    None
  }
}

///|
fn decode_char(ch : Byte, offset : Int) -> UInt raise DecodeError {
  match decode_char_or_none(ch) {
    Some(value) => value
    None => raise DecodeError::InvalidByte(offset~, byte=ch)
  }
}

///|
fn decode_sextets_16(bytes : V128) -> V128? {
  let hash_offsets = @v128.i8x16_const(
    0, 240, 237, 252, 65, 65, 71, 71, 0, 0, 0, 0, 0, 0, 0, 0,
  )
  let hashes = @v128.i8x16_add(
    @v128.i8x16_shr_u(bytes, 4),
    @v128.i8x16_eq(bytes, @v128.i8x16_splat(b'/')),
  )
  let lows = @v128.v128_and_(bytes, @v128.i8x16_splat(0x0F))
  let sextets = @v128.i8x16_sub(
    bytes,
    @v128.i8x16_swizzle(hash_offsets, hashes),
  )
  let hash_bits = @v128.i8x16_swizzle(
    @v128.i8x16_const(1, 2, 4, 8, 16, 32, 64, 128, 0, 0, 0, 0, 0, 0, 0, 0),
    hashes,
  )
  // This exact-membership filter follows the blog's LUT-heavy validation idea.
  // In practice, it is more elegant than the compare network, but not
  // necessarily faster on the current MoonBit->wasm codegen path.
  let nibble_masks = @v128.i8x16_swizzle(
    @v128.i8x16_const(
      0xA8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF0, 0x54, 0x50,
      0x50, 0x50, 0x52,
    ),
    lows,
  )
  let valid = @v128.i8x16_ne(
    @v128.v128_and_(hash_bits, nibble_masks),
    @v128.i8x16_splat(0),
  )
  if !@v128.i8x16_all_true(valid) {
    None
  } else {
    Some(sextets)
  }
}

///|
fn write_decoded_quartet(
  out : FixedArray[Byte],
  out_offset : Int,
  a : UInt,
  b : UInt,
  c : UInt,
  d : UInt,
) -> Unit {
  out[out_offset] = ((a << 2) | (b >> 4)).to_byte()
  out[out_offset + 1] = (((b & 0x0F) << 4) | (c >> 2)).to_byte()
  out[out_offset + 2] = (((c & 0x03) << 6) | d).to_byte()
}

///|
fn decode_block_16(
  input : FixedArray[Byte],
  in_offset : Int,
  out : FixedArray[Byte],
  out_offset : Int,
) -> Unit raise DecodeError {
  let values = match decode_sextets_16(@v128.v128_load(input, in_offset)) {
    Some(values) => values
    None => {
      for i in 0..<16 {
        let _ = decode_char(input[in_offset + i], in_offset + i)
      }
      raise DecodeError::InvalidPadding
    }
  }
  let a_lo = @v128.i8x16_shl(
    @v128.i8x16_swizzle(
      values,
      @v128.i8x16_const(
        0, 16, 16, 4, 16, 16, 8, 16, 16, 12, 16, 16, 16, 16, 16, 16,
      ),
    ),
    2,
  )
  let b_hi = @v128.i8x16_shr_u(
    @v128.i8x16_swizzle(
      values,
      @v128.i8x16_const(
        1, 16, 16, 5, 16, 16, 9, 16, 16, 13, 16, 16, 16, 16, 16, 16,
      ),
    ),
    4,
  )
  let b_lo = @v128.i8x16_shl(
    @v128.i8x16_swizzle(
      values,
      @v128.i8x16_const(
        16, 1, 16, 16, 5, 16, 16, 9, 16, 16, 13, 16, 16, 16, 16, 16,
      ),
    ),
    4,
  )
  let c_hi = @v128.i8x16_shr_u(
    @v128.i8x16_swizzle(
      values,
      @v128.i8x16_const(
        16, 2, 16, 16, 6, 16, 16, 10, 16, 16, 14, 16, 16, 16, 16, 16,
      ),
    ),
    2,
  )
  let c_lo = @v128.i8x16_shl(
    @v128.i8x16_swizzle(
      values,
      @v128.i8x16_const(
        16, 16, 2, 16, 16, 6, 16, 16, 10, 16, 16, 14, 16, 16, 16, 16,
      ),
    ),
    6,
  )
  let d_full = @v128.i8x16_swizzle(
    values,
    @v128.i8x16_const(
      16, 16, 3, 16, 16, 7, 16, 16, 11, 16, 16, 15, 16, 16, 16, 16,
    ),
  )
  let packed = @v128.v128_or_(
    @v128.v128_or_(a_lo, b_hi),
    @v128.v128_or_(@v128.v128_or_(b_lo, c_hi), @v128.v128_or_(c_lo, d_full)),
  )
  @v128.v128_store64_lane(out, out_offset, packed, 0)
  @v128.v128_store32_lane(out, out_offset + 8, packed, 2)
}

///|
fn decode_scalar_quartet(
  input : FixedArray[Byte],
  in_offset : Int,
  out : FixedArray[Byte],
  out_offset : Int,
) -> Unit raise DecodeError {
  let a = decode_char(input[in_offset], in_offset)
  let b = decode_char(input[in_offset + 1], in_offset + 1)
  let c = decode_char(input[in_offset + 2], in_offset + 2)
  let d = decode_char(input[in_offset + 3], in_offset + 3)
  write_decoded_quartet(out, out_offset, a, b, c, d)
}

///|
fn decode_scalar_tail(
  input : FixedArray[Byte],
  in_offset : Int,
  out : FixedArray[Byte],
  out_offset : Int,
  tail_len : Int,
) -> Unit raise DecodeError {
  if tail_len == 0 {
    ()
  } else if tail_len == 2 {
    let a = decode_char(input[in_offset], in_offset)
    let b = decode_char(input[in_offset + 1], in_offset + 1)
    if (b & 0x0F) != 0 {
      raise DecodeError::InvalidTailBits(
        offset=in_offset + 1,
        byte=input[in_offset + 1],
      )
    }
    out[out_offset] = ((a << 2) | (b >> 4)).to_byte()
  } else if tail_len == 3 {
    let a = decode_char(input[in_offset], in_offset)
    let b = decode_char(input[in_offset + 1], in_offset + 1)
    let c = decode_char(input[in_offset + 2], in_offset + 2)
    if (c & 0x03) != 0 {
      raise DecodeError::InvalidTailBits(
        offset=in_offset + 2,
        byte=input[in_offset + 2],
      )
    }
    out[out_offset] = ((a << 2) | (b >> 4)).to_byte()
    out[out_offset + 1] = (((b & 0x0F) << 4) | (c >> 2)).to_byte()
  } else {
    raise DecodeError::InvalidLength
  }
}

///|
fn count_padding(input : FixedArray[Byte]) -> Int {
  let n = input.length()
  if n >= 2 && input[n - 1] == b'=' && input[n - 2] == b'=' {
    2
  } else if n >= 1 && input[n - 1] == b'=' {
    1
  } else {
    0
  }
}

///|
pub fn decode(input : FixedArray[Byte]) -> FixedArray[Byte] raise DecodeError {
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
  let simd_end = effective_len / 16 * 16

  while in_offset < simd_end {
    decode_block_16(input, in_offset, out, out_offset)
    in_offset += 16
    out_offset += 12
  }

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
