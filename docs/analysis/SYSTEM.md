# Modulo `SYSTEM`

- Funciones: **6**
- Confidence: high=0, medium=5, low=1, unknown=0

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `-` | `CREATESYSTEMTIMER` | FAR | 35 | Constructor: crea systemtimer. | medium |
| `-` | `DISABLESYSTEMTIMERS` | FAR | 10 | Llama a servicios DOS via INT 21h (10 instr). | medium |
| `-` | `ENABLESYSTEMTIMERS` | FAR | 17 | Llama a servicios DOS via INT 21h (17 instr). | medium |
| `-` | `INQUIRELONGINTS` | FAR | 3 | Stub trivial (3 instrucciones, sin logica significativa). | low |
| `-` | `KILLSYSTEMTIMER` | FAR | 34 | Iterador con instrucciones de string (movsb/scasb/...) (34 instr). | medium |
| `0x018D` | `sub_018D` | NEAR | 262 | Interrupt Service Routine (262 instrucciones, posible manejador de INT). | medium |
