# Modulo `MOUSE`

- Funciones: **11**
- Confidence: high=0, medium=6, low=1, unknown=4

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `DISABLE` | FAR | 34 | Llama a servicios DOS via INT 21h (34 instr). | medium |
| `-` | `ENABLE` | FAR | 22 | Funcion sin clasificar definitiva (22 instr). | unknown |
| `-` | `INQUIRE` | FAR | 23 | Funcion sin clasificar definitiva (23 instr). | unknown |
| `-` | `entry` | FAR | 34 | Funcion mediana (34 instr, 2 calls). | low |
| `0x0056` | `sub_0056` | NEAR | 29 | Llama a servicios DOS via INT 21h (29 instr). | medium |
| `0x00A0` | `sub_00A0` | FAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x00FC` | `sub_00FC` | FAR | 11 | Funcion sin clasificar definitiva (11 instr). | unknown |
| `0x010B` | `sub_010B` | NEAR | 127 | Iterador con bucle (127 instr). | medium |
| `0x010C` | `sub_010C` | FAR | 94 | Iterador con instrucciones de string (movsb/scasb/...) (94 instr). | medium |
| `0x024D` | `sub_024D` | NEAR | 118 | Interrupt Service Routine (118 instrucciones, posible manejador de INT). | medium |
| `0x034C` | `sub_034C` | NEAR | 61 | Iterador con bucle (61 instr). | medium |
