# MOUSE - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/MOUSE/MOUSE.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `MOUSE`
- Functions in retail build: **21**
- Constants: **0**
- Segments: **3**
- Names also in our retail `.DEF` exports: **3**

## Segment `_INIT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INITIALIZE` |  |
| `0x0109` | `BUSINIT` |  |
| `0x024B` | `CHIPINIT` |  |

## Segment `_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `Inquire` | [YES] |
| `0x0026` | `Enable` | [YES] |
| `0x00AE` | `Disable` | [YES] |
| `0x0106` | `SERIALINIT` |  |

## Segment `DGROUP` (14 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INQUIREDATA` |  |
| `0x000E` | `IO_BASE` |  |
| `0x0010` | `VECTOR` |  |
| `0x0011` | `MASK_8259` |  |
| `0x0012` | `ENABLED` |  |
| `0x001C` | `PRS232` |  |
| `0x001E` | `IRS232` |  |
| `0x0020` | `INT_COND` |  |
| `0x0022` | `BUTTON_STATE` |  |
| `0x0024` | `DELTA_X` |  |
| `0x0025` | `DELTA_Y` |  |
| `0x0026` | `MSTATE` |  |
| `0x0028` | `MOUSE_INT` |  |
| `0x004E` | `DEVICE_INT` |  |
