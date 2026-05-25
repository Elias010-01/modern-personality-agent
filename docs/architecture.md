# Arquitectura

## Loop principal

```
┌─────────────┐
│ original/   │  binarios Win 1.03 (KERNEL.EXE, GDI.EXE, …)
└──────┬──────┘
       │
       │  mpa index   (parser NE, hashes, exports → DB)
       ▼
┌─────────────┐
│ state/mpa.db│  modules, functions, attempts, types, decisions
└──────┬──────┘
       │
       │  mpa analyze (Ghidra headless, descubre funciones internas,
       │              merge a DB)
       ▼
┌─────────────┐
│ pick_next() │  callgraph_up | small_first | symbols_first | …
└──────┬──────┘
       │
       │  mpa next  → workspaces/<MOD>/<id>__<name>/
       │              ├ disasm.txt    (Ghidra output)
       │              ├ context.md    (callees, types, prev attempts)
       │              ├ prompt.md     (qué pedir al agente)
       │              ├ attempt.c     ← agente escribe
       │              └ attempt.asm   ← agente escribe (si aplica)
       ▼
┌─────────────┐
│ legacy_cc   │  DOSBox-X headless + MSC 4.0 / MASM 4.0
└──────┬──────┘
       │  .OBJ
       ▼
┌─────────────┐
│ verify      │  byte-diff: bytes(original) vs bytes(.OBJ)
└──────┬──────┘
       │
       ├── matched → status = matched, commit
       └── mismatch → status = in_progress (o needs_human si attempts ≥ N)
                      diff guardado en attempts.diff_summary
                      → vuelve al agente con el diff como contexto
```

## Componentes Python (tools/mpa/)

| Módulo            | Responsabilidad                                                        |
|-------------------|------------------------------------------------------------------------|
| `config.py`       | Carga `config/config.toml` y `config/targets.toml`                     |
| `db.py`           | Wrapper SQLite. Schema en `state/schema.sql`                           |
| `errors.py`       | Excepciones tipadas con instrucciones accionables                      |
| `ne.py`           | Parser de New Executable (cabecera, segmentos, exports, names)         |
| `ghidra.py`       | Wrapper de `analyzeHeadless` + scripts Jython                          |
| `legacy_cc.py`    | Wrapper de MSC4/MASM4 dentro de DOSBox-X headless                      |
| `verify.py`       | Diff byte-a-byte determinista                                          |
| `verify_pixels.py`| Diff de framebuffer (display drivers)                                  |
| `kb.py`           | Búsqueda local en KB (ripgrep o tantivy)                               |
| `indexer.py`      | Siembra de la DB desde binarios originales                             |
| `prompts.py`      | Plantillas y construcción de bundles de trabajo                        |
| `runner.py`       | Estado del loop: pick_next, open_work, verify_attempt                  |
| `cli.py`          | Punto de entrada (`mpa` ejecutable)                                    |

## Flujo de datos

1. **Entrada**: binarios Win 1.03 en `original/` (no versionados).
2. **Índice**: `mpa index` parsea NE y guarda `(module, segment, function)` en SQLite.
3. **Análisis**: `mpa analyze` lanza Ghidra; los scripts Jython emiten JSON con
   funciones internas que el indexer mergea.
4. **Trabajo**: `mpa next` elige una función, prepara su workspace en
   `workspaces/<MOD>/<id>__<name>/` y deja un prompt + contexto.
5. **Decompilación**: el agente (sesión Cascade, o un script con API) escribe
   `attempt.c` y/o `attempt.asm` en ese workspace.
6. **Verificación**: `mpa verify <id>` invoca DOSBox-X con MSC4/MASM4, recupera
   el `.OBJ`, parsea OMF para extraer el segmento de código y diffea contra
   los bytes originales.
7. **Estado**: el resultado del diff (matched / mismatch / compile_error) se
   registra en `attempts` y `functions.status`. Si mismatch, el siguiente
   intento del agente recibe el diff como contexto.

## Decisiones clave

- **Determinismo en verificación**: el LLM nunca decide si algo es correcto.
  Sólo `verify.py` (bytes) o `verify_pixels.py` (píxeles) lo deciden.
- **Estado en disco, no en LLM**: el agente lee SQLite + `context.md`. No
  tiene memoria entre invocaciones.
- **Tipos compartidos**: el agente DEBE consultar la tabla `types` antes de
  redefinir un struct localmente. Esto previene incoherencia cross-module.
- **Bottom-up del callgraph**: empezar por hojas sin callees pendientes
  reduce el espacio de tipos a inferir y evita reescritura.
- **Prereqs ausentes = error claro**: nunca silencio, nunca mock implícito.

## Lo que aún no está

- **Aplicación de fixups del NE loader** en el lado original al diffear.
  Para muchas funciones esto no afecta porque los offsets internos de la
  propia función no llevan fixups; los de llamadas a otros segmentos sí.
  Cuando empiece a haber falsos negativos por esto, hay que parsear las
  relocs del segmento y enmascarar esos offsets en `verify.py`
  (parámetro `ignore_offsets` ya está soportado).
- **Hook de framebuffer-dump en DOSBox-X**: pendiente. Sin él, `verify_pixels`
  está stubeado (con error claro).
- **Test reel para drivers gráficos**: pendiente. Ver `display_drivers.md`.
- **Backend `tantivy` de KB**: opcional, no implementado.
