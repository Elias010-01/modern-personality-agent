# Modulo `COMM`

- Funciones: **43**
- Confidence: high=0, medium=16, low=14, unknown=13

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `CCLRBRK` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `-` | `CEVT` | FAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `-` | `CEVTGET` | FAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `-` | `CEXTFCN` | FAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `-` | `CFLUSH` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `CSETBRK` | FAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `-` | `CTX` | FAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `-` | `GETDCB` | FAR | 19 | Getter: devuelve dcb. | medium |
| `-` | `INICOM` | FAR | 15 | Wrapper que delega en sub_01D1. | medium |
| `-` | `RECCOM` | FAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `-` | `SETCOM` | FAR | 15 | Setter: cambia com. | medium |
| `-` | `SETQUE` | FAR | 16 | Setter: cambia que. | medium |
| `-` | `SNDCOM` | FAR | 16 | Funcion sin clasificar definitiva (16 instr). | unknown |
| `-` | `STACOM` | FAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `-` | `TRMCOM` | FAR | 15 | Wrapper que delega en sub_032D. | medium |
| `0x01D1` | `sub_01D1` | NEAR | 108 | Llama a servicios DOS via INT 21h (108 instr). | medium |
| `0x02C0` | `sub_02C0` | NEAR | 20 | Funcion sin clasificar definitiva (20 instr). | unknown |
| `0x02E7` | `sub_02E7` | NEAR | 32 | Funcion mediana (32 instr, 4 calls). | low |
| `0x032D` | `sub_032D` | NEAR | 40 | Funcion mediana (40 instr, 5 calls). | low |
| `0x038D` | `sub_038D` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x03CD` | `sub_03CD` | NEAR | 14 | Llama a servicios DOS via INT 21h (14 instr). | medium |
| `0x03E8` | `sub_03E8` | NEAR | 47 | Iterador con bucle (47 instr). | medium |
| `0x044D` | `sub_044D` | NEAR | 95 | Iterador con bucle (95 instr). | medium |
| `0x050E` | `sub_050E` | NEAR | 12 | Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion. | low |
| `0x0522` | `sub_0522` | NEAR | 7 | Wrapper que delega en sub_0530. | medium |
| `0x0530` | `sub_0530` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
| `0x0549` | `sub_0549` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x056A` | `sub_056A` | NEAR | 43 | Funcion mediana (43 instr, 0 calls). | low |
| `0x05C6` | `sub_05C6` | FAR | 14 | Llama a servicios DOS via INT 21h (14 instr). | medium |
| `0x05E6` | `sub_05E6` | NEAR | 47 | Funcion mediana (47 instr, 0 calls). | low |
| `0x0656` | `sub_0656` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x065D` | `sub_065D` | NEAR | 14 | Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion. | low |
| `0x0677` | `sub_0677` | NEAR | 19 | Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion. | low |
| `0x06A3` | `sub_06A3` | NEAR | 24 | Funcion sin clasificar definitiva (24 instr). | unknown |
| `0x06C8` | `sub_06C8` | NEAR | 11 | Wrapper que delega en sub_0677. | medium |
| `0x06DE` | `sub_06DE` | NEAR | 13 | Wrapper que delega en sub_0677. | medium |
| `0x06F6` | `sub_06F6` | NEAR | 31 | Funcion mediana (31 instr, 1 calls). | low |
| `0x0741` | `sub_0741` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x0746` | `sub_0746` | NEAR | 19 | Funcion sin clasificar definitiva (19 instr). | unknown |
| `0x076C` | `sub_076C` | NEAR | 61 | Iterador con instrucciones de string (movsb/scasb/...) (61 instr). | medium |
| `0x07DE` | `sub_07DE` | NEAR | 9 | Wrapper que delega en sub_0677. | medium |
| `0x07EE` | `sub_07EE` | NEAR | 57 | Funcion mediana (57 instr, 2 calls). | low |
| `0x086F` | `sub_086F` | NEAR | 217 | Dispatcher: tabla de decisiones cmp+jcc (217 instr). | medium |
