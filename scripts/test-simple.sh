#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: scripts/test-simple.sh <wasm|scalar|all> [moon test args...]

Examples:
  scripts/test-simple.sh wasm
  scripts/test-simple.sh scalar
  scripts/test-simple.sh all
  scripts/test-simple.sh scalar --filter 'I8x16::*'
  scripts/test-simple.sh scalar --target js
EOF
}

if [[ $# -lt 1 ]]; then
  usage >&2
  exit 1
fi

backend="$1"
shift

case "$backend" in
  wasm)
    backends=(wasm)
    ;;
  scalar)
    backends=(scalar)
    ;;
  all)
    backends=(wasm scalar)
    ;;
  -h|--help)
    usage
    exit 0
    ;;
  *)
    usage >&2
    exit 1
    ;;
esac

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd -- "$script_dir/.." && pwd)"
pkg_file="$repo_root/simple_test/moon.pkg"
pkg_backup="$(mktemp "${TMPDIR:-/tmp}/v128-simple-test.XXXXXX")"

cp "$pkg_file" "$pkg_backup"

cleanup() {
  cp "$pkg_backup" "$pkg_file"
  rm -f "$pkg_backup"
}

trap cleanup EXIT INT TERM

has_target_arg() {
  local arg
  for arg in "$@"; do
    case "$arg" in
      --target|--target=*)
        return 0
        ;;
    esac
  done
  return 1
}

set_override() {
  local impl="$1"
  local tmp_file

  tmp_file="$(mktemp "${TMPDIR:-/tmp}/v128-simple-test.XXXXXX")"
  sed \
    -e "s|Yu-zh/v128/wasm|Yu-zh/v128/$impl|g" \
    -e "s|Yu-zh/v128/scalar|Yu-zh/v128/$impl|g" \
    "$pkg_backup" > "$tmp_file"

  if ! grep -Fq "Yu-zh/v128/$impl" "$tmp_file"; then
    rm -f "$tmp_file"
    echo "failed to switch simple_test override to Yu-zh/v128/$impl" >&2
    exit 1
  fi

  mv "$tmp_file" "$pkg_file"
}

run_backend() {
  local impl="$1"
  local default_target
  local -a cmd
  shift

  case "$impl" in
    wasm)
      default_target="wasm"
      ;;
    scalar)
      default_target="native"
      ;;
    *)
      echo "unknown backend: $impl" >&2
      exit 1
      ;;
  esac

  set_override "$impl"

  cmd=(moon test -p v128/simple_test)
  if ! has_target_arg "$@"; then
    cmd+=(--target "$default_target")
  fi
  cmd+=("$@")

  printf '==> simple_test backend=%s\n' "$impl"
  (cd "$repo_root" && "${cmd[@]}")
}

status=0
for impl in "${backends[@]}"; do
  if run_backend "$impl" "$@"; then
    :
  else
    status=$?
  fi
done

exit "$status"
