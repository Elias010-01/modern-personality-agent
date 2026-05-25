# Alphabetical list of named functions

Total: **548** functions with exported or known names.

| Function | Module | Kind | Instr | Description |
|----------|--------|------|------:|-------------|
| `ACCESSRESOURCE` | [KERNEL](KERNEL.md) | FAR | 57 | Calls DOS services via INT 21h (57 instr). |
| `ADDFONTRESOURCE` | [GDI](GDI.md) | FAR | 254 | Dispatcher: cmp+jcc decision table (254 instr). |
| `ADJUSTWINDOWRECT` | [USER](USER.md) | FAR | 51 | Dispatcher: cmp+jcc decision table (51 instr). |
| `ALLOCRESOURCE` | [KERNEL](KERNEL.md) | FAR | 76 | Iterator with loop (76 instr). |
| `ANSILOWER` | [KERNEL](KERNEL.md) | FAR | 14 | Converts an ANSI string to lower case. |
| `ANSINEXT` | [KERNEL](KERNEL.md) | FAR | 14 | Wrapper delegating to sub_4E65. |
| `ANSIPREV` | [KERNEL](KERNEL.md) | FAR | 19 | Iterator with string ops (movsb/scasb/...) (19 instr). |
| `ANSIUPPER` | [KERNEL](KERNEL.md) | FAR | 14 | Converts an ANSI string to upper case. |
| `ANYPOPUP` | [USER](USER.md) | FAR | 5 | Leaf function (no callees, 5 instr): likely arithmetic/conversion helper. |
| `ARC` | [GDI](GDI.md) | FAR | 42 | Draws an arc. |
| `BEGINPAINT` | [USER](USER.md) | FAR | 100 | Begins a WM_PAINT painting sequence. |
| `BITBLT` | [GDI](GDI.md) | FAR | 27 | Copies a rectangle of bits between DCs (block transfer). |
| `BITMAPBITS` | [GDI](GDI.md) | FAR | 62 | Mid-size function (62 instr, 2 calls). |
| `BRINGWINDOWTOTOP` | [USER](USER.md) | FAR | 25 | Unclassified function (25 instr). |
| `BRUTE` | [GDI](GDI.md) | FAR | 80 | Iterator with string ops (movsb/scasb/...) (80 instr). |
| `BUILDCOMMDCB` | [USER](USER.md) | FAR | 385 | Dispatcher: cmp+jcc decision table (385 instr). |
| `BUILDPDB` | [KERNEL](KERNEL.md) | FAR | 102 | Calls DOS services via INT 21h (102 instr). |
| `BUTTONWNDPROC` | [USER](USER.md) | FAR | 932 | Dispatcher: cmp+jcc decision table (932 instr). |
| `CALLMSGFILTER` | [USER](USER.md) | FAR | 6 | Leaf function (no callees, 6 instr): likely arithmetic/conversion helper. |
| `CALLPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 12 | Invokes a thunk previously created by MAKEPROCINSTANCE. |
| `CALLWINDOWPROC` | [USER](USER.md) | FAR | 52 | Mid-size function (52 instr, 2 calls). |
| `CARETBLINKPROC` | [USER](USER.md) | FAR | 98 | Dispatcher: cmp+jcc decision table (98 instr). |
| `CATCH` | [KERNEL](KERNEL.md) | FAR | 36 | Mid-size function (36 instr, 1 calls). |
| `CCLRBRK` | [COMM](COMM.md) | FAR | 19 | Unclassified function (19 instr). |
| `CEVT` | [COMM](COMM.md) | FAR | 16 | Unclassified function (16 instr). |
| `CEVTGET` | [COMM](COMM.md) | FAR | 16 | Unclassified function (16 instr). |
| `CEXTFCN` | [COMM](COMM.md) | FAR | 16 | Unclassified function (16 instr). |
| `CFLUSH` | [COMM](COMM.md) | FAR | 20 | Unclassified function (20 instr). |
| `CHANGECLIPBOARDCHAIN` | [USER](USER.md) | FAR | 65 | Dispatcher: cmp+jcc decision table (65 instr). |
| `CHANGEMENU` | [USER](USER.md) | FAR | 211 | Complex function: 211 instructions, 6 calls, 19 branches. |
| `CHECKCURSOR` | [CGA](CGA.md) | FAR | 22 | Unclassified function (22 instr). |
| `CHECKCURSOR` | [HERCULES](HERCULES.md) | FAR | 22 | Unclassified function (22 instr). |
| `CHECKDLGBUTTON` | [USER](USER.md) | FAR | 33 | Mid-size function (33 instr, 0 calls). |
| `CHECKMENUITEM` | [USER](USER.md) | FAR | 1 | Toggles the check mark on a menu item. |
| `CHECKRADIOBUTTON` | [USER](USER.md) | FAR | 35 | Mid-size function (35 instr, 0 calls). |
| `CHILDWINDOWFROMPOINT` | [USER](USER.md) | FAR | 35 | Mid-size function (35 instr, 1 calls). |
| `CLEARCOMMBREAK` | [USER](USER.md) | FAR | 17 | Unclassified function (17 instr). |
| `CLIENTTOSCREEN` | [USER](USER.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `CLIPCURSOR` | [USER](USER.md) | FAR | 68 | Dispatcher: cmp+jcc decision table (68 instr). |
| `CLOSECLIPBOARD` | [USER](USER.md) | FAR | 24 | Unclassified function (24 instr). |
| `CLOSECOMM` | [USER](USER.md) | FAR | 49 | Mid-size function (49 instr, 1 calls). |
| `CLOSEMETAFILE` | [GDI](GDI.md) | FAR | 168 | Dispatcher: cmp+jcc decision table (168 instr). |
| `CLOSESOUND` | [SOUND](SOUND.md) | FAR | 44 | Iterator with loop (44 instr). |
| `CLOSEWINDOW` | [USER](USER.md) | FAR | 18 | Unclassified function (18 instr). |
| `COMBINERGN` | [GDI](GDI.md) | FAR | 115 | Iterator with string ops (movsb/scasb/...) (115 instr). |
| `COMPATIBLEBITMAP` | [GDI](GDI.md) | FAR | 45 | Mid-size function (45 instr, 1 calls). |
| `COMPUPDATERECT` | [USER](USER.md) | FAR | 36 | Mid-size function (36 instr, 1 calls). |
| `COMPUPDATERGN` | [USER](USER.md) | FAR | 29 | Unclassified function (29 instr). |
| `CONTROL` | [CGA](CGA.md) | FAR | 31 | Iterator with string ops (movsb/scasb/...) (31 instr). |
| `CONTROL` | [HERCULES](HERCULES.md) | FAR | 31 | Iterator with string ops (movsb/scasb/...) (31 instr). |
| `CONTSCROLL` | [USER](USER.md) | FAR | 52 | Mid-size function (52 instr, 2 calls). |
| `COPY` | [GDI](GDI.md) | FAR | 21 | Unclassified function (21 instr). |
| `COPYMETAFILE` | [GDI](GDI.md) | FAR | 148 | Complex function: 148 instructions, 7 calls, 11 branches. |
| `COPYRECT` | [USER](USER.md) | FAR | 24 | Unclassified function (24 instr). |
| `COUNTCLIPBOARDFORMATS` | [USER](USER.md) | FAR | 15 | Leaf function (no callees, 15 instr): likely arithmetic/conversion helper. |
| `COUNTVOICENOTES` | [SOUND](SOUND.md) | FAR | 29 | Unclassified function (29 instr). |
| `CREATEBITMAP` | [GDI](GDI.md) | FAR | 57 | Creates a bitmap. |
| `CREATEBITMAPINDIRECT` | [GDI](GDI.md) | FAR | 126 | Constructor: creates bitmapindirect. |
| `CREATEBRUSHINDIRECT` | [GDI](GDI.md) | FAR | 73 | Constructor: creates brushindirect. |
| `CREATECARET` | [USER](USER.md) | FAR | 81 | Constructor: creates caret. |
| `CREATECOMPATIBLEBITMAP` | [GDI](GDI.md) | FAR | 2 | Creates a bitmap compatible with a DC. |
| `CREATECOMPATIBLEDC` | [GDI](GDI.md) | FAR | 43 | Creates a memory DC compatible with another DC. |
| `CREATECONVERTWINDOW` | [USER](USER.md) | FAR | 41 | Constructor: creates convertwindow. |
| `CREATEDC` | [GDI](GDI.md) | FAR | 2 | Creates a Device Context for a device. |
| `CREATEDIALOG` | [USER](USER.md) | FAR | 463 | Constructor: creates dialog. |
| `CREATEELLIPTICRGN` | [GDI](GDI.md) | FAR | 37 | Constructor: creates ellipticrgn. |
| `CREATEELLIPTICRGNINDIRECT` | [GDI](GDI.md) | FAR | 22 | Constructor: creates ellipticrgnindirect. |
| `CREATEFONT` | [GDI](GDI.md) | FAR | 54 | Creates a font with the given attributes. |
| `CREATEFONTINDIRECT` | [GDI](GDI.md) | FAR | 24 | Constructor: creates fontindirect. |
| `CREATEHATCHBRUSH` | [GDI](GDI.md) | FAR | 18 | Creates a brush with a hatched pattern. |
| `CREATEIC` | [GDI](GDI.md) | FAR | 1 | Constructor: creates ic. |
| `CREATEMENU` | [USER](USER.md) | FAR | 29 | Creates an empty menu. |
| `CREATEMETAFILE` | [GDI](GDI.md) | FAR | 74 | Constructor: creates metafile. |
| `CREATEPATTERNBRUSH` | [GDI](GDI.md) | FAR | 18 | Creates a brush from a bitmap. |
| `CREATEPEN` | [GDI](GDI.md) | FAR | 25 | Creates a pen with given style/width/colour. |
| `CREATEPENINDIRECT` | [GDI](GDI.md) | FAR | 20 | Constructor: creates penindirect. |
| `CREATEPOLYGONRGN` | [GDI](GDI.md) | FAR | 32 | Constructor: creates polygonrgn. |
| `CREATEPQ` | [GDI](GDI.md) | FAR | 45 | Constructor: creates pq. |
| `CREATERECTRGN` | [GDI](GDI.md) | FAR | 32 | Constructor: creates rectrgn. |
| `CREATERECTRGNINDIRECT` | [GDI](GDI.md) | FAR | 17 | Constructor: creates rectrgnindirect. |
| `CREATESOLIDBRUSH` | [GDI](GDI.md) | FAR | 18 | Creates a solid-colour brush. |
| `CREATESYSTEMTIMER` | [SYSTEM](SYSTEM.md) | FAR | 35 | Constructor: creates systemtimer. |
| `CREATEWINDOW` | [USER](USER.md) | FAR | 454 | Creates a Win16 window; returns HWND. |
| `CSETBRK` | [COMM](COMM.md) | FAR | 19 | Unclassified function (19 instr). |
| `CTX` | [COMM](COMM.md) | FAR | 16 | Unclassified function (16 instr). |
| `DEATH` | [GDI](GDI.md) | FAR | 12 | Unclassified function (12 instr). |
| `DEFINEHANDLETABLE` | [KERNEL](KERNEL.md) | FAR | 31 | Defines a module's handle table. |
| `DEFWINDOWPROC` | [USER](USER.md) | FAR | 466 | Default message handler used when WindowProc does not handle a message. |
| `DELETEATOM` | [KERNEL](KERNEL.md) | FAR | 23 | Destructor: frees tom. |
| `DELETEDC` | [GDI](GDI.md) | FAR | 153 | Deletes a DC. |
| `DELETEMETAFILE` | [GDI](GDI.md) | FAR | 22 | Destructor: frees etafile. |
| `DELETEPATHNAME` | [KERNEL](KERNEL.md) | FAR | 6 | Deletes a file by path. |
| `DELETEPQ` | [GDI](GDI.md) | FAR | 16 | Destructor: frees q. |
| `DESTROYCARET` | [USER](USER.md) | FAR | 27 | Destructor: frees caret. |
| `DESTROYMENU` | [USER](USER.md) | FAR | 37 | Destroys a menu and frees its resources. |
| `DESTROYTASKWINDOWS2` | [USER](USER.md) | FAR | 34 | Destructor: frees taskwindows2. |
| `DESTROYWINDOW` | [USER](USER.md) | FAR | 91 | Destroys a window and frees its resources. |
| `DEVICEMODE` | [CGA](CGA.md) | FAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. |
| `DEVICEMODE` | [HERCULES](HERCULES.md) | FAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. |
| `DIALOGBOX` | [USER](USER.md) | FAR | 120 | Loads and runs a modal dialog. |
| `DISABLE` | [CGA](CGA.md) | FAR | 20 | Unclassified function (20 instr). |
| `DISABLE` | [HERCULES](HERCULES.md) | FAR | 20 | Unclassified function (20 instr). |
| `DISABLE` | [MOUSE](MOUSE.md) | FAR | 34 | Calls DOS services via INT 21h (34 instr). |
| `DISABLEDOS` | [KERNEL](KERNEL.md) | FAR | 30 | Calls DOS services via INT 21h (30 instr). |
| `DISABLEOEMLAYER` | [USER](USER.md) | FAR | 19 | Unclassified function (19 instr). |
| `DISABLESYSTEMTIMERS` | [SYSTEM](SYSTEM.md) | FAR | 10 | Calls DOS services via INT 21h (10 instr). |
| `DISPATCHMESSAGE` | [USER](USER.md) | FAR | 41 | Dispatches a message to the appropriate window proc. |
| `DLGDIRLIST` | [USER](USER.md) | FAR | 333 | Dispatcher: cmp+jcc decision table (333 instr). |
| `DLGDIRSELECT` | [USER](USER.md) | FAR | 99 | Dispatcher: cmp+jcc decision table (99 instr). |
| `DLGWNDPROC` | [USER](USER.md) | FAR | 117 | Dispatcher: cmp+jcc decision table (117 instr). |
| `DMBITBLT` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMCOLORINFO` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMENUMDFONTS` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMENUMOBJ` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMOUTPUT` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMPIXEL` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMREALIZEOBJECT` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMSCANLR` | [GDI](GDI.md) | FAR | 1 | Trivial stub (1 instructions, no significant logic). |
| `DMSTRBLT` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `DMTRANSPOSE` | [GDI](GDI.md) | FAR | 80 | Iterator with string ops (movsb/scasb/...) (80 instr). |
| `DOS3CALL` | [KERNEL](KERNEL.md) | FAR | 2 | Calls DOS services via INT 21h (2 instr). |
| `DPXLATE` | [GDI](GDI.md) | FAR | 27 | Unclassified function (27 instr). |
| `DRAWICON` | [USER](USER.md) | FAR | 120 | Complex function: 120 instructions, 10 calls, 5 branches. |
| `DRAWMENUBAR` | [USER](USER.md) | FAR | 23 | Unclassified function (23 instr). |
| `DRAWTEXT` | [USER](USER.md) | FAR | 399 | Dispatcher: cmp+jcc decision table (399 instr). |
| `ELLIPSE` | [GDI](GDI.md) | FAR | 44 | Draws an ellipse. |
| `EMPTYCLIPBOARD` | [USER](USER.md) | FAR | 59 | Mid-size function (59 instr, 4 calls). |
| `ENABLE` | [CGA](CGA.md) | FAR | 32 | Mid-size function (32 instr, 0 calls). |
| `ENABLE` | [HERCULES](HERCULES.md) | FAR | 32 | Mid-size function (32 instr, 1 calls). |
| `ENABLE` | [MOUSE](MOUSE.md) | FAR | 22 | Unclassified function (22 instr). |
| `ENABLEDOS` | [KERNEL](KERNEL.md) | FAR | 75 | Calls DOS services via INT 21h (75 instr). |
| `ENABLEMENUITEM` | [USER](USER.md) | FAR | 2 | Enables/disables a menu item. |
| `ENABLEOEMLAYER` | [USER](USER.md) | FAR | 35 | Mid-size function (35 instr, 2 calls). |
| `ENABLESYSTEMTIMERS` | [SYSTEM](SYSTEM.md) | FAR | 17 | Calls DOS services via INT 21h (17 instr). |
| `ENABLEWINDOW` | [USER](USER.md) | FAR | 53 | Enables/disables input on a window. |
| `ENDDIALOG` | [USER](USER.md) | FAR | 90 | Ends a modal dialog. |
| `ENDMENU` | [USER](USER.md) | FAR | 27 | Unclassified function (27 instr). |
| `ENDPAINT` | [USER](USER.md) | FAR | 47 | Ends a painting sequence. |
| `ENUMCALLBACK` | [GDI](GDI.md) | FAR | 116 | Enumerator: iterates over callback. |
| `ENUMCHILDWINDOWS` | [USER](USER.md) | FAR | 124 | Enumerator: iterates over childwindows. |
| `ENUMCLIPBOARDFORMATS` | [USER](USER.md) | FAR | 45 | Enumerator: iterates over clipboardformats. |
| `ENUMDFONTS` | [CGA](CGA.md) | FAR | 14 | Enumerator: iterates over dfonts. |
| `ENUMDFONTS` | [HERCULES](HERCULES.md) | FAR | 14 | Enumerator: iterates over dfonts. |
| `ENUMFONTS` | [GDI](GDI.md) | FAR | 296 | Enumerator: iterates over fonts. |
| `ENUMOBJ` | [CGA](CGA.md) | FAR | 64 | Enumerator: iterates over obj. |
| `ENUMOBJ` | [HERCULES](HERCULES.md) | FAR | 64 | Enumerator: iterates over obj. |
| `ENUMOBJECTS` | [GDI](GDI.md) | FAR | 51 | Enumerator: iterates over objects. |
| `ENUMPROPS` | [USER](USER.md) | FAR | 79 | Enumerator: iterates over props. |
| `ENUMWINDOWS` | [USER](USER.md) | FAR | 10 | Enumerator: iterates over windows. |
| `EQUALRGN` | [GDI](GDI.md) | FAR | 45 | Dispatcher: cmp+jcc decision table (45 instr). |
| `ESCAPE` | [GDI](GDI.md) | FAR | 24 | Unclassified function (24 instr). |
| `ESCAPECOMMFUNCTION` | [USER](USER.md) | FAR | 39 | Mid-size function (39 instr, 1 calls). |
| `EXCLUDECLIPRECT` | [GDI](GDI.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `EXITKERNEL` | [KERNEL](KERNEL.md) | FAR | 41 | Calls DOS services via INT 21h (41 instr). |
| `EXITWINDOWS` | [USER](USER.md) | FAR | 60 | Shuts Windows down and returns to DOS. |
| `EXTRACTPQ` | [GDI](GDI.md) | FAR | 18 | Unclassified function (18 instr). |
| `FATALEXIT` | [KERNEL](KERNEL.md) | FAR | 92 | Calls DOS services via INT 21h (92 instr). |
| `FILLRECT` | [USER](USER.md) | FAR | 38 | Fills a rectangle with the given brush. |
| `FILLRGN` | [GDI](GDI.md) | FAR | 38 | Dispatcher: cmp+jcc decision table (38 instr). |
| `FILLWINDOW` | [USER](USER.md) | FAR | 24 | Unclassified function (24 instr). |
| `FINDRESOURCE` | [KERNEL](KERNEL.md) | FAR | 109 | Looks up a resource by type and name. |
| `FINDWINDOW` | [USER](USER.md) | FAR | 47 | Finds a window by class and/or title. |
| `FLASHWINDOW` | [USER](USER.md) | FAR | 43 | Dispatcher: cmp+jcc decision table (43 instr). |
| `FLOODFILL` | [GDI](GDI.md) | FAR | 123 | Fills an area with the current brush. |
| `FLUSHCOMM` | [USER](USER.md) | FAR | 18 | Unclassified function (18 instr). |
| `FORMAT` | [MSDOSD](MSDOSD.md) | FAR | 476 | Iterator with string ops (movsb/scasb/...) (476 instr). |
| `FRAMERECT` | [USER](USER.md) | FAR | 29 | Draws the border of a rectangle. |
| `FRAMERGN` | [GDI](GDI.md) | FAR | 548 | Dispatcher: cmp+jcc decision table (548 instr). |
| `FREELIBRARY` | [KERNEL](KERNEL.md) | FAR | 72 | Decrements module refcount; unloads when it reaches 0. |
| `FREEPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 31 | Frees a thunk created by MAKEPROCINSTANCE. |
| `FREERESOURCE` | [KERNEL](KERNEL.md) | FAR | 61 | Frees a resource. |
| `GDIINITAPP` | [GDI](GDI.md) | FAR | 21 | Unclassified function (21 instr). |
| `GETACTIVEWINDOW` | [USER](USER.md) | FAR | 386 | Returns the active HWND. |
| `GETATOMHANDLE` | [KERNEL](KERNEL.md) | FAR | 17 | Getter: returns atomhandle. |
| `GETATOMNAME` | [KERNEL](KERNEL.md) | FAR | 62 | Getter: returns atomname. |
| `GETBITMAPBITS` | [GDI](GDI.md) | FAR | 2 | Getter: returns bitmapbits. |
| `GETBITMAPDIMENSION` | [GDI](GDI.md) | FAR | 19 | Getter: returns bitmapdimension. |
| `GETBKCOLOR` | [GDI](GDI.md) | FAR | 15 | Getter: returns bkcolor. |
| `GETCARETBLINKTIME` | [USER](USER.md) | FAR | 92 | Getter: returns caretblinktime. |
| `GETCARETPOS` | [USER](USER.md) | FAR | 8 | Getter: returns caretpos. |
| `GETCLASSNAME` | [USER](USER.md) | FAR | 75 | Getter: returns classname. |
| `GETCLIENTRECT` | [USER](USER.md) | FAR | 44 | Gets the client area of a window. |
| `GETCLIPBOARDDATA` | [USER](USER.md) | FAR | 43 | Getter: returns clipboarddata. |
| `GETCLIPBOARDFORMATNAME` | [USER](USER.md) | FAR | 23 | Getter: returns clipboardformatname. |
| `GETCLIPBOARDOWNER` | [USER](USER.md) | FAR | 15 | Getter: returns clipboardowner. |
| `GETCLIPBOARDVIEWER` | [USER](USER.md) | FAR | 115 | Getter: returns clipboardviewer. |
| `GETCLIPBOX` | [GDI](GDI.md) | FAR | 38 | Getter: returns clipbox. |
| `GETCODEHANDLE` | [KERNEL](KERNEL.md) | FAR | 46 | Returns handle of the code segment containing a function. |
| `GETCOMMERROR` | [USER](USER.md) | FAR | 61 | Getter: returns commerror. |
| `GETCOMMEVENTMASK` | [USER](USER.md) | FAR | 18 | Getter: returns commeventmask. |
| `GETCOMMSTATE` | [USER](USER.md) | FAR | 43 | Getter: returns commstate. |
| `GETCONTINUINGTEXTEXTENT` | [GDI](GDI.md) | FAR | 21 | Getter: returns continuingtextextent. |
| `GETCONTROLBRUSH` | [USER](USER.md) | FAR | 24 | Getter: returns controlbrush. |
| `GETCURRENTPDB` | [KERNEL](KERNEL.md) | FAR | 8 | Returns the current PDB (DOS Program Data Block). |
| `GETCURRENTTASK` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: returns currenttask. |
| `GETCURRENTTIME` | [USER](USER.md) | FAR | 43 | Getter: returns currenttime. |
| `GETCURSORPOS` | [USER](USER.md) | FAR | 9 | Getter: returns cursorpos. |
| `GETDC` | [USER](USER.md) | FAR | 8 | Gets the display context (DC) of a window. |
| `GETDCB` | [COMM](COMM.md) | FAR | 19 | Getter: returns dcb. |
| `GETDEVICECAPS` | [GDI](GDI.md) | FAR | 24 | Retrieves device capabilities. |
| `GETDLGITEM` | [USER](USER.md) | FAR | 32 | Returns the HWND of a dialog control. |
| `GETDLGITEMINT` | [USER](USER.md) | FAR | 93 | Reads an integer from a dialog control. |
| `GETDLGITEMTEXT` | [USER](USER.md) | FAR | 32 | Reads the text of a dialog control. |
| `GETDOUBLECLICKTIME` | [USER](USER.md) | FAR | 4 | Getter: returns doubleclicktime. |
| `GETENVIRONMENT` | [GDI](GDI.md) | FAR | 48 | Getter: returns environment. |
| `GETFOCUS` | [USER](USER.md) | FAR | 4 | Returns the focused HWND. |
| `GETINSTANCEDATA` | [KERNEL](KERNEL.md) | FAR | 31 | Returns a per-task instance-data slot. |
| `GETKEYSTATE` | [USER](USER.md) | FAR | 7 | Getter: returns keystate. |
| `GETLASTDISKCHANGE` | [KERNEL](KERNEL.md) | FAR | 3 | Detects whether the disk was recently changed. |
| `GETLPERRMODE` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: returns lperrmode. |
| `GETMENU` | [USER](USER.md) | FAR | 10 | Returns the menu handle of a window. |
| `GETMENUSTRING` | [USER](USER.md) | FAR | 56 | Getter: returns menustring. |
| `GETMESSAGE` | [USER](USER.md) | FAR | 6 | Removes a message from the queue (blocking). |
| `GETMESSAGE2` | [USER](USER.md) | FAR | 105 | Getter: returns message2. |
| `GETMESSAGEPOS` | [USER](USER.md) | FAR | 10 | Getter: returns messagepos. |
| `GETMESSAGETIME` | [USER](USER.md) | FAR | 10 | Getter: returns messagetime. |
| `GETMETAFILE` | [GDI](GDI.md) | FAR | 14 | Getter: returns metafile. |
| `GETMETAFILEBITS` | [GDI](GDI.md) | FAR | 48 | Getter: returns metafilebits. |
| `GETMODULEFILENAME` | [KERNEL](KERNEL.md) | FAR | 33 | Retrieves the full file path of a loaded module. |
| `GETMODULEHANDLE` | [KERNEL](KERNEL.md) | FAR | 29 | Returns the module handle of a module loaded by name. |
| `GETMODULEUSAGE` | [KERNEL](KERNEL.md) | FAR | 16 | Returns the current refcount of a module. |
| `GETNEARESTCOLOR` | [GDI](GDI.md) | FAR | 31 | Getter: returns nearestcolor. |
| `GETPARENT` | [USER](USER.md) | FAR | 93 | Returns the parent HWND. |
| `GETPIXEL` | [GDI](GDI.md) | FAR | 65 | Reads the colour of the pixel at (x,y). |
| `GETPROCADDRESS` | [KERNEL](KERNEL.md) | FAR | 40 | Resolves an export name to a FAR PTR address. |
| `GETPROFILEINT` | [KERNEL](KERNEL.md) | FAR | 43 | Getter: returns profileint. |
| `GETPROFILESTRING` | [KERNEL](KERNEL.md) | FAR | 72 | Getter: returns profilestring. |
| `GETPROP` | [USER](USER.md) | FAR | 30 | Getter: returns prop. |
| `GETRGNBOX` | [GDI](GDI.md) | FAR | 32 | Getter: returns rgnbox. |
| `GETSCROLLPOS` | [USER](USER.md) | FAR | 46 | Getter: returns scrollpos. |
| `GETSCROLLRANGE` | [USER](USER.md) | FAR | 56 | Getter: returns scrollrange. |
| `GETSTOCKOBJECT` | [GDI](GDI.md) | FAR | 9 | Returns a system stock object (BLACK_PEN, WHITE_BRUSH, etc). |
| `GETSUBMENU` | [USER](USER.md) | FAR | 141 | Getter: returns submenu. |
| `GETSYSCOLOR` | [USER](USER.md) | FAR | 8 | Getter: returns syscolor. |
| `GETSYSMODALWINDOW` | [USER](USER.md) | FAR | 5 | Getter: returns sysmodalwindow. |
| `GETSYSTEMMENU` | [USER](USER.md) | FAR | 63 | Getter: returns systemmenu. |
| `GETSYSTEMMETRICS` | [USER](USER.md) | FAR | 9 | Getter: returns systemmetrics. |
| `GETTASKQUEUE` | [KERNEL](KERNEL.md) | FAR | 3 | Getter: returns taskqueue. |
| `GETTEMPDRIVE` | [KERNEL](KERNEL.md) | FAR | 31 | Returns the recommended temp drive letter (A-Z). |
| `GETTEMPFILENAME` | [KERNEL](KERNEL.md) | FAR | 124 | Builds a unique temporary file name. |
| `GETTEXTCHARACTEREXTRA` | [GDI](GDI.md) | FAR | 24 | Getter: returns textcharacterextra. |
| `GETTEXTEXTENT` | [GDI](GDI.md) | FAR | 21 | Computes the (cx,cy) size occupied by a string. |
| `GETTEXTFACE` | [GDI](GDI.md) | FAR | 57 | Getter: returns textface. |
| `GETTEXTMETRICS` | [GDI](GDI.md) | FAR | 244 | Getter: returns textmetrics. |
| `GETTHRESHOLDEVENT` | [SOUND](SOUND.md) | FAR | 23 | Getter: returns thresholdevent. |
| `GETTHRESHOLDSTATUS` | [SOUND](SOUND.md) | FAR | 24 | Getter: returns thresholdstatus. |
| `GETTICKCOUNT` | [USER](USER.md) | FAR | 3 | Getter: returns tickcount. |
| `GETTIMERRESOLUTION` | [USER](USER.md) | FAR | 6 | Getter: returns timerresolution. |
| `GETUPDATERECT` | [USER](USER.md) | FAR | 91 | Getter: returns updaterect. |
| `GETVERSION` | [KERNEL](KERNEL.md) | FAR | 2 | Returns Windows version in AX (low=major, high=minor). |
| `GETWC2` | [USER](USER.md) | FAR | 25 | Getter: returns wc2. |
| `GETWINDOWDC` | [USER](USER.md) | FAR | 7 | Getter: returns windowdc. |
| `GETWINDOWLONG` | [USER](USER.md) | FAR | 2 | Getter: returns windowlong. |
| `GETWINDOWRECT` | [USER](USER.md) | FAR | 17 | Gets the screen-absolute position of a window. |
| `GETWINDOWTEXT` | [USER](USER.md) | FAR | 16 | Reads a window's title (or text). |
| `GETWINDOWTEXTLENGTH` | [USER](USER.md) | FAR | 17 | Getter: returns windowtextlength. |
| `GLOBALALLOC` | [KERNEL](KERNEL.md) | FAR | 22 | Allocates a block from the system global heap; returns a HANDLE. |
| `GLOBALCOMPACT` | [KERNEL](KERNEL.md) | FAR | 28 | Compacts the global heap by moving blocks. |
| `GLOBALFLAGS` | [KERNEL](KERNEL.md) | FAR | 7 | Returns flags and refcount of a global block. |
| `GLOBALFREE` | [KERNEL](KERNEL.md) | FAR | 19 | Frees a global block identified by HANDLE. |
| `GLOBALFREEALL` | [KERNEL](KERNEL.md) | FAR | 36 | Iterator with loop (36 instr). |
| `GLOBALHANDLE` | [KERNEL](KERNEL.md) | FAR | 2 | Returns the HANDLE for a global pointer. |
| `GLOBALLOCK` | [KERNEL](KERNEL.md) | FAR | 6 | Locks a global block and returns a FAR pointer. |
| `GLOBALMASTERHANDLE` | [KERNEL](KERNEL.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `GLOBALREALLOC` | [KERNEL](KERNEL.md) | FAR | 22 | Resizes a global block. |
| `GLOBALSIZE` | [KERNEL](KERNEL.md) | FAR | 12 | Returns the size of a global block. |
| `GLOBALUNLOCK` | [KERNEL](KERNEL.md) | FAR | 5 | Unlocks a previously locked global block. |
| `GRAYSTRING` | [USER](USER.md) | FAR | 138 | Dispatcher: cmp+jcc decision table (138 instr). |
| `GSV` | [GDI](GDI.md) | FAR | 23 | Unclassified function (23 instr). |
| `HIDECARET` | [USER](USER.md) | FAR | 21 | Unclassified function (21 instr). |
| `HILITEMENUITEM` | [USER](USER.md) | FAR | 87 | Dispatcher: cmp+jcc decision table (87 instr). |
| `ICONNAMEWNDPROC` | [USER](USER.md) | FAR | 83 | Complex function: 83 instructions, 3 calls, 2 branches. |
| `ICONSIZE` | [USER](USER.md) | FAR | 11 | Unclassified function (11 instr). |
| `ICONWNDPROC` | [USER](USER.md) | FAR | 310 | Dispatcher: cmp+jcc decision table (310 instr). |
| `INFLATERECT` | [USER](USER.md) | FAR | 22 | Unclassified function (22 instr). |
| `INICOM` | [COMM](COMM.md) | FAR | 15 | Wrapper delegating to sub_01D1. |
| `INITAPP` | [USER](USER.md) | FAR | 90 | Initializes app. |
| `INITATOMTABLE` | [KERNEL](KERNEL.md) | FAR | 32 | Initializes atomtable. |
| `INITTASK` | [KERNEL](KERNEL.md) | FAR | 83 | Initializes the Windows task structure. |
| `INQUIRE` | [CGA](CGA.md) | FAR | 23 | Unclassified function (23 instr). |
| `INQUIRE` | [HERCULES](HERCULES.md) | FAR | 23 | Unclassified function (23 instr). |
| `INQUIRE` | [MOUSE](MOUSE.md) | FAR | 23 | Unclassified function (23 instr). |
| `INQUIRELONGINTS` | [SYSTEM](SYSTEM.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `INQUIREVISRGN` | [GDI](GDI.md) | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. |
| `INSENDMESSAGE` | [USER](USER.md) | FAR | 65 | Dispatcher: cmp+jcc decision table (65 instr). |
| `INSERTPQ` | [GDI](GDI.md) | FAR | 123 | Dispatcher: cmp+jcc decision table (123 instr). |
| `INTERNALCREATEDC` | [GDI](GDI.md) | FAR | 502 | Iterator with string ops (movsb/scasb/...) (502 instr). |
| `INTERSECTCLIPRECT` | [GDI](GDI.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `INTERSECTRECT` | [USER](USER.md) | FAR | 58 | Iterator with string ops (movsb/scasb/...) (58 instr). |
| `INTERSECTVISRECT` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `INVALIDATERECT` | [USER](USER.md) | FAR | 8 | Marks a rectangle as needing repaint. |
| `INVALIDATERGN` | [USER](USER.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `INVERTRECT` | [USER](USER.md) | FAR | 79 | Inverts colours inside a rectangle. |
| `INVERTRGN` | [GDI](GDI.md) | FAR | 36 | Mid-size function (36 instr, 1 calls). |
| `ISCHILD` | [USER](USER.md) | FAR | 33 | Predicate: checks whether child. |
| `ISCLIPBOARDFORMATAVAILABLE` | [USER](USER.md) | FAR | 23 | Predicate: checks whether clipboardformatavailable. |
| `ISDIALOGMESSAGE` | [USER](USER.md) | FAR | 327 | Processes keyboard messages in a modeless dialog. |
| `ISDLGBUTTONCHECKED` | [USER](USER.md) | FAR | 35 | Predicate: checks whether dlgbuttonchecked. |
| `ISICONIC` | [USER](USER.md) | FAR | 2 | Checks whether a window is minimized. |
| `ISRECTEMPTY` | [USER](USER.md) | FAR | 24 | Predicate: checks whether rectempty. |
| `ISSCREENGRAB` | [KERNEL](KERNEL.md) | FAR | 2 | Predicate: checks whether screengrab. |
| `ISTWOBYTECHARPREFIX` | [USER](USER.md) | FAR | 29 | Predicate: checks whether twobytecharprefix. |
| `ISWINDOW` | [USER](USER.md) | FAR | 16 | Checks whether an HWND is valid. |
| `ISWINDOWENABLED` | [USER](USER.md) | FAR | 18 | Predicate: checks whether windowenabled. |
| `ISWINDOWVISIBLE` | [USER](USER.md) | FAR | 22 | Checks whether a window is visible. |
| `KILLSYSTEMTIMER` | [SYSTEM](SYSTEM.md) | FAR | 34 | Iterator with string ops (movsb/scasb/...) (34 instr). |
| `KILLSYSTEMTIMER` | [USER](USER.md) | FAR | 1 | Trivial stub (1 instructions, no significant logic). |
| `KILLTIMER` | [USER](USER.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `KILLTIMER2` | [USER](USER.md) | FAR | 123 | Dispatcher: cmp+jcc decision table (123 instr). |
| `LINEDDA` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `LINETO` | [GDI](GDI.md) | FAR | 54 | Draws a line from the cursor to (x,y). |
| `LOADACCELERATORS` | [USER](USER.md) | FAR | 28 | Loads an accelerator table. |
| `LOADBITMAP` | [USER](USER.md) | FAR | 189 | Loads a BITMAP from a resource. |
| `LOADCURSOR` | [USER](USER.md) | FAR | 20 | Loads a CURSOR from a resource. |
| `LOADICON` | [USER](USER.md) | FAR | 20 | Loads an ICON from a resource. |
| `LOADLIBRARY` | [KERNEL](KERNEL.md) | FAR | 8 | Loads a DLL/EXE and returns its module handle. |
| `LOADMENU` | [USER](USER.md) | FAR | 268 | Loads a MENU from a resource. |
| `LOADMODULE` | [KERNEL](KERNEL.md) | FAR | 381 | Loads an NE module into memory and runs its startup code. |
| `LOADRESOURCE` | [KERNEL](KERNEL.md) | FAR | 140 | Loads a generic resource. |
| `LOADSTRING` | [USER](USER.md) | FAR | 80 | Loads a STRING from a resource. |
| `LOCALALLOC` | [KERNEL](KERNEL.md) | FAR | 44 | Allocates a block in the local (DS) heap. |
| `LOCALCOMPACT` | [KERNEL](KERNEL.md) | FAR | 23 | Compacts the local heap. |
| `LOCALFLAGS` | [KERNEL](KERNEL.md) | FAR | 11 | Flags of a local block. |
| `LOCALFREE` | [KERNEL](KERNEL.md) | FAR | 21 | Frees a local block. |
| `LOCALHANDLE` | [KERNEL](KERNEL.md) | FAR | 11 | HANDLE of a local pointer. |
| `LOCALINIT` | [KERNEL](KERNEL.md) | FAR | 74 | Initializes a local heap inside a segment. |
| `LOCALLOCK` | [KERNEL](KERNEL.md) | FAR | 14 | Locks a local block and returns a NEAR pointer. |
| `LOCALNOTIFY` | [KERNEL](KERNEL.md) | FAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. |
| `LOCALREALLOC` | [KERNEL](KERNEL.md) | FAR | 143 | Resizes a local block. |
| `LOCALSIZE` | [KERNEL](KERNEL.md) | FAR | 10 | Size of a local block. |
| `LOCALUNLOCK` | [KERNEL](KERNEL.md) | FAR | 15 | Unlocks a local block. |
| `LOCKCURRENTTASK` | [KERNEL](KERNEL.md) | FAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. |
| `LOCKRESOURCE` | [KERNEL](KERNEL.md) | FAR | 63 | Iterator with loop (63 instr). |
| `LOCKSEGMENT` | [KERNEL](KERNEL.md) | FAR | 4 | Unclassified function (4 instr). |
| `LOCKUNLOCK` | [GDI](GDI.md) | FAR | 122 | Dispatcher: cmp+jcc decision table (122 instr). |
| `LPTODP` | [GDI](GDI.md) | FAR | 1 | Trivial stub (1 instructions, no significant logic). |
| `LSTRCAT` | [KERNEL](KERNEL.md) | FAR | 6 | Concatenates two FAR PTR strings. |
| `LSTRCMP` | [KERNEL](KERNEL.md) | FAR | 34 | Compares two FAR PTR strings (signed). |
| `LSTRCPY` | [KERNEL](KERNEL.md) | FAR | 9 | Copies an ASCIIZ string FAR PTR -> FAR PTR. |
| `LSTRLEN` | [KERNEL](KERNEL.md) | FAR | 13 | Length of a FAR ASCIIZ string. |
| `MAKEPROCINSTANCE` | [KERNEL](KERNEL.md) | FAR | 70 | Creates a thunk binding an instance's DS to a proc. |
| `MAPDIALOGRECT` | [USER](USER.md) | FAR | 50 | Mid-size function (50 instr, 0 calls). |
| `MENUITEMSTATE` | [USER](USER.md) | FAR | 58 | Mid-size function (58 instr, 3 calls). |
| `MENUWNDPROC` | [USER](USER.md) | FAR | 67 | Mid-size function (67 instr, 2 calls). |
| `MESSAGEBEEP` | [USER](USER.md) | FAR | 1 | Trivial stub (1 instructions, no significant logic). |
| `MESSAGEBOX` | [USER](USER.md) | FAR | 608 | Displays a predefined message dialog. |
| `MESSAGEBOXWNDPROC` | [USER](USER.md) | FAR | 669 | Dispatcher: cmp+jcc decision table (669 instr). |
| `MINPQ` | [GDI](GDI.md) | FAR | 18 | Unclassified function (18 instr). |
| `MOVECURSOR` | [CGA](CGA.md) | FAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. |
| `MOVECURSOR` | [HERCULES](HERCULES.md) | FAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. |
| `MOVETO` | [GDI](GDI.md) | FAR | 29 | Moves the drawing cursor to (x,y). |
| `MOVEWINDOW` | [USER](USER.md) | FAR | 49 | Moves and resizes a window. |
| `MULDIV` | [GDI](GDI.md) | FAR | 50 | Mid-size function (50 instr, 0 calls). |
| `MYOPENCOMM` | [USER](USER.md) | FAR | 110 | Complex function: 110 instructions, 2 calls, 9 branches. |
| `MYOPENSOUND` | [SOUND](SOUND.md) | FAR | 130 | Iterator with loop (130 instr). |
| `NETBIOSCALL` | [KERNEL](KERNEL.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `NOHOOKDOSCALL` | [KERNEL](KERNEL.md) | FAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. |
| `OFFSETCLIPRGN` | [GDI](GDI.md) | FAR | 54 | Mid-size function (54 instr, 2 calls). |
| `OFFSETORG` | [GDI](GDI.md) | FAR | 29 | Unclassified function (29 instr). |
| `OFFSETRECT` | [USER](USER.md) | FAR | 22 | Unclassified function (22 instr). |
| `OFFSETRGN` | [GDI](GDI.md) | FAR | 26 | Unclassified function (26 instr). |
| `OFFSETVIEWPORTORG` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `OFFSETVISRGN` | [GDI](GDI.md) | FAR | 32 | Mid-size function (32 instr, 3 calls). |
| `OFFSETWINDOWORG` | [GDI](GDI.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `OPENCLIPBOARD` | [USER](USER.md) | FAR | 37 | Mid-size function (37 instr, 1 calls). |
| `OPENFILE` | [KERNEL](KERNEL.md) | FAR | 242 | Opens a file. Equivalent to INT 21h fn 3Dh with Windows paths. |
| `OPENJOB` | [GDI](GDI.md) | FAR | 148 | Dispatcher: cmp+jcc decision table (148 instr). |
| `OPENPATHNAME` | [KERNEL](KERNEL.md) | FAR | 35 | Opens a file by absolute path. |
| `OUTPUT` | [CGA](CGA.md) | FAR | 206 | Iterator with string ops (movsb/scasb/...) (206 instr). |
| `OUTPUT` | [HERCULES](HERCULES.md) | FAR | 206 | Iterator with string ops (movsb/scasb/...) (206 instr). |
| `PAINTRECT` | [USER](USER.md) | FAR | 25 | Unclassified function (25 instr). |
| `PAINTRGN` | [GDI](GDI.md) | FAR | 37 | Mid-size function (37 instr, 1 calls). |
| `PATBLT` | [GDI](GDI.md) | FAR | 38 | Paints a rectangle with the current brush. |
| `PEEKMESSAGE` | [USER](USER.md) | FAR | 2 | Removes/inspects a message without blocking. |
| `PIE` | [GDI](GDI.md) | FAR | 41 | Draws a pie slice. |
| `PIXEL` | [CGA](CGA.md) | FAR | 75 | Iterator with string ops (movsb/scasb/...) (75 instr). |
| `PIXEL` | [HERCULES](HERCULES.md) | FAR | 75 | Iterator with string ops (movsb/scasb/...) (75 instr). |
| `PIXTOLINE` | [GDI](GDI.md) | FAR | 95 | Dispatcher: cmp+jcc decision table (95 instr). |
| `PLAYMETAFILE` | [GDI](GDI.md) | FAR | 134 | Dispatcher: cmp+jcc decision table (134 instr). |
| `POLYGON` | [GDI](GDI.md) | FAR | 45 | Draws a polygon. |
| `POLYLINE` | [GDI](GDI.md) | FAR | 76 | Draws a sequence of lines. |
| `POSTAPPMESSAGE` | [USER](USER.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `POSTEVENT` | [KERNEL](KERNEL.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `POSTMESSAGE` | [USER](USER.md) | FAR | 5 | Posts an asynchronous message to a window's queue. |
| `POSTMESSAGE2` | [USER](USER.md) | FAR | 44 | Mid-size function (44 instr, 3 calls). |
| `POSTQUITMESSAGE` | [USER](USER.md) | FAR | 13 | Unclassified function (13 instr). |
| `POSTSYSERROR` | [USER](USER.md) | FAR | 14 | Unclassified function (14 instr). |
| `PTINRECT` | [USER](USER.md) | FAR | 28 | Dispatcher: cmp+jcc decision table (28 instr). |
| `PTINREGION` | [GDI](GDI.md) | FAR | 34 | Mid-size function (34 instr, 0 calls). |
| `PTVISIBLE` | [GDI](GDI.md) | FAR | 42 | Mid-size function (42 instr, 2 calls). |
| `QUERYABORT` | [GDI](GDI.md) | FAR | 25 | Unclassified function (25 instr). |
| `RCOS` | [GDI](GDI.md) | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. |
| `READCOMM` | [USER](USER.md) | FAR | 62 | Dispatcher: cmp+jcc decision table (62 instr). |
| `REALIZEOBJECT` | [CGA](CGA.md) | FAR | 34 | Dispatcher: cmp+jcc decision table (34 instr). |
| `REALIZEOBJECT` | [HERCULES](HERCULES.md) | FAR | 34 | Dispatcher: cmp+jcc decision table (34 instr). |
| `RECCOM` | [COMM](COMM.md) | FAR | 21 | Unclassified function (21 instr). |
| `RECTANGLE` | [GDI](GDI.md) | FAR | 528 | Draws a rectangle using the current pen and brush. |
| `RECTSTUFF` | [GDI](GDI.md) | FAR | 93 | Complex function: 93 instructions, 6 calls, 8 branches. |
| `RECTVISIBLE` | [GDI](GDI.md) | FAR | 99 | Iterator with string ops (movsb/scasb/...) (99 instr). |
| `REGISTERCLASS` | [USER](USER.md) | FAR | 89 | Registers a window class. |
| `REGISTERCLIPBOARDFORMAT` | [USER](USER.md) | FAR | 17 | Registers isterclipboardformat. |
| `REGISTERWINDOWMESSAGE` | [USER](USER.md) | FAR | 6 | Registers isterwindowmessage. |
| `RELEASECAPTURE` | [USER](USER.md) | FAR | 7 | Unclassified function (7 instr). |
| `RELEASEDC` | [USER](USER.md) | FAR | 26 | Releases a DC obtained via GetDC. |
| `REMOVEFONTRESOURCE` | [GDI](GDI.md) | FAR | 95 | Dispatcher: cmp+jcc decision table (95 instr). |
| `REMOVEPROP` | [USER](USER.md) | FAR | 44 | Iterator with string ops (movsb/scasb/...) (44 instr). |
| `REPLYMESSAGE` | [USER](USER.md) | FAR | 33 | Replies to a cross-task SendMessage. |
| `RESTOREDC` | [GDI](GDI.md) | FAR | 69 | Restores a previously saved DC state. |
| `RESTOREVISRGN` | [GDI](GDI.md) | FAR | 32 | Mid-size function (32 instr, 3 calls). |
| `RESURRECTION` | [GDI](GDI.md) | FAR | 20 | Unclassified function (20 instr). |
| `ROUNDRECT` | [GDI](GDI.md) | FAR | 40 | Mid-size function (40 instr, 0 calls). |
| `RSIN` | [GDI](GDI.md) | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. |
| `SAVEDC` | [GDI](GDI.md) | FAR | 78 | Saves the current DC state. |
| `SAVEVISRGN` | [GDI](GDI.md) | FAR | 30 | Unclassified function (30 instr). |
| `SBWNDPROC` | [USER](USER.md) | FAR | 409 | Dispatcher: cmp+jcc decision table (409 instr). |
| `SCALEEXT` | [GDI](GDI.md) | FAR | 55 | Mid-size function (55 instr, 1 calls). |
| `SCALEVIEWPORTEXT` | [GDI](GDI.md) | FAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. |
| `SCALEWINDOWEXT` | [GDI](GDI.md) | FAR | 3 | Trivial stub (3 instructions, no significant logic). |
| `SCANLR` | [CGA](CGA.md) | FAR | 114 | Iterator with string ops (movsb/scasb/...) (114 instr). |
| `SCANLR` | [GDI](GDI.md) | FAR | 56 | Iterator with string ops (movsb/scasb/...) (56 instr). |
| `SCANLR` | [HERCULES](HERCULES.md) | FAR | 114 | Iterator with string ops (movsb/scasb/...) (114 instr). |
| `SCREENTOCLIENT` | [USER](USER.md) | FAR | 23 | Unclassified function (23 instr). |
| `SCROLLWINDOW` | [USER](USER.md) | FAR | 532 | Dispatcher: cmp+jcc decision table (532 instr). |
| `SELECTCLIPRGN` | [GDI](GDI.md) | FAR | 49 | Mid-size function (49 instr, 5 calls). |
| `SELECTOBJECT` | [GDI](GDI.md) | FAR | 209 | Selects a new active object into a DC (pen, brush, font, bitmap). |
| `SELECTVISRGN` | [GDI](GDI.md) | FAR | 31 | Mid-size function (31 instr, 3 calls). |
| `SENDDLGITEMMESSAGE` | [USER](USER.md) | FAR | 34 | Mid-size function (34 instr, 0 calls). |
| `SENDMESSAGE` | [USER](USER.md) | FAR | 35 | Sends a synchronous message to a window proc. |
| `SENDMESSAGE2` | [USER](USER.md) | FAR | 60 | Mid-size function (60 instr, 3 calls). |
| `SETACTIVEWINDOW` | [USER](USER.md) | FAR | 13 | Activates a window (brings it to the foreground). |
| `SETBITMAPDIMENSION` | [GDI](GDI.md) | FAR | 21 | Setter: changes bitmapdimension. |
| `SETBKCOLOR` | [GDI](GDI.md) | FAR | 47 | Setter: changes bkcolor. |
| `SETBKMODE` | [GDI](GDI.md) | FAR | 3 | Setter: changes bkmode. |
| `SETBRUSHORG` | [GDI](GDI.md) | FAR | 21 | Setter: changes brushorg. |
| `SETCAPTURE` | [USER](USER.md) | FAR | 10 | Setter: changes capture. |
| `SETCARETBLINKTIME` | [USER](USER.md) | FAR | 25 | Setter: changes caretblinktime. |
| `SETCARETPOS` | [USER](USER.md) | FAR | 53 | Setter: changes caretpos. |
| `SETCLIPBOARDDATA` | [USER](USER.md) | FAR | 93 | Setter: changes clipboarddata. |
| `SETCLIPBOARDVIEWER` | [USER](USER.md) | FAR | 28 | Setter: changes clipboardviewer. |
| `SETCOM` | [COMM](COMM.md) | FAR | 15 | Setter: changes com. |
| `SETCOMMBREAK` | [USER](USER.md) | FAR | 17 | Setter: changes commbreak. |
| `SETCOMMEVENTMASK` | [USER](USER.md) | FAR | 18 | Setter: changes commeventmask. |
| `SETCOMMSTATE` | [USER](USER.md) | FAR | 27 | Setter: changes commstate. |
| `SETCONVERTWINDOWHEIGHT` | [USER](USER.md) | FAR | 30 | Setter: changes convertwindowheight. |
| `SETCURSOR` | [CGA](CGA.md) | FAR | 43 | Setter: changes cursor. |
| `SETCURSOR` | [HERCULES](HERCULES.md) | FAR | 43 | Setter: changes cursor. |
| `SETCURSOR` | [USER](USER.md) | FAR | 6 | Setter: changes cursor. |
| `SETCURSORPOS` | [USER](USER.md) | FAR | 14 | Setter: changes cursorpos. |
| `SETDCORG` | [GDI](GDI.md) | FAR | 61 | Setter: changes dcorg. |
| `SETDLGITEMINT` | [USER](USER.md) | FAR | 78 | Writes an integer into a dialog control. |
| `SETDLGITEMTEXT` | [USER](USER.md) | FAR | 29 | Changes the text of a dialog control. |
| `SETDOUBLECLICKTIME` | [USER](USER.md) | FAR | 12 | Setter: changes doubleclicktime. |
| `SETENVIRONMENT` | [GDI](GDI.md) | FAR | 81 | Setter: changes environment. |
| `SETFOCUS` | [USER](USER.md) | FAR | 79 | Changes the keyboard focus. |
| `SETMAPMODE` | [GDI](GDI.md) | FAR | 68 | Setter: changes mapmode. |
| `SETMAPPERFLAGS` | [GDI](GDI.md) | FAR | 15 | Setter: changes mapperflags. |
| `SETMENU` | [USER](USER.md) | FAR | 31 | Assigns a menu to a window. |
| `SETMETAFILEBITS` | [GDI](GDI.md) | FAR | 24 | Setter: changes metafilebits. |
| `SETPIXEL` | [GDI](GDI.md) | FAR | 78 | Sets a coloured pixel at (x,y). |
| `SETPOLYFILLMODE` | [GDI](GDI.md) | FAR | 3 | Setter: changes polyfillmode. |
| `SETPRIORITY` | [KERNEL](KERNEL.md) | FAR | 21 | Setter: changes priority. |
| `SETPROP` | [USER](USER.md) | FAR | 59 | Setter: changes prop. |
| `SETQUE` | [COMM](COMM.md) | FAR | 16 | Setter: changes que. |
| `SETRECT` | [USER](USER.md) | FAR | 25 | Setter: changes rect. |
| `SETRECTEMPTY` | [USER](USER.md) | FAR | 20 | Setter: changes rectempty. |
| `SETRELABS` | [GDI](GDI.md) | FAR | 3 | Setter: changes relabs. |
| `SETRESOURCEHANDLER` | [KERNEL](KERNEL.md) | FAR | 87 | Setter: changes resourcehandler. |
| `SETROP2` | [GDI](GDI.md) | FAR | 3 | Setter: changes rop2. |
| `SETSCROLLPOS` | [USER](USER.md) | FAR | 43 | Setter: changes scrollpos. |
| `SETSCROLLRANGE` | [USER](USER.md) | FAR | 197 | Setter: changes scrollrange. |
| `SETSOUNDNOISE` | [SOUND](SOUND.md) | FAR | 27 | Setter: changes soundnoise. |
| `SETSTRETCHBLTMODE` | [GDI](GDI.md) | FAR | 3 | Setter: changes stretchbltmode. |
| `SETSWAPHOOK` | [KERNEL](KERNEL.md) | FAR | 6 | Setter: changes swaphook. |
| `SETSYSCOLORS` | [USER](USER.md) | FAR | 111 | Setter: changes syscolors. |
| `SETSYSMODALWINDOW` | [USER](USER.md) | FAR | 10 | Setter: changes sysmodalwindow. |
| `SETSYSTEMTIMER` | [USER](USER.md) | FAR | 1 | Setter: changes systemtimer. |
| `SETTASKQUEUE` | [KERNEL](KERNEL.md) | FAR | 4 | Setter: changes taskqueue. |
| `SETTASKSIGNALPROC` | [KERNEL](KERNEL.md) | FAR | 2 | Setter: changes tasksignalproc. |
| `SETTEXTCHARACTEREXTRA` | [GDI](GDI.md) | FAR | 49 | Setter: changes textcharacterextra. |
| `SETTEXTCOLOR` | [GDI](GDI.md) | FAR | 34 | Setter: changes textcolor. |
| `SETTEXTJUSTIFICATION` | [GDI](GDI.md) | FAR | 61 | Setter: changes textjustification. |
| `SETTIMER` | [USER](USER.md) | FAR | 2 | Setter: changes timer. |
| `SETTIMER2` | [USER](USER.md) | FAR | 65 | Setter: changes timer2. |
| `SETVIEWPORTEXT` | [GDI](GDI.md) | FAR | 2 | Setter: changes viewportext. |
| `SETVIEWPORTORG` | [GDI](GDI.md) | FAR | 15 | Setter: changes viewportorg. |
| `SETVOICEACCENT` | [SOUND](SOUND.md) | FAR | 58 | Setter: changes voiceaccent. |
| `SETVOICEENVELOPE` | [SOUND](SOUND.md) | FAR | 32 | Setter: changes voiceenvelope. |
| `SETVOICENOTE` | [SOUND](SOUND.md) | FAR | 122 | Setter: changes voicenote. |
| `SETVOICEQUEUESIZE` | [SOUND](SOUND.md) | FAR | 64 | Setter: changes voicequeuesize. |
| `SETVOICESOUND` | [SOUND](SOUND.md) | FAR | 37 | Setter: changes voicesound. |
| `SETVOICETHRESHOLD` | [SOUND](SOUND.md) | FAR | 28 | Setter: changes voicethreshold. |
| `SETWC2` | [USER](USER.md) | FAR | 30 | Setter: changes wc2. |
| `SETWINDOWEXT` | [GDI](GDI.md) | FAR | 3 | Setter: changes windowext. |
| `SETWINDOWORG` | [GDI](GDI.md) | FAR | 15 | Setter: changes windoworg. |
| `SETWINDOWSHOOK` | [USER](USER.md) | FAR | 77 | Setter: changes windowshook. |
| `SETWINDOWTEXT` | [USER](USER.md) | FAR | 19 | Changes a window's title (or text). |
| `SETWINDOWWORD` | [USER](USER.md) | FAR | 2 | Setter: changes windowword. |
| `SETWINVIEWEXT` | [GDI](GDI.md) | FAR | 60 | Setter: changes winviewext. |
| `SHOWCARET` | [USER](USER.md) | FAR | 32 | Mid-size function (32 instr, 0 calls). |
| `SHOWCONVERTWINDOW` | [USER](USER.md) | FAR | 24 | Unclassified function (24 instr). |
| `SHOWCURSOR` | [USER](USER.md) | FAR | 34 | Mid-size function (34 instr, 3 calls). |
| `SHOWWINDOW` | [USER](USER.md) | FAR | 323 | Shows/hides/minimizes/maximizes a window. |
| `SIGNALPROC` | [USER](USER.md) | FAR | 95 | Dispatcher: cmp+jcc decision table (95 instr). |
| `SIZEOFRESOURCE` | [KERNEL](KERNEL.md) | FAR | 21 | Iterator with loop (21 instr). |
| `SIZEPQ` | [GDI](GDI.md) | FAR | 57 | Mid-size function (57 instr, 3 calls). |
| `SNDCOM` | [COMM](COMM.md) | FAR | 16 | Unclassified function (16 instr). |
| `STACOM` | [COMM](COMM.md) | FAR | 20 | Unclassified function (20 instr). |
| `STARTSOUND` | [SOUND](SOUND.md) | FAR | 22 | Unclassified function (22 instr). |
| `STARTSPOOLPAGE` | [GDI](GDI.md) | FAR | 181 | Dispatcher: cmp+jcc decision table (181 instr). |
| `STATICWNDPROC` | [USER](USER.md) | FAR | 326 | Dispatcher: cmp+jcc decision table (326 instr). |
| `STOPSOUND` | [SOUND](SOUND.md) | FAR | 22 | Unclassified function (22 instr). |
| `STRBLT` | [CGA](CGA.md) | FAR | 527 | Iterator with string ops (movsb/scasb/...) (527 instr). |
| `STRBLT` | [HERCULES](HERCULES.md) | FAR | 530 | Iterator with string ops (movsb/scasb/...) (530 instr). |
| `STRETCHBLT` | [GDI](GDI.md) | FAR | 143 | Copies with scaling. |
| `SWAPMOUSEBUTTON` | [USER](USER.md) | FAR | 18 | Calls DOS services via INT 21h (18 instr). |
| `SYNCALLVOICES` | [SOUND](SOUND.md) | FAR | 32 | Mid-size function (32 instr, 2 calls). |
| `SYS` | [MSDOSD](MSDOSD.md) | FAR | 328 | Dispatcher: cmp+jcc decision table (328 instr). |
| `SYSHASKANJI` | [USER](USER.md) | FAR | 21 | Unclassified function (21 instr). |
| `TEXTOUT` | [GDI](GDI.md) | FAR | 168 | Draws a string at (x,y) using the DC font. |
| `THROW` | [KERNEL](KERNEL.md) | FAR | 41 | Mid-size function (41 instr, 1 calls). |
| `TRANSLATEACCELERATOR` | [USER](USER.md) | FAR | 260 | Dispatcher: cmp+jcc decision table (260 instr). |
| `TRANSLATEMESSAGE` | [USER](USER.md) | FAR | 82 | Translates keyboard messages into WM_CHAR. |
| `TRANSMITCOMMCHAR` | [USER](USER.md) | FAR | 20 | Unclassified function (20 instr). |
| `TRMCOM` | [COMM](COMM.md) | FAR | 15 | Wrapper delegating to sub_032D. |
| `UNGETCOMMCHAR` | [USER](USER.md) | FAR | 38 | Mid-size function (38 instr, 0 calls). |
| `UNIONRECT` | [USER](USER.md) | FAR | 85 | Iterator with string ops (movsb/scasb/...) (85 instr). |
| `UNLOCKDC` | [GDI](GDI.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `UNLOCKSEGMENT` | [KERNEL](KERNEL.md) | FAR | 4 | Unclassified function (4 instr). |
| `UNREALIZEOBJECT` | [GDI](GDI.md) | FAR | 41 | Mid-size function (41 instr, 1 calls). |
| `UPDATEWINDOW` | [USER](USER.md) | FAR | 86 | Forces an invalid region to be repainted. |
| `VALIDATECODESEGMENTS` | [KERNEL](KERNEL.md) | FAR | 1 | Verifies integrity of code segments. |
| `VALIDATERECT` | [USER](USER.md) | FAR | 7 | Marks a rectangle as already painted. |
| `VALIDATERGN` | [USER](USER.md) | FAR | 2 | Trivial stub (2 instructions, no significant logic). |
| `WAITEVENT` | [KERNEL](KERNEL.md) | FAR | 16 | Interrupt service routine (16 instructions, likely INT handler). |
| `WAITMESSAGE` | [USER](USER.md) | FAR | 23 | Unclassified function (23 instr). |
| `WINDOWFROMPOINT` | [USER](USER.md) | FAR | 8 | Unclassified function (8 instr). |
| `WORDSET` | [GDI](GDI.md) | FAR | 32 | Mid-size function (32 instr, 1 calls). |
| `WRITECOMM` | [USER](USER.md) | FAR | 54 | Mid-size function (54 instr, 1 calls). |
| `WRITEDIALOG` | [GDI](GDI.md) | FAR | 140 | Dispatcher: cmp+jcc decision table (140 instr). |
| `WRITEPROFILESTRING` | [KERNEL](KERNEL.md) | FAR | 182 | Calls DOS services via INT 21h (182 instr). |
| `WRITESPOOL` | [GDI](GDI.md) | FAR | 117 | Complex function: 117 instructions, 4 calls, 15 branches. |
| `YIELD` | [KERNEL](KERNEL.md) | FAR | 28 | Unclassified function (28 instr). |
| `_LCLOSE` | [KERNEL](KERNEL.md) | FAR | 8 | Closes a file handle. |
| `_LLSEEK` | [KERNEL](KERNEL.md) | FAR | 11 | Moves the file pointer. |
| `_LOPEN` | [KERNEL](KERNEL.md) | FAR | 2 | Opens a file (low-level, no Windows extras). |
| `_LREAD` | [KERNEL](KERNEL.md) | FAR | 2 | Long-read (>64K) from a file handle. |
| `entry` | [GDI](GDI.md) | FAR | 46 | Mid-size function (46 instr, 3 calls). |
| `entry` | [MOUSE](MOUSE.md) | FAR | 34 | Mid-size function (34 instr, 2 calls). |
