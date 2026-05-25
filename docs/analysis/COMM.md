# Module `COMM`

- Functions: **43**
- Confidence: high=0, medium=16, low=14, unknown=13

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `CCLRBRK` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `-` | `CEVT` | FAR | 16 | Unclassified function (16 instr). | unknown |
| `-` | `CEVTGET` | FAR | 16 | Unclassified function (16 instr). | unknown |
| `-` | `CEXTFCN` | FAR | 16 | Unclassified function (16 instr). | unknown |
| `-` | `CFLUSH` | FAR | 20 | Unclassified function (20 instr). | unknown |
| `-` | `CSETBRK` | FAR | 19 | Unclassified function (19 instr). | unknown |
| `-` | `CTX` | FAR | 16 | Unclassified function (16 instr). | unknown |
| `-` | `GETDCB` | FAR | 19 | Getter: returns dcb. | medium |
| `-` | `INICOM` | FAR | 15 | Wrapper delegating to sub_01D1. | medium |
| `-` | `RECCOM` | FAR | 21 | Unclassified function (21 instr). | unknown |
| `-` | `SETCOM` | FAR | 15 | Setter: changes com. | medium |
| `-` | `SETQUE` | FAR | 16 | Setter: changes que. | medium |
| `-` | `SNDCOM` | FAR | 16 | Unclassified function (16 instr). | unknown |
| `-` | `STACOM` | FAR | 20 | Unclassified function (20 instr). | unknown |
| `-` | `TRMCOM` | FAR | 15 | Wrapper delegating to sub_032D. | medium |
| `0x01D1` | `sub_01D1` | NEAR | 108 | Calls DOS services via INT 21h (108 instr). | medium |
| `0x02C0` | `sub_02C0` | NEAR | 20 | Unclassified function (20 instr). | unknown |
| `0x02E7` | `sub_02E7` | NEAR | 32 | Mid-size function (32 instr, 4 calls). | low |
| `0x032D` | `sub_032D` | NEAR | 40 | Mid-size function (40 instr, 5 calls). | low |
| `0x038D` | `sub_038D` | NEAR | 31 | Mid-size function (31 instr, 1 calls). | low |
| `0x03CD` | `sub_03CD` | NEAR | 14 | Calls DOS services via INT 21h (14 instr). | medium |
| `0x03E8` | `sub_03E8` | NEAR | 47 | Iterator with loop (47 instr). | medium |
| `0x044D` | `sub_044D` | NEAR | 95 | Iterator with loop (95 instr). | medium |
| `0x050E` | `sub_050E` | NEAR | 12 | Leaf function (no callees, 12 instr): likely arithmetic/conversion helper. | low |
| `0x0522` | `sub_0522` | NEAR | 7 | Wrapper delegating to sub_0530. | medium |
| `0x0530` | `sub_0530` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x0549` | `sub_0549` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x056A` | `sub_056A` | NEAR | 43 | Mid-size function (43 instr, 0 calls). | low |
| `0x05C6` | `sub_05C6` | FAR | 14 | Calls DOS services via INT 21h (14 instr). | medium |
| `0x05E6` | `sub_05E6` | NEAR | 47 | Mid-size function (47 instr, 0 calls). | low |
| `0x0656` | `sub_0656` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x065D` | `sub_065D` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x0677` | `sub_0677` | NEAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. | low |
| `0x06A3` | `sub_06A3` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x06C8` | `sub_06C8` | NEAR | 11 | Wrapper delegating to sub_0677. | medium |
| `0x06DE` | `sub_06DE` | NEAR | 13 | Wrapper delegating to sub_0677. | medium |
| `0x06F6` | `sub_06F6` | NEAR | 31 | Mid-size function (31 instr, 1 calls). | low |
| `0x0741` | `sub_0741` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x0746` | `sub_0746` | NEAR | 19 | Unclassified function (19 instr). | unknown |
| `0x076C` | `sub_076C` | NEAR | 61 | Iterator with string ops (movsb/scasb/...) (61 instr). | medium |
| `0x07DE` | `sub_07DE` | NEAR | 9 | Wrapper delegating to sub_0677. | medium |
| `0x07EE` | `sub_07EE` | NEAR | 57 | Mid-size function (57 instr, 2 calls). | low |
| `0x086F` | `sub_086F` | NEAR | 217 | Dispatcher: cmp+jcc decision table (217 instr). | medium |
