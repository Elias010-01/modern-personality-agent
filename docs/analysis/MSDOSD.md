# Modulo `MSDOSD`

- Funciones: **33**
- Confidence: high=0, medium=24, low=4, unknown=5

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `FORMAT` | FAR | 476 | Iterador con instrucciones de string (movsb/scasb/...) (476 instr). | medium |
| `-` | `SYS` | FAR | 328 | Dispatcher: tabla de decisiones cmp+jcc (328 instr). | medium |
| `0x0807` | `sub_0807` | NEAR | 43 | Dispatcher: tabla de decisiones cmp+jcc (43 instr). | medium |
| `0x0879` | `sub_0879` | NEAR | 9 | Funcion sin clasificar definitiva (9 instr). | unknown |
| `0x088C` | `sub_088C` | NEAR | 7 | Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion. | low |
| `0x089A` | `sub_089A` | NEAR | 4 | Llama a servicios DOS via INT 21h (4 instr). | medium |
| `0x08A1` | `sub_08A1` | NEAR | 17 | Llama a servicios DOS via INT 21h (17 instr). | medium |
| `0x08C4` | `sub_08C4` | NEAR | 12 | Llama a servicios DOS via INT 21h (12 instr). | medium |
| `0x08DA` | `sub_08DA` | NEAR | 4 | Llama a servicios DOS via INT 21h (4 instr). | medium |
| `0x08E1` | `sub_08E1` | NEAR | 9 | Llama a servicios DOS via INT 21h (9 instr). | medium |
| `0x08F3` | `sub_08F3` | NEAR | 12 | Llama a servicios DOS via INT 21h (12 instr). | medium |
| `0x0909` | `sub_0909` | NEAR | 3 | Llama a servicios DOS via INT 21h (3 instr). | medium |
| `0x090E` | `sub_090E` | NEAR | 17 | Llama a servicios DOS via INT 21h (17 instr). | medium |
| `0x092E` | `sub_092E` | NEAR | 24 | Llama a servicios DOS via INT 21h (24 instr). | medium |
| `0x0958` | `sub_0958` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x0980` | `sub_0980` | NEAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `0x09A8` | `sub_09A8` | NEAR | 85 | Iterador con instrucciones de string (movsb/scasb/...) (85 instr). | medium |
| `0x0A6B` | `sub_0A6B` | NEAR | 91 | Llama a servicios DOS via INT 21h (91 instr). | medium |
| `0x0B24` | `sub_0B24` | NEAR | 71 | Llama a servicios DOS via INT 21h (71 instr). | medium |
| `0x0BB2` | `sub_0BB2` | NEAR | 55 | Llama a servicios DOS via INT 21h (55 instr). | medium |
| `0x0C2C` | `sub_0C2C` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x0C49` | `sub_0C49` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x0C60` | `sub_0C60` | NEAR | 61 | Llama a servicios DOS via INT 21h (61 instr). | medium |
| `0x0CDC` | `sub_0CDC` | NEAR | 47 | Funcion mediana (47 instr, 3 calls). | low |
| `0x0D46` | `sub_0D46` | NEAR | 151 | Llama a servicios DOS via INT 21h (151 instr). | medium |
| `0x0E84` | `sub_0E84` | NEAR | 11 | Llama a servicios DOS via INT 21h (11 instr). | medium |
| `0x0E9C` | `sub_0E9C` | NEAR | 55 | Llama a servicios DOS via INT 21h (55 instr). | medium |
| `0x0F16` | `sub_0F16` | NEAR | 74 | Llama a servicios DOS via INT 21h (74 instr). | medium |
| `0x0FB4` | `sub_0FB4` | NEAR | 13 | Llama a servicios DOS via INT 21h (13 instr). | medium |
| `0x0FD0` | `sub_0FD0` | NEAR | 62 | Llama a servicios DOS via INT 21h (62 instr). | medium |
| `0x104E` | `sub_104E` | NEAR | 276 | Llama a servicios DOS via INT 21h (276 instr). | medium |
| `0x1289` | `sub_1289` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x12B8` | `sub_12B8` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
