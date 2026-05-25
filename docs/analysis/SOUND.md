# Modulo `SOUND`

- Funciones: **34**
- Confidence: high=0, medium=20, low=9, unknown=5

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `CLOSESOUND` | FAR | 44 | Iterador con bucle (44 instr). | medium |
| `-` | `COUNTVOICENOTES` | FAR | 29 | Funcion sin clasificar definitiva (29 instr). | unknown |
| `-` | `GETTHRESHOLDEVENT` | FAR | 23 | Getter: devuelve thresholdevent. | medium |
| `-` | `GETTHRESHOLDSTATUS` | FAR | 24 | Getter: devuelve thresholdstatus. | medium |
| `-` | `MYOPENSOUND` | FAR | 130 | Iterador con bucle (130 instr). | medium |
| `-` | `SETSOUNDNOISE` | FAR | 27 | Setter: cambia soundnoise. | medium |
| `-` | `SETVOICEACCENT` | FAR | 58 | Setter: cambia voiceaccent. | medium |
| `-` | `SETVOICEENVELOPE` | FAR | 32 | Setter: cambia voiceenvelope. | medium |
| `-` | `SETVOICENOTE` | FAR | 122 | Setter: cambia voicenote. | medium |
| `-` | `SETVOICEQUEUESIZE` | FAR | 64 | Setter: cambia voicequeuesize. | medium |
| `-` | `SETVOICESOUND` | FAR | 37 | Setter: cambia voicesound. | medium |
| `-` | `SETVOICETHRESHOLD` | FAR | 28 | Setter: cambia voicethreshold. | medium |
| `-` | `STARTSOUND` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `STOPSOUND` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `SYNCALLVOICES` | FAR | 32 | Funcion mediana (32 instr, 2 calls). | low |
| `0x0000` | `sub_0000` | NEAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `0x0383` | `sub_0383` | FAR | 91 | Dispatcher: tabla de decisiones cmp+jcc (91 instr). | medium |
| `0x0623` | `sub_0623` | NEAR | 60 | Funcion mediana (60 instr, 1 calls). | low |
| `0x0694` | `sub_0694` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x06AC` | `sub_06AC` | NEAR | 143 | Dispatcher: tabla de decisiones cmp+jcc (143 instr). | medium |
| `0x07C6` | `sub_07C6` | NEAR | 8 | Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion. | low |
| `0x07D4` | `sub_07D4` | NEAR | 9 | Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion. | low |
| `0x07E4` | `sub_07E4` | NEAR | 84 | Dispatcher: tabla de decisiones cmp+jcc (84 instr). | medium |
| `0x08A6` | `sub_08A6` | NEAR | 27 | Funcion sin clasificar definitiva (27 instr). | unknown |
| `0x08E4` | `sub_08E4` | NEAR | 35 | Llama a servicios DOS via INT 21h (35 instr). | medium |
| `0x0936` | `sub_0936` | NEAR | 2 | Stub trivial (2 instrucciones, sin logica significativa). | low |
| `0x093C` | `sub_093C` | NEAR | 17 | Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion. | low |
| `0x095B` | `sub_095B` | NEAR | 11 | Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion. | low |
| `0x0972` | `sub_0972` | NEAR | 64 | Interrupt Service Routine (64 instrucciones, posible manejador de INT). | medium |
| `0x0A04` | `sub_0A04` | NEAR | 52 | Dispatcher: tabla de decisiones cmp+jcc (52 instr). | medium |
| `0x0A84` | `sub_0A84` | NEAR | 69 | Dispatcher: tabla de decisiones cmp+jcc (69 instr). | medium |
| `0x0B45` | `sub_0B45` | NEAR | 84 | Llama a servicios DOS via INT 21h (84 instr). | medium |
| `0x0C16` | `sub_0C16` | NEAR | 18 | Funcion sin clasificar definitiva (18 instr). | unknown |
| `0x0C3C` | `sub_0C3C` | NEAR | 89 | Llama a servicios DOS via INT 21h (89 instr). | medium |
