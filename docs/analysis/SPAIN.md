# Modulo `SPAIN`

- Funciones: **5**
- Confidence: high=0, medium=3, low=1, unknown=1

## Funciones

| Offset | Nombre | Tipo | Instr | Descripcion | Conf |
|--------|--------|------|-------|-------------|------|
| `0x010A` | `sub_010A` | NEAR | 21 | Funcion sin clasificar definitiva (21 instr). | unknown |
| `0x013A` | `sub_013A` | FAR | 160 | Iterador con instrucciones de string (movsb/scasb/...) (160 instr). | medium |
| `0x0254` | `sub_0254` | FAR | 191 | Iterador con instrucciones de string (movsb/scasb/...) (191 instr). | medium |
| `0x0412` | `sub_0412` | NEAR | 14 | Wrapper que delega en sub_0431. | medium |
| `0x0431` | `sub_0431` | NEAR | 10 | Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion. | low |
