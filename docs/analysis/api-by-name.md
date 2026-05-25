# Lista alfabetica de funciones nombradas

Total: **548** funciones con nombre exportado o conocido.

| Funcion | Modulo | Tipo | Instr | Descripcion |
|---------|--------|------|------:|-------------|
| `ACCESSRESOURCE` | [KERNEL](KERNEL.md) | FAR | 57 | Llama a servicios DOS via INT 21h (57 instr). |
| `ADDFONTRESOURCE` | [GDI](GDI.md) | FAR | 254 | Dispatcher: tabla de decisiones cmp+jcc (254 instr). |
| `ADJUSTWINDOWRECT` | [USER](USER.md) | FAR | 51 | Dispatcher: tabla de decisiones cmp+jcc (51 instr). |
| `ALLOCRESOURCE` | [KERNEL](KERNEL.md) | FAR | 76 | Iterador con bucle (76 instr). |
| `ANSILOWER` | [KERNEL](KERNEL.md) | FAR | 14 | Convierte cadena ANSI a minusculas. |
| `ANSINEXT` | [KERNEL](KERNEL.md) | FAR | 14 | Wrapper que delega en sub_4E65. |
| `ANSIPREV` | [KERNEL](KERNEL.md) | FAR | 19 | Iterador con instrucciones de string (movsb/scasb/...) (19 instr). |
| `ANSIUPPER` | [KERNEL](KERNEL.md) | FAR | 14 | Convierte cadena ANSI a mayusculas. |
| `ANYPOPUP` | [USER](USER.md) | FAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. |
| `ARC` | [GDI](GDI.md) | FAR | 42 | Dibuja arco. |
| `BEGINPAINT` | [USER](USER.md) | FAR | 100 | Empieza secuencia de pintado WM_PAINT. |
| `BITBLT` | [GDI](GDI.md) | FAR | 27 | Copia rectangulo de bits entre DCs (block transfer). |
| `BITMAPBITS` | [GDI](GDI.md) | FAR | 62 | Funcion mediana (62 instr, 2 calls). |
| `BRINGWINDOWTOTOP` | [USER](USER.md) | FAR | 25 | Funcion sin clasificar definitiva (25 instr). |
| `BRUTE` | [GDI](GDI.md) | FAR | 80 | Iterador con instrucciones de string (movsb/scasb/...) (80 instr). |
| `BUILDCOMMDCB` | [USER](USER.md) | FAR | 385 | Dispatcher: tabla de decisiones cmp+jcc (385 instr). |
| `BUILDPDB` | [KERNEL](KERNEL.md) | FAR | 102 | Llama a servicios DOS via INT 21h (102 instr). |
| `BUTTONWNDPROC` | [USER](USER.md) | FAR | 932 | Dispatcher: tabla de decisiones cmp+jcc (932 instr). |
| `CALLMSGFILTER` | [USER](USER.md) | FAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. |
| `CALLPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 12 | Invoca un thunk creado por MAKEPROCINSTANCE. |
| `CALLWINDOWPROC` | [USER](USER.md) | FAR | 52 | Funcion mediana (52 instr, 2 calls). |
| `CARETBLINKPROC` | [USER](USER.md) | FAR | 98 | Dispatcher: tabla de decisiones cmp+jcc (98 instr). |
| `CATCH` | [KERNEL](KERNEL.md) | FAR | 36 | Funcion mediana (36 instr, 1 calls). |
| `CCLRBRK` | [COMM](COMM.md) | FAR | 19 | Funcion sin clasificar definitiva (19 instr). |
| `CEVT` | [COMM](COMM.md) | FAR | 16 | Funcion sin clasificar definitiva (16 instr). |
| `CEVTGET` | [COMM](COMM.md) | FAR | 16 | Funcion sin clasificar definitiva (16 instr). |
| `CEXTFCN` | [COMM](COMM.md) | FAR | 16 | Funcion sin clasificar definitiva (16 instr). |
| `CFLUSH` | [COMM](COMM.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `CHANGECLIPBOARDCHAIN` | [USER](USER.md) | FAR | 65 | Dispatcher: tabla de decisiones cmp+jcc (65 instr). |
| `CHANGEMENU` | [USER](USER.md) | FAR | 211 | Funcion compleja: 211 instrucciones, 6 llamadas, 19 branches. |
| `CHECKCURSOR` | [CGA](CGA.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `CHECKCURSOR` | [HERCULES](HERCULES.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `CHECKDLGBUTTON` | [USER](USER.md) | FAR | 33 | Funcion mediana (33 instr, 0 calls). |
| `CHECKMENUITEM` | [USER](USER.md) | FAR | 1 | Marca/desmarca item con check. |
| `CHECKRADIOBUTTON` | [USER](USER.md) | FAR | 35 | Funcion mediana (35 instr, 0 calls). |
| `CHILDWINDOWFROMPOINT` | [USER](USER.md) | FAR | 35 | Funcion mediana (35 instr, 1 calls). |
| `CLEARCOMMBREAK` | [USER](USER.md) | FAR | 17 | Funcion sin clasificar definitiva (17 instr). |
| `CLIENTTOSCREEN` | [USER](USER.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `CLIPCURSOR` | [USER](USER.md) | FAR | 68 | Dispatcher: tabla de decisiones cmp+jcc (68 instr). |
| `CLOSECLIPBOARD` | [USER](USER.md) | FAR | 24 | Funcion sin clasificar definitiva (24 instr). |
| `CLOSECOMM` | [USER](USER.md) | FAR | 49 | Funcion mediana (49 instr, 1 calls). |
| `CLOSEMETAFILE` | [GDI](GDI.md) | FAR | 168 | Dispatcher: tabla de decisiones cmp+jcc (168 instr). |
| `CLOSESOUND` | [SOUND](SOUND.md) | FAR | 44 | Iterador con bucle (44 instr). |
| `CLOSEWINDOW` | [USER](USER.md) | FAR | 18 | Funcion sin clasificar definitiva (18 instr). |
| `COMBINERGN` | [GDI](GDI.md) | FAR | 115 | Iterador con instrucciones de string (movsb/scasb/...) (115 instr). |
| `COMPATIBLEBITMAP` | [GDI](GDI.md) | FAR | 45 | Funcion mediana (45 instr, 1 calls). |
| `COMPUPDATERECT` | [USER](USER.md) | FAR | 36 | Funcion mediana (36 instr, 1 calls). |
| `COMPUPDATERGN` | [USER](USER.md) | FAR | 29 | Funcion sin clasificar definitiva (29 instr). |
| `CONTROL` | [CGA](CGA.md) | FAR | 31 | Iterador con instrucciones de string (movsb/scasb/...) (31 instr). |
| `CONTROL` | [HERCULES](HERCULES.md) | FAR | 31 | Iterador con instrucciones de string (movsb/scasb/...) (31 instr). |
| `CONTSCROLL` | [USER](USER.md) | FAR | 52 | Funcion mediana (52 instr, 2 calls). |
| `COPY` | [GDI](GDI.md) | FAR | 21 | Funcion sin clasificar definitiva (21 instr). |
| `COPYMETAFILE` | [GDI](GDI.md) | FAR | 148 | Funcion compleja: 148 instrucciones, 7 llamadas, 11 branches. |
| `COPYRECT` | [USER](USER.md) | FAR | 24 | Funcion sin clasificar definitiva (24 instr). |
| `COUNTCLIPBOARDFORMATS` | [USER](USER.md) | FAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. |
| `COUNTVOICENOTES` | [SOUND](SOUND.md) | FAR | 29 | Funcion sin clasificar definitiva (29 instr). |
| `CREATEBITMAP` | [GDI](GDI.md) | FAR | 57 | Crea bitmap. |
| `CREATEBITMAPINDIRECT` | [GDI](GDI.md) | FAR | 126 | Constructor: crea bitmapindirect. |
| `CREATEBRUSHINDIRECT` | [GDI](GDI.md) | FAR | 73 | Constructor: crea brushindirect. |
| `CREATECARET` | [USER](USER.md) | FAR | 81 | Constructor: crea caret. |
| `CREATECOMPATIBLEBITMAP` | [GDI](GDI.md) | FAR | 2 | Crea bitmap compatible con DC. |
| `CREATECOMPATIBLEDC` | [GDI](GDI.md) | FAR | 43 | Crea DC compatible con otro (memoria). |
| `CREATECONVERTWINDOW` | [USER](USER.md) | FAR | 41 | Constructor: crea convertwindow. |
| `CREATEDC` | [GDI](GDI.md) | FAR | 2 | Crea Device Context para un dispositivo. |
| `CREATEDIALOG` | [USER](USER.md) | FAR | 463 | Constructor: crea dialog. |
| `CREATEELLIPTICRGN` | [GDI](GDI.md) | FAR | 37 | Constructor: crea ellipticrgn. |
| `CREATEELLIPTICRGNINDIRECT` | [GDI](GDI.md) | FAR | 22 | Constructor: crea ellipticrgnindirect. |
| `CREATEFONT` | [GDI](GDI.md) | FAR | 54 | Crea fuente con atributos. |
| `CREATEFONTINDIRECT` | [GDI](GDI.md) | FAR | 24 | Constructor: crea fontindirect. |
| `CREATEHATCHBRUSH` | [GDI](GDI.md) | FAR | 18 | Crea brush con patron de rayado. |
| `CREATEIC` | [GDI](GDI.md) | FAR | 1 | Constructor: crea ic. |
| `CREATEMENU` | [USER](USER.md) | FAR | 29 | Crea menu vacio. |
| `CREATEMETAFILE` | [GDI](GDI.md) | FAR | 74 | Constructor: crea metafile. |
| `CREATEPATTERNBRUSH` | [GDI](GDI.md) | FAR | 18 | Crea brush desde bitmap. |
| `CREATEPEN` | [GDI](GDI.md) | FAR | 25 | Crea pen con estilo/grosor/color. |
| `CREATEPENINDIRECT` | [GDI](GDI.md) | FAR | 20 | Constructor: crea penindirect. |
| `CREATEPOLYGONRGN` | [GDI](GDI.md) | FAR | 32 | Constructor: crea polygonrgn. |
| `CREATEPQ` | [GDI](GDI.md) | FAR | 45 | Constructor: crea pq. |
| `CREATERECTRGN` | [GDI](GDI.md) | FAR | 32 | Constructor: crea rectrgn. |
| `CREATERECTRGNINDIRECT` | [GDI](GDI.md) | FAR | 17 | Constructor: crea rectrgnindirect. |
| `CREATESOLIDBRUSH` | [GDI](GDI.md) | FAR | 18 | Crea brush solido de color. |
| `CREATESYSTEMTIMER` | [SYSTEM](SYSTEM.md) | FAR | 35 | Constructor: crea systemtimer. |
| `CREATEWINDOW` | [USER](USER.md) | FAR | 454 | Crea una ventana Win16. Devuelve HWND. |
| `CSETBRK` | [COMM](COMM.md) | FAR | 19 | Funcion sin clasificar definitiva (19 instr). |
| `CTX` | [COMM](COMM.md) | FAR | 16 | Funcion sin clasificar definitiva (16 instr). |
| `DEATH` | [GDI](GDI.md) | FAR | 12 | Funcion sin clasificar definitiva (12 instr). |
| `DEFINEHANDLETABLE` | [KERNEL](KERNEL.md) | FAR | 31 | Define tabla de handles para un modulo. |
| `DEFWINDOWPROC` | [USER](USER.md) | FAR | 466 | Procesa mensaje por defecto cuando WindowProc no lo hace. |
| `DELETEATOM` | [KERNEL](KERNEL.md) | FAR | 23 | Destructor: libera tom. |
| `DELETEDC` | [GDI](GDI.md) | FAR | 153 | Borra un DC. |
| `DELETEMETAFILE` | [GDI](GDI.md) | FAR | 22 | Destructor: libera etafile. |
| `DELETEPATHNAME` | [KERNEL](KERNEL.md) | FAR | 6 | Borra un fichero por path. |
| `DELETEPQ` | [GDI](GDI.md) | FAR | 16 | Destructor: libera q. |
| `DESTROYCARET` | [USER](USER.md) | FAR | 27 | Destructor: libera caret. |
| `DESTROYMENU` | [USER](USER.md) | FAR | 37 | Destruye menu y libera recursos. |
| `DESTROYTASKWINDOWS2` | [USER](USER.md) | FAR | 34 | Destructor: libera taskwindows2. |
| `DESTROYWINDOW` | [USER](USER.md) | FAR | 91 | Destruye una ventana y libera recursos. |
| `DEVICEMODE` | [CGA](CGA.md) | FAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. |
| `DEVICEMODE` | [HERCULES](HERCULES.md) | FAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. |
| `DIALOGBOX` | [USER](USER.md) | FAR | 120 | Carga y ejecuta dialogo modal. |
| `DISABLE` | [CGA](CGA.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `DISABLE` | [HERCULES](HERCULES.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `DISABLE` | [MOUSE](MOUSE.md) | FAR | 34 | Llama a servicios DOS via INT 21h (34 instr). |
| `DISABLEDOS` | [KERNEL](KERNEL.md) | FAR | 30 | Llama a servicios DOS via INT 21h (30 instr). |
| `DISABLEOEMLAYER` | [USER](USER.md) | FAR | 19 | Funcion sin clasificar definitiva (19 instr). |
| `DISABLESYSTEMTIMERS` | [SYSTEM](SYSTEM.md) | FAR | 10 | Llama a servicios DOS via INT 21h (10 instr). |
| `DISPATCHMESSAGE` | [USER](USER.md) | FAR | 41 | Envia mensaje al window proc adecuado. |
| `DLGDIRLIST` | [USER](USER.md) | FAR | 333 | Dispatcher: tabla de decisiones cmp+jcc (333 instr). |
| `DLGDIRSELECT` | [USER](USER.md) | FAR | 99 | Dispatcher: tabla de decisiones cmp+jcc (99 instr). |
| `DLGWNDPROC` | [USER](USER.md) | FAR | 117 | Dispatcher: tabla de decisiones cmp+jcc (117 instr). |
| `DMBITBLT` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMCOLORINFO` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMENUMDFONTS` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMENUMOBJ` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMOUTPUT` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMPIXEL` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMREALIZEOBJECT` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMSCANLR` | [GDI](GDI.md) | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). |
| `DMSTRBLT` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `DMTRANSPOSE` | [GDI](GDI.md) | FAR | 80 | Iterador con instrucciones de string (movsb/scasb/...) (80 instr). |
| `DOS3CALL` | [KERNEL](KERNEL.md) | FAR | 2 | Llama a servicios DOS via INT 21h (2 instr). |
| `DPXLATE` | [GDI](GDI.md) | FAR | 27 | Funcion sin clasificar definitiva (27 instr). |
| `DRAWICON` | [USER](USER.md) | FAR | 120 | Funcion compleja: 120 instrucciones, 10 llamadas, 5 branches. |
| `DRAWMENUBAR` | [USER](USER.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `DRAWTEXT` | [USER](USER.md) | FAR | 399 | Dispatcher: tabla de decisiones cmp+jcc (399 instr). |
| `ELLIPSE` | [GDI](GDI.md) | FAR | 44 | Dibuja elipse. |
| `EMPTYCLIPBOARD` | [USER](USER.md) | FAR | 59 | Funcion mediana (59 instr, 4 calls). |
| `ENABLE` | [CGA](CGA.md) | FAR | 32 | Funcion mediana (32 instr, 0 calls). |
| `ENABLE` | [HERCULES](HERCULES.md) | FAR | 32 | Funcion mediana (32 instr, 1 calls). |
| `ENABLE` | [MOUSE](MOUSE.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `ENABLEDOS` | [KERNEL](KERNEL.md) | FAR | 75 | Llama a servicios DOS via INT 21h (75 instr). |
| `ENABLEMENUITEM` | [USER](USER.md) | FAR | 2 | Habilita/deshabilita item. |
| `ENABLEOEMLAYER` | [USER](USER.md) | FAR | 35 | Funcion mediana (35 instr, 2 calls). |
| `ENABLESYSTEMTIMERS` | [SYSTEM](SYSTEM.md) | FAR | 17 | Llama a servicios DOS via INT 21h (17 instr). |
| `ENABLEWINDOW` | [USER](USER.md) | FAR | 53 | Habilita/deshabilita input en una ventana. |
| `ENDDIALOG` | [USER](USER.md) | FAR | 90 | Termina dialogo modal. |
| `ENDMENU` | [USER](USER.md) | FAR | 27 | Funcion sin clasificar definitiva (27 instr). |
| `ENDPAINT` | [USER](USER.md) | FAR | 47 | Termina secuencia de pintado. |
| `ENUMCALLBACK` | [GDI](GDI.md) | FAR | 116 | Enumerador: itera sobre callback. |
| `ENUMCHILDWINDOWS` | [USER](USER.md) | FAR | 124 | Enumerador: itera sobre childwindows. |
| `ENUMCLIPBOARDFORMATS` | [USER](USER.md) | FAR | 45 | Enumerador: itera sobre clipboardformats. |
| `ENUMDFONTS` | [CGA](CGA.md) | FAR | 14 | Enumerador: itera sobre dfonts. |
| `ENUMDFONTS` | [HERCULES](HERCULES.md) | FAR | 14 | Enumerador: itera sobre dfonts. |
| `ENUMFONTS` | [GDI](GDI.md) | FAR | 296 | Enumerador: itera sobre fonts. |
| `ENUMOBJ` | [CGA](CGA.md) | FAR | 64 | Enumerador: itera sobre obj. |
| `ENUMOBJ` | [HERCULES](HERCULES.md) | FAR | 64 | Enumerador: itera sobre obj. |
| `ENUMOBJECTS` | [GDI](GDI.md) | FAR | 51 | Enumerador: itera sobre objects. |
| `ENUMPROPS` | [USER](USER.md) | FAR | 79 | Enumerador: itera sobre props. |
| `ENUMWINDOWS` | [USER](USER.md) | FAR | 10 | Enumerador: itera sobre windows. |
| `EQUALRGN` | [GDI](GDI.md) | FAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). |
| `ESCAPE` | [GDI](GDI.md) | FAR | 24 | Funcion sin clasificar definitiva (24 instr). |
| `ESCAPECOMMFUNCTION` | [USER](USER.md) | FAR | 39 | Funcion mediana (39 instr, 1 calls). |
| `EXCLUDECLIPRECT` | [GDI](GDI.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `EXITKERNEL` | [KERNEL](KERNEL.md) | FAR | 41 | Llama a servicios DOS via INT 21h (41 instr). |
| `EXITWINDOWS` | [USER](USER.md) | FAR | 60 | Termina Windows y devuelve a DOS. |
| `EXTRACTPQ` | [GDI](GDI.md) | FAR | 18 | Funcion sin clasificar definitiva (18 instr). |
| `FATALEXIT` | [KERNEL](KERNEL.md) | FAR | 92 | Llama a servicios DOS via INT 21h (92 instr). |
| `FILLRECT` | [USER](USER.md) | FAR | 38 | Rellena rectangulo con brush dado. |
| `FILLRGN` | [GDI](GDI.md) | FAR | 38 | Dispatcher: tabla de decisiones cmp+jcc (38 instr). |
| `FILLWINDOW` | [USER](USER.md) | FAR | 24 | Funcion sin clasificar definitiva (24 instr). |
| `FINDRESOURCE` | [KERNEL](KERNEL.md) | FAR | 109 | Busca recurso por tipo+nombre. |
| `FINDWINDOW` | [USER](USER.md) | FAR | 47 | Busca ventana por clase y/o titulo. |
| `FLASHWINDOW` | [USER](USER.md) | FAR | 43 | Dispatcher: tabla de decisiones cmp+jcc (43 instr). |
| `FLOODFILL` | [GDI](GDI.md) | FAR | 123 | Rellena area con brush actual. |
| `FLUSHCOMM` | [USER](USER.md) | FAR | 18 | Funcion sin clasificar definitiva (18 instr). |
| `FORMAT` | [MSDOSD](MSDOSD.md) | FAR | 476 | Iterador con instrucciones de string (movsb/scasb/...) (476 instr). |
| `FRAMERECT` | [USER](USER.md) | FAR | 29 | Dibuja borde de rectangulo. |
| `FRAMERGN` | [GDI](GDI.md) | FAR | 548 | Dispatcher: tabla de decisiones cmp+jcc (548 instr). |
| `FREELIBRARY` | [KERNEL](KERNEL.md) | FAR | 72 | Decrementa refcount y descarga un modulo cuando llega a 0. |
| `FREEPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 31 | Libera un thunk creado por MAKEPROCINSTANCE. |
| `FREERESOURCE` | [KERNEL](KERNEL.md) | FAR | 61 | Libera recurso. |
| `GDIINITAPP` | [GDI](GDI.md) | FAR | 21 | Funcion sin clasificar definitiva (21 instr). |
| `GETACTIVEWINDOW` | [USER](USER.md) | FAR | 386 | Devuelve HWND activa. |
| `GETATOMHANDLE` | [KERNEL](KERNEL.md) | FAR | 17 | Getter: devuelve atomhandle. |
| `GETATOMNAME` | [KERNEL](KERNEL.md) | FAR | 62 | Getter: devuelve atomname. |
| `GETBITMAPBITS` | [GDI](GDI.md) | FAR | 2 | Getter: devuelve bitmapbits. |
| `GETBITMAPDIMENSION` | [GDI](GDI.md) | FAR | 19 | Getter: devuelve bitmapdimension. |
| `GETBKCOLOR` | [GDI](GDI.md) | FAR | 15 | Getter: devuelve bkcolor. |
| `GETCARETBLINKTIME` | [USER](USER.md) | FAR | 92 | Getter: devuelve caretblinktime. |
| `GETCARETPOS` | [USER](USER.md) | FAR | 8 | Getter: devuelve caretpos. |
| `GETCLASSNAME` | [USER](USER.md) | FAR | 75 | Getter: devuelve classname. |
| `GETCLIENTRECT` | [USER](USER.md) | FAR | 44 | Obtiene area cliente de ventana. |
| `GETCLIPBOARDDATA` | [USER](USER.md) | FAR | 43 | Getter: devuelve clipboarddata. |
| `GETCLIPBOARDFORMATNAME` | [USER](USER.md) | FAR | 23 | Getter: devuelve clipboardformatname. |
| `GETCLIPBOARDOWNER` | [USER](USER.md) | FAR | 15 | Getter: devuelve clipboardowner. |
| `GETCLIPBOARDVIEWER` | [USER](USER.md) | FAR | 115 | Getter: devuelve clipboardviewer. |
| `GETCLIPBOX` | [GDI](GDI.md) | FAR | 38 | Getter: devuelve clipbox. |
| `GETCODEHANDLE` | [KERNEL](KERNEL.md) | FAR | 46 | Devuelve handle del segmento de codigo de una funcion. |
| `GETCOMMERROR` | [USER](USER.md) | FAR | 61 | Getter: devuelve commerror. |
| `GETCOMMEVENTMASK` | [USER](USER.md) | FAR | 18 | Getter: devuelve commeventmask. |
| `GETCOMMSTATE` | [USER](USER.md) | FAR | 43 | Getter: devuelve commstate. |
| `GETCONTINUINGTEXTEXTENT` | [GDI](GDI.md) | FAR | 21 | Getter: devuelve continuingtextextent. |
| `GETCONTROLBRUSH` | [USER](USER.md) | FAR | 24 | Getter: devuelve controlbrush. |
| `GETCURRENTPDB` | [KERNEL](KERNEL.md) | FAR | 8 | Devuelve PDB (Program Data Block, DOS) actual. |
| `GETCURRENTTASK` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: devuelve currenttask. |
| `GETCURRENTTIME` | [USER](USER.md) | FAR | 43 | Getter: devuelve currenttime. |
| `GETCURSORPOS` | [USER](USER.md) | FAR | 9 | Getter: devuelve cursorpos. |
| `GETDC` | [USER](USER.md) | FAR | 8 | Obtiene Display Context de ventana. |
| `GETDCB` | [COMM](COMM.md) | FAR | 19 | Getter: devuelve dcb. |
| `GETDEVICECAPS` | [GDI](GDI.md) | FAR | 24 | Recupera capacidades del dispositivo. |
| `GETDLGITEM` | [USER](USER.md) | FAR | 32 | Devuelve HWND de control de dialogo. |
| `GETDLGITEMINT` | [USER](USER.md) | FAR | 93 | Lee entero desde control de dialogo. |
| `GETDLGITEMTEXT` | [USER](USER.md) | FAR | 32 | Lee texto de control de dialogo. |
| `GETDOUBLECLICKTIME` | [USER](USER.md) | FAR | 4 | Getter: devuelve doubleclicktime. |
| `GETENVIRONMENT` | [GDI](GDI.md) | FAR | 48 | Getter: devuelve environment. |
| `GETFOCUS` | [USER](USER.md) | FAR | 4 | Devuelve HWND con foco. |
| `GETINSTANCEDATA` | [KERNEL](KERNEL.md) | FAR | 31 | Devuelve un slot de datos por instancia de tarea. |
| `GETKEYSTATE` | [USER](USER.md) | FAR | 7 | Getter: devuelve keystate. |
| `GETLASTDISKCHANGE` | [KERNEL](KERNEL.md) | FAR | 3 | Detecta si el disco fue cambiado recientemente. |
| `GETLPERRMODE` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: devuelve lperrmode. |
| `GETMENU` | [USER](USER.md) | FAR | 10 | Devuelve handle de menu de ventana. |
| `GETMENUSTRING` | [USER](USER.md) | FAR | 56 | Getter: devuelve menustring. |
| `GETMESSAGE` | [USER](USER.md) | FAR | 6 | Saca mensaje de la cola (bloqueante). |
| `GETMESSAGE2` | [USER](USER.md) | FAR | 105 | Getter: devuelve message2. |
| `GETMESSAGEPOS` | [USER](USER.md) | FAR | 10 | Getter: devuelve messagepos. |
| `GETMESSAGETIME` | [USER](USER.md) | FAR | 10 | Getter: devuelve messagetime. |
| `GETMETAFILE` | [GDI](GDI.md) | FAR | 14 | Getter: devuelve metafile. |
| `GETMETAFILEBITS` | [GDI](GDI.md) | FAR | 48 | Getter: devuelve metafilebits. |
| `GETMODULEFILENAME` | [KERNEL](KERNEL.md) | FAR | 33 | Path completo del binario de un modulo. |
| `GETMODULEHANDLE` | [KERNEL](KERNEL.md) | FAR | 29 | Devuelve handle de un modulo cargado por nombre. |
| `GETMODULEUSAGE` | [KERNEL](KERNEL.md) | FAR | 16 | Devuelve el refcount actual del modulo. |
| `GETNEARESTCOLOR` | [GDI](GDI.md) | FAR | 31 | Getter: devuelve nearestcolor. |
| `GETPARENT` | [USER](USER.md) | FAR | 93 | Devuelve HWND del padre. |
| `GETPIXEL` | [GDI](GDI.md) | FAR | 65 | Lee color de pixel en (x,y). |
| `GETPROCADDRESS` | [KERNEL](KERNEL.md) | FAR | 40 | Resuelve nombre de export a direccion FAR PTR. |
| `GETPROFILEINT` | [KERNEL](KERNEL.md) | FAR | 43 | Getter: devuelve profileint. |
| `GETPROFILESTRING` | [KERNEL](KERNEL.md) | FAR | 72 | Getter: devuelve profilestring. |
| `GETPROP` | [USER](USER.md) | FAR | 30 | Getter: devuelve prop. |
| `GETRGNBOX` | [GDI](GDI.md) | FAR | 32 | Getter: devuelve rgnbox. |
| `GETSCROLLPOS` | [USER](USER.md) | FAR | 46 | Getter: devuelve scrollpos. |
| `GETSCROLLRANGE` | [USER](USER.md) | FAR | 56 | Getter: devuelve scrollrange. |
| `GETSTOCKOBJECT` | [GDI](GDI.md) | FAR | 9 | Devuelve objeto stock del sistema (BLACK_PEN, WHITE_BRUSH, etc). |
| `GETSUBMENU` | [USER](USER.md) | FAR | 141 | Getter: devuelve submenu. |
| `GETSYSCOLOR` | [USER](USER.md) | FAR | 8 | Getter: devuelve syscolor. |
| `GETSYSMODALWINDOW` | [USER](USER.md) | FAR | 5 | Getter: devuelve sysmodalwindow. |
| `GETSYSTEMMENU` | [USER](USER.md) | FAR | 63 | Getter: devuelve systemmenu. |
| `GETSYSTEMMETRICS` | [USER](USER.md) | FAR | 9 | Getter: devuelve systemmetrics. |
| `GETTASKQUEUE` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: devuelve taskqueue. |
| `GETTEMPDRIVE` | [KERNEL](KERNEL.md) | FAR | 31 | Devuelve unidad temporal recomendada (A-Z). |
| `GETTEMPFILENAME` | [KERNEL](KERNEL.md) | FAR | 124 | Construye un nombre unico de fichero temporal. |
| `GETTEXTCHARACTEREXTRA` | [GDI](GDI.md) | FAR | 24 | Getter: devuelve textcharacterextra. |
| `GETTEXTEXTENT` | [GDI](GDI.md) | FAR | 21 | Calcula tamano (cx,cy) que ocupa un string. |
| `GETTEXTFACE` | [GDI](GDI.md) | FAR | 57 | Getter: devuelve textface. |
| `GETTEXTMETRICS` | [GDI](GDI.md) | FAR | 244 | Getter: devuelve textmetrics. |
| `GETTHRESHOLDEVENT` | [SOUND](SOUND.md) | FAR | 23 | Getter: devuelve thresholdevent. |
| `GETTHRESHOLDSTATUS` | [SOUND](SOUND.md) | FAR | 24 | Getter: devuelve thresholdstatus. |
| `GETTICKCOUNT` | [USER](USER.md) | FAR | 3 | Getter: devuelve tickcount. |
| `GETTIMERRESOLUTION` | [USER](USER.md) | FAR | 6 | Getter: devuelve timerresolution. |
| `GETUPDATERECT` | [USER](USER.md) | FAR | 91 | Getter: devuelve updaterect. |
| `GETVERSION` | [KERNEL](KERNEL.md) | FAR | 2 | Devuelve la version de Windows (low=major, high=minor) en AX. |
| `GETWC2` | [USER](USER.md) | FAR | 25 | Getter: devuelve wc2. |
| `GETWINDOWDC` | [USER](USER.md) | FAR | 7 | Getter: devuelve windowdc. |
| `GETWINDOWLONG` | [USER](USER.md) | FAR | 2 | Getter: devuelve windowlong. |
| `GETWINDOWRECT` | [USER](USER.md) | FAR | 17 | Obtiene posicion absoluta de ventana. |
| `GETWINDOWTEXT` | [USER](USER.md) | FAR | 16 | Lee titulo (o texto) de ventana. |
| `GETWINDOWTEXTLENGTH` | [USER](USER.md) | FAR | 17 | Getter: devuelve windowtextlength. |
| `GLOBALALLOC` | [KERNEL](KERNEL.md) | FAR | 22 | Reserva un bloque global del heap del sistema. Devuelve HANDLE. |
| `GLOBALCOMPACT` | [KERNEL](KERNEL.md) | FAR | 28 | Compacta el heap global moviendo bloques. |
| `GLOBALFLAGS` | [KERNEL](KERNEL.md) | FAR | 7 | Devuelve flags y refcount de un bloque global. |
| `GLOBALFREE` | [KERNEL](KERNEL.md) | FAR | 19 | Libera un bloque global identificado por HANDLE. |
| `GLOBALFREEALL` | [KERNEL](KERNEL.md) | FAR | 36 | Iterador con bucle (36 instr). |
| `GLOBALHANDLE` | [KERNEL](KERNEL.md) | FAR | 2 | Devuelve HANDLE desde un puntero global. |
| `GLOBALLOCK` | [KERNEL](KERNEL.md) | FAR | 6 | Bloquea un bloque global y devuelve puntero FAR. |
| `GLOBALMASTERHANDLE` | [KERNEL](KERNEL.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `GLOBALREALLOC` | [KERNEL](KERNEL.md) | FAR | 22 | Cambia el tamano de un bloque global. |
| `GLOBALSIZE` | [KERNEL](KERNEL.md) | FAR | 12 | Devuelve el tamano de un bloque global. |
| `GLOBALUNLOCK` | [KERNEL](KERNEL.md) | FAR | 5 | Desbloquea un bloque global previamente bloqueado. |
| `GRAYSTRING` | [USER](USER.md) | FAR | 138 | Dispatcher: tabla de decisiones cmp+jcc (138 instr). |
| `GSV` | [GDI](GDI.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `HIDECARET` | [USER](USER.md) | FAR | 21 | Funcion sin clasificar definitiva (21 instr). |
| `HILITEMENUITEM` | [USER](USER.md) | FAR | 87 | Dispatcher: tabla de decisiones cmp+jcc (87 instr). |
| `ICONNAMEWNDPROC` | [USER](USER.md) | FAR | 83 | Funcion compleja: 83 instrucciones, 3 llamadas, 2 branches. |
| `ICONSIZE` | [USER](USER.md) | FAR | 11 | Funcion sin clasificar definitiva (11 instr). |
| `ICONWNDPROC` | [USER](USER.md) | FAR | 310 | Dispatcher: tabla de decisiones cmp+jcc (310 instr). |
| `INFLATERECT` | [USER](USER.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `INICOM` | [COMM](COMM.md) | FAR | 15 | Wrapper que delega en sub_01D1. |
| `INITAPP` | [USER](USER.md) | FAR | 90 | Inicializa app. |
| `INITATOMTABLE` | [KERNEL](KERNEL.md) | FAR | 32 | Inicializa atomtable. |
| `INITTASK` | [KERNEL](KERNEL.md) | FAR | 83 | Inicializa estructura de tarea Windows. |
| `INQUIRE` | [CGA](CGA.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `INQUIRE` | [HERCULES](HERCULES.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `INQUIRE` | [MOUSE](MOUSE.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `INQUIRELONGINTS` | [SYSTEM](SYSTEM.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `INQUIREVISRGN` | [GDI](GDI.md) | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. |
| `INSENDMESSAGE` | [USER](USER.md) | FAR | 65 | Dispatcher: tabla de decisiones cmp+jcc (65 instr). |
| `INSERTPQ` | [GDI](GDI.md) | FAR | 123 | Dispatcher: tabla de decisiones cmp+jcc (123 instr). |
| `INTERNALCREATEDC` | [GDI](GDI.md) | FAR | 502 | Iterador con instrucciones de string (movsb/scasb/...) (502 instr). |
| `INTERSECTCLIPRECT` | [GDI](GDI.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `INTERSECTRECT` | [USER](USER.md) | FAR | 58 | Iterador con instrucciones de string (movsb/scasb/...) (58 instr). |
| `INTERSECTVISRECT` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `INVALIDATERECT` | [USER](USER.md) | FAR | 8 | Marca un rectangulo como necesitado de repaint. |
| `INVALIDATERGN` | [USER](USER.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `INVERTRECT` | [USER](USER.md) | FAR | 79 | Invierte colores en rectangulo. |
| `INVERTRGN` | [GDI](GDI.md) | FAR | 36 | Funcion mediana (36 instr, 1 calls). |
| `ISCHILD` | [USER](USER.md) | FAR | 33 | Predicado: verifica si child. |
| `ISCLIPBOARDFORMATAVAILABLE` | [USER](USER.md) | FAR | 23 | Predicado: verifica si clipboardformatavailable. |
| `ISDIALOGMESSAGE` | [USER](USER.md) | FAR | 327 | Procesa mensajes de teclado en dialogo modeless. |
| `ISDLGBUTTONCHECKED` | [USER](USER.md) | FAR | 35 | Predicado: verifica si dlgbuttonchecked. |
| `ISICONIC` | [USER](USER.md) | FAR | 2 | Verifica si la ventana esta minimizada. |
| `ISRECTEMPTY` | [USER](USER.md) | FAR | 24 | Predicado: verifica si rectempty. |
| `ISSCREENGRAB` | [KERNEL](KERNEL.md) | FAR | 2 | Predicado: verifica si screengrab. |
| `ISTWOBYTECHARPREFIX` | [USER](USER.md) | FAR | 29 | Predicado: verifica si twobytecharprefix. |
| `ISWINDOW` | [USER](USER.md) | FAR | 16 | Verifica si HWND es valido. |
| `ISWINDOWENABLED` | [USER](USER.md) | FAR | 18 | Predicado: verifica si windowenabled. |
| `ISWINDOWVISIBLE` | [USER](USER.md) | FAR | 22 | Verifica si la ventana es visible. |
| `KILLSYSTEMTIMER` | [SYSTEM](SYSTEM.md) | FAR | 34 | Iterador con instrucciones de string (movsb/scasb/...) (34 instr). |
| `KILLSYSTEMTIMER` | [USER](USER.md) | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). |
| `KILLTIMER` | [USER](USER.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `KILLTIMER2` | [USER](USER.md) | FAR | 123 | Dispatcher: tabla de decisiones cmp+jcc (123 instr). |
| `LINEDDA` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `LINETO` | [GDI](GDI.md) | FAR | 54 | Dibuja linea desde cursor a (x,y). |
| `LOADACCELERATORS` | [USER](USER.md) | FAR | 28 | Carga tabla de aceleradores. |
| `LOADBITMAP` | [USER](USER.md) | FAR | 189 | Carga BITMAP desde recurso. |
| `LOADCURSOR` | [USER](USER.md) | FAR | 20 | Carga CURSOR desde recurso. |
| `LOADICON` | [USER](USER.md) | FAR | 20 | Carga ICON desde recurso. |
| `LOADLIBRARY` | [KERNEL](KERNEL.md) | FAR | 8 | Carga una DLL/EXE y devuelve handle. |
| `LOADMENU` | [USER](USER.md) | FAR | 268 | Carga MENU desde recurso. |
| `LOADMODULE` | [KERNEL](KERNEL.md) | FAR | 381 | Carga un modulo NE en memoria, ejecutando su startup. |
| `LOADRESOURCE` | [KERNEL](KERNEL.md) | FAR | 140 | Carga recurso generico. |
| `LOADSTRING` | [USER](USER.md) | FAR | 80 | Carga STRING desde recurso. |
| `LOCALALLOC` | [KERNEL](KERNEL.md) | FAR | 44 | Reserva un bloque en el heap local (DS). |
| `LOCALCOMPACT` | [KERNEL](KERNEL.md) | FAR | 23 | Compacta el heap local. |
| `LOCALFLAGS` | [KERNEL](KERNEL.md) | FAR | 11 | Flags de un bloque local. |
| `LOCALFREE` | [KERNEL](KERNEL.md) | FAR | 21 | Libera un bloque local. |
| `LOCALHANDLE` | [KERNEL](KERNEL.md) | FAR | 11 | HANDLE de un puntero local. |
| `LOCALINIT` | [KERNEL](KERNEL.md) | FAR | 74 | Inicializa un heap local en un segmento. |
| `LOCALLOCK` | [KERNEL](KERNEL.md) | FAR | 14 | Bloquea un bloque local y devuelve puntero NEAR. |
| `LOCALNOTIFY` | [KERNEL](KERNEL.md) | FAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. |
| `LOCALREALLOC` | [KERNEL](KERNEL.md) | FAR | 143 | Cambia el tamano de un bloque local. |
| `LOCALSIZE` | [KERNEL](KERNEL.md) | FAR | 10 | Tamano de un bloque local. |
| `LOCALUNLOCK` | [KERNEL](KERNEL.md) | FAR | 15 | Desbloquea un bloque local. |
| `LOCKCURRENTTASK` | [KERNEL](KERNEL.md) | FAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. |
| `LOCKRESOURCE` | [KERNEL](KERNEL.md) | FAR | 63 | Iterador con bucle (63 instr). |
| `LOCKSEGMENT` | [KERNEL](KERNEL.md) | FAR | 4 | Funcion sin clasificar definitiva (4 instr). |
| `LOCKUNLOCK` | [GDI](GDI.md) | FAR | 122 | Dispatcher: tabla de decisiones cmp+jcc (122 instr). |
| `LPTODP` | [GDI](GDI.md) | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). |
| `LSTRCAT` | [KERNEL](KERNEL.md) | FAR | 6 | Concatena dos cadenas FAR PTR. |
| `LSTRCMP` | [KERNEL](KERNEL.md) | FAR | 34 | Compara dos cadenas FAR PTR (signed). |
| `LSTRCPY` | [KERNEL](KERNEL.md) | FAR | 9 | Copia cadena ASCIIZ FAR PTR -> FAR PTR. |
| `LSTRLEN` | [KERNEL](KERNEL.md) | FAR | 13 | Longitud de cadena ASCIIZ FAR. |
| `MAKEPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 70 | Crea un thunk que ata DS de una instancia a un proc. |
| `MAPDIALOGRECT` | [USER](USER.md) | FAR | 50 | Funcion mediana (50 instr, 0 calls). |
| `MENUITEMSTATE` | [USER](USER.md) | FAR | 58 | Funcion mediana (58 instr, 3 calls). |
| `MENUWNDPROC` | [USER](USER.md) | FAR | 67 | Funcion mediana (67 instr, 2 calls). |
| `MESSAGEBEEP` | [USER](USER.md) | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). |
| `MESSAGEBOX` | [USER](USER.md) | FAR | 608 | Muestra dialogo de mensaje predefinido. |
| `MESSAGEBOXWNDPROC` | [USER](USER.md) | FAR | 669 | Dispatcher: tabla de decisiones cmp+jcc (669 instr). |
| `MINPQ` | [GDI](GDI.md) | FAR | 18 | Funcion sin clasificar definitiva (18 instr). |
| `MOVECURSOR` | [CGA](CGA.md) | FAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. |
| `MOVECURSOR` | [HERCULES](HERCULES.md) | FAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. |
| `MOVETO` | [GDI](GDI.md) | FAR | 29 | Mueve cursor de dibujo a (x,y). |
| `MOVEWINDOW` | [USER](USER.md) | FAR | 49 | Mueve y redimensiona una ventana. |
| `MULDIV` | [GDI](GDI.md) | FAR | 50 | Funcion mediana (50 instr, 0 calls). |
| `MYOPENCOMM` | [USER](USER.md) | FAR | 110 | Funcion compleja: 110 instrucciones, 2 llamadas, 9 branches. |
| `MYOPENSOUND` | [SOUND](SOUND.md) | FAR | 130 | Iterador con bucle (130 instr). |
| `NETBIOSCALL` | [KERNEL](KERNEL.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `NOHOOKDOSCALL` | [KERNEL](KERNEL.md) | FAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. |
| `OFFSETCLIPRGN` | [GDI](GDI.md) | FAR | 54 | Funcion mediana (54 instr, 2 calls). |
| `OFFSETORG` | [GDI](GDI.md) | FAR | 29 | Funcion sin clasificar definitiva (29 instr). |
| `OFFSETRECT` | [USER](USER.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `OFFSETRGN` | [GDI](GDI.md) | FAR | 26 | Funcion sin clasificar definitiva (26 instr). |
| `OFFSETVIEWPORTORG` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `OFFSETVISRGN` | [GDI](GDI.md) | FAR | 32 | Funcion mediana (32 instr, 3 calls). |
| `OFFSETWINDOWORG` | [GDI](GDI.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `OPENCLIPBOARD` | [USER](USER.md) | FAR | 37 | Funcion mediana (37 instr, 1 calls). |
| `OPENFILE` | [KERNEL](KERNEL.md) | FAR | 242 | Abre un fichero. Equivalente a INT 21h fn 3Dh con paths Windows. |
| `OPENJOB` | [GDI](GDI.md) | FAR | 148 | Dispatcher: tabla de decisiones cmp+jcc (148 instr). |
| `OPENPATHNAME` | [KERNEL](KERNEL.md) | FAR | 35 | Abre fichero por path absoluto. |
| `OUTPUT` | [CGA](CGA.md) | FAR | 206 | Iterador con instrucciones de string (movsb/scasb/...) (206 instr). |
| `OUTPUT` | [HERCULES](HERCULES.md) | FAR | 206 | Iterador con instrucciones de string (movsb/scasb/...) (206 instr). |
| `PAINTRECT` | [USER](USER.md) | FAR | 25 | Funcion sin clasificar definitiva (25 instr). |
| `PAINTRGN` | [GDI](GDI.md) | FAR | 37 | Funcion mediana (37 instr, 1 calls). |
| `PATBLT` | [GDI](GDI.md) | FAR | 38 | Pinta rectangulo con brush. |
| `PEEKMESSAGE` | [USER](USER.md) | FAR | 2 | Saca/inspecciona mensaje sin bloquear. |
| `PIE` | [GDI](GDI.md) | FAR | 41 | Dibuja sector circular. |
| `PIXEL` | [CGA](CGA.md) | FAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). |
| `PIXEL` | [HERCULES](HERCULES.md) | FAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). |
| `PIXTOLINE` | [GDI](GDI.md) | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). |
| `PLAYMETAFILE` | [GDI](GDI.md) | FAR | 134 | Dispatcher: tabla de decisiones cmp+jcc (134 instr). |
| `POLYGON` | [GDI](GDI.md) | FAR | 45 | Dibuja poligono. |
| `POLYLINE` | [GDI](GDI.md) | FAR | 76 | Dibuja secuencia de lineas. |
| `POSTAPPMESSAGE` | [USER](USER.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `POSTEVENT` | [KERNEL](KERNEL.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `POSTMESSAGE` | [USER](USER.md) | FAR | 5 | Encola mensaje asincrono en cola de la ventana. |
| `POSTMESSAGE2` | [USER](USER.md) | FAR | 44 | Funcion mediana (44 instr, 3 calls). |
| `POSTQUITMESSAGE` | [USER](USER.md) | FAR | 13 | Funcion sin clasificar definitiva (13 instr). |
| `POSTSYSERROR` | [USER](USER.md) | FAR | 14 | Funcion sin clasificar definitiva (14 instr). |
| `PTINRECT` | [USER](USER.md) | FAR | 28 | Dispatcher: tabla de decisiones cmp+jcc (28 instr). |
| `PTINREGION` | [GDI](GDI.md) | FAR | 34 | Funcion mediana (34 instr, 0 calls). |
| `PTVISIBLE` | [GDI](GDI.md) | FAR | 42 | Funcion mediana (42 instr, 2 calls). |
| `QUERYABORT` | [GDI](GDI.md) | FAR | 25 | Funcion sin clasificar definitiva (25 instr). |
| `RCOS` | [GDI](GDI.md) | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. |
| `READCOMM` | [USER](USER.md) | FAR | 62 | Dispatcher: tabla de decisiones cmp+jcc (62 instr). |
| `REALIZEOBJECT` | [CGA](CGA.md) | FAR | 34 | Dispatcher: tabla de decisiones cmp+jcc (34 instr). |
| `REALIZEOBJECT` | [HERCULES](HERCULES.md) | FAR | 34 | Dispatcher: tabla de decisiones cmp+jcc (34 instr). |
| `RECCOM` | [COMM](COMM.md) | FAR | 21 | Funcion sin clasificar definitiva (21 instr). |
| `RECTANGLE` | [GDI](GDI.md) | FAR | 528 | Dibuja rectangulo con pen y brush actuales. |
| `RECTSTUFF` | [GDI](GDI.md) | FAR | 93 | Funcion compleja: 93 instrucciones, 6 llamadas, 8 branches. |
| `RECTVISIBLE` | [GDI](GDI.md) | FAR | 99 | Iterador con instrucciones de string (movsb/scasb/...) (99 instr). |
| `REGISTERCLASS` | [USER](USER.md) | FAR | 89 | Registra una clase de ventana. |
| `REGISTERCLIPBOARDFORMAT` | [USER](USER.md) | FAR | 17 | Registra isterclipboardformat. |
| `REGISTERWINDOWMESSAGE` | [USER](USER.md) | FAR | 6 | Registra isterwindowmessage. |
| `RELEASECAPTURE` | [USER](USER.md) | FAR | 7 | Funcion sin clasificar definitiva (7 instr). |
| `RELEASEDC` | [USER](USER.md) | FAR | 26 | Libera DC obtenido por GetDC. |
| `REMOVEFONTRESOURCE` | [GDI](GDI.md) | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). |
| `REMOVEPROP` | [USER](USER.md) | FAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). |
| `REPLYMESSAGE` | [USER](USER.md) | FAR | 33 | Responde a un SendMessage cross-task. |
| `RESTOREDC` | [GDI](GDI.md) | FAR | 69 | Restaura estado guardado del DC. |
| `RESTOREVISRGN` | [GDI](GDI.md) | FAR | 32 | Funcion mediana (32 instr, 3 calls). |
| `RESURRECTION` | [GDI](GDI.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `ROUNDRECT` | [GDI](GDI.md) | FAR | 40 | Funcion mediana (40 instr, 0 calls). |
| `RSIN` | [GDI](GDI.md) | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. |
| `SAVEDC` | [GDI](GDI.md) | FAR | 78 | Guarda estado del DC. |
| `SAVEVISRGN` | [GDI](GDI.md) | FAR | 30 | Funcion sin clasificar definitiva (30 instr). |
| `SBWNDPROC` | [USER](USER.md) | FAR | 409 | Dispatcher: tabla de decisiones cmp+jcc (409 instr). |
| `SCALEEXT` | [GDI](GDI.md) | FAR | 55 | Funcion mediana (55 instr, 1 calls). |
| `SCALEVIEWPORTEXT` | [GDI](GDI.md) | FAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. |
| `SCALEWINDOWEXT` | [GDI](GDI.md) | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). |
| `SCANLR` | [CGA](CGA.md) | FAR | 114 | Iterador con instrucciones de string (movsb/scasb/...) (114 instr). |
| `SCANLR` | [GDI](GDI.md) | FAR | 56 | Iterador con instrucciones de string (movsb/scasb/...) (56 instr). |
| `SCANLR` | [HERCULES](HERCULES.md) | FAR | 114 | Iterador con instrucciones de string (movsb/scasb/...) (114 instr). |
| `SCREENTOCLIENT` | [USER](USER.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `SCROLLWINDOW` | [USER](USER.md) | FAR | 532 | Dispatcher: tabla de decisiones cmp+jcc (532 instr). |
| `SELECTCLIPRGN` | [GDI](GDI.md) | FAR | 49 | Funcion mediana (49 instr, 5 calls). |
| `SELECTOBJECT` | [GDI](GDI.md) | FAR | 209 | Cambia objeto activo en DC (pen, brush, font, bitmap). |
| `SELECTVISRGN` | [GDI](GDI.md) | FAR | 31 | Funcion mediana (31 instr, 3 calls). |
| `SENDDLGITEMMESSAGE` | [USER](USER.md) | FAR | 34 | Funcion mediana (34 instr, 0 calls). |
| `SENDMESSAGE` | [USER](USER.md) | FAR | 35 | Envia mensaje sincrono a window proc. |
| `SENDMESSAGE2` | [USER](USER.md) | FAR | 60 | Funcion mediana (60 instr, 3 calls). |
| `SETACTIVEWINDOW` | [USER](USER.md) | FAR | 13 | Activa una ventana (la trae al foreground). |
| `SETBITMAPDIMENSION` | [GDI](GDI.md) | FAR | 21 | Setter: cambia bitmapdimension. |
| `SETBKCOLOR` | [GDI](GDI.md) | FAR | 47 | Setter: cambia bkcolor. |
| `SETBKMODE` | [GDI](GDI.md) | FAR | 3 | Setter: cambia bkmode. |
| `SETBRUSHORG` | [GDI](GDI.md) | FAR | 21 | Setter: cambia brushorg. |
| `SETCAPTURE` | [USER](USER.md) | FAR | 10 | Setter: cambia capture. |
| `SETCARETBLINKTIME` | [USER](USER.md) | FAR | 25 | Setter: cambia caretblinktime. |
| `SETCARETPOS` | [USER](USER.md) | FAR | 53 | Setter: cambia caretpos. |
| `SETCLIPBOARDDATA` | [USER](USER.md) | FAR | 93 | Setter: cambia clipboarddata. |
| `SETCLIPBOARDVIEWER` | [USER](USER.md) | FAR | 28 | Setter: cambia clipboardviewer. |
| `SETCOM` | [COMM](COMM.md) | FAR | 15 | Setter: cambia com. |
| `SETCOMMBREAK` | [USER](USER.md) | FAR | 17 | Setter: cambia commbreak. |
| `SETCOMMEVENTMASK` | [USER](USER.md) | FAR | 18 | Setter: cambia commeventmask. |
| `SETCOMMSTATE` | [USER](USER.md) | FAR | 27 | Setter: cambia commstate. |
| `SETCONVERTWINDOWHEIGHT` | [USER](USER.md) | FAR | 30 | Setter: cambia convertwindowheight. |
| `SETCURSOR` | [CGA](CGA.md) | FAR | 43 | Setter: cambia cursor. |
| `SETCURSOR` | [HERCULES](HERCULES.md) | FAR | 43 | Setter: cambia cursor. |
| `SETCURSOR` | [USER](USER.md) | FAR | 6 | Setter: cambia cursor. |
| `SETCURSORPOS` | [USER](USER.md) | FAR | 14 | Setter: cambia cursorpos. |
| `SETDCORG` | [GDI](GDI.md) | FAR | 61 | Setter: cambia dcorg. |
| `SETDLGITEMINT` | [USER](USER.md) | FAR | 78 | Escribe entero en control de dialogo. |
| `SETDLGITEMTEXT` | [USER](USER.md) | FAR | 29 | Cambia texto de control de dialogo. |
| `SETDOUBLECLICKTIME` | [USER](USER.md) | FAR | 12 | Setter: cambia doubleclicktime. |
| `SETENVIRONMENT` | [GDI](GDI.md) | FAR | 81 | Setter: cambia environment. |
| `SETFOCUS` | [USER](USER.md) | FAR | 79 | Cambia el foco de teclado. |
| `SETMAPMODE` | [GDI](GDI.md) | FAR | 68 | Setter: cambia mapmode. |
| `SETMAPPERFLAGS` | [GDI](GDI.md) | FAR | 15 | Setter: cambia mapperflags. |
| `SETMENU` | [USER](USER.md) | FAR | 31 | Asigna menu a ventana. |
| `SETMETAFILEBITS` | [GDI](GDI.md) | FAR | 24 | Setter: cambia metafilebits. |
| `SETPIXEL` | [GDI](GDI.md) | FAR | 78 | Pone pixel de color en (x,y). |
| `SETPOLYFILLMODE` | [GDI](GDI.md) | FAR | 3 | Setter: cambia polyfillmode. |
| `SETPRIORITY` | [KERNEL](KERNEL.md) | FAR | 21 | Setter: cambia priority. |
| `SETPROP` | [USER](USER.md) | FAR | 59 | Setter: cambia prop. |
| `SETQUE` | [COMM](COMM.md) | FAR | 16 | Setter: cambia que. |
| `SETRECT` | [USER](USER.md) | FAR | 25 | Setter: cambia rect. |
| `SETRECTEMPTY` | [USER](USER.md) | FAR | 20 | Setter: cambia rectempty. |
| `SETRELABS` | [GDI](GDI.md) | FAR | 3 | Setter: cambia relabs. |
| `SETRESOURCEHANDLER` | [KERNEL](KERNEL.md) | FAR | 87 | Setter: cambia resourcehandler. |
| `SETROP2` | [GDI](GDI.md) | FAR | 3 | Setter: cambia rop2. |
| `SETSCROLLPOS` | [USER](USER.md) | FAR | 43 | Setter: cambia scrollpos. |
| `SETSCROLLRANGE` | [USER](USER.md) | FAR | 197 | Setter: cambia scrollrange. |
| `SETSOUNDNOISE` | [SOUND](SOUND.md) | FAR | 27 | Setter: cambia soundnoise. |
| `SETSTRETCHBLTMODE` | [GDI](GDI.md) | FAR | 3 | Setter: cambia stretchbltmode. |
| `SETSWAPHOOK` | [KERNEL](KERNEL.md) | FAR | 6 | Setter: cambia swaphook. |
| `SETSYSCOLORS` | [USER](USER.md) | FAR | 111 | Setter: cambia syscolors. |
| `SETSYSMODALWINDOW` | [USER](USER.md) | FAR | 10 | Setter: cambia sysmodalwindow. |
| `SETSYSTEMTIMER` | [USER](USER.md) | FAR | 1 | Setter: cambia systemtimer. |
| `SETTASKQUEUE` | [KERNEL](KERNEL.md) | FAR | 4 | Setter: cambia taskqueue. |
| `SETTASKSIGNALPROC` | [KERNEL](KERNEL.md) | FAR | 2 | Setter: cambia tasksignalproc. |
| `SETTEXTCHARACTEREXTRA` | [GDI](GDI.md) | FAR | 49 | Setter: cambia textcharacterextra. |
| `SETTEXTCOLOR` | [GDI](GDI.md) | FAR | 34 | Setter: cambia textcolor. |
| `SETTEXTJUSTIFICATION` | [GDI](GDI.md) | FAR | 61 | Setter: cambia textjustification. |
| `SETTIMER` | [USER](USER.md) | FAR | 2 | Setter: cambia timer. |
| `SETTIMER2` | [USER](USER.md) | FAR | 65 | Setter: cambia timer2. |
| `SETVIEWPORTEXT` | [GDI](GDI.md) | FAR | 2 | Setter: cambia viewportext. |
| `SETVIEWPORTORG` | [GDI](GDI.md) | FAR | 15 | Setter: cambia viewportorg. |
| `SETVOICEACCENT` | [SOUND](SOUND.md) | FAR | 58 | Setter: cambia voiceaccent. |
| `SETVOICEENVELOPE` | [SOUND](SOUND.md) | FAR | 32 | Setter: cambia voiceenvelope. |
| `SETVOICENOTE` | [SOUND](SOUND.md) | FAR | 122 | Setter: cambia voicenote. |
| `SETVOICEQUEUESIZE` | [SOUND](SOUND.md) | FAR | 64 | Setter: cambia voicequeuesize. |
| `SETVOICESOUND` | [SOUND](SOUND.md) | FAR | 37 | Setter: cambia voicesound. |
| `SETVOICETHRESHOLD` | [SOUND](SOUND.md) | FAR | 28 | Setter: cambia voicethreshold. |
| `SETWC2` | [USER](USER.md) | FAR | 30 | Setter: cambia wc2. |
| `SETWINDOWEXT` | [GDI](GDI.md) | FAR | 3 | Setter: cambia windowext. |
| `SETWINDOWORG` | [GDI](GDI.md) | FAR | 15 | Setter: cambia windoworg. |
| `SETWINDOWSHOOK` | [USER](USER.md) | FAR | 77 | Setter: cambia windowshook. |
| `SETWINDOWTEXT` | [USER](USER.md) | FAR | 19 | Cambia titulo (o texto) de ventana. |
| `SETWINDOWWORD` | [USER](USER.md) | FAR | 2 | Setter: cambia windowword. |
| `SETWINVIEWEXT` | [GDI](GDI.md) | FAR | 60 | Setter: cambia winviewext. |
| `SHOWCARET` | [USER](USER.md) | FAR | 32 | Funcion mediana (32 instr, 0 calls). |
| `SHOWCONVERTWINDOW` | [USER](USER.md) | FAR | 24 | Funcion sin clasificar definitiva (24 instr). |
| `SHOWCURSOR` | [USER](USER.md) | FAR | 34 | Funcion mediana (34 instr, 3 calls). |
| `SHOWWINDOW` | [USER](USER.md) | FAR | 323 | Muestra/oculta/minimiza/maximiza ventana. |
| `SIGNALPROC` | [USER](USER.md) | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). |
| `SIZEOFRESOURCE` | [KERNEL](KERNEL.md) | FAR | 21 | Iterador con bucle (21 instr). |
| `SIZEPQ` | [GDI](GDI.md) | FAR | 57 | Funcion mediana (57 instr, 3 calls). |
| `SNDCOM` | [COMM](COMM.md) | FAR | 16 | Funcion sin clasificar definitiva (16 instr). |
| `STACOM` | [COMM](COMM.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `STARTSOUND` | [SOUND](SOUND.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `STARTSPOOLPAGE` | [GDI](GDI.md) | FAR | 181 | Dispatcher: tabla de decisiones cmp+jcc (181 instr). |
| `STATICWNDPROC` | [USER](USER.md) | FAR | 326 | Dispatcher: tabla de decisiones cmp+jcc (326 instr). |
| `STOPSOUND` | [SOUND](SOUND.md) | FAR | 22 | Funcion sin clasificar definitiva (22 instr). |
| `STRBLT` | [CGA](CGA.md) | FAR | 527 | Iterador con instrucciones de string (movsb/scasb/...) (527 instr). |
| `STRBLT` | [HERCULES](HERCULES.md) | FAR | 530 | Iterador con instrucciones de string (movsb/scasb/...) (530 instr). |
| `STRETCHBLT` | [GDI](GDI.md) | FAR | 143 | Copia con escalado. |
| `SWAPMOUSEBUTTON` | [USER](USER.md) | FAR | 18 | Llama a servicios DOS via INT 21h (18 instr). |
| `SYNCALLVOICES` | [SOUND](SOUND.md) | FAR | 32 | Funcion mediana (32 instr, 2 calls). |
| `SYS` | [MSDOSD](MSDOSD.md) | FAR | 328 | Dispatcher: tabla de decisiones cmp+jcc (328 instr). |
| `SYSHASKANJI` | [USER](USER.md) | FAR | 21 | Funcion sin clasificar definitiva (21 instr). |
| `TEXTOUT` | [GDI](GDI.md) | FAR | 168 | Dibuja string en (x,y) con font del DC. |
| `THROW` | [KERNEL](KERNEL.md) | FAR | 41 | Funcion mediana (41 instr, 1 calls). |
| `TRANSLATEACCELERATOR` | [USER](USER.md) | FAR | 260 | Dispatcher: tabla de decisiones cmp+jcc (260 instr). |
| `TRANSLATEMESSAGE` | [USER](USER.md) | FAR | 82 | Traduce mensajes de teclado a WM_CHAR. |
| `TRANSMITCOMMCHAR` | [USER](USER.md) | FAR | 20 | Funcion sin clasificar definitiva (20 instr). |
| `TRMCOM` | [COMM](COMM.md) | FAR | 15 | Wrapper que delega en sub_032D. |
| `UNGETCOMMCHAR` | [USER](USER.md) | FAR | 38 | Funcion mediana (38 instr, 0 calls). |
| `UNIONRECT` | [USER](USER.md) | FAR | 85 | Iterador con instrucciones de string (movsb/scasb/...) (85 instr). |
| `UNLOCKDC` | [GDI](GDI.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `UNLOCKSEGMENT` | [KERNEL](KERNEL.md) | FAR | 4 | Funcion sin clasificar definitiva (4 instr). |
| `UNREALIZEOBJECT` | [GDI](GDI.md) | FAR | 41 | Funcion mediana (41 instr, 1 calls). |
| `UPDATEWINDOW` | [USER](USER.md) | FAR | 86 | Fuerza repaint de region invalida. |
| `VALIDATECODESEGMENTS` | [KERNEL](KERNEL.md) | FAR | 1 | Verifica integridad de segmentos de codigo. |
| `VALIDATERECT` | [USER](USER.md) | FAR | 7 | Marca un rectangulo como pintado. |
| `VALIDATERGN` | [USER](USER.md) | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). |
| `WAITEVENT` | [KERNEL](KERNEL.md) | FAR | 16 | Interrupt Service Routine (16 instrucciones, posible manejador de INT). |
| `WAITMESSAGE` | [USER](USER.md) | FAR | 23 | Funcion sin clasificar definitiva (23 instr). |
| `WINDOWFROMPOINT` | [USER](USER.md) | FAR | 8 | Funcion sin clasificar definitiva (8 instr). |
| `WORDSET` | [GDI](GDI.md) | FAR | 32 | Funcion mediana (32 instr, 1 calls). |
| `WRITECOMM` | [USER](USER.md) | FAR | 54 | Funcion mediana (54 instr, 1 calls). |
| `WRITEDIALOG` | [GDI](GDI.md) | FAR | 140 | Dispatcher: tabla de decisiones cmp+jcc (140 instr). |
| `WRITEPROFILESTRING` | [KERNEL](KERNEL.md) | FAR | 182 | Llama a servicios DOS via INT 21h (182 instr). |
| `WRITESPOOL` | [GDI](GDI.md) | FAR | 117 | Funcion compleja: 117 instrucciones, 4 llamadas, 15 branches. |
| `YIELD` | [KERNEL](KERNEL.md) | FAR | 28 | Funcion sin clasificar definitiva (28 instr). |
| `_LCLOSE` | [KERNEL](KERNEL.md) | FAR | 8 | Cierra handle de fichero. |
| `_LLSEEK` | [KERNEL](KERNEL.md) | FAR | 11 | Mueve el puntero de fichero. |
| `_LOPEN` | [KERNEL](KERNEL.md) | FAR | 2 | Abre fichero (low-level, sin Windows extras). |
| `_LREAD` | [KERNEL](KERNEL.md) | FAR | 2 | Lectura larga (>64K) sobre handle de fichero. |
| `entry` | [GDI](GDI.md) | FAR | 46 | Funcion mediana (46 instr, 3 calls). |
| `entry` | [MOUSE](MOUSE.md) | FAR | 34 | Funcion mediana (34 instr, 2 calls). |
