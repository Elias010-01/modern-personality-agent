# Module `MOUSE`

- Functions: **11**
- Confidence: high=0, medium=6, low=1, unknown=4

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `DISABLE` | FAR | 34 | Calls DOS services via INT 21h (34 instr). | medium |
| `-` | `ENABLE` | FAR | 22 | Unclassified function (22 instr). | unknown |
| `-` | `INQUIRE` | FAR | 23 | Unclassified function (23 instr). | unknown |
| `-` | `entry` | FAR | 34 | Mid-size function (34 instr, 2 calls). | low |
| `0x0056` | `sub_0056` | NEAR | 29 | Calls DOS services via INT 21h (29 instr). | medium |
| `0x00A0` | `sub_00A0` | FAR | 11 | Unclassified function (11 instr). | unknown |
| `0x00FC` | `sub_00FC` | FAR | 11 | Unclassified function (11 instr). | unknown |
| `0x010B` | `sub_010B` | NEAR | 127 | Iterator with loop (127 instr). | medium |
| `0x010C` | `sub_010C` | FAR | 94 | Iterator with string ops (movsb/scasb/...) (94 instr). | medium |
| `0x024D` | `sub_024D` | NEAR | 118 | Interrupt service routine (118 instructions, likely INT handler). | medium |
| `0x034C` | `sub_034C` | NEAR | 61 | Iterator with loop (61 instr). | medium |
