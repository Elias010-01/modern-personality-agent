# GDI - reference symbols (starfrost013, debug build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **debug** Windows 1.03 build.

> **Caveat**: these offsets come from the **debug** build (extra strings, asserts, helpers). They are NOT byte-aligned with our retail build, so we do not auto-rename `sub_XXXX` by offset. Use this list as a *vocabulary* of known internal names. When a name happens to also be exported in our retail `.DEF`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `GDI`
- Functions in debug build: **595**
- Constants: **6**
- Segments: **31**
- Names also in our retail `.DEF` exports: **182**

## Constants (DGROUP globals)

| Offset | Name |
|--------|------|
| `0x0001` | `__acrtused` |
| `0x0006` | `PLOCALHEAP` |
| `0x0008` | `pAtomTable` |
| `0x000A` | `pStackTop` |
| `0x000C` | `pStackMin` |
| `0x000E` | `pStackBot` |

## Segment `_TEXT` (245 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CREATECOMPATIBLEDC` | [YES] |
| `0x0046` | `CREATECOMPATEXIT` |  |
| `0x0052` | `CREATEDC` | [YES] |
| `0x0056` | `CREATEIC` | [YES] |
| `0x0058` | `INTERNALCREATEDC` | [YES] |
| `0x00C7` | `CREATEDC10` |  |
| `0x00DB` | `CREATEDC15` |  |
| `0x00E8` | `CREATEDC20` |  |
| `0x00EB` | `CREATEDC30` |  |
| `0x018C` | `CREATEDC40` |  |
| `0x01E5` | `CREATEDC45` |  |
| `0x01F2` | `CREATEDC50` |  |
| `0x01FF` | `CREATEDC60` |  |
| `0x0218` | `CREATEDC70` |  |
| `0x021A` | `CREATEDCEXIT` |  |
| `0x0227` | `GETLOG` |  |
| `0x022E` | `GETLOG10` |  |
| `0x023D` | `GETLOG20` |  |
| `0x027F` | `GETLOG30` |  |
| `0x0282` | `GETLOG40` |  |
| `0x028C` | `GETLOG50` |  |
| `0x02CC` | `GETPHYS` |  |
| `0x02F1` | `GETPHYS10` |  |
| `0x02F5` | `GETPHYS15` |  |
| `0x02F8` | `GETPHYS20` |  |
| `0x030C` | `GETPHYS25` |  |
| `0x0313` | `GETPHYS30` |  |
| `0x0321` | `GETPHYS35` |  |
| `0x033B` | `GETPHYS40` |  |
| `0x034A` | `GETPHYS50` |  |
| `0x0365` | `GETPHYS60` |  |
| `0x039D` | `GETPHYS65` |  |
| `0x03B3` | `GETPHYS70` |  |
| `0x03CA` | `GETPHYS80` |  |
| `0x03CD` | `GETPHYS100` |  |
| `0x03D2` | `GETPHYS130` |  |
| `0x040D` | `GETPHYS140` |  |
| `0x042E` | `GETPHYS150` |  |
| `0x0433` | `GETPHYS160` |  |
| `0x0453` | `GETPHYS170` |  |
| `0x0456` | `GETPHYS200` |  |
| `0x0477` | `GETPHYS300` |  |
| `0x0495` | `GETPHYS310` |  |
| `0x04B0` | `GETPHYS320` |  |
| `0x04B1` | `DELETEMETASTUFF` |  |
| `0x04C4` | `DELETEMETASTUFF1` |  |
| `0x04C5` | `MYADDATOM` |  |
| `0x04CD` | `MYDELETEATOM` |  |
| `0x04D5` | `RETACHAIN` |  |
| `0x04E9` | `RETACHAIN1` |  |
| `0x04E9` | `RETATOMS` |  |
| `0x0500` | `FREEHANDLES` |  |
| `0x0501` | `FREEHANDLES1` |  |
| `0x050D` | `FREEHANDLES2` |  |
| `0x0511` | `MYALLOC` |  |
| `0x051E` | `SAVEDC` | [YES] |
| `0x05DF` | `RESTOREDC` | [YES] |
| `0x0690` | `SAVEVISRGN` | [YES] |
| `0x06E3` | `RESTOREVISRGN` | [YES] |
| `0x073F` | `INVALIDATECLIP` |  |
| `0x0750` | `DELETEDC` | [YES] |
| `0x08F4` | `CREATEPENINDIRECT` | [YES] |
| `0x0916` | `CREATEPEN` | [YES] |
| `0x0943` | `CREATEBRUSHINDIRECT` | [YES] |
| `0x0A07` | `CREATESOLIDBRUSH` | [YES] |
| `0x0A2A` | `CREATEHATCHBRUSH` | [YES] |
| `0x0A4E` | `CREATEPATTERNBRUSH` | [YES] |
| `0x0A81` | `CREATEFONTINDIRECT` | [YES] |
| `0x0AAE` | `CREATEFONT` | [YES] |
| `0x0B17` | `CREATEBITMAPINDIRECT` | [YES] |
| `0x0C13` | `CREATEBITMAP` | [YES] |
| `0x0C7E` | `CREATECOMPATIBLEBITMAP` | [YES] |
| `0x0C81` | `CREATEDISCARDABLEBITMAP` | [YES] |
| `0x0C83` | `COMPATIBLEBITMAP` | [YES] |
| `0x0D2D` | `SETBITMAPDIMENSION` | [YES] |
| `0x0D71` | `GETBITMAPDIMENSION` | [YES] |
| `0x0DAF` | `SETDCORG` | [YES] |
| `0x0E58` | `SETWINDOWEXT` | [YES] |
| `0x0E60` | `SETVIEWPORTEXT` | [YES] |
| `0x0E66` | `SETWINVIEWEXT` | [YES] |
| `0x0EFD` | `SCALEVIEWPORTEXT` | [YES] |
| `0x0F08` | `SCALEWINDOWEXT` | [YES] |
| `0x0F11` | `SCALEEXT` | [YES] |
| `0x0F93` | `GETNEARESTCOLOR` | [YES] |
| `0x0FEC` | `SETBKCOLOR` | [YES] |
| `0x1069` | `SETTEXTCOLOR` | [YES] |
| `0x1116` | `SELECTCLIPRGN` | [YES] |
| `0x11B7` | `SELECTVISRGN` | [YES] |
| `0x120F` | `INTERSECTVISRECT` | [YES] |
| `0x1212` | `EXCLUDEVISRECT` | [YES] |
| `0x1218` | `INTERSECTCLIPRECT` | [YES] |
| `0x121F` | `EXCLUDECLIPRECT` | [YES] |
| `0x1226` | `RECTSTUFF` | [YES] |
| `0x12FE` | `COMPUTECLIPRGN` |  |
| `0x134C` | `GETCLIPBOX` | [YES] |
| `0x13AB` | `RGNTYPE` |  |
| `0x13C6` | `COPYRGNNEW` |  |
| `0x13DE` | `FARCOPYRGNNEW` |  |
| `0x13F9` | `CINVALIDATECLIP` |  |
| `0x1418` | `DELETEOBJECT` | [YES] |
| `0x146E` | `SANCTIONBITMAP` |  |
| `0x14D6` | `SELECTOBJECT` | [YES] |
| `0x15D1` | `SELECTBITMAP` |  |
| `0x16E0` | `UNLOCKDC` | [YES] |
| `0x16E3` | `LOCKDC` | [YES] |
| `0x16E5` | `LOCKUNLOCK` | [YES] |
| `0x1821` | `VALIDATEHANDLE` |  |
| `0x1872` | `HOWLONGISIT` |  |
| `0x187E` | `FARHOWLONGISIT` |  |
| `0x1894` | `FARGDIFIXEDALLOC` |  |
| `0x189B` | `FARGDILOCALALLOC` |  |
| `0x18A3` | `GDILOCALALLOC` |  |
| `0x18B4` | `GDIFIXEDALLOC` |  |
| `0x18BA` | `GDIGLOBALALLOC` |  |
| `0x18D2` | `FARGDIGLOBALALLOC` |  |
| `0x18F6` | `GDILOCKDATASEG` |  |
| `0x1907` | `FARGDILOCKDATASEG` |  |
| `0x1928` | `GDIUNLOCKDATASEG` |  |
| `0x1939` | `FARGDIUNLOCKDATASEG` |  |
| `0x195A` | `LOCALDISPOSE` |  |
| `0x196F` | `GETRGNBOX` | [YES] |
| `0x19BF` | `INQUIREVISRGN` | [YES] |
| `0x19FD` | `GDIINITAPP` | [YES] |
| `0x1A28` | `TRIPLEEXTEND` |  |
| `0x1A49` | `TRIPLEADD` |  |
| `0x1A79` | `TRIPLESUB` |  |
| `0x1AA9` | `TRIPLELEFTSHIFT` |  |
| `0x1ACC` | `TRIPLEMUL` |  |
| `0x1B3C` | `GETPBRUSH` |  |
| `0x1CEB` | `GETPPEN` |  |
| `0x1E7A` | `SETBRUSHORG` | [YES] |
| `0x1EC0` | `UNREALIZEOBJECT` | [YES] |
| `0x1F24` | `UNREALIZEOBJECTERROR` |  |
| `0x1F28` | `RGOFFSET` |  |
| `0x1F96` | `INREGION` |  |
| `0x2017` | `FARINREGION` |  |
| `0x203A` | `PTINRECT` |  |
| `0x2089` | `INTERSECTRECT` |  |
| `0x2144` | `RGNWALK` |  |
| `0x225B` | `BITBLTBODY` |  |
| `0x253D` | `BLTOUTPUT` |  |
| `0x25D9` | `PATBLT` | [YES] |
| `0x2625` | `BITBLT` | [YES] |
| `0x265F` | `STRETCHBLT` | [YES] |
| `0x27D3` | `TEXTOUT` | [YES] |
| `0x297E` | `TEXTOUTPUT` |  |
| `0x29D4` | `GETTEXTEXTENT` | [YES] |
| `0x29FB` | `GETCONTINUINGTEXTEXTENT` | [YES] |
| `0x2A23` | `GETOVERALLTEXTEXTENT` |  |
| `0x2BC9` | `GETBASICEXTENT` |  |
| `0x2C6E` | `CREATERECTRGNINDIRECT` | [YES] |
| `0x2C8C` | `OFFSETRGN` | [YES] |
| `0x2CD4` | `OFFSETCLIPRGN` | [YES] |
| `0x2D5B` | `OFFSETVISRGN` | [YES] |
| `0x2DB4` | `PTVISIBLE` | [YES] |
| `0x2E1A` | `RECTVISIBLE` | [YES] |
| `0x2F05` | `EQUALRGN` | [YES] |
| `0x2F86` | `GETPFONT` |  |
| `0x3146` | `MULDIV` | [YES] |
| `0x31AB` | `MAKEISO` |  |
| `0x3239` | `DEATH` | [YES] |
| `0x3270` | `RESURRECTION` | [YES] |
| `0x32BC` | `SEARCHENV` |  |
| `0x32CD` | `SANSCOLON` |  |
| `0x3349` | `GETSTOCKOBJECT` | [YES] |
| `0x335F` | `GETDEVICECAPS` | [YES] |
| `0x33A9` | `GETBITMAPBITS` | [YES] |
| `0x33AC` | `SETBITMAPBITS` | [YES] |
| `0x33AE` | `BITMAPBITS` | [YES] |
| `0x344A` | `GETBKCOLOR` | [YES] |
| `0x344D` | `GETTEXTCOLOR` | [YES] |
| `0x3450` | `GETROP2` | [YES] |
| `0x3453` | `GETPOLYFILLMODE` | [YES] |
| `0x3456` | `GETSTRETCHBLTMODE` | [YES] |
| `0x3459` | `GETMAPMODE` | [YES] |
| `0x345C` | `GETBKMODE` | [YES] |
| `0x345F` | `GETRELABS` | [YES] |
| `0x3462` | `GETWINDOWORG` | [YES] |
| `0x3465` | `GETVIEWPORTORG` | [YES] |
| `0x3468` | `GETDCORG` | [YES] |
| `0x346B` | `GETBRUSHORG` | [YES] |
| `0x346E` | `GETWINDOWEXT` | [YES] |
| `0x3471` | `GETVIEWPORTEXT` | [YES] |
| `0x3474` | `GETCURRENTPOSITION` | [YES] |
| `0x3476` | `GSV` | [YES] |
| `0x34BA` | `MOVETO` | [YES] |
| `0x3510` | `ALTMOVETO` |  |
| `0x3536` | `WORDSET` | [YES] |
| `0x358F` | `SETROP2` | [YES] |
| `0x3596` | `SETPOLYFILLMODE` | [YES] |
| `0x359D` | `SETSTRETCHBLTMODE` | [YES] |
| `0x35A4` | `SETBKMODE` | [YES] |
| `0x35AB` | `SETRELABS` | [YES] |
| `0x35B2` | `SETTRANSLATE` |  |
| `0x35C5` | `SETUNITARY` |  |
| `0x35DE` | `SETMAPMODE` | [YES] |
| `0x368A` | `OFFSETWINDOWORG` | [YES] |
| `0x3692` | `OFFSETVIEWPORTORG` | [YES] |
| `0x3698` | `OFFSETORG` | [YES] |
| `0x36ED` | `SETWINDOWORG` | [YES] |
| `0x3748` | `SETVIEWPORTORG` | [YES] |
| `0x37B0` | `DPTOLP` | [YES] |
| `0x37B5` | `LPTODP` | [YES] |
| `0x37B8` | `DPXLATE` | [YES] |
| `0x3804` | `FARLPTOSP` |  |
| `0x3809` | `FARSPTOLP` |  |
| `0x380C` | `FARSPXLATE` |  |
| `0x3834` | `SPTOLP` |  |
| `0x3839` | `LPTOSP` |  |
| `0x3858` | `FARLC2DC` |  |
| `0x386E` | `LC2DC` |  |
| `0x3964` | `FARDC2LC` |  |
| `0x397A` | `DC2LC` |  |
| `0x3B8C` | `SLOWPROLOGUE` |  |
| `0x3B92` | `SLOWPROLOGUEALT` |  |
| `0x3BB4` | `CHECKMETAFILE` |  |
| `0x3C14` | `ALTRECORDMETA` |  |
| `0x3C1D` | `ALTRECORDMETAAX` |  |
| `0x3C90` | `RECORDMETA` |  |
| `0x3CE0` | `MERGESCAN` |  |
| `0x3D6E` | `MERGERGN` |  |
| `0x3F88` | `COMBINERGN` | [YES] |
| `0x40E7` | `RGCOPY` |  |
| `0x4117` | `RGRECT` |  |
| `0x411A` | `RGRECTALT` |  |
| `0x411C` | `RGRECTBODY` |  |
| `0x41AD` | `RGNEW` |  |
| `0x41C9` | `CREATERECTRGN` | [YES] |
| `0x4201` | `SETRECTRGN` |  |
| `0x4230` | `ITOA` |  |
| `0x4269` | `WALKSTOCK` |  |
| `0x42B1` | `__ldiv` |  |
| `0x4362` | `__lmul` |  |
| `0x43D4` | `__lrem` |  |
| `0x4488` | `__lshl` |  |
| `0x44A0` | `_chkstk` |  |
| `0x44A0` | `__chkstk` |  |
| `0x44A0` | `chkstk` |  |
| `0x44CA` | `__astkovr` |  |
| `0x44CD` | `__cintDIV` |  |
| `0x44D0` | `__fptrap` |  |
| `0x44D9` | `_TEXT_NEARFRAME` |  |
| `0x451B` | `_TEXT_FARFRAMEX` |  |
| `0x451C` | `_TEXT_FARFRAME` |  |
| `0x4569` | `__ulmul` |  |

## Segment `_INIT` (2 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `GDIINIT` |  |
| `0x0195` | `INITFONTS` |  |

## Segment `_FONTINQ` (6 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `GETTEXTFACE` | [YES] |
| `0x00A1` | `XTRANS` |  |
| `0x00EA` | `YTRANS` |  |
| `0x0133` | `ENUMFONTS` | [YES] |
| `0x04AE` | `ENUMERATEFONT` |  |
| `0x078E` | `ENUMCALLBACK` | [YES] |

## Segment `_FONTINQ2` (1 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `GETTEXTMETRICS` | [YES] |

## Segment `_FONTLOAD` (6 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOADPFONTHANDLER` |  |
| `0x0225` | `LOADPFONT` |  |
| `0x02CE` | `MAPFONT` |  |
| `0x0918` | `FINDPFONT` |  |
| `0x0D1A` | `GETATOM` |  |
| `0x0D49` | `FONTFIT` |  |

## Segment `_FONTRES` (10 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SCANPFI` |  |
| `0x0253` | `DELETEFONT` |  |
| `0x028A` | `DELETEFONTBYDEVICE` |  |
| `0x02AC` | `ADDFONTRESOURCE` | [YES] |
| `0x05A4` | `ADDNEXTFONT` |  |
| `0x0695` | `REMOVEFONTRESOURCE` | [YES] |
| `0x07A3` | `COMPACTPFT` |  |
| `0x08E4` | `DECREMENTFONTRESOURCE` |  |
| `0x098B` | `INCREMENTFONTRESOURCE` |  |
| `0x09D1` | `FONTRESOURCEINDEX` |  |

## Segment `_MISC` (9 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETDCSTUFF` |  |
| `0x0021` | `ESCAPE` | [YES] |
| `0x0236` | `NEXTBANDCODE` |  |
| `0x0425` | `QUERYABORT` | [YES] |
| `0x0474` | `GETENVIRONMENT` | [YES] |
| `0x04E1` | `SETENVIRONMENT` | [YES] |
| `0x05C4` | `GETOBJECT` | [YES] |
| `0x069F` | `ENUMOBJECTS` | [YES] |
| `0x072B` | `ENUMOBJCALLBACK` |  |

## Segment `_FONTSYNTH` (4 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SYNTHFONT` |  |
| `0x0112` | `LOADSYNTHFONT` |  |
| `0x048E` | `SYNTHSCALE` |  |
| `0x053F` | `BLOAT` |  |

## Segment `_FONTSIMS` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETTEXTCHARACTEREXTRA` | [YES] |
| `0x0098` | `GETTEXTCHARACTEREXTRA` | [YES] |
| `0x00E3` | `SETTEXTJUSTIFICATION` | [YES] |
| `0x0197` | `SETMAPPERFLAGS` | [YES] |
| `0x01C9` | `TEXTSIMULATIONS` |  |

## Segment `_RGCREATE` (3 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CREATEELLIPTICRGN` | [YES] |
| `0x004F` | `CREATEELLIPTICRGNINDIRECT` | [YES] |
| `0x007B` | `CREATEPOLYGONRGN` | [YES] |

## Segment `_RGOUT` (7 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FILLRGN` | [YES] |
| `0x0085` | `PAINTRGN` | [YES] |
| `0x00F7` | `INVERTRGN` | [YES] |
| `0x0166` | `FILLINVERTRGN` |  |
| `0x0307` | `FRAMERGN` | [YES] |
| `0x0913` | `XORLIST` |  |
| `0x0ACB` | `PTINREGION` | [YES] |

## Segment `_FLOODFILL` (9 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MERGE` |  |
| `0x0155` | `GETDOWN` |  |
| `0x0226` | `EXTEND` |  |
| `0x04C8` | `FLOODFILL` | [YES] |
| `0x0605` | `COLOUROVER` |  |
| `0x0659` | `SCAN` |  |
| `0x07B3` | `PUSHX` |  |
| `0x0839` | `INSCAN` |  |
| `0x0888` | `SCANLR` | [YES] |

## Segment `_METAFILE` (21 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `GETMETAFILE` | [YES] |
| `0x00CB` | `DELETEBANDINGMETAFILE` |  |
| `0x0131` | `DELETEMETAFILE` | [YES] |
| `0x0164` | `PLAYMETAFILE` | [YES] |
| `0x02D2` | `GETEVENT` |  |
| `0x04A4` | `PLAYEVENT` |  |
| `0x09DB` | `ADDTOHANDLETABLE` |  |
| `0x0A10` | `RECORDPARMS` |  |
| `0x0BB5` | `ATTEMPTWRITE` |  |
| `0x0C69` | `MARKMETAFILE` |  |
| `0x0CD1` | `RECORDOTHER` |  |
| `0x1290` | `RECORDOBJECT` |  |
| `0x139A` | `PROBESIZE` |  |
| `0x1475` | `ADDTOTABLE` |  |
| `0x1562` | `CREATEMETAFILE` | [YES] |
| `0x1631` | `CLOSEMETAFILE` | [YES] |
| `0x17D2` | `COPYMETAFILE` | [YES] |
| `0x1927` | `GETMETAFILEBITS` | [YES] |
| `0x1996` | `SETMETAFILEBITS` | [YES] |
| `0x19C2` | `CALLMETAFUNCTION` |  |
| `0x19F0` | `GETPMETAFILE` |  |

## Segment `_STRETCHBLT` (11 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOCKBITMAP` |  |
| `0x006E` | `UNLOCKBITMAP` |  |
| `0x008C` | `REALSTRETCHBLT` |  |
| `0x06CD` | `BLTCOLUMNS` |  |
| `0x0726` | `BLTROWS` |  |
| `0x0779` | `INTEGERMULTIPLE` |  |
| `0x08C0` | `BLTTHROUGHRGN` |  |
| `0x08FA` | `BLTROWS2` |  |
| `0x099D` | `BLTOUT` |  |
| `0x0A23` | `STRETCHX` |  |
| `0x0AB0` | `INITBITMAP` |  |

## Segment `_GDISIM` (6 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `POLYGON` | [YES] |
| `0x0062` | `POLYGONGUTS` |  |
| `0x0164` | `ELLIPSE` | [YES] |
| `0x01CD` | `ROUNDRECT` | [YES] |
| `0x022E` | `PIE` | [YES] |
| `0x0295` | `ARC` | [YES] |

## Segment `_RECT` (11 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CLIPTEST` |  |
| `0x0050` | `GETVECTORPEN` |  |
| `0x00C5` | `OEMOUTPUT` |  |
| `0x010D` | `RECTANGLE` | [YES] |
| `0x067B` | `SCANINTERSECT` |  |
| `0x0814` | `OEMPATBLT` |  |
| `0x086C` | `SMARTBLT` |  |
| `0x08BB` | `SCANFIX` |  |
| `0x0988` | `SCANOUT` |  |
| `0x0B03` | `ADDSCANLIST` |  |
| `0x0B90` | `UNIONRECTRGN` |  |

## Segment `_ELLIPSE` (2 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ELLIPSEGUTS` |  |
| `0x0B77` | `COMBINEELLIPSEBORDER` |  |

## Segment `_PIEARC` (11 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PIETRANSFORM` |  |
| `0x0072` | `GETTOPINTERSECTION` |  |
| `0x00E6` | `CALCULATEPENWIDTHS` |  |
| `0x012C` | `PIEARCISITSPECIAL` |  |
| `0x017C` | `PIEARCSPECIALCASE` |  |
| `0x02D8` | `NEWWALL` |  |
| `0x0399` | `UPDATEWALL` |  |
| `0x03E5` | `PIEARC` |  |
| `0x0EA9` | `GETPIECASE` |  |
| `0x0F13` | `PIESWITCH1` |  |
| `0x14CA` | `PIESWITCH2` |  |

## Segment `_POLYGON` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INTSORT` |  |
| `0x00B3` | `STRSORT` |  |
| `0x01A5` | `COUNTWALLS` |  |
| `0x0228` | `POLYGONGUTS2` |  |
| `0x0942` | `UNWIND` |  |

## Segment `_POLYHELP` (2 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INITWALLS` |  |
| `0x013C` | `INITWALLPREV` |  |

## Segment `_PIXDDA` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LINEDDA` | [YES] |
| `0x0003` | `STRETCHDDA` |  |
| `0x0005` | `INNERLINEDDA` |  |
| `0x0157` | `SETPIXEL` | [YES] |
| `0x0222` | `GETPIXEL` | [YES] |

## Segment `_OUTMAN` (12 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CLIPLINE` |  |
| `0x021F` | `ROTATESTYLEMASK` |  |
| `0x03F6` | `POLYLINEGUTSALT` |  |
| `0x03F9` | `POLYLINEGUTS` |  |
| `0x03FB` | `POLYLINEGUTSBODY` |  |
| `0x05B1` | `CHEAPCLIP` |  |
| `0x06D9` | `PIXTOLINE` | [YES] |
| `0x07A3` | `LINETO` | [YES] |
| `0x082B` | `POLYLINE` | [YES] |
| `0x08E0` | `WIDELINE` |  |
| `0x0A55` | `GETCAP` |  |
| `0x0B86` | `POLYLINETOPOLYGON` |  |

## Segment `_SORT` (8 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CREATEPQ` | [YES] |
| `0x0072` | `MINPQ` | [YES] |
| `0x0091` | `EXTRACTPQ` | [YES] |
| `0x00AF` | `GETMIN` |  |
| `0x01F1` | `SIZEPQ` | [YES] |
| `0x027D` | `DELETEPQ` | [YES] |
| `0x029A` | `INSERTPQ` | [YES] |
| `0x03D5` | `SWAP` |  |

## Segment `_DOTMATRIX` (11 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DMTRANSPOSE` | [YES] |
| `0x00A2` | `DMBITBLT` | [YES] |
| `0x00A7` | `DMSTRBLT` | [YES] |
| `0x00AC` | `DMCOLORINFO` | [YES] |
| `0x00B1` | `DMPIXEL` | [YES] |
| `0x00B6` | `DMOUTPUT` | [YES] |
| `0x00BB` | `DMREALIZEOBJECT` | [YES] |
| `0x00C0` | `DMENUMDFONTS` | [YES] |
| `0x00C6` | `DMENUMOBJ` | [YES] |
| `0x00CB` | `DMSCANLR` | [YES] |
| `0x00CE` | `BRUTE` | [YES] |

## Segment `_SPOOL` (17 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `COPY` | [YES] |
| `0x0024` | `OPENJOB` | [YES] |
| `0x01BD` | `STARTSPOOLPAGE` | [YES] |
| `0x03B2` | `WRITESPOOL` | [YES] |
| `0x04F4` | `WRITEFILE` |  |
| `0x0589` | `WRITEDIALOG` | [YES] |
| `0x0719` | `ENDSPOOLPAGE` | [YES] |
| `0x086A` | `CLOSEJOB` | [YES] |
| `0x0933` | `DELETEJOB` | [YES] |
| `0x0A05` | `FREEALL` |  |
| `0x0A6B` | `GETSPOOLTEMPDRIVE` |  |
| `0x0AD2` | `FINDPORT` |  |
| `0x0B1B` | `GETSPOOLJOB` | [YES] |
| `0x0BDA` | `QUERYJOB` | [YES] |
| `0x0C2C` | `LSTRNCPY` |  |
| `0x0C65` | `ISJOBVALID` |  |
| `0x0C84` | `LOADSPOOLER` |  |

## Segment `_SPOOL2` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETUPPORTTABLE` |  |
| `0x02E6` | `FINDPRINTERNAMES` |  |
| `0x037C` | `FINDALLPORTS` |  |
| `0x041C` | `REMOVECOLON` |  |
| `0x0478` | `OUTOFDISKHANDLER` |  |

## Segment `_SPOOL3` (6 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WRITEPORT` |  |
| `0x0147` | `OPENPORT` |  |
| `0x01DA` | `CLOSEPORT` |  |
| `0x0215` | `RESETPORT` |  |
| `0x0248` | `SPOOLSETDCB` |  |
| `0x03E1` | `ATOI` |  |

## Segment `_VECTFONT` (10 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `VECTTEXTOUTPUT` |  |
| `0x0567` | `VECTTEXTEXTENT` |  |
| `0x0922` | `NEXTCHARORG` |  |
| `0x0A18` | `PLACEVECTCHAR` |  |
| `0x0F99` | `NORMALIZEANGLE` |  |
| `0x0FC0` | `CALCBOUNDINGPOLY` |  |
| `0x120D` | `ROTBOUNDINGRECT` |  |
| `0x12FC` | `CONSTRAINORIENTATION` |  |
| `0x1329` | `LBMOVETO` |  |
| `0x138A` | `LBLINETO` |  |

## Segment `_TRIG` (2 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x00B6` | `RSIN` | [YES] |
| `0x00DE` | `RCOS` | [YES] |

## Segment `_VECTSIM` (4 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INITVECTOR` |  |
| `0x0134` | `VECTORSCAN` |  |
| `0x02BA` | `DUMPLINE` |  |
| `0x0347` | `DONEVECTOR` |  |

## Segment `DGROUP` (61 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0004` | `rsrvptrs` |  |
| `0x0010` | `DISPLAYATOM` |  |
| `0x0012` | `NULLPORTATOM` |  |
| `0x0014` | `HSTATICBITMAP` |  |
| `0x0016` | `STOCKOBJ` |  |
| `0x0034` | `HBOGUSPEN` |  |
| `0x0036` | `HBOGUSBRUSH` |  |
| `0x0038` | `OBJECTCOUNT` |  |
| `0x003C` | `METAFUNCTION` |  |
| `0x0104` | `HGDIMODULE` |  |
| `0x0106` | `TEMPDRIVE` |  |
| `0x0108` | `HSCREENDC` |  |
| `0x010A` | `HLDEVHEAD` |  |
| `0x0111` | `METAPREFIX` |  |
| `0x011A` | `HATCHDIR` |  |
| `0x012C` | `NUM_PF_INSTANCES` |  |
| `0x012E` | `NUM_PHYS_FONTS` |  |
| `0x0130` | `NUM_RESOURCES` |  |
| `0x0132` | `SIZE_PF_INST_TAB` |  |
| `0x0134` | `SIZE_PFONT_TAB` |  |
| `0x0136` | `SIZE_RES_TAB` |  |
| `0x0138` | `PFI_READ_LOCKEDOUT` |  |
| `0x013A` | `PFI_WRITE_LOCKEDOUT` |  |
| `0x013C` | `PFT_READ_LOCKEDOUT` |  |
| `0x013E` | `PFT_WRITE_LOCKEDOUT` |  |
| `0x0140` | `RT_READ_LOCKEDOUT` |  |
| `0x0142` | `RT_WRITE_LOCKEDOUT` |  |
| `0x021E` | `GLOBALMOVABLE` |  |
| `0x0220` | `GLOBALMOVABLENONSHARED` |  |
| `0x0222` | `GLOBALFIXED` |  |
| `0x0224` | `LOCALMOVABLE` |  |
| `0x0226` | `LOCALFIXEDZEROED` |  |
| `0x0228` | `LOCALMOVABLEZEROED` |  |
| `0x022A` | `GLOBALDISCARDABLEMODIFY` |  |
| `0x0302` | `SP_INIT` |  |
| `0x0304` | `SP_HWND` |  |
| `0x0306` | `SP_NOLOAD` |  |
| `0x0308` | `LISTEDPORTCNT` |  |
| `0x030A` | `DISKAVAIL` |  |
| `0x030E` | `NO_SPOOLER_SYSTEM` |  |
| `0x0380` | `__aaltstkovr` |  |
| `0x0390` | `OPENCOM` |  |
| `0x0390` | `_edata` |  |
| `0x0394` | `PF_INST_TAB` |  |
| `0x0396` | `MESSAGEBOX` |  |
| `0x039A` | `RES_TABLE` |  |
| `0x039C` | `SENDMESSAGE` |  |
| `0x03A0` | `FIRSTFONTHANDLE` |  |
| `0x03A2` | `PORTS` |  |
| `0x03CA` | `MAXPRINTER` |  |
| `0x03CC` | `GETCURTIME` |  |
| `0x03D0` | `CLOSECOM` |  |
| `0x03D4` | `POSTMESSAGE` |  |
| `0x03D8` | `WRITECOM` |  |
| `0x03DC` | `GETCOMSTATE` |  |
| `0x03E0` | `GETCOMERROR` |  |
| `0x03E4` | `ESCAPECOMFUNCTION` |  |
| `0x03E8` | `READCOM` |  |
| `0x03EC` | `FLUSHCOM` |  |
| `0x03F0` | `SETCOMSTATE` |  |
| `0x03F4` | `PFONT_TABLE` |  |
