# Module `EGAMONO`

- Functions: **38**
- Confidence: high=0, medium=20, low=7, unknown=11

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `0x0178` | `sub_0178` | NEAR | 5 | Calls BIOS services via INT 10h (video, 5 instr). | medium |
| `0x0182` | `sub_0182` | NEAR | 7 | Wrapper delegating to sub_0194. | medium |
| `0x0194` | `sub_0194` | NEAR | 9 | Iterator with string ops (movsb/scasb/...) (9 instr). | medium |
| `0x01A0` | `sub_01A0` | NEAR | 11 | Unclassified function (11 instr). | unknown |
| `0x01B7` | `sub_01B7` | NEAR | 10 | Wrapper delegating to sub_01CE. | medium |
| `0x01CE` | `sub_01CE` | NEAR | 11 | Wrapper delegating to sub_04B7. | medium |
| `0x01EB` | `sub_01EB` | NEAR | 25 | Iterator with string ops (movsb/scasb/...) (25 instr). | medium |
| `0x0225` | `sub_0225` | NEAR | 15 | Wrapper delegating to sub_024A. | medium |
| `0x024A` | `sub_024A` | NEAR | 39 | Iterator with string ops (movsb/scasb/...) (39 instr). | medium |
| `0x0298` | `sub_0298` | NEAR | 42 | Iterator with string ops (movsb/scasb/...) (42 instr). | medium |
| `0x02E8` | `sub_02E8` | NEAR | 24 | Iterator with string ops (movsb/scasb/...) (24 instr). | medium |
| `0x031E` | `sub_031E` | NEAR | 22 | Iterator with string ops (movsb/scasb/...) (22 instr). | medium |
| `0x034A` | `sub_034A` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x036C` | `sub_036C` | NEAR | 63 | Iterator with loop (63 instr). | medium |
| `0x0402` | `sub_0402` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x0422` | `sub_0422` | NEAR | 33 | Iterator with string ops (movsb/scasb/...) (33 instr). | medium |
| `0x0457` | `sub_0457` | NEAR | 36 | Dispatcher: cmp+jcc decision table (36 instr). | medium |
| `0x04B7` | `sub_04B7` | FAR | 1660 | Iterator with string ops (movsb/scasb/...) (1660 instr). | medium |
| `0x135D` | `sub_135D` | NEAR | 50 | Dispatcher: cmp+jcc decision table (50 instr). | medium |
| `0x13E2` | `sub_13E2` | FAR | 180 | Iterator with string ops (movsb/scasb/...) (180 instr). | medium |
| `0x1597` | `sub_1597` | FAR | 149 | Iterator with string ops (movsb/scasb/...) (149 instr). | medium |
| `0x16E7` | `sub_16E7` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x16EC` | `sub_16EC` | FAR | 104 | Iterator with string ops (movsb/scasb/...) (104 instr). | medium |
| `0x17B5` | `sub_17B5` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x1803` | `sub_1803` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x1809` | `sub_1809` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x1841` | `sub_1841` | FAR | 69 | Mid-size function (69 instr, 2 calls). | low |
| `0x18E1` | `sub_18E1` | FAR | 160 | Complex function: 160 instructions, 1 calls, 1 branches. | low |
| `0x1A11` | `sub_1A11` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1A34` | `sub_1A34` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1A4C` | `sub_1A4C` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1A73` | `sub_1A73` | FAR | 33 | Mid-size function (33 instr, 0 calls). | low |
| `0x1AAE` | `sub_1AAE` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x1ACD` | `sub_1ACD` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1AF8` | `sub_1AF8` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1B0D` | `sub_1B0D` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `0x1B35` | `sub_1B35` | NEAR | 44 | Iterator with string ops (movsb/scasb/...) (44 instr). | medium |
| `0x1B91` | `sub_1B91` | NEAR | 18 | Leaf function (no callees, 18 instr): likely arithmetic/conversion helper. | low |
