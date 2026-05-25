# Module `SYSTEM`

- Functions: **6**
- Confidence: high=0, medium=5, low=1, unknown=0

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `CREATESYSTEMTIMER` | FAR | 35 | Constructor: creates systemtimer. | medium |
| `-` | `DISABLESYSTEMTIMERS` | FAR | 10 | Calls DOS services via INT 21h (10 instr). | medium |
| `-` | `ENABLESYSTEMTIMERS` | FAR | 17 | Calls DOS services via INT 21h (17 instr). | medium |
| `-` | `INQUIRELONGINTS` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `KILLSYSTEMTIMER` | FAR | 34 | Iterator with string ops (movsb/scasb/...) (34 instr). | medium |
| `0x018D` | `sub_018D` | NEAR | 262 | Interrupt service routine (262 instructions, likely INT handler). | medium |
