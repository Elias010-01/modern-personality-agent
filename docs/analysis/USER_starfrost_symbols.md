# USER - reference symbols (starfrost013, debug build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **debug** Windows 1.03 build.

> **Caveat**: these offsets come from the **debug** build (extra strings, asserts, helpers). They are NOT byte-aligned with our retail build, so we do not auto-rename `sub_XXXX` by offset. Use this list as a *vocabulary* of known internal names. When a name happens to also be exported in our retail `.DEF`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `USER`
- Functions in debug build: **1191**
- Constants: **6**
- Segments: **28**
- Names also in our retail `.DEF` exports: **235**

## Constants (DGROUP globals)

| Offset | Name |
|--------|------|
| `0x0001` | `__acrtused` |
| `0x0006` | `PLOCALHEAP` |
| `0x0008` | `PATOMTABLE` |
| `0x000A` | `pStackTop` |
| `0x000C` | `pStackMin` |
| `0x000E` | `pStackBot` |

## Segment `_TEXT` (455 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `PAINTBITS` |  |
| `0x00AD` | `FORCEREPAINT` |  |
| `0x011A` | `MOVEPOPUP` |  |
| `0x01C4` | `BRINGPOPUPTOTOP` |  |
| `0x0232` | `CREATEWINDOW` | [YES] |
| `0x0564` | `SHOWTILEDWINDOW` |  |
| `0x068A` | `SHOWWINDOWWITHSWAP` |  |
| `0x06C6` | `FARSWAPWINDOWS` |  |
| `0x07D8` | `ANYPOPUP` | [YES] |
| `0x07E5` | `DESTROYWINDOW` | [YES] |
| `0x0891` | `DESTROYLINKEDPOPUPS` |  |
| `0x08C2` | `FARFREEWINDOW` |  |
| `0x09BE` | `INITPWSB` |  |
| `0x09E2` | `GETCLASS` |  |
| `0x0A10` | `SETPROP` | [YES] |
| `0x0A97` | `GETPROP` | [YES] |
| `0x0AD8` | `REMOVEPROP` | [YES] |
| `0x0B3F` | `ENUMPROPS` | [YES] |
| `0x0B88` | `DELETEPROPERTIES` |  |
| `0x0BDF` | `RGICHCTLCLASS` |  |
| `0x0BE4` | `RGICHCLRNAMES` |  |
| `0x0BEE` | `SZBUTTON` |  |
| `0x0BEE` | `RGCHCTLCLASS` |  |
| `0x0BF5` | `SZEDIT` |  |
| `0x0BFA` | `SZSTATIC` |  |
| `0x0C01` | `SZLISTBOX` |  |
| `0x0C09` | `SZSCROLLBAR` |  |
| `0x0C13` | `SZONECHAR` |  |
| `0x0C15` | `SZDISPLAY` |  |
| `0x0C1D` | `SZOEMBIN` |  |
| `0x0C24` | `SZSLASHSTARDOTSTAR` |  |
| `0x0C29` | `SZXCHG` |  |
| `0x0C33` | `SZSYSTEM` |  |
| `0x0C3A` | `SZWINDOWS` |  |
| `0x0C42` | `SZCOLORS` |  |
| `0x0C49` | `SZFONTS` |  |
| `0x0C4F` | `SZYES` |  |
| `0x0C51` | `SZCURSORBLINKRATE` |  |
| `0x0C61` | `SZSWAPMOUSEBUTTON` |  |
| `0x0C72` | `SZDOUBLECLICKSPEED` |  |
| `0x0C83` | `SZCLRSCROLLBAR` |  |
| `0x0C83` | `RGCHCLRNAMES` |  |
| `0x0C8D` | `SZCLRBACKGROUND` |  |
| `0x0C98` | `SZCLRACTIVETITLE` |  |
| `0x0CA4` | `SZCLRINACTIVETITLE` |  |
| `0x0CB2` | `SZCLRMENU` |  |
| `0x0CB7` | `SZCLRWINDOW` |  |
| `0x0CBE` | `SZCLRWINDOWFRAME` |  |
| `0x0CCA` | `SZCLRMENUTEXT` |  |
| `0x0CD3` | `SZCLRWINDOWTEXT` |  |
| `0x0CDE` | `SZCLRTITLETEXT` |  |
| `0x0CE8` | `OPENICON` | [YES] |
| `0x0D07` | `CLOSEWINDOW` | [YES] |
| `0x0D32` | `OPENWND` |  |
| `0x0D5B` | `FAROPENWNDPROLOG` |  |
| `0x0D98` | `FARCLOSEWND` |  |
| `0x0DB7` | `CLOSEWNDPROLOG` |  |
| `0x0E13` | `ISWINDOWVISIBLE` | [YES] |
| `0x0E43` | `SHOWWINDOW` | [YES] |
| `0x0F18` | `PUTPOPUPWND` |  |
| `0x0F72` | `SHUTPOPUPWND` |  |
| `0x0FE9` | `STRIPBITMAPS` |  |
| `0x1018` | `CLOSEPOPUPWND` |  |
| `0x1035` | `SAVEPOPUPBITS` |  |
| `0x10C3` | `RESTOREPOPUPBITS` |  |
| `0x1142` | `CHECKFOCUS` |  |
| `0x1164` | `FARLINKWND` |  |
| `0x11AD` | `FARUNLINKWND` |  |
| `0x11D6` | `SENDSIZE` |  |
| `0x1202` | `SENDZOOM` |  |
| `0x121A` | `FARSHOWOWNEDWINDOWS` |  |
| `0x1344` | `FARSETNEWRECT` |  |
| `0x1377` | `FARGETPREVWND` |  |
| `0x1396` | `FARSTARTRETILE` |  |
| `0x13A8` | `CHECKDESKEMPTY` |  |
| `0x1400` | `OPENALLCHILDREN` |  |
| `0x141C` | `CLOSEALLCHILDREN` |  |
| `0x143C` | `SCREENUPDATERECT` |  |
| `0x14B8` | `FARSCREENUPDATERGN` |  |
| `0x15E9` | `FCONTENTVISIBLE` |  |
| `0x160E` | `FARONEWNDREPAINT` |  |
| `0x1810` | `FARONEWNDPAINT` |  |
| `0x1820` | `ONEWNDPAINT2` |  |
| `0x1891` | `SENDSIZEMESSAGE` |  |
| `0x18C1` | `ONECLMPNT` |  |
| `0x18E3` | `FARALLCLMSPNT` |  |
| `0x1933` | `SETREDRAW` |  |
| `0x1957` | `INITVISIBLERGN` |  |
| `0x199A` | `BEGINPAINT` | [YES] |
| `0x1A93` | `ENDPAINT` | [YES] |
| `0x1ADF` | `PSCREATERECTRGNINDIRECT` |  |
| `0x1AFF` | `FILLWINDOW` | [YES] |
| `0x1B34` | `PAINTRECT` | [YES] |
| `0x1B6D` | `FERASEBACKGROUND` |  |
| `0x1BAC` | `GETCONTROLBRUSH` | [YES] |
| `0x1BE3` | `GETUPDATERECT` | [YES] |
| `0x1CC5` | `GETPARENT` | [YES] |
| `0x1CDB` | `GETCHILDPARENT` |  |
| `0x1CF4` | `GETTOPWINDOW` |  |
| `0x1D0D` | `OPENCHILDWINDOW` |  |
| `0x1D2E` | `DESTROYCHILDWINDOW` |  |
| `0x1D8C` | `FAROFFSETCHILDREN` |  |
| `0x1E0B` | `FINDPREVIOUSCHILD` |  |
| `0x1E31` | `MOVECHILD` |  |
| `0x1F18` | `BRINGCHILDTOTOP` |  |
| `0x1F9D` | `SHOWCHILD` |  |
| `0x2019` | `BRINGWINDOWTOTOP` | [YES] |
| `0x204A` | `MOVEWINDOW` | [YES] |
| `0x2094` | `FCHILDVISIBLE` |  |
| `0x20C2` | `SIGNALPROC` | [YES] |
| `0x21B6` | `POSTAPPMESSAGE` | [YES] |
| `0x21BA` | `POSTMESSAGE` | [YES] |
| `0x21C8` | `POSTMESSAGE2` | [YES] |
| `0x222A` | `REPLYMESSAGE` | [YES] |
| `0x2280` | `WAITMESSAGE` | [YES] |
| `0x22B8` | `PEEKMESSAGE` | [YES] |
| `0x22BC` | `GETMESSAGE` | [YES] |
| `0x22C3` | `GETMESSAGE2` | [YES] |
| `0x23E1` | `TRANSLATEMESSAGE` | [YES] |
| `0x249B` | `DISPATCHMESSAGE` | [YES] |
| `0x24F4` | `CALLWINDOWPROC` | [YES] |
| `0x2531` | `XCALLWINDOWPROC` |  |
| `0x253C` | `CALLWINDOWPROC2` |  |
| `0x255E` | `SENDMESSAGE` | [YES] |
| `0x25BD` | `SENDMESSAGE2` | [YES] |
| `0x26C8` | `RGLPFNHOOK` |  |
| `0x26DC` | `SETWINDOWSHOOK` | [YES] |
| `0x271F` | `GETWNDHQ` |  |
| `0x272C` | `GETCLASSSTYLE` |  |
| `0x2734` | `CHECKMSGFILTER` |  |
| `0x2739` | `CHECKMSGFILTER2` |  |
| `0x2753` | `CHECKHWNDFILTER` |  |
| `0x2757` | `CHECKHWNDFILTER2` |  |
| `0x2774` | `INSENDMESSAGE` | [YES] |
| `0x2786` | `HITTEST` |  |
| `0x280B` | `CHECKCURSOR` |  |
| `0x2822` | `FARCAPTURE` |  |
| `0x286E` | `FARMODELOOP` |  |
| `0x29BC` | `CHECKSYSQUEUE` |  |
| `0x2E0F` | `SYSPOST` |  |
| `0x2E40` | `SYSTOCHAR` |  |
| `0x2E6A` | `GETSYSCOLOR` | [YES] |
| `0x2E7F` | `SETDOUBLECLICKTIME` | [YES] |
| `0x2E9D` | `GETDOUBLECLICKTIME` | [YES] |
| `0x2EA6` | `GETKEYSTATE` | [YES] |
| `0x2EB6` | `GETFOCUS` | [YES] |
| `0x2EBF` | `SETFOCUS` | [YES] |
| `0x2F54` | `ACTIVATEAPP` |  |
| `0x2FA7` | `FARACTIVATEWINDOW` |  |
| `0x323C` | `FBADWINDOW` |  |
| `0x326A` | `SETACTIVEWINDOW` | [YES] |
| `0x3288` | `SETCAPTURE` | [YES] |
| `0x32A1` | `RELEASECAPTURE` | [YES] |
| `0x32AE` | `GETMESSAGETIME` | [YES] |
| `0x32CB` | `GETMESSAGEPOS` | [YES] |
| `0x32E9` | `POSTQUITMESSAGE` | [YES] |
| `0x3313` | `POSTSYSERROR` | [YES] |
| `0x332F` | `INITAPP` | [YES] |
| `0x3419` | `REGISTERWINDOWMESSAGE` | [YES] |
| `0x342A` | `ENABLEWINDOW` | [YES] |
| `0x349E` | `SETCURSORPOS` | [YES] |
| `0x34D0` | `GETCURSORPOS` | [YES] |
| `0x34ED` | `UPDATEWINDOW` | [YES] |
| `0x353B` | `UPDATEWINDOW2` |  |
| `0x3568` | `CHECKPAINTS` |  |
| `0x35A5` | `CHECKPAINT` |  |
| `0x35F7` | `DRAWICON` | [YES] |
| `0x3632` | `BLTICON` |  |
| `0x374A` | `ICONSIZE` | [YES] |
| `0x3759` | `ICONFREE` |  |
| `0x3765` | `FARCISETCURS` |  |
| `0x3788` | `SETCURSOR` | [YES] |
| `0x3798` | `FARCISHOW` |  |
| `0x37AF` | `FARCIHIDE` |  |
| `0x37CC` | `SHOWCURSOR` | [YES] |
| `0x37E0` | `CALLOEMCURSOR` |  |
| `0x3827` | `GETDC` | [YES] |
| `0x3838` | `GETWINDOWDC` | [YES] |
| `0x3848` | `RELEASEDC` | [YES] |
| `0x3889` | `FARINVALIDATEDC` |  |
| `0x389C` | `INVALIDATEALLCHILDRENDCS` |  |
| `0x38B7` | `FARINVALIDATEALLDCS` |  |
| `0x38C9` | `INVALIDATEONEDC` |  |
| `0x38FF` | `FARGETSCREENDC` |  |
| `0x390F` | `FARRELEASEADC` |  |
| `0x3943` | `GETDC2` |  |
| `0x39E6` | `DCSEARCH` |  |
| `0x3A89` | `GETCLSDC` |  |
| `0x3AAB` | `FARCALCALLVISRGNS` |  |
| `0x3B01` | `SETBUSYDCSWNDRGN` |  |
| `0x3BA0` | `FARCALCWNDVISRGN` |  |
| `0x3BB3` | `CALCALLWNDVISRGNS` |  |
| `0x3BCB` | `CALCOWNDCWNDVISRGN` |  |
| `0x3C28` | `GETUPDATEDC` |  |
| `0x3CA8` | `RELEASEUPDATEDC` |  |
| `0x3CC5` | `ATTACHDC` |  |
| `0x3D08` | `CREATEDISPLAYDC` |  |
| `0x3D23` | `FAREXCLUDEPOPUPS` |  |
| `0x3D74` | `SETVISRGN` |  |
| `0x3DC6` | `CALCVISRGN` |  |
| `0x3F40` | `EXCLUDEWINDOWLIST` |  |
| `0x3FC2` | `WININPUT` |  |
| `0x40E7` | `SYSCOMMAND` |  |
| `0x4343` | `FOPENICON` |  |
| `0x435B` | `FARCOMPCLIENT` |  |
| `0x436C` | `COMPCLIENTRECT` |  |
| `0x43FD` | `COMPCLIENT2` |  |
| `0x450E` | `DRAWWINDOWFRAME` |  |
| `0x45A2` | `ERASEBACKGROUND` |  |
| `0x45D3` | `FARFRAMEWINDOW` |  |
| `0x461C` | `DRAWFRAME` |  |
| `0x4740` | `SCROLLWINDOW` | [YES] |
| `0x499B` | `DRAWCAPTION` |  |
| `0x4C38` | `DRAWSIZE` |  |
| `0x4D03` | `REDRAWSCRLBAR` |  |
| `0x4D3A` | `FLASHWINDOW` | [YES] |
| `0x4D99` | `GRAYSTRING` | [YES] |
| `0x4F05` | `BLTCOLOR` |  |
| `0x4F9B` | `CHILDWINDOWFROMPOINT` | [YES] |
| `0x4FE3` | `FARINTILED_ICONICWINDOWS` |  |
| `0x5031` | `WINWHERE` |  |
| `0x508C` | `WINDOWHITTEST` |  |
| `0x50B5` | `WINDOWHITTEST2` |  |
| `0x515D` | `INWND` |  |
| `0x523F` | `MULTDIV` |  |
| `0x5242` | `FARMULTDIV` |  |
| `0x5270` | `MIN` |  |
| `0x5273` | `FARMIN` |  |
| `0x5280` | `MAX` |  |
| `0x5283` | `FARMAX` |  |
| `0x5290` | `LFILLSTRUCT` |  |
| `0x5293` | `FARLFILLSTRUCT` |  |
| `0x52B8` | `LCOPYSTRUCT` |  |
| `0x52BB` | `FARLCOPYSTRUCT` |  |
| `0x52F5` | `PSGETTEXTEXTENT` |  |
| `0x531C` | `PSTEXTOUT` |  |
| `0x5349` | `XALLOCH` |  |
| `0x534E` | `XALLOCP` |  |
| `0x535C` | `XREALLOCH` |  |
| `0x536C` | `XFREEH` |  |
| `0x5385` | `XLOCKH` |  |
| `0x539D` | `XUNLOCKH` |  |
| `0x53B3` | `TITIME` |  |
| `0x53B7` | `TIMERTABLE` |  |
| `0x54D7` | `TIMERTABLEMAX` |  |
| `0x54D9` | `CTIMERSREADY` |  |
| `0x54DB` | `DTJOURNAL` |  |
| `0x54DF` | `TIMERINTERRUPT` |  |
| `0x5541` | `GETTICKCOUNT` | [YES] |
| `0x554B` | `GETTIMERRESOLUTION` | [YES] |
| `0x555A` | `SETTIMER` | [YES] |
| `0x555E` | `SETSYSTEMTIMER` | [YES] |
| `0x5561` | `SETTIMER2` | [YES] |
| `0x55E9` | `KILLTIMER` | [YES] |
| `0x55ED` | `KILLSYSTEMTIMER` | [YES] |
| `0x55F0` | `KILLTIMER2` | [YES] |
| `0x5640` | `DESTROYTIMERS` |  |
| `0x566D` | `FINDTIMER` |  |
| `0x5699` | `CHECKTIMERS` |  |
| `0x570D` | `GETCURRENTTIME` | [YES] |
| `0x571D` | `MSTOTICS` |  |
| `0x574A` | `TICKSTOMSECS` |  |
| `0x5766` | `VALIDATERGN` | [YES] |
| `0x576A` | `VALIDATERECT` | [YES] |
| `0x5776` | `INVALIDATERGN` | [YES] |
| `0x577A` | `INVALIDATERECT` | [YES] |
| `0x5786` | `COMPUPDATERECT` | [YES] |
| `0x57CB` | `COMPUPDATERGN` | [YES] |
| `0x5808` | `FMOUSEMOVED` |  |
| `0x580A` | `FALTKEYUP` |  |
| `0x580B` | `FCTRLKEYUP` |  |
| `0x580C` | `HQSYSQUEUE` |  |
| `0x580E` | `XCSTODS` | [YES] |
| `0x580F` | `_CSTODS` |  |
| `0x5811` | `KEYBD_EVENT` |  |
| `0x582B` | `SAVEEVENT` |  |
| `0x5922` | `GETSYSMSG` |  |
| `0x59C3` | `SKIPSYSMSG` |  |
| `0x5ACE` | `LPSYSPROC` |  |
| `0x5AD2` | `X_MICKEY_RATE` |  |
| `0x5AD4` | `Y_MICKEY_RATE` |  |
| `0x5AD6` | `CUR_X_MICKEY` |  |
| `0x5AD8` | `CUR_Y_MICKEY` |  |
| `0x5ADA` | `FSWAPBUTTONS` |  |
| `0x5ADC` | `PTTRUECURSOR` |  |
| `0x5AE0` | `PTCURSOR` |  |
| `0x5AE4` | `RCCURSORCLIP` |  |
| `0x5AEC` | `CXSCREENCS` |  |
| `0x5AEE` | `CYSCREENCS` |  |
| `0x5AF0` | `XMOUSETHRESHOLD` |  |
| `0x5AF2` | `YMOUSETHRESHOLD` |  |
| `0x5BF9` | `MOUSE_EVENT` |  |
| `0x5D59` | `CLIPCURSOR` | [YES] |
| `0x5D7D` | `MIPOSITION` |  |
| `0x5D80` | `FARMIPOSITION` |  |
| `0x5DDA` | `SETFMOUSEMOVED` |  |
| `0x5DE1` | `FQUEUEDIRTY` |  |
| `0x5DE2` | `HQCURRENTSHADOW` |  |
| `0x5DE4` | `HQLIST` |  |
| `0x5DE6` | `HQLASTASLEEP` |  |
| `0x5DE8` | `INITSYSQUEUE` |  |
| `0x5E0A` | `CREATEQUEUE` |  |
| `0x5E39` | `CREATEQUEUE2` |  |
| `0x5E81` | `DELETEQUEUE` |  |
| `0x5ED0` | `WRITEMESSAGE` |  |
| `0x5F25` | `READMESSAGE` |  |
| `0x5FC6` | `DELQENTRY` |  |
| `0x6022` | `FSAMEHQ` |  |
| `0x6033` | `FHQSENDING` |  |
| `0x604C` | `WAKEHQ` |  |
| `0x605C` | `WAKEHQ1` |  |
| `0x6081` | `WAKESOMEONE` |  |
| `0x60AA` | `LPQFROMHQ` |  |
| `0x60B0` | `CALLMSGFILTER` | [YES] |
| `0x60C4` | `VALIDATEWINDOWNULL` |  |
| `0x60C9` | `VALIDATEWINDOW` |  |
| `0x6106` | `WINDOWFROMPOINT` | [YES] |
| `0x6118` | `SCREENTOWINDOW` |  |
| `0x612F` | `CLIENTTOSCREEN` | [YES] |
| `0x6135` | `SCREENTOCLIENT` | [YES] |
| `0x6151` | `GETWNDRECT` |  |
| `0x6166` | `GETCLIENTRECT` | [YES] |
| `0x61B8` | `GETWINDOWRECT` | [YES] |
| `0x61D9` | `ISICONIC` | [YES] |
| `0x61DD` | `ISWINDOWENABLED` | [YES] |
| `0x6204` | `GETWINDOWTEXTLENGTH` | [YES] |
| `0x6221` | `GETWINDOWTEXT` | [YES] |
| `0x6242` | `SETWINDOWTEXT` | [YES] |
| `0x6266` | `GETWINDOWWORD` | [YES] |
| `0x6266` | `GETWINDOWLONG` | [YES] |
| `0x6269` | `GETCLASSLONG` | [YES] |
| `0x6269` | `GETCLASSWORD` | [YES] |
| `0x626B` | `GETWC2` | [YES] |
| `0x629C` | `SETWINDOWWORD` | [YES] |
| `0x629F` | `SETCLASSWORD` | [YES] |
| `0x62A9` | `SETWINDOWLONG` | [YES] |
| `0x62AC` | `SETCLASSLONG` | [YES] |
| `0x62AE` | `SETWC2` | [YES] |
| `0x62EB` | `SETSYSMODALWINDOW` | [YES] |
| `0x6300` | `GETSYSMODALWINDOW` | [YES] |
| `0x630A` | `ISWINDOW` | [YES] |
| `0x6329` | `SZNULL` |  |
| `0x6347` | `DLGWNDPROC2` |  |
| `0x634A` | `STATICWNDPROC2` |  |
| `0x634D` | `ICONWNDPROC2` |  |
| `0x6350` | `SBWNDPROC2` |  |
| `0x6353` | `EDITWNDPROC2` |  |
| `0x6356` | `BUTTONWNDPROC2` |  |
| `0x6359` | `LBOXCTLWNDPROC2` |  |
| `0x635B` | `COMMONWNDPROC` |  |
| `0x63AE` | `GETSYSTEMMETRICS` | [YES] |
| `0x63C4` | `MESSAGEBEEP` | [YES] |
| `0x63C9` | `FARLOCKTASK` |  |
| `0x63F9` | `ISCHILD` | [YES] |
| `0x6431` | `HIDEICONNAME` |  |
| `0x644C` | `GETMENU` | [YES] |
| `0x6460` | `SWAPMOUSEBUTTON` | [YES] |
| `0x646E` | `SETDIVZERO` |  |
| `0x647C` | `DIVIDEBYZERO` |  |
| `0x648D` | `SETRECT` | [YES] |
| `0x64B8` | `SETRECTEMPTY` | [YES] |
| `0x64DA` | `COPYRECT` | [YES] |
| `0x6501` | `ISRECTEMPTY` | [YES] |
| `0x652E` | `PTINRECT` | [YES] |
| `0x6565` | `OFFSETRECT` | [YES] |
| `0x6590` | `INFLATERECT` | [YES] |
| `0x65BB` | `INTERSECTRECT` | [YES] |
| `0x661C` | `UNIONRECT` | [YES] |
| `0x66AA` | `FILLRECT` | [YES] |
| `0x66F3` | `INVERTRECT` | [YES] |
| `0x6713` | `LRCCFRAME` |  |
| `0x67AA` | `FRAMERECT` | [YES] |
| `0x67C5` | `LRCIFRAME` |  |
| `0x67EB` | `DEFWINDOWPROC` | [YES] |
| `0x6C59` | `DEFSETTEXT` |  |
| `0x6CC4` | `NEXTTOPWINDOW` |  |
| `0x6D2A` | `NEXTTOPWINDOW1` |  |
| `0x6D98` | `NEXTTOPWINDOW2` |  |
| `0x6E10` | `NEXTTOPWINDOW3` |  |
| `0x6E79` | `ENUMICONWNDS` |  |
| `0x6EAB` | `GETACTIVEWINDOW` | [YES] |
| `0x6EBD` | `NEXTPOPUPWND` |  |
| `0x6F25` | `NEXTPOPUPWND1` |  |
| `0x6F5E` | `NEXTPOPUPWND2` |  |
| `0x7052` | `NEXTWINDOW` |  |
| `0x7256` | `MESSAGEBOXWNDPROC` | [YES] |
| `0x7413` | `UPDATEBUTTON` |  |
| `0x755E` | `MBFILL` |  |
| `0x75BA` | `DRAWMESSAGEBOX` |  |
| `0x77F2` | `MSGBOXKEYS` |  |
| `0x7916` | `MESSAGEBOX` | [YES] |
| `0x7F1E` | `GETICON` |  |
| `0x7F56` | `DRAWPUSHBUTTON` |  |
| `0x8190` | `DRAWCORNER` |  |
| `0x825C` | `ENUMWINDOWS` | [YES] |
| `0x8274` | `ENUMCHILDWINDOWS` | [YES] |
| `0x82A1` | `ENUMTILEDWINDOWS` |  |
| `0x82E7` | `ENUMWINDOWLIST` |  |
| `0x8335` | `ENUMALLWINDOWS` |  |
| `0x83AA` | `CANCELMODE` |  |
| `0x83E5` | `CREATECARET` | [YES] |
| `0x8489` | `CARETSET` |  |
| `0x84C2` | `DESTROYCARET` | [YES] |
| `0x84D5` | `DESTROYCARET2` |  |
| `0x8508` | `SETCARETPOS` | [YES] |
| `0x858B` | `GETCARETPOS` | [YES] |
| `0x85A1` | `HIDECARET` | [YES] |
| `0x85B9` | `HIDECARET2` |  |
| `0x85D6` | `SHOWCARET` | [YES] |
| `0x85EE` | `SHOWCARET2` |  |
| `0x8623` | `CARETBLINKPROC` | [YES] |
| `0x8648` | `INVERTCARET` |  |
| `0x8688` | `DRAWCARET` |  |
| `0x8720` | `SETCARETBLINKTIME` | [YES] |
| `0x875C` | `GETCARETBLINKTIME` | [YES] |
| `0x8765` | `INTILED_ICONICWINDOWS` |  |
| `0x876C` | `INVALIDATEALLDCS` |  |
| `0x8773` | `SHOWOWNEDWINDOWS` |  |
| `0x877A` | `SCREENUPDATERGN` |  |
| `0x8781` | `ACTIVATEWINDOW` |  |
| `0x8788` | `CALCALLVISRGNS` |  |
| `0x878F` | `OFFSETCHILDREN` |  |
| `0x8796` | `CALCWNDVISRGN` |  |
| `0x879D` | `ONEWNDREPAINT` |  |
| `0x87A4` | `EXCLUDEPOPUPS` |  |
| `0x87AB` | `OPENWNDPROLOG` |  |
| `0x87B2` | `INVALIDATEDC` |  |
| `0x87B9` | `GETSCREENDC` |  |
| `0x87C0` | `SWAPWINDOWS` |  |
| `0x87C7` | `ONEWNDPAINT` |  |
| `0x87CE` | `STARTRETILE` |  |
| `0x87D5` | `FRAMEWINDOW` |  |
| `0x87DC` | `GETPREVWND` |  |
| `0x87E3` | `COMPCLIENT` |  |
| `0x87EA` | `RELEASEADC` |  |
| `0x87F1` | `SETNEWRECT` |  |
| `0x87F8` | `CISETCURS` |  |
| `0x87FF` | `UNLINKWND` |  |
| `0x8806` | `MODELOOP` |  |
| `0x880D` | `CLOSEWND` |  |
| `0x8814` | `LOCKTASK` |  |
| `0x881B` | `CAPTURE` |  |
| `0x8822` | `LINKWND` |  |
| `0x8829` | `CIHIDE` |  |
| `0x8830` | `CISHOW` |  |
| `0x8841` | `OPENCOMM` | [YES] |
| `0x8880` | `__chkstk` |  |
| `0x8880` | `_chkstk` |  |
| `0x8880` | `chkstk` |  |
| `0x889D` | `__astkovr` |  |
| `0x88A0` | `__cintDIV` |  |
| `0x88A3` | `__fptrap` |  |
| `0x88AC` | `_TEXT_NEARFRAME` |  |
| `0x88EE` | `_TEXT_FARFRAMEX` |  |
| `0x88EF` | `_TEXT_FARFRAME` |  |

## Segment `_MENU1` (34 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MENUDRAW` |  |
| `0x01F5` | `MENUPRINT` |  |
| `0x021A` | `DRAWITEM` |  |
| `0x02DC` | `MENUPTINCMD` |  |
| `0x03EB` | `MENUPPOST` |  |
| `0x04F7` | `PRINTMENUSTRING` |  |
| `0x0627` | `MOUSECATCH` |  |
| `0x06CB` | `MOUSETRACK` |  |
| `0x0827` | `NEXTITEM` |  |
| `0x0941` | `FINDITEMINCOLUMN` |  |
| `0x09FB` | `KILLSTATE` |  |
| `0x0AD2` | `DESTROYMENUPOPUP` |  |
| `0x0B43` | `LOOSESTATE` |  |
| `0x0B9A` | `KEYCATCH` |  |
| `0x0C0D` | `MENUKEYFILTER` |  |
| `0x0F14` | `MENULOOP` |  |
| `0x1014` | `MENUSWITCH` |  |
| `0x1096` | `UNLOCKPOPUP` |  |
| `0x10B3` | `LOCKPOPUP` |  |
| `0x10D7` | `VKCONVERT` |  |
| `0x113F` | `FINDMENUCHAR` |  |
| `0x11DB` | `ENUMITEMS` |  |
| `0x124D` | `TRUEMENU` |  |
| `0x1287` | `SYSMENU` |  |
| `0x12C5` | `LOCKSYSTEM` |  |
| `0x131B` | `SETSIZESYSMENU` |  |
| `0x1373` | `ENDMENU` | [YES] |
| `0x13A8` | `FARINITSYSMENU` |  |
| `0x14A5` | `FINDCHARPOSITION` |  |
| `0x14E1` | `MENUINVERT` |  |
| `0x15D3` | `ITEMSIZE` |  |
| `0x167A` | `MENUSDRAW` |  |
| `0x172A` | `MENUWNDPROC` | [YES] |
| `0x17AF` | `INDEX1` |  |

## Segment `_MENU2` (23 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MENUCOMPUTE` |  |
| `0x01E7` | `DRAWMENUBAR1` |  |
| `0x0217` | `SETMENU` | [YES] |
| `0x0252` | `DRAWMENUBAR` | [YES] |
| `0x027A` | `LOADACCELERATORS` | [YES] |
| `0x02B5` | `TRANSLATEACCELERATOR` | [YES] |
| `0x04AC` | `ACCELERATEMENU` |  |
| `0x0571` | `GETMENUSTRING` | [YES] |
| `0x05E8` | `HILITEMENUITEM` | [YES] |
| `0x063A` | `FINDMENUBARINDEX` |  |
| `0x06C3` | `CHANGEMENU` | [YES] |
| `0x08F2` | `GETSYSTEMMENU` | [YES] |
| `0x096F` | `INDEX2` |  |
| `0x0979` | `LOOKUPMENUITEM` |  |
| `0x0A29` | `SAVESTRING` |  |
| `0x0A6F` | `CREATEMENU` | [YES] |
| `0x0AAD` | `DESTROYMENU` | [YES] |
| `0x0AF9` | `ENABLEMENUITEM` | [YES] |
| `0x0AFE` | `CHECKMENUITEM` | [YES] |
| `0x0B01` | `MENUITEMSTATE` | [YES] |
| `0x0B4B` | `FREEITEM` |  |
| `0x0B7A` | `GETSUBMENU` | [YES] |
| `0x0BD4` | `RECALCTABSTRINGS` |  |

## Segment `_INIT` (30 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOADPROC` |  |
| `0x002F` | `LOADWINDOWS` |  |
| `0x00D9` | `TILEINIT` |  |
| `0x017D` | `BRUSHINIT` |  |
| `0x01F5` | `CREATEBITS` |  |
| `0x0233` | `OEMDEPENDENTINIT` |  |
| `0x04D6` | `MOUSEINIT` |  |
| `0x04FF` | `EVENTINIT` |  |
| `0x0539` | `DRIVERSINIT` |  |
| `0x05EE` | `INITFOCUS` |  |
| `0x05F9` | `DCINIT` |  |
| `0x06DD` | `LOADRESOURCES` |  |
| `0x0848` | `GETCLRVAL` |  |
| `0x08B8` | `COLORINIT` |  |
| `0x094E` | `INITSYSMETRICS` |  |
| `0x0A15` | `FARTILEFIRSTWND` |  |
| `0x0A95` | `LOADWINSTRINGS` |  |
| `0x0B1D` | `LOADFONTS` |  |
| `0x0C55` | `REGISTERWINDOWS` |  |
| `0x0C7A` | `REGISTERICON` |  |
| `0x0CE9` | `REGISTERMENUS` |  |
| `0x0D34` | `REGISTERBUTTON` |  |
| `0x0D86` | `REGISTERDLG` |  |
| `0x0DDC` | `REGISTERSTATIC` |  |
| `0x0E2E` | `REGISTERMB` |  |
| `0x0E80` | `REGISTEREDIT` |  |
| `0x0ED2` | `LOADCLIPBOARD` |  |
| `0x105F` | `REGISTERLBOXCTL` |  |
| `0x10B5` | `REGISTERINW` |  |
| `0x1112` | `REGISTERSB` |  |

## Segment `_RES` (10 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `LOADMENU` | [YES] |
| `0x0074` | `MENULOAD2` |  |
| `0x0113` | `CRUNCHX2` |  |
| `0x0176` | `CRUNCHY` |  |
| `0x01EA` | `LOADCURSORICONBITMAP` |  |
| `0x0243` | `LOADCURSOR` | [YES] |
| `0x0268` | `LOADICON` | [YES] |
| `0x028D` | `LOADSTRING` | [YES] |
| `0x0343` | `LOADCURSORICONHANDLER` |  |
| `0x0582` | `LOADBITMAP` | [YES] |

## Segment `_KEYCONV` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CREATECONVERTWINDOW` | [YES] |
| `0x0057` | `SHOWCONVERTWINDOW` | [YES] |
| `0x0089` | `SETCONVERTWINDOWHEIGHT` | [YES] |
| `0x00CD` | `ISTWOBYTECHARPREFIX` | [YES] |
| `0x0109` | `SYSHASKANJI` | [YES] |

## Segment `_CREAT` (8 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `REGISTERCLASS` | [YES] |
| `0x00D9` | `GETCLASSNAME` | [YES] |
| `0x0115` | `FINDNAMEINCLM` |  |
| `0x018C` | `FINDWINDOW` | [YES] |
| `0x01F3` | `PURGECLASS` |  |
| `0x026F` | `DESTROYTASKWINDOWS2` | [YES] |
| `0x02BE` | `DESTROYTASKWINDOWS` |  |
| `0x02FD` | `DESTROYALLCHILDREN` |  |

## Segment `_SCRLBAR` (30 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SBPOSFROMPX` |  |
| `0x0048` | `CALCSBSTUFF` |  |
| `0x00F9` | `CALCSBSTUFF2` |  |
| `0x01F1` | `TRACKTHUMB` |  |
| `0x0285` | `MOVETHUMB` |  |
| `0x0303` | `INVERTTHUMB` |  |
| `0x0331` | `SBTRACKINIT` |  |
| `0x0559` | `CONTSCROLL` | [YES] |
| `0x05CD` | `TRACKBOX` |  |
| `0x067E` | `DOSCROLL` |  |
| `0x06C6` | `DRAWSCROLLBAR` |  |
| `0x06ED` | `DRAWSB2` |  |
| `0x098B` | `HIDESHOWTHUMB` |  |
| `0x09AC` | `DRAWTHUMB` |  |
| `0x09FD` | `DRAWTHUMB2` |  |
| `0x0AEB` | `INVERTSCROLLHILITE` |  |
| `0x0B15` | `PSINVERTRECT` |  |
| `0x0B4A` | `PSFILLRECT` |  |
| `0x0B82` | `SELECTCOLOROBJECTS` |  |
| `0x0BEC` | `MINSB` |  |
| `0x0C05` | `MAXSB` |  |
| `0x0C1E` | `SBWNDPROC` | [YES] |
| `0x1017` | `SBCTLSETUP` |  |
| `0x1050` | `GETSCROLLPOS` | [YES] |
| `0x10AB` | `SETSCROLLPOS` | [YES] |
| `0x1101` | `GETSCROLLRANGE` | [YES] |
| `0x1188` | `SETSCROLLRANGE` | [YES] |
| `0x11E0` | `SETSCROLLBAR` |  |
| `0x1338` | `SETSBCARETPOS` |  |
| `0x1382` | `ENDSCROLL` |  |

## Segment `_ICON` (27 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `ICONDRAG` |  |
| `0x009E` | `FARFOPENICON` |  |
| `0x00D7` | `MOVEICON` |  |
| `0x00F9` | `MOVEICON1` |  |
| `0x01B3` | `SETICONNULLVISRGN` |  |
| `0x01DC` | `ICONWNDPROC` | [YES] |
| `0x0443` | `MAPINDEXTOWINDOWRECT` |  |
| `0x049A` | `GETICONSLOTRECT` |  |
| `0x04EB` | `MAPICONPOINTTOINDEX` |  |
| `0x0546` | `OPENICONSLOT` |  |
| `0x0578` | `CHANGEICONWINDOWHEIGHT` |  |
| `0x05A5` | `CLOSEICONSLOT` |  |
| `0x0627` | `PNTICONNEWAREA` |  |
| `0x0677` | `CHANGEINHEIGHT` |  |
| `0x069B` | `ICONWNDHEIGHT` |  |
| `0x06B5` | `PAINTICON` |  |
| `0x0798` | `PAINTICONICWINDOW` |  |
| `0x07F1` | `ICONWNDPNT` |  |
| `0x0823` | `MAKEICONIC1` |  |
| `0x08DF` | `MAKEICONIC` |  |
| `0x0903` | `DELICON` |  |
| `0x095F` | `ISICONSLOTUSED` |  |
| `0x0981` | `ICONWNDOPEN` |  |
| `0x09DA` | `FARDELIBERATEICONNAME` |  |
| `0x0A78` | `SHOWICONNAME` |  |
| `0x0B5C` | `ICONNAMEWNDPROC` | [YES] |
| `0x0BD7` | `GETICONTEXT` |  |

## Segment `_EXIT` (7 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `EXITWINDOWS` | [YES] |
| `0x007C` | `FQUERYQUIT` |  |
| `0x0098` | `FQUERYQUIT2` |  |
| `0x00E8` | `INPENABLE` |  |
| `0x015B` | `INPDISABLE` |  |
| `0x019E` | `DISABLEOEMLAYER` | [YES] |
| `0x01C5` | `ENABLEOEMLAYER` | [YES] |

## Segment `_CLR` (1 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SETSYSCOLORS` | [YES] |

## Segment `_TILE` (59 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `REDRAWDESK` |  |
| `0x005D` | `RECALCALLCLMSWNDSHEIGHTS` |  |
| `0x0081` | `CALCALLWNDSHEIGHTS` |  |
| `0x00A5` | `CALCHEIGHTS` |  |
| `0x01F1` | `CALCALLCLMSWIDTHS` |  |
| `0x020E` | `CALCWIDTHS` |  |
| `0x029C` | `SETLRFROMPCLM` |  |
| `0x02E3` | `RECALCPNTWITHDELETECLM` |  |
| `0x0316` | `RECALCPNTWITHINSERTCLM` |  |
| `0x0346` | `PAINTNEARCLMS` |  |
| `0x03C3` | `RECALCPNTWITHINSERTWND` |  |
| `0x03FF` | `RECALCPNTWITHDELETEWND` |  |
| `0x0431` | `PAINTNEARWNDS` |  |
| `0x04DB` | `OPENINCLM` |  |
| `0x05F3` | `CLOSEINCLM` |  |
| `0x071E` | `CHGDESKHEIGHT` |  |
| `0x0766` | `FARPAINTDESK` |  |
| `0x07E7` | `SCRNTOGGLE` |  |
| `0x0850` | `SCRNFULL` |  |
| `0x08DF` | `NEGSCRNFULL` |  |
| `0x0956` | `CALCSIZEHEIGHTS` |  |
| `0x0A75` | `WINSIZE` |  |
| `0x0B4E` | `SIZECLMPNT` |  |
| `0x0BA9` | `MOVETONEWPOS` |  |
| `0x0C80` | `MOVETOCLM` |  |
| `0x0EAF` | `OFFSETWNDPOS` |  |
| `0x0F14` | `ADJUSTHEIGHTS` |  |
| `0x0F49` | `ADJUSTWIDTHS` |  |
| `0x0F9F` | `OFFSETCLMXPOS` |  |
| `0x0FE8` | `SOPENICON` |  |
| `0x1005` | `FINDMOUSEPOS` |  |
| `0x11CE` | `CALCSIZEWIDTHS` |  |
| `0x127A` | `GETNEXTCLMLEFT` |  |
| `0x127E` | `GETPREVCLMRIGHT` |  |
| `0x12B1` | `ANYSCRNFULL` |  |
| `0x12B5` | `GETPREVWNDBOTTOM` |  |
| `0x12B8` | `GETNEXTWNDTOP` |  |
| `0x12EF` | `INITMOVESIZETILEDWND` |  |
| `0x1385` | `INITTRACKTILEDSIZE` |  |
| `0x141E` | `TRACKTILEDSIZE` |  |
| `0x17F2` | `HILITEBOUNDS` |  |
| `0x18E0` | `GETMAX` |  |
| `0x199D` | `TRACKTILEDMOVE` |  |
| `0x1A67` | `NEXTHOTSPOT` |  |
| `0x1CB5` | `INITCURPOS` |  |
| `0x1D3C` | `CONTTRACK` |  |
| `0x1DA9` | `TRACKPOPUP` |  |
| `0x1EA2` | `MOVETOTRUEPOS` |  |
| `0x1ED4` | `INVERTFRAME` |  |
| `0x1F40` | `INITTRACKPOPUP` |  |
| `0x1FD8` | `TOPBOTPAINT` |  |
| `0x1FF9` | `BOTTOPPAINT` |  |
| `0x201C` | `SPLITPAINT` |  |
| `0x203F` | `SPLITCLMSPAINT` |  |
| `0x205B` | `LEFTRIGHTCLMPAINT` |  |
| `0x2089` | `RIGHTLEFTCLMPAINT` |  |
| `0x20B9` | `DELCLM` |  |
| `0x2111` | `INCCLMNO` |  |
| `0x2133` | `INSERTCLM` |  |

## Segment `_DLGMGR` (26 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `CREATEDIALOG` | [YES] |
| `0x044A` | `DLGSETFOCUS` |  |
| `0x0483` | `GETFIRSTTAB` |  |
| `0x04BD` | `GETDLGITEM` | [YES] |
| `0x04FA` | `SETDLGITEMTEXT` | [YES] |
| `0x052F` | `GETDLGITEMTEXT` | [YES] |
| `0x056B` | `SENDDLGITEMMESSAGE` | [YES] |
| `0x05AB` | `CHECKDLGBUTTON` | [YES] |
| `0x05E5` | `ISDLGBUTTONCHECKED` | [YES] |
| `0x0621` | `SETDLGITEMINT` | [YES] |
| `0x0681` | `CVTDEC` |  |
| `0x06C8` | `GETDLGITEMINT` | [YES] |
| `0x07A8` | `DLGWNDPROC` | [YES] |
| `0x0892` | `SKIPSZ` |  |
| `0x08BE` | `MAPDIALOGRECT` | [YES] |
| `0x093F` | `CHECKRADIOBUTTON` | [YES] |
| `0x097B` | `ADJUSTWINDOWRECT` | [YES] |
| `0x09F1` | `ISDIALOGMESSAGE` | [YES] |
| `0x0B04` | `NEXTENABLEDGROUPITEM` |  |
| `0x0B4D` | `NEXTGROUPITEM` |  |
| `0x0B83` | `PREVGROUPITEM` |  |
| `0x0BBF` | `NEXTCHILD` |  |
| `0x0BDD` | `PREVCHILD` |  |
| `0x0C0C` | `DIALOGTAB` |  |
| `0x0C73` | `GETFIRSTLEVELCHILD` |  |
| `0x0CA6` | `FGROUPHWND` |  |

## Segment `_CTLMGR` (6 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DRAWTEXT` | [YES] |
| `0x02F9` | `TABTEXT` |  |
| `0x0407` | `TABSKIP` |  |
| `0x0443` | `DIALOGBOX` | [YES] |
| `0x056F` | `ENDDIALOG` | [YES] |
| `0x05DF` | `SKIPWORD` |  |

## Segment `_EC1` (23 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `EDDRAWCARET` |  |
| `0x004E` | `EDINSERT` |  |
| `0x0109` | `EDCLIP` |  |
| `0x016F` | `SETUPEDDC` |  |
| `0x01A1` | `RELEASEEDDC` |  |
| `0x01C9` | `FMTRESET` |  |
| `0x02C3` | `EDITWNDPROC` | [YES] |
| `0x051E` | `EDCREATE` |  |
| `0x05B6` | `CHANGEEDSEL` |  |
| `0x0674` | `EDREPAINT` |  |
| `0x06A5` | `SETEDTEXT` |  |
| `0x06A5` | `LSETEDTEXT` |  |
| `0x0703` | `ICHFROMPT` |  |
| `0x0778` | `EDTRACKMOUSE` |  |
| `0x0873` | `MINA` |  |
| `0x087C` | `MAXA` |  |
| `0x08B9` | `DOKEY` |  |
| `0x08B9` | `XDOKEY` |  |
| `0x0A67` | `XPTFROMSEL2` |  |
| `0x0A67` | `PTFROMSEL2` |  |
| `0x0A98` | `HIDESEL` |  |
| `0x0ACD` | `EDNOTIFYPARENT` |  |
| `0x0AEB` | `EA1MARK` |  |

## Segment `_EC2` (7 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `SEDWNDPROC` |  |
| `0x020E` | `SEDCHARINPUT` |  |
| `0x037A` | `SEDPTFROMICH` |  |
| `0x03B9` | `SEDCHECKHSCROLL` |  |
| `0x0434` | `SEDDRAWLINE` |  |
| `0x050E` | `SEDDELETE` |  |
| `0x0579` | `SEDINVERTSEL` |  |

## Segment `_EC3` (40 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MEDWNDPROC` |  |
| `0x03A9` | `MEDPAINT` |  |
| `0x047E` | `FMTINIT` |  |
| `0x0521` | `MEDCHARINPUT` |  |
| `0x070B` | `MEDPTFROMICH` |  |
| `0x077E` | `ILFROMICH` |  |
| `0x07FE` | `MEDCALCRECT` |  |
| `0x0887` | `ENSURESELECTIONVISIBLE` |  |
| `0x0987` | `MEDLINELENGTH` |  |
| `0x09F4` | `MEDSIZE` |  |
| `0x0B09` | `MEDSELLINELENGTH` |  |
| `0x0B93` | `MEDDRAWLINES` |  |
| `0x0C7A` | `TEXTDRAW` |  |
| `0x0CC5` | `MEDINSERT` |  |
| `0x0D24` | `REFORMATALL` |  |
| `0x0ED4` | `MEDINVERTSELRECT` |  |
| `0x0FB6` | `FSCANCRLF` |  |
| `0x0FE9` | `MEDICHFROMPT` |  |
| `0x10ED` | `GETPOSDELTA` |  |
| `0x1141` | `MEDPAGEUPORDOWN` |  |
| `0x11D1` | `NEXTWORD` |  |
| `0x12EA` | `MEDUPDATE` |  |
| `0x13C8` | `MEDDELETE` |  |
| `0x1467` | `ISCRLF` |  |
| `0x147F` | `MEDCHANGECARET` |  |
| `0x1556` | `MEDEXPANDTABS` |  |
| `0x1672` | `GROWMPILICH` |  |
| `0x16A4` | `MEDDRAWTEXT` |  |
| `0x17AC` | `MEDREPLACE` |  |
| `0x190B` | `MAKEUNDO` |  |
| `0x19CB` | `UNDO` |  |
| `0x1A53` | `MEDCHECKCURSORWRAP` |  |
| `0x1ADE` | `MEDGETLINE` |  |
| `0x1B49` | `ILBACKCHECK` |  |
| `0x1B7E` | `MEDUNDOEDIT` |  |
| `0x1CA8` | `RESETUNDO` |  |
| `0x1D08` | `MEDSTRIPCRCRLF` |  |
| `0x1D5C` | `MEDFORMATLINES` |  |
| `0x1EC6` | `MEDCANUNDO` |  |
| `0x1F00` | `MEDSHIFTLINES` |  |

## Segment `_EC4` (7 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `EDCCP` |  |
| `0x005A` | `EDITCOPY` |  |
| `0x0101` | `EDITCUT` |  |
| `0x012C` | `EDITCLEAR` |  |
| `0x017F` | `EDITPASTE` |  |
| `0x0216` | `EDREPLACE` |  |
| `0x02D2` | `SEDUPDATE` |  |

## Segment `_EC5` (5 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `EDSCROLL` |  |
| `0x041F` | `DXYFROMTHUMBPOS` |  |
| `0x0481` | `POSFROMPED` |  |
| `0x04D0` | `DXYFROMDCHIL` |  |
| `0x0525` | `FKEYSTILLDOWN` |  |

## Segment `_BUTTON` (15 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `BTNGETDC` |  |
| `0x0036` | `BTNINITDC` |  |
| `0x0061` | `BTNRELEASEDC` |  |
| `0x007E` | `BUTTONWNDPROC` | [YES] |
| `0x0328` | `HILITEBTN` |  |
| `0x0356` | `BUTTONPAINT` |  |
| `0x046D` | `BUTTONINPUT` |  |
| `0x04FA` | `PUSHBTN` |  |
| `0x053C` | `UNHILITEBTN` |  |
| `0x056E` | `CHECKBTN` |  |
| `0x05DA` | `DRAWNEWSTATE` |  |
| `0x0644` | `DRAWCHECK` |  |
| `0x0724` | `DRAWBTNTEXT` |  |
| `0x0804` | `NOTIFYPARENT` |  |
| `0x082A` | `CALCBTNRECT` |  |

## Segment `_STAT` (3 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `STATICWNDPROC` | [YES] |
| `0x0199` | `STATICPAINT` |  |
| `0x032F` | `STATICPRINT` |  |

## Segment `_LBOX` (45 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0084` | `LBOXCTLWNDPROC` | [YES] |
| `0x031E` | `GETLPSZITEM` |  |
| `0x035C` | `UNLOCKHSTRINGS` |  |
| `0x0368` | `LBOXCTLSCROLL` |  |
| `0x040F` | `LBOXCTLENABLE` |  |
| `0x0430` | `LBOXCTLDELETE` |  |
| `0x04DE` | `LBSETSEL` |  |
| `0x0538` | `CREATELBOX` |  |
| `0x0629` | `INITHSTRINGS` |  |
| `0x0652` | `GROWMEM` |  |
| `0x069D` | `INSERTSTRING` |  |
| `0x0818` | `ADDSTRING` |  |
| `0x0865` | `LBSIZE` |  |
| `0x095C` | `SIGN` |  |
| `0x0976` | `ABS` |  |
| `0x0990` | `UPPER` |  |
| `0x09CE` | `LBOXCTLPAINT` |  |
| `0x0B78` | `LBOXCTLKEYINPUT` |  |
| `0x0C10` | `LBOXCTLCHARINPUT` |  |
| `0x0CD0` | `FAKEMOUSE` |  |
| `0x0DB7` | `TRACKMOUSE` |  |
| `0x10EF` | `ISELFROMPT2` |  |
| `0x1132` | `NOTIFYOWNER` |  |
| `0x1164` | `FLIPISEL` |  |
| `0x11A2` | `INSUREVISIBLE` |  |
| `0x11DA` | `NEWITOP` |  |
| `0x1269` | `SETISELBASE` |  |
| `0x1285` | `RESETWORLD` |  |
| `0x12D1` | `ALTERHILITE` |  |
| `0x1334` | `INVERTLBITEM` |  |
| `0x13A4` | `CHECKREDRAW` |  |
| `0x1442` | `CITEMINWINDOW` |  |
| `0x147A` | `COMPARE` |  |
| `0x14EA` | `FINDSTRING` |  |
| `0x1582` | `SETCURSEL` |  |
| `0x15F3` | `SETSELECTED` |  |
| `0x164C` | `ISSELECTED` |  |
| `0x16A2` | `INCISEL` |  |
| `0x16D2` | `LASTFULLVISIBLE` |  |
| `0x16F2` | `PTFROMISEL` |  |
| `0x1722` | `ISELFROMPT` |  |
| `0x1779` | `CARETON` |  |
| `0x17A9` | `CARETOFF` |  |
| `0x17C5` | `CARETCREATE` |  |
| `0x17F9` | `CARETDESTROY` |  |

## Segment `_CLPBRD` (19 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `OPENCLIPBOARD` | [YES] |
| `0x0064` | `CLOSECLIPBOARD` | [YES] |
| `0x009B` | `EMPTYCLIPBOARD` | [YES] |
| `0x0130` | `DISOWNCLIPBOARD` |  |
| `0x01C6` | `GETCLIPBOARDOWNER` | [YES] |
| `0x01DC` | `SETCLIPBOARDDATA` | [YES] |
| `0x02BD` | `GETCLIPBOARDDATA` | [YES] |
| `0x031C` | `COUNTCLIPBOARDFORMATS` | [YES] |
| `0x0332` | `ISCLIPBOARDFORMATAVAILABLE` | [YES] |
| `0x0361` | `ENUMCLIPBOARDFORMATS` | [YES] |
| `0x03CC` | `REGISTERCLIPBOARDFORMAT` | [YES] |
| `0x03EC` | `GETCLIPBOARDFORMATNAME` | [YES] |
| `0x041D` | `SETCLIPBOARDVIEWER` | [YES] |
| `0x0456` | `CHANGECLIPBOARDCHAIN` | [YES] |
| `0x04BE` | `DRAWCLIPBOARD` |  |
| `0x04E7` | `GETCLIPBOARDVIEWER` | [YES] |
| `0x04FD` | `FREEFMT` |  |
| `0x055F` | `FINDCLIPFORMAT` |  |
| `0x05BA` | `GETFORMATTYPE` |  |

## Segment `_COMDEV` (23 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `MYOPENCOMM` | [YES] |
| `0x00F8` | `SETCOMMSTATE` | [YES] |
| `0x012F` | `GETCOMMSTATE` | [YES] |
| `0x0195` | `READCOMM` | [YES] |
| `0x0238` | `UNGETCOMMCHAR` | [YES] |
| `0x0292` | `WRITECOMM` | [YES] |
| `0x0312` | `CLOSECOMM` | [YES] |
| `0x0389` | `GETCOMMERROR` | [YES] |
| `0x03D2` | `CKILL` |  |
| `0x0406` | `BUILDCOMMDCB` | [YES] |
| `0x065E` | `FIELD` |  |
| `0x06DB` | `GETID` |  |
| `0x07A2` | `CINFOPTR` |  |
| `0x07CE` | `GETMEM` |  |
| `0x07EC` | `FREEMEM` |  |
| `0x07FD` | `TRANSMITCOMMCHAR` | [YES] |
| `0x0823` | `SETCOMMEVENTMASK` | [YES] |
| `0x0847` | `GETCOMMEVENTMASK` | [YES] |
| `0x086B` | `SETCOMMBREAK` | [YES] |
| `0x088C` | `CLEARCOMMBREAK` | [YES] |
| `0x08AD` | `FLUSHCOMM` | [YES] |
| `0x08D1` | `ESCAPECOMMFUNCTION` | [YES] |
| `0x08F5` | `MYTOUPPER` |  |

## Segment `_CTLMGR3` (2 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `FNSKIPDLG` |  |
| `0x0211` | `SKIPSM2` |  |

## Segment `_LBOXDIR` (14 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `DLGDIRLIST` | [YES] |
| `0x0264` | `CHOPTEXT` |  |
| `0x0367` | `DLGDIRSELECT` | [YES] |
| `0x0467` | `LBDIR` |  |
| `0x05A5` | `CHECKATTR` |  |
| `0x05D0` | `LBDRIVE` |  |
| `0x0662` | `FFIRST` |  |
| `0x0698` | `FNEXT` |  |
| `0x06C5` | `SETCURRENTDRIVE` |  |
| `0x06E3` | `SETCURRENTDIRECTORY` |  |
| `0x0705` | `GETCURRENTDIRECTORY` |  |
| `0x0742` | `GETCURRENTDRIVE` |  |
| `0x075B` | `SETDISK` |  |
| `0x0779` | `GETDISK` |  |

## Segment `_ECKANJI` (3 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `KALIGN` |  |
| `0x007A` | `KBUMP` |  |
| `0x00C4` | `KCOMBINE` |  |

## Segment `DGROUP` (185 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0004` | `rsrvptrs` |  |
| `0x0010` | `SCRNDIRTY` |  |
| `0x0012` | `FFULLSCREENSWAP` |  |
| `0x0014` | `PCLASSLIST` |  |
| `0x0016` | `CTILEDWINDOWS` |  |
| `0x0018` | `FFIRSTTILEDWND` |  |
| `0x001A` | `TIFREQ` |  |
| `0x001C` | `TICOUNT` |  |
| `0x001E` | `FENDSESSION` |  |
| `0x0020` | `HOPENWND` |  |
| `0x0022` | `HCLIPBOARD` |  |
| `0x0024` | `HQCLIPLOCK` |  |
| `0x0026` | `HWNDCLIPOWNER` |  |
| `0x0028` | `HWNDCLIPVIEWER` |  |
| `0x002A` | `PCLIPBASE` |  |
| `0x002C` | `CNUMCLIPFORMATS` |  |
| `0x002E` | `FCLIPBOARDCHANGED` |  |
| `0x0030` | `HPMENU` |  |
| `0x0032` | `FMENU` |  |
| `0x0052` | `HQTILELOCK` |  |
| `0x0054` | `HQCURRENT` |  |
| `0x0056` | `RGBFDOMOUSEUP` |  |
| `0x005A` | `HWNDSYSMODAL` |  |
| `0x005C` | `HWNDCURSOR` |  |
| `0x005E` | `DTDBLCLK` |  |
| `0x0060` | `MSECSDBLCLK` |  |
| `0x0062` | `HWNDFOCUS` |  |
| `0x0064` | `HWNDACTIVE` |  |
| `0x0066` | `CODECAPTURE` |  |
| `0x0068` | `HQCAPTURE` |  |
| `0x006A` | `HWNDCAPTURE` |  |
| `0x006C` | `HQACTIVE` |  |
| `0x0070` | `HCURCURSOR` |  |
| `0x0072` | `HCURDEFCURSOR` |  |
| `0x007C` | `HQSYSLOCK` |  |
| `0x007E` | `IDSYSLOCK` |  |
| `0x0080` | `IDSYSPEEK` |  |
| `0x0082` | `RGBKEYSTATE` |  |
| `0x018C` | `FTASKLOCK` |  |
| `0x018E` | `RGWSYSMET` |  |
| `0x01BE` | `SPWNDFULLSCRN` |  |
| `0x01C0` | `CURSLEVEL` |  |
| `0x01CE` | `RGWBUTTONS` |  |
| `0x01FC` | `FMESSAGEBOX` |  |
| `0x01FE` | `CXCORNER` |  |
| `0x0200` | `CYCORNER` |  |
| `0x0202` | `MPSTYLECBR` |  |
| `0x020E` | `RGCINFO` |  |
| `0x02FE` | `CINC` |  |
| `0x0350` | `_edata` |  |
| `0x0390` | `FOO` |  |
| `0x0398` | `RCSYSMENUHIT` |  |
| `0x03A0` | `HWINMODULE` |  |
| `0x03A2` | `PODDCLM` |  |
| `0x03A4` | `FVERTSB` |  |
| `0x03A6` | `HWNDSBNOTIFY` |  |
| `0x03A8` | `POSOLD` |  |
| `0x03AA` | `HICONWARN` |  |
| `0x03AC` | `HBRDRAWFRAME` |  |
| `0x03AE` | `MSGDBLCLK` |  |
| `0x03B0` | `XLEFT` |  |
| `0x03B2` | `HDCBITS` |  |
| `0x03B4` | `POSSTART` |  |
| `0x03B6` | `HICNBANG` |  |
| `0x03B8` | `HWNDDBLCLK` |  |
| `0x03BA` | `FACTCHANGE` |  |
| `0x03BC` | `SYSCLROBJECTS` |  |
| `0x03D0` | `PXLEFT` |  |
| `0x03D2` | `RCDBLCLK` |  |
| `0x03DA` | `HICNHAND` |  |
| `0x03DC` | `HCLOSEMENU` |  |
| `0x03DE` | `SYSCOLORS` |  |
| `0x0406` | `RCTHUMB` |  |
| `0x040E` | `RCTRACK` |  |
| `0x0416` | `PSTATE` |  |
| `0x0418` | `FPROGNTW` |  |
| `0x041A` | `HRGNSCREEN` |  |
| `0x041C` | `HBRBLACK` |  |
| `0x041E` | `DPXTHUMB` |  |
| `0x0420` | `HSYSMENU` |  |
| `0x0422` | `SYSFONTCHARWIDTH` |  |
| `0x0424` | `OEMINFO` |  |
| `0x047E` | `CXBORDER` |  |
| `0x0480` | `CYBORDER` |  |
| `0x0482` | `FPREVNTW` |  |
| `0x0484` | `HSYSFONT` |  |
| `0x0486` | `XSIGN` |  |
| `0x0488` | `TIMERINTERVAL` |  |
| `0x048A` | `YSIGN` |  |
| `0x048C` | `HICNQUES` |  |
| `0x048E` | `CURRENTCARET` |  |
| `0x04A4` | `HPEMENU` |  |
| `0x04A6` | `PXUPARROW` |  |
| `0x04A8` | `HWNDALTTAB` |  |
| `0x04AA` | `LPSTRS` |  |
| `0x04AE` | `DCCACHE` |  |
| `0x04D6` | `TIMEMESSAGE` |  |
| `0x04DA` | `CXMAX` |  |
| `0x04DC` | `PREGFCLM` |  |
| `0x04DE` | `SBIVERT` |  |
| `0x04F0` | `RCSYSMENUINVERT` |  |
| `0x04F8` | `HCURSICON` |  |
| `0x04FA` | `RCSB` |  |
| `0x0502` | `PTTRACK` |  |
| `0x0506` | `CYCAPTION` |  |
| `0x0508` | `CXTAB` |  |
| `0x050A` | `PXOLD` |  |
| `0x050C` | `HPOSTICON` |  |
| `0x050E` | `SCRN` |  |
| `0x0522` | `HICONERR` |  |
| `0x0524` | `ICONINFO` |  |
| `0x0530` | `HRGNVISIBLE` |  |
| `0x0532` | `HWNDTESTNTW` |  |
| `0x0534` | `PTMUS` |  |
| `0x0538` | `OBICORNER` |  |
| `0x053E` | `STARTCLM` |  |
| `0x0540` | `HWNDTRACK` |  |
| `0x0542` | `DXSPC` |  |
| `0x0544` | `PXTHUMBBOTTOM` |  |
| `0x0546` | `RCSCREEN` |  |
| `0x054E` | `FCHECKPAINT` |  |
| `0x0550` | `HBRGRAY` |  |
| `0x0552` | `RGHWNDICONS` |  |
| `0x05B2` | `HWNDNAMEDICON` |  |
| `0x05B4` | `PXTHUMBTOP` |  |
| `0x05B6` | `ENDCLM` |  |
| `0x05B8` | `PSBISB` |  |
| `0x05BA` | `PPOPUPCLM` |  |
| `0x05BC` | `HRGNTEMP` |  |
| `0x05BE` | `HTASKCARET` |  |
| `0x05C0` | `SBIHORZ` |  |
| `0x05D2` | `PICONICCLM` |  |
| `0x05D4` | `TIMERINFO` |  |
| `0x05D8` | `HICNNOTE` |  |
| `0x05DA` | `PPOPUPHIDECLM` |  |
| `0x05DC` | `HRGNDESK` |  |
| `0x05DE` | `LPFNSB` |  |
| `0x05E2` | `MAXCLMS` |  |
| `0x05E4` | `SPDWND` |  |
| `0x05E6` | `PT` |  |
| `0x05EA` | `PXTOP` |  |
| `0x05EC` | `SYSFONTCHARHEIGHT` |  |
| `0x05EE` | `HCURSUPARROW` |  |
| `0x05F0` | `HCURSSIZE` |  |
| `0x05F2` | `KEYBDINFO` |  |
| `0x05FE` | `HWNDEXEC` |  |
| `0x0600` | `DCLMNO` |  |
| `0x0602` | `HRGNNULL` |  |
| `0x0604` | `HBRLTGRAY` |  |
| `0x0606` | `HDCDRAWTEXT` |  |
| `0x0608` | `HCURSNORMAL` |  |
| `0x060A` | `RGICHSTRS` |  |
| `0x0614` | `HDISPLAYINSTANCE` |  |
| `0x0616` | `PXRIGHT` |  |
| `0x0618` | `ICONSLOT` |  |
| `0x061A` | `CURSINFO` |  |
| `0x061E` | `FNOSTOPNTW` |  |
| `0x0620` | `FTRACKVERT` |  |
| `0x0622` | `PXDOWNARROW` |  |
| `0x0624` | `ATOMSCROLLBAR` |  |
| `0x0626` | `HWNDDRAGGING` |  |
| `0x0628` | `CMDSB` |  |
| `0x062A` | `HWNDKEYCVT` |  |
| `0x062C` | `HICONSAMPLE` |  |
| `0x062E` | `HMENUCHANGE` |  |
| `0x0630` | `FSBLOCK` |  |
| `0x0632` | `FHITOLD` |  |
| `0x0634` | `SPICONWND` |  |
| `0x0636` | `HBRWHITE` |  |
| `0x0638` | `PXBOTTOM` |  |
| `0x063A` | `WNDPOS` |  |
| `0x063E` | `MSINFO` |  |
| `0x064C` | `HWNDNTW` |  |
| `0x064E` | `PMENUCHANGE` |  |
| `0x0650` | `PFIRST` |  |
| `0x0652` | `HBRBTN` |  |
| `0x0654` | `HWNDSB` |  |
| `0x0656` | `HCURSIBEAM` |  |
| `0x0658` | `HWNDPOPUPNAME` |  |
| `0x065A` | `MSGBOXWND` |  |
| `0x0746` | `HWNDACTIVEPREV` |  |
| `0x0748` | `TIMEDBLCLK` |  |
| `0x074C` | `HQKEYCVT` |  |
| `0x074E` | `PXSTART` |  |
| `0x0750` | `TIMERHANDLE` |  |
