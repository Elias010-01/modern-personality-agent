# USA - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/USA/USA.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `KEYBOARD`
- Functions in retail build: **16**
- Constants: **1**
- Segments: **3**
- Names also in our retail `.DEF` exports: **6**

## Segment `_INIT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `KBINIT` |  |

## Segment `_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `Inquire` | [YES] |
| `0x0034` | `Disable` | [YES] |
| `0x0083` | `Enable` | [YES] |
| `0x023E` | `AnsiToOem` | [YES] |
| `0x0254` | `OemToAnsi` | [YES] |
| `0x026A` | `ToAscii` | [YES] |

## Segment `DGROUP` (9 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INQUIREDATA` |  |
| `0x000C` | `BIOS_PROC` |  |
| `0x0010` | `BIOS1B_PROC` |  |
| `0x0014` | `LIGHTSADDR` |  |
| `0x0020` | `FKBRT` |  |
| `0x0027` | `KEYBD_INT` |  |
| `0x01EE` | `INT1BHANDLER` |  |
| `0x0334` | `KEYTRANSLATIONTABLE` |  |
| `0x038D` | `KEYNUMTRANS` |  |
