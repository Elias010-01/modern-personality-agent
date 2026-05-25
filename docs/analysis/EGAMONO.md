# Modulo `EGAMONO`

- Funciones: **38**
- Confidence: high=0, medium=20, low=7, unknown=11

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x0178` | `sub_0178` | NEAR | 5 | Llama a servicios BIOS via INT 10h (video, 5 instr). | medium |
| `0x0182` | `sub_0182` | NEAR | 7 | Wrapper que delega en sub_0194. | medium |
| `0x0194` | `sub_0194` | NEAR | 9 | Iterador con instrucciones de string (movsb/scasb/...) (9 instr). | medium |
| `0x01A0` | `sub_01A0` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x01B7` | `sub_01B7` | NEAR | 10 | Wrapper que delega en sub_01CE. | medium |
| `0x01CE` | `sub_01CE` | NEAR | 11 | Wrapper que delega en sub_04B7. | medium |
| `0x01EB` | `sub_01EB` | NEAR | 25 | Iterador con instrucciones de string (movsb/scasb/...) (25 instr). | medium |
| `0x0225` | `sub_0225` | NEAR | 15 | Wrapper que delega en sub_024A. | medium |
| `0x024A` | `sub_024A` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x0298` | `sub_0298` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x02E8` | `sub_02E8` | NEAR | 24 | Iterador con instrucciones de string (movsb/scasb/...) (24 instr). | medium |
| `0x031E` | `sub_031E` | NEAR | 22 | Iterador con instrucciones de string (movsb/scasb/...) (22 instr). | medium |
| `0x034A` | `sub_034A` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x036C` | `sub_036C` | NEAR | 63 | Iterador con bucle (63 instr). | medium |
| `0x0402` | `sub_0402` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x0422` | `sub_0422` | NEAR | 33 | Iterador con instrucciones de string (movsb/scasb/...) (33 instr). | medium |
| `0x0457` | `sub_0457` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x04B7` | `sub_04B7` | FAR | 1660 | Iterador con instrucciones de string (movsb/scasb/...) (1660 instr). | medium |
| `0x135D` | `sub_135D` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x13E2` | `sub_13E2` | FAR | 180 | Iterador con instrucciones de string (movsb/scasb/...) (180 instr). | medium |
| `0x1597` | `sub_1597` | FAR | 149 | Iterador con instrucciones de string (movsb/scasb/...) (149 instr). | medium |
| `0x16E7` | `sub_16E7` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x16EC` | `sub_16EC` | FAR | 104 | Iterador con instrucciones de string (movsb/scasb/...) (104 instr). | medium |
| `0x17B5` | `sub_17B5` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x1803` | `sub_1803` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x1809` | `sub_1809` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1841` | `sub_1841` | FAR | 69 | Funcion mediana (69 instr, 2 calls). | low |
| `0x18E1` | `sub_18E1` | FAR | 160 | Funcion compleja: 160 instrucciones, 1 llamadas, 1 branches. | low |
| `0x1A11` | `sub_1A11` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1A34` | `sub_1A34` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1A4C` | `sub_1A4C` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1A73` | `sub_1A73` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `0x1AAE` | `sub_1AAE` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1ACD` | `sub_1ACD` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1AF8` | `sub_1AF8` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1B0D` | `sub_1B0D` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1B35` | `sub_1B35` | NEAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `0x1B91` | `sub_1B91` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
