# Display drivers sin símbolos

CGA, EGA, HERCULES y MSDOSD no tienen los símbolos de debug que sí tienen el
kernel y los core drivers. Atacarlos a ciegas con LLM es una forma rápida de
quemar tokens. El plan es no atacarlos a ciegas.

## Cuatro palancas, en orden de rendimiento

### 1. Tabla de exports del NE como anclaje (gratis)

Aunque no haya símbolos internos, los display drivers de Win 1.x exportan
una **DDI (Display Device Interface)** con ordinales fijos por contrato con
GDI. Los nombres son:

| Ordinal | Nombre        | Descripción                                  |
|--------:|---------------|----------------------------------------------|
| 1       | `BitBlt`      | Bit block transfer con ROP                   |
| 2       | `ColorInfo`   | Mapeo de colores físicos ↔ lógicos           |
| 3       | `Control`     | I/O genérico (page flip, etc.)               |
| 4       | `Disable`     | Reset modo texto al salir                    |
| 5       | `Enable`      | Inicializa modo gráfico                      |
| 6       | `EnumDFonts`  | Enumera fuentes hardware                     |
| 7       | `EnumObj`     | Enumera objetos lógicos                      |
| 8       | `Output`      | Polígonos, rects, texto                      |
| 9       | `Pixel`       | Get/set un pixel                             |
| 10      | `RealizeObject`| Crea representación física de un objeto     |
| 11      | `StrBlt`      | Blit de texto                                |
| 12      | `ScanLR`      | Scan left/right (para fill)                  |
| 13      | `SetAttribute`| Cambia atributo del DC                       |
| 14      | `SetCursor`   | Posiciona cursor de mouse                    |
| 15      | `MoveCursor`  | Mueve cursor                                 |
| 16      | `CheckCursor` | Refresh del cursor                           |
| 17      | `GetCharWidth`| Anchura de un char                           |
| 18      | `DeviceMode`  | Diálogo de configuración                     |

**Acción**: poblar `symbols` para cada ordinal en cuanto se indexan los
binarios. Esto da nombre a 30-40 funciones gratis.

### 2. Cross-reference con drivers DDK de muestra

Las primeras ediciones del Windows 1.0 DDK incluían **fuente C/ASM** de
drivers de muestra. Cuando lo localices, va a `kb/data/ddk_samples/` y el
agente lo encuentra vía `mpa kb-search`. La lógica común de los drivers
(state machine de DCs, manejo de objetos lógicos, parser del param block de
GDI) es **literalmente reusable**: el código que escribió Microsoft para
los drivers reales partió de esos samples.

### 3. Diferencial entre drivers (CGA vs EGA vs Hercules)

Los tres comparten:
- Mismas firmas de DDI (idéntico bit a bit en la tabla de exports).
- Misma máquina de estados de DC (idéntico bit a bit en la lógica de despacho).
- Mismas estructuras de bookkeeping internas.

Difieren en:
- I/O ports (CGA: 3D4h/3D5h/3D8h/3D9h, EGA: 3C0..3DFh, Hercules: 3B4h/3B5h/3BAh).
- Layout del framebuffer (CGA: B800h interleaved 2-bit; EGA: A000h planar 4-bit;
  Hercules: B000h interleaved 1-bit).
- Tablas de fuentes hardware.

**Acción**: una vez matched **un** driver de display, el siguiente sale con
un effort muy bajo porque la arquitectura ya está reconstruida.

Recomendación: **empezar por Hercules**. Es el más simple (1 bpp, modo único,
sin paleta) y el framebuffer es trivial de inspeccionar.

### 4. Pixel-diff harness

Para los pocos casos donde matching binario sea frágil (típicamente porque
MSC 4.0 podría haber emitido X o Y y el original eligió Y por razones que no
se pueden inferir del disasm), caemos a pixel-diff:

```
                           ┌──────────────┐
                           │ DRIVER orig  │
                           └──────┬───────┘
                                  │
        ┌─────────────────────────┴────────────────────────┐
        │                                                  │
        ▼                                                  ▼
  ┌──────────┐                                       ┌──────────┐
  │ DOSBox-X │  ←── tests/pixel_reel/REEL.EXE  ──→  │ DOSBox-X │
  │  + orig  │                                      │  + cand  │
  └────┬─────┘                                      └────┬─────┘
       │                                                  │
       │ framebuffer dump                                 │ framebuffer dump
       ▼                                                  ▼
  fb_orig.raw                                       fb_cand.raw
       │                                                  │
       └────────────────────┬─────────────────────────────┘
                            ▼
                    diff_framebuffers()
                            │
                            ▼
                    matched / mismatch
```

**Componentes pendientes de implementar:**

1. **Hook de framebuffer-dump en DOSBox-X.** Una nueva instrucción "fake"
   (e.g. `INT FFh AH=01h`) que, al ejecutarse, vuelca el framebuffer físico
   actual a un fichero. Parche en `bootstrap/dosbox-x-fb-hook.patch`
   (a escribir).
2. **Test reel.** Un .EXE de Windows 1.x mínimo que carga el driver,
   ejecuta una secuencia determinista de primitivas GDI cubriendo:
   - Líneas: Bresenham en las 8 octantes, línea horizontal, vertical.
   - Rects: sólidos, hollow, varios ROPs.
   - BitBlts: SRCCOPY, SRCAND, SRCXOR, BLACKNESS, WHITENESS, NOTSRCCOPY,
     PATCOPY, MERGEPAINT.
   - Texto: cada char de la fuente system, en posiciones varias.
   - Clipping: dibujar fuera del DC; no debe romper.
   - Scroll: ScrollDC en las cuatro direcciones.
   Después de cada primitiva, dispara el hook → genera un fb dump etiquetado.
3. **`verify_pixels.run_pixel_diff` integrado.** Ya existe el armazón;
   completar el orchestrator cuando los dos anteriores estén.

## Plan de ataque ordenado

1. KERNEL completo (con símbolos).
2. SYSTEM, KEYBOARD, MOUSE, SOUND, COMM (con símbolos).
3. **Sembrar nombres de DDI en CGA/EGA/Hercules** sin entrar al cuerpo.
4. GDI core (sin símbolos, pero las llamadas a los drivers ya están nombradas).
5. USER core.
6. Hercules driver completo (más simple).
7. CGA driver completo.
8. EGA driver completo.
9. MSDOSD (shell).

Estimación: si KERNEL+core drivers tarda ~6 semanas, GDI+USER ~6 semanas,
los display drivers en torno a ~3-4 semanas cada uno con el harness en su sitio,
pero el segundo y tercero a la mitad gracias al diferencial.
