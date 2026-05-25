# Modulo `KERNEL`

- Funciones: **268**
- Confidence: high=55, medium=105, low=66, unknown=42

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `ACCESSRESOURCE` | FAR | 57 | Llama a servicios DOS via INT 21h (57 instr). | medium |
| `-` | `ALLOCRESOURCE` | FAR | 76 | Iterador con bucle (76 instr). | medium |
| `-` | `ANSILOWER` | FAR | 14 | Convierte cadena ANSI a minusculas. | high |
| `-` | `ANSINEXT` | FAR | 14 | Wrapper que delega en sub_4E65. | medium |
| `-` | `ANSIPREV` | FAR | 19 | Iterador con instrucciones de string (movsb/scasb/...) (19 instr). | medium |
| `-` | `ANSIUPPER` | FAR | 14 | Convierte cadena ANSI a mayusculas. | high |
| `-` | `BUILDPDB` | FAR | 102 | Llama a servicios DOS via INT 21h (102 instr). | medium |
| `-` | `CALLPROCINSTANCE` | FAR | 12 | Invoca un thunk creado por MAKEPROCINSTANCE. | high |
| `-` | `CATCH` | FAR | 36 | Funcion mediana (36 instr, 1 calls). | low |
| `-` | `DEFINEHANDLETABLE` | FAR | 31 | Define tabla de handles para un modulo. | high |
| `-` | `DELETEATOM` | FAR | 23 | Destructor: libera tom. | medium |
| `-` | `DELETEPATHNAME` | FAR | 6 | Borra un fichero por path. | high |
| `-` | `DISABLEDOS` | FAR | 30 | Llama a servicios DOS via INT 21h (30 instr). | medium |
| `-` | `DOS3CALL` | FAR | 2 | Llama a servicios DOS via INT 21h (2 instr). | medium |
| `-` | `ENABLEDOS` | FAR | 75 | Llama a servicios DOS via INT 21h (75 instr). | medium |
| `-` | `EXITKERNEL` | FAR | 41 | Llama a servicios DOS via INT 21h (41 instr). | medium |
| `-` | `FATALEXIT` | FAR | 92 | Llama a servicios DOS via INT 21h (92 instr). | medium |
| `-` | `FINDRESOURCE` | FAR | 109 | Busca recurso por tipo+nombre. | high |
| `-` | `FREELIBRARY` | FAR | 72 | Decrementa refcount y descarga un modulo cuando llega a 0. | high |
| `-` | `FREEPROCINSTANCE` | FAR | 31 | Libera un thunk creado por MAKEPROCINSTANCE. | high |
| `-` | `FREERESOURCE` | FAR | 61 | Libera recurso. | high |
| `-` | `GETATOMHANDLE` | FAR | 17 | Getter: devuelve atomhandle. | medium |
| `-` | `GETATOMNAME` | FAR | 62 | Getter: devuelve atomname. | medium |
| `-` | `GETCODEHANDLE` | FAR | 46 | Devuelve handle del segmento de codigo de una funcion. | high |
| `-` | `GETCURRENTPDB` | FAR | 8 | Devuelve PDB (Program Data Block, DOS) actual. | high |
| `-` | `GETCURRENTTASK` | FAR | 3 | Getter: devuelve currenttask. | medium |
| `-` | `GETINSTANCEDATA` | FAR | 31 | Devuelve un slot de datos por instancia de tarea. | high |
| `-` | `GETLASTDISKCHANGE` | FAR | 3 | Detecta si el disco fue cambiado recientemente. | high |
| `-` | `GETLPERRMODE` | FAR | 3 | Getter: devuelve lperrmode. | medium |
| `-` | `GETMODULEFILENAME` | FAR | 33 | Path completo del binario de un modulo. | high |
| `-` | `GETMODULEHANDLE` | FAR | 29 | Devuelve handle de un modulo cargado por nombre. | high |
| `-` | `GETMODULEUSAGE` | FAR | 16 | Devuelve el refcount actual del modulo. | high |
| `-` | `GETPROCADDRESS` | FAR | 40 | Resuelve nombre de export a direccion FAR PTR. | high |
| `-` | `GETPROFILEINT` | FAR | 43 | Getter: devuelve profileint. | medium |
| `-` | `GETPROFILESTRING` | FAR | 72 | Getter: devuelve profilestring. | medium |
| `-` | `GETTASKQUEUE` | FAR | 3 | Getter: devuelve taskqueue. | medium |
| `-` | `GETTEMPDRIVE` | FAR | 31 | Devuelve unidad temporal recomendada (A-Z). | high |
| `-` | `GETTEMPFILENAME` | FAR | 124 | Construye un nombre unico de fichero temporal. | high |
| `-` | `GETVERSION` | FAR | 2 | Devuelve la version de Windows (low=major, high=minor) en AX. | high |
| `-` | `GLOBALALLOC` | FAR | 22 | Reserva un bloque global del heap del sistema. Devuelve HANDLE. | high |
| `-` | `GLOBALCOMPACT` | FAR | 28 | Compacta el heap global moviendo bloques. | high |
| `-` | `GLOBALFLAGS` | FAR | 7 | Devuelve flags y refcount de un bloque global. | high |
| `-` | `GLOBALFREE` | FAR | 19 | Libera un bloque global identificado por HANDLE. | high |
| `-` | `GLOBALFREEALL` | FAR | 36 | Iterador con bucle (36 instr). | medium |
| `-` | `GLOBALHANDLE` | FAR | 2 | Devuelve HANDLE desde un puntero global. | high |
| `-` | `GLOBALLOCK` | FAR | 6 | Bloquea un bloque global y devuelve puntero FAR. | high |
| `-` | `GLOBALMASTERHANDLE` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `GLOBALREALLOC` | FAR | 22 | Cambia el tamano de un bloque global. | high |
| `-` | `GLOBALSIZE` | FAR | 12 | Devuelve el tamano de un bloque global. | high |
| `-` | `GLOBALUNLOCK` | FAR | 5 | Desbloquea un bloque global previamente bloqueado. | high |
| `-` | `INITATOMTABLE` | FAR | 32 | Inicializa atomtable. | medium |
| `-` | `INITTASK` | FAR | 83 | Inicializa estructura de tarea Windows. | high |
| `-` | `ISSCREENGRAB` | FAR | 2 | Predicado: verifica si screengrab. | medium |
| `-` | `LOADLIBRARY` | FAR | 8 | Carga una DLL/EXE y devuelve handle. | high |
| `-` | `LOADMODULE` | FAR | 381 | Carga un modulo NE en memoria, ejecutando su startup. | high |
| `-` | `LOADRESOURCE` | FAR | 140 | Carga recurso generico. | high |
| `-` | `LOCALALLOC` | FAR | 44 | Reserva un bloque en el heap local (DS). | high |
| `-` | `LOCALCOMPACT` | FAR | 23 | Compacta el heap local. | high |
| `-` | `LOCALFLAGS` | FAR | 11 | Flags de un bloque local. | high |
| `-` | `LOCALFREE` | FAR | 21 | Libera un bloque local. | high |
| `-` | `LOCALHANDLE` | FAR | 11 | HANDLE de un puntero local. | high |
| `-` | `LOCALINIT` | FAR | 74 | Inicializa un heap local en un segmento. | high |
| `-` | `LOCALLOCK` | FAR | 14 | Bloquea un bloque local y devuelve puntero NEAR. | high |
| `-` | `LOCALNOTIFY` | FAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `-` | `LOCALREALLOC` | FAR | 143 | Cambia el tamano de un bloque local. | high |
| `-` | `LOCALSIZE` | FAR | 10 | Tamano de un bloque local. | high |
| `-` | `LOCALUNLOCK` | FAR | 15 | Desbloquea un bloque local. | high |
| `-` | `LOCKCURRENTTASK` | FAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `-` | `LOCKRESOURCE` | FAR | 63 | Iterador con bucle (63 instr). | medium |
| `-` | `LOCKSEGMENT` | FAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `-` | `LSTRCAT` | FAR | 6 | Concatena dos cadenas FAR PTR. | high |
| `-` | `LSTRCMP` | FAR | 34 | Compara dos cadenas FAR PTR (signed). | high |
| `-` | `LSTRCPY` | FAR | 9 | Copia cadena ASCIIZ FAR PTR -> FAR PTR. | high |
| `-` | `LSTRLEN` | FAR | 13 | Longitud de cadena ASCIIZ FAR. | high |
| `-` | `MAKEPROCINSTANCE` | FAR | 70 | Crea un thunk que ata DS de una instancia a un proc. | high |
| `-` | `NETBIOSCALL` | FAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `-` | `NOHOOKDOSCALL` | FAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `-` | `OPENFILE` | FAR | 242 | Abre un fichero. Equivalente a INT 21h fn 3Dh con paths Windows. | high |
| `-` | `OPENPATHNAME` | FAR | 35 | Abre fichero por path absoluto. | high |
| `-` | `POSTEVENT` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `SETPRIORITY` | FAR | 21 | Setter: cambia priority. | medium |
| `-` | `SETRESOURCEHANDLER` | FAR | 87 | Setter: cambia resourcehandler. | medium |
| `-` | `SETSWAPHOOK` | FAR | 6 | Setter: cambia swaphook. | medium |
| `-` | `SETTASKQUEUE` | FAR | 4 | Setter: cambia taskqueue. | medium |
| `-` | `SETTASKSIGNALPROC` | FAR | 2 | Setter: cambia tasksignalproc. | medium |
| `-` | `SIZEOFRESOURCE` | FAR | 21 | Iterador con bucle (21 instr). | medium |
| `-` | `THROW` | FAR | 41 | Funcion mediana (41 instr, 1 calls). | low |
| `-` | `UNLOCKSEGMENT` | FAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `-` | `VALIDATECODESEGMENTS` | FAR | 1 | Verifica integridad de segmentos de codigo. | high |
| `-` | `WAITEVENT` | FAR | 16 | Interrupt Service Routine (16 instrucciones, posible manejador de INT). | medium |
| `-` | `WRITEPROFILESTRING` | FAR | 182 | Llama a servicios DOS via INT 21h (182 instr). | medium |
| `-` | `YIELD` | FAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `-` | `_LCLOSE` | FAR | 8 | Cierra handle de fichero. | high |
| `-` | `_LLSEEK` | FAR | 11 | Mueve el puntero de fichero. | high |
| `-` | `_LOPEN` | FAR | 2 | Abre fichero (low-level, sin Windows extras). | high |
| `-` | `_LREAD` | FAR | 2 | Lectura larga (>64K) sobre handle de fichero. | high |
| `0x0240` | `sub_0240` | NEAR | 75 | Funcion mediana (75 instr, 6 calls). | low |
| `0x0734` | `sub_0734` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x076A` | `sub_076A` | NEAR | 77 | Iterador con instrucciones de string (movsb/scasb/...) (77 instr). | medium |
| `0x0802` | `sub_0802` | NEAR | 81 | Iterador con instrucciones de string (movsb/scasb/...) (81 instr). | medium |
| `0x08A3` | `sub_08A3` | NEAR | 27 | Iterador con bucle (27 instr). | medium |
| `0x08F6` | `sub_08F6` | NEAR | 35 | Iterador con bucle (35 instr). | medium |
| `0x0957` | `sub_0957` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x0984` | `sub_0984` | NEAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. | low |
| `0x09AA` | `sub_09AA` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x09F3` | `sub_09F3` | NEAR | 36 | Funcion mediana (36 instr, 1 calls). | low |
| `0x0A55` | `sub_0A55` | NEAR | 43 | Iterador con bucle (43 instr). | medium |
| `0x0AAC` | `sub_0AAC` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x0ABE` | `sub_0ABE` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x0AF3` | `sub_0AF3` | NEAR | 88 | Llama a servicios DOS via INT 21h (88 instr). | medium |
| `0x0B99` | `sub_0B99` | NEAR | 31 | Iterador con instrucciones de string (movsb/scasb/...) (31 instr). | medium |
| `0x0BD1` | `sub_0BD1` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x0BEA` | `sub_0BEA` | NEAR | 56 | Funcion mediana (56 instr, 1 calls). | low |
| `0x0C75` | `sub_0C75` | NEAR | 81 | Funcion compleja: 81 instrucciones, 3 llamadas, 11 branches. | low |
| `0x0D3A` | `sub_0D3A` | NEAR | 215 | Llama a servicios DOS via INT 21h (215 instr). | medium |
| `0x0F3C` | `sub_0F3C` | NEAR | 183 | Llama a servicios DOS via INT 21h (183 instr). | medium |
| `0x10B8` | `sub_10B8` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x110B` | `sub_110B` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x120B` | `sub_120B` | FAR | 351 | Llama a servicios DOS via INT 21h (351 instr). | medium |
| `0x1528` | `sub_1528` | NEAR | 30 | Dispatcher: tabla de decisiones cmp+jcc (30 instr). | medium |
| `0x15F5` | `sub_15F5` | NEAR | 24 | Iterador con instrucciones de string (movsb/scasb/...) (24 instr). | medium |
| `0x17EA` | `sub_17EA` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x181E` | `sub_181E` | NEAR | 196 | Iterador con instrucciones de string (movsb/scasb/...) (196 instr). | medium |
| `0x1D50` | `sub_1D50` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x1D5D` | `sub_1D5D` | NEAR | 9 | Funcion sin clasificar definitiva (9 instr). | unknown |
| `0x1D73` | `sub_1D73` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x1D9D` | `sub_1D9D` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x1DCD` | `sub_1DCD` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1DF3` | `sub_1DF3` | NEAR | 159 | Llama a servicios DOS via INT 21h (159 instr). | medium |
| `0x1F38` | `sub_1F38` | NEAR | 61 | Llama a servicios DOS via INT 21h (61 instr). | medium |
| `0x2004` | `sub_2004` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x211D` | `sub_211D` | NEAR | 30 | Iterador con bucle (30 instr). | medium |
| `0x2172` | `sub_2172` | NEAR | 322 | Llama a servicios DOS via INT 21h (322 instr). | medium |
| `0x24C5` | `sub_24C5` | NEAR | 14 | Wrapper que delega en sub_0B99. | medium |
| `0x24E9` | `sub_24E9` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x2524` | `sub_2524` | NEAR | 55 | Funcion mediana (55 instr, 4 calls). | low |
| `0x29D9` | `sub_29D9` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x2AA3` | `sub_2AA3` | NEAR | 62 | Llama a servicios DOS via INT 21h (62 instr). | medium |
| `0x2D2D` | `sub_2D2D` | NEAR | 46 | Llama a servicios DOS via INT 21h (46 instr). | medium |
| `0x2D9C` | `sub_2D9C` | NEAR | 33 | Iterador con instrucciones de string (movsb/scasb/...) (33 instr). | medium |
| `0x2DDC` | `sub_2DDC` | NEAR | 34 | Iterador con instrucciones de string (movsb/scasb/...) (34 instr). | medium |
| `0x2E1E` | `sub_2E1E` | NEAR | 67 | Dispatcher: tabla de decisiones cmp+jcc (67 instr). | medium |
| `0x2EC3` | `sub_2EC3` | NEAR | 44 | Iterador con bucle (44 instr). | medium |
| `0x2F30` | `sub_2F30` | NEAR | 128 | Dispatcher: tabla de decisiones cmp+jcc (128 instr). | medium |
| `0x3150` | `sub_3150` | FAR | 129 | Dispatcher: tabla de decisiones cmp+jcc (129 instr). | medium |
| `0x3287` | `sub_3287` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x32D9` | `sub_32D9` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x3312` | `sub_3312` | NEAR | 78 | Iterador con bucle (78 instr). | medium |
| `0x33C3` | `sub_33C3` | NEAR | 71 | Llama a servicios DOS via INT 21h (71 instr). | medium |
| `0x3485` | `sub_3485` | NEAR | 68 | Llama a servicios DOS via INT 21h (68 instr). | medium |
| `0x3528` | `sub_3528` | NEAR | 74 | Iterador con instrucciones de string (movsb/scasb/...) (74 instr). | medium |
| `0x35D9` | `sub_35D9` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x35EF` | `sub_35EF` | FAR | 109 | Dispatcher: tabla de decisiones cmp+jcc (109 instr). | medium |
| `0x370B` | `sub_370B` | FAR | 9 | Funcion sin clasificar definitiva (9 instr). | unknown |
| `0x375B` | `sub_375B` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x3767` | `sub_3767` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x376D` | `sub_376D` | NEAR | 13 | Funcion sin clasificar definitiva (13 instr). | unknown |
| `0x39D8` | `sub_39D8` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x3A0F` | `sub_3A0F` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x3B4B` | `sub_3B4B` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x3B64` | `sub_3B64` | NEAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. | low |
| `0x3B7D` | `sub_3B7D` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x3B80` | `sub_3B80` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x3BA4` | `sub_3BA4` | NEAR | 119 | Dispatcher: tabla de decisiones cmp+jcc (119 instr). | medium |
| `0x3CB3` | `sub_3CB3` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x3CD5` | `sub_3CD5` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x3CE8` | `sub_3CE8` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x3CF4` | `sub_3CF4` | NEAR | 17 | Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion. | low |
| `0x3D13` | `sub_3D13` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x3D19` | `sub_3D19` | NEAR | 5 | Wrapper que delega en sub_3DD1. | medium |
| `0x3D24` | `sub_3D24` | NEAR | 68 | Dispatcher: tabla de decisiones cmp+jcc (68 instr). | medium |
| `0x3DCF` | `sub_3DCF` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x3DD1` | `sub_3DD1` | NEAR | 445 | Dispatcher: tabla de decisiones cmp+jcc (445 instr). | medium |
| `0x4472` | `sub_4472` | NEAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `0x44A4` | `sub_44A4` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x44BF` | `sub_44BF` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x44C6` | `sub_44C6` | NEAR | 15 | Iterador con instrucciones de string (movsb/scasb/...) (15 instr). | medium |
| `0x451C` | `sub_451C` | FAR | 178 | Iterador con instrucciones de string (movsb/scasb/...) (178 instr). | medium |
| `0x483E` | `sub_483E` | NEAR | 79 | Dispatcher: tabla de decisiones cmp+jcc (79 instr). | medium |
| `0x48D7` | `sub_48D7` | NEAR | 58 | Funcion mediana (58 instr, 2 calls). | low |
| `0x494C` | `sub_494C` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x496C` | `sub_496C` | NEAR | 66 | Llama a servicios DOS via INT 21h (66 instr). | medium |
| `0x49F5` | `sub_49F5` | NEAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). | medium |
| `0x4A7B` | `sub_4A7B` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x4A8B` | `sub_4A8B` | NEAR | 13 | Llama a servicios DOS via INT 21h (13 instr). | medium |
| `0x4AA5` | `sub_4AA5` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x4AA8` | `sub_4AA8` | NEAR | 5 | Llama a servicios DOS via INT 21h (5 instr). | medium |
| `0x4C58` | `sub_4C58` | NEAR | 9 | Llama a servicios DOS via INT 21h (9 instr). | medium |
| `0x4C6A` | `sub_4C6A` | NEAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x4D0C` | `sub_4D0C` | FAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x4E0F` | `sub_4E0F` | NEAR | 14 | Iterador con instrucciones de string (movsb/scasb/...) (14 instr). | medium |
| `0x4E27` | `sub_4E27` | NEAR | 14 | Iterador con instrucciones de string (movsb/scasb/...) (14 instr). | medium |
| `0x4E3F` | `sub_4E3F` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x4E52` | `sub_4E52` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x4E65` | `sub_4E65` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x4E93` | `sub_4E93` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x4EA3` | `sub_4EA3` | NEAR | 5 | Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion. | low |
| `0x4EA9` | `sub_4EA9` | NEAR | 12 | Wrapper que delega en sub_4EA3. | medium |
| `0x4EBD` | `sub_4EBD` | NEAR | 88 | Iterador con bucle (88 instr). | medium |
| `0x4F76` | `sub_4F76` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x4FAD` | `sub_4FAD` | NEAR | 31 | Funcion mediana (31 instr, 0 calls). | low |
| `0x4FE1` | `sub_4FE1` | NEAR | 36 | Iterador con bucle (36 instr). | medium |
| `0x5024` | `sub_5024` | NEAR | 176 | Iterador con bucle (176 instr). | medium |
| `0x519E` | `sub_519E` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x51B6` | `sub_51B6` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x51CB` | `sub_51CB` | NEAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x51DE` | `sub_51DE` | NEAR | 14 | Wrapper que delega en sub_567A. | medium |
| `0x51FB` | `sub_51FB` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x5621` | `sub_5621` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x564E` | `sub_564E` | NEAR | 12 | Iterador con instrucciones de string (movsb/scasb/...) (12 instr). | medium |
| `0x5661` | `sub_5661` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x567A` | `sub_567A` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x568D` | `sub_568D` | NEAR | 27 | Iterador con instrucciones de string (movsb/scasb/...) (27 instr). | medium |
| `0x56C4` | `sub_56C4` | NEAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x56D5` | `sub_56D5` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x5707` | `sub_5707` | NEAR | 63 | Dispatcher: tabla de decisiones cmp+jcc (63 instr). | medium |
| `0x5792` | `sub_5792` | NEAR | 32 | Funcion mediana (32 instr, 4 calls). | low |
| `0x57D8` | `sub_57D8` | NEAR | 214 | Dispatcher: tabla de decisiones cmp+jcc (214 instr). | medium |
| `0x59D3` | `sub_59D3` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x59F5` | `sub_59F5` | NEAR | 20 | Iterador con bucle (20 instr). | medium |
| `0x5A2A` | `sub_5A2A` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x5A32` | `sub_5A32` | NEAR | 10 | Wrapper que delega en sub_5A49. | medium |
| `0x5A49` | `sub_5A49` | NEAR | 45 | Funcion mediana (45 instr, 0 calls). | low |
| `0x5AA9` | `sub_5AA9` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x5AE7` | `sub_5AE7` | NEAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `0x5B32` | `sub_5B32` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x5B54` | `sub_5B54` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x5B94` | `sub_5B94` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x5BB6` | `sub_5BB6` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x5BE7` | `sub_5BE7` | NEAR | 106 | Iterador con bucle (106 instr). | medium |
| `0x5CDA` | `sub_5CDA` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x5D1A` | `sub_5D1A` | NEAR | 15 | Iterador con bucle (15 instr). | medium |
| `0x5D38` | `sub_5D38` | NEAR | 94 | Dispatcher: tabla de decisiones cmp+jcc (94 instr). | medium |
| `0x5E01` | `sub_5E01` | NEAR | 98 | Dispatcher: tabla de decisiones cmp+jcc (98 instr). | medium |
| `0x5EBF` | `sub_5EBF` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x5EF6` | `sub_5EF6` | NEAR | 40 | Iterador con bucle (40 instr). | medium |
| `0x5F52` | `sub_5F52` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x5F78` | `sub_5F78` | NEAR | 8 | Wrapper que delega en sub_5F52. | medium |
| `0x5F89` | `sub_5F89` | NEAR | 64 | Funcion mediana (64 instr, 2 calls). | low |
| `0x6022` | `sub_6022` | NEAR | 30 | Iterador con bucle (30 instr). | medium |
| `0x6064` | `sub_6064` | NEAR | 49 | Funcion mediana (49 instr, 3 calls). | low |
| `0x60D6` | `sub_60D6` | FAR | 113 | Iterador con instrucciones de string (movsb/scasb/...) (113 instr). | medium |
| `0x61DA` | `sub_61DA` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x61F3` | `sub_61F3` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x61FC` | `sub_61FC` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x6205` | `sub_6205` | NEAR | 5 | Funcion sin clasificar definitiva (5 instr). | unknown |
| `0x6210` | `sub_6210` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x621B` | `sub_621B` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x621F` | `sub_621F` | NEAR | 52 | Iterador con bucle (52 instr). | medium |
| `0x6292` | `sub_6292` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x62CD` | `sub_62CD` | NEAR | 7 | Wrapper que delega en sub_5D1A. | medium |
| `0x62DE` | `sub_62DE` | NEAR | 67 | Iterador con bucle (67 instr). | medium |
| `0x6383` | `sub_6383` | NEAR | 109 | Iterador con bucle (109 instr). | medium |
| `0x6469` | `sub_6469` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x6548` | `sub_6548` | NEAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. | low |
| `0x6646` | `sub_6646` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x667C` | `sub_667C` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x669F` | `sub_669F` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x6A0C` | `sub_6A0C` | NEAR | 95 | Iterador con bucle (95 instr). | medium |
| `0x6B07` | `sub_6B07` | NEAR | 105 | Iterador con instrucciones de string (movsb/scasb/...) (105 instr). | medium |
| `0x6C21` | `sub_6C21` | NEAR | 457 | Iterador con instrucciones de string (movsb/scasb/...) (457 instr). | medium |
| `0x70B5` | `sub_70B5` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x70E9` | `sub_70E9` | NEAR | 42 | Interrupt Service Routine (42 instrucciones, posible manejador de INT). | medium |
| `0x712E` | `sub_712E` | NEAR | 149 | Llama a servicios DOS via INT 21h (149 instr). | medium |
| `0x7253` | `sub_7253` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x7289` | `sub_7289` | NEAR | 268 | Llama a servicios DOS via INT 21h (268 instr). | medium |
| `0x7569` | `sub_7569` | NEAR | 89 | Funcion compleja: 89 instrucciones, 0 llamadas, 0 branches. | low |
| `0x7643` | `sub_7643` | FAR | 404 | Iterador con instrucciones de string (movsb/scasb/...) (404 instr). | medium |
