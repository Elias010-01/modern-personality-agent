# Module `HERCULES`

- Functions: **57**
- Confidence: high=0, medium=27, low=12, unknown=18

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `CHECKCURSOR` | FAR | 22 | Unclassified function (22 instr). | unknown |
| `-` | `CONTROL` | FAR | 31 | Iterator with string ops (movsb/scasb/...) (31 instr). | medium |
| `-` | `DEVICEMODE` | FAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `-` | `DISABLE` | FAR | 20 | Unclassified function (20 instr). | unknown |
| `-` | `ENABLE` | FAR | 32 | Mid-size function (32 instr, 1 calls). | low |
| `-` | `ENUMDFONTS` | FAR | 14 | Enumerator: iterates over dfonts. | medium |
| `-` | `ENUMOBJ` | FAR | 64 | Enumerator: iterates over obj. | medium |
| `-` | `INQUIRE` | FAR | 23 | Unclassified function (23 instr). | unknown |
| `-` | `MOVECURSOR` | FAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `-` | `OUTPUT` | FAR | 206 | Iterator with string ops (movsb/scasb/...) (206 instr). | medium |
| `-` | `PIXEL` | FAR | 75 | Iterator with string ops (movsb/scasb/...) (75 instr). | medium |
| `-` | `REALIZEOBJECT` | FAR | 34 | Dispatcher: cmp+jcc decision table (34 instr). | medium |
| `-` | `SCANLR` | FAR | 114 | Iterator with string ops (movsb/scasb/...) (114 instr). | medium |
| `-` | `SETCURSOR` | FAR | 43 | Setter: changes cursor. | medium |
| `-` | `STRBLT` | FAR | 530 | Iterator with string ops (movsb/scasb/...) (530 instr). | medium |
| `0x0192` | `sub_0192` | NEAR | 13 | Calls BIOS services via INT 10h (video, 13 instr). | medium |
| `0x01AF` | `sub_01AF` | NEAR | 12 | Calls BIOS services via INT 10h (video, 12 instr). | medium |
| `0x01CA` | `sub_01CA` | FAR | 735 | Iterator with string ops (movsb/scasb/...) (735 instr). | medium |
| `0x0DC8` | `sub_0DC8` | NEAR | 22 | Unclassified function (22 instr). | unknown |
| `0x0E06` | `sub_0E06` | NEAR | 17 | Iterator with string ops (movsb/scasb/...) (17 instr). | medium |
| `0x0E1E` | `sub_0E1E` | NEAR | 11 | Unclassified function (11 instr). | unknown |
| `0x0E35` | `sub_0E35` | NEAR | 10 | Wrapper delegating to sub_0E4C. | medium |
| `0x0E4C` | `sub_0E4C` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x0E73` | `sub_0E73` | NEAR | 39 | Iterator with string ops (movsb/scasb/...) (39 instr). | medium |
| `0x0EC4` | `sub_0EC4` | NEAR | 15 | Wrapper delegating to sub_0EE9. | medium |
| `0x0EE9` | `sub_0EE9` | NEAR | 40 | Iterator with string ops (movsb/scasb/...) (40 instr). | medium |
| `0x0F3B` | `sub_0F3B` | NEAR | 42 | Iterator with string ops (movsb/scasb/...) (42 instr). | medium |
| `0x0F8D` | `sub_0F8D` | NEAR | 28 | Iterator with string ops (movsb/scasb/...) (28 instr). | medium |
| `0x0FC8` | `sub_0FC8` | NEAR | 26 | Iterator with string ops (movsb/scasb/...) (26 instr). | medium |
| `0x0FF9` | `sub_0FF9` | NEAR | 16 | Leaf function (no callees, 16 instr): likely arithmetic/conversion helper. | low |
| `0x1022` | `sub_1022` | NEAR | 65 | Iterator with loop (65 instr). | medium |
| `0x10BE` | `sub_10BE` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x10DE` | `sub_10DE` | NEAR | 70 | Iterator with string ops (movsb/scasb/...) (70 instr). | medium |
| `0x116B` | `sub_116B` | NEAR | 36 | Dispatcher: cmp+jcc decision table (36 instr). | medium |
| `0x11CC` | `sub_11CC` | NEAR | 23 | Unclassified function (23 instr). | unknown |
| `0x11FC` | `sub_11FC` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x1200` | `sub_1200` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x15FB` | `sub_15FB` | NEAR | 50 | Dispatcher: cmp+jcc decision table (50 instr). | medium |
| `0x1680` | `sub_1680` | NEAR | 102 | Iterator with string ops (movsb/scasb/...) (102 instr). | medium |
| `0x1835` | `sub_1835` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x1985` | `sub_1985` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x198A` | `sub_198A` | FAR | 70 | Iterator with string ops (movsb/scasb/...) (70 instr). | medium |
| `0x1A53` | `sub_1A53` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x1AA1` | `sub_1AA1` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x1AA7` | `sub_1AA7` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x1ADF` | `sub_1ADF` | NEAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `0x1B7F` | `sub_1B7F` | NEAR | 72 | Mid-size function (72 instr, 0 calls). | low |
| `0x1CAF` | `sub_1CAF` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1CD2` | `sub_1CD2` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1CEA` | `sub_1CEA` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1D11` | `sub_1D11` | FAR | 11 | Unclassified function (11 instr). | unknown |
| `0x1D4C` | `sub_1D4C` | NEAR | 14 | Unclassified function (14 instr). | unknown |
| `0x1D6B` | `sub_1D6B` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x1D96` | `sub_1D96` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x1DAB` | `sub_1DAB` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `0x1DD3` | `sub_1DD3` | NEAR | 44 | Iterator with string ops (movsb/scasb/...) (44 instr). | medium |
| `0x1E2F` | `sub_1E2F` | NEAR | 18 | Leaf function (no callees, 18 instr): likely arithmetic/conversion helper. | low |
