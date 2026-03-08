///|
using @v128 {type V128}

///|
/// Errors reported by the decoder.
///
/// `InvalidLength` and `InvalidPadding` describe shape errors in the overall
/// base64 text. `InvalidByte` points at a byte outside the base64 alphabet, and
/// `InvalidTailBits` reports malformed final quanta whose discarded pad bits
/// are non-zero.
pub suberror DecodeError {
  InvalidLength
  InvalidPadding
  InvalidByte(offset~ : Int, byte~ : Byte)
  InvalidTailBits(offset~ : Int, byte~ : Byte)
} derive(Eq, Show)

///|
/// Scalar character decoder used by the scalar baseline, the tail path, and to
/// pinpoint the first invalid byte after a SIMD block fails validation.
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
/// Scalar decoder with source position information for raised errors.
fn decode_char(ch : Byte, offset : Int) -> UInt raise DecodeError {
  match decode_char_or_none(ch) {
    Some(value) => value
    None => raise DecodeError::InvalidByte(offset~, byte=ch)
  }
}

///|
/// Decode and validate sixteen ASCII base64 bytes at once.
///
/// The translation follows the blog post's "perfect hash" shape:
/// `hash = (byte >> 4) + (byte == '/')`, then a `swizzle` lookup supplies the
/// offset to subtract. Validation is also LUT-driven: the high-nibble hash is
/// turned into a one-hot bit, the low nibble selects the set of valid hashes,
/// and a non-zero intersection means the byte belongs to the base64 alphabet.
///
/// On success, the result still contains sixteen sextets as sixteen byte lanes.
/// Repacking those sextets into decoded bytes happens later in `decode_block_16`
/// or `decode_block_8`.
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
/// Scalar reference for the 4 input chars -> 3 output bytes transform.
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
/// Convert a failing SIMD block into a precise public error.
///
/// The hot SIMD path only needs a yes/no validity result. When a block fails,
/// we rescan the affected bytes scalarly so the public API can report the exact
/// offending byte and offset instead of a generic block failure.
fn raise_first_invalid_byte(
  input : FixedArray[Byte],
  in_offset : Int,
  block_len : Int,
) -> Unit raise DecodeError {
  for i in 0..<block_len {
    let _ = decode_char(input[in_offset + i], in_offset + i)
  }
  raise DecodeError::InvalidPadding
}

///|
/// Repack four independent quartets already laid out as `i32x4` lanes.
///
/// Each lane contains `[a, b, c, d]` in little-endian byte order, where each
/// byte is a sextet. The target bit layout per lane is:
///
/// `((a << 18) | (b << 12) | (c << 6) | d) = 0x00xxyyzz`
///
/// After this step, each lane holds one 24-bit decoded chunk with the three
/// decoded bytes in the low 24 bits.
fn pack_quartet_lanes(values : V128) -> V128 {
  let a_mask = @v128.i32x4_splat(0x0000003F)
  let b_mask = @v128.i32x4_splat(0x00003F00)
  let c_mask = @v128.i32x4_splat(0x003F0000)
  let d_mask = @v128.i32x4_splat(0x3F000000)
  @v128.v128_or_(
    @v128.v128_or_(
      @v128.i32x4_shl(@v128.v128_and_(values, a_mask), 18),
      @v128.i32x4_shl(@v128.v128_and_(values, b_mask), 4),
    ),
    @v128.v128_or_(
      @v128.i32x4_shr_u(@v128.v128_and_(values, c_mask), 10),
      @v128.i32x4_shr_u(@v128.v128_and_(values, d_mask), 24),
    ),
  )
}

///|
/// Compact four packed 24-bit lanes into twelve contiguous output bytes.
///
/// After `pack_quartet_lanes`, the decoded bytes live in lane-local byte slots
/// `[2,1,0]`, `[6,5,4]`, `[10,9,8]`, and `[14,13,12]`. One final swizzle moves
/// those twelve bytes to the front of the vector for storage.
fn compact_packed_quartets(packed_lanes : V128) -> V128 {
  @v128.i8x16_swizzle(
    packed_lanes,
    @v128.i8x16_const(2, 1, 0, 6, 5, 4, 10, 9, 8, 14, 13, 12, 16, 16, 16, 16),
  )
}

///|
/// Decode a full 16-character SIMD block into 12 output bytes.
///
/// This is the main hot path for long inputs. The whole 128-bit register is
/// used: sixteen ASCII chars are translated to sixteen sextets, then packed
/// into four decoded 24-bit chunks and written as 8 + 4 output bytes.
fn decode_block_16(
  input : FixedArray[Byte],
  in_offset : Int,
  out : FixedArray[Byte],
  out_offset : Int,
) -> Unit raise DecodeError {
  let values = match decode_sextets_16(@v128.v128_load(input, in_offset)) {
    Some(values) => values
    None => {
      raise_first_invalid_byte(input, in_offset, 16)
      abort("unreachable")
    }
  }
  // Each i32x4 lane already holds one quartet as [a, b, c, d].
  // Repack those bytes directly with lane masks/shifts, then compact.
  let packed = compact_packed_quartets(pack_quartet_lanes(values))
  @v128.v128_store64_lane(out, out_offset, packed, 0)
  @v128.v128_store32_lane(out, out_offset + 8, packed, 2)
}

///|
/// Decode an 8-character SIMD block into 6 output bytes.
///
/// This handles the "two full quartets remain" case without dropping back to
/// scalar code. The lower eight bytes come from the input and the upper eight
/// bytes are filled with `'A'`, which is a valid zero sextet, so the shared
/// 16-lane decoder and packer can still be reused safely.
fn decode_block_8(
  input : FixedArray[Byte],
  in_offset : Int,
  out : FixedArray[Byte],
  out_offset : Int,
) -> Unit raise DecodeError {
  let upper_fill = @v128.i8x16_const(
    0, 0, 0, 0, 0, 0, 0, 0, b'A', b'A', b'A', b'A', b'A', b'A', b'A', b'A',
  )
  let values = match
    decode_sextets_16(
      @v128.v128_or_(@v128.v128_load64_zero(input, in_offset), upper_fill),
    ) {
    Some(values) => values
    None => {
      raise_first_invalid_byte(input, in_offset, 8)
      abort("unreachable")
    }
  }
  let packed = compact_packed_quartets(pack_quartet_lanes(values))
  @v128.v128_store32_lane(out, out_offset, packed, 0)
  @v128.v128_store16_lane(out, out_offset + 4, packed, 2)
}

///|
/// Scalar fallback for one complete quartet.
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
/// Decode the final partial quantum after all complete quartets have been
/// consumed, including RFC 4648 pad-bit validation for 2- and 3-character tails.
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
/// Count trailing `=` padding markers.
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
/// Decode standard base64 bytes.
///
/// The implementation first validates the global shape of the input, then
/// processes complete quartets in descending order of throughput:
///
/// - 16 input chars -> 12 output bytes via SIMD
/// - 8 input chars -> 6 output bytes via SIMD
/// - 4 input chars -> 3 output bytes via scalar fallback
/// - final 2- or 3-char tail via scalar tail logic
///
/// Padded and unpadded inputs are both accepted. Whitespace and URL-safe
/// alphabets are intentionally not handled here.
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
  let full_len = effective_len - tail_len

  while in_offset + 16 <= full_len {
    decode_block_16(input, in_offset, out, out_offset)
    in_offset += 16
    out_offset += 12
  }

  while in_offset + 8 <= full_len {
    decode_block_8(input, in_offset, out, out_offset)
    in_offset += 8
    out_offset += 6
  }

  while in_offset + 4 <= full_len {
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
