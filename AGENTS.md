# v128 Agent Guide

This module is an experimental SIMD `v128` library for MoonBit. The public API is a virtual package, and the naming intentionally follows WebAssembly SIMD instructions closely. Preserve that mapping unless the user explicitly asks for an API redesign.

## Package Layout

- Root package: [`moon.pkg`](/Users/whitepie/playground/moonbit-playground/v128/moon.pkg) declares `Yu-zh/v128` as a virtual package with no default implementation.
- Interface source of truth: [`pkg.mbti`](/Users/whitepie/playground/moonbit-playground/v128/pkg.mbti) defines the virtual package surface. Treat it as maintained source, not generated output.
- Wasm backend: [`wasm/`](/Users/whitepie/playground/moonbit-playground/v128/wasm) implements `Yu-zh/v128` with `extern "wasm"` bindings and wasm intrinsics.
- Scalar backend: [`scalar/`](/Users/whitepie/playground/moonbit-playground/v128/scalar) implements the same interface in portable software. [`scalar/simd.mbt`](/Users/whitepie/playground/moonbit-playground/v128/scalar/simd.mbt) defines the concrete `V128` representation and lane conversion helpers.
- Tests: [`simple_test/`](/Users/whitepie/playground/moonbit-playground/v128/simple_test) exercises the virtual API through an override. [`test0/`](/Users/whitepie/playground/moonbit-playground/v128/test0) and [`main/`](/Users/whitepie/playground/moonbit-playground/v128/main) are small extra entry points wired to the wasm backend.

## Working Rules

- Keep function names and semantics aligned with wasm SIMD instructions. Avoid "idiomatic" renames that would break the instruction-to-API correspondence.
- When adding or changing an operation, update all three layers together:
  1. [`pkg.mbti`](/Users/whitepie/playground/moonbit-playground/v128/pkg.mbti)
  2. [`wasm/`](/Users/whitepie/playground/moonbit-playground/v128/wasm)
  3. [`scalar/`](/Users/whitepie/playground/moonbit-playground/v128/scalar)
- The scalar backend is expected to preserve lane order and bit-level reinterpretation behavior exactly. Be careful around signed vs unsigned lanes, saturating ops, and float bit casts.
- Keep MoonBit files in `///|` blocks. This repo already uses that style heavily, especially in the scalar implementation.
- If you temporarily switch tests to the scalar backend, restore the previous override unless the task is specifically changing the default test target.

## Testing Workflow

- Primary regression command:
  `moon test -p v128/simple_test --target wasm`
- The current default override in [`simple_test/moon.pkg`](/Users/whitepie/playground/moonbit-playground/v128/simple_test/moon.pkg) points to `Yu-zh/v128/wasm`.
- To run the same suite against the scalar backend, edit [`simple_test/moon.pkg`](/Users/whitepie/playground/moonbit-playground/v128/simple_test/moon.pkg) and change:
  `overrides: [ "Yu-zh/v128/wasm" ]`
  to:
  `overrides: [ "Yu-zh/v128/scalar" ]`
- This override swap is currently manual and awkward. Do not "clean it up" as part of unrelated work.
- After code changes, prefer:
  `moon test -p v128/simple_test --target wasm`
  and, when relevant, the same suite with the scalar override.

## Editing Guidance

- In [`wasm/op.mbt`](/Users/whitepie/playground/moonbit-playground/v128/wasm/op.mbt), prefer adding thin wasm bindings that match the instruction names already used in `pkg.mbti`.
- In [`scalar/op.mbt`](/Users/whitepie/playground/moonbit-playground/v128/scalar/op.mbt), keep implementations explicit and semantics-first. Straightforward code is preferable to clever code here.
- If you touch loads, stores, lane extraction, or reinterpretation logic, add or extend tests in [`simple_test/`](/Users/whitepie/playground/moonbit-playground/v128/simple_test).
- [`README.mbt.md`](/Users/whitepie/playground/moonbit-playground/v128/README.mbt.md) is minimal today. Do not assume it documents the backend-selection workflow; use the package files directly.
