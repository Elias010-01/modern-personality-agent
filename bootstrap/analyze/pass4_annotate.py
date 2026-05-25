"""Pass 4: inyecta los comment_block de Pass 3 en los .asm.

Estrategia segura:
  - Solo agregamos lineas que empiezan con ';' (comentarios MASM).
  - El builder (`build_from_source.py`) ignora completamente las lineas que no
    matchean su regex de instruccion con bytes. Por tanto, agregar comentarios
    no rompe byte-exact.
  - Insertamos el comment_block JUSTO ANTES de:
       a) la cabecera PROC FAR/NEAR (si la funcion tiene PROC marcado), o
       b) la etiqueta L_XXXX: de la primera instruccion (si fue descubierta).
  - Si ya existe un banner ';------- ; NAME (offset...) ;-------' previo, lo reemplazamos
    por el nuevo bloque (que es un superset).
  - Marca cada bloque con un sentinel `; @ANALYSIS_v1` para poder revertir/refrescar.

Pre-condicion:
  - Los .asm en src/ no han sido editados manualmente despues de Pass 1b.
  - Si fueron editados: Pass 4 sigue funcionando pero puede generar duplicados.

Salida:
  - Sobrescribe src/<MODULE>/seg*.asm
  - Hace backup automatico a src.pre-annotate.<STAMP> antes
  - Reporte en state/analyze/pass4/<MODULE>.json
"""

from __future__ import annotations

import json
import os
import re
import shutil
import sys
import time
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import (  # noqa: E402
    REPO,
    STATE_DIR,
    is_module_done,
    list_modules,
    load_progress,
    log,
    mark_module_done,
    mark_phase_done,
    phase,
    save_progress,
)

PASS_NAME = "pass4_annotate"
OUT_DIR = STATE_DIR / "pass4"
PASS3_DIR = STATE_DIR / "pass3"

SENTINEL = "; @ANALYSIS_v1"
BANNER_RE = re.compile(r"^;-{5,}$")
OLD_BANNER_HEADER_RE = re.compile(r"^;\s*[A-Za-z_][A-Za-z0-9_]*\s+\(offset\s+0x[0-9A-Fa-f]+,\s*size\s+\d+\s+bytes\)\s*$")

RE_PROC_HEADER = re.compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s+PROC\s+(FAR|NEAR)\b", re.IGNORECASE)
RE_LABEL = re.compile(r"^(L_[0-9A-Fa-f]+):\s*$")


def make_backup() -> Path:
    """Hace una copia de src/ a backups/src-pre-annotate-<STAMP>."""
    stamp = time.strftime("%Y%m%d-%H%M", time.gmtime())
    bk = REPO / "backups" / f"src-pre-annotate-{stamp}"
    if not bk.exists():
        bk.mkdir(parents=True, exist_ok=True)
        log(PASS_NAME, f"Backing up src/ to {bk}")
        shutil.copytree(REPO / "src", bk / "src")
    return bk


def find_insertion_point(lines: list[str], fn: dict[str, Any]) -> int | None:
    """Encuentra la linea (1-indexed) donde insertar el comment_block para esta funcion.

    Estrategia:
      - Si la funcion tiene start_line en el JSON, usamos esa linea como ancla.
        Subimos hacia arriba mientras encontremos:
          * banner ;-----
          * banner ;  NAME (offset ... size ...)
          * lineas en blanco
          * SENTINEL de version previa
        Para encontrar la posicion natural antes del bloque anterior (o antes
        del PROC/etiqueta).
    """
    start_line = fn.get("start_line")
    if not start_line or start_line < 1 or start_line > len(lines):
        return None
    # 1-indexed -> 0-indexed
    idx = start_line - 1
    # Subir mientras sean comentarios banner o blanks
    while idx > 0:
        prev = lines[idx - 1].rstrip("\n")
        if not prev.strip():
            idx -= 1
            continue
        if BANNER_RE.match(prev) or OLD_BANNER_HEADER_RE.match(prev):
            idx -= 1
            continue
        if prev.startswith(";") and (SENTINEL in prev or "callers:" in prev or "calls (" in prev or "tags:" in prev):
            idx -= 1
            continue
        # Linea que empieza con ; pero no parece banner viejo: paramos antes (para no destruir comentarios humanos)
        break
    return idx + 1  # 1-indexed insertion point


def annotate_module(module: str) -> dict[str, Any]:
    """Inyecta comentarios en los .asm de un modulo. Devuelve stats."""
    f = PASS3_DIR / f"{module}.json"
    if not f.exists():
        return {"module": module, "annotated": 0, "files": 0}

    data = json.loads(f.read_text(encoding="utf-8"))
    funcs = data.get("functions", [])

    # Agrupa por segment_file
    by_file: dict[str, list[dict[str, Any]]] = {}
    for fn in funcs:
        sf = fn.get("segment_file")
        if not sf:
            continue
        by_file.setdefault(sf, []).append(fn)

    stats = {"annotated": 0, "files": 0}
    mod_dir = REPO / "src" / module

    for sf, fns in by_file.items():
        asm_path = mod_dir / sf
        if not asm_path.exists():
            continue
        with asm_path.open("r", encoding="utf-8", errors="replace") as fh:
            lines = fh.readlines()

        # Procesamos en ORDEN DESCENDENTE de start_line para que las inserciones
        # no invaliden las lineas posteriores.
        fns_sorted = sorted(fns, key=lambda x: x.get("start_line") or 0, reverse=True)

        for fn in fns_sorted:
            block = fn.get("comment_block")
            if not block:
                continue
            ins_line = find_insertion_point(lines, fn)
            if ins_line is None:
                continue
            # Borrar el banner viejo si existe justo encima
            new_block = SENTINEL + "\n" + block + "\n"
            # Detectar y eliminar SENTINEL/banner anterior ya inyectado por una corrida previa
            # Vamos a buscar bloque tipo:
            #   ; @ANALYSIS_v1
            #   ;-------
            #   ; ...
            #   ;-------
            # justo antes del ins_line.
            i = ins_line - 1
            del_from = ins_line - 1
            while i > 0:
                prev = lines[i - 1].rstrip("\n")
                if prev.strip() == SENTINEL:
                    del_from = i - 1
                    break
                if not prev.startswith(";") and prev.strip():
                    break
                i -= 1
            # Eliminar bloque viejo y reemplazar
            if del_from < ins_line - 1:
                # hay bloque sentinel previo
                del lines[del_from:ins_line - 1]
                ins_line = del_from + 1
            # Insertar (linea 1-indexed -> indice 0)
            lines.insert(ins_line - 1, new_block)
            stats["annotated"] += 1

        with asm_path.open("w", encoding="utf-8", newline="\n") as fh:
            fh.writelines(lines)
        stats["files"] += 1

    return {"module": module, **stats}


def process_module(module: str, progress: dict[str, Any]) -> dict[str, Any]:
    if is_module_done(progress, PASS_NAME, module):
        log(PASS_NAME, f"SKIP {module}")
        f = OUT_DIR / f"{module}.json"
        if f.exists():
            return json.loads(f.read_text(encoding="utf-8"))
        return {"module": module, "annotated": 0}

    log(PASS_NAME, f"BEGIN {module}")
    r = annotate_module(module)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with (OUT_DIR / f"{module}.json").open("w", encoding="utf-8") as fo:
        json.dump(r, fo, indent=2)
    log(PASS_NAME, f"END   {module}: annotated={r.get('annotated',0)} in {r.get('files',0)} files")
    mark_module_done(progress, PASS_NAME, module)
    save_progress(progress)
    return r


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    # Backup primero
    make_backup()

    modules = list_modules()
    log(PASS_NAME, f"Modules: {len(modules)}")

    total = {"modules": 0, "annotated": 0, "files": 0}
    for mod in modules:
        r = process_module(mod, progress)
        total["modules"] += 1
        total["annotated"] += r.get("annotated", 0)
        total["files"] += r.get("files", 0)

    mark_phase_done(progress, PASS_NAME, total)
    save_progress(progress)
    log(PASS_NAME, f"DONE. {total}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
