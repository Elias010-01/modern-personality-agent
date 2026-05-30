# Mod: win104 — Windows 1.04 version bump

Este mod cambia todas las cadenas visibles `"Version 1.03"` a
`"Version 1.04"` en los binarios de arranque (`WIN.COM`,
`WIN100.OVL`).

## Como funciona

Usa el motor declarativo de mods (`bootstrap/mod_engine.py`):

* `patches.toml` describe los reemplazos de string byte-for-byte.
* No se toca `src/` directamente; el motor aplica los parches
  sobre copias de los binarios originales y los inyecta en la
  imagen de disquete.

## Aplicar

```bash
python bootstrap/mod_system.py apply win104
```

## Revertir

```bash
python bootstrap/mod_system.py revert
```

## Futuro

Para que KERNEL.GetVersion devuelva realmente `0x0401` (1.04)
en vez de `0x0301` (1.03), habria que anadir un parche binario
en el code segment de KERNEL (cambiar `B8 01 03` -> `B8 01 04`).
Esto puede hacerse como parche ASM legacy en
`patches/KERNEL/seg<N>.asm`.
