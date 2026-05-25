# KERNEL - reference symbols (starfrost013, debug build)

Source: [`starfrost013/modern-personality-research`](https://github.com/starfrost013/modern-personality-research) - `*syms.txt` parsed from the original Microsoft `.SYM` files of the **debug** Windows 1.03 build.

> **Caveat**: these offsets come from the **debug** build (extra strings, asserts, helpers). They are NOT byte-aligned with our retail build, so we do not auto-rename `sub_XXXX` by offset. Use this list as a *vocabulary* of known internal names. When a name happens to also be exported in our retail `.DEF`, we mark it as **confirmed** below.

- Binary name (per .SYM header): `KERNEL`
- Functions in debug build: **368**
- Constants: **6**
- Segments: **1**
- Names also in our retail `.DEF` exports: **103**

## Constants (DGROUP globals)

| Offset | Name |
|--------|------|
| `0x0001` | `__ACRTUSED` |
| `0x0006` | `PLOCALHEAP` |
| `0x0008` | `PATOMTABLE` |
| `0x000A` | `PSTACKTOP` |
| `0x000C` | `PSTACKMIN` |
| `0x000E` | `PSTACKBOT` |

## Segment `IGROUP` (388 symbols)

| Offset (debug) | Name | Confirmed in retail .DEF |
|----------------|------|--------------------------|
| `0x0000` | `HGLOBALHEAP` |  |
| `0x0002` | `PGLOBALHEAP` |  |
| `0x0004` | `PSWAPHOOK` |  |
| `0x0008` | `HEXEHEAD` |  |
| `0x000A` | `HEXESWEEP` |  |
| `0x000C` | `HTHUNKS` |  |
| `0x000E` | `HHANDLE` |  |
| `0x0010` | `TOPPDB` |  |
| `0x0012` | `HEADPDB` |  |
| `0x0014` | `TOPSIZEPDB` |  |
| `0x0016` | `HEADTDB` |  |
| `0x0018` | `CURTDB` |  |
| `0x001A` | `LOCKTDB` |  |
| `0x001C` | `FWINX` |  |
| `0x001E` | `F8087` |  |
| `0x0020` | `INSCHEDULER` |  |
| `0x0021` | `FEMM` |  |
| `0x0022` | `HBUFFER` |  |
| `0x0024` | `BUFADDR` |  |
| `0x0028` | `HFILE` |  |
| `0x002A` | `INT22BASE` |  |
| `0x002C` | `PDMAADD` |  |
| `0x0030` | `PINDOS` |  |
| `0x0034` | `PCNTCFLAG` |  |
| `0x0038` | `PCURRENTPDB` |  |
| `0x003C` | `PCURRENTDRIVE` |  |
| `0x0040` | `PERRMODE` |  |
| `0x0044` | `PSFTLINK` |  |
| `0x0048` | `PFILETABLE` |  |
| `0x004C` | `FILEENTRYSIZE` |  |
| `0x004E` | `LASTDRIVESWAPPED` |  |
| `0x004F` | `FBREAK` |  |
| `0x0050` | `DOS_VERSION` |  |
| `0x0051` | `DOS_REVISION` |  |
| `0x0052` | `DOS_OEM` |  |
| `0x0053` | `FINT21` |  |
| `0x0054` | `FEVENT` |  |
| `0x0055` | `KEYINFO` |  |
| `0x0061` | `FFAREAST` |  |
| `0x0062` | `PMBOXPROC` |  |
| `0x0066` | `PEXITPROC` |  |
| `0x006A` | `PSYSPROC` |  |
| `0x006E` | `PTIMERPROC` |  |
| `0x0072` | `PKEYPROC` |  |
| `0x0076` | `PREVINT20PROC` |  |
| `0x007A` | `PREVINT21PROC` |  |
| `0x007E` | `PREVINT24PROC` |  |
| `0x0082` | `PREVINT27PROC` |  |
| `0x0086` | `PREVINT3FPROC` |  |
| `0x008A` | `PREVBCON` |  |
| `0x008E` | `FBOOTING` |  |
| `0x008F` | `CDEVAT` |  |
| `0x0090` | `OLDERRNO` |  |
| `0x0092` | `OUTBUF` |  |
| `0x00C4` | `BUFPOS` |  |
| `0x00C6` | `USERPROBUF` |  |
| `0x0116` | `SZUSERPRO` |  |
| `0x011E` | `SZDISKMSG1` |  |
| `0x0126` | `SZDISKMSG2` |  |
| `0x0135` | `DRVLET` |  |
| `0x0138` | `SZWINDISK` |  |
| `0x0147` | `SZDISKCAP` |  |
| `0x0153` | `SYSERR` |  |
| `0x0160` | `SZCANNOTFIND1` |  |
| `0x016D` | `SZCANNOTFIND2` |  |
| `0x016E` | `MSGWRITEPROTECT` |  |
| `0x018C` | `DRVLET1` |  |
| `0x018F` | `MSGCANNOTREADDRV` |  |
| `0x01A6` | `DRVLET2` |  |
| `0x01A9` | `MSGCANNOTWRITEDRV` |  |
| `0x01BF` | `DRVLET3` |  |
| `0x01C2` | `MSGCANNOTREADDEV` |  |
| `0x01DA` | `DEVENAM1` |  |
| `0x01E3` | `MSGCANNOTWRITEDEV` |  |
| `0x01FA` | `DEVENAM2` |  |
| `0x0203` | `MSGNOPRINTER` |  |
| `0x0215` | `SZDEBUGSTR` |  |
| `0x02EA` | `GETVERSION` | [YES] |
| `0x02EE` | `STARTMODULE` |  |
| `0x03B4` | `LOADMODULE` | [YES] |
| `0x07E2` | `FINDEXEINFO` |  |
| `0x0818` | `ENTPROCADDRESS` |  |
| `0x08D8` | `FINDORDINAL` |  |
| `0x09AC` | `INCEXEUSAGE` |  |
| `0x09FF` | `DECEXEUSAGE` |  |
| `0x0A60` | `STARTPROCADDRESS` |  |
| `0x0A8D` | `GETINSTANCE` |  |
| `0x0AB3` | `GETEXEPTR` |  |
| `0x0B1C` | `GETSTACKPTR` |  |
| `0x0B7E` | `MYALLOC` |  |
| `0x0BD5` | `MYLOCK` |  |
| `0x0BE7` | `MYFREE` |  |
| `0x0C2E` | `LOADNRTABLE` |  |
| `0x0D23` | `FREENRTABLE` |  |
| `0x0D5B` | `GETSTRINGPTR` |  |
| `0x0D74` | `GETCHKSUMADDR` |  |
| `0x0DC8` | `CHECKSEGCHKSUM` |  |
| `0x0DF2` | `BADSEGCONT` |  |
| `0x0E20` | `ALLOCSEG` |  |
| `0x0EAB` | `ALLOCALLSEGS` |  |
| `0x0F70` | `SEGLOAD` |  |
| `0x10CB` | `BADSEGREAD` |  |
| `0x1219` | `LOADSEGMENT` |  |
| `0x13DC` | `ADDMODULE` |  |
| `0x142F` | `DELMODULE` |  |
| `0x1477` | `FREEMODULE` | [YES] |
| `0x1477` | `FREELIBRARY` | [YES] |
| `0x152F` | `SEGRELOC` |  |
| `0x1784` | `INT3FBP` |  |
| `0x1786` | `INT3FSAVEDBP` |  |
| `0x1788` | `INT3FSAVEDSS` |  |
| `0x178A` | `INT3FSAVEDDS` |  |
| `0x178C` | `INT3FSAVEDFRAME` |  |
| `0x178E` | `INT3FSAVEDIP` |  |
| `0x1790` | `INT3FSAVEDCS` |  |
| `0x1798` | `INT3FTHUNK` |  |
| `0x17C2` | `INT3FFAIL` |  |
| `0x180A` | `INT3FHANDLER` |  |
| `0x1875` | `RETTHUNK` |  |
| `0x18FF` | `TESTDSAX` |  |
| `0x194F` | `LOADLIBRARY` | [YES] |
| `0x1964` | `GETCODEHANDLE` | [YES] |
| `0x19CC` | `COPYNAME` |  |
| `0x1A01` | `GETPROCADDRESS` | [YES] |
| `0x1A53` | `GETMODULEFILENAME` | [YES] |
| `0x1A96` | `GETMODULEUSAGE` | [YES] |
| `0x1AB6` | `GETINSTANCEDATA` | [YES] |
| `0x1AEB` | `MAKEPROCINSTANCE` | [YES] |
| `0x1B84` | `FREEPROCINSTANCE` | [YES] |
| `0x1BC1` | `PATCHPROLOG` |  |
| `0x1BFF` | `PATCHTHUNKS` |  |
| `0x1E0B` | `GETMODULEHANDLE` | [YES] |
| `0x1E48` | `CALLPROCINSTANCE` | [YES] |
| `0x1E55` | `CALLMOVEABLEINSTANCEPROC` |  |
| `0x1E63` | `DEFINEHANDLETABLE` | [YES] |
| `0x1EAC` | `DELETEPATHNAME` | [YES] |
| `0x1EB4` | `OPENPATHNAME` | [YES] |
| `0x1EF3` | `OPENFILE` | [YES] |
| `0x2137` | `ISFLOPPY` |  |
| `0x215A` | `PROMPT` |  |
| `0x21B4` | `GETPURENAME` |  |
| `0x21DA` | `PARSEFILE` |  |
| `0x231F` | `SEARCHPATH` |  |
| `0x23A2` | `GETLASTDISKCHANGE` | [YES] |
| `0x23AA` | `GETTEMPDRIVE` | [YES] |
| `0x23EB` | `HEXTOA` |  |
| `0x2406` | `GETTEMPFILENAME` | [YES] |
| `0x2504` | `CALCMAXNRSEG` |  |
| `0x2559` | `LOADEXEHEADER` |  |
| `0x28C2` | `TRIMEXEHEADER` |  |
| `0x28E6` | `STARTLIBRARY` |  |
| `0x2921` | `STARTTASK` |  |
| `0x29A7` | `INITTASK` | [YES] |
| `0x2A50` | `VALIDATECODESEGMENTS` | [YES] |
| `0x2AA1` | `FINDRESOURCE` | [YES] |
| `0x2BC6` | `LOADRESOURCE` | [YES] |
| `0x2D50` | `SETRESOURCEHANDLER` | [YES] |
| `0x2E34` | `MYRESALLOC` |  |
| `0x2E68` | `ALLOCRESOURCE` | [YES] |
| `0x2EFE` | `RESALLOC` |  |
| `0x2FAF` | `ACCESSRESOURCE` | [YES] |
| `0x301E` | `LOCKRESOURCE` | [YES] |
| `0x30AE` | `FREERESOURCE` | [YES] |
| `0x3144` | `SIZEOFRESOURCE` | [YES] |
| `0x3173` | `DEFAULTRESOURCEHANDLER` |  |
| `0x31BB` | `PRELOADRESOURCES` |  |
| `0x322A` | `GETRESORD` |  |
| `0x326A` | `CMPRESSTR` |  |
| `0x32A7` | `FUSEDBP` |  |
| `0x32AC` | `PATCHSTACK` |  |
| `0x3401` | `SEARCHSTACK` |  |
| `0x35A3` | `CATCH` | [YES] |
| `0x35F8` | `THROW` | [YES] |
| `0x365B` | `GETCURRENTTASK` | [YES] |
| `0x3665` | `CREATETASK` |  |
| `0x379C` | `INSERTTASK` |  |
| `0x37EE` | `DELETETASK` |  |
| `0x3827` | `GROWSFT` |  |
| `0x38D8` | `CLOSEOPENFILES` |  |
| `0x3985` | `LOCKCURRENTTASK` | [YES] |
| `0x399A` | `SAVESTATE` |  |
| `0x3A3D` | `RESTORESTATE` |  |
| `0x3B04` | `RESCHEDULE` |  |
| `0x3B0C` | `BOOTSCHEDULE` |  |
| `0x3BF2` | `WAITEVENT` | [YES] |
| `0x3C30` | `YIELD` | [YES] |
| `0x3CF2` | `POSTEVENT` | [YES] |
| `0x3CFD` | `GETTASKQUEUE` | [YES] |
| `0x3D07` | `SETTASKSIGNALPROC` | [YES] |
| `0x3D0A` | `SETTASKINTERCHANGE` | [YES] |
| `0x3D0D` | `SETTASKSWITCHPROC` | [YES] |
| `0x3D2E` | `SETTASKQUEUE` | [YES] |
| `0x3D3B` | `SETPRIORITY` | [YES] |
| `0x3D6C` | `DOS3CALL` | [YES] |
| `0x3D6F` | `NETBIOSCALL` | [YES] |
| `0x3E2C` | `NOHOOKDOSCALL` | [YES] |
| `0x3E34` | `ENABLEDOS` | [YES] |
| `0x3EE9` | `DISABLEDOS` | [YES] |
| `0x3F3F` | `ENABLEINT21` |  |
| `0x3F76` | `DISABLEINT21` |  |
| `0x3FC5` | `EXITKERNEL` | [YES] |
| `0x403C` | `GETLPERRMODE` | [YES] |
| `0x4046` | `PDB_CALL_SYSTEM_ENTRY` |  |
| `0x4087` | `INT27HANDLER` |  |
| `0x408C` | `INT20HANDLER` |  |
| `0x408E` | `INT21HANDLER` |  |
| `0x421A` | `PATHDRVDSDX` |  |
| `0x43ED` | `DODISK` |  |
| `0x46D1` | `ABORTCALL` |  |
| `0x46E2` | `EXITCALL` |  |
| `0x47AF` | `BUILDPDB` | [YES] |
| `0x48A9` | `GETCURRENTPDB` | [YES] |
| `0x48B9` | `ISSCREENGRAB` | [YES] |
| `0x48E2` | `INT24HANDLER` |  |
| `0x4A0B` | `SHOWDIALOGBOX2` |  |
| `0x4A26` | `APPENDFIRST` |  |
| `0x4A2D` | `APPEND` |  |
| `0x4A49` | `INITATOMTABLE` | [YES] |
| `0x4A83` | `DELATOM` |  |
| `0x4A86` | `ADDATOM` | [YES] |
| `0x4A89` | `FINDATOM` | [YES] |
| `0x4A8B` | `LOOKUPATOM` |  |
| `0x4BEF` | `DELETEATOM` | [YES] |
| `0x4C1A` | `GETATOMHANDLE` | [YES] |
| `0x4C3A` | `GETATOMNAME` | [YES] |
| `0x4CBC` | `GETPROFILEINT` | [YES] |
| `0x4D0E` | `GETPROFILESTRING` | [YES] |
| `0x4DA5` | `GETKEYS` |  |
| `0x4E3E` | `GETSTRING` |  |
| `0x4ED3` | `BUFFERINIT` |  |
| `0x501A` | `WRITEPROFILESTRING` | [YES] |
| `0x51E0` | `_LOPEN` | [YES] |
| `0x51E3` | `_LCREAT` | [YES] |
| `0x5203` | `_LCLOSE` | [YES] |
| `0x5216` | `_LLSEEK` | [YES] |
| `0x5235` | `_LREAD` | [YES] |
| `0x5238` | `_LWRITE` | [YES] |
| `0x525A` | `LSTRLEN` | [YES] |
| `0x528A` | `LSTRCPY` | [YES] |
| `0x529A` | `LSTRCAT` | [YES] |
| `0x52A7` | `LSTRCMP` | [YES] |
| `0x52F0` | `ANSIUPPER` | [YES] |
| `0x530F` | `ANSILOWER` | [YES] |
| `0x532E` | `ANSIPREV` | [YES] |
| `0x5359` | `ANSINEXT` | [YES] |
| `0x5376` | `MYANSIUPPER` |  |
| `0x538E` | `MYANSILOWER` |  |
| `0x53A6` | `MYUPPER` |  |
| `0x53B9` | `MYLOWER` |  |
| `0x53CC` | `ISKANJI` |  |
| `0x53FA` | `LJOIN` |  |
| `0x540A` | `LREPSETUP` |  |
| `0x5410` | `LZERO` |  |
| `0x5424` | `LALLOC` |  |
| `0x54DD` | `LFREE` |  |
| `0x5514` | `LMOVE` |  |
| `0x5548` | `LBESTFIT` |  |
| `0x558B` | `LCOMPACT` |  |
| `0x5705` | `LENTER` |  |
| `0x5743` | `LLEAVE` |  |
| `0x5784` | `LALIGN` |  |
| `0x5797` | `LDREF` |  |
| `0x57F8` | `LNOTIFY` |  |
| `0x5809` | `LOCALALLOC` | [YES] |
| `0x58A8` | `LOCALREALLOC` | [YES] |
| `0x5A3A` | `LOCALFREE` | [YES] |
| `0x5ADA` | `LOCALSIZE` | [YES] |
| `0x5AF1` | `LOCALFLAGS` | [YES] |
| `0x5B0A` | `LOCALLOCK` | [YES] |
| `0x5B70` | `LOCALUNLOCK` | [YES] |
| `0x5BE3` | `LOCALHANDLE` | [YES] |
| `0x5BFE` | `LOCALCOMPACT` | [YES] |
| `0x5C64` | `LOCALNOTIFY` | [YES] |
| `0x5C7B` | `LOCALNOTIFYDEFAULT` |  |
| `0x5D28` | `LOCALINIT` | [YES] |
| `0x5DD4` | `HALLOC` |  |
| `0x5E01` | `HTHREAD` |  |
| `0x5E14` | `HFREE` |  |
| `0x5E2D` | `HDREF` |  |
| `0x5E40` | `HENUM` |  |
| `0x5E77` | `HEND` |  |
| `0x5E77` | `GALIGN` |  |
| `0x5E88` | `GDREF` |  |
| `0x5EBA` | `GHANDLE` |  |
| `0x5F45` | `GALLOC` |  |
| `0x5F8B` | `GREALLOC` |  |
| `0x6186` | `GFREE` |  |
| `0x61A8` | `GFREEALL` |  |
| `0x61DD` | `GLOCK` |  |
| `0x61E5` | `GUNLOCK` |  |
| `0x61FC` | `GLRUTOP` |  |
| `0x625C` | `GLRUADD` |  |
| `0x629A` | `GLRUDEL` |  |
| `0x62E5` | `GLRUPREV` |  |
| `0x6307` | `GSPLICE` |  |
| `0x6347` | `GJOIN` |  |
| `0x6369` | `GZERO` |  |
| `0x639A` | `GSEARCH` |  |
| `0x648D` | `GMARKFREE` |  |
| `0x64CD` | `GFINDFREE` |  |
| `0x64EB` | `GCHECKFREE` |  |
| `0x650D` | `GCFRSRV` |  |
| `0x65B4` | `GMOVE` |  |
| `0x6672` | `GCOMPACT` |  |
| `0x66A9` | `GCMPHEAP` |  |
| `0x6705` | `GMOVEABLE` |  |
| `0x672B` | `GSLIDE` |  |
| `0x673C` | `GSLIDECOMMON` |  |
| `0x67D5` | `GBESTFIT` |  |
| `0x6817` | `GMOVEBUSY` |  |
| `0x6889` | `GDISCARD` |  |
| `0x691A` | `GLRUSWEEP` |  |
| `0x6922` | `LRUSWEEP` |  |
| `0x69A6` | `INT21ALLOC` |  |
| `0x69AF` | `INT21REALLOC` |  |
| `0x69B8` | `INT21FREE` |  |
| `0x69C3` | `GENTER` |  |
| `0x69CE` | `GLEAVE` |  |
| `0x69D2` | `GBTOP` |  |
| `0x6A45` | `GRESERVE` |  |
| `0x6A80` | `GRTEST` |  |
| `0x6A91` | `GAVAIL` |  |
| `0x6B36` | `GNOTIFY` |  |
| `0x6BAE` | `GHEXPAND` |  |
| `0x6C1C` | `GMEMCHECK` |  |
| `0x6C21` | `GMEMFAIL` |  |
| `0x6C22` | `SETSWAPHOOK` | [YES] |
| `0x6C39` | `GLOBALALLOC` | [YES] |
| `0x6C9F` | `GLOBALREALLOC` | [YES] |
| `0x6D08` | `GLOBALFREE` | [YES] |
| `0x6DAA` | `GLOBALFREEALL` | [YES] |
| `0x6E30` | `XHANDLE` |  |
| `0x6E4F` | `GLOBALHANDLE` | [YES] |
| `0x6E54` | `LOCKSEGMENT` | [YES] |
| `0x6E5E` | `UNLOCKSEGMENT` | [YES] |
| `0x6E68` | `GLOBALSIZE` | [YES] |
| `0x6E82` | `GLOBALFLAGS` | [YES] |
| `0x6E91` | `GLOBALLOCK` | [YES] |
| `0x6EE5` | `GLOBALUNLOCK` | [YES] |
| `0x6F3B` | `GLOBALCOMPACT` | [YES] |
| `0x6FAD` | `GLOBALINFOPTR` |  |
| `0x6FB5` | `GLOBALMASTERHANDLE` | [YES] |
| `0x6FCC` | `DEBUGINIT` |  |
| `0x7003` | `DEBUGDEFINESEGMENT` |  |
| `0x7039` | `DEBUGMOVEDSEGMENT` |  |
| `0x705C` | `DEBUGFREESEGMENT` |  |
| `0x7080` | `KERNELDBGMSG` |  |
| `0x70C0` | `CHECKLOCALHEAP` |  |
| `0x72AD` | `CHECKGLOBALHEAP` |  |
| `0x75F2` | `KERNELERROR` |  |
| `0x779B` | `FINDSEGSYMS` |  |
| `0x7AD5` | `FINDSYMBOL` |  |
| `0x7C29` | `NEXTFRAME` |  |
| `0x7C9E` | `STACKWALK` |  |
| `0x7D75` | `FATALEXIT` | [YES] |
| `0x7E8E` | `HTOA` |  |
| `0x7EDD` | `GETDEBUGSTRING` |  |
| `0x7F07` | `GETEXEHEAD` |  |
| `0x7F0C` | `ENTERBREAK` |  |
| `0x7F26` | `__lshl` |  |
| `0x7F31` | `HINITMEM` |  |
| `0x7F31` | `ENDCODE` |  |
| `0x7F33` | `SEGINITMEM` |  |
| `0x7F35` | `CPSHRUNK` |  |
| `0x7F37` | `LPBOOTAPP` |  |
| `0x7F3B` | `BOOTEXECBLOCK` |  |
| `0x7F49` | `WIN_SHOW` |  |
| `0x7F8E` | `BOOTDONE` |  |
| `0x800A` | `BOOTSTRAP` |  |
| `0x830F` | `LOADNEWEXE` |  |
| `0x83DD` | `SLOWBOOT` |  |
| `0x84C8` | `FINDFREESEG` |  |
| `0x853E` | `FNOMEM` |  |
| `0x85C3` | `LOADFIXEDSEG` |  |
| `0x86E4` | `SHRINK` |  |
| `0x8743` | `FASTBOOT` |  |
| `0x88DF` | `DD1` |  |
| `0x893D` | `FB1X` |  |
| `0x89D4` | `DD2` |  |
| `0x8B1A` | `FB6` |  |
| `0x8BEB` | `INITPROFILE` |  |
| `0x8BFB` | `INITLOADER` |  |
| `0x8BFB` | `ENDINIT` |  |
| `0x8E07` | `INITFWDREF` |  |
| `0x8EFC` | `TESTEMM` |  |
| `0x8F32` | `INITDOSVARP` |  |
| `0x923B` | `GINIT` |  |
| `0x9315` | `GLOBALINIT` |  |
