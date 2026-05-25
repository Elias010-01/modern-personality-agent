# Module `SOUND`

- Functions: **34**
- Confidence: high=0, medium=20, low=9, unknown=5

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `CLOSESOUND` | FAR | 44 | Iterator with loop (44 instr). | medium |
| `-` | `COUNTVOICENOTES` | FAR | 29 | Unclassified function (29 instr). | unknown |
| `-` | `GETTHRESHOLDEVENT` | FAR | 23 | Getter: returns thresholdevent. | medium |
| `-` | `GETTHRESHOLDSTATUS` | FAR | 24 | Getter: returns thresholdstatus. | medium |
| `-` | `MYOPENSOUND` | FAR | 130 | Iterator with loop (130 instr). | medium |
| `-` | `SETSOUNDNOISE` | FAR | 27 | Setter: changes soundnoise. | medium |
| `-` | `SETVOICEACCENT` | FAR | 58 | Setter: changes voiceaccent. | medium |
| `-` | `SETVOICEENVELOPE` | FAR | 32 | Setter: changes voiceenvelope. | medium |
| `-` | `SETVOICENOTE` | FAR | 122 | Setter: changes voicenote. | medium |
| `-` | `SETVOICEQUEUESIZE` | FAR | 64 | Setter: changes voicequeuesize. | medium |
| `-` | `SETVOICESOUND` | FAR | 37 | Setter: changes voicesound. | medium |
| `-` | `SETVOICETHRESHOLD` | FAR | 28 | Setter: changes voicethreshold. | medium |
| `-` | `STARTSOUND` | FAR | 22 | Unclassified function (22 instr). | unknown |
| `-` | `STOPSOUND` | FAR | 22 | Unclassified function (22 instr). | unknown |
| `-` | `SYNCALLVOICES` | FAR | 32 | Mid-size function (32 instr, 2 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `0x0383` | `sub_0383` | FAR | 91 | Dispatcher: cmp+jcc decision table (91 instr). | medium |
| `0x0623` | `sub_0623` | NEAR | 60 | Mid-size function (60 instr, 1 calls). | low |
| `0x0694` | `sub_0694` | NEAR | 11 | Leaf function (no callees, 11 instr): likely arithmetic/conversion helper. | low |
| `0x06AC` | `sub_06AC` | NEAR | 143 | Dispatcher: cmp+jcc decision table (143 instr). | medium |
| `0x07C6` | `sub_07C6` | NEAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x07D4` | `sub_07D4` | NEAR | 9 | Leaf function (no callees, 9 instr): likely arithmetic/conversion helper. | low |
| `0x07E4` | `sub_07E4` | NEAR | 84 | Dispatcher: cmp+jcc decision table (84 instr). | medium |
| `0x08A6` | `sub_08A6` | NEAR | 27 | Unclassified function (27 instr). | unknown |
| `0x08E4` | `sub_08E4` | NEAR | 35 | Calls DOS services via INT 21h (35 instr). | medium |
| `0x0936` | `sub_0936` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x093C` | `sub_093C` | NEAR | 17 | Leaf function (no callees, 17 instr): likely arithmetic/conversion helper. | low |
| `0x095B` | `sub_095B` | NEAR | 11 | Leaf function (no callees, 11 instr): likely arithmetic/conversion helper. | low |
| `0x0972` | `sub_0972` | NEAR | 64 | Interrupt service routine (64 instructions, likely INT handler). | medium |
| `0x0A04` | `sub_0A04` | NEAR | 52 | Dispatcher: cmp+jcc decision table (52 instr). | medium |
| `0x0A84` | `sub_0A84` | NEAR | 69 | Dispatcher: cmp+jcc decision table (69 instr). | medium |
| `0x0B45` | `sub_0B45` | NEAR | 84 | Calls DOS services via INT 21h (84 instr). | medium |
| `0x0C16` | `sub_0C16` | NEAR | 18 | Unclassified function (18 instr). | unknown |
| `0x0C3C` | `sub_0C3C` | NEAR | 89 | Calls DOS services via INT 21h (89 instr). | medium |
