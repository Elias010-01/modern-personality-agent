"""Pass 1b: descubre funciones en modulos sin PROC/ENDP marcados.

Estrategia:
  - En cada segmento, recolecta todas las etiquetas L_XXXX: definidas.
  - Recolecta todos los destinos de instrucciones `call` (cercanas y far).
  - Una etiqueta es ENTRADA DE FUNCION si:
       a) es destino de algun `call`, O
       b) es la primera etiqueta del segmento (entry point), O
       c) sigue inmediatamente a un `ret/retf/iret/jmp` Y tiene prologo tipico
          (push bp; mov bp,sp  o  inc bp; push bp; mov bp,sp).
  - Particiona el codigo del segmento en funciones por estos puntos de entrada.

Salida:
  state/analyze/pass1b/<MODULE>.json con lista de funciones inferidas.
"""

from __future__ import annotations

import json
import re
import sys
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
from pass1_patterns import analyze_function  # noqa: E402

PASS_NAME = "pass1b_discover"
OUT_DIR = STATE_DIR / "pass1b"
PASS1_DIR = STATE_DIR / "pass1"

RE_LABEL = re.compile(r"^(L_[0-9A-Fa-f]+):\s*$")
RE_INSTR = re.compile(r"^\s+([a-z][a-z0-9]*)\b(.*?)(?:\s+;\s*([0-9A-Fa-f\s]+?)(?:\s*\[FIXUP[^\]]*\])?\s*)?$")
RE_PROC_HEADER = re.compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s+PROC\s+(FAR|NEAR)\b", re.IGNORECASE)
RE_PROC_END = re.compile(r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s+ENDP\b", re.IGNORECASE)
RE_CALL_TARGET = re.compile(r"\bcall\s+(?:far\s+ptr\s+|near\s+ptr\s+|far\s+|near\s+)?(L_[0-9A-Fa-f]+)\b", re.IGNORECASE)
RE_SEG_HEAD = re.compile(r"^([A-Z_][A-Z0-9_]*)_TEXT\s+SEGMENT\b")

RET_MNEMS = {"ret", "retf", "iret"}


def discover_module(module: str) -> dict[str, Any]:
    """Para un modulo dado, descubre funciones en sus seg*.asm."""
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))

    funcs: list[dict[str, Any]] = []
    total_instr = 0
    total_lines = 0

    for sf in seg_files:
        with sf.open("r", encoding="utf-8", errors="replace") as f:
            lines = f.readlines()
        total_lines += len(lines)
        sf_funcs, sf_instr = discover_segment(module, sf.name, lines)
        total_instr += sf_instr
        funcs.extend(sf_funcs)

    return {
        "module": module,
        "num_functions": len(funcs),
        "num_instructions": total_instr,
        "num_lines": total_lines,
        "functions": funcs,
    }


def discover_segment(module: str, seg_filename: str, lines: list[str]) -> tuple[list[dict[str, Any]], int]:
    """Descubre funciones en un segmento.

    Devuelve: (lista de funcs analizadas, total instrucciones del segmento).
    """
    # Paso 1: indexa todas las etiquetas y todas las instrucciones
    items: list[dict[str, Any]] = []  # cada item: {kind: label|instr|proc_open|proc_close, ...}
    code_start_line = None
    for ln_no, raw in enumerate(lines, 1):
        line = raw.rstrip("\n")
        if not line.strip() or line.startswith(";"):
            continue
        m = RE_SEG_HEAD.match(line)
        if m:
            code_start_line = ln_no + 1
            continue
        if "ENDS" in line and "SEGMENT" not in line:
            # fin del segmento
            break
        m = RE_PROC_HEADER.match(line)
        if m:
            items.append({"line_no": ln_no, "kind": "proc_open", "name": m.group(1), "far": m.group(2).upper() == "FAR"})
            continue
        m = RE_PROC_END.match(line)
        if m:
            items.append({"line_no": ln_no, "kind": "proc_close", "name": m.group(1)})
            continue
        m = RE_LABEL.match(line)
        if m:
            items.append({"line_no": ln_no, "kind": "label", "name": m.group(1)})
            continue
        mi = RE_INSTR.match(line)
        if mi:
            mnem = mi.group(1).lower()
            operands = (mi.group(2) or "").strip()
            bytes_hex = (mi.group(3) or "").strip()
            items.append({
                "line_no": ln_no,
                "kind": "instr",
                "mnemonic": mnem,
                "operands": operands,
                "bytes": bytes_hex,
            })

    if not items:
        return [], 0

    # Paso 2: recolecta destinos de call y posiciones de etiquetas
    call_targets: set[str] = set()
    label_positions: dict[str, int] = {}  # label -> indice en items
    for idx, it in enumerate(items):
        if it["kind"] == "label":
            label_positions[it["name"]] = idx
        elif it["kind"] == "instr" and it["mnemonic"] == "call":
            for t in RE_CALL_TARGET.findall("call " + it["operands"]):
                call_targets.add(t)

    # Paso 3: identifica entradas de funcion
    entries: list[int] = []  # indices en items donde empieza una funcion

    # 3a) Si hay PROC/ENDP existentes, los respetamos: empezamos en cada proc_open
    proc_ranges: list[tuple[int, int, str]] = []  # (start_idx, end_idx, name)
    open_idx = None
    open_name = None
    for idx, it in enumerate(items):
        if it["kind"] == "proc_open":
            open_idx = idx
            open_name = it["name"]
        elif it["kind"] == "proc_close" and open_idx is not None:
            proc_ranges.append((open_idx, idx, open_name))
            open_idx = None
            open_name = None

    # 3b) Para zonas SIN PROC/ENDP, identifica entradas por:
    #     - destino de call
    #     - primera etiqueta del segmento si es L_0000
    #     - etiquetas que siguen a ret/retf/iret/jmp y empiezan con prologo
    covered_by_proc = set()
    for s, e, _ in proc_ranges:
        for i in range(s, e + 1):
            covered_by_proc.add(i)

    # Recolecta entradas heuristicas
    heuristic_entries: list[int] = []
    for label_name, idx in label_positions.items():
        if idx in covered_by_proc:
            continue
        is_entry = False
        if label_name in call_targets:
            is_entry = True
        elif label_name.endswith("_0000"):
            is_entry = True
        else:
            # busca instruccion previa significativa
            prev_idx = idx - 1
            while prev_idx >= 0 and items[prev_idx]["kind"] not in {"instr", "proc_close"}:
                prev_idx -= 1
            if prev_idx >= 0:
                prev = items[prev_idx]
                if prev["kind"] == "proc_close":
                    is_entry = True
                elif prev["kind"] == "instr":
                    pm = prev["mnemonic"]
                    if pm in RET_MNEMS or pm == "jmp":
                        # busca prologo en las siguientes 1-3 instrucciones
                        next_instrs = []
                        for j in range(idx + 1, min(idx + 6, len(items))):
                            if items[j]["kind"] == "instr":
                                next_instrs.append(items[j])
                            if len(next_instrs) >= 3:
                                break
                        mn = [i["mnemonic"] for i in next_instrs]
                        if (len(mn) >= 2 and mn[0] == "push" and "bp" in next_instrs[0]["operands"] and mn[1] == "mov") \
                                or (len(mn) >= 3 and mn[0] == "inc" and "bp" in next_instrs[0]["operands"]
                                    and mn[1] == "push" and mn[2] == "mov"):
                            is_entry = True
        if is_entry:
            heuristic_entries.append(idx)

    heuristic_entries.sort()

    # Paso 4: construye lista combinada de funciones
    # Empezamos con las PROC reales, luego añadimos las heuristicas que no estan en zonas cubiertas
    fn_specs: list[dict[str, Any]] = []
    for s, e, name in proc_ranges:
        fn_specs.append({"start_idx": s, "end_idx": e, "name": name, "discovered": False, "kind_far": True})

    # Para heuristicas: necesitamos calcular el end_idx = hasta justo antes de la siguiente entrada
    all_entry_starts = sorted([s for s, _, _ in proc_ranges] + heuristic_entries)
    for h_idx in heuristic_entries:
        # busca proxima entrada despues de h_idx
        next_start = None
        for s in all_entry_starts:
            if s > h_idx:
                next_start = s
                break
        # final = next_start - 1, o ultima instr del segmento
        end_idx = (next_start - 1) if next_start is not None else (len(items) - 1)
        # nombre inferido
        label_name = items[h_idx]["name"] if items[h_idx]["kind"] == "label" else f"sub_{items[h_idx]['line_no']}"
        # offset desde el label name
        m = re.match(r"L_([0-9A-Fa-f]+)", label_name)
        offset = int(m.group(1), 16) if m else None
        fn_specs.append({
            "start_idx": h_idx,
            "end_idx": end_idx,
            "name": f"sub_{label_name[2:]}" if label_name.startswith("L_") else label_name,
            "label_name": label_name,
            "offset": offset,
            "discovered": True,
            "kind_far": False,  # asumimos NEAR por defecto, se puede refinar
        })

    fn_specs.sort(key=lambda x: x["start_idx"])

    # Paso 5: para cada spec, construye el dict tipo "fn" y llama analyze_function
    results: list[dict[str, Any]] = []
    total_instr = 0
    for spec in fn_specs:
        s, e = spec["start_idx"], spec["end_idx"]
        instructions = []
        raw_lines = []
        for k in range(s, e + 1):
            it = items[k]
            if it["kind"] == "instr":
                instructions.append({
                    "mnemonic": it["mnemonic"],
                    "operands": it["operands"],
                    "bytes": it["bytes"],
                })
                raw_lines.append(f"  {it['mnemonic']} {it['operands']}")
        if not instructions:
            continue
        # Determinar epilogue analizando ultima instr
        last_ret_idx = None
        for k in range(e, s - 1, -1):
            it = items[k]
            if it["kind"] == "instr" and it["mnemonic"] in RET_MNEMS:
                last_ret_idx = k
                break
        if last_ret_idx is not None:
            ret_mnem = items[last_ret_idx]["mnemonic"]
            spec["kind_far"] = spec["kind_far"] or ret_mnem == "retf"

        fn_obj = {
            "module": module,
            "segment_file": seg_filename,
            "name": spec["name"],
            "kind": "FAR" if spec.get("kind_far") else "NEAR",
            "offset": spec.get("offset"),
            "size_bytes": None,  # se computa si quieres
            "start_line": items[s]["line_no"],
            "end_line": items[e]["line_no"],
            "instructions": instructions,
            "raw_lines": raw_lines,
            "discovered": spec.get("discovered", False),
        }
        analyzed = analyze_function(fn_obj)
        analyzed["discovered"] = spec.get("discovered", False)
        results.append(analyzed)
        total_instr += analyzed["num_instructions"]

    return results, total_instr


def process_module(module: str, progress: dict[str, Any]) -> dict[str, Any]:
    if is_module_done(progress, PASS_NAME, module):
        log(PASS_NAME, f"SKIP {module}")
        f = OUT_DIR / f"{module}.json"
        if f.exists():
            with f.open("r", encoding="utf-8") as fh:
                return json.load(fh)
        return {"module": module, "num_functions": 0}

    log(PASS_NAME, f"BEGIN {module}")
    result = discover_module(module)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with (OUT_DIR / f"{module}.json").open("w", encoding="utf-8") as f:
        json.dump(result, f, indent=2)
    log(PASS_NAME, f"END   {module}: {result['num_functions']} funcs total")
    mark_module_done(progress, PASS_NAME, module)
    save_progress(progress)
    return result


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"Discovered modules: {len(modules)}")

    stats = {"modules": 0, "functions": 0, "instructions": 0, "discovered": 0}
    for mod in modules:
        try:
            r = process_module(mod, progress)
            stats["modules"] += 1
            stats["functions"] += r.get("num_functions", 0)
            stats["instructions"] += r.get("num_instructions", 0)
            stats["discovered"] += sum(1 for f in r.get("functions", []) if f.get("discovered"))
        except Exception as exc:
            log(PASS_NAME, f"ERROR {mod}: {exc!r}")
            raise

    mark_phase_done(progress, PASS_NAME, stats)
    save_progress(progress)
    log(PASS_NAME, f"DONE. Stats: {stats}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
