# Onboarding

Guía paso a paso para empezar de cero.

## 1. Pre-requisitos del host

- Windows 10/11 con WSL2 (Ubuntu 22.04+ recomendado).
- ~10 GB libres (Ghidra ~3 GB, DOSBox-X build ~1 GB, vendor repos ~500 MB).
- Conexión a internet para clonar y descargar Ghidra.

## 2. Bootstrap

Desde dentro de WSL, en la raíz del repo:

```bash
bash bootstrap/bootstrap.sh
```

Esto instala apt deps, `uv`, `just`, crea el venv, clona los 3 repos
upstream, descarga Ghidra y compila DOSBox-X. El paso final es la imagen
DOS con MSC4/MASM4, que puede pedirte intervención manual (ver
`bootstrap/install-legacy-toolchain.sh`).

Verifica:

```bash
just doctor
```

Debería marcar verdes Ghidra, DOSBox-X, e imagen toolchain. `original/`
estará vacío.

## 3. Coloca las binarias

Pon tus copias legítimas de Win 1.03 en `original/` (ver `original/README.md`).

```bash
just doctor
```

Ahora `original/` debería tener entradas.

## 4. Inicializa state e indexa

```bash
just db-init
just index
```

`just status` ahora muestra una tabla con cero matched, exports sembrados.

## 5. Análisis Ghidra

Esto es el paso más caro (puede tardar horas la primera vez). Idempotente:

```bash
just analyze KERNEL          # un módulo cada vez
just analyze SYSTEM
# ...
```

O todos:

```bash
just analyze
```

Tras esto, `functions` está pobladísimo y `just status` muestra totales reales.

## 6. Loop de trabajo

```bash
just next
```

Te da algo como:

```
→ función #42 (KERNEL::LocalAlloc)
  workspace: workspaces/KERNEL/000042__LocalAlloc/
  prompt:    workspaces/KERNEL/000042__LocalAlloc/prompt.md
  disasm:    workspaces/KERNEL/000042__LocalAlloc/disasm.txt
  context:   workspaces/KERNEL/000042__LocalAlloc/context.md
```

Un agente (sesión Cascade humana, o automatización) ahora:

1. Lee `prompt.md`, `disasm.txt`, `context.md`.
2. Escribe `attempt.c` (o `attempt.asm`) en ese directorio.
3. Lanza `just verify 42`.

Si match → la siguiente función. Si mismatch → el diff queda en `attempts`,
el agente itera con ese contexto extra, hasta `max_attempts` (default 5).

## 7. Cuándo intervenir manualmente

Cualquier función que llegue a `needs_human` necesita revisión. Reporte:

```bash
sqlite3 state/mpa.db \
  "SELECT id, module_name, name, attempts, last_diff_summary
     FROM functions WHERE status = 'needs_human' ORDER BY module_name, id"
```

Para cada una:
- Mira el último `attempt` en la tabla `attempts`.
- Decide si:
  - El agente está cerca pero le falta un detalle → añade pista en
    `context.md` y vuelve a `pending`.
  - La función requiere ASM puro → marca y deja a un humano.
  - Es código irreductible (auto-modificante, etc.) → `skipped` con nota.

```sql
UPDATE functions SET status = 'pending'  WHERE id = 42;
UPDATE functions SET status = 'skipped'  WHERE id = 42;
```

## 8. Higiene

- **Commit por función matched**: una rama `wip/<MOD>` y commits atómicos.
- **No editar `progress.md` a mano**: regenerarlo desde la DB con
  `mpa status > progress.md`.
- **Revisar `decisions` periódicamente**: si el agente toma una decisión
  arquitectónica importante, anótala vía SQL en `decisions` para que
  futuras sesiones la respeten.

## Troubleshooting

### "PrereqMissingError: DOSBox-X"
→ `bash bootstrap/install-dosbox-x.sh`

### "PrereqMissingError: Imagen DOS con MSC 4.0"
→ Sigue las instrucciones de `bootstrap/install-legacy-toolchain.sh`. Esto
casi seguro requiere conseguir copias de los floppies originales.

### "NEParseError: hash de KERNEL.EXE no coincide"
→ La copia que tienes hoy no es la misma que la que indexaste antes. O
estás trabajando con una build distinta (algunas builds preliminares de
1985 sí cambian). Si es intencional:

```sql
DELETE FROM expected_hashes WHERE binary = 'KERNEL.EXE';
-- y vuelve a `just index`
```

### El loop dice que todo es `needs_human` desde el principio
→ El toolchain legacy no está bien. Ejecuta `just smoke`. Si falla:
revisa que la imagen DOS tenga `CL.EXE` en el `PATH` y que MSC4/MASM4
funcionen interactivamente desde DOSBox-X.

### Ghidra no encuentra los segmentos NE
→ Comprueba la versión de Ghidra (necesitas 11.x). En versiones antiguas el
loader NE estaba menos pulido. Actualiza con `bash bootstrap/install-ghidra.sh`.
