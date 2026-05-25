# Modulo `CALC`

- Funciones: **132**
- Confidence: high=0, medium=70, low=40, unknown=22

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x0000` | `sub_0000` | FAR | 171 | Dispatcher: tabla de decisiones cmp+jcc (171 instr). | medium |
| `0x019E` | `sub_019E` | NEAR | 100 | Dispatcher: tabla de decisiones cmp+jcc (100 instr). | medium |
| `0x029F` | `sub_029F` | NEAR | 92 | Funcion compleja: 92 instrucciones, 3 llamadas, 0 branches. | low |
| `0x037C` | `sub_037C` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x038F` | `sub_038F` | NEAR | 46 | Funcion mediana (46 instr, 0 calls). | low |
| `0x0403` | `sub_0403` | NEAR | 352 | Funcion compleja: 352 instrucciones, 16 llamadas, 1 branches. | low |
| `0x0799` | `sub_0799` | NEAR | 101 | Funcion compleja: 101 instrucciones, 5 llamadas, 1 branches. | low |
| `0x08A2` | `sub_08A2` | NEAR | 264 | Dispatcher: tabla de decisiones cmp+jcc (264 instr). | medium |
| `0x0B8C` | `sub_0B8C` | FAR | 137 | Dispatcher: tabla de decisiones cmp+jcc (137 instr). | medium |
| `0x0D01` | `sub_0D01` | NEAR | 15 | Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion. | low |
| `0x0D20` | `sub_0D20` | NEAR | 42 | Funcion mediana (42 instr, 6 calls). | low |
| `0x0D7F` | `sub_0D7F` | NEAR | 87 | Funcion compleja: 87 instrucciones, 4 llamadas, 2 branches. | low |
| `0x0E51` | `sub_0E51` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x0E83` | `sub_0E83` | NEAR | 215 | Funcion compleja: 215 instrucciones, 12 llamadas, 1 branches. | low |
| `0x108F` | `sub_108F` | NEAR | 55 | Funcion mediana (55 instr, 6 calls). | low |
| `0x1128` | `sub_1128` | NEAR | 31 | Funcion mediana (31 instr, 4 calls). | low |
| `0x1176` | `sub_1176` | NEAR | 48 | Funcion mediana (48 instr, 4 calls). | low |
| `0x11EB` | `sub_11EB` | NEAR | 150 | Dispatcher: tabla de decisiones cmp+jcc (150 instr). | medium |
| `0x135F` | `sub_135F` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x139D` | `sub_139D` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x13C9` | `sub_13C9` | NEAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x1400` | `sub_1400` | NEAR | 133 | Funcion compleja: 133 instrucciones, 13 llamadas, 7 branches. | low |
| `0x1558` | `sub_1558` | NEAR | 37 | Funcion mediana (37 instr, 2 calls). | low |
| `0x15AC` | `sub_15AC` | NEAR | 46 | Dispatcher: tabla de decisiones cmp+jcc (46 instr). | medium |
| `0x1614` | `sub_1614` | NEAR | 33 | Funcion mediana (33 instr, 4 calls). | low |
| `0x165C` | `sub_165C` | NEAR | 331 | Iterador con instrucciones de string (movsb/scasb/...) (331 instr). | medium |
| `0x19E8` | `sub_19E8` | NEAR | 99 | Iterador con instrucciones de string (movsb/scasb/...) (99 instr). | medium |
| `0x1AC0` | `sub_1AC0` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1AEE` | `sub_1AEE` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x1B38` | `sub_1B38` | NEAR | 66 | Funcion mediana (66 instr, 6 calls). | low |
| `0x1BCB` | `sub_1BCB` | NEAR | 88 | Dispatcher: tabla de decisiones cmp+jcc (88 instr). | medium |
| `0x1CAA` | `sub_1CAA` | NEAR | 42 | Funcion mediana (42 instr, 8 calls). | low |
| `0x1D10` | `sub_1D10` | NEAR | 112 | Iterador con instrucciones de string (movsb/scasb/...) (112 instr). | medium |
| `0x1E23` | `sub_1E23` | NEAR | 12 | Wrapper que delega en sub_41F3. | medium |
| `0x1E3E` | `sub_1E3E` | NEAR | 112 | Iterador con instrucciones de string (movsb/scasb/...) (112 instr). | medium |
| `0x1F51` | `sub_1F51` | NEAR | 117 | Dispatcher: tabla de decisiones cmp+jcc (117 instr). | medium |
| `0x2084` | `sub_2084` | NEAR | 101 | Iterador con instrucciones de string (movsb/scasb/...) (101 instr). | medium |
| `0x217D` | `sub_217D` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x21B9` | `sub_21B9` | NEAR | 51 | Funcion mediana (51 instr, 5 calls). | low |
| `0x2230` | `sub_2230` | NEAR | 40 | Llama a servicios DOS via INT 21h (40 instr). | medium |
| `0x2295` | `sub_2295` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x22A6` | `sub_22A6` | NEAR | 177 | Iterador con instrucciones de string (movsb/scasb/...) (177 instr). | medium |
| `0x240E` | `sub_240E` | NEAR | 36 | Iterador con instrucciones de string (movsb/scasb/...) (36 instr). | medium |
| `0x245B` | `sub_245B` | NEAR | 75 | Iterador con instrucciones de string (movsb/scasb/...) (75 instr). | medium |
| `0x24FA` | `sub_24FA` | NEAR | 16 | Iterador con instrucciones de string (movsb/scasb/...) (16 instr). | medium |
| `0x251A` | `sub_251A` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x2548` | `sub_2548` | NEAR | 23 | Iterador con instrucciones de string (movsb/scasb/...) (23 instr). | medium |
| `0x2575` | `sub_2575` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x25A0` | `sub_25A0` | NEAR | 145 | Iterador con instrucciones de string (movsb/scasb/...) (145 instr). | medium |
| `0x26A6` | `sub_26A6` | NEAR | 14 | Wrapper que delega en sub_287F. | medium |
| `0x26BE` | `sub_26BE` | NEAR | 14 | Wrapper que delega en sub_287F. | medium |
| `0x26D6` | `sub_26D6` | NEAR | 14 | Wrapper que delega en sub_287F. | medium |
| `0x26EE` | `sub_26EE` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x271E` | `sub_271E` | NEAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `0x274C` | `sub_274C` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x2756` | `sub_2756` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x275B` | `sub_275B` | NEAR | 45 | Dispatcher: tabla de decisiones cmp+jcc (45 instr). | medium |
| `0x27CA` | `sub_27CA` | FAR | 80 | Llama a servicios DOS via INT 21h (80 instr). | medium |
| `0x2869` | `sub_2869` | NEAR | 12 | Iterador con instrucciones de string (movsb/scasb/...) (12 instr). | medium |
| `0x287F` | `sub_287F` | NEAR | 14 | Iterador con instrucciones de string (movsb/scasb/...) (14 instr). | medium |
| `0x2897` | `sub_2897` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x28A3` | `sub_28A3` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x28A6` | `sub_28A6` | NEAR | 54 | Funcion mediana (54 instr, 0 calls). | low |
| `0x2926` | `sub_2926` | NEAR | 131 | Iterador con instrucciones de string (movsb/scasb/...) (131 instr). | medium |
| `0x2A40` | `sub_2A40` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2A45` | `sub_2A45` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2A4A` | `sub_2A4A` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2A4F` | `sub_2A4F` | NEAR | 15 | Wrapper que delega en sub_2A90. | medium |
| `0x2A6F` | `sub_2A6F` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2A74` | `sub_2A74` | NEAR | 13 | Wrapper que delega en sub_2A90. | medium |
| `0x2A90` | `sub_2A90` | NEAR | 27 | Iterador con instrucciones de string (movsb/scasb/...) (27 instr). | medium |
| `0x2AC5` | `sub_2AC5` | NEAR | 98 | Iterador con instrucciones de string (movsb/scasb/...) (98 instr). | medium |
| `0x2BAD` | `sub_2BAD` | NEAR | 30 | Iterador con instrucciones de string (movsb/scasb/...) (30 instr). | medium |
| `0x2BF4` | `sub_2BF4` | NEAR | 61 | Iterador con instrucciones de string (movsb/scasb/...) (61 instr). | medium |
| `0x2C7F` | `sub_2C7F` | NEAR | 208 | Iterador con bucle (208 instr). | medium |
| `0x2E4E` | `sub_2E4E` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x2E7C` | `sub_2E7C` | NEAR | 147 | Iterador con instrucciones de string (movsb/scasb/...) (147 instr). | medium |
| `0x2FCD` | `sub_2FCD` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2FD1` | `sub_2FD1` | NEAR | 84 | Iterador con instrucciones de string (movsb/scasb/...) (84 instr). | medium |
| `0x3089` | `sub_3089` | NEAR | 142 | Iterador con instrucciones de string (movsb/scasb/...) (142 instr). | medium |
| `0x31B9` | `sub_31B9` | NEAR | 40 | Funcion mediana (40 instr, 0 calls). | low |
| `0x320F` | `sub_320F` | NEAR | 55 | Iterador con instrucciones de string (movsb/scasb/...) (55 instr). | medium |
| `0x328D` | `sub_328D` | NEAR | 42 | Funcion mediana (42 instr, 1 calls). | low |
| `0x32F0` | `sub_32F0` | NEAR | 106 | Iterador con instrucciones de string (movsb/scasb/...) (106 instr). | medium |
| `0x33BF` | `sub_33BF` | NEAR | 60 | Funcion mediana (60 instr, 0 calls). | low |
| `0x3443` | `sub_3443` | NEAR | 242 | Iterador con instrucciones de string (movsb/scasb/...) (242 instr). | medium |
| `0x363A` | `sub_363A` | NEAR | 87 | Iterador con instrucciones de string (movsb/scasb/...) (87 instr). | medium |
| `0x36F5` | `sub_36F5` | NEAR | 109 | Funcion compleja: 109 instrucciones, 3 llamadas, 5 branches. | low |
| `0x37DA` | `sub_37DA` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x3813` | `sub_3813` | NEAR | 44 | Dispatcher: tabla de decisiones cmp+jcc (44 instr). | medium |
| `0x3867` | `sub_3867` | NEAR | 49 | Iterador con instrucciones de string (movsb/scasb/...) (49 instr). | medium |
| `0x38CC` | `sub_38CC` | NEAR | 114 | Iterador con instrucciones de string (movsb/scasb/...) (114 instr). | medium |
| `0x39BC` | `sub_39BC` | NEAR | 91 | Iterador con instrucciones de string (movsb/scasb/...) (91 instr). | medium |
| `0x3A84` | `sub_3A84` | NEAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `0x3AE4` | `sub_3AE4` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x3B31` | `sub_3B31` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x3B53` | `sub_3B53` | NEAR | 36 | Iterador con instrucciones de string (movsb/scasb/...) (36 instr). | medium |
| `0x3B97` | `sub_3B97` | NEAR | 141 | Iterador con instrucciones de string (movsb/scasb/...) (141 instr). | medium |
| `0x3CC8` | `sub_3CC8` | NEAR | 18 | Iterador con bucle (18 instr). | medium |
| `0x3CF1` | `sub_3CF1` | NEAR | 55 | Iterador con instrucciones de string (movsb/scasb/...) (55 instr). | medium |
| `0x3D4D` | `sub_3D4D` | NEAR | 136 | Iterador con instrucciones de string (movsb/scasb/...) (136 instr). | medium |
| `0x3E4D` | `sub_3E4D` | NEAR | 197 | Iterador con instrucciones de string (movsb/scasb/...) (197 instr). | medium |
| `0x3FD7` | `sub_3FD7` | NEAR | 21 | Llama a servicios DOS via INT 21h (21 instr). | medium |
| `0x400D` | `sub_400D` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x407B` | `sub_407B` | NEAR | 59 | Llama a servicios DOS via INT 21h (59 instr). | medium |
| `0x410D` | `sub_410D` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x411D` | `sub_411D` | NEAR | 47 | Iterador con instrucciones de string (movsb/scasb/...) (47 instr). | medium |
| `0x416F` | `sub_416F` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x419E` | `sub_419E` | NEAR | 39 | Funcion mediana (39 instr, 2 calls). | low |
| `0x41F3` | `sub_41F3` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x4216` | `sub_4216` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x422F` | `sub_422F` | NEAR | 6 | Iterador con bucle (6 instr). | medium |
| `0x423A` | `sub_423A` | NEAR | 102 | Llama a servicios DOS via INT 21h (102 instr). | medium |
| `0x430D` | `sub_430D` | NEAR | 101 | Funcion compleja: 101 instrucciones, 3 llamadas, 11 branches. | low |
| `0x4409` | `sub_4409` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x441B` | `sub_441B` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x4447` | `sub_4447` | NEAR | 22 | Dispatcher: tabla de decisiones cmp+jcc (22 instr). | medium |
| `0x4475` | `sub_4475` | NEAR | 182 | Iterador con instrucciones de string (movsb/scasb/...) (182 instr). | medium |
| `0x4644` | `sub_4644` | NEAR | 111 | Dispatcher: tabla de decisiones cmp+jcc (111 instr). | medium |
| `0x4772` | `sub_4772` | NEAR | 51 | Dispatcher: tabla de decisiones cmp+jcc (51 instr). | medium |
| `0x47FE` | `sub_47FE` | NEAR | 52 | Dispatcher: tabla de decisiones cmp+jcc (52 instr). | medium |
| `0x489E` | `sub_489E` | NEAR | 31 | Funcion mediana (31 instr, 2 calls). | low |
| `0x48EB` | `sub_48EB` | NEAR | 43 | Funcion mediana (43 instr, 2 calls). | low |
| `0x4954` | `sub_4954` | NEAR | 46 | Funcion mediana (46 instr, 2 calls). | low |
| `0x49BE` | `sub_49BE` | NEAR | 72 | Iterador con instrucciones de string (movsb/scasb/...) (72 instr). | medium |
| `0x4A80` | `sub_4A80` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x4A9F` | `sub_4A9F` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x4AD2` | `sub_4AD2` | NEAR | 46 | Iterador con instrucciones de string (movsb/scasb/...) (46 instr). | medium |
| `0x4B3A` | `sub_4B3A` | NEAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `0x4B62` | `sub_4B62` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x4B82` | `sub_4B82` | NEAR | 84 | Iterador con instrucciones de string (movsb/scasb/...) (84 instr). | medium |
| `0x4C1B` | `sub_4C1B` | NEAR | 44 | Funcion mediana (44 instr, 1 calls). | low |
