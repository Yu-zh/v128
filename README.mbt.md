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
