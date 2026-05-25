# Module `ATTDC`

- Functions: **41**
- Confidence: high=0, medium=19, low=8, unknown=14

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `0x01B3` | `sub_01B3` | NEAR | 110 | Calls DOS services via INT 21h (110 instr). | medium |
| `0x02C0` | `sub_02C0` | NEAR | 1322 | Calls BIOS services via INT 10h (video, 1322 instr). | medium |
| `0x0E98` | `sub_0E98` | NEAR | 22 | Unclassified function (22 instr). | unknown |
| `0x0ED6` | `sub_0ED6` | NEAR | 17 | Iterator with string ops (movsb/scasb/...) (17 instr). | medium |
| `0x0EEE` | `sub_0EEE` | NEAR | 11 | Unclassified function (11 instr). | unknown |
| `0x0F05` | `sub_0F05` | NEAR | 10 | Wrapper delegating to sub_0F1C. | medium |
| `0x0F1C` | `sub_0F1C` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x0F43` | `sub_0F43` | NEAR | 39 | Iterator with string ops (movsb/scasb/...) (39 instr). | medium |
| `0x0F94` | `sub_0F94` | NEAR | 15 | Wrapper delegating to sub_0FB9. | medium |
| `0x0FB9` | `sub_0FB9` | NEAR | 40 | Iterator with string ops (movsb/scasb/...) (40 instr). | medium |
| `0x100B` | `sub_100B` | NEAR | 42 | Iterator with string ops (movsb/scasb/...) (42 instr). | medium |
| `0x105D` | `sub_105D` | NEAR | 28 | Iterator with string ops (movsb/scasb/...) (28 instr). | medium |
| `0x1098` | `sub_1098` | NEAR | 26 | Iterator with string ops (movsb/scasb/...) (26 instr). | medium |
| `0x10C9` | `sub_10C9` | NEAR | 16 | Leaf function (no callees, 16 instr): likely arithmetic/conversion helper. | low |
| `0x10F2` | `sub_10F2` | NEAR | 65 | Iterator with loop (65 instr). | medium |
| `0x118E` | `sub_118E` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x11AE` | `sub_11AE` | NEAR | 70 | Iterator with string ops (movsb/scasb/...) (70 instr). | medium |
| `0x123B` | `sub_123B` | NEAR | 36 | Dispatcher: cmp+jcc decision table (36 instr). | medium |
| `0x129C` | `sub_129C` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x12C8` | `sub_12C8` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x12CC` | `sub_12CC` | FAR | 451 | Iterator with string ops (movsb/scasb/...) (451 instr). | medium |
| `0x16C7` | `sub_16C7` | NEAR | 50 | Dispatcher: cmp+jcc decision table (50 instr). | medium |
| `0x174C` | `sub_174C` | FAR | 180 | Iterator with string ops (movsb/scasb/...) (180 instr). | medium |
| `0x1901` | `sub_1901` | FAR | 149 | Iterator with string ops (movsb/scasb/...) (149 instr). | medium |
| `0x1A51` | `sub_1A51` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x1A56` | `sub_1A56` | FAR | 101 | Iterator with string ops (movsb/scasb/...) (101 instr). | medium |
| `0x1B1F` | `sub_1B1F` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x1B6D` | `sub_1B6D` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x1B73` | `sub_1B73` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x1BAB` | `sub_1BAB` | FAR | 69 | Mid-size function (69 instr, 2 calls). | low |
| `0x1C4B` | `sub_1C4B` | FAR | 163 | Complex function: 163 instructions, 2 calls, 1 branches. | low |
| `0x1D7B` | `sub_1D7B` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1D9E` | `sub_1D9E` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1DB6` | `sub_1DB6` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1DDD` | `sub_1DDD` | FAR | 33 | Mid-size function (33 instr, 0 calls). | low |
| `0x1E18` | `sub_1E18` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x1E37` | `sub_1E37` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1E62` | `sub_1E62` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1E77` | `sub_1E77` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `0x1E9F` | `sub_1E9F` | NEAR | 44 | Iterator with string ops (movsb/scasb/...) (44 instr). | medium |
| `0x1EFB` | `sub_1EFB` | NEAR | 18 | Leaf function (no callees, 18 instr): likely arithmetic/conversion helper. | low |
