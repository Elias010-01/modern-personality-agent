# Modulo `EGALORES`

- Funciones: **45**
- Confidence: high=0, medium=20, low=12, unknown=13

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x015D` | `sub_015D` | NEAR | 36 | Llama a servicios BIOS via INT 10h (video, 36 instr). | medium |
| `0x01AA` | `sub_01AA` | NEAR | 9 | Iterador con instrucciones de string (movsb/scasb/...) (9 instr). | medium |
| `0x01B6` | `sub_01B6` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x01D6` | `sub_01D6` | NEAR | 12 | Funcion sin clasificar definitiva (12 instr). | unknown |
| `0x01F3` | `sub_01F3` | NEAR | 11 | Wrapper que delega en sub_04F2. | medium |
| `0x0210` | `sub_0210` | NEAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `0x023B` | `sub_023B` | NEAR | 15 | Iterador con instrucciones de string (movsb/scasb/...) (15 instr). | medium |
| `0x0258` | `sub_0258` | NEAR | 15 | Wrapper que delega en sub_027D. | medium |
| `0x027D` | `sub_027D` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x02CB` | `sub_02CB` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x031B` | `sub_031B` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x0355` | `sub_0355` | NEAR | 26 | Iterador con instrucciones de string (movsb/scasb/...) (26 instr). | medium |
| `0x0385` | `sub_0385` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x03A7` | `sub_03A7` | NEAR | 63 | Iterador con bucle (63 instr). | medium |
| `0x043D` | `sub_043D` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x045D` | `sub_045D` | NEAR | 33 | Iterador con instrucciones de string (movsb/scasb/...) (33 instr). | medium |
| `0x0492` | `sub_0492` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x04F2` | `sub_04F2` | NEAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `0x051C` | `sub_051C` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x052A` | `sub_052A` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x0536` | `sub_0536` | NEAR | 6 | Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion. | low |
| `0x0541` | `sub_0541` | FAR | 1093 | Iterador con instrucciones de string (movsb/scasb/...) (1093 instr). | medium |
| `0x0EC6` | `sub_0EC6` | FAR | 1459 | Iterador con instrucciones de string (movsb/scasb/...) (1459 instr). | medium |
| `0x1C1F` | `sub_1C1F` | NEAR | 71 | Dispatcher: tabla de decisiones cmp+jcc (71 instr). | medium |
| `0x1CEE` | `sub_1CEE` | FAR | 348 | Iterador con instrucciones de string (movsb/scasb/...) (348 instr). | medium |
| `0x2036` | `sub_2036` | NEAR | 49 | Funcion mediana (49 instr, 1 calls). | low |
| `0x20B4` | `sub_20B4` | NEAR | 177 | Iterador con instrucciones de string (movsb/scasb/...) (177 instr). | medium |
| `0x225F` | `sub_225F` | FAR | 90 | Iterador con instrucciones de string (movsb/scasb/...) (90 instr). | medium |
| `0x2322` | `sub_2322` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x2327` | `sub_2327` | FAR | 128 | Iterador con instrucciones de string (movsb/scasb/...) (128 instr). | medium |
| `0x2426` | `sub_2426` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x2474` | `sub_2474` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x247A` | `sub_247A` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x24B2` | `sub_24B2` | FAR | 69 | Funcion mediana (69 instr, 1 calls). | low |
| `0x2552` | `sub_2552` | FAR | 163 | Funcion compleja: 163 instrucciones, 1 llamadas, 4 branches. | low |
| `0x2682` | `sub_2682` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x26A5` | `sub_26A5` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x26BD` | `sub_26BD` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x26E4` | `sub_26E4` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `0x271F` | `sub_271F` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x273E` | `sub_273E` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x2769` | `sub_2769` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x277E` | `sub_277E` | FAR | 54 | Funcion mediana (54 instr, 0 calls). | low |
| `0x27EE` | `sub_27EE` | NEAR | 28 | Iterador con instrucciones de string (movsb/scasb/...) (28 instr). | medium |
| `0x282C` | `sub_282C` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
