# Module `MSDOS`

- Functions: **143**
- Confidence: high=0, medium=92, low=37, unknown=14

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `0x0000` | `sub_0000` | NEAR | 10 | Calls DOS services via INT 21h (10 instr). | medium |
| `0x0016` | `sub_0016` | NEAR | 28 | Calls DOS services via INT 21h (28 instr). | medium |
| `0x005A` | `sub_005A` | NEAR | 14 | Calls DOS services via INT 21h (14 instr). | medium |
| `0x0074` | `sub_0074` | NEAR | 11 | Calls DOS services via INT 21h (11 instr). | medium |
| `0x0081` | `sub_0081` | FAR | 38 | Mid-size function (38 instr, 3 calls). | low |
| `0x008D` | `sub_008D` | NEAR | 19 | Unclassified function (19 instr). | unknown |
| `0x00B9` | `sub_00B9` | NEAR | 16 | Calls DOS services via INT 21h (16 instr). | medium |
| `0x00CB` | `sub_00CB` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x00D9` | `sub_00D9` | NEAR | 15 | Iterator with string ops (movsb/scasb/...) (15 instr). | medium |
| `0x00DC` | `sub_00DC` | NEAR | 163 | Dispatcher: cmp+jcc decision table (163 instr). | medium |
| `0x00F4` | `sub_00F4` | NEAR | 11 | Leaf function (no callees, 11 instr): likely arithmetic/conversion helper. | low |
| `0x00F7` | `sub_00F7` | FAR | 101 | Dispatcher: cmp+jcc decision table (101 instr). | medium |
| `0x010A` | `sub_010A` | NEAR | 24 | Calls DOS services via INT 21h (24 instr). | medium |
| `0x0144` | `sub_0144` | NEAR | 16 | Calls DOS services via INT 21h (16 instr). | medium |
| `0x0162` | `sub_0162` | NEAR | 11 | Calls DOS services via INT 21h (11 instr). | medium |
| `0x0176` | `sub_0176` | NEAR | 24 | Calls DOS services via INT 21h (24 instr). | medium |
| `0x01B0` | `sub_01B0` | NEAR | 39 | Calls DOS services via INT 21h (39 instr). | medium |
| `0x01F1` | `sub_01F1` | FAR | 25 | Unclassified function (25 instr). | unknown |
| `0x0213` | `sub_0213` | NEAR | 24 | Calls DOS services via INT 21h (24 instr). | medium |
| `0x0222` | `sub_0222` | FAR | 504 | Dispatcher: cmp+jcc decision table (504 instr). | medium |
| `0x024D` | `sub_024D` | FAR | 272 | Calls DOS services via INT 21h (272 instr). | medium |
| `0x02A8` | `sub_02A8` | NEAR | 260 | Complex function: 260 instructions, 15 calls, 4 branches. | low |
| `0x0504` | `sub_0504` | NEAR | 94 | Dispatcher: cmp+jcc decision table (94 instr). | medium |
| `0x0519` | `sub_0519` | FAR | 353 | Complex function: 353 instructions, 10 calls, 20 branches. | low |
| `0x0603` | `sub_0603` | NEAR | 194 | Dispatcher: cmp+jcc decision table (194 instr). | medium |
| `0x06F4` | `sub_06F4` | FAR | 40 | Mid-size function (40 instr, 4 calls). | low |
| `0x0752` | `sub_0752` | FAR | 113 | Iterator with string ops (movsb/scasb/...) (113 instr). | medium |
| `0x081B` | `sub_081B` | NEAR | 73 | Dispatcher: cmp+jcc decision table (73 instr). | medium |
| `0x0845` | `sub_0845` | NEAR | 4 | Wrapper delegating to sub_084C. | medium |
| `0x084C` | `sub_084C` | NEAR | 7 | Wrapper delegating to sub_085B. | medium |
| `0x085B` | `sub_085B` | NEAR | 12 | Iterator with string ops (movsb/scasb/...) (12 instr). | medium |
| `0x0874` | `sub_0874` | NEAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `0x087F` | `sub_087F` | NEAR | 9 | Calls DOS services via INT 21h (9 instr). | medium |
| `0x0886` | `sub_0886` | NEAR | 83 | Complex function: 83 instructions, 1 calls, 0 branches. | low |
| `0x0891` | `sub_0891` | FAR | 36 | Calls DOS services via INT 21h (36 instr). | medium |
| `0x08E1` | `sub_08E1` | FAR | 22 | Calls DOS services via INT 21h (22 instr). | medium |
| `0x08EF` | `sub_08EF` | NEAR | 31 | Dispatcher: cmp+jcc decision table (31 instr). | medium |
| `0x0907` | `sub_0907` | NEAR | 18 | Calls DOS services via INT 21h (18 instr). | medium |
| `0x0925` | `sub_0925` | FAR | 42 | Calls DOS services via INT 21h (42 instr). | medium |
| `0x0943` | `sub_0943` | FAR | 238 | Dispatcher: cmp+jcc decision table (238 instr). | medium |
| `0x095F` | `sub_095F` | FAR | 146 | Dispatcher: cmp+jcc decision table (146 instr). | medium |
| `0x0973` | `sub_0973` | NEAR | 11 | Calls DOS services via INT 21h (11 instr). | medium |
| `0x0989` | `sub_0989` | NEAR | 77 | Mid-size function (77 instr, 2 calls). | low |
| `0x0A52` | `sub_0A52` | NEAR | 86 | Dispatcher: cmp+jcc decision table (86 instr). | medium |
| `0x0AD3` | `sub_0AD3` | NEAR | 34 | Mid-size function (34 instr, 2 calls). | low |
| `0x0B19` | `sub_0B19` | FAR | 94 | Complex function: 94 instructions, 3 calls, 0 branches. | low |
| `0x0B2C` | `sub_0B2C` | FAR | 55 | Mid-size function (55 instr, 9 calls). | low |
| `0x0BC0` | `sub_0BC0` | FAR | 283 | Iterator with string ops (movsb/scasb/...) (283 instr). | medium |
| `0x0BE8` | `sub_0BE8` | NEAR | 46 | Mid-size function (46 instr, 0 calls). | low |
| `0x0C67` | `sub_0C67` | NEAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x0C91` | `sub_0C91` | NEAR | 73 | Dispatcher: cmp+jcc decision table (73 instr). | medium |
| `0x0D58` | `sub_0D58` | NEAR | 225 | Dispatcher: cmp+jcc decision table (225 instr). | medium |
| `0x0E80` | `sub_0E80` | NEAR | 9 | Unclassified function (9 instr). | unknown |
| `0x0E9A` | `sub_0E9A` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x0EB7` | `sub_0EB7` | FAR | 78 | Mid-size function (78 instr, 1 calls). | low |
| `0x0F4B` | `sub_0F4B` | NEAR | 84 | Dispatcher: cmp+jcc decision table (84 instr). | medium |
| `0x0FC2` | `sub_0FC2` | NEAR | 56 | Mid-size function (56 instr, 1 calls). | low |
| `0x0FF1` | `sub_0FF1` | NEAR | 99 | Iterator with string ops (movsb/scasb/...) (99 instr). | medium |
| `0x1048` | `sub_1048` | NEAR | 15 | Wrapper delegating to USER.MESSAGEBOX. | medium |
| `0x1067` | `sub_1067` | NEAR | 32 | Dispatcher: cmp+jcc decision table (32 instr). | medium |
| `0x10B0` | `sub_10B0` | NEAR | 281 | Dispatcher: cmp+jcc decision table (281 instr). | medium |
| `0x10CA` | `sub_10CA` | NEAR | 70 | Mid-size function (70 instr, 1 calls). | low |
| `0x1184` | `sub_1184` | FAR | 98 | Dispatcher: cmp+jcc decision table (98 instr). | medium |
| `0x126A` | `sub_126A` | FAR | 147 | Dispatcher: cmp+jcc decision table (147 instr). | medium |
| `0x13AD` | `sub_13AD` | NEAR | 300 | Dispatcher: cmp+jcc decision table (300 instr). | medium |
| `0x13E0` | `sub_13E0` | NEAR | 41 | Mid-size function (41 instr, 3 calls). | low |
| `0x143E` | `sub_143E` | FAR | 76 | Dispatcher: cmp+jcc decision table (76 instr). | medium |
| `0x14F2` | `sub_14F2` | FAR | 35 | Mid-size function (35 instr, 2 calls). | low |
| `0x152F` | `sub_152F` | NEAR | 21 | Dispatcher: cmp+jcc decision table (21 instr). | medium |
| `0x156B` | `sub_156B` | NEAR | 197 | Dispatcher: cmp+jcc decision table (197 instr). | medium |
| `0x16A7` | `sub_16A7` | NEAR | 32 | Mid-size function (32 instr, 1 calls). | low |
| `0x16F6` | `sub_16F6` | FAR | 62 | Mid-size function (62 instr, 0 calls). | low |
| `0x1782` | `sub_1782` | NEAR | 15 | Wrapper delegating to USER.ISRECTEMPTY. | medium |
| `0x1794` | `sub_1794` | NEAR | 41 | Mid-size function (41 instr, 5 calls). | low |
| `0x17AC` | `sub_17AC` | NEAR | 84 | Dispatcher: cmp+jcc decision table (84 instr). | medium |
| `0x17F4` | `sub_17F4` | NEAR | 30 | Unclassified function (30 instr). | unknown |
| `0x1841` | `sub_1841` | NEAR | 78 | Dispatcher: cmp+jcc decision table (78 instr). | medium |
| `0x1891` | `sub_1891` | NEAR | 40 | Dispatcher: cmp+jcc decision table (40 instr). | medium |
| `0x18F7` | `sub_18F7` | FAR | 132 | Dispatcher: cmp+jcc decision table (132 instr). | medium |
| `0x1909` | `sub_1909` | NEAR | 94 | Dispatcher: cmp+jcc decision table (94 instr). | medium |
| `0x1A07` | `sub_1A07` | NEAR | 145 | Dispatcher: cmp+jcc decision table (145 instr). | medium |
| `0x1A42` | `sub_1A42` | NEAR | 12 | Unclassified function (12 instr). | unknown |
| `0x1A5E` | `sub_1A5E` | NEAR | 35 | Iterator with string ops (movsb/scasb/...) (35 instr). | medium |
| `0x1AA5` | `sub_1AA5` | NEAR | 16 | Unclassified function (16 instr). | unknown |
| `0x1AC8` | `sub_1AC8` | NEAR | 34 | Iterator with string ops (movsb/scasb/...) (34 instr). | medium |
| `0x1B1C` | `sub_1B1C` | NEAR | 64 | Iterator with string ops (movsb/scasb/...) (64 instr). | medium |
| `0x1B72` | `sub_1B72` | NEAR | 126 | Dispatcher: cmp+jcc decision table (126 instr). | medium |
| `0x1BBA` | `sub_1BBA` | NEAR | 31 | Mid-size function (31 instr, 2 calls). | low |
| `0x1C05` | `sub_1C05` | FAR | 25 | Unclassified function (25 instr). | unknown |
| `0x1C30` | `sub_1C30` | NEAR | 12 | Wrapper delegating to USER.ISRECTEMPTY. | medium |
| `0x1C4C` | `sub_1C4C` | NEAR | 121 | Dispatcher: cmp+jcc decision table (121 instr). | medium |
| `0x1CAF` | `sub_1CAF` | NEAR | 271 | Dispatcher: cmp+jcc decision table (271 instr). | medium |
| `0x1D7A` | `sub_1D7A` | NEAR | 52 | Mid-size function (52 instr, 2 calls). | low |
| `0x1DF0` | `sub_1DF0` | NEAR | 60 | Dispatcher: cmp+jcc decision table (60 instr). | medium |
| `0x1E9E` | `sub_1E9E` | NEAR | 20 | Unclassified function (20 instr). | unknown |
| `0x1ED3` | `sub_1ED3` | FAR | 33 | Mid-size function (33 instr, 4 calls). | low |
| `0x1F1E` | `sub_1F1E` | FAR | 106 | Dispatcher: cmp+jcc decision table (106 instr). | medium |
| `0x1F9F` | `sub_1F9F` | NEAR | 49 | Dispatcher: cmp+jcc decision table (49 instr). | medium |
| `0x2018` | `sub_2018` | NEAR | 113 | Dispatcher: cmp+jcc decision table (113 instr). | medium |
| `0x2019` | `sub_2019` | NEAR | 177 | Dispatcher: cmp+jcc decision table (177 instr). | medium |
| `0x212A` | `sub_212A` | NEAR | 160 | Dispatcher: cmp+jcc decision table (160 instr). | medium |
| `0x21E2` | `sub_21E2` | NEAR | 13 | Unclassified function (13 instr). | unknown |
| `0x2204` | `sub_2204` | NEAR | 52 | Mid-size function (52 instr, 6 calls). | low |
| `0x228B` | `sub_228B` | FAR | 149 | Dispatcher: cmp+jcc decision table (149 instr). | medium |
| `0x22EA` | `sub_22EA` | NEAR | 38 | Mid-size function (38 instr, 0 calls). | low |
| `0x234F` | `sub_234F` | NEAR | 56 | Dispatcher: cmp+jcc decision table (56 instr). | medium |
| `0x23ED` | `sub_23ED` | NEAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `0x23F7` | `sub_23F7` | FAR | 318 | Dispatcher: cmp+jcc decision table (318 instr). | medium |
| `0x2400` | `sub_2400` | NEAR | 12 | Wrapper delegating to sub_1B1C. | medium |
| `0x2420` | `sub_2420` | FAR | 265 | Dispatcher: cmp+jcc decision table (265 instr). | medium |
| `0x26AE` | `sub_26AE` | NEAR | 35 | Mid-size function (35 instr, 3 calls). | low |
| `0x2700` | `sub_2700` | NEAR | 4 | Calls DOS services via INT 21h (4 instr). | medium |
| `0x2707` | `sub_2707` | NEAR | 11 | Leaf function (no callees, 11 instr): likely arithmetic/conversion helper. | low |
| `0x271D` | `sub_271D` | FAR | 571 | Dispatcher: cmp+jcc decision table (571 instr). | medium |
| `0x272A` | `sub_272A` | NEAR | 47 | Dispatcher: cmp+jcc decision table (47 instr). | medium |
| `0x279F` | `sub_279F` | NEAR | 89 | Dispatcher: cmp+jcc decision table (89 instr). | medium |
| `0x2893` | `sub_2893` | NEAR | 56 | Mid-size function (56 instr, 1 calls). | low |
| `0x2927` | `sub_2927` | FAR | 131 | Dispatcher: cmp+jcc decision table (131 instr). | medium |
| `0x2A7D` | `sub_2A7D` | NEAR | 69 | Mid-size function (69 instr, 3 calls). | low |
| `0x2B35` | `sub_2B35` | NEAR | 202 | Dispatcher: cmp+jcc decision table (202 instr). | medium |
| `0x2CAC` | `sub_2CAC` | NEAR | 44 | Dispatcher: cmp+jcc decision table (44 instr). | medium |
| `0x2D21` | `sub_2D21` | FAR | 42 | Mid-size function (42 instr, 3 calls). | low |
| `0x2D58` | `sub_2D58` | NEAR | 88 | Dispatcher: cmp+jcc decision table (88 instr). | medium |
| `0x2D91` | `sub_2D91` | FAR | 18 | Unclassified function (18 instr). | unknown |
| `0x2DB6` | `sub_2DB6` | NEAR | 42 | Dispatcher: cmp+jcc decision table (42 instr). | medium |
| `0x2E2A` | `sub_2E2A` | NEAR | 81 | Complex function: 81 instructions, 5 calls, 6 branches. | low |
| `0x2E4A` | `sub_2E4A` | NEAR | 16 | Leaf function (no callees, 16 instr): likely arithmetic/conversion helper. | low |
| `0x2E70` | `sub_2E70` | NEAR | 8 | Wrapper delegating to sub_2D58. | medium |
| `0x2E80` | `sub_2E80` | NEAR | 6 | Leaf function (no callees, 6 instr): likely arithmetic/conversion helper. | low |
| `0x2E8F` | `sub_2E8F` | FAR | 319 | Dispatcher: cmp+jcc decision table (319 instr). | medium |
| `0x2EE1` | `sub_2EE1` | FAR | 79 | Dispatcher: cmp+jcc decision table (79 instr). | medium |
| `0x2F9E` | `sub_2F9E` | NEAR | 176 | Calls DOS services via INT 21h (176 instr). | medium |
| `0x3157` | `sub_3157` | FAR | 520 | Dispatcher: cmp+jcc decision table (520 instr). | medium |
| `0x31F6` | `sub_31F6` | NEAR | 124 | Dispatcher: cmp+jcc decision table (124 instr). | medium |
| `0x3327` | `sub_3327` | FAR | 63 | Mid-size function (63 instr, 3 calls). | low |
| `0x33B6` | `sub_33B6` | NEAR | 234 | Dispatcher: cmp+jcc decision table (234 instr). | medium |
| `0x3659` | `sub_3659` | NEAR | 29 | Unclassified function (29 instr). | unknown |
| `0x369E` | `sub_369E` | NEAR | 156 | Dispatcher: cmp+jcc decision table (156 instr). | medium |
| `0x36AE` | `sub_36AE` | FAR | 34 | Mid-size function (34 instr, 1 calls). | low |
| `0x36EE` | `sub_36EE` | FAR | 153 | Dispatcher: cmp+jcc decision table (153 instr). | medium |
| `0x3863` | `sub_3863` | NEAR | 172 | Dispatcher: cmp+jcc decision table (172 instr). | medium |
| `0x3A29` | `sub_3A29` | NEAR | 19 | Unclassified function (19 instr). | unknown |
| `0x3A4F` | `sub_3A4F` | FAR | 131 | Dispatcher: cmp+jcc decision table (131 instr). | medium |
