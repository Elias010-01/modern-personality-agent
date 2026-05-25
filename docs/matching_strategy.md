# Matching strategy

## Por qué matching binario y no equivalencia funcional

Tres razones:

1. **Es el único oráculo determinista.** Equivalencia funcional requiere
   definir un test reel exhaustivo y aceptar tolerancias; en la práctica los
   proyectos que la usan acaban con un alto rate de regresiones silenciosas.
2. **MSC 4.0 es alcanzable.** A diferencia de un compilador moderno con LTO,
   PGO y register allocation no determinista, MSC 4.0 es un compilador simple
   con codegen predecible. Hay un puñado de patrones de prólogo/epílogo,
   spilling lineal, sin reordering. Matching binario es factible.
3. **Permite paralelizar el trabajo.** Cada función matchea independientemente.
   No necesitas tener vecinos correctos para validar la actual.

## Patrones que el agente debe interiorizar

### Prólogo Pascal estándar (export __loadds)

```asm
push    bp
mov     bp,sp
push    ds                          ; __loadds
mov     ax,DGROUP
mov     ds,ax
push    si                          ; si la función usa SI
push    di                          ; si la función usa DI
sub     sp,N                        ; locales
```

C correspondiente:

```c
__export __loadds
int FAR PASCAL FuncName(int param1, int param2)
{
    int locals[N/2];
    /* ... */
}
```

### Epílogo Pascal estándar

```asm
add     sp,N
pop     di
pop     si
pop     ds
mov     sp,bp
pop     bp
ret     M                           ; M = bytes de args (cleanup callee)
```

### Acceso a far data

MSC 4.0 modelo medium → datos near por defecto, pero los punteros a otros
segmentos son `far`. Patrón típico:

```asm
les     bx,[bp+04]                  ; carga FAR ptr de [bp+04]
mov     ax,es:[bx]
```

```c
WORD FAR *p = (WORD FAR *)param;
return *p;
```

### Switch densos

MSC 4.0 emite jump tables en el segmento de código (no en .DATA) para switches
de >4 cases con valores compactos:

```asm
        cmp     ax,N
        jae     default_label
        shl     ax,1
        mov     bx,ax
        jmp     cs:[bx + table_offset]
table:  dw      case0
        dw      case1
        ...
```

El agente debe reproducir esto con un `switch` C limpio. Si Ghidra muestra
casos en el medio del código, no son cases del switch original; son labels
post-jump-table. Distinguirlos requiere mirar la estructura del CFG.

### Lo que MSC 4.0 NO genera

- Loop unrolling no trivial.
- Reordering de bloques.
- Inlining de funciones que no estén marcadas (no había `inline` en MSC 4).
- División por constantes optimizada (no usa multiplicación recíproca).
- Strength reduction agresiva.

Si Ghidra muestra eso, casi siempre el código original era ASM, no C. El
agente debería proponer ASM en ese caso.

## Cuándo NO usar matching binario

- **Display drivers sin símbolos** donde los autores originales fueron
  inconsistentes y MSC4 no puede reproducir el shape exacto (raro pero pasa).
  Cae a pixel-diff. Ver `display_drivers.md`.
- **Funciones con código auto-modificante** (algunas rutas del loader NE).
  Estas se marcan `skipped` y se documentan a mano.

## Tasa de match esperada

Por experiencia en proyectos similares (decomp.me, papermario):
- Funciones con símbolos y < 50 bytes → ~80% matchean al primer intento.
- Funciones con símbolos y < 200 bytes → ~50% al primer intento, 90% en 5.
- Funciones sin símbolos → mucho más variable, depende de cuánto contexto
  haya de los callees ya matched.

Si la tasa cae por debajo del 30%, hay que sospechar de problemas
sistémicos: codegen flags incorrectos, modelo de memoria incorrecto, o el
toolchain DOS no está exactamente como en 1985.
