# Module `KERNEL`

- Functions: **268**
- Confidence: high=55, medium=105, low=66, unknown=42

## Functions

| Offset | Name | Kind | Instr | Description | Conf |
|--------|------|------|-------|-------------|------|
| `-` | `ACCESSRESOURCE` | FAR | 57 | Calls DOS services via INT 21h (57 instr). | medium |
| `-` | `ALLOCRESOURCE` | FAR | 76 | Iterator with loop (76 instr). | medium |
| `-` | `ANSILOWER` | FAR | 14 | Converts an ANSI string to lower case. | high |
| `-` | `ANSINEXT` | FAR | 14 | Wrapper delegating to sub_4E65. | medium |
| `-` | `ANSIPREV` | FAR | 19 | Iterator with string ops (movsb/scasb/...) (19 instr). | medium |
| `-` | `ANSIUPPER` | FAR | 14 | Converts an ANSI string to upper case. | high |
| `-` | `BUILDPDB` | FAR | 102 | Calls DOS services via INT 21h (102 instr). | medium |
| `-` | `CALLPROCINSTANCE` | FAR | 12 | Invokes a thunk previously created by MAKEPROCINSTANCE. | high |
| `-` | `CATCH` | FAR | 36 | Mid-size function (36 instr, 1 calls). | low |
| `-` | `DEFINEHANDLETABLE` | FAR | 31 | Defines a module's handle table. | high |
| `-` | `DELETEATOM` | FAR | 23 | Destructor: frees tom. | medium |
| `-` | `DELETEPATHNAME` | FAR | 6 | Deletes a file by path. | high |
| `-` | `DISABLEDOS` | FAR | 30 | Calls DOS services via INT 21h (30 instr). | medium |
| `-` | `DOS3CALL` | FAR | 2 | Calls DOS services via INT 21h (2 instr). | medium |
| `-` | `ENABLEDOS` | FAR | 75 | Calls DOS services via INT 21h (75 instr). | medium |
| `-` | `EXITKERNEL` | FAR | 41 | Calls DOS services via INT 21h (41 instr). | medium |
| `-` | `FATALEXIT` | FAR | 92 | Calls DOS services via INT 21h (92 instr). | medium |
| `-` | `FINDRESOURCE` | FAR | 109 | Looks up a resource by type and name. | high |
| `-` | `FREELIBRARY` | FAR | 72 | Decrements module refcount; unloads when it reaches 0. | high |
| `-` | `FREEPROCINSTANCE` | FAR | 31 | Frees a thunk created by MAKEPROCINSTANCE. | high |
| `-` | `FREERESOURCE` | FAR | 61 | Frees a resource. | high |
| `-` | `GETATOMHANDLE` | FAR | 17 | Getter: returns atomhandle. | medium |
| `-` | `GETATOMNAME` | FAR | 62 | Getter: returns atomname. | medium |
| `-` | `GETCODEHANDLE` | FAR | 46 | Returns handle of the code segment containing a function. | high |
| `-` | `GETCURRENTPDB` | FAR | 8 | Returns the current PDB (DOS Program Data Block). | high |
| `-` | `GETCURRENTTASK` | FAR | 3 | Getter: returns currenttask. | medium |
| `-` | `GETINSTANCEDATA` | FAR | 31 | Returns a per-task instance-data slot. | high |
| `-` | `GETLASTDISKCHANGE` | FAR | 3 | Detects whether the disk was recently changed. | high |
| `-` | `GETLPERRMODE` | FAR | 3 | Getter: returns lperrmode. | medium |
| `-` | `GETMODULEFILENAME` | FAR | 33 | Retrieves the full file path of a loaded module. | high |
| `-` | `GETMODULEHANDLE` | FAR | 29 | Returns the module handle of a module loaded by name. | high |
| `-` | `GETMODULEUSAGE` | FAR | 16 | Returns the current refcount of a module. | high |
| `-` | `GETPROCADDRESS` | FAR | 40 | Resolves an export name to a FAR PTR address. | high |
| `-` | `GETPROFILEINT` | FAR | 43 | Getter: returns profileint. | medium |
| `-` | `GETPROFILESTRING` | FAR | 72 | Getter: returns profilestring. | medium |
| `-` | `GETTASKQUEUE` | FAR | 3 | Getter: returns taskqueue. | medium |
| `-` | `GETTEMPDRIVE` | FAR | 31 | Returns the recommended temp drive letter (A-Z). | high |
| `-` | `GETTEMPFILENAME` | FAR | 124 | Builds a unique temporary file name. | high |
| `-` | `GETVERSION` | FAR | 2 | Returns Windows version in AX (low=major, high=minor). | high |
| `-` | `GLOBALALLOC` | FAR | 22 | Allocates a block from the system global heap; returns a HANDLE. | high |
| `-` | `GLOBALCOMPACT` | FAR | 28 | Compacts the global heap by moving blocks. | high |
| `-` | `GLOBALFLAGS` | FAR | 7 | Returns flags and refcount of a global block. | high |
| `-` | `GLOBALFREE` | FAR | 19 | Frees a global block identified by HANDLE. | high |
| `-` | `GLOBALFREEALL` | FAR | 36 | Iterator with loop (36 instr). | medium |
| `-` | `GLOBALHANDLE` | FAR | 2 | Returns the HANDLE for a global pointer. | high |
| `-` | `GLOBALLOCK` | FAR | 6 | Locks a global block and returns a FAR pointer. | high |
| `-` | `GLOBALMASTERHANDLE` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `GLOBALREALLOC` | FAR | 22 | Resizes a global block. | high |
| `-` | `GLOBALSIZE` | FAR | 12 | Returns the size of a global block. | high |
| `-` | `GLOBALUNLOCK` | FAR | 5 | Unlocks a previously locked global block. | high |
| `-` | `INITATOMTABLE` | FAR | 32 | Initializes atomtable. | medium |
| `-` | `INITTASK` | FAR | 83 | Initializes the Windows task structure. | high |
| `-` | `ISSCREENGRAB` | FAR | 2 | Predicate: checks whether screengrab. | medium |
| `-` | `LOADLIBRARY` | FAR | 8 | Loads a DLL/EXE and returns its module handle. | high |
| `-` | `LOADMODULE` | FAR | 381 | Loads an NE module into memory and runs its startup code. | high |
| `-` | `LOADRESOURCE` | FAR | 140 | Loads a generic resource. | high |
| `-` | `LOCALALLOC` | FAR | 44 | Allocates a block in the local (DS) heap. | high |
| `-` | `LOCALCOMPACT` | FAR | 23 | Compacts the local heap. | high |
| `-` | `LOCALFLAGS` | FAR | 11 | Flags of a local block. | high |
| `-` | `LOCALFREE` | FAR | 21 | Frees a local block. | high |
| `-` | `LOCALHANDLE` | FAR | 11 | HANDLE of a local pointer. | high |
| `-` | `LOCALINIT` | FAR | 74 | Initializes a local heap inside a segment. | high |
| `-` | `LOCALLOCK` | FAR | 14 | Locks a local block and returns a NEAR pointer. | high |
| `-` | `LOCALNOTIFY` | FAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `-` | `LOCALREALLOC` | FAR | 143 | Resizes a local block. | high |
| `-` | `LOCALSIZE` | FAR | 10 | Size of a local block. | high |
| `-` | `LOCALUNLOCK` | FAR | 15 | Unlocks a local block. | high |
| `-` | `LOCKCURRENTTASK` | FAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `-` | `LOCKRESOURCE` | FAR | 63 | Iterator with loop (63 instr). | medium |
| `-` | `LOCKSEGMENT` | FAR | 4 | Unclassified function (4 instr). | unknown |
| `-` | `LSTRCAT` | FAR | 6 | Concatenates two FAR PTR strings. | high |
| `-` | `LSTRCMP` | FAR | 34 | Compares two FAR PTR strings (signed). | high |
| `-` | `LSTRCPY` | FAR | 9 | Copies an ASCIIZ string FAR PTR -> FAR PTR. | high |
| `-` | `LSTRLEN` | FAR | 13 | Length of a FAR ASCIIZ string. | high |
| `-` | `MAKEPROCINSTANCE` | FAR | 70 | Creates a thunk binding an instance's DS to a proc. | high |
| `-` | `NETBIOSCALL` | FAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `-` | `NOHOOKDOSCALL` | FAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `-` | `OPENFILE` | FAR | 242 | Opens a file. Equivalent to INT 21h fn 3Dh with Windows paths. | high |
| `-` | `OPENPATHNAME` | FAR | 35 | Opens a file by absolute path. | high |
| `-` | `POSTEVENT` | FAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `-` | `SETPRIORITY` | FAR | 21 | Setter: changes priority. | medium |
| `-` | `SETRESOURCEHANDLER` | FAR | 87 | Setter: changes resourcehandler. | medium |
| `-` | `SETSWAPHOOK` | FAR | 6 | Setter: changes swaphook. | medium |
| `-` | `SETTASKQUEUE` | FAR | 4 | Setter: changes taskqueue. | medium |
| `-` | `SETTASKSIGNALPROC` | FAR | 2 | Setter: changes tasksignalproc. | medium |
| `-` | `SIZEOFRESOURCE` | FAR | 21 | Iterator with loop (21 instr). | medium |
| `-` | `THROW` | FAR | 41 | Mid-size function (41 instr, 1 calls). | low |
| `-` | `UNLOCKSEGMENT` | FAR | 4 | Unclassified function (4 instr). | unknown |
| `-` | `VALIDATECODESEGMENTS` | FAR | 1 | Verifies integrity of code segments. | high |
| `-` | `WAITEVENT` | FAR | 16 | Interrupt service routine (16 instructions, likely INT handler). | medium |
| `-` | `WRITEPROFILESTRING` | FAR | 182 | Calls DOS services via INT 21h (182 instr). | medium |
| `-` | `YIELD` | FAR | 28 | Unclassified function (28 instr). | unknown |
| `-` | `_LCLOSE` | FAR | 8 | Closes a file handle. | high |
| `-` | `_LLSEEK` | FAR | 11 | Moves the file pointer. | high |
| `-` | `_LOPEN` | FAR | 2 | Opens a file (low-level, no Windows extras). | high |
| `-` | `_LREAD` | FAR | 2 | Long-read (>64K) from a file handle. | high |
| `0x0240` | `sub_0240` | NEAR | 75 | Mid-size function (75 instr, 6 calls). | low |
| `0x0734` | `sub_0734` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x076A` | `sub_076A` | NEAR | 77 | Iterator with string ops (movsb/scasb/...) (77 instr). | medium |
| `0x0802` | `sub_0802` | NEAR | 81 | Iterator with string ops (movsb/scasb/...) (81 instr). | medium |
| `0x08A3` | `sub_08A3` | NEAR | 27 | Iterator with loop (27 instr). | medium |
| `0x08F6` | `sub_08F6` | NEAR | 35 | Iterator with loop (35 instr). | medium |
| `0x0957` | `sub_0957` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x0984` | `sub_0984` | NEAR | 15 | Leaf function (no callees, 15 instr): likely arithmetic/conversion helper. | low |
| `0x09AA` | `sub_09AA` | NEAR | 31 | Mid-size function (31 instr, 1 calls). | low |
| `0x09F3` | `sub_09F3` | NEAR | 36 | Mid-size function (36 instr, 1 calls). | low |
| `0x0A55` | `sub_0A55` | NEAR | 43 | Iterator with loop (43 instr). | medium |
| `0x0AAC` | `sub_0AAC` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x0ABE` | `sub_0ABE` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x0AF3` | `sub_0AF3` | NEAR | 88 | Calls DOS services via INT 21h (88 instr). | medium |
| `0x0B99` | `sub_0B99` | NEAR | 31 | Iterator with string ops (movsb/scasb/...) (31 instr). | medium |
| `0x0BD1` | `sub_0BD1` | NEAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x0BEA` | `sub_0BEA` | NEAR | 56 | Mid-size function (56 instr, 1 calls). | low |
| `0x0C75` | `sub_0C75` | NEAR | 81 | Complex function: 81 instructions, 3 calls, 11 branches. | low |
| `0x0D3A` | `sub_0D3A` | NEAR | 215 | Calls DOS services via INT 21h (215 instr). | medium |
| `0x0F3C` | `sub_0F3C` | NEAR | 183 | Calls DOS services via INT 21h (183 instr). | medium |
| `0x10B8` | `sub_10B8` | NEAR | 31 | Mid-size function (31 instr, 1 calls). | low |
| `0x110B` | `sub_110B` | NEAR | 26 | Unclassified function (26 instr). | unknown |
| `0x120B` | `sub_120B` | FAR | 351 | Calls DOS services via INT 21h (351 instr). | medium |
| `0x1528` | `sub_1528` | NEAR | 30 | Dispatcher: cmp+jcc decision table (30 instr). | medium |
| `0x15F5` | `sub_15F5` | NEAR | 24 | Iterator with string ops (movsb/scasb/...) (24 instr). | medium |
| `0x17EA` | `sub_17EA` | NEAR | 27 | Unclassified function (27 instr). | unknown |
| `0x181E` | `sub_181E` | NEAR | 196 | Iterator with string ops (movsb/scasb/...) (196 instr). | medium |
| `0x1D50` | `sub_1D50` | NEAR | 6 | Leaf function (no callees, 6 instr): likely arithmetic/conversion helper. | low |
| `0x1D5D` | `sub_1D5D` | NEAR | 9 | Unclassified function (9 instr). | unknown |
| `0x1D73` | `sub_1D73` | NEAR | 16 | Unclassified function (16 instr). | unknown |
| `0x1D9D` | `sub_1D9D` | NEAR | 21 | Unclassified function (21 instr). | unknown |
| `0x1DCD` | `sub_1DCD` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x1DF3` | `sub_1DF3` | NEAR | 159 | Calls DOS services via INT 21h (159 instr). | medium |
| `0x1F38` | `sub_1F38` | NEAR | 61 | Calls DOS services via INT 21h (61 instr). | medium |
| `0x2004` | `sub_2004` | NEAR | 12 | Leaf function (no callees, 12 instr): likely arithmetic/conversion helper. | low |
| `0x211D` | `sub_211D` | NEAR | 30 | Iterator with loop (30 instr). | medium |
| `0x2172` | `sub_2172` | NEAR | 322 | Calls DOS services via INT 21h (322 instr). | medium |
| `0x24C5` | `sub_24C5` | NEAR | 14 | Wrapper delegating to sub_0B99. | medium |
| `0x24E9` | `sub_24E9` | NEAR | 27 | Unclassified function (27 instr). | unknown |
| `0x2524` | `sub_2524` | NEAR | 55 | Mid-size function (55 instr, 4 calls). | low |
| `0x29D9` | `sub_29D9` | NEAR | 22 | Unclassified function (22 instr). | unknown |
| `0x2AA3` | `sub_2AA3` | NEAR | 62 | Calls DOS services via INT 21h (62 instr). | medium |
| `0x2D2D` | `sub_2D2D` | NEAR | 46 | Calls DOS services via INT 21h (46 instr). | medium |
| `0x2D9C` | `sub_2D9C` | NEAR | 33 | Iterator with string ops (movsb/scasb/...) (33 instr). | medium |
| `0x2DDC` | `sub_2DDC` | NEAR | 34 | Iterator with string ops (movsb/scasb/...) (34 instr). | medium |
| `0x2E1E` | `sub_2E1E` | NEAR | 67 | Dispatcher: cmp+jcc decision table (67 instr). | medium |
| `0x2EC3` | `sub_2EC3` | NEAR | 44 | Iterator with loop (44 instr). | medium |
| `0x2F30` | `sub_2F30` | NEAR | 128 | Dispatcher: cmp+jcc decision table (128 instr). | medium |
| `0x3150` | `sub_3150` | FAR | 129 | Dispatcher: cmp+jcc decision table (129 instr). | medium |
| `0x3287` | `sub_3287` | NEAR | 30 | Unclassified function (30 instr). | unknown |
| `0x32D9` | `sub_32D9` | NEAR | 25 | Unclassified function (25 instr). | unknown |
| `0x3312` | `sub_3312` | NEAR | 78 | Iterator with loop (78 instr). | medium |
| `0x33C3` | `sub_33C3` | NEAR | 71 | Calls DOS services via INT 21h (71 instr). | medium |
| `0x3485` | `sub_3485` | NEAR | 68 | Calls DOS services via INT 21h (68 instr). | medium |
| `0x3528` | `sub_3528` | NEAR | 74 | Iterator with string ops (movsb/scasb/...) (74 instr). | medium |
| `0x35D9` | `sub_35D9` | NEAR | 9 | Leaf function (no callees, 9 instr): likely arithmetic/conversion helper. | low |
| `0x35EF` | `sub_35EF` | FAR | 109 | Dispatcher: cmp+jcc decision table (109 instr). | medium |
| `0x370B` | `sub_370B` | FAR | 9 | Unclassified function (9 instr). | unknown |
| `0x375B` | `sub_375B` | NEAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `0x3767` | `sub_3767` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x376D` | `sub_376D` | NEAR | 13 | Unclassified function (13 instr). | unknown |
| `0x39D8` | `sub_39D8` | NEAR | 19 | Unclassified function (19 instr). | unknown |
| `0x3A0F` | `sub_3A0F` | NEAR | 27 | Unclassified function (27 instr). | unknown |
| `0x3B4B` | `sub_3B4B` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x3B64` | `sub_3B64` | NEAR | 15 | Leaf function (no callees, 15 instr): likely arithmetic/conversion helper. | low |
| `0x3B7D` | `sub_3B7D` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x3B80` | `sub_3B80` | NEAR | 12 | Leaf function (no callees, 12 instr): likely arithmetic/conversion helper. | low |
| `0x3BA4` | `sub_3BA4` | NEAR | 119 | Dispatcher: cmp+jcc decision table (119 instr). | medium |
| `0x3CB3` | `sub_3CB3` | NEAR | 18 | Unclassified function (18 instr). | unknown |
| `0x3CD5` | `sub_3CD5` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x3CE8` | `sub_3CE8` | NEAR | 7 | Leaf function (no callees, 7 instr): likely arithmetic/conversion helper. | low |
| `0x3CF4` | `sub_3CF4` | NEAR | 17 | Leaf function (no callees, 17 instr): likely arithmetic/conversion helper. | low |
| `0x3D13` | `sub_3D13` | NEAR | 3 | Trivial stub (3 instructions, no significant logic). | low |
| `0x3D19` | `sub_3D19` | NEAR | 5 | Wrapper delegating to sub_3DD1. | medium |
| `0x3D24` | `sub_3D24` | NEAR | 68 | Dispatcher: cmp+jcc decision table (68 instr). | medium |
| `0x3DCF` | `sub_3DCF` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x3DD1` | `sub_3DD1` | NEAR | 445 | Dispatcher: cmp+jcc decision table (445 instr). | medium |
| `0x4472` | `sub_4472` | NEAR | 20 | Unclassified function (20 instr). | unknown |
| `0x44A4` | `sub_44A4` | NEAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x44BF` | `sub_44BF` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x44C6` | `sub_44C6` | NEAR | 15 | Iterator with string ops (movsb/scasb/...) (15 instr). | medium |
| `0x451C` | `sub_451C` | FAR | 178 | Iterator with string ops (movsb/scasb/...) (178 instr). | medium |
| `0x483E` | `sub_483E` | NEAR | 79 | Dispatcher: cmp+jcc decision table (79 instr). | medium |
| `0x48D7` | `sub_48D7` | NEAR | 58 | Mid-size function (58 instr, 2 calls). | low |
| `0x494C` | `sub_494C` | NEAR | 16 | Unclassified function (16 instr). | unknown |
| `0x496C` | `sub_496C` | NEAR | 66 | Calls DOS services via INT 21h (66 instr). | medium |
| `0x49F5` | `sub_49F5` | NEAR | 75 | Iterator with string ops (movsb/scasb/...) (75 instr). | medium |
| `0x4A7B` | `sub_4A7B` | NEAR | 8 | Unclassified function (8 instr). | unknown |
| `0x4A8B` | `sub_4A8B` | NEAR | 13 | Calls DOS services via INT 21h (13 instr). | medium |
| `0x4AA5` | `sub_4AA5` | NEAR | 1 | Trivial stub (1 instructions, no significant logic). | low |
| `0x4AA8` | `sub_4AA8` | NEAR | 5 | Calls DOS services via INT 21h (5 instr). | medium |
| `0x4C58` | `sub_4C58` | NEAR | 9 | Calls DOS services via INT 21h (9 instr). | medium |
| `0x4C6A` | `sub_4C6A` | NEAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x4D0C` | `sub_4D0C` | FAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x4E0F` | `sub_4E0F` | NEAR | 14 | Iterator with string ops (movsb/scasb/...) (14 instr). | medium |
| `0x4E27` | `sub_4E27` | NEAR | 14 | Iterator with string ops (movsb/scasb/...) (14 instr). | medium |
| `0x4E3F` | `sub_4E3F` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x4E52` | `sub_4E52` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x4E65` | `sub_4E65` | NEAR | 20 | Leaf function (no callees, 20 instr): likely arithmetic/conversion helper. | low |
| `0x4E93` | `sub_4E93` | NEAR | 6 | Leaf function (no callees, 6 instr): likely arithmetic/conversion helper. | low |
| `0x4EA3` | `sub_4EA3` | NEAR | 5 | Leaf function (no callees, 5 instr): likely arithmetic/conversion helper. | low |
| `0x4EA9` | `sub_4EA9` | NEAR | 12 | Wrapper delegating to sub_4EA3. | medium |
| `0x4EBD` | `sub_4EBD` | NEAR | 88 | Iterator with loop (88 instr). | medium |
| `0x4F76` | `sub_4F76` | NEAR | 25 | Unclassified function (25 instr). | unknown |
| `0x4FAD` | `sub_4FAD` | NEAR | 31 | Mid-size function (31 instr, 0 calls). | low |
| `0x4FE1` | `sub_4FE1` | NEAR | 36 | Iterator with loop (36 instr). | medium |
| `0x5024` | `sub_5024` | NEAR | 176 | Iterator with loop (176 instr). | medium |
| `0x519E` | `sub_519E` | NEAR | 11 | Unclassified function (11 instr). | unknown |
| `0x51B6` | `sub_51B6` | NEAR | 10 | Unclassified function (10 instr). | unknown |
| `0x51CB` | `sub_51CB` | NEAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x51DE` | `sub_51DE` | NEAR | 14 | Wrapper delegating to sub_567A. | medium |
| `0x51FB` | `sub_51FB` | NEAR | 9 | Leaf function (no callees, 9 instr): likely arithmetic/conversion helper. | low |
| `0x5621` | `sub_5621` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x564E` | `sub_564E` | NEAR | 12 | Iterator with string ops (movsb/scasb/...) (12 instr). | medium |
| `0x5661` | `sub_5661` | NEAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x567A` | `sub_567A` | NEAR | 10 | Leaf function (no callees, 10 instr): likely arithmetic/conversion helper. | low |
| `0x568D` | `sub_568D` | NEAR | 27 | Iterator with string ops (movsb/scasb/...) (27 instr). | medium |
| `0x56C4` | `sub_56C4` | NEAR | 8 | Leaf function (no callees, 8 instr): likely arithmetic/conversion helper. | low |
| `0x56D5` | `sub_56D5` | NEAR | 23 | Unclassified function (23 instr). | unknown |
| `0x5707` | `sub_5707` | NEAR | 63 | Dispatcher: cmp+jcc decision table (63 instr). | medium |
| `0x5792` | `sub_5792` | NEAR | 32 | Mid-size function (32 instr, 4 calls). | low |
| `0x57D8` | `sub_57D8` | NEAR | 214 | Dispatcher: cmp+jcc decision table (214 instr). | medium |
| `0x59D3` | `sub_59D3` | NEAR | 15 | Unclassified function (15 instr). | unknown |
| `0x59F5` | `sub_59F5` | NEAR | 20 | Iterator with loop (20 instr). | medium |
| `0x5A2A` | `sub_5A2A` | NEAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `0x5A32` | `sub_5A32` | NEAR | 10 | Wrapper delegating to sub_5A49. | medium |
| `0x5A49` | `sub_5A49` | NEAR | 45 | Mid-size function (45 instr, 0 calls). | low |
| `0x5AA9` | `sub_5AA9` | NEAR | 25 | Unclassified function (25 instr). | unknown |
| `0x5AE7` | `sub_5AE7` | NEAR | 32 | Mid-size function (32 instr, 0 calls). | low |
| `0x5B32` | `sub_5B32` | NEAR | 16 | Leaf function (no callees, 16 instr): likely arithmetic/conversion helper. | low |
| `0x5B54` | `sub_5B54` | NEAR | 25 | Unclassified function (25 instr). | unknown |
| `0x5B94` | `sub_5B94` | NEAR | 12 | Leaf function (no callees, 12 instr): likely arithmetic/conversion helper. | low |
| `0x5BB6` | `sub_5BB6` | NEAR | 28 | Unclassified function (28 instr). | unknown |
| `0x5BE7` | `sub_5BE7` | NEAR | 106 | Iterator with loop (106 instr). | medium |
| `0x5CDA` | `sub_5CDA` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x5D1A` | `sub_5D1A` | NEAR | 15 | Iterator with loop (15 instr). | medium |
| `0x5D38` | `sub_5D38` | NEAR | 94 | Dispatcher: cmp+jcc decision table (94 instr). | medium |
| `0x5E01` | `sub_5E01` | NEAR | 98 | Dispatcher: cmp+jcc decision table (98 instr). | medium |
| `0x5EBF` | `sub_5EBF` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x5EF6` | `sub_5EF6` | NEAR | 40 | Iterator with loop (40 instr). | medium |
| `0x5F52` | `sub_5F52` | NEAR | 16 | Leaf function (no callees, 16 instr): likely arithmetic/conversion helper. | low |
| `0x5F78` | `sub_5F78` | NEAR | 8 | Wrapper delegating to sub_5F52. | medium |
| `0x5F89` | `sub_5F89` | NEAR | 64 | Mid-size function (64 instr, 2 calls). | low |
| `0x6022` | `sub_6022` | NEAR | 30 | Iterator with loop (30 instr). | medium |
| `0x6064` | `sub_6064` | NEAR | 49 | Mid-size function (49 instr, 3 calls). | low |
| `0x60D6` | `sub_60D6` | FAR | 113 | Iterator with string ops (movsb/scasb/...) (113 instr). | medium |
| `0x61DA` | `sub_61DA` | NEAR | 9 | Leaf function (no callees, 9 instr): likely arithmetic/conversion helper. | low |
| `0x61F3` | `sub_61F3` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x61FC` | `sub_61FC` | NEAR | 4 | Unclassified function (4 instr). | unknown |
| `0x6205` | `sub_6205` | NEAR | 5 | Unclassified function (5 instr). | unknown |
| `0x6210` | `sub_6210` | NEAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `0x621B` | `sub_621B` | NEAR | 2 | Trivial stub (2 instructions, no significant logic). | low |
| `0x621F` | `sub_621F` | NEAR | 52 | Iterator with loop (52 instr). | medium |
| `0x6292` | `sub_6292` | NEAR | 29 | Unclassified function (29 instr). | unknown |
| `0x62CD` | `sub_62CD` | NEAR | 7 | Wrapper delegating to sub_5D1A. | medium |
| `0x62DE` | `sub_62DE` | NEAR | 67 | Iterator with loop (67 instr). | medium |
| `0x6383` | `sub_6383` | NEAR | 109 | Iterator with loop (109 instr). | medium |
| `0x6469` | `sub_6469` | NEAR | 4 | Leaf function (no callees, 4 instr): likely arithmetic/conversion helper. | low |
| `0x6548` | `sub_6548` | NEAR | 15 | Leaf function (no callees, 15 instr): likely arithmetic/conversion helper. | low |
| `0x6646` | `sub_6646` | NEAR | 22 | Unclassified function (22 instr). | unknown |
| `0x667C` | `sub_667C` | NEAR | 13 | Leaf function (no callees, 13 instr): likely arithmetic/conversion helper. | low |
| `0x669F` | `sub_669F` | NEAR | 14 | Leaf function (no callees, 14 instr): likely arithmetic/conversion helper. | low |
| `0x6A0C` | `sub_6A0C` | NEAR | 95 | Iterator with loop (95 instr). | medium |
| `0x6B07` | `sub_6B07` | NEAR | 105 | Iterator with string ops (movsb/scasb/...) (105 instr). | medium |
| `0x6C21` | `sub_6C21` | NEAR | 457 | Iterator with string ops (movsb/scasb/...) (457 instr). | medium |
| `0x70B5` | `sub_70B5` | NEAR | 24 | Unclassified function (24 instr). | unknown |
| `0x70E9` | `sub_70E9` | NEAR | 42 | Interrupt service routine (42 instructions, likely INT handler). | medium |
| `0x712E` | `sub_712E` | NEAR | 149 | Calls DOS services via INT 21h (149 instr). | medium |
| `0x7253` | `sub_7253` | NEAR | 25 | Unclassified function (25 instr). | unknown |
| `0x7289` | `sub_7289` | NEAR | 268 | Calls DOS services via INT 21h (268 instr). | medium |
| `0x7569` | `sub_7569` | NEAR | 89 | Complex function: 89 instructions, 0 calls, 0 branches. | low |
| `0x7643` | `sub_7643` | FAR | 404 | Iterator with string ops (movsb/scasb/...) (404 instr). | medium |
