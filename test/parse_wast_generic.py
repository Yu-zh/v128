#!/usr/bin/env python3
"""
Generic parser for WebAssembly SIMD test files (.wast format)
Can be configured for different vector types (i8x16, i16x8, i32x4, i64x2, etc.)
"""

import re
import sys
from typing import List, Tuple, Optional

class WastTestParser:
    """Parser for WebAssembly SIMD test files"""

    def __init__(self, vector_type: str, element_type: str, num_lanes: int):
        """
        Args:
            vector_type: e.g., "i16x8", "i32x4", "i8x16"
            element_type: MoonBit type name, e.g., "I16x8", "I32x4"
            num_lanes: Number of lanes in the vector (8 for i16x8, 4 for i32x4, etc.)
        """
        self.vector_type = vector_type
        self.element_type = element_type
        self.num_lanes = num_lanes

    def convert_to_moonbit_literal(self, val: int, signed_bits: int) -> str:
        """
        Convert a value to proper MoonBit literal format

        Args:
            val: The integer value
            signed_bits: Bit width for signed interpretation (16 for Int16, 32 for Int, etc.)

        Returns:
            MoonBit literal string
        """
        # Determine the type names based on bit width
        type_map = {
            8: ("Int", "Byte", "to_byte"),
            16: ("Int16", "UInt16", "reinterpret_as_uint16"),
            32: ("Int", "UInt", "reinterpret_as_uint"),
            64: ("Int64", "UInt64", "reinterpret_as_uint64"),
        }

        if signed_bits not in type_map:
            raise ValueError(f"Unsupported bit width: {signed_bits}")

        signed_type, unsigned_type, conversion_method = type_map[signed_bits]

        if val < 0:
            if signed_bits == 8:
                # Special case for I8x16 - no Int8 in MoonBit
                return f"({val} : Int).{conversion_method}()"
            else:
                return f"({val} : {signed_type}).{conversion_method}()"
        else:
            return str(val)

    def parse_value(self, val_str: str, signed_bits: int) -> int:
        """Parse a value from wast format to integer"""
        val_str = val_str.strip().replace('_', '')  # Remove underscores

        # Negative hex format
        if val_str.startswith('-0x'):
            return -int(val_str[1:], 16)
        # Positive hex format
        elif val_str.startswith('0x'):
            val = int(val_str, 16)
            # Convert to signed if needed
            max_unsigned = (1 << signed_bits) - 1
            if val > (max_unsigned >> 1):
                val = val - (max_unsigned + 1)
            return val
        # Decimal format
        else:
            return int(val_str)

    def parse_vector_const(self, const_str: str, signed_bits: int) -> Optional[List[int]]:
        """Parse a v128.const from wast format"""
        # More flexible regex that matches the vector type and values
        # Matches: (v128.const TYPE value1 value2 ... valueN)
        pattern = rf'{self.vector_type}\s+((?:[\w\-\.]+\s+){{1,}}[\w\-\.]+)'
        match = re.search(pattern, const_str)
        if not match:
            return None

        values_str = match.group(1)
        # Split by whitespace, filter empty, and exclude closing parens
        values = [v for v in values_str.split() if v and not v.startswith(')')]

        # Filter out special float values (inf, nan, etc.)
        values = [v for v in values if v not in ['inf', '-inf', '+inf', 'nan', '-nan', '+nan']]

        if len(values) != self.num_lanes:
            return None

        try:
            return [self.parse_value(v, signed_bits) for v in values]
        except ValueError as e:
            print(f"Warning: Failed to parse values: {e}", file=sys.stderr)
            return None

    def parse_wast_file(self, filepath: str, operations: List[str], signed_bits: int) -> dict:
        """
        Parse a .wast file and extract tests for given operations

        Args:
            filepath: Path to the .wast file
            operations: List of operation names to extract (e.g., ["add", "sub", "mul"])
            signed_bits: Bit width for signed values (16 for i16x8, 32 for i32x4, etc.)

        Returns:
            Dictionary mapping operation names to lists of (v1, v2, expected) tuples
        """
        with open(filepath, 'r') as f:
            content = f.read()

        lines = content.split('\n')
        tests_by_op = {op: [] for op in operations}

        i = 0
        while i < len(lines):
            line = lines[i].strip()

            if line.startswith('(assert_return'):
                # Extract operation from invoke - more flexible regex
                invoke_pattern = rf'invoke "{self.vector_type}\.([\w_]+)"'
                invoke_match = re.search(invoke_pattern, line)

                if not invoke_match:
                    i += 1
                    continue

                current_op = invoke_match.group(1)

                if current_op not in operations:
                    i += 1
                    continue

                # Collect multi-line assertion by counting parentheses
                assertion = line
                open_count = line.count('(') - line.count(')')
                while open_count > 0 and i + 1 < len(lines):
                    i += 1
                    next_line = lines[i].strip()
                    assertion += ' ' + next_line
                    open_count += next_line.count('(') - next_line.count(')')

                # Skip tests that mix with other vector types
                skip_types = ['i8x16', 'i16x8', 'i32x4', 'i64x2', 'f32x4', 'f64x2']
                skip_types.remove(self.vector_type)
                if any(t in assertion for t in skip_types):
                    i += 1
                    continue

                # Extract all v128.const declarations - very flexible regex
                const_pattern = r'\(v128\.const\s+\w+\s+[^)]+\)'
                consts = re.findall(const_pattern, assertion)

                if len(consts) == 3:
                    v1_vals = self.parse_vector_const(consts[0], signed_bits)
                    v2_vals = self.parse_vector_const(consts[1], signed_bits)
                    expected_vals = self.parse_vector_const(consts[2], signed_bits)

                    if v1_vals and v2_vals and expected_vals:
                        tests_by_op[current_op].append((v1_vals, v2_vals, expected_vals))

            i += 1

        return tests_by_op

    def generate_moonbit_tests(self, tests_by_op: dict, signed_bits: int,
                               max_tests_per_op: int = 15) -> str:
        """
        Generate MoonBit test code from parsed tests

        Args:
            tests_by_op: Dictionary from parse_wast_file
            signed_bits: Bit width for signed values
            max_tests_per_op: Maximum tests to generate per operation

        Returns:
            String containing MoonBit test code
        """
        output = []
        output.append(f"// {self.vector_type} tests")
        output.append("")

        test_num = 1
        for op, tests in tests_by_op.items():
            if not tests:
                continue

            output.append(f"// {self.vector_type}.{op} tests")
            output.append("")

            # Select representative subset if too many tests
            selected_tests = tests[:max_tests_per_op] if len(tests) > max_tests_per_op else tests

            for v1, v2, expected in selected_tests:
                v1_str = f"{self.element_type}::const_({', '.join(self.convert_to_moonbit_literal(v, signed_bits) for v in v1)})"
                v2_str = f"{self.element_type}::const_({', '.join(self.convert_to_moonbit_literal(v, signed_bits) for v in v2)})"
                exp_str = f"{self.element_type}::const_({', '.join(self.convert_to_moonbit_literal(v, signed_bits) for v in expected)})"

                output.append("///|")
                output.append(f'test "{self.vector_type}_{op}_{test_num}" {{')
                output.append(f"  let v1 = {v1_str}")
                output.append(f"  let v2 = {v2_str}")
                output.append(f"  let expected = {exp_str}")
                output.append(f"  assert_eq({self.element_type}::{op}(v1, v2), expected)")
                output.append("}")
                output.append("")

                test_num += 1

        return '\n'.join(output)


def main():
    """Example usage"""
    if len(sys.argv) < 4:
        print("Usage: python parse_wast_generic.py <wast_file> <vector_type> <operations>")
        print("Example: python parse_wast_generic.py test.wast i16x8 add,sub,mul")
        sys.exit(1)

    wast_file = sys.argv[1]
    vector_type = sys.argv[2]
    operations = sys.argv[3].split(',')

    # Configure based on vector type
    config = {
        'i8x16': ('I8x16', 16, 8),
        'i16x8': ('I16x8', 8, 16),
        'i32x4': ('I32x4', 4, 32),
        'i64x2': ('I64x2', 2, 64),
    }

    if vector_type not in config:
        print(f"Unsupported vector type: {vector_type}")
        sys.exit(1)

    element_type, num_lanes, signed_bits = config[vector_type]

    parser = WastTestParser(vector_type, element_type, num_lanes)
    tests_by_op = parser.parse_wast_file(wast_file, operations, signed_bits)

    # Print statistics to stderr
    for op, tests in tests_by_op.items():
        print(f"// {op}: {len(tests)} tests found", file=sys.stderr)

    # Generate MoonBit tests to stdout
    code = parser.generate_moonbit_tests(tests_by_op, signed_bits)
    print(code)


if __name__ == '__main__':
    main()
