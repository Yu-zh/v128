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
  } else if rem == 2 {
    let a = input[in_offset].to_int()
    let b = input[in_offset + 1].to_int()
    out[out_offset] = encode_sextet(a >> 2)
    out[out_offset + 1] = encode_sextet(((a & 0x03) << 4) | (b >> 4))
    out[out_offset + 2] = encode_sextet((b & 0x0F) << 2)
  }

  out
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
fn make_hot_corpus() -> Array[FixedArray[Byte]] {
  let corpus = Array::new()
  for seed in 0..<64 {
    let payload = make_pattern_bytes(768, seed)
    corpus.push(encode_baseline(payload, false))
  }
  corpus
}

///|
fn make_mixed_corpus() -> Array[FixedArray[Byte]] {
  let lengths = [
    1, 2, 3, 4, 5, 7, 8, 11, 12, 13, 15, 16, 17, 19, 24, 31, 32, 47, 48, 63, 64,
    95, 96, 127, 128, 191, 192,
  ]
  let corpus = Array::new()
  for seed in 0..<32 {
    for len in lengths {
      let payload = make_pattern_bytes(len, seed)
      corpus.push(encode_baseline(payload, true))
      corpus.push(encode_baseline(payload, false))
    }
  }
  corpus
}

///|
fn checksum_bytes(bytes : FixedArray[Byte]) -> Int {
  let len = bytes.length()
  if len == 0 {
    0
  } else {
    len * 257 + bytes[0].to_int() * 17 + bytes[len - 1].to_int()
  }
}

///|
fn run_simd(corpus : Array[FixedArray[Byte]]) -> Int {
  let mut checksum = 0
  for encoded in corpus {
    match @base64.decode(encoded) {
      Some(decoded) =>
        checksum = (checksum * 131 + checksum_bytes(decoded)) & 0x7FFFFFFF
      None => panic()
    }
  }
  checksum
}

///|
fn run_baseline(corpus : Array[FixedArray[Byte]]) -> Int {
  let mut checksum = 0
  for encoded in corpus {
    match @base64.decode_baseline(encoded) {
      Some(decoded) =>
        checksum = (checksum * 131 + checksum_bytes(decoded)) & 0x7FFFFFFF
      None => panic()
    }
  }
  checksum
}

///|
fn report_corpus(name : String, corpus : Array[FixedArray[Byte]]) -> Unit {
  let bench = @bench.new()
  bench.bench(name="\{name} simd", count=20, fn() {
    bench.keep(run_simd(corpus))
  })
  bench.bench(name="\{name} baseline", count=20, fn() {
    bench.keep(run_baseline(corpus))
  })
  println("corpus=\{name}")
  println("  cases=\{corpus.length()}")
  println(bench.dump_summaries())
}

///|
fn main {
  let hot = make_hot_corpus()
  let mixed = make_mixed_corpus()
  report_corpus("hot-full-blocks", hot)
  report_corpus("mixed", mixed)
}
