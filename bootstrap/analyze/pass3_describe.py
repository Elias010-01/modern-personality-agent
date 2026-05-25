"""Pass 3: descripcion semantica automatica de cada funcion.

Para cada funcion del Pass 2, genera:
  - description    : una linea explicando que hace (heuristica)
  - tags           : lista de etiquetas semanticas (memory, ui, io, string, dispatch, etc.)
  - confidence     : 'high' | 'medium' | 'low' | 'unknown'
  - comment_block  : texto multi-linea listo para inyectar como cabecera en el .asm

Fuentes de descripcion:
  1) Windows API KB (windows_api_kb.py) - exact match sobre nombre exportado
  2) Convencion de naming (GET*, SET*, CREATE*, DESTROY*, IS*, ...)
  3) Patron de comportamiento:
       - llama a UN solo procedimiento -> wrapper de ese procedimiento
       - termina en iret -> Interrupt Service Routine
       - usa INT 21h -> DOS service call
       - usa INT 10h/13h/16h/1Ah -> BIOS service call
       - has_string_op + has_loop -> string/memory routine
       - dispatcher (multiple cmp+jcc) -> message/command dispatcher
       - leaf (no calls, small) -> helper aritmetico/conversion
  4) Si no hay nada: descripcion generica con datos numericos.

Salida:
  state/analyze/pass3/<MODULE>.json
  docs/analysis/<MODULE>.md - documento human readable
"""

from __future__ import annotations

import json
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
from windows_api_kb import lookup_api, describe_by_convention  # noqa: E402

PASS_NAME = "pass3_describe"
OUT_DIR = STATE_DIR / "pass3"
PASS2_DIR = STATE_DIR / "pass2"
DOCS_DIR = REPO / "docs" / "analysis"


def tags_for_function(fn: dict[str, Any]) -> list[str]:
    """Genera etiquetas semanticas a partir de los datos extraidos."""
    tags: list[str] = []
    cls = fn.get("classification", "")
    if cls:
        tags.append(cls)
    if fn.get("has_string_op"):
        tags.append("string_op")
    if fn.get("has_loop"):
        tags.append("loop")
    if fn.get("ints"):
        for i in fn["ints"]:
            ihex = i.lower().replace("0x", "").rstrip("h ")
            tags.append(f"int_{ihex}")
    if fn.get("epilogue") == "iret":
        tags.append("isr")
    if fn.get("kind") == "FAR":
        tags.append("far")
    callees_inter = fn.get("callees_inter") or []
    inter_mods = {c["module"] for c in callees_inter}
    for m in inter_mods:
        tags.append(f"calls_{m.lower()}")
    return sorted(set(tags))


def describe_function(fn: dict[str, Any]) -> tuple[str, str]:
    """Devuelve (description, confidence). Description = 1 linea."""
    name = fn.get("name", "")

    # 1) KB exact match
    if name and not name.startswith("sub_"):
        api = lookup_api(name)
        if api:
            return api, "high"
        conv = describe_by_convention(name)
        if conv:
            return conv, "medium"

    # 2) Patron de comportamiento
    cls = fn.get("classification", "")
    callees_intra = fn.get("callees_intra") or []
    callees_inter = fn.get("callees_inter") or []
    ints = fn.get("ints", [])
    n_instr = fn.get("num_instructions", 0)

    if fn.get("epilogue") == "iret":
        return f"Interrupt service routine ({n_instr} instructions, likely INT handler).", "medium"

    if any(i in {"0x21", "21h", "33"} for i in ints):
        return f"Calls DOS services via INT 21h ({n_instr} instr).", "medium"

    if any(i in {"0x10", "10h", "16"} for i in ints):
        return f"Calls BIOS services via INT 10h (video, {n_instr} instr).", "medium"

    if cls == "trivial_stub":
        return f"Trivial stub ({n_instr} instructions, no significant logic).", "low"

    if cls == "wrapper" and len(callees_intra) + len(callees_inter) == 1:
        if callees_inter:
            target = callees_inter[0]
            return f"Wrapper delegating to {target['module']}.{target['func']}.", "medium"
        elif callees_intra:
            return f"Wrapper delegating to {callees_intra[0]}.", "medium"

    if cls == "leaf":
        return f"Leaf function (no callees, {n_instr} instr): likely arithmetic/conversion helper.", "low"

    if cls == "dispatcher":
        return f"Dispatcher: cmp+jcc decision table ({n_instr} instr).", "medium"

    if cls in ("iterator", "complex_iterator"):
        if fn.get("has_string_op"):
            return f"Iterator with string ops (movsb/scasb/...) ({n_instr} instr).", "medium"
        return f"Iterator with loop ({n_instr} instr).", "medium"

    if cls == "complex":
        n_calls = len(callees_intra) + len(callees_inter)
        return f"Complex function: {n_instr} instructions, {n_calls} calls, {fn.get('num_jumps_cond', 0)} branches.", "low"

    if cls == "medium":
        return f"Mid-size function ({n_instr} instr, {len(callees_intra)+len(callees_inter)} calls).", "low"

    return f"Unclassified function ({n_instr} instr).", "unknown"


def build_comment_block(fn: dict[str, Any], description: str, tags: list[str]) -> str:
    """Genera bloque de comentario multi-linea listo para inyectar en el .asm."""
    lines = []
    lines.append(";" + "-" * 70)
    name = fn.get("name", "?")
    off = fn.get("offset")
    sz = fn.get("size_bytes")
    parts = [f"; {name}"]
    if off is not None:
        parts.append(f"offset 0x{off:04X}")
    if sz is not None:
        parts.append(f"size {sz} bytes")
    parts.append(f"{fn.get('num_instructions',0)} instr")
    lines.append(" -- ".join(parts))
    lines.append(f"; {description}")
    if tags:
        lines.append(f"; tags: {', '.join(tags)}")
    callers = fn.get("callers", [])
    callees_intra = fn.get("callees_intra", [])
    callees_inter = fn.get("callees_inter", [])
    if callers:
        showers = callers[:6]
        more = f" (+{len(callers)-6} more)" if len(callers) > 6 else ""
        lines.append(f"; callers: {', '.join(showers)}{more}")
    if callees_intra:
        showers = callees_intra[:6]
        more = f" (+{len(callees_intra)-6} more)" if len(callees_intra) > 6 else ""
        lines.append(f"; calls (intra): {', '.join(showers)}{more}")
    if callees_inter:
        ext = [f"{c['module']}.{c['func']}" for c in callees_inter[:6]]
        more = f" (+{len(callees_inter)-6} more)" if len(callees_inter) > 6 else ""
        lines.append(f"; calls (inter): {', '.join(ext)}{more}")
    lines.append(";" + "-" * 70)
    return "\n".join(lines)


def process_module(module: str, progress: dict[str, Any]) -> dict[str, Any]:
    if is_module_done(progress, PASS_NAME, module):
        log(PASS_NAME, f"SKIP {module}")
        f = OUT_DIR / f"{module}.json"
        if f.exists():
            return json.loads(f.read_text(encoding="utf-8"))
        return {"module": module, "num_functions": 0}

    log(PASS_NAME, f"BEGIN {module}")
    f = PASS2_DIR / f"{module}.json"
    if not f.exists():
        log(PASS_NAME, f"  no pass2 data for {module}, skip")
        mark_module_done(progress, PASS_NAME, module)
        save_progress(progress)
        return {"module": module, "num_functions": 0}

    data = json.loads(f.read_text(encoding="utf-8"))
    funcs = data.get("functions", [])

    described: list[dict[str, Any]] = []
    confidence_count = {"high": 0, "medium": 0, "low": 0, "unknown": 0}
    for fn in funcs:
        desc, conf = describe_function(fn)
        tags = tags_for_function(fn)
        block = build_comment_block(fn, desc, tags)
        fn["description"] = desc
        fn["confidence"] = conf
        fn["semantic_tags"] = tags
        fn["comment_block"] = block
        confidence_count[conf] = confidence_count.get(conf, 0) + 1
        described.append(fn)

    result = {
        "module": module,
        "num_functions": len(described),
        "confidence_count": confidence_count,
        "functions": described,
    }
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with (OUT_DIR / f"{module}.json").open("w", encoding="utf-8") as fo:
        json.dump(result, fo, indent=2)

    log(PASS_NAME, f"END   {module}: {len(described)} funcs, conf={confidence_count}")
    mark_module_done(progress, PASS_NAME, module)
    save_progress(progress)
    return result


def render_module_md(module: str) -> None:
    """Renderiza un .md por modulo con todas sus funciones descritas."""
    f = OUT_DIR / f"{module}.json"
    if not f.exists():
        return
    data = json.loads(f.read_text(encoding="utf-8"))
    funcs = data.get("functions", [])
    funcs_sorted = sorted(funcs, key=lambda x: (x.get("offset") if x.get("offset") is not None else 0, x.get("name", "")))

    DOCS_DIR.mkdir(parents=True, exist_ok=True)
    lines = []
    lines.append(f"# Module `{module}`")
    lines.append("")
    lines.append(f"- Functions: **{data.get('num_functions', 0)}**")
    conf = data.get("confidence_count", {})
    lines.append(f"- Confidence: high={conf.get('high',0)}, medium={conf.get('medium',0)}, low={conf.get('low',0)}, unknown={conf.get('unknown',0)}")
    lines.append("")
    lines.append("## Functions")
    lines.append("")
    lines.append("| Offset | Name | Kind | Instr | Description | Conf |")
    lines.append("|--------|------|------|-------|-------------|------|")
    for fn in funcs_sorted:
        off = fn.get("offset")
        off_s = f"0x{off:04X}" if off is not None else "-"
        name = fn.get("name", "?")
        kind = fn.get("kind", "?")
        n_instr = fn.get("num_instructions", 0)
        desc = (fn.get("description", "") or "").replace("|", "\\|")[:120]
        c = fn.get("confidence", "")
        lines.append(f"| `{off_s}` | `{name}` | {kind} | {n_instr} | {desc} | {c} |")
    (DOCS_DIR / f"{module}.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"Modules: {len(modules)}")

    total = {"modules": 0, "functions": 0, "high": 0, "medium": 0, "low": 0, "unknown": 0}
    for mod in modules:
        r = process_module(mod, progress)
        total["modules"] += 1
        total["functions"] += r.get("num_functions", 0)
        cc = r.get("confidence_count", {})
        for k in ("high", "medium", "low", "unknown"):
            total[k] += cc.get(k, 0)
        render_module_md(mod)

    mark_phase_done(progress, PASS_NAME, total)
    save_progress(progress)
    log(PASS_NAME, f"DONE. Stats: {total}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
