# Modulo `CGA`

- Funciones: **55**
- Confidence: high=0, medium=25, low=14, unknown=16

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `CHECKCURSOR` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `CONTROL` | FAR | 31 | Iterador con instrucciones de string (movsb/scasb/...) (31 instr). | medium |
| `-` | `DEVICEMODE` | FAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `-` | `DISABLE` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `ENABLE` | FAR | 32 | Funcion mediana (32 instr, 0 calls). | low |
| `-` | `ENUMDFONTS` | FAR | 14 | Enumerador: itera sobre dfonts. | medium |
| `-` | `ENUMOBJ` | FAR | 64 | Enumerador: itera sobre obj. | medium |
| `-` | `INQUIRE` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `MOVECURSOR` | FAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `-` | `OUTPUT` | FAR | 206 | Iterador con instrucciones de string (movsb/scasb/...) (206 instr). | medium |
| `-` | `PIXEL` | FAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). | medium |
| `-` | `REALIZEOBJECT` | FAR | 34 | Dispatcher: tabla de decisiones cmp+jcc (34 instr). | medium |
| `-` | `SCANLR` | FAR | 114 | Iterador con instrucciones de string (movsb/scasb/...) (114 instr). | medium |
| `-` | `SETCURSOR` | FAR | 43 | Setter: cambia cursor. | medium |
| `-` | `STRBLT` | FAR | 527 | Iterador con instrucciones de string (movsb/scasb/...) (527 instr). | medium |
| `0x0184` | `sub_0184` | FAR | 705 | Llama a servicios BIOS via INT 10h (video, 705 instr). | medium |
| `0x0D2F` | `sub_0D2F` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x0D6D` | `sub_0D6D` | NEAR | 17 | Iterador con instrucciones de string (movsb/scasb/...) (17 instr). | medium |
| `0x0D85` | `sub_0D85` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x0D9C` | `sub_0D9C` | NEAR | 10 | Wrapper que delega en sub_0DB3. | medium |
| `0x0DB3` | `sub_0DB3` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x0DDA` | `sub_0DDA` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x0E2B` | `sub_0E2B` | NEAR | 15 | Wrapper que delega en sub_0E50. | medium |
| `0x0E50` | `sub_0E50` | NEAR | 40 | Iterador con instrucciones de string (movsb/scasb/...) (40 instr). | medium |
| `0x0EA2` | `sub_0EA2` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x0EF4` | `sub_0EF4` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x0F2F` | `sub_0F2F` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x0F60` | `sub_0F60` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x0F89` | `sub_0F89` | NEAR | 67 | Iterador con bucle (67 instr). | medium |
| `0x1025` | `sub_1025` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1045` | `sub_1045` | NEAR | 54 | Iterador con instrucciones de string (movsb/scasb/...) (54 instr). | medium |
| `0x1098` | `sub_1098` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x10F9` | `sub_10F9` | NEAR | 17 | Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion. | low |
| `0x111B` | `sub_111B` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x111F` | `sub_111F` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x1524` | `sub_1524` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x15A9` | `sub_15A9` | NEAR | 102 | Iterador con instrucciones de string (movsb/scasb/...) (102 instr). | medium |
| `0x175E` | `sub_175E` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x18AE` | `sub_18AE` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x18B3` | `sub_18B3` | FAR | 73 | Iterador con instrucciones de string (movsb/scasb/...) (73 instr). | medium |
| `0x197C` | `sub_197C` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x19CA` | `sub_19CA` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x19D0` | `sub_19D0` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1A08` | `sub_1A08` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x1AA8` | `sub_1AA8` | NEAR | 76 | Funcion mediana (76 instr, 0 calls). | low |
| `0x1BD8` | `sub_1BD8` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1BFB` | `sub_1BFB` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1C13` | `sub_1C13` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1C3A` | `sub_1C3A` | FAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x1C75` | `sub_1C75` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1C94` | `sub_1C94` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1CBF` | `sub_1CBF` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1CD4` | `sub_1CD4` | FAR | 54 | Funcion mediana (54 instr, 0 calls). | low |
| `0x1D44` | `sub_1D44` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x1D82` | `sub_1D82` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
