# Modulo `GENIUS`

- Funciones: **42**
- Confidence: high=0, medium=18, low=10, unknown=14

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x0182` | `sub_0182` | NEAR | 18 | Llama a servicios BIOS via INT 10h (video, 18 instr). | medium |
| `0x01A6` | `sub_01A6` | NEAR | 12 | Llama a servicios BIOS via INT 10h (video, 12 instr). | medium |
| `0x01BF` | `sub_01BF` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x01D5` | `sub_01D5` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x01DA` | `sub_01DA` | NEAR | 4 | Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion. | low |
| `0x01E1` | `sub_01E1` | NEAR | 7 | Wrapper que delega en sub_01F3. | medium |
| `0x01F3` | `sub_01F3` | NEAR | 9 | Iterador con instrucciones de string (movsb/scasb/...) (9 instr). | medium |
| `0x01FF` | `sub_01FF` | NEAR | 8 | Funcion sin clasificar definitiva (8 instr). | unknown |
| `0x0211` | `sub_0211` | NEAR | 6 | Wrapper que delega en sub_021E. | medium |
| `0x021E` | `sub_021E` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x0236` | `sub_0236` | NEAR | 25 | Iterador con instrucciones de string (movsb/scasb/...) (25 instr). | medium |
| `0x026B` | `sub_026B` | NEAR | 15 | Wrapper que delega en sub_0290. | medium |
| `0x0290` | `sub_0290` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x02DE` | `sub_02DE` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x032E` | `sub_032E` | NEAR | 15 | Iterador con instrucciones de string (movsb/scasb/...) (15 instr). | medium |
| `0x0354` | `sub_0354` | NEAR | 14 | Iterador con instrucciones de string (movsb/scasb/...) (14 instr). | medium |
| `0x0375` | `sub_0375` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x0397` | `sub_0397` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x03CA` | `sub_03CA` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x03E6` | `sub_03E6` | NEAR | 28 | Funcion sin clasificar definitiva (28 instr). | unknown |
| `0x0421` | `sub_0421` | NEAR | 31 | Dispatcher: tabla de decisiones cmp+jcc (31 instr). | medium |
| `0x0472` | `sub_0472` | FAR | 1740 | Iterador con instrucciones de string (movsb/scasb/...) (1740 instr). | medium |
| `0x13D0` | `sub_13D0` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x1455` | `sub_1455` | FAR | 180 | Iterador con instrucciones de string (movsb/scasb/...) (180 instr). | medium |
| `0x160A` | `sub_160A` | FAR | 149 | Iterador con instrucciones de string (movsb/scasb/...) (149 instr). | medium |
| `0x175A` | `sub_175A` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x175F` | `sub_175F` | FAR | 103 | Iterador con instrucciones de string (movsb/scasb/...) (103 instr). | medium |
| `0x1828` | `sub_1828` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x1876` | `sub_1876` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x187C` | `sub_187C` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x18B4` | `sub_18B4` | FAR | 69 | Funcion mediana (69 instr, 2 calls). | low |
| `0x1954` | `sub_1954` | FAR | 158 | Funcion compleja: 158 instrucciones, 2 llamadas, 2 branches. | low |
| `0x1A84` | `sub_1A84` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1AA7` | `sub_1AA7` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1ABF` | `sub_1ABF` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1AE6` | `sub_1AE6` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `0x1B21` | `sub_1B21` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1B40` | `sub_1B40` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1B6B` | `sub_1B6B` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1B80` | `sub_1B80` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1BA8` | `sub_1BA8` | NEAR | 50 | Iterador con instrucciones de string (movsb/scasb/...) (50 instr). | medium |
| `0x1C10` | `sub_1C10` | NEAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
