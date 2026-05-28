# Yu-zh/v128

## Testing

Run the main wasm-backed test suite with:

```sh
scripts/test-simple.sh wasm
```

Run the same suite against the scalar implementation with:

```sh
scripts/test-simple.sh scalar
```

Run both backends in sequence with:

```sh
scripts/test-simple.sh all
```

The helper temporarily switches the override in `simple_test/moon.pkg`, runs `moon test`, and restores the original file afterwards. It defaults to `--target wasm` for the wasm backend and `--target native` for the scalar backend, but you can pass extra `moon test` flags such as `--filter` or an explicit `--target`.

## Base64 Benchmark

The SIMD base64 example lives in `example/base64`. Run its benchmark with:

```sh
moon run example/base64/benchmark --target wasm --release
```

On `moon 0.1.20260522`, recent wasm release results were:

| Corpus | SIMD median | Baseline median | Median speedup |
| --- | ---: | ---: | ---: |
| hot full blocks | 129 us | 500 us | 3.86x |
| mixed | 347 us | 743 us | 2.14x |

The size sweep showed the SIMD path becoming clearly faster once payloads reach about 12 bytes, with larger inputs reaching roughly 3.6x to 5.7x median speedup in that run.
