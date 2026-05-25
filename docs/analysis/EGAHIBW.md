# Modulo `EGAHIBW`

- Funciones: **38**
- Confidence: high=0, medium=20, low=7, unknown=11

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x014D` | `sub_014D` | NEAR | 5 | Llama a servicios BIOS via INT 10h (video, 5 instr). | medium |
| `0x0157` | `sub_0157` | NEAR | 7 | Wrapper que delega en sub_0169. | medium |
| `0x0169` | `sub_0169` | NEAR | 9 | Iterador con instrucciones de string (movsb/scasb/...) (9 instr). | medium |
| `0x0175` | `sub_0175` | NEAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x018C` | `sub_018C` | NEAR | 10 | Wrapper que delega en sub_01A3. | medium |
| `0x01A3` | `sub_01A3` | NEAR | 11 | Wrapper que delega en sub_048C. | medium |
| `0x01C0` | `sub_01C0` | NEAR | 25 | Iterador con instrucciones de string (movsb/scasb/...) (25 instr). | medium |
| `0x01FA` | `sub_01FA` | NEAR | 15 | Wrapper que delega en sub_021F. | medium |
| `0x021F` | `sub_021F` | NEAR | 39 | Iterador con instrucciones de string (movsb/scasb/...) (39 instr). | medium |
| `0x026D` | `sub_026D` | NEAR | 42 | Iterador con instrucciones de string (movsb/scasb/...) (42 instr). | medium |
| `0x02BD` | `sub_02BD` | NEAR | 24 | Iterador con instrucciones de string (movsb/scasb/...) (24 instr). | medium |
| `0x02F3` | `sub_02F3` | NEAR | 22 | Iterador con instrucciones de string (movsb/scasb/...) (22 instr). | medium |
| `0x031F` | `sub_031F` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x0341` | `sub_0341` | NEAR | 63 | Iterador con bucle (63 instr). | medium |
| `0x03D7` | `sub_03D7` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x03F7` | `sub_03F7` | NEAR | 33 | Iterador con instrucciones de string (movsb/scasb/...) (33 instr). | medium |
| `0x042C` | `sub_042C` | NEAR | 36 | Dispatcher: tabla de decisiones cmp+jcc (36 instr). | medium |
| `0x048C` | `sub_048C` | FAR | 1660 | Iterador con instrucciones de string (movsb/scasb/...) (1660 instr). | medium |
| `0x1332` | `sub_1332` | NEAR | 50 | Dispatcher: tabla de decisiones cmp+jcc (50 instr). | medium |
| `0x13B7` | `sub_13B7` | FAR | 180 | Iterador con instrucciones de string (movsb/scasb/...) (180 instr). | medium |
| `0x156C` | `sub_156C` | FAR | 149 | Iterador con instrucciones de string (movsb/scasb/...) (149 instr). | medium |
| `0x16BC` | `sub_16BC` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x16C1` | `sub_16C1` | FAR | 104 | Iterador con instrucciones de string (movsb/scasb/...) (104 instr). | medium |
| `0x178A` | `sub_178A` | NEAR | 26 | Funcion sin clasificar definitiva (26 instr). | unknown |
| `0x17D8` | `sub_17D8` | NEAR | 4 | Funcion sin clasificar definitiva (4 instr). | unknown |
| `0x17DE` | `sub_17DE` | NEAR | 20 | Funcion hoja (no llama a otras, 20 instr): probable helper aritmetico/conversion. | low |
| `0x1816` | `sub_1816` | FAR | 69 | Funcion mediana (69 instr, 2 calls). | low |
| `0x18B6` | `sub_18B6` | FAR | 163 | Funcion compleja: 163 instrucciones, 1 llamadas, 1 branches. | low |
| `0x19E6` | `sub_19E6` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1A09` | `sub_1A09` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1A21` | `sub_1A21` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1A48` | `sub_1A48` | FAR | 33 | Funcion mediana (33 instr, 0 calls). | low |
| `0x1A83` | `sub_1A83` | NEAR | 14 | Funcion sin clasificar definitiva (14 instr). | unknown |
| `0x1AA2` | `sub_1AA2` | NEAR | 15 | Funcion sin clasificar definitiva (15 instr). | unknown |
| `0x1ACD` | `sub_1ACD` | NEAR | 10 | Funcion sin clasificar definitiva (10 instr). | unknown |
| `0x1AE2` | `sub_1AE2` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x1B0A` | `sub_1B0A` | NEAR | 44 | Iterador con instrucciones de string (movsb/scasb/...) (44 instr). | medium |
| `0x1B66` | `sub_1B66` | NEAR | 18 | Funcion hoja (no llama a otras, 18 instr): probable helper aritmetico/conversion. | low |
