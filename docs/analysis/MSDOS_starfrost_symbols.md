# MSDOS - reference symbols (starfrost013, retail build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **retail** Windows 1.03 build.

> **Note (retail build)**: these symbols come from the **retail** `.SYM` shipped alongside the binary. Offsets are expected to match our retail extraction. When a name is also exported in `src/MSDOS/MSDOS.def`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `MSDOS`
- Functions in retail build: **290**
- Constants: **1**
- Segments: **5**
- Names also in our retail `.DEF` exports: **9**

## Segment `_TEXT` (3 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `WINMAIN` |  |
| `0x0003` | `WINLOOP` |  |
| `0x0027` | `SessionWndProc` | [YES] |

## Segment `_INIT` (9 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `__ASTART` |  |
| `0x0081` | `SESSIONFIRST` |  |
| `0x00DC` | `READUSERPRO` |  |
| `0x02A8` | `SESSIONINIT` |  |
| `0x0519` | `REGDOSWINDOWS` |  |
| `0x062A` | `SESSIONCREATE` |  |
| `0x0886` | `GETOLDDATA` |  |
| `0x095F` | `SESSIONNEW` |  |
| `0x0AD3` | `SESSIONWININICHANGE` |  |

## Segment `_NRES1` (83 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SESSIONCLOSEBOX` |  |
| `0x006F` | `SessionEnumProc` | [YES] |
| `0x00CB` | `PUTUPENDBOX` |  |
| `0x00F7` | `RESERROR` |  |
| `0x01F1` | `DEALWITHDRIVES` |  |
| `0x0222` | `SESSIONUSER` |  |
| `0x0405` | `SESSIONINPUT` |  |
| `0x06A7` | `SESSIONFOCUS` |  |
| `0x06F4` | `STARTWAIT` |  |
| `0x0752` | `ENDWAIT` |  |
| `0x0776` | `SESSIONSIZE` |  |
| `0x07E3` | `LTOSZ` |  |
| `0x0845` | `OUTWORD` |  |
| `0x084C` | `OUTBYTE` |  |
| `0x085B` | `DIGIT` |  |
| `0x0862` | `BLANKZER` |  |
| `0x0874` | `CONVWRD` |  |
| `0x087F` | `SETDISK` |  |
| `0x0891` | `FFIRST` |  |
| `0x08E1` | `FNEXT` |  |
| `0x0907` | `SFIRST` |  |
| `0x0925` | `CURDIR` |  |
| `0x0973` | `SHELLEXEC` |  |
| `0x0989` | `SHORTDISPLAY` |  |
| `0x0A52` | `DISPLAYFILES` |  |
| `0x0B2C` | `SESSIONERASEBKGND` |  |
| `0x0BC0` | `CALCLAYOUT` |  |
| `0x0E80` | `MYGETDC` |  |
| `0x0E9A` | `MYRELDC` |  |
| `0x0EB7` | `SORTDIRBUF` |  |
| `0x0F4B` | `FIXHEAP` |  |
| `0x0FF1` | `FILECOMPARE` |  |
| `0x10CA` | `CALCEXTENTS` |  |
| `0x1184` | `SETINDEXBUF` |  |
| `0x126A` | `FILEMATCH` |  |
| `0x13E0` | `CHANGEDISK` |  |
| `0x143E` | `GETVOLUMENAME` |  |
| `0x14F2` | `GETCURDIR` |  |
| `0x152F` | `PATHINPUT` |  |
| `0x1782` | `PATHPAINT` |  |
| `0x1891` | `MAPXTOPATHPART` |  |
| `0x18F7` | `INVERTPATHPART` |  |
| `0x19B6` | `PathWndProc` | [YES] |
| `0x1A42` | `SELECT` |  |
| `0x1A5E` | `UNSELECT` |  |
| `0x1AA5` | `DSHELP` |  |
| `0x1AC8` | `CLEARSELECTED` |  |
| `0x1B1C` | `DRAWSELECT` |  |
| `0x1BBA` | `LSELITEM` |  |
| `0x1C05` | `ISSELECTED` |  |
| `0x1C30` | `DISKPAINT` |  |
| `0x1D7A` | `SELECTTOASTER` |  |
| `0x1DF0` | `DISKINPUT` |  |
| `0x1E9E` | `CHANGETOASTER` |  |
| `0x1ED3` | `TRYDISKCHANGE` |  |
| `0x1F1E` | `MAPXYTODRIVE` |  |
| `0x1F7B` | `DiskWndProc` | [YES] |
| `0x2018` | `DIRINPUT` |  |
| `0x212A` | `DIRSIZE` |  |
| `0x22EA` | `MAPXYTOFILE` |  |
| `0x234F` | `DIRPAINT` |  |
| `0x23ED` | `INVERTSELECTED` |  |
| `0x2420` | `DIRSCROLL` |  |
| `0x25D2` | `DirWndProc` | [YES] |
| `0x26AE` | `COUNTDRIVES` |  |
| `0x2700` | `GETDISK` |  |
| `0x2707` | `LINES` |  |
| `0x271D` | `FILLDIRBUF` |  |
| `0x286A` | `SESSIONKEY` |  |
| `0x2B86` | `SESSIONCHAR` |  |
| `0x2CAC` | `BRINGFILEONSCREEN` |  |
| `0x2D21` | `MAKECARET` |  |
| `0x2D91` | `KILLCARET` |  |
| `0x2DB6` | `MOVECURSOR` |  |
| `0x2E2A` | `DODCLICKONFILE` |  |
| `0x2EE1` | `ISRUNFILE` |  |
| `0x2F9E` | `GETEXTENSION` |  |
| `0x3157` | `RUNAPP` |  |
| `0x36AE` | `HANDLEERROR` |  |
| `0x36EE` | `ISOKFILENAME` |  |
| `0x37A4` | `CBTINITWL` |  |
| `0x3830` | `CBTSETWMWL` |  |
| `0x3859` | `FCBTMESSAGE` |  |

## Segment `_NRES2` (53 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ISDEVICE` |  |
| `0x0016` | `FFIRST2` |  |
| `0x005A` | `FNEXT2` |  |
| `0x0074` | `TOUCHCFILE` |  |
| `0x008D` | `GETSYSFREE` |  |
| `0x00B9` | `GETDFREE` |  |
| `0x00F4` | `_TOUPPER` |  |
| `0x010A` | `MAKEDIR` |  |
| `0x0144` | `VOLCREATE` |  |
| `0x0162` | `VOLRENAME` |  |
| `0x0176` | `CHDIR` |  |
| `0x01B0` | `RENAME` |  |
| `0x0213` | `REMOVE` |  |
| `0x024D` | `RMDIR` |  |
| `0x0287` | `LONGDISPLAY` |  |
| `0x0504` | `DATETOSTR` |  |
| `0x0603` | `TIMETOSTR` |  |
| `0x06D4` | `fnDlg` | [YES] |
| `0x0AA7` | `PUTUPDB` |  |
| `0x0BE8` | `MYLOADSTRING` |  |
| `0x0C67` | `DODIALOGCOMMAND` |  |
| `0x1048` | `PROMPTFORRIGHTDISKS` |  |
| `0x1067` | `PARSENEXTFILE` |  |
| `0x10B0` | `SHCOPY` |  |
| `0x16A7` | `ISVALIDDRIVE` |  |
| `0x16F6` | `MERGESTRINGS` |  |
| `0x1794` | `CHECKCANCEL` |  |
| `0x17F4` | `ROOTPATH` |  |
| `0x1841` | `ISCURPATH` |  |
| `0x1909` | `CALCNAME` |  |
| `0x1A07` | `SHRENAME` |  |
| `0x1CAF` | `PARSEDIR` |  |
| `0x1F9F` | `SAVEFILENAME` |  |
| `0x2019` | `SHDELETE` |  |
| `0x228B` | `SHPARTIALSORT` |  |
| `0x23F7` | `SHMKDIR` |  |
| `0x25CB` | `SHGETINFO` |  |
| `0x272A` | `SHSETVNAME` |  |
| `0x279F` | `RENVOLNAME` |  |
| `0x2893` | `CREATEVOLNAME` |  |
| `0x2927` | `DOCHDIR` |  |
| `0x2A7D` | `GETINFOCREATE` |  |
| `0x2B35` | `GETINFOPAINT` |  |
| `0x2D58` | `GETINFOSCROLL` |  |
| `0x2E4A` | `GETINFOKEY` |  |
| `0x2EA5` | `GetInfoWndProc` | [YES] |
| `0x2FAC` | `SHPRINT` |  |
| `0x33B6` | `PRINTFILE` |  |
| `0x369E` | `PRINTDIR` |  |
| `0x3863` | `PRINTLONG` |  |
| `0x3A4F` | `PRINTERROR` |  |
| `0x3A9B` | `fnAbortProc` | [YES] |
| `0x3B0E` | `fnAbortDlgProc` | [YES] |

## Segment `DGROUP` (142 symbols)

| Offset (retail) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0006` | `PLOCALHEAP` |  |
| `0x0006` | `RSRVPTRS` |  |
| `0x0008` | `PATOMTABLE` |  |
| `0x000A` | `PSTACKTOP` |  |
| `0x000C` | `PSTACKMIN` |  |
| `0x000E` | `PSTACKBOT` |  |
| `0x0010` | `STKHQQ` |  |
| `0x0012` | `FNOMOUSE` |  |
| `0x0014` | `FFIRSTTIME` |  |
| `0x0018` | `CURSELECTION` |  |
| `0x001A` | `_MALLOC` |  |
| `0x001C` | `CONXFILES` |  |
| `0x001E` | `LONGSHORTMODE` |  |
| `0x0026` | `PCHSTARDOTSTAR` |  |
| `0x0028` | `RGCHDEFPROGRAMS` |  |
| `0x0042` | `FDIALOGISUP` |  |
| `0x0064` | `FPATHDOWN` |  |
| `0x0066` | `SELLIST` |  |
| `0x0068` | `CSELECTED` |  |
| `0x006A` | `RGCHINFO` |  |
| `0x0076` | `FWENTDOWNHERE` |  |
| `0x0078` | `SBSHELL` |  |
| `0x007A` | `FSIZING` |  |
| `0x007C` | `HGETINFOWND` |  |
| `0x00B0` | `PCH16BLANKS` |  |
| `0x00B2` | `FDIRISTRASHED` |  |
| `0x00BC` | `FISICONIC` |  |
| `0x00BE` | `FCARET` |  |
| `0x00C0` | `FREREADFILES` |  |
| `0x00C2` | `IFILEMAX` |  |
| `0x00C4` | `IFILETOPSCREEN` |  |
| `0x00C6` | `SORT` |  |
| `0x00C8` | `HRGFILES` |  |
| `0x00CA` | `FREPORTING` |  |
| `0x00CC` | `EXTLEADING` |  |
| `0x00CE` | `FCOLOR` |  |
| `0x00D0` | `FABORTCREATE` |  |
| `0x00D2` | `FMESSAGEREPORTER` |  |
| `0x00D4` | `RGCHWINDOWS` |  |
| `0x00DC` | `RGCHSESSION` |  |
| `0x00E4` | `RGCHDIR` |  |
| `0x00E8` | `RGCHPATH` |  |
| `0x00EE` | `RGCHDISK` |  |
| `0x00F4` | `RGCHDEVICE` |  |
| `0x00FC` | `RGCHGETINFO` |  |
| `0x0104` | `RGCHPROGRAMS` |  |
| `0x010E` | `RGCHINTL` |  |
| `0x0114` | `SZ1159` |  |
| `0x0118` | `SZ2359` |  |
| `0x011B` | `CHSEPDATE` |  |
| `0x011C` | `CHSEPTIME` |  |
| `0x016E` | `FRUNNINGAPP` |  |
| `0x0170` | `FINITCBT` |  |
| `0x0172` | `_edata` |  |
| `0x0180` | `DATELOC` |  |
| `0x0182` | `CMATCHFILES` |  |
| `0x0184` | `DOSWIDTH` |  |
| `0x0186` | `IFILETOPGETINFO` |  |
| `0x0188` | `RECTDIR` |  |
| `0x0190` | `RGCHRIGHTDISKS` |  |
| `0x01D2` | `TIMELOC` |  |
| `0x01D4` | `FCARETHIDDEN` |  |
| `0x01D6` | `IFILEMAC` |  |
| `0x01D8` | `CURPATHPART` |  |
| `0x01DA` | `HSHELLINSTANCE` |  |
| `0x01DC` | `FVIEWPROGRAM` |  |
| `0x01DE` | `MHBRWHITE` |  |
| `0x01E0` | `VOLNAME` |  |
| `0x01EE` | `RGCHMSDOSNAME` |  |
| `0x0220` | `RECTVOLNAME` |  |
| `0x0228` | `NOMEMRUN` |  |
| `0x026E` | `X1PATHEXTENT` |  |
| `0x0270` | `X2PATHEXTENT` |  |
| `0x0272` | `HSYSMENU` |  |
| `0x0274` | `RGDISKS` |  |
| `0x029C` | `SMCXBORDER` |  |
| `0x029E` | `SMCYBORDER` |  |
| `0x02A0` | `LPFNABORTDLGPROC` |  |
| `0x02A4` | `TEMPDIRBUF` |  |
| `0x02F4` | `CHARPRINTWIDTH` |  |
| `0x02F6` | `NOMEM` |  |
| `0x0328` | `HDIRWINDOW` |  |
| `0x032A` | `HTOASTERBM` |  |
| `0x032C` | `ENDSESSION` |  |
| `0x0340` | `HMSDOSDCODE` |  |
| `0x0342` | `CGETINFOFILES` |  |
| `0x0344` | `FDIALOGCANCELLED` |  |
| `0x0346` | `HSHELLWINDOW` |  |
| `0x0348` | `XRES` |  |
| `0x034A` | `HARROWCURS` |  |
| `0x034C` | `HGETINFOFILES` |  |
| `0x034E` | `YRES` |  |
| `0x0350` | `MAXLONGFILEWIDTH` |  |
| `0x0352` | `F24TIME` |  |
| `0x0354` | `MAXSHORTFILEWIDTH` |  |
| `0x0356` | `RECTDISKS` |  |
| `0x035E` | `FILESPERCOL` |  |
| `0x0360` | `CFLOPPIES` |  |
| `0x0362` | `GSELFILE` |  |
| `0x0364` | `MSGLOOP` |  |
| `0x0376` | `SIZELOC` |  |
| `0x0378` | `CHARPRINTHEIGHT` |  |
| `0x037A` | `RECTPATH` |  |
| `0x0382` | `CHARFIXHEIGHT` |  |
| `0x0384` | `DOSHEIGHT` |  |
| `0x0386` | `FGETINFSCROLL` |  |
| `0x0388` | `FABORT` |  |
| `0x038A` | `NOMEMDIR` |  |
| `0x03D0` | `LPRESSTRINGS` |  |
| `0x03D4` | `FDOS21ORGREATER` |  |
| `0x03D6` | `LONGEXTLOC` |  |
| `0x03D8` | `TOASTERHEIGHT` |  |
| `0x03DA` | `ENDMSG` |  |
| `0x0420` | `HWAITCURS` |  |
| `0x0422` | `RUNBUF1` |  |
| `0x04A2` | `HABORTDLGWND` |  |
| `0x04A4` | `DBCMD` |  |
| `0x04A6` | `RUNBUF2` |  |
| `0x0526` | `WMERGE` |  |
| `0x0528` | `IFLOPPY` |  |
| `0x0530` | `CURTOASTER` |  |
| `0x0532` | `PINDEXFILES` |  |
| `0x0534` | `LISTFILES` |  |
| `0x0542` | `IDATE` |  |
| `0x0544` | `DISKLINES` |  |
| `0x0546` | `FINPATHLOOP` |  |
| `0x0548` | `RGCHERRCAPTION` |  |
| `0x055C` | `ICURFILE` |  |
| `0x055E` | `HPATHWINDOW` |  |
| `0x0560` | `CDISKS` |  |
| `0x0562` | `MHBRBLACK` |  |
| `0x0564` | `TCURTOASTER` |  |
| `0x0566` | `RGSEPEXTENTS` |  |
| `0x05A2` | `PFNDLG` |  |
| `0x05A6` | `CONXDISKS` |  |
| `0x05A8` | `CPATHPARTS` |  |
| `0x05AA` | `HDISKWINDOW` |  |
| `0x05AC` | `TOPINFHEIGHT` |  |
| `0x05AE` | `LPFNABORTPROC` |  |
| `0x05B2` | `PDIRBUF` |  |
| `0x05B4` | `FDIALOGINPROGRESS` |  |
| `0x05B6` | `CHARFIXWIDTH` |  |
