# Modulo `USER`

- Funciones: **606**
- Confidence: high=59, medium=233, low=183, unknown=131

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `ADJUSTWINDOWRECT` | FAR | 51 | Dispatcher: tabla de decisiones cmp+jcc (51 instr). | medium |
| `-` | `ANYPOPUP` | FAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. | low |
| `-` | `BEGINPAINT` | FAR | 100 | Empieza secuencia de pintado WM_PAINT. | high |
| `-` | `BRINGWINDOWTOTOP` | FAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `-` | `BUILDCOMMDCB` | FAR | 385 | Dispatcher: tabla de decisiones cmp+jcc (385 instr). | medium |
| `-` | `BUTTONWNDPROC` | FAR | 932 | Dispatcher: tabla de decisiones cmp+jcc (932 instr). | medium |
| `-` | `CALLMSGFILTER` | FAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `-` | `CALLWINDOWPROC` | FAR | 52 | Funcion mediana (52 instr, 2 calls). | low |
| `-` | `CARETBLINKPROC` | FAR | 98 | Dispatcher: tabla de decisiones cmp+jcc (98 instr). | medium |
| `-` | `CHANGECLIPBOARDCHAIN` | FAR | 65 | Dispatcher: tabla de decisiones cmp+jcc (65 instr). | medium |
| `-` | `CHANGEMENU` | FAR | 211 | Funcion compleja: 211 instrucciones, 6 llamadas, 19 branches. | low |
| `-` | `CHECKDLGBUTTON` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `-` | `CHECKMENUITEM` | FAR | 1 | Marca/desmarca item con check. | high |
| `-` | `CHECKRADIOBUTTON` | FAR | 35 | Funcion mediana (35 instr, 0 calls). | low |
| `-` | `CHILDWINDOWFROMPOINT` | FAR | 35 | Funcion mediana (35 instr, 1 calls). | low |
| `-` | `CLEARCOMMBREAK` | FAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `-` | `CLIENTTOSCREEN` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `CLIPCURSOR` | FAR | 68 | Dispatcher: tabla de decisiones cmp+jcc (68 instr). | medium |
| `-` | `CLOSECLIPBOARD` | FAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `-` | `CLOSECOMM` | FAR | 49 | Funcion mediana (49 instr, 1 calls). | low |
| `-` | `CLOSEWINDOW` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `-` | `COMPUPDATERECT` | FAR | 36 | Funcion mediana (36 instr, 1 calls). | low |
| `-` | `COMPUPDATERGN` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `-` | `CONTSCROLL` | FAR | 52 | Funcion mediana (52 instr, 2 calls). | low |
| `-` | `COPYRECT` | FAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `-` | `COUNTCLIPBOARDFORMATS` | FAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. | low |
| `-` | `CREATECARET` | FAR | 81 | Constructor: crea caret. | medium |
| `-` | `CREATECONVERTWINDOW` | FAR | 41 | Constructor: crea convertwindow. | medium |
| `-` | `CREATEDIALOG` | FAR | 463 | Constructor: crea dialog. | medium |
| `-` | `CREATEMENU` | FAR | 29 | Crea menu vacio. | high |
| `-` | `CREATEWINDOW` | FAR | 454 | Crea una ventana Win16. Devuelve HWND. | high |
| `-` | `DEFWINDOWPROC` | FAR | 466 | Procesa mensaje por defecto cuando WindowProc no lo hace. | high |
| `-` | `DESTROYCARET` | FAR | 27 | Destructor: libera caret. | medium |
| `-` | `DESTROYMENU` | FAR | 37 | Destruye menu y libera recursos. | high |
| `-` | `DESTROYTASKWINDOWS2` | FAR | 34 | Destructor: libera taskwindows2. | medium |
| `-` | `DESTROYWINDOW` | FAR | 91 | Destruye una ventana y libera recursos. | high |
| `-` | `DIALOGBOX` | FAR | 120 | Carga y ejecuta dialogo modal. | high |
| `-` | `DISABLEOEMLAYER` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `-` | `DISPATCHMESSAGE` | FAR | 41 | Envia mensaje al window proc adecuado. | high |
| `-` | `DLGDIRLIST` | FAR | 333 | Dispatcher: tabla de decisiones cmp+jcc (333 instr). | medium |
| `-` | `DLGDIRSELECT` | FAR | 99 | Dispatcher: tabla de decisiones cmp+jcc (99 instr). | medium |
| `-` | `DLGWNDPROC` | FAR | 117 | Dispatcher: tabla de decisiones cmp+jcc (117 instr). | medium |
| `-` | `DRAWICON` | FAR | 120 | Funcion compleja: 120 instrucciones, 10 llamadas, 5 branches. | low |
| `-` | `DRAWMENUBAR` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `DRAWTEXT` | FAR | 399 | Dispatcher: tabla de decisiones cmp+jcc (399 instr). | medium |
| `-` | `EMPTYCLIPBOARD` | FAR | 59 | Funcion mediana (59 instr, 4 calls). | low |
| `-` | `ENABLEMENUITEM` | FAR | 2 | Habilita/deshabilita item. | high |
| `-` | `ENABLEOEMLAYER` | FAR | 35 | Funcion mediana (35 instr, 2 calls). | low |
| `-` | `ENABLEWINDOW` | FAR | 53 | Habilita/deshabilita input en una ventana. | high |
| `-` | `ENDDIALOG` | FAR | 90 | Termina dialogo modal. | high |
| `-` | `ENDMENU` | FAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `-` | `ENDPAINT` | FAR | 47 | Termina secuencia de pintado. | high |
| `-` | `ENUMCHILDWINDOWS` | FAR | 124 | Enumerador: itera sobre childwindows. | medium |
| `-` | `ENUMCLIPBOARDFORMATS` | FAR | 45 | Enumerador: itera sobre clipboardformats. | medium |
| `-` | `ENUMPROPS` | FAR | 79 | Enumerador: itera sobre props. | medium |
| `-` | `ENUMWINDOWS` | FAR | 10 | Enumerador: itera sobre windows. | medium |
| `-` | `ESCAPECOMMFUNCTION` | FAR | 39 | Funcion mediana (39 instr, 1 calls). | low |
| `-` | `EXITWINDOWS` | FAR | 60 | Termina Windows y devuelve a DOS. | high |
| `-` | `FILLRECT` | FAR | 38 | Rellena rectangulo con brush dado. | high |
| `-` | `FILLWINDOW` | FAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `-` | `FINDWINDOW` | FAR | 47 | Busca ventana por clase y/o titulo. | high |
| `-` | `FLASHWINDOW` | FAR | 43 | Dispatcher: tabla de decisiones cmp+jcc (43 instr). | medium |
| `-` | `FLUSHCOMM` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `-` | `FRAMERECT` | FAR | 29 | Dibuja borde de rectangulo. | high |
| `-` | `GETACTIVEWINDOW` | FAR | 386 | Devuelve HWND activa. | high |
| `-` | `GETCARETBLINKTIME` | FAR | 92 | Getter: devuelve caretblinktime. | medium |
| `-` | `GETCARETPOS` | FAR | 8 | Getter: devuelve caretpos. | medium |
| `-` | `GETCLASSNAME` | FAR | 75 | Getter: devuelve classname. | medium |
| `-` | `GETCLIENTRECT` | FAR | 44 | Obtiene area cliente de ventana. | high |
| `-` | `GETCLIPBOARDDATA` | FAR | 43 | Getter: devuelve clipboarddata. | medium |
| `-` | `GETCLIPBOARDFORMATNAME` | FAR | 23 | Getter: devuelve clipboardformatname. | medium |
| `-` | `GETCLIPBOARDOWNER` | FAR | 15 | Getter: devuelve clipboardowner. | medium |
| `-` | `GETCLIPBOARDVIEWER` | FAR | 115 | Getter: devuelve clipboardviewer. | medium |
| `-` | `GETCOMMERROR` | FAR | 61 | Getter: devuelve commerror. | medium |
| `-` | `GETCOMMEVENTMASK` | FAR | 18 | Getter: devuelve commeventmask. | medium |
| `-` | `GETCOMMSTATE` | FAR | 43 | Getter: devuelve commstate. | medium |
| `-` | `GETCONTROLBRUSH` | FAR | 24 | Getter: devuelve controlbrush. | medium |
| `-` | `GETCURRENTTIME` | FAR | 43 | Getter: devuelve currenttime. | medium |
| `-` | `GETCURSORPOS` | FAR | 9 | Getter: devuelve cursorpos. | medium |
| `-` | `GETDC` | FAR | 8 | Obtiene Display Context de ventana. | high |
| `-` | `GETDLGITEM` | FAR | 32 | Devuelve HWND de control de dialogo. | high |
| `-` | `GETDLGITEMINT` | FAR | 93 | Lee entero desde control de dialogo. | high |
| `-` | `GETDLGITEMTEXT` | FAR | 32 | Lee texto de control de dialogo. | high |
| `-` | `GETDOUBLECLICKTIME` | FAR | 4 | Getter: devuelve doubleclicktime. | medium |
| `-` | `GETFOCUS` | FAR | 4 | Devuelve HWND con foco. | high |
| `-` | `GETKEYSTATE` | FAR | 7 | Getter: devuelve keystate. | medium |
| `-` | `GETMENU` | FAR | 10 | Devuelve handle de menu de ventana. | high |
| `-` | `GETMENUSTRING` | FAR | 56 | Getter: devuelve menustring. | medium |
| `-` | `GETMESSAGE` | FAR | 6 | Saca mensaje de la cola (bloqueante). | high |
| `-` | `GETMESSAGE2` | FAR | 105 | Getter: devuelve message2. | medium |
| `-` | `GETMESSAGEPOS` | FAR | 10 | Getter: devuelve messagepos. | medium |
| `-` | `GETMESSAGETIME` | FAR | 10 | Getter: devuelve messagetime. | medium |
| `-` | `GETPARENT` | FAR | 93 | Devuelve HWND del padre. | high |
| `-` | `GETPROP` | FAR | 30 | Getter: devuelve prop. | medium |
| `-` | `GETSCROLLPOS` | FAR | 46 | Getter: devuelve scrollpos. | medium |
| `-` | `GETSCROLLRANGE` | FAR | 56 | Getter: devuelve scrollrange. | medium |
| `-` | `GETSUBMENU` | FAR | 141 | Getter: devuelve submenu. | medium |
| `-` | `GETSYSCOLOR` | FAR | 8 | Getter: devuelve syscolor. | medium |
| `-` | `GETSYSMODALWINDOW` | FAR | 5 | Getter: devuelve sysmodalwindow. | medium |
| `-` | `GETSYSTEMMENU` | FAR | 63 | Getter: devuelve systemmenu. | medium |
| `-` | `GETSYSTEMMETRICS` | FAR | 9 | Getter: devuelve systemmetrics. | medium |
| `-` | `GETTICKCOUNT` | FAR | 3 | Getter: devuelve tickcount. | medium |
| `-` | `GETTIMERRESOLUTION` | FAR | 6 | Getter: devuelve timerresolution. | medium |
| `-` | `GETUPDATERECT` | FAR | 91 | Getter: devuelve updaterect. | medium |
| `-` | `GETWC2` | FAR | 25 | Getter: devuelve wc2. | medium |
| `-` | `GETWINDOWDC` | FAR | 7 | Getter: devuelve windowdc. | medium |
| `-` | `GETWINDOWLONG` | FAR | 2 | Getter: devuelve windowlong. | medium |
| `-` | `GETWINDOWRECT` | FAR | 17 | Obtiene posicion absoluta de ventana. | high |
| `-` | `GETWINDOWTEXT` | FAR | 16 | Lee titulo (o texto) de ventana. | high |
| `-` | `GETWINDOWTEXTLENGTH` | FAR | 17 | Getter: devuelve windowtextlength. | medium |
| `-` | `GRAYSTRING` | FAR | 138 | Dispatcher: tabla de decisiones cmp+jcc (138 instr). | medium |
| `-` | `HIDECARET` | FAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `-` | `HILITEMENUITEM` | FAR | 87 | Dispatcher: tabla de decisiones cmp+jcc (87 instr). | medium |
| `-` | `ICONNAMEWNDPROC` | FAR | 83 | Funcion compleja: 83 instrucciones, 3 llamadas, 2 branches. | low |
| `-` | `ICONSIZE` | FAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `-` | `ICONWNDPROC` | FAR | 310 | Dispatcher: tabla de decisiones cmp+jcc (310 instr). | medium |
| `-` | `INFLATERECT` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `INITAPP` | FAR | 90 | Inicializa app. | medium |
| `-` | `INSENDMESSAGE` | FAR | 65 | Dispatcher: tabla de decisiones cmp+jcc (65 instr). | medium |
| `-` | `INTERSECTRECT` | FAR | 58 | Iterador con instrucciones de string (movsb/scasb/...) (58 instr). | medium |
| `-` | `INVALIDATERECT` | FAR | 8 | Marca un rectangulo como necesitado de repaint. | high |
| `-` | `INVALIDATERGN` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `INVERTRECT` | FAR | 79 | Invierte colores en rectangulo. | high |
| `-` | `ISCHILD` | FAR | 33 | Predicado: verifica si child. | medium |
| `-` | `ISCLIPBOARDFORMATAVAILABLE` | FAR | 23 | Predicado: verifica si clipboardformatavailable. | medium |
| `-` | `ISDIALOGMESSAGE` | FAR | 327 | Procesa mensajes de teclado en dialogo modeless. | high |
| `-` | `ISDLGBUTTONCHECKED` | FAR | 35 | Predicado: verifica si dlgbuttonchecked. | medium |
| `-` | `ISICONIC` | FAR | 2 | Verifica si la ventana esta minimizada. | high |
| `-` | `ISRECTEMPTY` | FAR | 24 | Predicado: verifica si rectempty. | medium |
| `-` | `ISTWOBYTECHARPREFIX` | FAR | 29 | Predicado: verifica si twobytecharprefix. | medium |
| `-` | `ISWINDOW` | FAR | 16 | Verifica si HWND es valido. | high |
| `-` | `ISWINDOWENABLED` | FAR | 18 | Predicado: verifica si windowenabled. | medium |
| `-` | `ISWINDOWVISIBLE` | FAR | 22 | Verifica si la ventana es visible. | high |
| `-` | `KILLSYSTEMTIMER` | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `-` | `KILLTIMER` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `KILLTIMER2` | FAR | 123 | Dispatcher: tabla de decisiones cmp+jcc (123 instr). | medium |
| `-` | `LOADACCELERATORS` | FAR | 28 | Carga tabla de aceleradores. | high |
| `-` | `LOADBITMAP` | FAR | 189 | Carga BITMAP desde recurso. | high |
| `-` | `LOADCURSOR` | FAR | 20 | Carga CURSOR desde recurso. | high |
| `-` | `LOADICON` | FAR | 20 | Carga ICON desde recurso. | high |
| `-` | `LOADMENU` | FAR | 268 | Carga MENU desde recurso. | high |
| `-` | `LOADSTRING` | FAR | 80 | Carga STRING desde recurso. | high |
| `-` | `MAPDIALOGRECT` | FAR | 50 | Funcion mediana (50 instr, 0 calls). | low |
| `-` | `MENUITEMSTATE` | FAR | 58 | Funcion mediana (58 instr, 3 calls). | low |
| `-` | `MENUWNDPROC` | FAR | 67 | Funcion mediana (67 instr, 2 calls). | low |
| `-` | `MESSAGEBEEP` | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `-` | `MESSAGEBOX` | FAR | 608 | Muestra dialogo de mensaje predefinido. | high |
| `-` | `MESSAGEBOXWNDPROC` | FAR | 669 | Dispatcher: tabla de decisiones cmp+jcc (669 instr). | medium |
| `-` | `MOVEWINDOW` | FAR | 49 | Mueve y redimensiona una ventana. | high |
| `-` | `MYOPENCOMM` | FAR | 110 | Funcion compleja: 110 instrucciones, 2 llamadas, 9 branches. | low |
| `-` | `OFFSETRECT` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `OPENCLIPBOARD` | FAR | 37 | Funcion mediana (37 instr, 1 calls). | low |
| `-` | `PAINTRECT` | FAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `-` | `PEEKMESSAGE` | FAR | 2 | Saca/inspecciona mensaje sin bloquear. | high |
| `-` | `POSTAPPMESSAGE` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `POSTMESSAGE` | FAR | 5 | Encola mensaje asincrono en cola de la ventana. | high |
| `-` | `POSTMESSAGE2` | FAR | 44 | Funcion mediana (44 instr, 3 calls). | low |
| `-` | `POSTQUITMESSAGE` | FAR | 13 | Funcion sin clasificar definitiva (13 instr). | unknown |
| `-` | `POSTSYSERROR` | FAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `-` | `PTINRECT` | FAR | 28 | Dispatcher: tabla de decisiones cmp+jcc (28 instr). | medium |
| `-` | `READCOMM` | FAR | 62 | Dispatcher: tabla de decisiones cmp+jcc (62 instr). | medium |
| `-` | `REGISTERCLASS` | FAR | 89 | Registra una clase de ventana. | high |
| `-` | `REGISTERCLIPBOARDFORMAT` | FAR | 17 | Registra isterclipboardformat. | medium |
| `-` | `REGISTERWINDOWMESSAGE` | FAR | 6 | Registra isterwindowmessage. | medium |
| `-` | `RELEASECAPTURE` | FAR | 7 | Funcion sin clasificar definitiva (7 instr). | unknown |
| `-` | `RELEASEDC` | FAR | 26 | Libera DC obtenido por GetDC. | high |
| `-` | `REMOVEPROP` | FAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `-` | `REPLYMESSAGE` | FAR | 33 | Responde a un SendMessage cross-task. | high |
| `-` | `SBWNDPROC` | FAR | 409 | Dispatcher: tabla de decisiones cmp+jcc (409 instr). | medium |
| `-` | `SCREENTOCLIENT` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `SCROLLWINDOW` | FAR | 532 | Dispatcher: tabla de decisiones cmp+jcc (532 instr). | medium |
| `-` | `SENDDLGITEMMESSAGE` | FAR | 34 | Funcion mediana (34 instr, 0 calls). | low |
| `-` | `SENDMESSAGE` | FAR | 35 | Envia mensaje sincrono a window proc. | high |
| `-` | `SENDMESSAGE2` | FAR | 60 | Funcion mediana (60 instr, 3 calls). | low |
| `-` | `SETACTIVEWINDOW` | FAR | 13 | Activa una ventana (la trae al foreground). | high |
| `-` | `SETCAPTURE` | FAR | 10 | Setter: cambia capture. | medium |
| `-` | `SETCARETBLINKTIME` | FAR | 25 | Setter: cambia caretblinktime. | medium |
| `-` | `SETCARETPOS` | FAR | 53 | Setter: cambia caretpos. | medium |
| `-` | `SETCLIPBOARDDATA` | FAR | 93 | Setter: cambia clipboarddata. | medium |
| `-` | `SETCLIPBOARDVIEWER` | FAR | 28 | Setter: cambia clipboardviewer. | medium |
| `-` | `SETCOMMBREAK` | FAR | 17 | Setter: cambia commbreak. | medium |
| `-` | `SETCOMMEVENTMASK` | FAR | 18 | Setter: cambia commeventmask. | medium |
| `-` | `SETCOMMSTATE` | FAR | 27 | Setter: cambia commstate. | medium |
| `-` | `SETCONVERTWINDOWHEIGHT` | FAR | 30 | Setter: cambia convertwindowheight. | medium |
| `-` | `SETCURSOR` | FAR | 6 | Setter: cambia cursor. | medium |
| `-` | `SETCURSORPOS` | FAR | 14 | Setter: cambia cursorpos. | medium |
| `-` | `SETDLGITEMINT` | FAR | 78 | Escribe entero en control de dialogo. | high |
| `-` | `SETDLGITEMTEXT` | FAR | 29 | Cambia texto de control de dialogo. | high |
| `-` | `SETDOUBLECLICKTIME` | FAR | 12 | Setter: cambia doubleclicktime. | medium |
| `-` | `SETFOCUS` | FAR | 79 | Cambia el foco de teclado. | high |
| `-` | `SETMENU` | FAR | 31 | Asigna menu a ventana. | high |
| `-` | `SETPROP` | FAR | 59 | Setter: cambia prop. | medium |
| `-` | `SETRECT` | FAR | 25 | Setter: cambia rect. | medium |
| `-` | `SETRECTEMPTY` | FAR | 20 | Setter: cambia rectempty. | medium |
| `-` | `SETSCROLLPOS` | FAR | 43 | Setter: cambia scrollpos. | medium |
| `-` | `SETSCROLLRANGE` | FAR | 197 | Setter: cambia scrollrange. | medium |
| `-` | `SETSYSCOLORS` | FAR | 111 | Setter: cambia syscolors. | medium |
| `-` | `SETSYSMODALWINDOW` | FAR | 10 | Setter: cambia sysmodalwindow. | medium |
| `-` | `SETSYSTEMTIMER` | FAR | 1 | Setter: cambia systemtimer. | medium |
| `-` | `SETTIMER` | FAR | 2 | Setter: cambia timer. | medium |
| `-` | `SETTIMER2` | FAR | 65 | Setter: cambia timer2. | medium |
| `-` | `SETWC2` | FAR | 30 | Setter: cambia wc2. | medium |
| `-` | `SETWINDOWSHOOK` | FAR | 77 | Setter: cambia windowshook. | medium |
| `-` | `SETWINDOWTEXT` | FAR | 19 | Cambia titulo (o texto) de ventana. | high |
| `-` | `SETWINDOWWORD` | FAR | 2 | Setter: cambia windowword. | medium |
| `-` | `SHOWCARET` | FAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `-` | `SHOWCONVERTWINDOW` | FAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `-` | `SHOWCURSOR` | FAR | 34 | Funcion mediana (34 instr, 3 calls). | low |
| `-` | `SHOWWINDOW` | FAR | 323 | Muestra/oculta/minimiza/maximiza ventana. | high |
| `-` | `SIGNALPROC` | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). | medium |
| `-` | `STATICWNDPROC` | FAR | 326 | Dispatcher: tabla de decisiones cmp+jcc (326 instr). | medium |
| `-` | `SWAPMOUSEBUTTON` | FAR | 18 | Llama a servicios DOS via INT 21h (18 instr). | medium |
| `-` | `SYSHASKANJI` | FAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `-` | `TRANSLATEACCELERATOR` | FAR | 260 | Dispatcher: tabla de decisiones cmp+jcc (260 instr). | medium |
| `-` | `TRANSLATEMESSAGE` | FAR | 82 | Traduce mensajes de teclado a WM_CHAR. | high |
| `-` | `TRANSMITCOMMCHAR` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `UNGETCOMMCHAR` | FAR | 38 | Funcion mediana (38 instr, 0 calls). | low |
| `-` | `UNIONRECT` | FAR | 85 | Iterador con instrucciones de string (movsb/scasb/...) (85 instr). | medium |
| `-` | `UPDATEWINDOW` | FAR | 86 | Fuerza repaint de region invalida. | high |
| `-` | `VALIDATERECT` | FAR | 7 | Marca un rectangulo como pintado. | high |
| `-` | `VALIDATERGN` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `WAITMESSAGE` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `WINDOWFROMPOINT` | FAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `-` | `WRITECOMM` | FAR | 54 | Funcion mediana (54 instr, 1 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 73 | Dispatcher: tabla de decisiones cmp+jcc (73 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 35 | Funcion mediana (35 instr, 3 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 171 | Dispatcher: tabla de decisiones cmp+jcc (171 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0000` | `sub_0000` | NEAR | 31 | Funcion mediana (31 instr, 3 calls). | low |
| `0x0000` | `sub_0000` | FAR | 67 | Funcion mediana (67 instr, 3 calls). | low |
| `0x002F` | `sub_002F` | NEAR | 66 | Funcion mediana (66 instr, 14 calls). | low |
| `0x0036` | `sub_0036` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x0048` | `sub_0048` | NEAR | 70 | Funcion mediana (70 instr, 1 calls). | low |
| `0x004E` | `sub_004E` | FAR | 84 | Funcion compleja: 84 instrucciones, 5 llamadas, 7 branches. | low |
| `0x005A` | `sub_005A` | NEAR | 61 | Funcion mediana (61 instr, 5 calls). | low |
| `0x005D` | `sub_005D` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x0061` | `sub_0061` | NEAR | 13 | Funcion sin clasificar definitiva (13 instr). | unknown |
| `0x0081` | `sub_0081` | NEAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `0x009E` | `sub_009E` | FAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x00A5` | `sub_00A5` | NEAR | 125 | Dispatcher: tabla de decisiones cmp+jcc (125 instr). | medium |
| `0x00AD` | `sub_00AD` | NEAR | 38 | Dispatcher: tabla de decisiones cmp+jcc (38 instr). | medium |
| `0x00D7` | `sub_00D7` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x00D9` | `sub_00D9` | NEAR | 65 | Funcion mediana (65 instr, 1 calls). | low |
| `0x00E8` | `sub_00E8` | FAR | 49 | Funcion mediana (49 instr, 2 calls). | low |
| `0x00F9` | `sub_00F9` | FAR | 153 | Dispatcher: tabla de decisiones cmp+jcc (153 instr). | medium |
| `0x00F9` | `sub_00F9` | NEAR | 81 | Dispatcher: tabla de decisiones cmp+jcc (81 instr). | medium |
| `0x0101` | `sub_0101` | FAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0109` | `sub_0109` | FAR | 47 | Funcion mediana (47 instr, 2 calls). | low |
| `0x011A` | `sub_011A` | NEAR | 75 | Funcion mediana (75 instr, 1 calls). | low |
| `0x012C` | `sub_012C` | FAR | 40 | Funcion mediana (40 instr, 1 calls). | low |
| `0x015B` | `sub_015B` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x016F` | `sub_016F` | FAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x017D` | `sub_017D` | NEAR | 47 | Funcion mediana (47 instr, 4 calls). | low |
| `0x017F` | `sub_017F` | FAR | 63 | Funcion mediana (63 instr, 4 calls). | low |
| `0x01A1` | `sub_01A1` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x01B3` | `sub_01B3` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x01C4` | `sub_01C4` | NEAR | 45 | Funcion mediana (45 instr, 2 calls). | low |
| `0x01C9` | `sub_01C9` | FAR | 362 | Iterador con instrucciones de string (movsb/scasb/...) (362 instr). | medium |
| `0x01D9` | `sub_01D9` | FAR | 32 | Funcion mediana (32 instr, 3 calls). | low |
| `0x01E7` | `sub_01E7` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x01F1` | `sub_01F1` | NEAR | 13 | Wrapper que delega en sub_020E. | medium |
| `0x01F5` | `sub_01F5` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x020E` | `sub_020E` | NEAR | 59 | Funcion mediana (59 instr, 4 calls). | low |
| `0x020E` | `sub_020E` | NEAR | 140 | Dispatcher: tabla de decisiones cmp+jcc (140 instr). | medium |
| `0x0216` | `sub_0216` | FAR | 74 | Dispatcher: tabla de decisiones cmp+jcc (74 instr). | medium |
| `0x021A` | `sub_021A` | NEAR | 73 | Funcion mediana (73 instr, 6 calls). | low |
| `0x0233` | `sub_0233` | NEAR | 255 | Funcion compleja: 255 instrucciones, 11 llamadas, 1 branches. | low |
| `0x0269` | `sub_0269` | FAR | 139 | Dispatcher: tabla de decisiones cmp+jcc (139 instr). | medium |
| `0x0285` | `sub_0285` | NEAR | 48 | Dispatcher: tabla de decisiones cmp+jcc (48 instr). | medium |
| `0x029C` | `sub_029C` | NEAR | 31 | Funcion mediana (31 instr, 0 calls). | low |
| `0x02D2` | `sub_02D2` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x02DC` | `sub_02DC` | NEAR | 86 | Funcion compleja: 86 instrucciones, 1 llamadas, 6 branches. | low |
| `0x02E3` | `sub_02E3` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0303` | `sub_0303` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x0316` | `sub_0316` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x031E` | `sub_031E` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x032F` | `sub_032F` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x0331` | `sub_0331` | FAR | 200 | Dispatcher: tabla de decisiones cmp+jcc (200 instr). | medium |
| `0x0346` | `sub_0346` | NEAR | 55 | Funcion mediana (55 instr, 5 calls). | low |
| `0x0352` | `sub_0352` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x035C` | `sub_035C` | NEAR | 6 | Wrapper que delega en KERNEL.GLOBALUNLOCK. | medium |
| `0x0368` | `sub_0368` | NEAR | 70 | Dispatcher: tabla de decisiones cmp+jcc (70 instr). | medium |
| `0x037A` | `sub_037A` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x03A9` | `sub_03A9` | FAR | 158 | Funcion compleja: 158 instrucciones, 3 llamadas, 8 branches. | low |
| `0x03B9` | `sub_03B9` | FAR | 59 | Funcion mediana (59 instr, 1 calls). | low |
| `0x03B9` | `sub_03B9` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x03C3` | `sub_03C3` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x03EB` | `sub_03EB` | NEAR | 108 | Dispatcher: tabla de decisiones cmp+jcc (108 instr). | medium |
| `0x03FF` | `sub_03FF` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x040F` | `sub_040F` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x041F` | `sub_041F` | NEAR | 39 | Funcion mediana (39 instr, 0 calls). | low |
| `0x0430` | `sub_0430` | NEAR | 71 | Dispatcher: tabla de decisiones cmp+jcc (71 instr). | medium |
| `0x0431` | `sub_0431` | FAR | 335 | Dispatcher: tabla de decisiones cmp+jcc (335 instr). | medium |
| `0x0434` | `sub_0434` | FAR | 98 | Iterador con instrucciones de string (movsb/scasb/...) (98 instr). | medium |
| `0x0481` | `sub_0481` | NEAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x04D0` | `sub_04D0` | NEAR | 31 | Funcion mediana (31 instr, 0 calls). | low |
| `0x04D6` | `sub_04D6` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x04DE` | `sub_04DE` | NEAR | 43 | Dispatcher: tabla de decisiones cmp+jcc (43 instr). | medium |
| `0x04EB` | `sub_04EB` | FAR | 74 | Funcion mediana (74 instr, 1 calls). | low |
| `0x04F7` | `sub_04F7` | NEAR | 136 | Dispatcher: tabla de decisiones cmp+jcc (136 instr). | medium |
| `0x04FF` | `sub_04FF` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x050E` | `sub_050E` | FAR | 47 | Funcion mediana (47 instr, 2 calls). | low |
| `0x051E` | `sub_051E` | NEAR | 60 | Funcion mediana (60 instr, 1 calls). | low |
| `0x0521` | `sub_0521` | NEAR | 186 | Dispatcher: tabla de decisiones cmp+jcc (186 instr). | medium |
| `0x0525` | `sub_0525` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x0538` | `sub_0538` | NEAR | 99 | Funcion compleja: 99 instrucciones, 4 llamadas, 2 branches. | low |
| `0x0539` | `sub_0539` | NEAR | 62 | Funcion mediana (62 instr, 6 calls). | low |
| `0x0579` | `sub_0579` | NEAR | 51 | Funcion mediana (51 instr, 1 calls). | low |
| `0x058D` | `sub_058D` | FAR | 151 | Dispatcher: tabla de decisiones cmp+jcc (151 instr). | medium |
| `0x05A5` | `sub_05A5` | NEAR | 17 | Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion. | low |
| `0x05B6` | `sub_05B6` | FAR | 117 | Dispatcher: tabla de decisiones cmp+jcc (117 instr). | medium |
| `0x05CD` | `sub_05CD` | FAR | 72 | Dispatcher: tabla de decisiones cmp+jcc (72 instr). | medium |
| `0x05D0` | `sub_05D0` | NEAR | 59 | Funcion mediana (59 instr, 3 calls). | low |
| `0x05EE` | `sub_05EE` | NEAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. | low |
| `0x05F9` | `sub_05F9` | NEAR | 93 | Funcion compleja: 93 instrucciones, 4 llamadas, 1 branches. | low |
| `0x0627` | `sub_0627` | NEAR | 62 | Dispatcher: tabla de decisiones cmp+jcc (62 instr). | medium |
| `0x0629` | `sub_0629` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x0652` | `sub_0652` | NEAR | 34 | Funcion mediana (34 instr, 1 calls). | low |
| `0x0662` | `sub_0662` | FAR | 30 | Llama a servicios DOS via INT 21h (30 instr). | medium |
| `0x067E` | `sub_067E` | FAR | 50 | Funcion mediana (50 instr, 2 calls). | low |
| `0x0698` | `sub_0698` | FAR | 27 | Llama a servicios DOS via INT 21h (27 instr). | medium |
| `0x069D` | `sub_069D` | NEAR | 146 | Dispatcher: tabla de decisiones cmp+jcc (146 instr). | medium |
| `0x06A5` | `sub_06A5` | FAR | 49 | Funcion mediana (49 instr, 3 calls). | low |
| `0x06C5` | `sub_06C5` | FAR | 17 | Llama a servicios DOS via INT 21h (17 instr). | medium |
| `0x06CA` | `sub_06CA` | NEAR | 90 | Funcion compleja: 90 instrucciones, 5 llamadas, 6 branches. | low |
| `0x06CB` | `sub_06CB` | NEAR | 123 | Dispatcher: tabla de decisiones cmp+jcc (123 instr). | medium |
| `0x06DD` | `sub_06DD` | NEAR | 162 | Funcion compleja: 162 instrucciones, 3 llamadas, 2 branches. | low |
| `0x06E3` | `sub_06E3` | FAR | 20 | Llama a servicios DOS via INT 21h (20 instr). | medium |
| `0x06ED` | `sub_06ED` | NEAR | 166 | Dispatcher: tabla de decisiones cmp+jcc (166 instr). | medium |
| `0x0703` | `sub_0703` | FAR | 158 | Dispatcher: tabla de decisiones cmp+jcc (158 instr). | medium |
| `0x0705` | `sub_0705` | FAR | 37 | Llama a servicios DOS via INT 21h (37 instr). | medium |
| `0x070B` | `sub_070B` | FAR | 52 | Funcion mediana (52 instr, 2 calls). | low |
| `0x0742` | `sub_0742` | FAR | 16 | Llama a servicios DOS via INT 21h (16 instr). | medium |
| `0x075B` | `sub_075B` | FAR | 17 | Llama a servicios DOS via INT 21h (17 instr). | medium |
| `0x0766` | `sub_0766` | FAR | 97 | Funcion compleja: 97 instrucciones, 7 llamadas, 2 branches. | low |
| `0x0779` | `sub_0779` | FAR | 16 | Llama a servicios DOS via INT 21h (16 instr). | medium |
| `0x077E` | `sub_077E` | FAR | 61 | Dispatcher: tabla de decisiones cmp+jcc (61 instr). | medium |
| `0x07AD` | `sub_07AD` | FAR | 41 | Funcion mediana (41 instr, 1 calls). | low |
| `0x07FE` | `sub_07FE` | NEAR | 56 | Funcion mediana (56 instr, 2 calls). | low |
| `0x0806` | `sub_0806` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x0818` | `sub_0818` | FAR | 37 | Funcion mediana (37 instr, 2 calls). | low |
| `0x0827` | `sub_0827` | NEAR | 107 | Dispatcher: tabla de decisiones cmp+jcc (107 instr). | medium |
| `0x0838` | `sub_0838` | FAR | 98 | Dispatcher: tabla de decisiones cmp+jcc (98 instr). | medium |
| `0x0848` | `sub_0848` | NEAR | 43 | Dispatcher: tabla de decisiones cmp+jcc (43 instr). | medium |
| `0x0850` | `sub_0850` | NEAR | 57 | Funcion mediana (57 instr, 1 calls). | low |
| `0x0865` | `sub_0865` | NEAR | 94 | Funcion compleja: 94 instrucciones, 0 llamadas, 5 branches. | low |
| `0x0873` | `sub_0873` | NEAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. | low |
| `0x087C` | `sub_087C` | NEAR | 205 | Iterador con instrucciones de string (movsb/scasb/...) (205 instr). | medium |
| `0x0887` | `sub_0887` | FAR | 109 | Funcion compleja: 109 instrucciones, 1 llamadas, 7 branches. | low |
| `0x08B8` | `sub_08B8` | NEAR | 62 | Funcion mediana (62 instr, 3 calls). | low |
| `0x08C2` | `sub_08C2` | NEAR | 97 | Dispatcher: tabla de decisiones cmp+jcc (97 instr). | medium |
| `0x08D3` | `sub_08D3` | NEAR | 69 | Funcion mediana (69 instr, 6 calls). | low |
| `0x08DF` | `sub_08DF` | NEAR | 45 | Funcion mediana (45 instr, 2 calls). | low |
| `0x0918` | `sub_0918` | FAR | 63 | Funcion mediana (63 instr, 2 calls). | low |
| `0x0941` | `sub_0941` | NEAR | 72 | Dispatcher: tabla de decisiones cmp+jcc (72 instr). | medium |
| `0x094E` | `sub_094E` | FAR | 120 | Funcion compleja: 120 instrucciones, 1 llamadas, 0 branches. | low |
| `0x0956` | `sub_0956` | NEAR | 107 | Dispatcher: tabla de decisiones cmp+jcc (107 instr). | medium |
| `0x095C` | `sub_095C` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x0976` | `sub_0976` | NEAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). | medium |
| `0x0979` | `sub_0979` | FAR | 74 | Dispatcher: tabla de decisiones cmp+jcc (74 instr). | medium |
| `0x0987` | `sub_0987` | NEAR | 47 | Funcion mediana (47 instr, 3 calls). | low |
| `0x098B` | `sub_098B` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x0996` | `sub_0996` | FAR | 45 | Funcion mediana (45 instr, 2 calls). | low |
| `0x09AC` | `sub_09AC` | NEAR | 35 | Funcion mediana (35 instr, 4 calls). | low |
| `0x09BE` | `sub_09BE` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x09CE` | `sub_09CE` | NEAR | 164 | Dispatcher: tabla de decisiones cmp+jcc (164 instr). | medium |
| `0x09E2` | `sub_09E2` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x09EF` | `sub_09EF` | FAR | 65 | Dispatcher: tabla de decisiones cmp+jcc (65 instr). | medium |
| `0x09F4` | `sub_09F4` | NEAR | 116 | Funcion compleja: 116 instrucciones, 1 llamadas, 5 branches. | low |
| `0x09FB` | `sub_09FB` | NEAR | 51 | Funcion mediana (51 instr, 4 calls). | low |
| `0x09FD` | `sub_09FD` | NEAR | 96 | Dispatcher: tabla de decisiones cmp+jcc (96 instr). | medium |
| `0x0A29` | `sub_0A29` | NEAR | 32 | Funcion mediana (32 instr, 3 calls). | low |
| `0x0A67` | `sub_0A67` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x0A75` | `sub_0A75` | NEAR | 79 | Dispatcher: tabla de decisiones cmp+jcc (79 instr). | medium |
| `0x0A8D` | `sub_0A8D` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x0A8D` | `sub_0A8D` | FAR | 98 | Funcion compleja: 98 instrucciones, 1 llamadas, 3 branches. | low |
| `0x0A95` | `sub_0A95` | NEAR | 51 | Funcion mediana (51 instr, 3 calls). | low |
| `0x0A98` | `sub_0A98` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x0ACD` | `sub_0ACD` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x0AD2` | `sub_0AD2` | NEAR | 39 | Funcion mediana (39 instr, 2 calls). | low |
| `0x0AEB` | `sub_0AEB` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x0B09` | `sub_0B09` | FAR | 67 | Funcion mediana (67 instr, 2 calls). | low |
| `0x0B15` | `sub_0B15` | FAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0B1D` | `sub_0B1D` | NEAR | 125 | Dispatcher: tabla de decisiones cmp+jcc (125 instr). | medium |
| `0x0B43` | `sub_0B43` | NEAR | 36 | Funcion mediana (36 instr, 3 calls). | low |
| `0x0B4A` | `sub_0B4A` | FAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x0B4E` | `sub_0B4E` | NEAR | 37 | Funcion mediana (37 instr, 1 calls). | low |
| `0x0B78` | `sub_0B78` | NEAR | 63 | Dispatcher: tabla de decisiones cmp+jcc (63 instr). | medium |
| `0x0B82` | `sub_0B82` | NEAR | 39 | Funcion mediana (39 instr, 1 calls). | low |
| `0x0B93` | `sub_0B93` | FAR | 97 | Iterador con instrucciones de string (movsb/scasb/...) (97 instr). | medium |
| `0x0B9A` | `sub_0B9A` | NEAR | 47 | Dispatcher: tabla de decisiones cmp+jcc (47 instr). | medium |
| `0x0BA9` | `sub_0BA9` | FAR | 90 | Dispatcher: tabla de decisiones cmp+jcc (90 instr). | medium |
| `0x0BEC` | `sub_0BEC` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x0C05` | `sub_0C05` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x0C0D` | `sub_0C0D` | FAR | 286 | Dispatcher: tabla de decisiones cmp+jcc (286 instr). | medium |
| `0x0C10` | `sub_0C10` | NEAR | 81 | Dispatcher: tabla de decisiones cmp+jcc (81 instr). | medium |
| `0x0C55` | `sub_0C55` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x0C7A` | `sub_0C7A` | NEAR | 31 | Funcion mediana (31 instr, 2 calls). | low |
| `0x0C7A` | `sub_0C7A` | NEAR | 38 | Funcion mediana (38 instr, 2 calls). | low |
| `0x0C80` | `sub_0C80` | NEAR | 210 | Dispatcher: tabla de decisiones cmp+jcc (210 instr). | medium |
| `0x0CC5` | `sub_0CC5` | FAR | 44 | Funcion mediana (44 instr, 1 calls). | low |
| `0x0CD0` | `sub_0CD0` | NEAR | 102 | Dispatcher: tabla de decisiones cmp+jcc (102 instr). | medium |
| `0x0CE9` | `sub_0CE9` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0D24` | `sub_0D24` | FAR | 266 | Dispatcher: tabla de decisiones cmp+jcc (266 instr). | medium |
| `0x0D32` | `sub_0D32` | NEAR | 55 | Funcion mediana (55 instr, 3 calls). | low |
| `0x0D34` | `sub_0D34` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x0D86` | `sub_0D86` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x0DB7` | `sub_0DB7` | NEAR | 45 | Funcion mediana (45 instr, 12 calls). | low |
| `0x0DB7` | `sub_0DB7` | NEAR | 323 | Dispatcher: tabla de decisiones cmp+jcc (323 instr). | medium |
| `0x0DDC` | `sub_0DDC` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x0E2E` | `sub_0E2E` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x0E80` | `sub_0E80` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x0EAF` | `sub_0EAF` | NEAR | 48 | Funcion mediana (48 instr, 2 calls). | low |
| `0x0ED2` | `sub_0ED2` | NEAR | 134 | Dispatcher: tabla de decisiones cmp+jcc (134 instr). | medium |
| `0x0F14` | `sub_0F14` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x0F14` | `sub_0F14` | FAR | 101 | Dispatcher: tabla de decisiones cmp+jcc (101 instr). | medium |
| `0x0F49` | `sub_0F49` | NEAR | 36 | Funcion mediana (36 instr, 0 calls). | low |
| `0x0F9F` | `sub_0F9F` | NEAR | 35 | Funcion mediana (35 instr, 1 calls). | low |
| `0x0FB6` | `sub_0FB6` | FAR | 136 | Dispatcher: tabla de decisiones cmp+jcc (136 instr). | medium |
| `0x0FE8` | `sub_0FE8` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x1005` | `sub_1005` | NEAR | 172 | Dispatcher: tabla de decisiones cmp+jcc (172 instr). | medium |
| `0x1014` | `sub_1014` | NEAR | 46 | Dispatcher: tabla de decisiones cmp+jcc (46 instr). | medium |
| `0x105F` | `sub_105F` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x1096` | `sub_1096` | NEAR | 10 | Wrapper que delega en KERNEL.LOCALUNLOCK. | medium |
| `0x10B3` | `sub_10B3` | NEAR | 13 | Wrapper que delega en KERNEL.LOCALLOCK. | medium |
| `0x10B5` | `sub_10B5` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x10D7` | `sub_10D7` | FAR | 49 | Dispatcher: tabla de decisiones cmp+jcc (49 instr). | medium |
| `0x10ED` | `sub_10ED` | FAR | 97 | Funcion compleja: 97 instrucciones, 0 llamadas, 6 branches. | low |
| `0x10EF` | `sub_10EF` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x1112` | `sub_1112` | NEAR | 49 | Funcion mediana (49 instr, 3 calls). | low |
| `0x1132` | `sub_1132` | FAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x113F` | `sub_113F` | NEAR | 67 | Dispatcher: tabla de decisiones cmp+jcc (67 instr). | medium |
| `0x1164` | `sub_1164` | NEAR | 34 | Funcion mediana (34 instr, 4 calls). | low |
| `0x11A2` | `sub_11A2` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x11AB` | `sub_11AB` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x11CE` | `sub_11CE` | NEAR | 82 | Funcion compleja: 82 instrucciones, 2 llamadas, 5 branches. | low |
| `0x11D1` | `sub_11D1` | NEAR | 111 | Dispatcher: tabla de decisiones cmp+jcc (111 instr). | medium |
| `0x11D6` | `sub_11D6` | NEAR | 190 | Dispatcher: tabla de decisiones cmp+jcc (190 instr). | medium |
| `0x11DA` | `sub_11DA` | NEAR | 63 | Funcion mediana (63 instr, 2 calls). | low |
| `0x11DB` | `sub_11DB` | NEAR | 47 | Dispatcher: tabla de decisiones cmp+jcc (47 instr). | medium |
| `0x124D` | `sub_124D` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x1269` | `sub_1269` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x127A` | `sub_127A` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x127E` | `sub_127E` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x1285` | `sub_1285` | NEAR | 39 | Dispatcher: tabla de decisiones cmp+jcc (39 instr). | medium |
| `0x1287` | `sub_1287` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x12B5` | `sub_12B5` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x12B8` | `sub_12B8` | NEAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `0x12C5` | `sub_12C5` | NEAR | 34 | Funcion mediana (34 instr, 2 calls). | low |
| `0x12D1` | `sub_12D1` | NEAR | 44 | Dispatcher: tabla de decisiones cmp+jcc (44 instr). | medium |
| `0x12E4` | `sub_12E4` | FAR | 69 | Funcion mediana (69 instr, 3 calls). | low |
| `0x12EA` | `sub_12EA` | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). | medium |
| `0x131B` | `sub_131B` | NEAR | 31 | Funcion mediana (31 instr, 2 calls). | low |
| `0x1334` | `sub_1334` | NEAR | 46 | Funcion mediana (46 instr, 3 calls). | low |
| `0x1382` | `sub_1382` | NEAR | 90 | Dispatcher: tabla de decisiones cmp+jcc (90 instr). | medium |
| `0x1385` | `sub_1385` | FAR | 404 | Dispatcher: tabla de decisiones cmp+jcc (404 instr). | medium |
| `0x13A4` | `sub_13A4` | FAR | 69 | Dispatcher: tabla de decisiones cmp+jcc (69 instr). | medium |
| `0x13A8` | `sub_13A8` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x13A8` | `sub_13A8` | FAR | 94 | Dispatcher: tabla de decisiones cmp+jcc (94 instr). | medium |
| `0x13C8` | `sub_13C8` | FAR | 71 | Funcion mediana (71 instr, 4 calls). | low |
| `0x1400` | `sub_1400` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x141C` | `sub_141C` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x143C` | `sub_143C` | NEAR | 166 | Dispatcher: tabla de decisiones cmp+jcc (166 instr). | medium |
| `0x1442` | `sub_1442` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x1467` | `sub_1467` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x147A` | `sub_147A` | NEAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). | medium |
| `0x147F` | `sub_147F` | FAR | 88 | Dispatcher: tabla de decisiones cmp+jcc (88 instr). | medium |
| `0x14A5` | `sub_14A5` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x14E1` | `sub_14E1` | NEAR | 33 | Funcion mediana (33 instr, 3 calls). | low |
| `0x14EA` | `sub_14EA` | NEAR | 67 | Dispatcher: tabla de decisiones cmp+jcc (67 instr). | medium |
| `0x1530` | `sub_1530` | FAR | 61 | Funcion mediana (61 instr, 1 calls). | low |
| `0x1556` | `sub_1556` | FAR | 114 | Dispatcher: tabla de decisiones cmp+jcc (114 instr). | medium |
| `0x1582` | `sub_1582` | NEAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). | medium |
| `0x15D3` | `sub_15D3` | FAR | 134 | Funcion compleja: 134 instrucciones, 6 llamadas, 4 branches. | low |
| `0x15E9` | `sub_15E9` | NEAR | 238 | Funcion compleja: 238 instrucciones, 9 llamadas, 10 branches. | low |
| `0x15F3` | `sub_15F3` | NEAR | 34 | Funcion mediana (34 instr, 2 calls). | low |
| `0x164C` | `sub_164C` | NEAR | 36 | Funcion mediana (36 instr, 2 calls). | low |
| `0x1672` | `sub_1672` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x16A2` | `sub_16A2` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x16A4` | `sub_16A4` | FAR | 114 | Dispatcher: tabla de decisiones cmp+jcc (114 instr). | medium |
| `0x16D2` | `sub_16D2` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x16F2` | `sub_16F2` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x171B` | `sub_171B` | NEAR | 7 | Funcion sin clasificar definitiva (7 instr). | unknown |
| `0x1722` | `sub_1722` | NEAR | 36 | Funcion mediana (36 instr, 0 calls). | low |
| `0x1779` | `sub_1779` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x17A9` | `sub_17A9` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x17AC` | `sub_17AC` | FAR | 151 | Dispatcher: tabla de decisiones cmp+jcc (151 instr). | medium |
| `0x17C5` | `sub_17C5` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x17F2` | `sub_17F2` | NEAR | 84 | Dispatcher: tabla de decisiones cmp+jcc (84 instr). | medium |
| `0x17F9` | `sub_17F9` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x1820` | `sub_1820` | NEAR | 54 | Funcion mediana (54 instr, 2 calls). | low |
| `0x1891` | `sub_1891` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x18C1` | `sub_18C1` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x18E0` | `sub_18E0` | FAR | 148 | Dispatcher: tabla de decisiones cmp+jcc (148 instr). | medium |
| `0x18E3` | `sub_18E3` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x190B` | `sub_190B` | NEAR | 69 | Funcion mediana (69 instr, 3 calls). | low |
| `0x1933` | `sub_1933` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1957` | `sub_1957` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x19CB` | `sub_19CB` | FAR | 120 | Dispatcher: tabla de decisiones cmp+jcc (120 instr). | medium |
| `0x1A67` | `sub_1A67` | NEAR | 225 | Dispatcher: tabla de decisiones cmp+jcc (225 instr). | medium |
| `0x1ADE` | `sub_1ADE` | NEAR | 42 | Funcion mediana (42 instr, 3 calls). | low |
| `0x1B49` | `sub_1B49` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x1B6D` | `sub_1B6D` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x1B7E` | `sub_1B7E` | NEAR | 114 | Funcion compleja: 114 instrucciones, 7 llamadas, 3 branches. | low |
| `0x1CA8` | `sub_1CA8` | FAR | 38 | Funcion mediana (38 instr, 2 calls). | low |
| `0x1CB5` | `sub_1CB5` | NEAR | 55 | Funcion mediana (55 instr, 0 calls). | low |
| `0x1D08` | `sub_1D08` | NEAR | 36 | Iterador con instrucciones de string (movsb/scasb/...) (36 instr). | medium |
| `0x1D3C` | `sub_1D3C` | FAR | 138 | Dispatcher: tabla de decisiones cmp+jcc (138 instr). | medium |
| `0x1D5C` | `sub_1D5C` | NEAR | 145 | Dispatcher: tabla de decisiones cmp+jcc (145 instr). | medium |
| `0x1E0B` | `sub_1E0B` | NEAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `0x1E31` | `sub_1E31` | NEAR | 100 | Dispatcher: tabla de decisiones cmp+jcc (100 instr). | medium |
| `0x1EA2` | `sub_1EA2` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x1EC6` | `sub_1EC6` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x1ED4` | `sub_1ED4` | NEAR | 40 | Funcion mediana (40 instr, 3 calls). | low |
| `0x1F00` | `sub_1F00` | NEAR | 35 | Iterador con instrucciones de string (movsb/scasb/...) (35 instr). | medium |
| `0x1F18` | `sub_1F18` | NEAR | 60 | Funcion mediana (60 instr, 5 calls). | low |
| `0x1F40` | `sub_1F40` | NEAR | 65 | Funcion mediana (65 instr, 1 calls). | low |
| `0x1F9D` | `sub_1F9D` | NEAR | 53 | Dispatcher: tabla de decisiones cmp+jcc (53 instr). | medium |
| `0x1FD8` | `sub_1FD8` | NEAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `0x1FF9` | `sub_1FF9` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x201C` | `sub_201C` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x203F` | `sub_203F` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x205B` | `sub_205B` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x2089` | `sub_2089` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x20B9` | `sub_20B9` | NEAR | 39 | Funcion mediana (39 instr, 1 calls). | low |
| `0x2111` | `sub_2111` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x2133` | `sub_2133` | NEAR | 60 | Funcion mediana (60 instr, 1 calls). | low |
| `0x295E` | `sub_295E` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x298E` | `sub_298E` | NEAR | 402 | Dispatcher: tabla de decisiones cmp+jcc (402 instr). | medium |
| `0x2DE1` | `sub_2DE1` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x2E12` | `sub_2E12` | NEAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `0x320E` | `sub_320E` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x3577` | `sub_3577` | NEAR | 32 | Funcion mediana (32 instr, 2 calls). | low |
| `0x386E` | `sub_386E` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x389B` | `sub_389B` | NEAR | 48 | Dispatcher: tabla de decisiones cmp+jcc (48 instr). | medium |
| `0x3915` | `sub_3915` | NEAR | 63 | Funcion mediana (63 instr, 9 calls). | low |
| `0x39B8` | `sub_39B8` | NEAR | 61 | Dispatcher: tabla de decisiones cmp+jcc (61 instr). | medium |
| `0x3A52` | `sub_3A52` | NEAR | 46 | Funcion mediana (46 instr, 4 calls). | low |
| `0x3ACA` | `sub_3ACA` | NEAR | 64 | Funcion mediana (64 instr, 11 calls). | low |
| `0x3B7C` | `sub_3B7C` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x3B94` | `sub_3B94` | NEAR | 37 | Funcion mediana (37 instr, 5 calls). | low |
| `0x3BF1` | `sub_3BF1` | NEAR | 50 | Funcion mediana (50 instr, 7 calls). | low |
| `0x3C71` | `sub_3C71` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x3C8E` | `sub_3C8E` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x3CD1` | `sub_3CD1` | NEAR | 45 | Funcion mediana (45 instr, 5 calls). | low |
| `0x3D3D` | `sub_3D3D` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x3D8F` | `sub_3D8F` | NEAR | 159 | Dispatcher: tabla de decisiones cmp+jcc (159 instr). | medium |
| `0x3F09` | `sub_3F09` | NEAR | 53 | Dispatcher: tabla de decisiones cmp+jcc (53 instr). | medium |
| `0x3F8B` | `sub_3F8B` | NEAR | 116 | Dispatcher: tabla de decisiones cmp+jcc (116 instr). | medium |
| `0x40B0` | `sub_40B0` | NEAR | 233 | Dispatcher: tabla de decisiones cmp+jcc (233 instr). | medium |
| `0x430C` | `sub_430C` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x4335` | `sub_4335` | NEAR | 73 | Dispatcher: tabla de decisiones cmp+jcc (73 instr). | medium |
| `0x43C6` | `sub_43C6` | NEAR | 109 | Dispatcher: tabla de decisiones cmp+jcc (109 instr). | medium |
| `0x44D7` | `sub_44D7` | NEAR | 69 | Funcion mediana (69 instr, 5 calls). | low |
| `0x456B` | `sub_456B` | NEAR | 56 | Funcion mediana (56 instr, 5 calls). | low |
| `0x45E5` | `sub_45E5` | NEAR | 103 | Dispatcher: tabla de decisiones cmp+jcc (103 instr). | medium |
| `0x4C01` | `sub_4C01` | NEAR | 101 | Funcion compleja: 101 instrucciones, 4 llamadas, 4 branches. | low |
| `0x4ECE` | `sub_4ECE` | NEAR | 50 | Funcion mediana (50 instr, 4 calls). | low |
| `0x4FFA` | `sub_4FFA` | NEAR | 36 | Funcion mediana (36 instr, 3 calls). | low |
| `0x5055` | `sub_5055` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x507E` | `sub_507E` | NEAR | 73 | Dispatcher: tabla de decisiones cmp+jcc (73 instr). | medium |
| `0x5126` | `sub_5126` | FAR | 111 | Dispatcher: tabla de decisiones cmp+jcc (111 instr). | medium |
| `0x5239` | `sub_5239` | FAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x5249` | `sub_5249` | FAR | 38 | Funcion mediana (38 instr, 0 calls). | low |
| `0x5281` | `sub_5281` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x5284` | `sub_5284` | FAR | 35 | Funcion mediana (35 instr, 0 calls). | low |
| `0x52BE` | `sub_52BE` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x52E5` | `sub_52E5` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x5312` | `sub_5312` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x5317` | `sub_5317` | NEAR | 8 | Wrapper que delega en KERNEL.LOCALALLOC. | medium |
| `0x5325` | `sub_5325` | NEAR | 10 | Wrapper que delega en KERNEL.LOCALREALLOC. | medium |
| `0x5335` | `sub_5335` | FAR | 228 | Funcion compleja: 228 instrucciones, 4 llamadas, 11 branches. | low |
| `0x57F4` | `sub_57F4` | NEAR | 55 | Dispatcher: tabla de decisiones cmp+jcc (55 instr). | medium |
| `0x5868` | `sub_5868` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x588B` | `sub_588B` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x58B9` | `sub_58B9` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x58EB` | `sub_58EB` | NEAR | 58 | Dispatcher: tabla de decisiones cmp+jcc (58 instr). | medium |
| `0x598C` | `sub_598C` | FAR | 381 | Dispatcher: tabla de decisiones cmp+jcc (381 instr). | medium |
| `0x5CFF` | `sub_5CFF` | NEAR | 8 | Wrapper que delega en sub_57F4. | medium |
| `0x5D12` | `sub_5D12` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x5DD3` | `sub_5DD3` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x5E02` | `sub_5E02` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x5E4A` | `sub_5E4A` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x5E99` | `sub_5E99` | NEAR | 36 | Funcion mediana (36 instr, 2 calls). | low |
| `0x5EE1` | `sub_5EE1` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x5EEE` | `sub_5EEE` | FAR | 70 | Iterador con instrucciones de string (movsb/scasb/...) (70 instr). | medium |
| `0x5F8F` | `sub_5F8F` | NEAR | 35 | Funcion mediana (35 instr, 0 calls). | low |
| `0x5FD7` | `sub_5FD7` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x5FEB` | `sub_5FEB` | NEAR | 9 | Wrapper que delega en sub_6015. | medium |
| `0x5FFC` | `sub_5FFC` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x6015` | `sub_6015` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x6025` | `sub_6025` | NEAR | 12 | Wrapper que delega en KERNEL.POSTEVENT. | medium |
| `0x604A` | `sub_604A` | NEAR | 15 | Wrapper que delega en sub_6025. | medium |
| `0x6073` | `sub_6073` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x608D` | `sub_608D` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x6092` | `sub_6092` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x63EC` | `sub_63EC` | NEAR | 13 | Funcion sin clasificar definitiva (13 instr). | unknown |
| `0x6C09` | `sub_6C09` | NEAR | 41 | Funcion mediana (41 instr, 5 calls). | low |
| `0x6C74` | `sub_6C74` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x6CDA` | `sub_6CDA` | NEAR | 49 | Funcion mediana (49 instr, 2 calls). | low |
| `0x6D48` | `sub_6D48` | NEAR | 82 | Dispatcher: tabla de decisiones cmp+jcc (82 instr). | medium |
| `0x6E29` | `sub_6E29` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x7F06` | `sub_7F06` | NEAR | 241 | Dispatcher: tabla de decisiones cmp+jcc (241 instr). | medium |
| `0x8140` | `sub_8140` | NEAR | 69 | Funcion mediana (69 instr, 7 calls). | low |
| `0x835A` | `sub_835A` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x885C` | `sub_885C` | FAR | 78 | Dispatcher: tabla de decisiones cmp+jcc (78 instr). | medium |
