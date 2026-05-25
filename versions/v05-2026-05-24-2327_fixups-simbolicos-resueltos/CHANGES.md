# Cambios en v05 (2026-05-24-2327)

**Mensaje**: Pista A completa al maximo: codigo .asm humano legible con PROC FAR/ENDP por funcion (LSTRCPY, GLOBALALLOC, GETVERSION, etc), labels L_xxxx para branch targets, fixups simbolicos resueltos (call far KERNEL.LSTRCPY en lugar de lcall 0,0xffff), bytes raw en comentario como autoridad para byte-exact. 69/69 modulos byte-exact verificado. Pipeline: decompile_segment.py (24s) + build_from_source.py (3s).

**Anterior**: versions/v04-2026-05-24-2319_asm-humano-legible-PROC-labels/

## Que se logro en esta version

(rellenar)

## Comandos de reproduccion

```bash
# (rellenar con los comandos clave usados)
```

## Verificacion

(como confirmamos que esta version funciona)
