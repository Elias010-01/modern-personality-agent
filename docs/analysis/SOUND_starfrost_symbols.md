# SOUND - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/SOUND/SOUND.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `SOUND`
- Functions in retail build: **85**
- Constants: **0**
- Segments: **3**
- Names also in our retail `.DEF` exports: **18**

## Segment `_TEXT` (56 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CHECKPID` |  |
| `0x0000` | `MDD_CSTART` |  |
| `0x000A` | `CLOSESOUND` | [YES] |
| `0x005D` | `MYOPENSOUND` | [YES] |
| `0x0164` | `SETVOICEQUEUESIZE` | [YES] |
| `0x01EC` | `SETVOICENOTE` | [YES] |
| `0x02EC` | `NOTE_TBL` |  |
| `0x0304` | `SETVOICEACCENT` | [YES] |
| `0x0383` | `FIELD_ERRORS` |  |
| `0x039F` | `WAITSOUNDSTATE` | [YES] |
| `0x0435` | `STARTSOUND` | [YES] |
| `0x0458` | `STOPSOUND` | [YES] |
| `0x047B` | `GETTHRESHOLDEVENT` | [YES] |
| `0x04A0` | `GETTHRESHOLDSTATUS` | [YES] |
| `0x04C7` | `SETVOICETHRESHOLD` | [YES] |
| `0x04FC` | `COUNTVOICENOTES` | [YES] |
| `0x0532` | `SYNCALLVOICES` | [YES] |
| `0x0569` | `SETSOUNDNOISE` | [YES] |
| `0x059B` | `SETVOICESOUND` | [YES] |
| `0x05E4` | `SETVOICEENVELOPE` | [YES] |
| `0x0623` | `MDD_PLAY` |  |
| `0x0635` | `F_TABLE` |  |
| `0x0651` | `MDD_VOICE` |  |
| `0x066B` | `MDD_INIQ` |  |
| `0x0694` | `QUEUE_IN` |  |
| `0x06AC` | `CHECK_SPACE` |  |
| `0x06BF` | `QUEUE_NOTE` |  |
| `0x0713` | `QUEUE_SYNC` |  |
| `0x073B` | `QUEUE_VOLUME` |  |
| `0x078D` | `Q_ENVELOPE` |  |
| `0x078F` | `QUEUE_NOISE` |  |
| `0x07C6` | `CHECK_DURATION` |  |
| `0x07D4` | `CHECK_FREQ` |  |
| `0x07E4` | `FREQ_TO_TICS` |  |
| `0x0838` | `MDD_EVENT` |  |
| `0x083C` | `MDD_FLAGS` |  |
| `0x0851` | `NOTES_IN_QUEUE` |  |
| `0x0873` | `SET_THRESHOLD` |  |
| `0x087C` | `MDD_TERM` |  |
| `0x08A6` | `$SONOFF` |  |
| `0x08E4` | `$BONOFF` |  |
| `0x0907` | `MDD_DSEG` |  |
| `0x0909` | `ROM_TOD` |  |
| `0x090D` | `MACH_INIT` |  |
| `0x0936` | `GETMCHNID` |  |
| `0x093C` | `INI_QUE` |  |
| `0x095B` | `GET_Q_SEG` |  |
| `0x0972` | `QUEUE_OUT` |  |
| `0x098A` | `TIC_TOC` |  |
| `0x0A04` | `NEXT_SOUND` |  |
| `0x0A84` | `GET_SOUND` |  |
| `0x0B45` | `EVENT_TRAP` |  |
| `0x0B60` | `START_MUSIC` |  |
| `0x0C16` | `STOP_MUSIC` |  |
| `0x0C3C` | `$SNDOFF` |  |
| `0x0CF0` | `MDD_CEND` |  |

## Segment `_BEEP` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0006` | `OPENSOUND` | [YES] |
| `0x0044` | `DOBEEP` | [YES] |

## Segment `DGROUP` (27 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FULL_DUR` |  |
| `0x0000` | `MDD_DSTART` |  |
| `0x0002` | `NMVOICES` |  |
| `0x0003` | `NNVOICES` |  |
| `0x0004` | `NTVOICES` |  |
| `0x0005` | `TEW_PTR` |  |
| `0x0007` | `PID` |  |
| `0x0009` | `QLOCINFO` |  |
| `0x007A` | `BEEPSW` |  |
| `0x007C` | `CLK_TICS` |  |
| `0x007D` | `CUR_VOICE_ID` |  |
| `0x007E` | `$FIRST` |  |
| `0x007F` | `IN_TIC_TOC` |  |
| `0x0080` | `INT_LENGTH` |  |
| `0x0086` | `$MACHID` |  |
| `0x0087` | `$MUSIC` |  |
| `0x0088` | `NOW_PLAYING` |  |
| `0x0089` | `QCBLOCK` |  |
| `0x00C5` | `$SNDTIM` |  |
| `0x00CD` | `$SYNC` |  |
| `0x00CE` | `$SYNOFF` |  |
| `0x00D1` | `TEW_FLAGS` |  |
| `0x00D3` | `$TICHIP` |  |
| `0x00D4` | `TT_INSTALLED` |  |
| `0x00D5` | `VCEOFF` |  |
| `0x00D6` | `$VOICE` |  |
| `0x00DE` | `MDD_DEND` |  |
