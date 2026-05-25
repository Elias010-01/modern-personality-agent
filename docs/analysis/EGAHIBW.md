# Module `EGAHIBW`

- Functions: **38**
- Confidence: high=0, medium=20, low=7, unknown=11

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `0x014D` | `sub_014D` | NEAR | 5 | Calls BIOS services via INT 10h (video, 5 instr). | medium |
| `0x0157` | `sub_0157` | NEAR | 7 | Wrapper delegating to sub_0169. | medium |
| `0x0169` | `sub_0169` | NEAR | 9 | Iterator with string ops (movsb/scasb/...) (9 instr). | medium |
| `0x0175` | `sub_0175` | NEAR | 11 | Unclassified function (11 instr). | unknown |
| `0x018C` | `sub_018C` | NEAR | 10 | Wrapper delegating to sub_01A3. | medium |
| `0x01A3` | `sub_01A3` | NEAR | 11 | Wrapper delegating to sub_048C. | medium |
| `0x01C0` | `sub_01C0` | NEAR | 25 | Iterator with string ops (movsb/scasb/...) (25 instr). | medium |
| `0x01FA` | `sub_01FA` | NEAR | 15 | Wrapper delegating to sub_021F. | medium |
| `0x021F` | `sub_021F` | NEAR | 39 | Iterator with string ops (movsb/scasb/...) (39 instr). | medium |
| `0x026D` | `sub_026D` | NEAR | 42 | Iterator with string ops (movsb/scasb/...) (42 instr). | medium |
| `0x02BD` | `sub_02BD` | NEAR | 24 | Iterator with string ops (movsb/scasb/...) (24 instr). | medium |
| `0x02F3` | `sub_02F3` | NEAR | 22 | Iterator with string ops (movsb/scasb/...) (22 instr). | medium |
| `0x031F` | `sub_031F` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x0341` | `sub_0341` | NEAR | 63 | Iterator with loop (63 instr). | medium |
| `0x03D7` | `sub_03D7` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x03F7` | `sub_03F7` | NEAR | 33 | Iterator with string ops (movsb/scasb/...) (33 instr). | medium |
| `0x042C` | `sub_042C` | NEAR | 36 | Dispatcher: cmp+jcc decision table (36 instr). | medium |
| `0x048C` | `sub_048C` | FAR | 1660 | Iterator with string ops (movsb/scasb/...) (1660 instr). | medium |
| `0x1332` | `sub_1332` | NEAR | 50 | Dispatcher: cmp+jcc decision table (50 instr). | medium |
| `0x13B7` | `sub_13B7` | FAR | 180 | Iterator with string ops (movsb/scasb/...) (180 instr). | medium |
| `0x156C` | `sub_156C` | FAR | 149 | Iterator with string ops (movsb/scasb/...) (149 instr). | medium |
| `0x16BC` | `sub_16BC` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x16C1` | `sub_16C1` | FAR | 104 | Iterator with string ops (movsb/scasb/...) (104 instr). | medium |
| `0x178A` | `sub_178A` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x17D8` | `sub_17D8` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x17DE` | `sub_17DE` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x1816` | `sub_1816` | FAR | 69 | Mid-size function (69 instr, 2 calls). | low |
| `0x18B6` | `sub_18B6` | FAR | 163 | Complex function: 163 instructions, 1 calls, 1 branches. | low |
| `0x19E6` | `sub_19E6` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1A09` | `sub_1A09` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1A21` | `sub_1A21` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1A48` | `sub_1A48` | FAR | 33 | Mid-size function (33 instr, 0 calls). | low |
| `0x1A83` | `sub_1A83` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x1AA2` | `sub_1AA2` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1ACD` | `sub_1ACD` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1AE2` | `sub_1AE2` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `0x1B0A` | `sub_1B0A` | NEAR | 44 | Iterator with string ops (movsb/scasb/...) (44 instr). | medium |
| `0x1B66` | `sub_1B66` | NEAR | 18 | Leaf function (no callees, 18 instr): likely arithmetic/conversion helper. | low |
