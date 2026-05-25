# Modulo `ATTDC`

- Funciones: **41**
- Confidence: high=0, medium=19, low=8, unknown=14

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x01B3` | `sub_01B3` | NEAR | 110 | Llama a servicios DOS via INT 21h (110 instr). | medium |
| `0x02C0` | `sub_02C0` | NEAR | 1322 | Llama a servicios BIOS via INT 10h (video, 1322 instr). | medium |
| `0x0E98` | `sub_0E98` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x0ED6` | `sub_0ED6` | NEAR | 17 | Iterador con instrucciones de string (movsb/scasb/...) (17 instr). | medium |
| `0x0EEE` | `sub_0EEE` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x0F05` | `sub_0F05` | NEAR | 10 | Wrapper que delega en sub_0F1C. | medium |
| `0x0F1C` | `sub_0F1C` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x0F43` | `sub_0F43` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x0F94` | `sub_0F94` | NEAR | 15 | Wrapper que delega en sub_0FB9. | medium |
| `0x0FB9` | `sub_0FB9` | NEAR | 40 | Iterador con instrucciones de string (movsb/scasb/...) (40 instr). | medium |
| `0x100B` | `sub_100B` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x105D` | `sub_105D` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x1098` | `sub_1098` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x10C9` | `sub_10C9` | NEAR | 16 | Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion. | low |
| `0x10F2` | `sub_10F2` | NEAR | 65 | Iterador con bucle (65 instr). | medium |
| `0x118E` | `sub_118E` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x11AE` | `sub_11AE` | NEAR | 70 | Iterador con instrucciones de string (movsb/scasb/...) (70 instr). | medium |
| `0x123B` | `sub_123B` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x129C` | `sub_129C` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x12C8` | `sub_12C8` | NEAR | 1 | Stub trivial (1 instrucciones, sin logica significativa). | low |
| `0x12CC` | `sub_12CC` | FAR | 451 | Iterador con instrucciones de string (movsb/scasb/...) (451 instr). | medium |
| `0x16C7` | `sub_16C7` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x174C` | `sub_174C` | FAR | 180 | Iterador con instrucciones de string (movsb/scasb/...) (180 instr). | medium |
| `0x1901` | `sub_1901` | FAR | 149 | Iterador con instrucciones de string (movsb/scasb/...) (149 instr). | medium |
| `0x1A51` | `sub_1A51` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x1A56` | `sub_1A56` | FAR | 101 | Iterador con instrucciones de string (movsb/scasb/...) (101 instr). | medium |
| `0x1B1F` | `sub_1B1F` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x1B6D` | `sub_1B6D` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x1B73` | `sub_1B73` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1BAB` | `sub_1BAB` | FAR | 69 | Funcion mediana (69 instr, 2 calls). | low |
| `0x1C4B` | `sub_1C4B` | FAR | 163 | Funcion compleja: 163 instrucciones, 2 llamadas, 1 branches. | low |
| `0x1D7B` | `sub_1D7B` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1D9E` | `sub_1D9E` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1DB6` | `sub_1DB6` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1DDD` | `sub_1DDD` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `0x1E18` | `sub_1E18` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1E37` | `sub_1E37` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1E62` | `sub_1E62` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1E77` | `sub_1E77` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1E9F` | `sub_1E9F` | NEAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `0x1EFB` | `sub_1EFB` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
