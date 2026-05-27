# SYSTEM - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/SYSTEM/SYSTEM.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `SYSTEM`
- Functions in retail build: **18**
- Constants: **0**
- Segments: **1**
- Names also in our retail `.DEF` exports: **6**

## Segment `_TEXT` (18 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ONEDRIVEFLAG` |  |
| `0x0001` | `PREVINT13PROC` |  |
| `0x0009` | `InquireSystem` | [YES] |
| `0x01D2` | `TIMERTABLE` |  |
| `0x0216` | `STACKBASE` |  |
| `0x02D6` | `PREVINT8PROC` |  |
| `0x02DA` | `LPTIMERTABLE` |  |
| `0x02DE` | `PREVSSSP` |  |
| `0x02E2` | `ENABLED` |  |
| `0x02E3` | `AT_DOS30` |  |
| `0x02EA` | `TIMER_INT` |  |
| `0x0305` | `TI1` |  |
| `0x0373` | `TI2` |  |
| `0x0374` | `EnableSystemTimers` | [YES] |
| `0x03A0` | `DisableSystemTimers` | [YES] |
| `0x03BC` | `CreateSystemTimer` | [YES] |
| `0x040C` | `KillSystemTimer` | [YES] |
| `0x044E` | `InquireLongInts` | [YES] |
