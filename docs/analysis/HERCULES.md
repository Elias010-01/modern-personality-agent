# Modulo `HERCULES`

- Funciones: **57**
- Confidence: high=0, medium=27, low=12, unknown=18

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `CHECKCURSOR` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `CONTROL` | FAR | 31 | Iterador con instrucciones de string (movsb/scasb/...) (31 instr). | medium |
| `-` | `DEVICEMODE` | FAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `-` | `DISABLE` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `ENABLE` | FAR | 32 | Funcion mediana (32 instr, 1 calls). | low |
| `-` | `ENUMDFONTS` | FAR | 14 | Enumerador: itera sobre dfonts. | medium |
| `-` | `ENUMOBJ` | FAR | 64 | Enumerador: itera sobre obj. | medium |
| `-` | `INQUIRE` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `MOVECURSOR` | FAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `-` | `OUTPUT` | FAR | 206 | Iterador con instrucciones de string (movsb/scasb/...) (206 instr). | medium |
| `-` | `PIXEL` | FAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). | medium |
| `-` | `REALIZEOBJECT` | FAR | 34 | Dispatcher: tabla de decisiones cmp+jcc (34 instr). | medium |
| `-` | `SCANLR` | FAR | 114 | Iterador con instrucciones de string (movsb/scasb/...) (114 instr). | medium |
| `-` | `SETCURSOR` | FAR | 43 | Setter: cambia cursor. | medium |
| `-` | `STRBLT` | FAR | 530 | Iterador con instrucciones de string (movsb/scasb/...) (530 instr). | medium |
| `0x0192` | `sub_0192` | NEAR | 13 | Llama a servicios BIOS via INT 10h (video, 13 instr). | medium |
| `0x01AF` | `sub_01AF` | NEAR | 12 | Llama a servicios BIOS via INT 10h (video, 12 instr). | medium |
| `0x01CA` | `sub_01CA` | FAR | 735 | Iterador con instrucciones de string (movsb/scasb/...) (735 instr). | medium |
| `0x0DC8` | `sub_0DC8` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x0E06` | `sub_0E06` | NEAR | 17 | Iterador con instrucciones de string (movsb/scasb/...) (17 instr). | medium |
| `0x0E1E` | `sub_0E1E` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x0E35` | `sub_0E35` | NEAR | 10 | Wrapper que delega en sub_0E4C. | medium |
| `0x0E4C` | `sub_0E4C` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x0E73` | `sub_0E73` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x0EC4` | `sub_0EC4` | NEAR | 15 | Wrapper que delega en sub_0EE9. | medium |
| `0x0EE9` | `sub_0EE9` | NEAR | 40 | Iterador con instrucciones de string (movsb/scasb/...) (40 instr). | medium |
| `0x0F3B` | `sub_0F3B` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x0F8D` | `sub_0F8D` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x0FC8` | `sub_0FC8` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x0FF9` | `sub_0FF9` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x1022` | `sub_1022` | NEAR | 65 | Iterador con bucle (65 instr). | medium |
| `0x10BE` | `sub_10BE` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x10DE` | `sub_10DE` | NEAR | 70 | Iterador con instrucciones de string (movsb/scasb/...) (70 instr). | medium |
| `0x116B` | `sub_116B` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x11CC` | `sub_11CC` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x11FC` | `sub_11FC` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x1200` | `sub_1200` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x15FB` | `sub_15FB` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x1680` | `sub_1680` | NEAR | 102 | Iterador con instrucciones de string (movsb/scasb/...) (102 instr). | medium |
| `0x1835` | `sub_1835` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x1985` | `sub_1985` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x198A` | `sub_198A` | FAR | 70 | Iterador con instrucciones de string (movsb/scasb/...) (70 instr). | medium |
| `0x1A53` | `sub_1A53` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x1AA1` | `sub_1AA1` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x1AA7` | `sub_1AA7` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1ADF` | `sub_1ADF` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x1B7F` | `sub_1B7F` | NEAR | 72 | Funcion mediana (72 instr, 0 calls). | low |
| `0x1CAF` | `sub_1CAF` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1CD2` | `sub_1CD2` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1CEA` | `sub_1CEA` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1D11` | `sub_1D11` | FAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x1D4C` | `sub_1D4C` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1D6B` | `sub_1D6B` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1D96` | `sub_1D96` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1DAB` | `sub_1DAB` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1DD3` | `sub_1DD3` | NEAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `0x1E2F` | `sub_1E2F` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
