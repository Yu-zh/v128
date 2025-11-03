#!/usr/bin/env python3
import re
import sys

def u16(val):
    """Convert to proper UInt16 literal format"""
    if val < 0:
        return f"({val} : Int16).reinterpret_as_uint16()"
    else:
        return str(val)

def parse_value(val_str):
    """Parse a value from wast format"""
    val_str = val_str.strip().replace('_', '')  # Remove underscores

    # Negative hex format
    if val_str.startswith('-0x'):
        val = -int(val_str[1:], 16)
        return val
    # Positive hex format
    elif val_str.startswith('0x'):
        val = int(val_str, 16)
        # Convert to signed 16-bit if needed
        if val > 32767:
            val = val - 65536
        return val
    # Decimal format (positive or negative)
    else:
        return int(val_str)

def parse_vector_const(const_str):
    """Parse a v128.const from wast format"""
    # Extract values between parentheses
    # Format: (v128.const i16x8 val1 val2 ... val8)
    match = re.search(r'i16x8\s+([^)]+)', const_str)
    if not match:
        return None

    values_str = match.group(1)
    # Split by whitespace and filter empty
    values = [v for v in values_str.split() if v and v != ')']

    if len(values) != 8:
        return None

    return [parse_value(v) for v in values]

# Read the wast file
with open('/tmp/simd_i16x8_sat_arith.wast', 'r') as f:
    content = f.read()

# Parse tests
lines = content.split('\n')

operations = ['add_sat_s', 'add_sat_u', 'sub_sat_s', 'sub_sat_u']
tests_by_op = {op: [] for op in operations}

current_op = None
i = 0
while i < len(lines):
    line = lines[i].strip()

    # Detect operation section with better pattern matching
    for op in operations:
        if f';; i16x8.{op}' in line:
            current_op = op
            break

    # Parse assert_return - detect operation from invoke
    if line.startswith('(assert_return'):
        # Extract operation from invoke
        invoke_match = re.search(r'invoke "i16x8\.(\w+)"', line)
        if invoke_match:
            current_op = invoke_match.group(1)

        if not current_op or current_op not in operations:
            i += 1
            continue

        # Collect multi-line assertion
        # Count parentheses to know when we're done
        assertion = line
        open_count = line.count('(') - line.count(')')
        while open_count > 0:
            i += 1
            if i >= len(lines):
                break
            next_line = lines[i].strip()
            assertion += ' ' + next_line
            open_count += next_line.count('(') - next_line.count(')')

        # Skip non-i16x8 tests
        if 'i8x16' in assertion or 'i32x4' in assertion or 'i64x2' in assertion:
            i += 1
            continue

        # Parse the three v128.const parts
        # Need to match v128.const i16x8 followed by 8 values (numbers, hex, negative, with optional underscores)
        consts = re.findall(r'\(v128\.const\s+i16x8\s+(?:[0-9x\-_]+\s+){7}[0-9x\-_]+\)', assertion)
        if len(consts) == 3:
            v1_vals = parse_vector_const(consts[0])
            v2_vals = parse_vector_const(consts[1])
            expected_vals = parse_vector_const(consts[2])

            if v1_vals and v2_vals and expected_vals:
                tests_by_op[current_op].append((v1_vals, v2_vals, expected_vals))

    i += 1

# Select representative tests for each operation (10-12 tests per operation)
def select_representative_tests(tests, op_name):
    """Select diverse test cases covering key scenarios"""
    selected = []

    # Always include first few tests (basic cases)
    selected.extend(tests[:3])

    # Include tests with saturation (look for max/min values in results)
    for v1, v2, expected in tests:
        if len(selected) >= 12:
            break
        # Look for saturation indicators
        has_sat = False
        if 'sat_s' in op_name:
            # Signed saturation at 32767 or -32768
            if 32767 in expected or -32768 in expected:
                has_sat = True
        else:
            # Unsigned saturation at 65535 or 0
            if 65535 in expected or (0 in expected and any(v > 0 for v in v1) and any(v > 0 for v in v2)):
                has_sat = True

        if has_sat and (v1, v2, expected) not in selected:
            selected.append((v1, v2, expected))

    # Include some from middle and end
    if len(tests) > 20:
        mid = len(tests) // 2
        if tests[mid] not in selected:
            selected.append(tests[mid])
        if tests[-1] not in selected and len(selected) < 12:
            selected.append(tests[-1])

    return selected[:12]

# Generate MoonBit tests
print('// i16x8 saturating arithmetic tests')
print()

test_num = 1
for op in operations:
    print(f'// i16x8.{op} tests')
    print()

    selected = select_representative_tests(tests_by_op[op], op)

    for v1, v2, expected in selected:
        v1_str = f"I16x8::const_({', '.join(u16(v) for v in v1)})"
        v2_str = f"I16x8::const_({', '.join(u16(v) for v in v2)})"
        exp_str = f"I16x8::const_({', '.join(u16(v) for v in expected)})"

        print(f'''///|
test "i16x8_{op}_{test_num}" {{
  let v1 = {v1_str}
  let v2 = {v2_str}
  let expected = {exp_str}
  assert_eq(I16x8::{op}(v1, v2), expected)
}}
''')
        test_num += 1

print(f'// Total tests generated: {test_num - 1}', file=sys.stderr)
for op in operations:
    print(f'// {op}: {len(tests_by_op[op])} tests available, {len(select_representative_tests(tests_by_op[op], op))} selected', file=sys.stderr)
