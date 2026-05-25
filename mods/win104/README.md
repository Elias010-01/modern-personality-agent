# Mod: win104

Edita los .asm que quieras modificar en `patches/<MODULE>/seg<N>.asm`.
Para mods de operandos (cambiar constantes), edita los bytes en
el comentario `; HEX HEX HEX` directamente.
Para mods donde quieras que mande la instruccion legible, anade
`[ASM]` al final del comentario.

Aplica con:

```
python3 bootstrap/mod_system.py apply win104
```
