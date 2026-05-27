# EPSON - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/EPSON/EPSON.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `EPSON`
- Functions in retail build: **72**
- Constants: **6**
- Segments: **3**
- Names also in our retail `.DEF` exports: **14**

## Segment `_TEXT` (31 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `OFFSETCLIPRECT` |  |
| `0x0039` | `COPY` |  |
| `0x0060` | `Control` | [YES] |
| `0x046B` | `MYWRITESPOOL` |  |
| `0x04C1` | `Enable` | [YES] |
| `0x05F4` | `Disable` | [YES] |
| `0x062B` | `SETDEVICEMODE` |  |
| `0x0689` | `ISUSA` |  |
| `0x06D4` | `ATOI` |  |
| `0x0715` | `LINE_OUT` |  |
| `0x080B` | `DUMP` |  |
| `0x0930` | `EPSSTRIP` |  |
| `0x095A` | `MYWRITE` |  |
| `0x09D7` | `CH_LINE_OUT` |  |
| `0x0AA2` | `YMOVETO` |  |
| `0x0B50` | `XMOVETO` |  |
| `0x0C36` | `Bitblt` | [YES] |
| `0x0CA1` | `Pixel` | [YES] |
| `0x0CF4` | `Output` | [YES] |
| `0x0E21` | `StrBlt` | [YES] |
| `0x0F81` | `ScanLR` | [YES] |
| `0x0FCD` | `EnumObj` | [YES] |
| `0x1010` | `ColorInfo` | [YES] |
| `0x1050` | `RealizeObject` | [YES] |
| `0x10CE` | `FAKE` |  |
| `0x1160` | `_chkstk` |  |
| `0x1160` | `chkstk` |  |
| `0x1160` | `__chkstk` |  |
| `0x117D` | `__astkovr` |  |
| `0x1180` | `__cintDIV` |  |
| `0x1183` | `__fptrap` |  |

## Segment `_CHAR` (22 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DeviceMode` | [YES] |
| `0x00EA` | `DialogFn` | [YES] |
| `0x0238` | `TRANSLATE` |  |
| `0x0273` | `STARTSTYLE` |  |
| `0x02E7` | `ENDSTYLE` |  |
| `0x035B` | `CHREALIZEOBJECT` |  |
| `0x0541` | `EnumDFonts` | [YES] |
| `0x05FB` | `CODETOINFO` |  |
| `0x07A3` | `INFOTOCODE` |  |
| `0x085F` | `GETFACENAME` |  |
| `0x089B` | `CHSTRBLT` |  |
| `0x0AB0` | `INSERTSTRING` |  |
| `0x0B86` | `CHECKSTRING` |  |
| `0x0CDB` | `MYALLOC` |  |
| `0x0D37` | `HEAPINIT` |  |
| `0x0D7C` | `STR_OUT` |  |
| `0x0F99` | `GETSPECIALWIDTH` |  |
| `0x1030` | `EP_OUTPUT_STRING` |  |
| `0x10AF` | `CHAR_OUT` |  |
| `0x11C7` | `DRAFTSTRBLT` |  |
| `0x1378` | `FINDWORD` |  |
| `0x13B2` | `SETMODE` |  |

## Segment `DGROUP` (19 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0004` | `rsrvptrs` |  |
| `0x0010` | `LAND_INFOBASE` |  |
| `0x0078` | `PORT_INFOBASE` |  |
| `0x0106` | `ASPECT` |  |
| `0x017E` | `FONTTABLE` |  |
| `0x01CE` | `FACENAMES` |  |
| `0x01E4` | `PCSB` |  |
| `0x020E` | `PCSBTAB` |  |
| `0x028A` | `PAPERFORMAT` |  |
| `0x02DE` | `RESET` |  |
| `0x02E2` | `DELY` |  |
| `0x02E8` | `ESCAPECODE` |  |
| `0x0306` | `LAND_DEVICE` |  |
| `0x034E` | `PORT_DEVICE` |  |
| `0x0396` | `COUNTRYESC` |  |
| `0x039E` | `TRANS` |  |
| `0x045E` | `TRANS_WIDTH` |  |
| `0x04C0` | `_edata` |  |
| `0x04C0` | `DEVMODE` |  |
