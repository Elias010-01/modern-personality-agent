# COMM - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/COMM/COMM.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `COMM`
- Functions in retail build: **199**
- Constants: **0**
- Segments: **2**
- Names also in our retail `.DEF` exports: **15**

## Segment `_TEXT` (194 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `inicom` | [YES] |
| `0x001B` | `setcom` | [YES] |
| `0x0036` | `setque` | [YES] |
| `0x0054` | `reccom` | [YES] |
| `0x007B` | `sndcom` | [YES] |
| `0x0099` | `ctx` | [YES] |
| `0x00B7` | `trmcom` | [YES] |
| `0x00D2` | `stacom` | [YES] |
| `0x00F4` | `cextfcn` | [YES] |
| `0x0112` | `cflush` | [YES] |
| `0x0134` | `cevt` | [YES] |
| `0x0152` | `cevtGet` | [YES] |
| `0x0170` | `csetbrk` | [YES] |
| `0x018F` | `cclrbrk` | [YES] |
| `0x01AE` | `getdcb` | [YES] |
| `0x01D1` | `INITCOM` |  |
| `0x01D1` | `$INICOM` |  |
| `0x01DB` | `INITCOM10` |  |
| `0x01DE` | `INITCOM20` |  |
| `0x01E1` | `INITCOM30` |  |
| `0x021A` | `INITCOM35` |  |
| `0x023D` | `INITCOM37` |  |
| `0x023F` | `INITCOM40` |  |
| `0x025B` | `INITCOM45` |  |
| `0x0273` | `INITCOM50` |  |
| `0x027D` | `INITCOM60` |  |
| `0x0289` | `INITCOM70` |  |
| `0x029B` | `INITCOM80` |  |
| `0x02A7` | `INITCOM85` |  |
| `0x02B4` | `INITCOM90` |  |
| `0x02B8` | `INITCOM95` |  |
| `0x02BD` | `INITCOM100` |  |
| `0x02C0` | `$SNDIMM` |  |
| `0x02C0` | `SENDIMM` |  |
| `0x02D1` | `SENDIMM10` |  |
| `0x02DE` | `SENDIMM20` |  |
| `0x02E0` | `SENDIMM30` |  |
| `0x02E2` | `SENDIMM40` |  |
| `0x02E7` | `SENDCOM` |  |
| `0x02E7` | `$SNDCOM` |  |
| `0x02F0` | `SENDCOM10` |  |
| `0x02F7` | `SENDCOM20` |  |
| `0x0316` | `SENDCOM30` |  |
| `0x0321` | `SENDCOM40` |  |
| `0x0324` | `SENDCOM50` |  |
| `0x0328` | `SENDCOM60` |  |
| `0x032D` | `TERMCOM` |  |
| `0x032D` | `$TRMCOM` |  |
| `0x0359` | `TERMCOM10` |  |
| `0x0365` | `TERMCOM12` |  |
| `0x0375` | `TERMCOM16` |  |
| `0x0381` | `TERMCOM20` |  |
| `0x0382` | `TERMCOM30` |  |
| `0x038A` | `TERMCOM60` |  |
| `0x038D` | `TERMINATE` |  |
| `0x03A6` | `TERMINATE5` |  |
| `0x03AB` | `TERMINATE10` |  |
| `0x03B4` | `TERMINATE20` |  |
| `0x03BB` | `TERMINATE30` |  |
| `0x03C2` | `TERMINATE40` |  |
| `0x03CD` | `TERMINATE45` |  |
| `0x03DC` | `TERMINATE50` |  |
| `0x03E8` | `MSRWAIT` |  |
| `0x03E9` | `MSRRESTART` |  |
| `0x03EB` | `MSRWAIT10` |  |
| `0x03EE` | `MSRWAIT20` |  |
| `0x0409` | `MSRWAIT30` |  |
| `0x0417` | `MSRWAIT40` |  |
| `0x0423` | `MSRWAIT50` |  |
| `0x0432` | `MSRWAIT60` |  |
| `0x043F` | `MSRWAIT70` |  |
| `0x0442` | `MSRWAIT80` |  |
| `0x0449` | `MSRWAIT90` |  |
| `0x044D` | `$SETCOM` |  |
| `0x045F` | `SETCOM5` |  |
| `0x0461` | `SETCOM10` |  |
| `0x0466` | `SETCOM20` |  |
| `0x04E6` | `SETCOM30` |  |
| `0x050E` | `SETCOM100` |  |
| `0x0522` | `SETCOM200` |  |
| `0x0530` | `SETCOM210` |  |
| `0x0538` | `SETCOM220` |  |
| `0x0540` | `SETCOM230` |  |
| `0x0548` | `SETCOM240` |  |
| `0x0549` | `SETCOM300` |  |
| `0x0563` | `SETCOM310` |  |
| `0x056A` | `SETCOM400` |  |
| `0x057E` | `SETCOM410` |  |
| `0x0582` | `SETCOM420` |  |
| `0x058C` | `SETCOM430` |  |
| `0x05AB` | `SETCOM440` |  |
| `0x05AD` | `SETCOM450` |  |
| `0x05BC` | `SETCOM460` |  |
| `0x05C1` | `SETCOM470` |  |
| `0x05C6` | `TESTINT2F` |  |
| `0x05DE` | `NOINT2FS` |  |
| `0x05DF` | `TEXTINT2FEXIT` |  |
| `0x05E6` | `DOLPT` |  |
| `0x0601` | `DOLPT10` |  |
| `0x0606` | `DOLPT20` |  |
| `0x061B` | `DOLPT30` |  |
| `0x062D` | `DOLPT40` |  |
| `0x062E` | `DOLPT50` |  |
| `0x0630` | `DOLPT60` |  |
| `0x0654` | `DOLPT70` |  |
| `0x0656` | `TXI` |  |
| `0x065D` | `KICKTX` |  |
| `0x0676` | `KICKTX10` |  |
| `0x0677` | `GETDEB` |  |
| `0x068E` | `GETDEB10` |  |
| `0x0691` | `GETDEB20` |  |
| `0x069E` | `GETDEB30` |  |
| `0x06A3` | `$SETQUE` |  |
| `0x06C5` | `SETQUE10` |  |
| `0x06C8` | `$EVT` |  |
| `0x06DC` | `EVT10` |  |
| `0x06DE` | `$EVTGET` |  |
| `0x06F4` | `EVTGET10` |  |
| `0x06F6` | `$STACOM` |  |
| `0x072F` | `STACOM20` |  |
| `0x073A` | `STACOM25` |  |
| `0x073F` | `STACOM30` |  |
| `0x0741` | `$SETBRK` |  |
| `0x0746` | `$CLRBRK` |  |
| `0x0749` | `CLRBRK10` |  |
| `0x0767` | `CLRBRK20` |  |
| `0x076A` | `CLRBRK30` |  |
| `0x076C` | `$EXTCOM` |  |
| `0x077B` | `EXTCOM10` |  |
| `0x0783` | `EXTCOM20` |  |
| `0x078E` | `EXTCOM30` |  |
| `0x0791` | `EXTCOM40` |  |
| `0x0792` | `EXTCOMDUMMY` |  |
| `0x0793` | `EXTTAB` |  |
| `0x07A3` | `EXTCOM_FN1` |  |
| `0x07A8` | `EXTCOM_FN2` |  |
| `0x07AF` | `EXTCOM_FN3` |  |
| `0x07B9` | `EXTCOM_FN4` |  |
| `0x07C3` | `EXTCOM_FN5` |  |
| `0x07CD` | `EXTCOM_FN6` |  |
| `0x07D7` | `EXTCOM_FN7` |  |
| `0x07DE` | `$DCBPTR` |  |
| `0x07EC` | `DCBPTR10` |  |
| `0x07EE` | `$RECCOM` |  |
| `0x07F7` | `RECCOM30` |  |
| `0x081F` | `RECCOM40` |  |
| `0x082D` | `RECCOM50` |  |
| `0x0831` | `RECCOM60` |  |
| `0x084E` | `RECCOM70` |  |
| `0x0854` | `RECCOM80` |  |
| `0x0859` | `RECCOM90` |  |
| `0x0868` | `RECCOM95` |  |
| `0x086A` | `RECCOM100` |  |
| `0x086F` | `$FLUSH` |  |
| `0x0884` | `FLUSH10` |  |
| `0x0891` | `FLUSH20` |  |
| `0x0894` | `FLUSH30` |  |
| `0x0897` | `FLUSH40` |  |
| `0x089A` | `COM_INT2` |  |
| `0x08A0` | `COM_INT1` |  |
| `0x08A4` | `COMMINT` |  |
| `0x08B8` | `INTERRUPTLOOP` |  |
| `0x08B9` | `INTLOOP10` |  |
| `0x08C8` | `INTLOOP20` |  |
| `0x08E4` | `LINESTAT` |  |
| `0x08E8` | `DATAAVAIL` |  |
| `0x08FD` | `DATAAVAIL10` |  |
| `0x0903` | `DATAAVAIL20` |  |
| `0x0929` | `DATAAVAIL25` |  |
| `0x0934` | `DATAAVAIL30` |  |
| `0x0945` | `DATAAVAIL40` |  |
| `0x0949` | `DATAAVAIL50` |  |
| `0x094C` | `DATAAVAIL60` |  |
| `0x095D` | `DATAAVAIL70` |  |
| `0x096B` | `DATAAVAIL80` |  |
| `0x0974` | `DATAAVAIL90` |  |
| `0x098B` | `DATAAVAIL100` |  |
| `0x09B2` | `DATAAVAIL110` |  |
| `0x09BE` | `DATAAVAIL115` |  |
| `0x09C1` | `DATAAVAIL120` |  |
| `0x09C4` | `XMITEMPTY` |  |
| `0x09D7` | `XMITEMPTY10` |  |
| `0x09EC` | `XMITEMPTY20` |  |
| `0x09F2` | `XMITEMPTY30` |  |
| `0x09F7` | `XMITEMPTY40` |  |
| `0x0A0B` | `XMITEMPTY50` |  |
| `0x0A21` | `XMITEMPTY60` |  |
| `0x0A28` | `XMITEMPTY70` |  |
| `0x0A2C` | `XMITEMPTY90` |  |
| `0x0A30` | `XMITEMPTY100` |  |
| `0x0A36` | `MODEMSTATUS` |  |
| `0x0A51` | `MODEMSTATUS10` |  |
| `0x0A64` | `MODEMSTATUS20` |  |
| `0x0A6B` | `MODEMSTATUS30` |  |

## Segment `DGROUP` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `COMM1` |  |
| `0x004E` | `COMM2` |  |
| `0x009C` | `LPT1` |  |
| `0x00BC` | `LPT2` |  |
| `0x00DC` | `LPT3` |  |
