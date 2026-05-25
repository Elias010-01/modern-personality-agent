# Modulo `MSDOS`

- Funciones: **143**
- Confidence: high=0, medium=92, low=37, unknown=14

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x0000` | `sub_0000` | NEAR | 10 | Llama a servicios DOS via INT 21h (10 instr). | medium |
| `0x0016` | `sub_0016` | NEAR | 28 | Llama a servicios DOS via INT 21h (28 instr). | medium |
| `0x005A` | `sub_005A` | NEAR | 14 | Llama a servicios DOS via INT 21h (14 instr). | medium |
| `0x0074` | `sub_0074` | NEAR | 11 | Llama a servicios DOS via INT 21h (11 instr). | medium |
| `0x0081` | `sub_0081` | FAR | 38 | Funcion mediana (38 instr, 3 calls). | low |
| `0x008D` | `sub_008D` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x00B9` | `sub_00B9` | NEAR | 16 | Llama a servicios DOS via INT 21h (16 instr). | medium |
| `0x00CB` | `sub_00CB` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x00D9` | `sub_00D9` | NEAR | 15 | Iterador con instrucciones de string (movsb/scasb/...) (15 instr). | medium |
| `0x00DC` | `sub_00DC` | NEAR | 163 | Dispatcher: tabla de decisiones cmp+jcc (163 instr). | medium |
| `0x00F4` | `sub_00F4` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x00F7` | `sub_00F7` | FAR | 101 | Dispatcher: tabla de decisiones cmp+jcc (101 instr). | medium |
| `0x010A` | `sub_010A` | NEAR | 24 | Llama a servicios DOS via INT 21h (24 instr). | medium |
| `0x0144` | `sub_0144` | NEAR | 16 | Llama a servicios DOS via INT 21h (16 instr). | medium |
| `0x0162` | `sub_0162` | NEAR | 11 | Llama a servicios DOS via INT 21h (11 instr). | medium |
| `0x0176` | `sub_0176` | NEAR | 24 | Llama a servicios DOS via INT 21h (24 instr). | medium |
| `0x01B0` | `sub_01B0` | NEAR | 39 | Llama a servicios DOS via INT 21h (39 instr). | medium |
| `0x01F1` | `sub_01F1` | FAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x0213` | `sub_0213` | NEAR | 24 | Llama a servicios DOS via INT 21h (24 instr). | medium |
| `0x0222` | `sub_0222` | FAR | 504 | Dispatcher: tabla de decisiones cmp+jcc (504 instr). | medium |
| `0x024D` | `sub_024D` | FAR | 272 | Llama a servicios DOS via INT 21h (272 instr). | medium |
| `0x02A8` | `sub_02A8` | NEAR | 260 | Funcion compleja: 260 instrucciones, 15 llamadas, 4 branches. | low |
| `0x0504` | `sub_0504` | NEAR | 94 | Dispatcher: tabla de decisiones cmp+jcc (94 instr). | medium |
| `0x0519` | `sub_0519` | FAR | 353 | Funcion compleja: 353 instrucciones, 10 llamadas, 20 branches. | low |
| `0x0603` | `sub_0603` | NEAR | 194 | Dispatcher: tabla de decisiones cmp+jcc (194 instr). | medium |
| `0x06F4` | `sub_06F4` | FAR | 40 | Funcion mediana (40 instr, 4 calls). | low |
| `0x0752` | `sub_0752` | FAR | 113 | Iterador con instrucciones de string (movsb/scasb/...) (113 instr). | medium |
| `0x081B` | `sub_081B` | NEAR | 73 | Dispatcher: tabla de decisiones cmp+jcc (73 instr). | medium |
| `0x0845` | `sub_0845` | NEAR | 4 | Wrapper que delega en sub_084C. | medium |
| `0x084C` | `sub_084C` | NEAR | 7 | Wrapper que delega en sub_085B. | medium |
| `0x085B` | `sub_085B` | NEAR | 12 | Iterador con instrucciones de string (movsb/scasb/...) (12 instr). | medium |
| `0x0874` | `sub_0874` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x087F` | `sub_087F` | NEAR | 9 | Llama a servicios DOS via INT 21h (9 instr). | medium |
| `0x0886` | `sub_0886` | NEAR | 83 | Funcion compleja: 83 instrucciones, 1 llamadas, 0 branches. | low |
| `0x0891` | `sub_0891` | FAR | 36 | Llama a servicios DOS via INT 21h (36 instr). | medium |
| `0x08E1` | `sub_08E1` | FAR | 22 | Llama a servicios DOS via INT 21h (22 instr). | medium |
| `0x08EF` | `sub_08EF` | NEAR | 31 | Dispatcher: tabla de decisiones cmp+jcc (31 instr). | medium |
| `0x0907` | `sub_0907` | NEAR | 18 | Llama a servicios DOS via INT 21h (18 instr). | medium |
| `0x0925` | `sub_0925` | FAR | 42 | Llama a servicios DOS via INT 21h (42 instr). | medium |
| `0x0943` | `sub_0943` | FAR | 238 | Dispatcher: tabla de decisiones cmp+jcc (238 instr). | medium |
| `0x095F` | `sub_095F` | FAR | 146 | Dispatcher: tabla de decisiones cmp+jcc (146 instr). | medium |
| `0x0973` | `sub_0973` | NEAR | 11 | Llama a servicios DOS via INT 21h (11 instr). | medium |
| `0x0989` | `sub_0989` | NEAR | 77 | Funcion mediana (77 instr, 2 calls). | low |
| `0x0A52` | `sub_0A52` | NEAR | 86 | Dispatcher: tabla de decisiones cmp+jcc (86 instr). | medium |
| `0x0AD3` | `sub_0AD3` | NEAR | 34 | Funcion mediana (34 instr, 2 calls). | low |
| `0x0B19` | `sub_0B19` | FAR | 94 | Funcion compleja: 94 instrucciones, 3 llamadas, 0 branches. | low |
| `0x0B2C` | `sub_0B2C` | FAR | 55 | Funcion mediana (55 instr, 9 calls). | low |
| `0x0BC0` | `sub_0BC0` | FAR | 283 | Iterador con instrucciones de string (movsb/scasb/...) (283 instr). | medium |
| `0x0BE8` | `sub_0BE8` | NEAR | 46 | Funcion mediana (46 instr, 0 calls). | low |
| `0x0C67` | `sub_0C67` | NEAR | 13 | Funcion hoja (no llama a otras, 13 instr): probable helper aritmetico/conversion. | low |
| `0x0C91` | `sub_0C91` | NEAR | 73 | Dispatcher: tabla de decisiones cmp+jcc (73 instr). | medium |
| `0x0D58` | `sub_0D58` | NEAR | 225 | Dispatcher: tabla de decisiones cmp+jcc (225 instr). | medium |
| `0x0E80` | `sub_0E80` | NEAR | 9 | Funcion sin clasificar definitiva (9 instr). | unknown |
| `0x0E9A` | `sub_0E9A` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x0EB7` | `sub_0EB7` | FAR | 78 | Funcion mediana (78 instr, 1 calls). | low |
| `0x0F4B` | `sub_0F4B` | NEAR | 84 | Dispatcher: tabla de decisiones cmp+jcc (84 instr). | medium |
| `0x0FC2` | `sub_0FC2` | NEAR | 56 | Funcion mediana (56 instr, 1 calls). | low |
| `0x0FF1` | `sub_0FF1` | NEAR | 99 | Iterador con instrucciones de string (movsb/scasb/...) (99 instr). | medium |
| `0x1048` | `sub_1048` | NEAR | 15 | Wrapper que delega en USER.MESSAGEBOX. | medium |
| `0x1067` | `sub_1067` | NEAR | 32 | Dispatcher: tabla de decisiones cmp+jcc (32 instr). | medium |
| `0x10B0` | `sub_10B0` | NEAR | 281 | Dispatcher: tabla de decisiones cmp+jcc (281 instr). | medium |
| `0x10CA` | `sub_10CA` | NEAR | 70 | Funcion mediana (70 instr, 1 calls). | low |
| `0x1184` | `sub_1184` | FAR | 98 | Dispatcher: tabla de decisiones cmp+jcc (98 instr). | medium |
| `0x126A` | `sub_126A` | FAR | 147 | Dispatcher: tabla de decisiones cmp+jcc (147 instr). | medium |
| `0x13AD` | `sub_13AD` | NEAR | 300 | Dispatcher: tabla de decisiones cmp+jcc (300 instr). | medium |
| `0x13E0` | `sub_13E0` | NEAR | 41 | Funcion mediana (41 instr, 3 calls). | low |
| `0x143E` | `sub_143E` | FAR | 76 | Dispatcher: tabla de decisiones cmp+jcc (76 instr). | medium |
| `0x14F2` | `sub_14F2` | FAR | 35 | Funcion mediana (35 instr, 2 calls). | low |
| `0x152F` | `sub_152F` | NEAR | 21 | Dispatcher: tabla de decisiones cmp+jcc (21 instr). | medium |
| `0x156B` | `sub_156B` | NEAR | 197 | Dispatcher: tabla de decisiones cmp+jcc (197 instr). | medium |
| `0x16A7` | `sub_16A7` | NEAR | 32 | Funcion mediana (32 instr, 1 calls). | low |
| `0x16F6` | `sub_16F6` | FAR | 62 | Funcion mediana (62 instr, 0 calls). | low |
| `0x1782` | `sub_1782` | NEAR | 15 | Wrapper que delega en USER.ISRECTEMPTY. | medium |
| `0x1794` | `sub_1794` | NEAR | 41 | Funcion mediana (41 instr, 5 calls). | low |
| `0x17AC` | `sub_17AC` | NEAR | 84 | Dispatcher: tabla de decisiones cmp+jcc (84 instr). | medium |
| `0x17F4` | `sub_17F4` | NEAR | 30 | Funcion sin clasificar definitiva (30 instr). | unknown |
| `0x1841` | `sub_1841` | NEAR | 78 | Dispatcher: tabla de decisiones cmp+jcc (78 instr). | medium |
| `0x1891` | `sub_1891` | NEAR | 40 | Dispatcher: tabla de decisiones cmp+jcc (40 instr). | medium |
| `0x18F7` | `sub_18F7` | FAR | 132 | Dispatcher: tabla de decisiones cmp+jcc (132 instr). | medium |
| `0x1909` | `sub_1909` | NEAR | 94 | Dispatcher: tabla de decisiones cmp+jcc (94 instr). | medium |
| `0x1A07` | `sub_1A07` | NEAR | 145 | Dispatcher: tabla de decisiones cmp+jcc (145 instr). | medium |
| `0x1A42` | `sub_1A42` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x1A5E` | `sub_1A5E` | NEAR | 35 | Iterador con instrucciones de string (movsb/scasb/...) (35 instr). | medium |
| `0x1AA5` | `sub_1AA5` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x1AC8` | `sub_1AC8` | NEAR | 34 | Iterador con instrucciones de string (movsb/scasb/...) (34 instr). | medium |
| `0x1B1C` | `sub_1B1C` | NEAR | 64 | Iterador con instrucciones de string (movsb/scasb/...) (64 instr). | medium |
| `0x1B72` | `sub_1B72` | NEAR | 126 | Dispatcher: tabla de decisiones cmp+jcc (126 instr). | medium |
| `0x1BBA` | `sub_1BBA` | NEAR | 31 | Funcion mediana (31 instr, 2 calls). | low |
| `0x1C05` | `sub_1C05` | FAR | 25 | Funcion sin clasificar definitiva (25 instr). | unknown |
| `0x1C30` | `sub_1C30` | NEAR | 12 | Wrapper que delega en USER.ISRECTEMPTY. | medium |
| `0x1C4C` | `sub_1C4C` | NEAR | 121 | Dispatcher: tabla de decisiones cmp+jcc (121 instr). | medium |
| `0x1CAF` | `sub_1CAF` | NEAR | 271 | Dispatcher: tabla de decisiones cmp+jcc (271 instr). | medium |
| `0x1D7A` | `sub_1D7A` | NEAR | 52 | Funcion mediana (52 instr, 2 calls). | low |
| `0x1DF0` | `sub_1DF0` | NEAR | 60 | Dispatcher: tabla de decisiones cmp+jcc (60 instr). | medium |
| `0x1E9E` | `sub_1E9E` | NEAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `0x1ED3` | `sub_1ED3` | FAR | 33 | Funcion mediana (33 instr, 4 calls). | low |
| `0x1F1E` | `sub_1F1E` | FAR | 106 | Dispatcher: tabla de decisiones cmp+jcc (106 instr). | medium |
| `0x1F9F` | `sub_1F9F` | NEAR | 49 | Dispatcher: tabla de decisiones cmp+jcc (49 instr). | medium |
| `0x2018` | `sub_2018` | NEAR | 113 | Dispatcher: tabla de decisiones cmp+jcc (113 instr). | medium |
| `0x2019` | `sub_2019` | NEAR | 177 | Dispatcher: tabla de decisiones cmp+jcc (177 instr). | medium |
| `0x212A` | `sub_212A` | NEAR | 160 | Dispatcher: tabla de decisiones cmp+jcc (160 instr). | medium |
| `0x21E2` | `sub_21E2` | NEAR | 13 | Funcion sin clasificar definitiva (13 instr). | unknown |
| `0x2204` | `sub_2204` | NEAR | 52 | Funcion mediana (52 instr, 6 calls). | low |
| `0x228B` | `sub_228B` | FAR | 149 | Dispatcher: tabla de decisiones cmp+jcc (149 instr). | medium |
| `0x22EA` | `sub_22EA` | NEAR | 38 | Funcion mediana (38 instr, 0 calls). | low |
| `0x234F` | `sub_234F` | NEAR | 56 | Dispatcher: tabla de decisiones cmp+jcc (56 instr). | medium |
| `0x23ED` | `sub_23ED` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x23F7` | `sub_23F7` | FAR | 318 | Dispatcher: tabla de decisiones cmp+jcc (318 instr). | medium |
| `0x2400` | `sub_2400` | NEAR | 12 | Wrapper que delega en sub_1B1C. | medium |
| `0x2420` | `sub_2420` | FAR | 265 | Dispatcher: tabla de decisiones cmp+jcc (265 instr). | medium |
| `0x26AE` | `sub_26AE` | NEAR | 35 | Funcion mediana (35 instr, 3 calls). | low |
| `0x2700` | `sub_2700` | NEAR | 4 | Llama a servicios DOS via INT 21h (4 instr). | medium |
| `0x2707` | `sub_2707` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x271D` | `sub_271D` | FAR | 571 | Dispatcher: tabla de decisiones cmp+jcc (571 instr). | medium |
| `0x272A` | `sub_272A` | NEAR | 47 | Dispatcher: tabla de decisiones cmp+jcc (47 instr). | medium |
| `0x279F` | `sub_279F` | NEAR | 89 | Dispatcher: tabla de decisiones cmp+jcc (89 instr). | medium |
| `0x2893` | `sub_2893` | NEAR | 56 | Funcion mediana (56 instr, 1 calls). | low |
| `0x2927` | `sub_2927` | FAR | 131 | Dispatcher: tabla de decisiones cmp+jcc (131 instr). | medium |
| `0x2A7D` | `sub_2A7D` | NEAR | 69 | Funcion mediana (69 instr, 3 calls). | low |
| `0x2B35` | `sub_2B35` | NEAR | 202 | Dispatcher: tabla de decisiones cmp+jcc (202 instr). | medium |
| `0x2CAC` | `sub_2CAC` | NEAR | 44 | Dispatcher: tabla de decisiones cmp+jcc (44 instr). | medium |
| `0x2D21` | `sub_2D21` | FAR | 42 | Funcion mediana (42 instr, 3 calls). | low |
| `0x2D58` | `sub_2D58` | NEAR | 88 | Dispatcher: tabla de decisiones cmp+jcc (88 instr). | medium |
| `0x2D91` | `sub_2D91` | FAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x2DB6` | `sub_2DB6` | NEAR | 42 | Dispatcher: tabla de decisiones cmp+jcc (42 instr). | medium |
| `0x2E2A` | `sub_2E2A` | NEAR | 81 | Funcion compleja: 81 instrucciones, 5 llamadas, 6 branches. | low |
| `0x2E4A` | `sub_2E4A` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x2E70` | `sub_2E70` | NEAR | 8 | Wrapper que delega en sub_2D58. | medium |
| `0x2E80` | `sub_2E80` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x2E8F` | `sub_2E8F` | FAR | 319 | Dispatcher: tabla de decisiones cmp+jcc (319 instr). | medium |
| `0x2EE1` | `sub_2EE1` | FAR | 79 | Dispatcher: tabla de decisiones cmp+jcc (79 instr). | medium |
| `0x2F9E` | `sub_2F9E` | NEAR | 176 | Llama a servicios DOS via INT 21h (176 instr). | medium |
| `0x3157` | `sub_3157` | FAR | 520 | Dispatcher: tabla de decisiones cmp+jcc (520 instr). | medium |
| `0x31F6` | `sub_31F6` | NEAR | 124 | Dispatcher: tabla de decisiones cmp+jcc (124 instr). | medium |
| `0x3327` | `sub_3327` | FAR | 63 | Funcion mediana (63 instr, 3 calls). | low |
| `0x33B6` | `sub_33B6` | NEAR | 234 | Dispatcher: tabla de decisiones cmp+jcc (234 instr). | medium |
| `0x3659` | `sub_3659` | NEAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `0x369E` | `sub_369E` | NEAR | 156 | Dispatcher: tabla de decisiones cmp+jcc (156 instr). | medium |
| `0x36AE` | `sub_36AE` | FAR | 34 | Funcion mediana (34 instr, 1 calls). | low |
| `0x36EE` | `sub_36EE` | FAR | 153 | Dispatcher: tabla de decisiones cmp+jcc (153 instr). | medium |
| `0x3863` | `sub_3863` | NEAR | 172 | Dispatcher: tabla de decisiones cmp+jcc (172 instr). | medium |
| `0x3A29` | `sub_3A29` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x3A4F` | `sub_3A4F` | FAR | 131 | Dispatcher: tabla de decisiones cmp+jcc (131 instr). | medium |
