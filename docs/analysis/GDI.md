# Modulo `GDI`

- Funciones: **314**
- Confidence: high=31, medium=153, low=100, unknown=30

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `ADDFONTRESOURCE` | FAR | 254 | Dispatcher: tabla de decisiones cmp+jcc (254 instr). | medium |
| `-` | `ARC` | FAR | 42 | Dibuja arco. | high |
| `-` | `BITBLT` | FAR | 27 | Copia rectangulo de bits entre DCs (block transfer). | high |
| `-` | `BITMAPBITS` | FAR | 62 | Funcion mediana (62 instr, 2 calls). | low |
| `-` | `BRUTE` | FAR | 80 | Iterador con instrucciones de string (movsb/scasb/...) (80 instr). | medium |
| `-` | `CLOSEMETAFILE` | FAR | 168 | Dispatcher: tabla de decisiones cmp+jcc (168 instr). | medium |
| `-` | `COMBINERGN` | FAR | 115 | Iterador con instrucciones de string (movsb/scasb/...) (115 instr). | medium |
| `-` | `COMPATIBLEBITMAP` | FAR | 45 | Funcion mediana (45 instr, 1 calls). | low |
| `-` | `COPY` | FAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `-` | `COPYMETAFILE` | FAR | 148 | Funcion compleja: 148 instrucciones, 7 llamadas, 11 branches. | low |
| `-` | `CREATEBITMAP` | FAR | 57 | Crea bitmap. | high |
| `-` | `CREATEBITMAPINDIRECT` | FAR | 126 | Constructor: crea bitmapindirect. | medium |
| `-` | `CREATEBRUSHINDIRECT` | FAR | 73 | Constructor: crea brushindirect. | medium |
| `-` | `CREATECOMPATIBLEBITMAP` | FAR | 2 | Crea bitmap compatible con DC. | high |
| `-` | `CREATECOMPATIBLEDC` | FAR | 43 | Crea DC compatible con otro (memoria). | high |
| `-` | `CREATEDC` | FAR | 2 | Crea Device Context para un dispositivo. | high |
| `-` | `CREATEELLIPTICRGN` | FAR | 37 | Constructor: crea ellipticrgn. | medium |
| `-` | `CREATEELLIPTICRGNINDIRECT` | FAR | 22 | Constructor: crea ellipticrgnindirect. | medium |
| `-` | `CREATEFONT` | FAR | 54 | Crea fuente con atributos. | high |
| `-` | `CREATEFONTINDIRECT` | FAR | 24 | Constructor: crea fontindirect. | medium |
| `-` | `CREATEHATCHBRUSH` | FAR | 18 | Crea brush con patron de rayado. | high |
| `-` | `CREATEIC` | FAR | 1 | Constructor: crea ic. | medium |
| `-` | `CREATEMETAFILE` | FAR | 74 | Constructor: crea metafile. | medium |
| `-` | `CREATEPATTERNBRUSH` | FAR | 18 | Crea brush desde bitmap. | high |
| `-` | `CREATEPEN` | FAR | 25 | Crea pen con estilo/grosor/color. | high |
| `-` | `CREATEPENINDIRECT` | FAR | 20 | Constructor: crea penindirect. | medium |
| `-` | `CREATEPOLYGONRGN` | FAR | 32 | Constructor: crea polygonrgn. | medium |
| `-` | `CREATEPQ` | FAR | 45 | Constructor: crea pq. | medium |
| `-` | `CREATERECTRGN` | FAR | 32 | Constructor: crea rectrgn. | medium |
| `-` | `CREATERECTRGNINDIRECT` | FAR | 17 | Constructor: crea rectrgnindirect. | medium |
| `-` | `CREATESOLIDBRUSH` | FAR | 18 | Crea brush solido de color. | high |
| `-` | `DEATH` | FAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `-` | `DELETEDC` | FAR | 153 | Borra un DC. | high |
| `-` | `DELETEMETAFILE` | FAR | 22 | Destructor: libera etafile. | medium |
| `-` | `DELETEPQ` | FAR | 16 | Destructor: libera q. | medium |
| `-` | `DMBITBLT` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMCOLORINFO` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMENUMDFONTS` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMENUMOBJ` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMOUTPUT` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMPIXEL` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMREALIZEOBJECT` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMSCANLR` | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `-` | `DMSTRBLT` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `DMTRANSPOSE` | FAR | 80 | Iterador con instrucciones de string (movsb/scasb/...) (80 instr). | medium |
| `-` | `DPXLATE` | FAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `-` | `ELLIPSE` | FAR | 44 | Dibuja elipse. | high |
| `-` | `ENUMCALLBACK` | FAR | 116 | Enumerador: itera sobre callback. | medium |
| `-` | `ENUMFONTS` | FAR | 296 | Enumerador: itera sobre fonts. | medium |
| `-` | `ENUMOBJECTS` | FAR | 51 | Enumerador: itera sobre objects. | medium |
| `-` | `EQUALRGN` | FAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). | medium |
| `-` | `ESCAPE` | FAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `-` | `EXCLUDECLIPRECT` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `EXTRACTPQ` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `-` | `FILLRGN` | FAR | 38 | Dispatcher: tabla de decisiones cmp+jcc (38 instr). | medium |
| `-` | `FLOODFILL` | FAR | 123 | Rellena area con brush actual. | high |
| `-` | `FRAMERGN` | FAR | 548 | Dispatcher: tabla de decisiones cmp+jcc (548 instr). | medium |
| `-` | `GDIINITAPP` | FAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `-` | `GETBITMAPBITS` | FAR | 2 | Getter: devuelve bitmapbits. | medium |
| `-` | `GETBITMAPDIMENSION` | FAR | 19 | Getter: devuelve bitmapdimension. | medium |
| `-` | `GETBKCOLOR` | FAR | 15 | Getter: devuelve bkcolor. | medium |
| `-` | `GETCLIPBOX` | FAR | 38 | Getter: devuelve clipbox. | medium |
| `-` | `GETCONTINUINGTEXTEXTENT` | FAR | 21 | Getter: devuelve continuingtextextent. | medium |
| `-` | `GETDEVICECAPS` | FAR | 24 | Recupera capacidades del dispositivo. | high |
| `-` | `GETENVIRONMENT` | FAR | 48 | Getter: devuelve environment. | medium |
| `-` | `GETMETAFILE` | FAR | 14 | Getter: devuelve metafile. | medium |
| `-` | `GETMETAFILEBITS` | FAR | 48 | Getter: devuelve metafilebits. | medium |
| `-` | `GETNEARESTCOLOR` | FAR | 31 | Getter: devuelve nearestcolor. | medium |
| `-` | `GETPIXEL` | FAR | 65 | Lee color de pixel en (x,y). | high |
| `-` | `GETRGNBOX` | FAR | 32 | Getter: devuelve rgnbox. | medium |
| `-` | `GETSTOCKOBJECT` | FAR | 9 | Devuelve objeto stock del sistema (BLACK_PEN, WHITE_BRUSH, etc). | high |
| `-` | `GETTEXTCHARACTEREXTRA` | FAR | 24 | Getter: devuelve textcharacterextra. | medium |
| `-` | `GETTEXTEXTENT` | FAR | 21 | Calcula tamano (cx,cy) que ocupa un string. | high |
| `-` | `GETTEXTFACE` | FAR | 57 | Getter: devuelve textface. | medium |
| `-` | `GETTEXTMETRICS` | FAR | 244 | Getter: devuelve textmetrics. | medium |
| `-` | `GSV` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `INQUIREVISRGN` | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `-` | `INSERTPQ` | FAR | 123 | Dispatcher: tabla de decisiones cmp+jcc (123 instr). | medium |
| `-` | `INTERNALCREATEDC` | FAR | 502 | Iterador con instrucciones de string (movsb/scasb/...) (502 instr). | medium |
| `-` | `INTERSECTCLIPRECT` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `INTERSECTVISRECT` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `INVERTRGN` | FAR | 36 | Funcion mediana (36 instr, 1 calls). | low |
| `-` | `LINEDDA` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `LINETO` | FAR | 54 | Dibuja linea desde cursor a (x,y). | high |
| `-` | `LOCKUNLOCK` | FAR | 122 | Dispatcher: tabla de decisiones cmp+jcc (122 instr). | medium |
| `-` | `LPTODP` | FAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `-` | `MINPQ` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `-` | `MOVETO` | FAR | 29 | Mueve cursor de dibujo a (x,y). | high |
| `-` | `MULDIV` | FAR | 50 | Funcion mediana (50 instr, 0 calls). | low |
| `-` | `OFFSETCLIPRGN` | FAR | 54 | Funcion mediana (54 instr, 2 calls). | low |
| `-` | `OFFSETORG` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `-` | `OFFSETRGN` | FAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `-` | `OFFSETVIEWPORTORG` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `OFFSETVISRGN` | FAR | 32 | Funcion mediana (32 instr, 3 calls). | low |
| `-` | `OFFSETWINDOWORG` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `OPENJOB` | FAR | 148 | Dispatcher: tabla de decisiones cmp+jcc (148 instr). | medium |
| `-` | `PAINTRGN` | FAR | 37 | Funcion mediana (37 instr, 1 calls). | low |
| `-` | `PATBLT` | FAR | 38 | Pinta rectangulo con brush. | high |
| `-` | `PIE` | FAR | 41 | Dibuja sector circular. | high |
| `-` | `PIXTOLINE` | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). | medium |
| `-` | `PLAYMETAFILE` | FAR | 134 | Dispatcher: tabla de decisiones cmp+jcc (134 instr). | medium |
| `-` | `POLYGON` | FAR | 45 | Dibuja poligono. | high |
| `-` | `POLYLINE` | FAR | 76 | Dibuja secuencia de lineas. | high |
| `-` | `PTINREGION` | FAR | 34 | Funcion mediana (34 instr, 0 calls). | low |
| `-` | `PTVISIBLE` | FAR | 42 | Funcion mediana (42 instr, 2 calls). | low |
| `-` | `QUERYABORT` | FAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `-` | `RCOS` | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `-` | `RECTANGLE` | FAR | 528 | Dibuja rectangulo con pen y brush actuales. | high |
| `-` | `RECTSTUFF` | FAR | 93 | Funcion compleja: 93 instrucciones, 6 llamadas, 8 branches. | low |
| `-` | `RECTVISIBLE` | FAR | 99 | Iterador con instrucciones de string (movsb/scasb/...) (99 instr). | medium |
| `-` | `REMOVEFONTRESOURCE` | FAR | 95 | Dispatcher: tabla de decisiones cmp+jcc (95 instr). | medium |
| `-` | `RESTOREDC` | FAR | 69 | Restaura estado guardado del DC. | high |
| `-` | `RESTOREVISRGN` | FAR | 32 | Funcion mediana (32 instr, 3 calls). | low |
| `-` | `RESURRECTION` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `ROUNDRECT` | FAR | 40 | Funcion mediana (40 instr, 0 calls). | low |
| `-` | `RSIN` | FAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `-` | `SAVEDC` | FAR | 78 | Guarda estado del DC. | high |
| `-` | `SAVEVISRGN` | FAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `-` | `SCALEEXT` | FAR | 55 | Funcion mediana (55 instr, 1 calls). | low |
| `-` | `SCALEVIEWPORTEXT` | FAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `-` | `SCALEWINDOWEXT` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `SCANLR` | FAR | 56 | Iterador con instrucciones de string (movsb/scasb/...) (56 instr). | medium |
| `-` | `SELECTCLIPRGN` | FAR | 49 | Funcion mediana (49 instr, 5 calls). | low |
| `-` | `SELECTOBJECT` | FAR | 209 | Cambia objeto activo en DC (pen, brush, font, bitmap). | high |
| `-` | `SELECTVISRGN` | FAR | 31 | Funcion mediana (31 instr, 3 calls). | low |
| `-` | `SETBITMAPDIMENSION` | FAR | 21 | Setter: cambia bitmapdimension. | medium |
| `-` | `SETBKCOLOR` | FAR | 47 | Setter: cambia bkcolor. | medium |
| `-` | `SETBKMODE` | FAR | 3 | Setter: cambia bkmode. | medium |
| `-` | `SETBRUSHORG` | FAR | 21 | Setter: cambia brushorg. | medium |
| `-` | `SETDCORG` | FAR | 61 | Setter: cambia dcorg. | medium |
| `-` | `SETENVIRONMENT` | FAR | 81 | Setter: cambia environment. | medium |
| `-` | `SETMAPMODE` | FAR | 68 | Setter: cambia mapmode. | medium |
| `-` | `SETMAPPERFLAGS` | FAR | 15 | Setter: cambia mapperflags. | medium |
| `-` | `SETMETAFILEBITS` | FAR | 24 | Setter: cambia metafilebits. | medium |
| `-` | `SETPIXEL` | FAR | 78 | Pone pixel de color en (x,y). | high |
| `-` | `SETPOLYFILLMODE` | FAR | 3 | Setter: cambia polyfillmode. | medium |
| `-` | `SETRELABS` | FAR | 3 | Setter: cambia relabs. | medium |
| `-` | `SETROP2` | FAR | 3 | Setter: cambia rop2. | medium |
| `-` | `SETSTRETCHBLTMODE` | FAR | 3 | Setter: cambia stretchbltmode. | medium |
| `-` | `SETTEXTCHARACTEREXTRA` | FAR | 49 | Setter: cambia textcharacterextra. | medium |
| `-` | `SETTEXTCOLOR` | FAR | 34 | Setter: cambia textcolor. | medium |
| `-` | `SETTEXTJUSTIFICATION` | FAR | 61 | Setter: cambia textjustification. | medium |
| `-` | `SETVIEWPORTEXT` | FAR | 2 | Setter: cambia viewportext. | medium |
| `-` | `SETVIEWPORTORG` | FAR | 15 | Setter: cambia viewportorg. | medium |
| `-` | `SETWINDOWEXT` | FAR | 3 | Setter: cambia windowext. | medium |
| `-` | `SETWINDOWORG` | FAR | 15 | Setter: cambia windoworg. | medium |
| `-` | `SETWINVIEWEXT` | FAR | 60 | Setter: cambia winviewext. | medium |
| `-` | `SIZEPQ` | FAR | 57 | Funcion mediana (57 instr, 3 calls). | low |
| `-` | `STARTSPOOLPAGE` | FAR | 181 | Dispatcher: tabla de decisiones cmp+jcc (181 instr). | medium |
| `-` | `STRETCHBLT` | FAR | 143 | Copia con escalado. | high |
| `-` | `TEXTOUT` | FAR | 168 | Dibuja string en (x,y) con font del DC. | high |
| `-` | `UNLOCKDC` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `UNREALIZEOBJECT` | FAR | 41 | Funcion mediana (41 instr, 1 calls). | low |
| `-` | `WORDSET` | FAR | 32 | Funcion mediana (32 instr, 1 calls). | low |
| `-` | `WRITEDIALOG` | FAR | 140 | Dispatcher: tabla de decisiones cmp+jcc (140 instr). | medium |
| `-` | `WRITESPOOL` | FAR | 117 | Funcion compleja: 117 instrucciones, 4 llamadas, 15 branches. | low |
| `-` | `entry` | FAR | 46 | Funcion mediana (46 instr, 3 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 136 | Dispatcher: tabla de decisiones cmp+jcc (136 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 39 | Funcion mediana (39 instr, 0 calls). | low |
| `0x0000` | `sub_0000` | FAR | 38 | Dispatcher: tabla de decisiones cmp+jcc (38 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 53 | Funcion mediana (53 instr, 0 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 69 | Dispatcher: tabla de decisiones cmp+jcc (69 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 596 | Iterador con instrucciones de string (movsb/scasb/...) (596 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 132 | Dispatcher: tabla de decisiones cmp+jcc (132 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 244 | Dispatcher: tabla de decisiones cmp+jcc (244 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 17 | Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion. | low |
| `0x0050` | `sub_0050` | FAR | 49 | Funcion mediana (49 instr, 0 calls). | low |
| `0x0054` | `sub_0054` | FAR | 104 | Dispatcher: tabla de decisiones cmp+jcc (104 instr). | medium |
| `0x005C` | `sub_005C` | NEAR | 138 | Iterador con bucle (138 instr). | medium |
| `0x006E` | `sub_006E` | FAR | 944 | Iterador con instrucciones de string (movsb/scasb/...) (944 instr). | medium |
| `0x0071` | `sub_0071` | FAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x0072` | `sub_0072` | NEAR | 47 | Dispatcher: tabla de decisiones cmp+jcc (47 instr). | medium |
| `0x0091` | `sub_0091` | FAR | 34 | Funcion mediana (34 instr, 0 calls). | low |
| `0x00AF` | `sub_00AF` | NEAR | 116 | Dispatcher: tabla de decisiones cmp+jcc (116 instr). | medium |
| `0x00B3` | `sub_00B3` | NEAR | 86 | Dispatcher: tabla de decisiones cmp+jcc (86 instr). | medium |
| `0x00C5` | `sub_00C5` | FAR | 40 | Funcion mediana (40 instr, 0 calls). | low |
| `0x00DA` | `sub_00DA` | FAR | 34 | Funcion mediana (34 instr, 0 calls). | low |
| `0x00E6` | `sub_00E6` | NEAR | 31 | Funcion mediana (31 instr, 0 calls). | low |
| `0x0102` | `sub_0102` | NEAR | 53 | Dispatcher: tabla de decisiones cmp+jcc (53 instr). | medium |
| `0x0103` | `sub_0103` | NEAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x012C` | `sub_012C` | NEAR | 38 | Funcion mediana (38 instr, 0 calls). | low |
| `0x0134` | `sub_0134` | FAR | 156 | Dispatcher: tabla de decisiones cmp+jcc (156 instr). | medium |
| `0x013C` | `sub_013C` | NEAR | 113 | Funcion compleja: 113 instrucciones, 0 llamadas, 3 branches. | low |
| `0x0140` | `sub_0140` | FAR | 703 | Dispatcher: tabla de decisiones cmp+jcc (703 instr). | medium |
| `0x0155` | `sub_0155` | NEAR | 91 | Dispatcher: tabla de decisiones cmp+jcc (91 instr). | medium |
| `0x017C` | `sub_017C` | NEAR | 137 | Dispatcher: tabla de decisiones cmp+jcc (137 instr). | medium |
| `0x0195` | `sub_0195` | NEAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x019A` | `sub_019A` | NEAR | 99 | Dispatcher: tabla de decisiones cmp+jcc (99 instr). | medium |
| `0x019E` | `sub_019E` | FAR | 42 | Funcion mediana (42 instr, 1 calls). | low |
| `0x01A5` | `sub_01A5` | FAR | 640 | Dispatcher: tabla de decisiones cmp+jcc (640 instr). | medium |
| `0x0225` | `sub_0225` | FAR | 65 | Funcion mediana (65 instr, 4 calls). | low |
| `0x0226` | `sub_0226` | NEAR | 279 | Dispatcher: tabla de decisiones cmp+jcc (279 instr). | medium |
| `0x0248` | `sub_0248` | NEAR | 148 | Dispatcher: tabla de decisiones cmp+jcc (148 instr). | medium |
| `0x028C` | `sub_028C` | NEAR | 384 | Dispatcher: tabla de decisiones cmp+jcc (384 instr). | medium |
| `0x02BA` | `sub_02BA` | NEAR | 61 | Funcion mediana (61 instr, 0 calls). | low |
| `0x02CE` | `sub_02CE` | FAR | 903 | Dispatcher: tabla de decisiones cmp+jcc (903 instr). | medium |
| `0x02D2` | `sub_02D2` | NEAR | 164 | Dispatcher: tabla de decisiones cmp+jcc (164 instr). | medium |
| `0x02D8` | `sub_02D8` | NEAR | 73 | Funcion mediana (73 instr, 0 calls). | low |
| `0x0347` | `sub_0347` | NEAR | 43 | Funcion mediana (43 instr, 2 calls). | low |
| `0x037C` | `sub_037C` | FAR | 68 | Funcion mediana (68 instr, 3 calls). | low |
| `0x0399` | `sub_0399` | FAR | 1038 | Iterador con instrucciones de string (movsb/scasb/...) (1038 instr). | medium |
| `0x03D5` | `sub_03D5` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x03E1` | `sub_03E1` | NEAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x041C` | `sub_041C` | FAR | 194 | Dispatcher: tabla de decisiones cmp+jcc (194 instr). | medium |
| `0x048E` | `sub_048E` | NEAR | 236 | Dispatcher: tabla de decisiones cmp+jcc (236 instr). | medium |
| `0x048E` | `sub_048E` | NEAR | 54 | Funcion mediana (54 instr, 0 calls). | low |
| `0x04A4` | `sub_04A4` | NEAR | 228 | Dispatcher: tabla de decisiones cmp+jcc (228 instr). | medium |
| `0x04CD` | `sub_04CD` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x04E9` | `sub_04E9` | NEAR | 60 | Funcion mediana (60 instr, 1 calls). | low |
| `0x0500` | `sub_0500` | NEAR | 9 | Iterador con instrucciones de string (movsb/scasb/...) (9 instr). | medium |
| `0x0511` | `sub_0511` | NEAR | 5 | Wrapper que delega en KERNEL.LOCALALLOC. | medium |
| `0x053F` | `sub_053F` | NEAR | 201 | Iterador con instrucciones de string (movsb/scasb/...) (201 instr). | medium |
| `0x0573` | `sub_0573` | FAR | 102 | Iterador con instrucciones de string (movsb/scasb/...) (102 instr). | medium |
| `0x05A4` | `sub_05A4` | NEAR | 81 | Funcion compleja: 81 instrucciones, 1 llamadas, 5 branches. | low |
| `0x05B1` | `sub_05B1` | NEAR | 121 | Iterador con instrucciones de string (movsb/scasb/...) (121 instr). | medium |
| `0x05F5` | `sub_05F5` | NEAR | 44 | Funcion mediana (44 instr, 0 calls). | low |
| `0x0649` | `sub_0649` | NEAR | 132 | Iterador con instrucciones de string (movsb/scasb/...) (132 instr). | medium |
| `0x066D` | `sub_066D` | NEAR | 144 | Dispatcher: tabla de decisiones cmp+jcc (144 instr). | medium |
| `0x06D7` | `sub_06D7` | NEAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x0730` | `sub_0730` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x074D` | `sub_074D` | NEAR | 244 | Iterador con instrucciones de string (movsb/scasb/...) (244 instr). | medium |
| `0x07A3` | `sub_07A3` | NEAR | 57 | Dispatcher: tabla de decisiones cmp+jcc (57 instr). | medium |
| `0x07A3` | `sub_07A3` | NEAR | 109 | Dispatcher: tabla de decisiones cmp+jcc (109 instr). | medium |
| `0x0806` | `sub_0806` | FAR | 86 | Funcion compleja: 86 instrucciones, 0 llamadas, 0 branches. | low |
| `0x0829` | `sub_0829` | NEAR | 34 | Funcion mediana (34 instr, 0 calls). | low |
| `0x085B` | `sub_085B` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x0885` | `sub_0885` | NEAR | 171 | Dispatcher: tabla de decisiones cmp+jcc (171 instr). | medium |
| `0x08AC` | `sub_08AC` | NEAR | 144 | Funcion compleja: 144 instrucciones, 3 llamadas, 7 branches. | low |
| `0x08AD` | `sub_08AD` | NEAR | 83 | Dispatcher: tabla de decisiones cmp+jcc (83 instr). | medium |
| `0x08E4` | `sub_08E4` | FAR | 92 | Dispatcher: tabla de decisiones cmp+jcc (92 instr). | medium |
| `0x0922` | `sub_0922` | NEAR | 81 | Funcion compleja: 81 instrucciones, 0 llamadas, 4 branches. | low |
| `0x0942` | `sub_0942` | NEAR | 139 | Funcion compleja: 139 instrucciones, 0 llamadas, 4 branches. | low |
| `0x097A` | `sub_097A` | FAR | 150 | Funcion compleja: 150 instrucciones, 3 llamadas, 10 branches. | low |
| `0x09D1` | `sub_09D1` | NEAR | 36 | Funcion mediana (36 instr, 2 calls). | low |
| `0x09D6` | `sub_09D6` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x09DB` | `sub_09DB` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x0A10` | `sub_0A10` | FAR | 160 | Dispatcher: tabla de decisiones cmp+jcc (160 instr). | medium |
| `0x0A18` | `sub_0A18` | NEAR | 499 | Dispatcher: tabla de decisiones cmp+jcc (499 instr). | medium |
| `0x0A21` | `sub_0A21` | NEAR | 104 | Dispatcher: tabla de decisiones cmp+jcc (104 instr). | medium |
| `0x0A23` | `sub_0A23` | NEAR | 66 | Iterador con instrucciones de string (movsb/scasb/...) (66 instr). | medium |
| `0x0AB0` | `sub_0AB0` | NEAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `0x0AF5` | `sub_0AF5` | NEAR | 53 | Funcion mediana (53 instr, 2 calls). | low |
| `0x0B52` | `sub_0B52` | NEAR | 211 | Iterador con instrucciones de string (movsb/scasb/...) (211 instr). | medium |
| `0x0B77` | `sub_0B77` | NEAR | 86 | Dispatcher: tabla de decisiones cmp+jcc (86 instr). | medium |
| `0x0B82` | `sub_0B82` | NEAR | 59 | Funcion mediana (59 instr, 1 calls). | low |
| `0x0BB5` | `sub_0BB5` | NEAR | 67 | Dispatcher: tabla de decisiones cmp+jcc (67 instr). | medium |
| `0x0C3F` | `sub_0C3F` | NEAR | 27 | Iterador con instrucciones de string (movsb/scasb/...) (27 instr). | medium |
| `0x0C69` | `sub_0C69` | NEAR | 547 | Iterador con instrucciones de string (movsb/scasb/...) (547 instr). | medium |
| `0x0D1A` | `sub_0D1A` | NEAR | 17 | Funcion sin clasificar definitiva (17 instr). | unknown |
| `0x0D49` | `sub_0D49` | NEAR | 670 | Dispatcher: tabla de decisiones cmp+jcc (670 instr). | medium |
| `0x0EA9` | `sub_0EA9` | NEAR | 47 | Funcion mediana (47 instr, 0 calls). | low |
| `0x0F13` | `sub_0F13` | NEAR | 558 | Dispatcher: tabla de decisiones cmp+jcc (558 instr). | medium |
| `0x0F42` | `sub_0F42` | NEAR | 35 | Funcion mediana (35 instr, 2 calls). | low |
| `0x0F99` | `sub_0F99` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x0FC0` | `sub_0FC0` | NEAR | 203 | Dispatcher: tabla de decisiones cmp+jcc (203 instr). | medium |
| `0x1112` | `sub_1112` | NEAR | 35 | Funcion mediana (35 instr, 2 calls). | low |
| `0x11A5` | `sub_11A5` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x11C0` | `sub_11C0` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x11F3` | `sub_11F3` | NEAR | 90 | Funcion compleja: 90 instrucciones, 6 llamadas, 9 branches. | low |
| `0x120D` | `sub_120D` | NEAR | 85 | Dispatcher: tabla de decisiones cmp+jcc (85 instr). | medium |
| `0x1234` | `sub_1234` | FAR | 38 | Dispatcher: tabla de decisiones cmp+jcc (38 instr). | medium |
| `0x1290` | `sub_1290` | NEAR | 37 | Dispatcher: tabla de decisiones cmp+jcc (37 instr). | medium |
| `0x12EA` | `sub_12EA` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x12FC` | `sub_12FC` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x131C` | `sub_131C` | NEAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. | low |
| `0x1328` | `sub_1328` | NEAR | 48 | Funcion mediana (48 instr, 3 calls). | low |
| `0x1329` | `sub_1329` | NEAR | 35 | Funcion mediana (35 instr, 0 calls). | low |
| `0x138A` | `sub_138A` | NEAR | 53 | Funcion mediana (53 instr, 1 calls). | low |
| `0x139A` | `sub_139A` | NEAR | 80 | Dispatcher: tabla de decisiones cmp+jcc (80 instr). | medium |
| `0x1475` | `sub_1475` | NEAR | 53 | Dispatcher: tabla de decisiones cmp+jcc (53 instr). | medium |
| `0x14CA` | `sub_14CA` | NEAR | 594 | Dispatcher: tabla de decisiones cmp+jcc (594 instr). | medium |
| `0x1503` | `sub_1503` | NEAR | 35 | Funcion mediana (35 instr, 1 calls). | low |
| `0x15CD` | `sub_15CD` | FAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x15FE` | `sub_15FE` | FAR | 37 | Funcion mediana (37 instr, 1 calls). | low |
| `0x1651` | `sub_1651` | NEAR | 13 | Wrapper que delega en KERNEL.LOCKSEGMENT. | medium |
| `0x1662` | `sub_1662` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x1683` | `sub_1683` | NEAR | 13 | Wrapper que delega en KERNEL.UNLOCKSEGMENT. | medium |
| `0x1694` | `sub_1694` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x16B5` | `sub_16B5` | NEAR | 10 | Wrapper que delega en KERNEL.LOCALFREE. | medium |
| `0x1863` | `sub_1863` | NEAR | 180 | Iterador con instrucciones de string (movsb/scasb/...) (180 instr). | medium |
| `0x19C2` | `sub_19C2` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x19F0` | `sub_19F0` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x1A12` | `sub_1A12` | FAR | 179 | Iterador con instrucciones de string (movsb/scasb/...) (179 instr). | medium |
| `0x1C1B` | `sub_1C1B` | NEAR | 45 | Funcion mediana (45 instr, 0 calls). | low |
| `0x1C89` | `sub_1C89` | FAR | 82 | Iterador con instrucciones de string (movsb/scasb/...) (82 instr). | medium |
| `0x1D2D` | `sub_1D2D` | FAR | 105 | Dispatcher: tabla de decisiones cmp+jcc (105 instr). | medium |
| `0x1E37` | `sub_1E37` | FAR | 120 | Iterador con instrucciones de string (movsb/scasb/...) (120 instr). | medium |
| `0x1F4E` | `sub_1F4E` | FAR | 340 | Iterador con instrucciones de string (movsb/scasb/...) (340 instr). | medium |
| `0x26D6` | `sub_26D6` | NEAR | 159 | Dispatcher: tabla de decisiones cmp+jcc (159 instr). | medium |
| `0x286C` | `sub_286C` | FAR | 76 | Dispatcher: tabla de decisiones cmp+jcc (76 instr). | medium |
| `0x2BC2` | `sub_2BC2` | FAR | 159 | Dispatcher: tabla de decisiones cmp+jcc (159 instr). | medium |
| `0x2DE7` | `sub_2DE7` | NEAR | 75 | Funcion mediana (75 instr, 0 calls). | low |
| `0x2EC4` | `sub_2EC4` | FAR | 8 | Iterador con bucle (8 instr). | medium |
| `0x2ED5` | `sub_2ED5` | FAR | 61 | Funcion mediana (61 instr, 4 calls). | low |
| `0x3138` | `sub_3138` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x314B` | `sub_314B` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x333D` | `sub_333D` | FAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x3372` | `sub_3372` | NEAR | 34 | Funcion mediana (34 instr, 1 calls). | low |
| `0x33B5` | `sub_33B5` | FAR | 95 | Iterador con instrucciones de string (movsb/scasb/...) (95 instr). | medium |
| `0x347E` | `sub_347E` | NEAR | 8 | Wrapper que delega en sub_3493. | medium |
| `0x3493` | `sub_3493` | NEAR | 81 | Iterador con instrucciones de string (movsb/scasb/...) (81 instr). | medium |
| `0x3547` | `sub_3547` | NEAR | 51 | Interrupt Service Routine (51 instrucciones, posible manejador de INT). | medium |
| `0x35A8` | `sub_35A8` | NEAR | 105 | Iterador con bucle (105 instr). | medium |
| `0x3686` | `sub_3686` | FAR | 29 | Iterador con instrucciones de string (movsb/scasb/...) (29 instr). | medium |
| `0x36B8` | `sub_36B8` | FAR | 49 | Funcion mediana (49 instr, 0 calls). | low |
| `0x3718` | `sub_3718` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x3721` | `sub_3721` | FAR | 98 | Funcion compleja: 98 instrucciones, 0 llamadas, 5 branches. | low |
| `0x37E4` | `sub_37E4` | FAR | 64 | Iterador con instrucciones de string (movsb/scasb/...) (64 instr). | medium |
| `0x3872` | `sub_3872` | FAR | 228 | Iterador con instrucciones de string (movsb/scasb/...) (228 instr). | medium |
| `0x3B9D` | `sub_3B9D` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x3BCD` | `sub_3BCD` | FAR | 90 | Iterador con instrucciones de string (movsb/scasb/...) (90 instr). | medium |
| `0x3CB7` | `sub_3CB7` | FAR | 55 | Iterador con instrucciones de string (movsb/scasb/...) (55 instr). | medium |
| `0x3D1F` | `sub_3D1F` | FAR | 380 | Iterador con bucle (380 instr). | medium |
| `0x4029` | `sub_4029` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
