# Module `GDI`

- Functions: **314**
- Confidence: high=31, medium=153, low=100, unknown=30

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `ADDFONTRESOURCE` | FAR | 254 | Dispatcher: cmp+jcc decision table (254 instr). | medium |
| `-` | `ARC` | FAR | 42 | Draws an arc. | high |
| `-` | `BITBLT` | FAR | 27 | Copies a rectangle of bits between DCs (block transfer). | high |
| `-` | `BITMAPBITS` | FAR | 62 | Mid-size function (62 instr, 2 calls). | low |
| `-` | `BRUTE` | FAR | 80 | Iterator with string ops (movsb/scasb/...) (80 instr). | medium |
| `-` | `CLOSEMETAFILE` | FAR | 168 | Dispatcher: cmp+jcc decision table (168 instr). | medium |
| `-` | `COMBINERGN` | FAR | 115 | Iterator with string ops (movsb/scasb/...) (115 instr). | medium |
| `-` | `COMPATIBLEBITMAP` | FAR | 45 | Mid-size function (45 instr, 1 calls). | low |
| `-` | `COPY` | FAR | 21 | Unclassified function (21 instr). | unknown |
| `-` | `COPYMETAFILE` | FAR | 148 | Complex function: 148 instructions, 7 calls, 11 branches. | low |
| `-` | `CREATEBITMAP` | FAR | 57 | Creates a bitmap. | high |
| `-` | `CREATEBITMAPINDIRECT` | FAR | 126 | Constructor: creates bitmapindirect. | medium |
| `-` | `CREATEBRUSHINDIRECT` | FAR | 73 | Constructor: creates brushindirect. | medium |
| `-` | `CREATECOMPATIBLEBITMAP` | FAR | 2 | Creates a bitmap compatible with a DC. | high |
| `-` | `CREATECOMPATIBLEDC` | FAR | 43 | Creates a memory DC compatible with another DC. | high |
| `-` | `CREATEDC` | FAR | 2 | Creates a Device Context for a device. | high |
| `-` | `CREATEELLIPTICRGN` | FAR | 37 | Constructor: creates ellipticrgn. | medium |
| `-` | `CREATEELLIPTICRGNINDIRECT` | FAR | 22 | Constructor: creates ellipticrgnindirect. | medium |
| `-` | `CREATEFONT` | FAR | 54 | Creates a font with the given attributes. | high |
| `-` | `CREATEFONTINDIRECT` | FAR | 24 | Constructor: creates fontindirect. | medium |
| `-` | `CREATEHATCHBRUSH` | FAR | 18 | Creates a brush with a hatched pattern. | high |
| `-` | `CREATEIC` | FAR | 1 | Constructor: creates ic. | medium |
| `-` | `CREATEMETAFILE` | FAR | 74 | Constructor: creates metafile. | medium |
| `-` | `CREATEPATTERNBRUSH` | FAR | 18 | Creates a brush from a bitmap. | high |
| `-` | `CREATEPEN` | FAR | 25 | Creates a pen with given style/width/colour. | high |
| `-` | `CREATEPENINDIRECT` | FAR | 20 | Constructor: creates penindirect. | medium |
| `-` | `CREATEPOLYGONRGN` | FAR | 32 | Constructor: creates polygonrgn. | medium |
| `-` | `CREATEPQ` | FAR | 45 | Constructor: creates pq. | medium |
| `-` | `CREATERECTRGN` | FAR | 32 | Constructor: creates rectrgn. | medium |
| `-` | `CREATERECTRGNINDIRECT` | FAR | 17 | Constructor: creates rectrgnindirect. | medium |
| `-` | `CREATESOLIDBRUSH` | FAR | 18 | Creates a solid-colour brush. | high |
| `-` | `DEATH` | FAR | 12 | Unclassified function (12 instr). | unknown |
| `-` | `DELETEDC` | FAR | 153 | Deletes a DC. | high |
| `-` | `DELETEMETAFILE` | FAR | 22 | Destructor: frees etafile. | medium |
| `-` | `DELETEPQ` | FAR | 16 | Destructor: frees q. | medium |
| `-` | `DMBITBLT` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMCOLORINFO` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMENUMDFONTS` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMENUMOBJ` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMOUTPUT` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMPIXEL` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMREALIZEOBJECT` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMSCANLR` | FAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `-` | `DMSTRBLT` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `DMTRANSPOSE` | FAR | 80 | Iterator with string ops (movsb/scasb/...) (80 instr). | medium |
| `-` | `DPXLATE` | FAR | 27 | Unclassified function (27 instr). | unknown |
| `-` | `ELLIPSE` | FAR | 44 | Draws an ellipse. | high |
| `-` | `ENUMCALLBACK` | FAR | 116 | Enumerator: iterates over callback. | medium |
| `-` | `ENUMFONTS` | FAR | 296 | Enumerator: iterates over fonts. | medium |
| `-` | `ENUMOBJECTS` | FAR | 51 | Enumerator: iterates over objects. | medium |
| `-` | `EQUALRGN` | FAR | 45 | Dispatcher: cmp+jcc decision table (45 instr). | medium |
| `-` | `ESCAPE` | FAR | 24 | Unclassified function (24 instr). | unknown |
| `-` | `EXCLUDECLIPRECT` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `EXTRACTPQ` | FAR | 18 | Unclassified function (18 instr). | unknown |
| `-` | `FILLRGN` | FAR | 38 | Dispatcher: cmp+jcc decision table (38 instr). | medium |
| `-` | `FLOODFILL` | FAR | 123 | Fills an area with the current brush. | high |
| `-` | `FRAMERGN` | FAR | 548 | Dispatcher: cmp+jcc decision table (548 instr). | medium |
| `-` | `GDIINITAPP` | FAR | 21 | Unclassified function (21 instr). | unknown |
| `-` | `GETBITMAPBITS` | FAR | 2 | Getter: returns bitmapbits. | medium |
| `-` | `GETBITMAPDIMENSION` | FAR | 19 | Getter: returns bitmapdimension. | medium |
| `-` | `GETBKCOLOR` | FAR | 15 | Getter: returns bkcolor. | medium |
| `-` | `GETCLIPBOX` | FAR | 38 | Getter: returns clipbox. | medium |
| `-` | `GETCONTINUINGTEXTEXTENT` | FAR | 21 | Getter: returns continuingtextextent. | medium |
| `-` | `GETDEVICECAPS` | FAR | 24 | Retrieves device capabilities. | high |
| `-` | `GETENVIRONMENT` | FAR | 48 | Getter: returns environment. | medium |
| `-` | `GETMETAFILE` | FAR | 14 | Getter: returns metafile. | medium |
| `-` | `GETMETAFILEBITS` | FAR | 48 | Getter: returns metafilebits. | medium |
| `-` | `GETNEARESTCOLOR` | FAR | 31 | Getter: returns nearestcolor. | medium |
| `-` | `GETPIXEL` | FAR | 65 | Reads the colour of the pixel at (x,y). | high |
| `-` | `GETRGNBOX` | FAR | 32 | Getter: returns rgnbox. | medium |
| `-` | `GETSTOCKOBJECT` | FAR | 9 | Returns a system stock object (BLACK_PEN, WHITE_BRUSH, etc). | high |
| `-` | `GETTEXTCHARACTEREXTRA` | FAR | 24 | Getter: returns textcharacterextra. | medium |
| `-` | `GETTEXTEXTENT` | FAR | 21 | Computes the (cx,cy) size occupied by a string. | high |
| `-` | `GETTEXTFACE` | FAR | 57 | Getter: returns textface. | medium |
| `-` | `GETTEXTMETRICS` | FAR | 244 | Getter: returns textmetrics. | medium |
| `-` | `GSV` | FAR | 23 | Unclassified function (23 instr). | unknown |
| `-` | `INQUIREVISRGN` | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. | low |
| `-` | `INSERTPQ` | FAR | 123 | Dispatcher: cmp+jcc decision table (123 instr). | medium |
| `-` | `INTERNALCREATEDC` | FAR | 502 | Iterator with string ops (movsb/scasb/...) (502 instr). | medium |
| `-` | `INTERSECTCLIPRECT` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `INTERSECTVISRECT` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `INVERTRGN` | FAR | 36 | Mid-size function (36 instr, 1 calls). | low |
| `-` | `LINEDDA` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `LINETO` | FAR | 54 | Draws a line from the cursor to (x,y). | high |
| `-` | `LOCKUNLOCK` | FAR | 122 | Dispatcher: cmp+jcc decision table (122 instr). | medium |
| `-` | `LPTODP` | FAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `-` | `MINPQ` | FAR | 18 | Unclassified function (18 instr). | unknown |
| `-` | `MOVETO` | FAR | 29 | Moves the drawing cursor to (x,y). | high |
| `-` | `MULDIV` | FAR | 50 | Mid-size function (50 instr, 0 calls). | low |
| `-` | `OFFSETCLIPRGN` | FAR | 54 | Mid-size function (54 instr, 2 calls). | low |
| `-` | `OFFSETORG` | FAR | 29 | Unclassified function (29 instr). | unknown |
| `-` | `OFFSETRGN` | FAR | 26 | Unclassified function (26 instr). | unknown |
| `-` | `OFFSETVIEWPORTORG` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `OFFSETVISRGN` | FAR | 32 | Mid-size function (32 instr, 3 calls). | low |
| `-` | `OFFSETWINDOWORG` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `OPENJOB` | FAR | 148 | Dispatcher: cmp+jcc decision table (148 instr). | medium |
| `-` | `PAINTRGN` | FAR | 37 | Mid-size function (37 instr, 1 calls). | low |
| `-` | `PATBLT` | FAR | 38 | Paints a rectangle with the current brush. | high |
| `-` | `PIE` | FAR | 41 | Draws a pie slice. | high |
| `-` | `PIXTOLINE` | FAR | 95 | Dispatcher: cmp+jcc decision table (95 instr). | medium |
| `-` | `PLAYMETAFILE` | FAR | 134 | Dispatcher: cmp+jcc decision table (134 instr). | medium |
| `-` | `POLYGON` | FAR | 45 | Draws a polygon. | high |
| `-` | `POLYLINE` | FAR | 76 | Draws a sequence of lines. | high |
| `-` | `PTINREGION` | FAR | 34 | Mid-size function (34 instr, 0 calls). | low |
| `-` | `PTVISIBLE` | FAR | 42 | Mid-size function (42 instr, 2 calls). | low |
| `-` | `QUERYABORT` | FAR | 25 | Unclassified function (25 instr). | unknown |
| `-` | `RCOS` | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. | low |
| `-` | `RECTANGLE` | FAR | 528 | Draws a rectangle using the current pen and brush. | high |
| `-` | `RECTSTUFF` | FAR | 93 | Complex function: 93 instructions, 6 calls, 8 branches. | low |
| `-` | `RECTVISIBLE` | FAR | 99 | Iterator with string ops (movsb/scasb/...) (99 instr). | medium |
| `-` | `REMOVEFONTRESOURCE` | FAR | 95 | Dispatcher: cmp+jcc decision table (95 instr). | medium |
| `-` | `RESTOREDC` | FAR | 69 | Restores a previously saved DC state. | high |
| `-` | `RESTOREVISRGN` | FAR | 32 | Mid-size function (32 instr, 3 calls). | low |
| `-` | `RESURRECTION` | FAR | 20 | Unclassified function (20 instr). | unknown |
| `-` | `ROUNDRECT` | FAR | 40 | Mid-size function (40 instr, 0 calls). | low |
| `-` | `RSIN` | FAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. | low |
| `-` | `SAVEDC` | FAR | 78 | Saves the current DC state. | high |
| `-` | `SAVEVISRGN` | FAR | 30 | Unclassified function (30 instr). | unknown |
| `-` | `SCALEEXT` | FAR | 55 | Mid-size function (55 instr, 1 calls). | low |
| `-` | `SCALEVIEWPORTEXT` | FAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `-` | `SCALEWINDOWEXT` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `SCANLR` | FAR | 56 | Iterator with string ops (movsb/scasb/...) (56 instr). | medium |
| `-` | `SELECTCLIPRGN` | FAR | 49 | Mid-size function (49 instr, 5 calls). | low |
| `-` | `SELECTOBJECT` | FAR | 209 | Selects a new active object into a DC (pen, brush, font, bitmap). | high |
| `-` | `SELECTVISRGN` | FAR | 31 | Mid-size function (31 instr, 3 calls). | low |
| `-` | `SETBITMAPDIMENSION` | FAR | 21 | Setter: changes bitmapdimension. | medium |
| `-` | `SETBKCOLOR` | FAR | 47 | Setter: changes bkcolor. | medium |
| `-` | `SETBKMODE` | FAR | 3 | Setter: changes bkmode. | medium |
| `-` | `SETBRUSHORG` | FAR | 21 | Setter: changes brushorg. | medium |
| `-` | `SETDCORG` | FAR | 61 | Setter: changes dcorg. | medium |
| `-` | `SETENVIRONMENT` | FAR | 81 | Setter: changes environment. | medium |
| `-` | `SETMAPMODE` | FAR | 68 | Setter: changes mapmode. | medium |
| `-` | `SETMAPPERFLAGS` | FAR | 15 | Setter: changes mapperflags. | medium |
| `-` | `SETMETAFILEBITS` | FAR | 24 | Setter: changes metafilebits. | medium |
| `-` | `SETPIXEL` | FAR | 78 | Sets a coloured pixel at (x,y). | high |
| `-` | `SETPOLYFILLMODE` | FAR | 3 | Setter: changes polyfillmode. | medium |
| `-` | `SETRELABS` | FAR | 3 | Setter: changes relabs. | medium |
| `-` | `SETROP2` | FAR | 3 | Setter: changes rop2. | medium |
| `-` | `SETSTRETCHBLTMODE` | FAR | 3 | Setter: changes stretchbltmode. | medium |
| `-` | `SETTEXTCHARACTEREXTRA` | FAR | 49 | Setter: changes textcharacterextra. | medium |
| `-` | `SETTEXTCOLOR` | FAR | 34 | Setter: changes textcolor. | medium |
| `-` | `SETTEXTJUSTIFICATION` | FAR | 61 | Setter: changes textjustification. | medium |
| `-` | `SETVIEWPORTEXT` | FAR | 2 | Setter: changes viewportext. | medium |
| `-` | `SETVIEWPORTORG` | FAR | 15 | Setter: changes viewportorg. | medium |
| `-` | `SETWINDOWEXT` | FAR | 3 | Setter: changes windowext. | medium |
| `-` | `SETWINDOWORG` | FAR | 15 | Setter: changes windoworg. | medium |
| `-` | `SETWINVIEWEXT` | FAR | 60 | Setter: changes winviewext. | medium |
| `-` | `SIZEPQ` | FAR | 57 | Mid-size function (57 instr, 3 calls). | low |
| `-` | `STARTSPOOLPAGE` | FAR | 181 | Dispatcher: cmp+jcc decision table (181 instr). | medium |
| `-` | `STRETCHBLT` | FAR | 143 | Copies with scaling. | high |
| `-` | `TEXTOUT` | FAR | 168 | Draws a string at (x,y) using the DC font. | high |
| `-` | `UNLOCKDC` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `UNREALIZEOBJECT` | FAR | 41 | Mid-size function (41 instr, 1 calls). | low |
| `-` | `WORDSET` | FAR | 32 | Mid-size function (32 instr, 1 calls). | low |
| `-` | `WRITEDIALOG` | FAR | 140 | Dispatcher: cmp+jcc decision table (140 instr). | medium |
| `-` | `WRITESPOOL` | FAR | 117 | Complex function: 117 instructions, 4 calls, 15 branches. | low |
| `-` | `entry` | FAR | 46 | Mid-size function (46 instr, 3 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 136 | Dispatcher: cmp+jcc decision table (136 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 39 | Mid-size function (39 instr, 0 calls). | low |
| `0x0000` | `sub_0000` | FAR | 38 | Dispatcher: cmp+jcc decision table (38 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 53 | Mid-size function (53 instr, 0 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 69 | Dispatcher: cmp+jcc decision table (69 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 596 | Iterator with string ops (movsb/scasb/...) (596 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 132 | Dispatcher: cmp+jcc decision table (132 instr). | medium |
| `0x0000` | `sub_0000` | FAR | 244 | Dispatcher: cmp+jcc decision table (244 instr). | medium |
| `0x0000` | `sub_0000` | NEAR | 17 | Leaf function (no callees, 17 instr): likely arithmetic/conversion helper. | low |
| `0x0050` | `sub_0050` | FAR | 49 | Mid-size function (49 instr, 0 calls). | low |
| `0x0054` | `sub_0054` | FAR | 104 | Dispatcher: cmp+jcc decision table (104 instr). | medium |
| `0x005C` | `sub_005C` | NEAR | 138 | Iterator with loop (138 instr). | medium |
| `0x006E` | `sub_006E` | FAR | 944 | Iterator with string ops (movsb/scasb/...) (944 instr). | medium |
| `0x0071` | `sub_0071` | FAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x0072` | `sub_0072` | NEAR | 47 | Dispatcher: cmp+jcc decision table (47 instr). | medium |
| `0x0091` | `sub_0091` | FAR | 34 | Mid-size function (34 instr, 0 calls). | low |
| `0x00AF` | `sub_00AF` | NEAR | 116 | Dispatcher: cmp+jcc decision table (116 instr). | medium |
| `0x00B3` | `sub_00B3` | NEAR | 86 | Dispatcher: cmp+jcc decision table (86 instr). | medium |
| `0x00C5` | `sub_00C5` | FAR | 40 | Mid-size function (40 instr, 0 calls). | low |
| `0x00DA` | `sub_00DA` | FAR | 34 | Mid-size function (34 instr, 0 calls). | low |
| `0x00E6` | `sub_00E6` | NEAR | 31 | Mid-size function (31 instr, 0 calls). | low |
| `0x0102` | `sub_0102` | NEAR | 53 | Dispatcher: cmp+jcc decision table (53 instr). | medium |
| `0x0103` | `sub_0103` | NEAR | 32 | Mid-size function (32 instr, 0 calls). | low |
| `0x012C` | `sub_012C` | NEAR | 38 | Mid-size function (38 instr, 0 calls). | low |
| `0x0134` | `sub_0134` | FAR | 156 | Dispatcher: cmp+jcc decision table (156 instr). | medium |
| `0x013C` | `sub_013C` | NEAR | 113 | Complex function: 113 instructions, 0 calls, 3 branches. | low |
| `0x0140` | `sub_0140` | FAR | 703 | Dispatcher: cmp+jcc decision table (703 instr). | medium |
| `0x0155` | `sub_0155` | NEAR | 91 | Dispatcher: cmp+jcc decision table (91 instr). | medium |
| `0x017C` | `sub_017C` | NEAR | 137 | Dispatcher: cmp+jcc decision table (137 instr). | medium |
| `0x0195` | `sub_0195` | NEAR | 32 | Mid-size function (32 instr, 0 calls). | low |
| `0x019A` | `sub_019A` | NEAR | 99 | Dispatcher: cmp+jcc decision table (99 instr). | medium |
| `0x019E` | `sub_019E` | FAR | 42 | Mid-size function (42 instr, 1 calls). | low |
| `0x01A5` | `sub_01A5` | FAR | 640 | Dispatcher: cmp+jcc decision table (640 instr). | medium |
| `0x0225` | `sub_0225` | FAR | 65 | Mid-size function (65 instr, 4 calls). | low |
| `0x0226` | `sub_0226` | NEAR | 279 | Dispatcher: cmp+jcc decision table (279 instr). | medium |
| `0x0248` | `sub_0248` | NEAR | 148 | Dispatcher: cmp+jcc decision table (148 instr). | medium |
| `0x028C` | `sub_028C` | NEAR | 384 | Dispatcher: cmp+jcc decision table (384 instr). | medium |
| `0x02BA` | `sub_02BA` | NEAR | 61 | Mid-size function (61 instr, 0 calls). | low |
| `0x02CE` | `sub_02CE` | FAR | 903 | Dispatcher: cmp+jcc decision table (903 instr). | medium |
| `0x02D2` | `sub_02D2` | NEAR | 164 | Dispatcher: cmp+jcc decision table (164 instr). | medium |
| `0x02D8` | `sub_02D8` | NEAR | 73 | Mid-size function (73 instr, 0 calls). | low |
| `0x0347` | `sub_0347` | NEAR | 43 | Mid-size function (43 instr, 2 calls). | low |
| `0x037C` | `sub_037C` | FAR | 68 | Mid-size function (68 instr, 3 calls). | low |
| `0x0399` | `sub_0399` | FAR | 1038 | Iterator with string ops (movsb/scasb/...) (1038 instr). | medium |
| `0x03D5` | `sub_03D5` | NEAR | 23 | Unclassified function (23 instr). | unknown |
| `0x03E1` | `sub_03E1` | NEAR | 32 | Mid-size function (32 instr, 0 calls). | low |
| `0x041C` | `sub_041C` | FAR | 194 | Dispatcher: cmp+jcc decision table (194 instr). | medium |
| `0x048E` | `sub_048E` | NEAR | 236 | Dispatcher: cmp+jcc decision table (236 instr). | medium |
| `0x048E` | `sub_048E` | NEAR | 54 | Mid-size function (54 instr, 0 calls). | low |
| `0x04A4` | `sub_04A4` | NEAR | 228 | Dispatcher: cmp+jcc decision table (228 instr). | medium |
| `0x04CD` | `sub_04CD` | NEAR | 19 | Unclassified function (19 instr). | unknown |
| `0x04E9` | `sub_04E9` | NEAR | 60 | Mid-size function (60 instr, 1 calls). | low |
| `0x0500` | `sub_0500` | NEAR | 9 | Iterator with string ops (movsb/scasb/...) (9 instr). | medium |
| `0x0511` | `sub_0511` | NEAR | 5 | Wrapper delegating to KERNEL.LOCALALLOC. | medium |
| `0x053F` | `sub_053F` | NEAR | 201 | Iterator with string ops (movsb/scasb/...) (201 instr). | medium |
| `0x0573` | `sub_0573` | FAR | 102 | Iterator with string ops (movsb/scasb/...) (102 instr). | medium |
| `0x05A4` | `sub_05A4` | NEAR | 81 | Complex function: 81 instructions, 1 calls, 5 branches. | low |
| `0x05B1` | `sub_05B1` | NEAR | 121 | Iterator with string ops (movsb/scasb/...) (121 instr). | medium |
| `0x05F5` | `sub_05F5` | NEAR | 44 | Mid-size function (44 instr, 0 calls). | low |
| `0x0649` | `sub_0649` | NEAR | 132 | Iterator with string ops (movsb/scasb/...) (132 instr). | medium |
| `0x066D` | `sub_066D` | NEAR | 144 | Dispatcher: cmp+jcc decision table (144 instr). | medium |
| `0x06D7` | `sub_06D7` | NEAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x0730` | `sub_0730` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x074D` | `sub_074D` | NEAR | 244 | Iterator with string ops (movsb/scasb/...) (244 instr). | medium |
| `0x07A3` | `sub_07A3` | NEAR | 57 | Dispatcher: cmp+jcc decision table (57 instr). | medium |
| `0x07A3` | `sub_07A3` | NEAR | 109 | Dispatcher: cmp+jcc decision table (109 instr). | medium |
| `0x0806` | `sub_0806` | FAR | 86 | Complex function: 86 instructions, 0 calls, 0 branches. | low |
| `0x0829` | `sub_0829` | NEAR | 34 | Mid-size function (34 instr, 0 calls). | low |
| `0x085B` | `sub_085B` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x0885` | `sub_0885` | NEAR | 171 | Dispatcher: cmp+jcc decision table (171 instr). | medium |
| `0x08AC` | `sub_08AC` | NEAR | 144 | Complex function: 144 instructions, 3 calls, 7 branches. | low |
| `0x08AD` | `sub_08AD` | NEAR | 83 | Dispatcher: cmp+jcc decision table (83 instr). | medium |
| `0x08E4` | `sub_08E4` | FAR | 92 | Dispatcher: cmp+jcc decision table (92 instr). | medium |
| `0x0922` | `sub_0922` | NEAR | 81 | Complex function: 81 instructions, 0 calls, 4 branches. | low |
| `0x0942` | `sub_0942` | NEAR | 139 | Complex function: 139 instructions, 0 calls, 4 branches. | low |
| `0x097A` | `sub_097A` | FAR | 150 | Complex function: 150 instructions, 3 calls, 10 branches. | low |
| `0x09D1` | `sub_09D1` | NEAR | 36 | Mid-size function (36 instr, 2 calls). | low |
| `0x09D6` | `sub_09D6` | NEAR | 12 | Unclassified function (12 instr). | unknown |
| `0x09DB` | `sub_09DB` | NEAR | 27 | Unclassified function (27 instr). | unknown |
| `0x0A10` | `sub_0A10` | FAR | 160 | Dispatcher: cmp+jcc decision table (160 instr). | medium |
| `0x0A18` | `sub_0A18` | NEAR | 499 | Dispatcher: cmp+jcc decision table (499 instr). | medium |
| `0x0A21` | `sub_0A21` | NEAR | 104 | Dispatcher: cmp+jcc decision table (104 instr). | medium |
| `0x0A23` | `sub_0A23` | NEAR | 66 | Iterator with string ops (movsb/scasb/...) (66 instr). | medium |
| `0x0AB0` | `sub_0AB0` | NEAR | 19 | Leaf function (no callees, 19 instr): likely arithmetic/conversion helper. | low |
| `0x0AF5` | `sub_0AF5` | NEAR | 53 | Mid-size function (53 instr, 2 calls). | low |
| `0x0B52` | `sub_0B52` | NEAR | 211 | Iterator with string ops (movsb/scasb/...) (211 instr). | medium |
| `0x0B77` | `sub_0B77` | NEAR | 86 | Dispatcher: cmp+jcc decision table (86 instr). | medium |
| `0x0B82` | `sub_0B82` | NEAR | 59 | Mid-size function (59 instr, 1 calls). | low |
| `0x0BB5` | `sub_0BB5` | NEAR | 67 | Dispatcher: cmp+jcc decision table (67 instr). | medium |
| `0x0C3F` | `sub_0C3F` | NEAR | 27 | Iterator with string ops (movsb/scasb/...) (27 instr). | medium |
| `0x0C69` | `sub_0C69` | NEAR | 547 | Iterator with string ops (movsb/scasb/...) (547 instr). | medium |
| `0x0D1A` | `sub_0D1A` | NEAR | 17 | Unclassified function (17 instr). | unknown |
| `0x0D49` | `sub_0D49` | NEAR | 670 | Dispatcher: cmp+jcc decision table (670 instr). | medium |
| `0x0EA9` | `sub_0EA9` | NEAR | 47 | Mid-size function (47 instr, 0 calls). | low |
| `0x0F13` | `sub_0F13` | NEAR | 558 | Dispatcher: cmp+jcc decision table (558 instr). | medium |
| `0x0F42` | `sub_0F42` | NEAR | 35 | Mid-size function (35 instr, 2 calls). | low |
| `0x0F99` | `sub_0F99` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x0FC0` | `sub_0FC0` | NEAR | 203 | Dispatcher: cmp+jcc decision table (203 instr). | medium |
| `0x1112` | `sub_1112` | NEAR | 35 | Mid-size function (35 instr, 2 calls). | low |
| `0x11A5` | `sub_11A5` | NEAR | 12 | Leaf function (no callees, 12 instr): likely arithmetic/conversion helper. | low |
| `0x11C0` | `sub_11C0` | FAR | 29 | Unclassified function (29 instr). | unknown |
| `0x11F3` | `sub_11F3` | NEAR | 90 | Complex function: 90 instructions, 6 calls, 9 branches. | low |
| `0x120D` | `sub_120D` | NEAR | 85 | Dispatcher: cmp+jcc decision table (85 instr). | medium |
| `0x1234` | `sub_1234` | FAR | 38 | Dispatcher: cmp+jcc decision table (38 instr). | medium |
| `0x1290` | `sub_1290` | NEAR | 37 | Dispatcher: cmp+jcc decision table (37 instr). | medium |
| `0x12EA` | `sub_12EA` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x12FC` | `sub_12FC` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x131C` | `sub_131C` | NEAR | 5 | Leaf function (no callees, 5 instr): likely arithmetic/conversion helper. | low |
| `0x1328` | `sub_1328` | NEAR | 48 | Mid-size function (48 instr, 3 calls). | low |
| `0x1329` | `sub_1329` | NEAR | 35 | Mid-size function (35 instr, 0 calls). | low |
| `0x138A` | `sub_138A` | NEAR | 53 | Mid-size function (53 instr, 1 calls). | low |
| `0x139A` | `sub_139A` | NEAR | 80 | Dispatcher: cmp+jcc decision table (80 instr). | medium |
| `0x1475` | `sub_1475` | NEAR | 53 | Dispatcher: cmp+jcc decision table (53 instr). | medium |
| `0x14CA` | `sub_14CA` | NEAR | 594 | Dispatcher: cmp+jcc decision table (594 instr). | medium |
| `0x1503` | `sub_1503` | NEAR | 35 | Mid-size function (35 instr, 1 calls). | low |
| `0x15CD` | `sub_15CD` | FAR | 28 | Unclassified function (28 instr). | unknown |
| `0x15FE` | `sub_15FE` | FAR | 37 | Mid-size function (37 instr, 1 calls). | low |
| `0x1651` | `sub_1651` | NEAR | 13 | Wrapper delegating to KERNEL.LOCKSEGMENT. | medium |
| `0x1662` | `sub_1662` | FAR | 23 | Unclassified function (23 instr). | unknown |
| `0x1683` | `sub_1683` | NEAR | 13 | Wrapper delegating to KERNEL.UNLOCKSEGMENT. | medium |
| `0x1694` | `sub_1694` | FAR | 23 | Unclassified function (23 instr). | unknown |
| `0x16B5` | `sub_16B5` | NEAR | 10 | Wrapper delegating to KERNEL.LOCALFREE. | medium |
| `0x1863` | `sub_1863` | NEAR | 180 | Iterator with string ops (movsb/scasb/...) (180 instr). | medium |
| `0x19C2` | `sub_19C2` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x19F0` | `sub_19F0` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x1A12` | `sub_1A12` | FAR | 179 | Iterator with string ops (movsb/scasb/...) (179 instr). | medium |
| `0x1C1B` | `sub_1C1B` | NEAR | 45 | Mid-size function (45 instr, 0 calls). | low |
| `0x1C89` | `sub_1C89` | FAR | 82 | Iterator with string ops (movsb/scasb/...) (82 instr). | medium |
| `0x1D2D` | `sub_1D2D` | FAR | 105 | Dispatcher: cmp+jcc decision table (105 instr). | medium |
| `0x1E37` | `sub_1E37` | FAR | 120 | Iterator with string ops (movsb/scasb/...) (120 instr). | medium |
| `0x1F4E` | `sub_1F4E` | FAR | 340 | Iterator with string ops (movsb/scasb/...) (340 instr). | medium |
| `0x26D6` | `sub_26D6` | NEAR | 159 | Dispatcher: cmp+jcc decision table (159 instr). | medium |
| `0x286C` | `sub_286C` | FAR | 76 | Dispatcher: cmp+jcc decision table (76 instr). | medium |
| `0x2BC2` | `sub_2BC2` | FAR | 159 | Dispatcher: cmp+jcc decision table (159 instr). | medium |
| `0x2DE7` | `sub_2DE7` | NEAR | 75 | Mid-size function (75 instr, 0 calls). | low |
| `0x2EC4` | `sub_2EC4` | FAR | 8 | Iterator with loop (8 instr). | medium |
| `0x2ED5` | `sub_2ED5` | FAR | 61 | Mid-size function (61 instr, 4 calls). | low |
| `0x3138` | `sub_3138` | NEAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `0x314B` | `sub_314B` | NEAR | 9 | Leaf function (no callees, 9 instr): likely arithmetic/conversion helper. | low |
| `0x333D` | `sub_333D` | FAR | 30 | Unclassified function (30 instr). | unknown |
| `0x3372` | `sub_3372` | NEAR | 34 | Mid-size function (34 instr, 1 calls). | low |
| `0x33B5` | `sub_33B5` | FAR | 95 | Iterator with string ops (movsb/scasb/...) (95 instr). | medium |
| `0x347E` | `sub_347E` | NEAR | 8 | Wrapper delegating to sub_3493. | medium |
| `0x3493` | `sub_3493` | NEAR | 81 | Iterator with string ops (movsb/scasb/...) (81 instr). | medium |
| `0x3547` | `sub_3547` | NEAR | 51 | Interrupt service routine (51 instructions, likely INT handler). | medium |
| `0x35A8` | `sub_35A8` | NEAR | 105 | Iterator with loop (105 instr). | medium |
| `0x3686` | `sub_3686` | FAR | 29 | Iterator with string ops (movsb/scasb/...) (29 instr). | medium |
| `0x36B8` | `sub_36B8` | FAR | 49 | Mid-size function (49 instr, 0 calls). | low |
| `0x3718` | `sub_3718` | NEAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `0x3721` | `sub_3721` | FAR | 98 | Complex function: 98 instructions, 0 calls, 5 branches. | low |
| `0x37E4` | `sub_37E4` | FAR | 64 | Iterator with string ops (movsb/scasb/...) (64 instr). | medium |
| `0x3872` | `sub_3872` | FAR | 228 | Iterator with string ops (movsb/scasb/...) (228 instr). | medium |
| `0x3B9D` | `sub_3B9D` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x3BCD` | `sub_3BCD` | FAR | 90 | Iterator with string ops (movsb/scasb/...) (90 instr). | medium |
| `0x3CB7` | `sub_3CB7` | FAR | 55 | Iterator with string ops (movsb/scasb/...) (55 instr). | medium |
| `0x3D1F` | `sub_3D1F` | FAR | 380 | Iterator with loop (380 instr). | medium |
| `0x4029` | `sub_4029` | NEAR | 29 | Unclassified function (29 instr). | unknown |
