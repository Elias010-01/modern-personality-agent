# WRITE - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/WRITE/WRITE.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `WRITE`
- Functions in retail build: **1063**
- Constants: **6**
- Segments: **79**
- Names also in our retail `.DEF` exports: **30**

## Segment `_TEXT` (35 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `_chkstk` |  |
| `0x0000` | `__chkstk` |  |
| `0x0000` | `chkstk` |  |
| `0x002A` | `__astkovr` |  |
| `0x002D` | `__cintDIV` |  |
| `0x0030` | `__fptrap` |  |
| `0x0039` | `__astart` |  |
| `0x0078` | `__nullcheck` |  |
| `0x0079` | `_sbrk` |  |
| `0x008F` | `_brk` |  |
| `0x00A5` | `_malloc` |  |
| `0x00C3` | `_calloc` |  |
| `0x00E6` | `_realloc` |  |
| `0x0108` | `_free` |  |
| `0x0123` | `__nmalloc` |  |
| `0x0141` | `__nfree` |  |
| `0x015C` | `__nmsize` |  |
| `0x0177` | `__fmalloc` |  |
| `0x01A4` | `__ffree` |  |
| `0x01CB` | `__fmsize` |  |
| `0x01E6` | `__nmvalid` |  |
| `0x020C` | `__fmavail` |  |
| `0x022F` | `__alrem` |  |
| `0x025F` | `__cinit` |  |
| `0x02F2` | `__ldiv` |  |
| `0x03A3` | `__lmul` |  |
| `0x0415` | `__uldiv` |  |
| `0x0488` | `__ulmul` |  |
| `0x04BC` | `__lrem` |  |
| `0x0570` | `__lshl` |  |
| `0x0588` | `__lshr` |  |
| `0x05A0` | `__ulshr` |  |
| `0x05B8` | `__exit` |  |
| `0x05F9` | `__cpreterm` |  |
| `0x060C` | `__cterm` |  |

## Segment `INITWIN_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FINITWININFO` |  |
| `0x073C` | `MMWCREATE` |  |
| `0x09BC` | `MDOCCREATE` |  |

## Segment `UTIL_TEXT` (35 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `BLTBYTE` |  |
| `0x0036` | `BLTBX` |  |
| `0x006C` | `BLT` |  |
| `0x00A6` | `bltx` |  |
| `0x00E0` | `BLTC` |  |
| `0x0107` | `bltcx` |  |
| `0x012A` | `BLTBC` |  |
| `0x0151` | `bltbcx` |  |
| `0x0174` | `MULTDIV` |  |
| `0x01D4` | `FSzSame` |  |
| `0x0205` | `CCHDIFFER` |  |
| `0x023B` | `OsTime` |  |
| `0x025C` | `CPMAX` |  |
| `0x0291` | `CPMIN` |  |
| `0x02C6` | `UMIN` |  |
| `0x02EF` | `UMAX` |  |
| `0x0318` | `IMIN` |  |
| `0x0341` | `IMAX` |  |
| `0x036A` | `CCHSZ` |  |
| `0x0398` | `CPMACTEXT` |  |
| `0x03C7` | `HFNTBGET` |  |
| `0x03F3` | `NOUNDO` |  |
| `0x0415` | `SETUNDOMENUSTR` |  |
| `0x0430` | `CCHCOPYSZ` |  |
| `0x0467` | `WCOMPSZ` |  |
| `0x04BE` | `CHLOWER` |  |
| `0x04F1` | `STARTLONGOP` |  |
| `0x060A` | `ENDLONGOP` |  |
| `0x0691` | `INDEX` |  |
| `0x06C7` | `ISALPHA` |  |
| `0x070D` | `ISLOWER` |  |
| `0x074D` | `ISUPPER` |  |
| `0x078D` | `ISDIGIT` |  |
| `0x07B5` | `CHUPPER` |  |
| `0x07E8` | `FRGCHSAME` |  |

## Segment `UTIL2_TEXT` (8 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FILLSTID` |  |
| `0x0039` | `PCHFILLPCHID` |  |
| `0x0072` | `FDIRTYDOC` |  |
| `0x00B8` | `NCVTU` |  |
| `0x0124` | `HSZGLOBALCREATE` |  |
| `0x0195` | `FZAFROMSS` |  |
| `0x0317` | `CCHEXPZA` |  |
| `0x0436` | `CCHSTUFF` |  |

## Segment `INITMMW_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FINITMEMORY` |  |
| `0x00FF` | `FINITARGS` |  |
| `0x0773` | `INITBPS` |  |
| `0x07FF` | `FCREATERGBP` |  |

## Segment `SCRNCHNG_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FSETWINDOWCOLORS` |  |
| `0x010B` | `FSETSCREENCONSTANTS` |  |
| `0x02F1` | `FGETPRINTERFROMPROFILE` |  |
| `0x054B` | `PARSEDEVICESZ` |  |
| `0x063A` | `SETPRINTCONSTANTS` |  |
| `0x0703` | `GETPRINTERDC` |  |
| `0x07F7` | `SETPAGESIZE` |  |

## Segment `SCREEN_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PFFNDEFAULT` |  |
| `0x0054` | `GETDEFAULTFONTS` |  |
| `0x016A` | `DEFAULTFAMILYCHECK` |  |
| `0x01C7` | `MPFFIDIFFN` |  |
| `0x0219` | `RESETDEFAULTFONTS` |  |

## Segment `FONTENUM_TEXT` (10 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FontSizeEnum` | [YES] |
| `0x029D` | `FCHECKFONT` |  |
| `0x02DF` | `FontFaceEnum` | [YES] |
| `0x0437` | `FINITFONTENUM` |  |
| `0x0607` | `FADDPROFILEFONTS` |  |
| `0x073A` | `WFROMSZNUMBER` |  |
| `0x078D` | `PCHSKIPSPACESPCH` |  |
| `0x07B0` | `FENUMFONT` |  |
| `0x0815` | `ENDFONTENUM` |  |
| `0x0837` | `FADDENUMFONT` |  |

## Segment `FONTUTIL_TEXT` (9 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `HFFNTBALLOC` |  |
| `0x003F` | `FTCADDDOCFFN` |  |
| `0x00A0` | `FTCADDFFN` |  |
| `0x017C` | `FENSUREPFFN` |  |
| `0x01B8` | `FTCSCANDOCFFN` |  |
| `0x01FE` | `FTCSCANFFN` |  |
| `0x027C` | `FTCCHKDOCFFN` |  |
| `0x02B8` | `FREEFFNTB` |  |
| `0x0311` | `SMASHDOCFCE` |  |

## Segment `CREATEWW_TEXT` (14 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WWNEW` |  |
| `0x00EF` | `CHANGEWWDOC` |  |
| `0x01EB` | `FNCREATESZ` |  |
| `0x02F7` | `DOCCREATE` |  |
| `0x057F` | `APPLYRHMARGINSPRM` |  |
| `0x0603` | `DOCALLOC` |  |
| `0x067C` | `FINITPCTB` |  |
| `0x07C3` | `FNALLOC` |  |
| `0x085C` | `FNNEWFILE` |  |
| `0x08A3` | `HFFNTBCREATEFORFN` |  |
| `0x09C8` | `HFFNTBNEWDOC` |  |
| `0x0A8D` | `PCHBASENAMEINUPPER` |  |
| `0x0AED` | `SETTITLE` |  |
| `0x0B62` | `VALIDATEHEADERFOOTER` |  |

## Segment `PAGEINFO_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DRAWMODE` |  |
| `0x002A` | `PageInfoWndProc` | [YES] |

## Segment `MDOC_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MdocWndProc` | [YES] |
| `0x0189` | `MDOCMOUSE` |  |
| `0x025E` | `MDOCTIMER` |  |

## Segment `CHNGWIN_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MMWSIZE` |  |
| `0x01DA` | `MDOCSIZE` |  |
| `0x0292` | `FREEMEMORYDC` |  |
| `0x02FD` | `FREEPRINTERDC` |  |
| `0x0354` | `MDOCGETFOCUS` |  |
| `0x03A4` | `MDOCLOSEFOCUS` |  |

## Segment `HEAPMAIN_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `HALLOCATE` |  |
| `0x0059` | `FCHNGSIZEH` |  |
| `0x00B7` | `HSZCREATE` |  |

## Segment `FILE_TEXT` (25 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CchCurSzPath` |  |
| `0x0065` | `DosxError` |  |
| `0x007C` | `WDosVersion` |  |
| `0x0093` | `DaGetFileModeSz` |  |
| `0x00B7` | `FCloseDoshnd` |  |
| `0x00D9` | `FPEDELETESZFFNAME` |  |
| `0x010D` | `FPERENAMESZFFNAME` |  |
| `0x015B` | `CchReadDoshnd` |  |
| `0x0181` | `CchWriteDoshnd` |  |
| `0x01A7` | `DwSeekDw` |  |
| `0x01D3` | `FCMACFROMUNFORMATTEDFN` |  |
| `0x0275` | `IBPLRU` |  |
| `0x02E0` | `IBPMAKEVALID` |  |
| `0x058E` | `FREEBUFFERPAGE` |  |
| `0x0688` | `CCHPAGEIN` |  |
| `0x0771` | `CCHREADATPAGE` |  |
| `0x085E` | `ALIGNFN` |  |
| `0x0A66` | `FFLUSHFN` |  |
| `0x0BBA` | `SETRFNMAC` |  |
| `0x0CE9` | `CLOSEFN` |  |
| `0x0D33` | `OPENEVERYHARDFN` |  |
| `0x0DF5` | `FACCESSFN` |  |
| `0x1010` | `FCREATEFILE` |  |
| `0x10A1` | `FENSUREONLINEFN` |  |
| `0x1100` | `PNALLOC` |  |

## Segment `FILEUTIL_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNORMSZFILE` |  |
| `0x0216` | `FVALIDFILE` |  |
| `0x03B6` | `COPYCHUPPER` |  |
| `0x03F7` | `APPENDSZEXT` |  |

## Segment `FILERES_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PCHFROMFC` |  |
| `0x007B` | `PCHGETPN` |  |
| `0x00EC` | `IBPENSUREVALID` |  |
| `0x0167` | `CLOSEEVERYRFN` |  |
| `0x01C9` | `FCWSCRATCH` |  |
| `0x022C` | `WRITERGCH` |  |
| `0x031B` | `CLOSERFN` |  |

## Segment `MMW_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WINMAIN` |  |
| `0x0048` | `MmwWndProc` | [YES] |
| `0x0416` | `MMWPAINT` |  |
| `0x0483` | `MMWVERTSCROLL` |  |
| `0x0565` | `MMWHORZSCROLL` |  |

## Segment `MGLOBALS_TEXT` (9 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ADDONESPRM` |  |
| `0x024D` | `EXPANDCURSEL` |  |
| `0x02C2` | `ENDLOOKSEL` |  |
| `0x038A` | `ADDSPRM` |  |
| `0x03BB` | `ADDSPRMCPS` |  |
| `0x0467` | `PRMAPPEND` |  |
| `0x0764` | `APPLYCLOOKS` |  |
| `0x07C9` | `APPLYLOOKSPARAS` |  |
| `0x0801` | `APPLYLOOKSPARA` |  |

## Segment `DIAALERT_TEXT` (13 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ERRORLEVEL` |  |
| `0x0043` | `ABORT` |  |
| `0x004F` | `ERROR` |  |
| `0x018A` | `IDPROMPTBOXSZ` |  |
| `0x028C` | `WINFAILURE` |  |
| `0x02C4` | `DISKERROR` |  |
| `0x036C` | `ERRORBADMARGINS` |  |
| `0x03D3` | `DialogBadMargins` | [YES] |
| `0x0473` | `FGROWRGBP` |  |
| `0x059A` | `FSTILLOUTOFMEMORY` |  |
| `0x05F9` | `IBPFINDSLOT` |  |
| `0x06E1` | `WAITBEFOREPOSTMSG` |  |
| `0x0778` | `ENABLEEXCEPT` |  |

## Segment `DIACHGPR_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DialogPrinterSetup` | [YES] |
| `0x0586` | `BUILDPRSETUPSZ` |  |

## Segment `DIAPARA_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DOFORMATPARA` |  |
| `0x016A` | `PUTPARANUM` |  |
| `0x019D` | `DialogParaFormats` | [YES] |

## Segment `DIADIV_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DialogTabs` | [YES] |
| `0x0305` | `DialogDivision` | [YES] |

## Segment `DIAPRINT_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNPRPRINTER` |  |
| `0x005E` | `DialogPrint` | [YES] |
| `0x0338` | `FINITHEADERFOOTER` |  |

## Segment `DIAREPAG_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNREPAGINATE` |  |
| `0x00E2` | `DialogRepaginate` | [YES] |
| `0x01B7` | `FSETPAGE` |  |
| `0x0288` | `DialogSetPage` | [YES] |
| `0x0492` | `FPROMPTPGMARK` |  |
| `0x05B4` | `DialogPageMark` | [YES] |

## Segment `DIASUBS_TEXT` (13 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FPWPOSIT` |  |
| `0x0036` | `WPWFROMITW3ID` |  |
| `0x0069` | `FPDXAPOSIT` |  |
| `0x00A3` | `FPDXAPOSBIT` |  |
| `0x00DD` | `WPDXAFROMITDXA2WID` |  |
| `0x0114` | `WPWFROMITW3IDFUT` |  |
| `0x031A` | `FALLZEROPPCHPCH` |  |
| `0x0366` | `FPWPARSEPPCHPCH` |  |
| `0x0469` | `ENABLEOTHERMODELESS` |  |
| `0x04C9` | `SELECTIDITEXT` |  |
| `0x0502` | `DialogConfirm` | [YES] |
| `0x0591` | `OURDIALOGBOX` |  |
| `0x05C2` | `OURENDDIALOG` |  |

## Segment `FONTDLG_TEXT` (8 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DialogCharFormats` | [YES] |
| `0x02AE` | `SELECTFONTNAME` |  |
| `0x0408` | `SELECTFONTSIZE` |  |
| `0x045D` | `FADDFONTSIZE` |  |
| `0x04CD` | `INITFONTSIZEENUM` |  |
| `0x054D` | `FENUMFONTSIZE` |  |
| `0x058B` | `SZSPACEPADDEDINT` |  |
| `0x05E4` | `FVALIDATEENUMFFID` |  |

## Segment `HELP_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DialogHelp` | [YES] |

## Segment `JUMPPAGE_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DialogGoTo` | [YES] |
| `0x014E` | `CMDJUMPPAGE` |  |

## Segment `PRINT_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PRINTDOC` |  |
| `0x09CB` | `FPrContinue` | [YES] |
| `0x0A7B` | `DialogCancelPrint` | [YES] |
| `0x0ADE` | `DISPATCHPAINTMSG` |  |

## Segment `RULER3_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `RulerWndProc` | [YES] |

## Segment `RUNNING_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNEDITHEADER` |  |
| `0x0064` | `FNEDITFOOTER` |  |
| `0x00C8` | `EDITHEADERFOOTER` |  |
| `0x0318` | `FNEDITDOCUMENT` |  |
| `0x03D1` | `DialogRunningHead` | [YES] |
| `0x0742` | `DOFORMATRHTEXT` |  |
| `0x0897` | `MAKERUNNINGCPS` |  |

## Segment `SCROLLHZ_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PUTCPINWWHZ` |  |
| `0x011A` | `ADJWWHORIZ` |  |
| `0x01A8` | `SCROLLCURWW` |  |
| `0x03A2` | `FCheckPopupRect` | [YES] |
| `0x045F` | `SCROLLLEFT` |  |
| `0x04A1` | `SCROLLRIGHT` |  |

## Segment `SEARCH_TEXT` (23 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DOSEARCH` |  |
| `0x01EF` | `DOREPLACE` |  |
| `0x0B8C` | `CPSEARCHSZ` |  |
| `0x0D90` | `FMAKEFLAT` |  |
| `0x0E12` | `SETSPECIALMATCH` |  |
| `0x0E5D` | `FSETPARAREPLACE` |  |
| `0x0FE7` | `WCASECP` |  |
| `0x108A` | `FCPVALID` |  |
| `0x10D4` | `DESTROYMODELESS` |  |
| `0x10FA` | `DialogFind` | [YES] |
| `0x1325` | `DialogChange` | [YES] |
| `0x17AF` | `SETCHANGESTRING` |  |
| `0x17FF` | `FNFINDTEXT` |  |
| `0x1861` | `FNFINDAGAIN` |  |
| `0x193D` | `FNREPLACETEXT` |  |
| `0x199F` | `PUTCPINWWVERTSRCH` |  |
| `0x1B1F` | `FABORT` |  |
| `0x1BD7` | `FWORDCP` |  |
| `0x1D95` | `FCHMATCH` |  |
| `0x1F98` | `INSERTPAPSFORREPLACE` |  |
| `0x2028` | `FDLGSZTOOLONG` |  |
| `0x2067` | `IDIMSGRESPONSE` |  |
| `0x20BD` | `POSTSTATUSINCAPTION` |  |

## Segment `TRANS3_TEXT` (28 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNOPENFILE` |  |
| `0x0057` | `DialogOpen` | [YES] |
| `0x049F` | `FNSAVEAS` |  |
| `0x0521` | `DialogSaveAs` | [YES] |
| `0x0A95` | `DialogWordCvt` | [YES] |
| `0x0B53` | `IDCONFIRMDIRTY` |  |
| `0x0BD5` | `SPLITSZFILENAME` |  |
| `0x0C5A` | `CHECKENABLEBUTTON` |  |
| `0x0C92` | `FDELETEFN` |  |
| `0x0CEB` | `FDELETEFILE` |  |
| `0x0D55` | `FDELETEFILEMESSAGE` |  |
| `0x0DAE` | `FPERENAMEFILE` |  |
| `0x0ECF` | `RENAMEFILEMESSAGE` |  |
| `0x0FB6` | `WBROADCASTMSG` |  |
| `0x103D` | `BroadcastAllEnum` | [YES] |
| `0x1083` | `BroadcastChildEnum` | [YES] |
| `0x10D3` | `FSAMECLASSHWNDSZ` |  |
| `0x1124` | `FCONFIRMSAVE` |  |
| `0x11E2` | `PRELOADSAVESEGS` |  |
| `0x1243` | `CCHCOPYUPPERSZ` |  |
| `0x1285` | `DLGADDCORRECTEXTENSION` |  |
| `0x132E` | `FSEARCHSPEC` |  |
| `0x1355` | `SZFILEEXTRACT` |  |
| `0x13B1` | `FINWORDFORMAT` |  |
| `0x13EE` | `CONVERTFROMWORD` |  |
| `0x1435` | `TESTWORDCVT` |  |
| `0x14C3` | `MERGEINIT` |  |
| `0x14EC` | `MERGESTRINGS` |  |

## Segment `CACHE_TEXT` (11 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CACHEPARA` |  |
| `0x0375` | `DEFAULTPAPS` |  |
| `0x0411` | `GETTABSFORDOC` |  |
| `0x0467` | `CACHESECT` |  |
| `0x04E5` | `RECALCSEPTEXT` |  |
| `0x059B` | `INVALIDATECACHES` |  |
| `0x060E` | `TRASHCACHE` |  |
| `0x0635` | `FCPARAFIRST` |  |
| `0x07F8` | `FCPARALIM` |  |
| `0x09F3` | `BFROMFC` |  |
| `0x0A5B` | `IFROMFC` |  |

## Segment `CLIPBORD_TEXT` (11 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FMDOCCLIPBOARDMSG` |  |
| `0x00D0` | `FNCOPYEDIT` |  |
| `0x0173` | `MAKESCRAPUNRUNNING` |  |
| `0x01DD` | `FNCUTEDIT` |  |
| `0x02CF` | `FNPASTEEDIT` |  |
| `0x0348` | `MDOCRENDERFORMAT` |  |
| `0x03E9` | `MDOCDESTROYCLIP` |  |
| `0x0455` | `FPUTEXTMEMOSCRAP` |  |
| `0x0505` | `FGRABEXTMEMOSCRAP` |  |
| `0x0655` | `CHANGECLIPBOARD` |  |
| `0x0742` | `CMDINSSCRAP` |  |

## Segment `CURSKEYS_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MOVELEFTRIGHT` |  |
| `0x0297` | `MOVEUPDOWN` |  |
| `0x091B` | `CPTODLXP` |  |

## Segment `DISP_TEXT` (14 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DISPLAYFLI` |  |
| `0x08AF` | `DXPDIFF` |  |
| `0x0917` | `UPDATEDISPLAY` |  |
| `0x095B` | `UPDATEWW` |  |
| `0x0D60` | `DYPSCROLL` |  |
| `0x0ED1` | `FIMPORTANTMSGPRESENT` |  |
| `0x0F7B` | `CPBEGINLINE` |  |
| `0x1077` | `TOGGLESEL` |  |
| `0x1415` | `TRASHWW` |  |
| `0x1440` | `INVALBAND` |  |
| `0x1496` | `TRASHALLWWS` |  |
| `0x14BA` | `TURNOFFSEL` |  |
| `0x14F2` | `DRAWINSERTLINE` |  |
| `0x154F` | `CLEARINSERTLINE` |  |

## Segment `DOC_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `KILLDOC` |  |

## Segment `DOPRM_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DOPRM` |  |
| `0x00B6` | `DOSPRM` |  |
| `0x0576` | `CCHPSPRM` |  |
| `0x05A2` | `HPSALTER` |  |
| `0x0658` | `FTCMAPOLDFTC` |  |

## Segment `EDIT_TEXT` (19 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `REPLACE` |  |
| `0x00DE` | `CHECKGRAPHIC` |  |
| `0x0147` | `IPCDSPLIT` |  |
| `0x020B` | `PPCDOPEN` |  |
| `0x0358` | `REPL1` |  |
| `0x053B` | `ADJUSTCP` |  |
| `0x0917` | `REPLACECPS` |  |
| `0x0BD2` | `ADJPARAS` |  |
| `0x0D15` | `ICPSEARCH` |  |
| `0x0D97` | `DELFTNS` |  |
| `0x0DE6` | `ADJRG` |  |
| `0x0E2E` | `DELETESEL` |  |
| `0x0EC1` | `FWRITEOK` |  |
| `0x0EE4` | `SETUNDO` |  |
| `0x12BB` | `CLOBBERDOC` |  |
| `0x1385` | `COPYHEAPTABLEHANDLE` |  |
| `0x1400` | `ZEROFTNS` |  |
| `0x1418` | `FNCLEAREDIT` |  |
| `0x1452` | `MERGEFFNTB` |  |

## Segment `FETCH_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FETCHCP` |  |
| `0x030A` | `FETCHRGCH` |  |
| `0x03C5` | `IPCDFROMCP` |  |
| `0x044E` | `SETCHP` |  |
| `0x05E1` | `PNFKPFROMFCSCR` |  |

## Segment `FORM1_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FORMATLINE` |  |
| `0x0C87` | `Justify` |  |
| `0x0DE6` | `FGrowFormatHeap` |  |
| `0x0E15` | `DxpFromCh` |  |
| `0x0EC1` | `FFirstIch` |  |
| `0x0EDE` | `VALIDATEMEMORYDC` |  |

## Segment `INSERT_TEXT` (10 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ALPHAMODE` |  |
| `0x09D6` | `FBEGININSERT` |  |
| `0x0A93` | `ENDINSERT` |  |
| `0x0B54` | `NEWCHPINS` |  |
| `0x0BDA` | `MDINSUPDINSERTCH` |  |
| `0x0E26` | `FLUSHINSERT` |  |
| `0x0EB9` | `XPVALIDATEINSERTCACHE` |  |
| `0x0F03` | `DELCHARS` |  |
| `0x110F` | `FUPDATEONEDL` |  |
| `0x1204` | `FORMATINSLINE` |  |

## Segment `INSERTCO_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `INSERTRGCH` |  |
| `0x0101` | `INSERTEOLINSERT` |  |
| `0x018C` | `INSERTEOLPAP` |  |
| `0x01F3` | `ADDRUNSCRATCH` |  |
| `0x035F` | `FADDRUN` |  |
| `0x04CA` | `FPARAEQ` |  |

## Segment `MAINLOOP_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MAINLOOP` |  |
| `0x0119` | `IDLE` |  |
| `0x031F` | `UPDATEINVALID` |  |
| `0x03AB` | `CHECKMODE` |  |
| `0x0505` | `FNEEDTOGROWRGBP` |  |
| `0x054B` | `CACHEPAGE` |  |

## Segment `MENU_TEXT` (15 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETAPPMENU` |  |
| `0x05DE` | `PUTSZUNDOINMENU` |  |
| `0x066B` | `GETRGTSVCHPSEL` |  |
| `0x07CD` | `GETRGTSVPAPSEL` |  |
| `0x0898` | `GETCHPVALS` |  |
| `0x08EE` | `GETPAPVALS` |  |
| `0x0924` | `GETHFFN` |  |
| `0x0979` | `SETCHUNDEF` |  |
| `0x0A45` | `SETPARAUNDEF` |  |
| `0x0AD3` | `CPLIMNOSPACES` |  |
| `0x0B6E` | `FNOSEARCHSTR` |  |
| `0x0BB8` | `PHONYMENUACCELERATOR` |  |
| `0x0C10` | `FISMENUITEMENABLED` |  |
| `0x0C52` | `MMWCOMMAND` |  |
| `0x102B` | `FNCHARSELECTFONT` |  |

## Segment `MGLOBAL2_TEXT` (8 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `_BEEP` |  |
| `0x0025` | `BEEP` |  |
| `0x0041` | `DOCONTENTHIT` |  |
| `0x01BC` | `DOCONTENTHITEND` |  |
| `0x0250` | `STYFROMPT` |  |
| `0x02A5` | `FSETPSM` |  |
| `0x0313` | `DLFROMYP` |  |
| `0x0390` | `FSTILLDOWN` |  |

## Segment `OPEN_TEXT` (10 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `HGTBDCREATE` |  |
| `0x00C2` | `HSEPCREATE` |  |
| `0x0203` | `HPGTBCREATE` |  |
| `0x02DD` | `FNFROMSZ` |  |
| `0x0346` | `FNOPENSZ` |  |
| `0x05C6` | `WCOMPSZC` |  |
| `0x061B` | `CHLOWERC` |  |
| `0x064E` | `HGFCCOLLECT` |  |
| `0x0778` | `FMAKERUNTABLES` |  |
| `0x081F` | `FAPPLYOLDWORDSPRM` |  |

## Segment `PRINT2_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FPRINTBAND` |  |
| `0x00DC` | `PRINTFLI` |  |

## Segment `QUIT_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FMMWCLOSE` |  |
| `0x0054` | `MMWDESTROY` |  |
| `0x014C` | `KILLTEMPFILES` |  |

## Segment `RARE_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MMWWINSYSCHANGE` |  |

## Segment `RULER_TEXT` (19 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNSHOWRULER` |  |
| `0x0041` | `FCREATERULER` |  |
| `0x034A` | `DESTROYRULER` |  |
| `0x03E1` | `UPDATERULER` |  |
| `0x0405` | `REFRAMERULER` |  |
| `0x042D` | `RESETRULER` |  |
| `0x04B0` | `RESETTABBTN` |  |
| `0x04D3` | `RULERPAINT` |  |
| `0x0A8E` | `RULERMOUSE` |  |
| `0x1105` | `RULERSTATEFROMPT` |  |
| `0x11BF` | `UPDATERULERBTN` |  |
| `0x1265` | `XPKICKBACKXP` |  |
| `0x12BC` | `MERGERULERMARK` |  |
| `0x138A` | `FPOINTNEAR` |  |
| `0x13C7` | `XAQUANTIZE` |  |
| `0x13F3` | `XAQUANTIZEXA` |  |
| `0x1465` | `DELETERULERTAB` |  |
| `0x1492` | `INSERTRULERTAB` |  |
| `0x1557` | `FCLOSEXA` |  |

## Segment `SCROLLVT_TEXT` (12 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PUTCPINWWVERT` |  |
| `0x0120` | `SETCURWWVSCROLLPOS` |  |
| `0x01FA` | `ADJWWVERT` |  |
| `0x027C` | `SCROLLDOWNCTR` |  |
| `0x0419` | `SCROLLUPDYPWW` |  |
| `0x0475` | `SCROLLUPCTR` |  |
| `0x04A6` | `CTRBACKDYPCTR` |  |
| `0x07E6` | `APPENDCACHEPTR` |  |
| `0x084A` | `PREPENDCACHERGTR` |  |
| `0x08D5` | `TRASHCACHES` |  |
| `0x08FC` | `CPHINTCACHE` |  |
| `0x0934` | `DIRTYCACHE` |  |

## Segment `SELECT_TEXT` (8 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CPLIMSTY` |  |
| `0x0127` | `CPLASTSTYCHAR` |  |
| `0x01D0` | `CPFIRSTSTY` |  |
| `0x02D5` | `SELECT` |  |
| `0x05AF` | `GETINSPTPROPS` |  |
| `0x06B4` | `CHANGESEL` |  |
| `0x0A48` | `SELECTDLXP` |  |
| `0x0D59` | `CPEDGE` |  |

## Segment `SELECT2_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CPLIMSTYSPECIAL` |  |
| `0x0188` | `CPFIRSTSTYSPECIAL` |  |
| `0x0471` | `WBFROMCH` |  |

## Segment `TRANSFER_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WRITEDIRTYPAGES` |  |
| `0x004A` | `READFILEPAGES` |  |
| `0x01B4` | `REHASHRGIBPHASH` |  |

## Segment `TRANS2_TEXT` (17 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CMDXFSAVE` |  |
| `0x049C` | `CLEANDOC` |  |
| `0x077A` | `FWRITEFN` |  |
| `0x101D` | `REDUCEFNSCRATCHFN` |  |
| `0x1289` | `RESETFN` |  |
| `0x12EB` | `FBACKUPSZFILE` |  |
| `0x152C` | `FEXISTSSZFILE` |  |
| `0x1570` | `HPGTBGET` |  |
| `0x15AC` | `FREEFN` |  |
| `0x164D` | `FUNDIRTYFN` |  |
| `0x1690` | `IBPWRITING` |  |
| `0x1760` | `WRITEFFNTB` |  |
| `0x184D` | `FMAPFTCSAVE` |  |
| `0x191B` | `FINITMAPSAVE` |  |
| `0x195C` | `OUTSAVED` |  |
| `0x19AB` | `CCHEXPCP` |  |
| `0x1A06` | `SAVEFONTPROFILE` |  |

## Segment `TRANS4_TEXT` (2 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WRITEUNFORMATTED` |  |
| `0x0199` | `PURGETEMPS` |  |

## Segment `UNDO_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNUNDOEDIT` |  |
| `0x0018` | `CMDUNDO` |  |
| `0x08DE` | `FCOPYPGTB` |  |

## Segment `LOADFONT_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOADFONT` |  |
| `0x0100` | `LOADFCID` |  |
| `0x0712` | `FSELECTFONT` |  |
| `0x0842` | `RESETFONT` |  |

## Segment `CLIPBRD2_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FRENDERALL` |  |
| `0x0087` | `FWRITEEXTSCRAP` |  |
| `0x02BF` | `FWRITEEXTTEXTSCRAP` |  |
| `0x04A5` | `FREADEXTSCRAP` |  |
| `0x08C5` | `CCHREADLINEEXT` |  |
| `0x0930` | `FCOMPUTEPICTSIZE` |  |
| `0x0A92` | `HBMMONOFROMHBMCOLOR` |  |

## Segment `CLIPDISP_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MDOCPAINTCLIPBOARD` |  |
| `0x00DD` | `MDOCSIZECLIPBOARD` |  |
| `0x018E` | `MDOCVSCROLLCLIPBOARD` |  |
| `0x02AA` | `MDOCHSCROLLCLIPBOARD` |  |
| `0x0381` | `MDOCASKCBFORMATNAME` |  |
| `0x03D4` | `FGETCLIPBOARDDC` |  |
| `0x044C` | `RELEASECLIPBOARDDC` |  |

## Segment `CMD_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FCHECKTOGGLEKEYMESSAGE` |  |
| `0x0040` | `SETSHIFTFLAGS` |  |
| `0x0081` | `KCALPHAKEYMESSAGE` |  |
| `0x010B` | `FNONALPHAKEYMESSAGE` |  |

## Segment `EDITPGTB_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `REMOVEDELPGD` |  |

## Segment `FORMAT2_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CCHEXPPGN` |  |
| `0x007A` | `CCHSTUFFIDSTR` |  |
| `0x00EE` | `CCHCHSTUFF` |  |
| `0x011F` | `FFORMATSPECIALS` |  |
| `0x02F3` | `CCHEXPUNKNOWN` |  |

## Segment `HEAPRARE_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FTRYGROW` |  |
| `0x0059` | `FGIVEUPFREEBPS` |  |
| `0x00F2` | `FTHROWPAGES` |  |
| `0x0165` | `GIVEPAGES` |  |
| `0x0246` | `COMPRESSRGBP` |  |

## Segment `INSERT2_TEXT` (4 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WHSECGETTIME` |  |
| `0x0040` | `VALIDATETEXTBLT` |  |
| `0x0288` | `FCPINSERTINDL` |  |
| `0x02F8` | `KCINPUTNEXTKEY` |  |

## Segment `LOADFNT2_TEXT` (5 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PFCELRUGET` |  |
| `0x0029` | `FREEPFCE` |  |
| `0x00A9` | `FREEFONTS` |  |
| `0x0112` | `PFCEFCIDSCAN` |  |
| `0x01B7` | `MPFCIDHFFN` |  |

## Segment `PICTDRAG_TEXT` (12 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CMDUNSCALEPIC` |  |
| `0x005C` | `FNMOVEPICTURE` |  |
| `0x0144` | `FNSIZEPICTURE` |  |
| `0x035E` | `MXROUNDMX` |  |
| `0x03BB` | `FSTARTPMS` |  |
| `0x062B` | `SETUPDCFORPMS` |  |
| `0x066A` | `ENDPMS` |  |
| `0x06CB` | `DRAWPMSFRAMEICON` |  |
| `0x0C4A` | `INVERTPMSFRAME` |  |
| `0x0CF4` | `GETCURSORCLIENTPOS` |  |
| `0x0D15` | `SETCURSORCLIENTPOS` |  |
| `0x0FD3` | `PCHCVTMX` |  |

## Segment `PICTURE_TEXT` (7 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FREEBITMAPCACHE` |  |
| `0x002F` | `MARKINVALIDDLPICT` |  |
| `0x00CA` | `DISPLAYGRAPHICS` |  |
| `0x0865` | `COMPUTEPICTRECT` |  |
| `0x09DD` | `FGETPICTPEDL` |  |
| `0x0A61` | `CPWINGRAPHIC` |  |
| `0x0B0A` | `CACHESECTPIC` |  |

## Segment `PICTURE2_TEXT` (10 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `GETBITMAPMULTIPLIERS` |  |
| `0x022B` | `PCTDIFFUL` |  |
| `0x02E1` | `PXLCONVERT` |  |
| `0x03FF` | `FORMATGRAPHICS` |  |
| `0x059C` | `GETPICINFO` |  |
| `0x0610` | `GETBITMAPSIZE` |  |
| `0x06E6` | `DXPFROMDXA` |  |
| `0x0720` | `DXAFROMDXP` |  |
| `0x075A` | `DYPFROMDYA` |  |
| `0x0794` | `DYAFROMDYP` |  |

## Segment `PRINT3_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PRINTGRAPHICS` |  |

## Segment `RULER2_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETRULERMENU` |  |

## Segment `SELECTSP_TEXT` (6 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOOKSMOUSE` |  |
| `0x0119` | `COPYMOUSE` |  |
| `0x026A` | `MOVEMOUSE` |  |
| `0x02F2` | `FMOVETEXT` |  |
| `0x04C2` | `FCHECKPICTURE` |  |
| `0x05BD` | `CHECKMOVE` |  |

## Segment `WWACTDE_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `NEWCURWW` |  |
| `0x01EA` | `WWALLOC` |  |
| `0x0299` | `FREEWW` |  |

## Segment `EXIT_TEXT` (1 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `_EXIT` |  |

## Segment `DGROUP` (461 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0004` | `rsrvptrs` |  |
| `0x0028` | `VCHDECIMAL` |  |
| `0x002A` | `VZATABDFLT` |  |
| `0x002C` | `IBPMAXFLOAT` |  |
| `0x002E` | `VFBUFFERSDIRTY` |  |
| `0x0030` | `DOCMODE` |  |
| `0x0032` | `VERSFILE` |  |
| `0x0034` | `VREFFILE` |  |
| `0x0036` | `VREFSYSTEM` |  |
| `0x0038` | `VFINITIALIZING` |  |
| `0x003A` | `VFDISKFULL` |  |
| `0x003C` | `VFSYSFULL` |  |
| `0x003E` | `VFDISKERROR` |  |
| `0x0040` | `VFLARGESYS` |  |
| `0x0042` | `VFMEMMSGREPORTED` |  |
| `0x0044` | `VFCLOSEFILESINDIALOG` |  |
| `0x0046` | `VFPMS` |  |
| `0x0048` | `VFNWRITING` |  |
| `0x004A` | `VFNSAVING` |  |
| `0x004C` | `VFTEXTONLYSAVE` |  |
| `0x004E` | `VFOUTOFMEMORY` |  |
| `0x0050` | `VFOVERTYPE` |  |
| `0x0052` | `VFPRINTMODE` |  |
| `0x0054` | `VFDRAFTMODE` |  |
| `0x0056` | `VFREPAGECONFIRM` |  |
| `0x0058` | `VFVISIMODE` |  |
| `0x005A` | `VFNOIDLE` |  |
| `0x005C` | `VFDEACTBYOTHERAPP` |  |
| `0x005E` | `VFDOWNCLICK` |  |
| `0x0060` | `VFCURSORVISIBLE` |  |
| `0x0062` | `VFMOUSEEXIST` |  |
| `0x0064` | `VFINLONGOPERATION` |  |
| `0x0066` | `VFSCRAPISPIC` |  |
| `0x0068` | `VFPRPAGES` |  |
| `0x006A` | `VCCOPIES` |  |
| `0x006C` | `VFPRERR` |  |
| `0x006E` | `VFPRDEFAULT` |  |
| `0x0070` | `VFWARNMARGINS` |  |
| `0x0072` | `VFPRINTISINIT` |  |
| `0x0074` | `VFHELPISINIT` |  |
| `0x0076` | `VFGLYISINIT` |  |
| `0x0078` | `VFINSEND` |  |
| `0x007A` | `VFSEESEL` |  |
| `0x007C` | `VFGOTOKEYMODE` |  |
| `0x007E` | `VWORDFMTMODE` |  |
| `0x0080` | `SZMODE` |  |
| `0x009E` | `SZEMPTY` |  |
| `0x00A0` | `SZEXTDOC` |  |
| `0x00A6` | `SZEXTWORDDOC` |  |
| `0x00AC` | `SZEXTGLS` |  |
| `0x00B2` | `SZEXTDRV` |  |
| `0x00B8` | `MPDTYSZEXT` |  |
| `0x00C6` | `SZEXTBACKUP` |  |
| `0x00CC` | `SZEXTWORDBAK` |  |
| `0x00D2` | `SZWRITEPRODUCT` |  |
| `0x00DA` | `SZFONTENTRY` |  |
| `0x00E0` | `SZWRITEDOCPROMPT` |  |
| `0x00F0` | `SZSCRATCHFILEPROMPT` |  |
| `0x00FE` | `SZSAVEFILEPROMPT` |  |
| `0x010A` | `SZAPPNAME` |  |
| `0x0110` | `SZUNTITLED` |  |
| `0x011C` | `SZSEPNAME` |  |
| `0x0120` | `SZWINDOWS` |  |
| `0x0128` | `SZDEVICE` |  |
| `0x0130` | `SZDEVICES` |  |
| `0x0138` | `SZBACKUP` |  |
| `0x0140` | `SZPARENTCLASS` |  |
| `0x014E` | `SZDOCCLASS` |  |
| `0x015A` | `SZRULERCLASS` |  |
| `0x0168` | `SZPAGEINFOCLASS` |  |
| `0x017A` | `SZWRITETEXT` |  |
| `0x0190` | `SZFREE` |  |
| `0x0198` | `SZDEVICEMODE` |  |
| `0x01A4` | `SZMWTEMP` |  |
| `0x01B2` | `SZSYSTEM` |  |
| `0x01BA` | `SZMW_ACCTB` |  |
| `0x01C4` | `SZNULLPORT` |  |
| `0x01CE` | `SZNONE` |  |
| `0x01D4` | `SZMWLORES` |  |
| `0x01DC` | `SZMWHIRES` |  |
| `0x01E4` | `SZMW_ICON` |  |
| `0x01EC` | `SZMW_MENU` |  |
| `0x01F4` | `SZSCROLLBAR` |  |
| `0x01FE` | `SZSHESC` |  |
| `0x0208` | `SZPMSCUR` |  |
| `0x0210` | `SZBTN` |  |
| `0x0218` | `SZMARK` |  |
| `0x021E` | `SZHEADER` |  |
| `0x0226` | `SZFOOTER` |  |
| `0x022E` | `SZMODERN` |  |
| `0x0236` | `SZROMAN` |  |
| `0x023C` | `SZSWISS` |  |
| `0x0242` | `SZSCRIPT` |  |
| `0x024A` | `SZDECORATIVE` |  |
| `0x0256` | `SZEXTSEARCH` |  |
| `0x025E` | `SZLOADFILE` |  |
| `0x026E` | `SZCVTLOADFILE` |  |
| `0x028E` | `SZINTL` |  |
| `0x0294` | `SZSDECIMAL` |  |
| `0x029E` | `SZSDECIMALDEFAULT` |  |
| `0x02A0` | `SZICOUNTRY` |  |
| `0x02AA` | `SZICOUNTRYDEFAULT` |  |
| `0x02AE` | `MPUTSZ` |  |
| `0x02BA` | `FCMACPAPINS` |  |
| `0x02BE` | `FCMACCHPINS` |  |
| `0x02C2` | `VCCHBLTED` |  |
| `0x02C4` | `VIDXPINSERTCACHE` |  |
| `0x02C6` | `CPWALL` |  |
| `0x02CA` | `VFSHIFTKEY` |  |
| `0x02CC` | `VFCOMMANDKEY` |  |
| `0x02CE` | `VFOPTIONKEY` |  |
| `0x02D0` | `VDOCPARACACHE` |  |
| `0x02D2` | `CTRCACHE` |  |
| `0x02D4` | `ITRFIRSTCACHE` |  |
| `0x02D6` | `ITRLIMCACHE` |  |
| `0x02D8` | `DCPCACHE` |  |
| `0x02DA` | `CPCACHEHINT` |  |
| `0x02DE` | `VDOCBITMAPCACHE` |  |
| `0x02E0` | `VHBMBITMAPCACHE` |  |
| `0x02E2` | `DNSPRM` |  |
| `0x030C` | `VFINVALID` |  |
| `0x030E` | `UTCUR` |  |
| `0x0310` | `FREPLCONFIRM` |  |
| `0x0312` | `FSEARCHCASE` |  |
| `0x0314` | `FSEARCHWORD` |  |
| `0x0316` | `FMATCHEDWHITE` |  |
| `0x0318` | `FPARAREPLACE` |  |
| `0x031A` | `VFDIDSEARCH` |  |
| `0x031C` | `VFPRINTERVALID` |  |
| `0x031E` | `VFSELHIDDEN` |  |
| `0x0320` | `WWMAC` |  |
| `0x0322` | `WWCUR` |  |
| `0x0324` | `WWCLIPBOARD` |  |
| `0x0326` | `PWWDCUR` |  |
| `0x0328` | `VIPGD` |  |
| `0x032A` | `VFLI` |  |
| `0x0658` | `DYPRULER` |  |
| `0x065A` | `IDSTRCURRENTUNDO` |  |
| `0x065C` | `VFTABSCHANGED` |  |
| `0x065E` | `VFMARGCHANGED` |  |
| `0x0660` | `FLASHID` |  |
| `0x0662` | `FPRMCACHE` |  |
| `0x06E6` | `PRMCACHE` |  |
| `0x06E8` | `HSZNOMEMORY` |  |
| `0x06EA` | `HSZCANTPRINT` |  |
| `0x06EC` | `HSZPRFAIL` |  |
| `0x06EE` | `HSZCANTRUNM` |  |
| `0x06F0` | `HSZCANTRUND` |  |
| `0x06F2` | `HSZCANTRUNF` |  |
| `0x06F4` | `HSZWINFAILURE` |  |
| `0x06F6` | `VFWINFAILURE` |  |
| `0x06FE` | `HFFNTBENUM` |  |
| `0x0700` | `DOCHELP` |  |
| `0x0704` | `VFERASEWW` |  |
| `0x0706` | `VFDEAD` |  |
| `0x0708` | `VFICONIC` |  |
| `0x070A` | `CPMINHEADER` |  |
| `0x070E` | `CPMACHEADER` |  |
| `0x0712` | `CPMINFOOTER` |  |
| `0x0716` | `CPMACFOOTER` |  |
| `0x071A` | `CPMINDOCUMENT` |  |
| `0x073C` | `FNLASTCUT` |  |
| `0x073E` | `FDONTDESTROYCLIP` |  |
| `0x0744` | `VFSEEEDGESEL` |  |
| `0x0746` | `RGHPS` |  |
| `0x0764` | `VCCOUNT` |  |
| `0x0780` | `HPARENTWW` |  |
| `0x0782` | `HMMWMODINSTANCE` |  |
| `0x0784` | `RGBBKGRND` |  |
| `0x0788` | `RGBTEXT` |  |
| `0x078C` | `HBRBKGRND` |  |
| `0x078E` | `ROPERASE` |  |
| `0x0792` | `VFMONOCHROME` |  |
| `0x0794` | `VHMENU` |  |
| `0x0796` | `VFDOUBLECLICK` |  |
| `0x0798` | `VHMDC` |  |
| `0x079A` | `DXPBMMDC` |  |
| `0x079C` | `DYPBMMDC` |  |
| `0x079E` | `VHDCPRINTER` |  |
| `0x07A0` | `VHDLGRUNNINGHEAD` |  |
| `0x07A2` | `VHDLGFIND` |  |
| `0x07A4` | `VHDLGCHANGE` |  |
| `0x07A6` | `VHWNDRULER` |  |
| `0x07A8` | `VHWNDCANCELPRINT` |  |
| `0x07AA` | `VHWNDMSGBOXPARENT` |  |
| `0x07AC` | `VFSKIPNEXTBLINK` |  |
| `0x07AE` | `VFFOCUS` |  |
| `0x07B0` | `VFOWNCLIPBOARD` |  |
| `0x07B2` | `VHFPAGEINFO` |  |
| `0x07B4` | `VIFCEMAC` |  |
| `0x07B6` | `VFSELECTING` |  |
| `0x07B8` | `VFAWFULNOISE` |  |
| `0x07BA` | `VHDCRULER` |  |
| `0x07BC` | `HMDCBITMAP` |  |
| `0x07BE` | `HMDCSCREEN` |  |
| `0x07C0` | `HBMBTN` |  |
| `0x07C2` | `HBMMARK` |  |
| `0x07C4` | `HBMNULLRULER` |  |
| `0x07CE` | `WWCACHE` |  |
| `0x07D4` | `MPUTCZAUT` |  |
| `0x07E6` | `RGWPAPNORMAL` |  |
| `0x0806` | `VHCPMS` |  |
| `0x080E` | `VFWHOLEPICTINVALID` |  |
| `0x0810` | `VIFFNDEFAULT` |  |
| `0x0820` | `__aaltstkovr` |  |
| `0x0824` | `STKHQQ` |  |
| `0x0826` | `__csetup` |  |
| `0x0826` | `__aintdiv` |  |
| `0x082A` | `__fac` |  |
| `0x0832` | `__psp` |  |
| `0x0834` | `_errno` |  |
| `0x0836` | `__umaskval` |  |
| `0x0838` | `__dosvermajor` |  |
| `0x0838` | `__osmajor` |  |
| `0x0839` | `__osminor` |  |
| `0x0839` | `__dosverminor` |  |
| `0x083A` | `___argc` |  |
| `0x083C` | `___argv` |  |
| `0x083E` | `_environ` |  |
| `0x0840` | `__oserr` |  |
| `0x0840` | `__doserrno` |  |
| `0x0842` | `__eofflag` |  |
| `0x0856` | `__osfile` |  |
| `0x086A` | `__child` |  |
| `0x086C` | `__csigtab` |  |
| `0x0874` | `__cpackitin` |  |
| `0x0876` | `__fpinit` |  |
| `0x08A0` | `_edata` |  |
| `0x0A50` | `VDYPAFTER` |  |
| `0x0A52` | `VDYPBASE` |  |
| `0x0A54` | `VSTYCUR` |  |
| `0x0A56` | `YPSUBSUPER` |  |
| `0x0A58` | `RGBP` |  |
| `0x0A5A` | `DXAPRPAGE` |  |
| `0x0A5C` | `ISZSIZEENUMMAC` |  |
| `0x0A5E` | `VCHPSEL` |  |
| `0x0A68` | `VHCBARCUR` |  |
| `0x0A6A` | `VFBACKUPSAVE` |  |
| `0x0A6C` | `DYAPRPAGE` |  |
| `0x0A6E` | `STBUF` |  |
| `0x0B6E` | `VCPMACPAGECACHE` |  |
| `0x0B72` | `VPAPABS` |  |
| `0x0BD8` | `VDOCEXPFETCH` |  |
| `0x0BDA` | `FERROR` |  |
| `0x0BDC` | `VFBMBITMAPCACHE` |  |
| `0x0BDE` | `VCPBITMAPCACHE` |  |
| `0x0BE2` | `VMSGLAST` |  |
| `0x0BF4` | `LPFONTFACEENUM` |  |
| `0x0BF8` | `VCHPABS` |  |
| `0x0C02` | `MEMORY` |  |
| `0x0C04` | `RECTPARENT` |  |
| `0x0C0C` | `LPDIALOGCHARFORMATS` |  |
| `0x0C10` | `LPDIALOGPRINTERSETUP` |  |
| `0x0C14` | `LPDIALOGGOTO` |  |
| `0x0C18` | `FNMAC` |  |
| `0x0C1A` | `HSZGLOSFILE` |  |
| `0x0C1C` | `CPLIMINSERTED` |  |
| `0x0C20` | `DOCSCRAP` |  |
| `0x0C22` | `VXPCURSLINE` |  |
| `0x0C24` | `VFFONTENUMFAIL` |  |
| `0x0C26` | `MPRMKDXA` |  |
| `0x0C2C` | `VYPCURSLINE` |  |
| `0x0C2E` | `VHDLGRUNNING` |  |
| `0x0C30` | `XPMAXUSER` |  |
| `0x0C32` | `VHCHOURGLASS` |  |
| `0x0C34` | `SELDOCSAVE` |  |
| `0x0C3E` | `VWDOSVERSION` |  |
| `0x0C40` | `LPDIALOGBADMARGINS` |  |
| `0x0C44` | `FDESTROYOK` |  |
| `0x0C46` | `VSEPSTD` |  |
| `0x0CAC` | `VUAB` |  |
| `0x0CC4` | `VFLASTCURSOR` |  |
| `0x0CC6` | `RGTRCACHE` |  |
| `0x0E06` | `HBMNULL` |  |
| `0x0E08` | `DYPBAND` |  |
| `0x0E0A` | `VPGNBEGIN` |  |
| `0x0E0C` | `VCCHFETCH` |  |
| `0x0E0E` | `DXPLOGINCH` |  |
| `0x0E10` | `VPFCESCREEN` |  |
| `0x0E12` | `LPDIALOGCANCELPRINT` |  |
| `0x0E16` | `DYPLOGINCH` |  |
| `0x0E18` | `VSEPABS` |  |
| `0x0E7E` | `VCHPNORMAL` |  |
| `0x0E88` | `ICHINSERT` |  |
| `0x0E8A` | `VFCIDPRINT` |  |
| `0x0E8E` | `VCCPFETCH` |  |
| `0x0E90` | `VFINSLAST` |  |
| `0x0E92` | `CPINSLASTINVAL` |  |
| `0x0E96` | `VFMOUSE` |  |
| `0x0E98` | `ITXBMAC` |  |
| `0x0E9A` | `DYPMAX` |  |
| `0x0E9C` | `RGCHINSERT` |  |
| `0x0EBC` | `VFMISCREEN` |  |
| `0x0ECA` | `DYPSPLITLINE` |  |
| `0x0ECC` | `VFCANPRINT` |  |
| `0x0ECE` | `VCPMINPAGECACHE` |  |
| `0x0ED2` | `VCPLIMPARACACHE` |  |
| `0x0ED6` | `VFSIZEMODE` |  |
| `0x0ED8` | `ISZSIZEENUM` |  |
| `0x0EDA` | `VICHFETCH` |  |
| `0x0EDC` | `HGTXB` |  |
| `0x0EDE` | `PCHPDEFAULT` |  |
| `0x0EE0` | `ICHPMACFORMAT` |  |
| `0x0EE2` | `VIBPWRITING` |  |
| `0x0EE4` | `FGRAYPARA` |  |
| `0x0EE6` | `VXPCURSOR` |  |
| `0x0EE8` | `VHWNDSIZEBOX` |  |
| `0x0EEA` | `VPGN` |  |
| `0x0EEC` | `DNRFN` |  |
| `0x0F28` | `VFINSERTON` |  |
| `0x0F2A` | `RGSZSIZE` |  |
| `0x0F2C` | `VSEPPAGE` |  |
| `0x0F92` | `HPDOCDOD` |  |
| `0x0F94` | `HSZPRPORT` |  |
| `0x0F96` | `MFFONTS` |  |
| `0x0F98` | `LPDIALOGWORDCVT` |  |
| `0x0F9C` | `ISZSIZEENUMMAX` |  |
| `0x0F9E` | `DOCMAC` |  |
| `0x0FA0` | `HSZFLATSEARCH` |  |
| `0x0FA2` | `VIFFNMENUMAC` |  |
| `0x0FA4` | `VSEPNORMAL` |  |
| `0x100A` | `VCPSELECT` |  |
| `0x100E` | `VXPINS` |  |
| `0x1010` | `HSZPRDRIVER` |  |
| `0x1012` | `VHRGBSAVE` |  |
| `0x1014` | `VCHPFETCH` |  |
| `0x101E` | `FGRAYCHAR` |  |
| `0x1020` | `DXAADJUSTPERCM` |  |
| `0x1022` | `VPCHFETCH` |  |
| `0x1024` | `VFTEXTBLTVALID` |  |
| `0x1026` | `VFSCROLLINVAL` |  |
| `0x1028` | `LPDIALOGTABS` |  |
| `0x102C` | `VCHPINSERT` |  |
| `0x1036` | `ERRIO` |  |
| `0x1038` | `RGVAL` |  |
| `0x1068` | `DYPAVEINIT` |  |
| `0x106A` | `ASPECTXFONT` |  |
| `0x106C` | `LPDIALOGALERT` |  |
| `0x1070` | `IIBPHASHMAX` |  |
| `0x1072` | `VHGCHPFORMAT` |  |
| `0x1074` | `LPDIALOGDIVISION` |  |
| `0x1078` | `VPFCEPRINT` |  |
| `0x107A` | `ASPECTYFONT` |  |
| `0x107C` | `DXAPROFFSET` |  |
| `0x107E` | `RGWWD` |  |
| `0x10EE` | `DXPPRPAGE` |  |
| `0x10F0` | `CPLIMDELETED` |  |
| `0x10F4` | `VHWND` |  |
| `0x10F6` | `DYAPROFFSET` |  |
| `0x10F8` | `DXPSCRLBAR` |  |
| `0x10FA` | `VCPFETCH` |  |
| `0x10FE` | `DYPPRPAGE` |  |
| `0x1100` | `DYPSCRLBAR` |  |
| `0x1102` | `VYPBASEINS` |  |
| `0x1104` | `VFINSFONTTOOTALL` |  |
| `0x1106` | `LPDIALOGPARAFORMATS` |  |
| `0x110A` | `VFSELATPARA` |  |
| `0x110C` | `LPDIALOGSAVEAS` |  |
| `0x1110` | `HSZREPLACE` |  |
| `0x1112` | `XPSELBAR` |  |
| `0x1114` | `SZNUL` |  |
| `0x1132` | `LPDIALOGSETPAGE` |  |
| `0x1136` | `VDOCFETCH` |  |
| `0x1138` | `YPMAXWWINIT` |  |
| `0x113A` | `VFMODEISFOOTNOTE` |  |
| `0x113C` | `VCPLIMSECTCACHE` |  |
| `0x1140` | `DXAPERPIX` |  |
| `0x1142` | `VPAPPREVINS` |  |
| `0x11A8` | `DYAPERPIX` |  |
| `0x11AA` | `RGFFNFONTMENU` |  |
| `0x1210` | `FSPECIALMATCH` |  |
| `0x1212` | `DXPLOGCM` |  |
| `0x1214` | `LPDIALOGREPAGINATE` |  |
| `0x1218` | `HPFNFCB` |  |
| `0x121A` | `DYPLOGCM` |  |
| `0x121C` | `VFKPDPARAINS` |  |
| `0x1226` | `VFMIPRINT` |  |
| `0x1234` | `VPDLGBUF` |  |
| `0x1236` | `IFFNENUM` |  |
| `0x1238` | `RGXARULERSPRM` |  |
| `0x123E` | `MPIBPBPS` |  |
| `0x1240` | `VHCARROW` |  |
| `0x1242` | `HSZCASEREPLACE` |  |
| `0x1244` | `SZCAPTIONSAVE` |  |
| `0x1286` | `XPMINSCROLL` |  |
| `0x1288` | `VXPMACINS` |  |
| `0x128A` | `RFNMAC` |  |
| `0x128C` | `LPFONTSIZEENUM` |  |
| `0x1290` | `VDYPCURSLINE` |  |
| `0x1292` | `VCPFIRSTSECTCACHE` |  |
| `0x1296` | `VFSUPERINS` |  |
| `0x1298` | `HSZREALREPLACE` |  |
| `0x129A` | `LPDIALOGOPEN` |  |
| `0x129E` | `LPDIALOGHELP` |  |
| `0x12A2` | `RCPICTINVALID` |  |
| `0x12AA` | `LPDIALOGRUNNINGHEAD` |  |
| `0x12AE` | `XPRIGHTLIM` |  |
| `0x12B0` | `XPALPHA` |  |
| `0x12B2` | `YPALPHA` |  |
| `0x12B4` | `DOCCUR` |  |
| `0x12B6` | `VHACCEL` |  |
| `0x12B8` | `VFKPDCHARINS` |  |
| `0x12C2` | `VISEDCACHE` |  |
| `0x12C4` | `VDXATEXTRULER` |  |
| `0x12C6` | `RGFFNFONTFAMILY` |  |
| `0x1392` | `LPDIALOGCHANGE` |  |
| `0x1396` | `VHSYSMENU` |  |
| `0x1398` | `LPDIALOGFIND` |  |
| `0x139C` | `CPINSERT` |  |
| `0x13A0` | `CPSTART` |  |
| `0x13A4` | `YPMAXALL` |  |
| `0x13A6` | `CPMACCUR` |  |
| `0x13AA` | `CPFIRSTDOCSAVE` |  |
| `0x13AE` | `VPEDLADJUSTCP` |  |
| `0x13B0` | `LPDIALOGPRINT` |  |
| `0x13B4` | `VFMAKEINSEND` |  |
| `0x13B6` | `VPFCEMRU` |  |
| `0x13B8` | `XPRIGHTMAX` |  |
| `0x13BA` | `VCHINCH` |  |
| `0x13BC` | `XPINCH` |  |
| `0x13BE` | `CWHEAPFREE` |  |
| `0x13C0` | `VDYPCURSLINEINS` |  |
| `0x13C2` | `VDXAPAPER` |  |
| `0x13C4` | `DXPRULER` |  |
| `0x13C6` | `LPFPRCONTINUE` |  |
| `0x13CA` | `VHWNDPAGEINFO` |  |
| `0x13CC` | `VPPAPNORMAL` |  |
| `0x13CE` | `LPDIALOGCONFIRM` |  |
| `0x13D2` | `VDYAPAPER` |  |
| `0x13D4` | `LPDIALOGPAGEMARK` |  |
| `0x13D8` | `DXPINFOSIZE` |  |
| `0x13DA` | `SZSEARCH` |  |
| `0x13DC` | `HSZXFOPTIONS` |  |
| `0x13DE` | `VFPICTSEL` |  |
| `0x13E0` | `CPMINCUR` |  |
| `0x13E4` | `VPSMCUR` |  |
| `0x13E6` | `RGFCE` |  |
| `0x1BC6` | `VHCIBEAM` |  |
| `0x1BC8` | `HSZPRINTER` |  |
| `0x1BCA` | `HSZTEMP` |  |
| `0x1BCC` | `TSMRURFN` |  |
| `0x1BCE` | `VHRESERVEDSPACE` |  |
| `0x1BD0` | `HGCHEXPAND` |  |
| `0x1BD2` | `IBPMAX` |  |
| `0x1BD4` | `DOCRULERSPRM` |  |
| `0x1BD6` | `SELPEND` |  |
| `0x1BE0` | `VDLINS` |  |
| `0x1BE2` | `SELCUR` |  |
| `0x1BEC` | `YPSUBSUPERPR` |  |
| `0x1BEE` | `HSZSEARCH` |  |
| `0x1BF0` | `VDOCPAGECACHE` |  |
| `0x1BF2` | `YPSZPAGEINFO` |  |
| `0x1BF4` | `TSMRUBPS` |  |
| `0x1BF6` | `VPGNEND` |  |
| `0x1BF8` | `VFCIDSCREEN` |  |
| `0x1BFC` | `DOCUNDO` |  |
| `0x1BFE` | `RGIBPHASH` |  |
| `0x1C00` | `VCPFIRSTPARACACHE` |  |
| `0x1C04` | `VDOCSECTCACHE` |  |
| `0x1C06` | `DYPWWINIT` |  |
| `0x1C08` | `CPMATCHLIM` |  |
