"""Pass 2: construye el call graph completo de Windows 1.03.

Para cada funcion descubierta en Pass 1b, calcula:
  - callees_intra: funciones del MISMO modulo a las que llama (resueltas por offset)
  - callees_inter: llamadas a otros modulos (USER.MOVEWINDOW, GDI.RECTANGLE, etc.)
  - callers: quien la llama (computed by reversing the edges)

Salida:
  state/analyze/pass2/<MODULE>.json - call graph local
  state/analyze/pass2_global.json   - resumen global
  docs/analysis/callgraph.md        - vista navegable Markdown
"""

from __future__ import annotations

import json
import re
import sys
from collections import defaultdict
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

PASS_NAME = "pass2_callgraph"
OUT_DIR = STATE_DIR / "pass2"
PASS1B_DIR = STATE_DIR / "pass1b"
DOCS_DIR = REPO / "docs" / "analysis"

RE_CALL_INTRA = re.compile(r"\bL_([0-9A-Fa-f]+)\b")
RE_CALL_FAR_MODNAME = re.compile(r"\bcall\s+(?:far\s+)?([A-Z][A-Z0-9_]*)\.([A-Z][A-Z0-9_]*)\b")
# Tambien capturamos en operandos: USER.MOVEWINDOW etc.
RE_MODFUNC = re.compile(r"\b([A-Z][A-Z0-9_]*)\.([A-Z][A-Z0-9_]*)\b")


def build_module_graph(module: str) -> dict[str, Any]:
    """Lee el JSON pass1b del modulo y construye el grafo local."""
    f = PASS1B_DIR / f"{module}.json"
    if not f.exists():
        return {"module": module, "functions": [], "intra_edges": [], "inter_edges": [], "external_modules": []}
    data = json.loads(f.read_text(encoding="utf-8"))
    funcs = data["functions"]

    # Mapeo: offset (hex) -> nombre de funcion para resolver calls intra
    offset_to_name: dict[int, str] = {}
    for fn in funcs:
        off = fn.get("offset")
        if off is not None:
            offset_to_name[off] = fn["name"]

    # Reverse: para cada fn, encuentra callees
    # calls_near son del tipo "L_XXXX" — resolvemos a nombre si existe
    intra_edges: list[tuple[str, str]] = []   # (caller_name, callee_name)
    inter_edges: list[tuple[str, str, str]] = []  # (caller_name, target_module, target_func)
    external_modules: set[str] = set()
    unresolved_intra: list[tuple[str, str]] = []

    callees_by_fn: dict[str, dict[str, list]] = {}

    for fn in funcs:
        name = fn["name"]
        local_intra: list[str] = []
        local_inter: list[tuple[str, str]] = []
        local_unresolved: list[str] = []

        # Resolver calls_near (L_XXXX) a nombres
        for label in fn.get("calls_near", []):
            m = RE_CALL_INTRA.search(label)
            if not m:
                continue
            target_off = int(m.group(1), 16)
            target_name = offset_to_name.get(target_off)
            if target_name and target_name != name:
                intra_edges.append((name, target_name))
                local_intra.append(target_name)
            else:
                local_unresolved.append(label)
                unresolved_intra.append((name, label))

        # Resolver calls_far: pueden venir como "MODULE.FUNCNAME" o como labels desconocidos
        for far_call in fn.get("calls_far", []):
            mm = RE_MODFUNC.search(far_call)
            if mm:
                tgt_mod, tgt_fn = mm.group(1), mm.group(2)
                if tgt_mod != module:
                    inter_edges.append((name, tgt_mod, tgt_fn))
                    external_modules.add(tgt_mod)
                    local_inter.append((tgt_mod, tgt_fn))
                else:
                    intra_edges.append((name, tgt_fn))
                    local_intra.append(tgt_fn)

        callees_by_fn[name] = {
            "intra": sorted(set(local_intra)),
            "inter": [{"module": m, "func": f} for (m, f) in sorted(set(local_inter))],
            "unresolved": sorted(set(local_unresolved)),
        }

    # Computar callers (reverse edges)
    callers_intra: dict[str, set[str]] = defaultdict(set)
    for caller, callee in intra_edges:
        callers_intra[callee].add(caller)

    # Anotar cada funcion
    for fn in funcs:
        n = fn["name"]
        fn["callees_intra"] = callees_by_fn.get(n, {}).get("intra", [])
        fn["callees_inter"] = callees_by_fn.get(n, {}).get("inter", [])
        fn["callees_unresolved"] = callees_by_fn.get(n, {}).get("unresolved", [])
        fn["callers"] = sorted(callers_intra.get(n, set()))
        fn["fanout"] = len(fn["callees_intra"]) + len(fn["callees_inter"])
        fn["fanin"] = len(fn["callers"])

    return {
        "module": module,
        "num_functions": len(funcs),
        "intra_edges": sorted(set((c, e) for c, e in intra_edges)),
        "inter_edges": sorted(set(inter_edges)),
        "external_modules": sorted(external_modules),
        "functions": funcs,
    }


def process_module(module: str, progress: dict[str, Any]) -> dict[str, Any]:
    if is_module_done(progress, PASS_NAME, module):
        log(PASS_NAME, f"SKIP {module}")
        f = OUT_DIR / f"{module}.json"
        if f.exists():
            return json.loads(f.read_text(encoding="utf-8"))
        return {"module": module, "num_functions": 0}

    log(PASS_NAME, f"BEGIN {module}")
    r = build_module_graph(module)
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with (OUT_DIR / f"{module}.json").open("w", encoding="utf-8") as f:
        json.dump(r, f, indent=2)
    log(PASS_NAME, f"END   {module}: intra={len(r['intra_edges'])}, inter={len(r['inter_edges'])}, ext_mods={len(r['external_modules'])}")
    mark_module_done(progress, PASS_NAME, module)
    save_progress(progress)
    return r


def build_global_graph(modules: list[str]) -> dict[str, Any]:
    """Combina todos los grafos modulares en uno global."""
    all_inter: list[dict] = []
    module_depgraph: dict[str, set] = defaultdict(set)  # module -> {modules depende de}
    total_intra = 0
    total_inter = 0
    total_funcs = 0

    for mod in modules:
        f = OUT_DIR / f"{mod}.json"
        if not f.exists():
            continue
        data = json.loads(f.read_text(encoding="utf-8"))
        total_funcs += data.get("num_functions", 0)
        total_intra += len(data.get("intra_edges", []))
        total_inter += len(data.get("inter_edges", []))
        for ext_mod in data.get("external_modules", []):
            module_depgraph[mod].add(ext_mod)
        for caller, tgt_mod, tgt_fn in data.get("inter_edges", []):
            all_inter.append({"from_module": mod, "from_func": caller, "to_module": tgt_mod, "to_func": tgt_fn})

    return {
        "total_functions": total_funcs,
        "total_intra_edges": total_intra,
        "total_inter_edges": total_inter,
        "module_depgraph": {k: sorted(v) for k, v in module_depgraph.items()},
        "inter_edges": all_inter,
    }


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"Modules: {len(modules)}")

    for mod in modules:
        process_module(mod, progress)

    global_graph = build_global_graph(modules)
    with (STATE_DIR / "pass2_global.json").open("w", encoding="utf-8") as f:
        json.dump(global_graph, f, indent=2)
    log(PASS_NAME, f"Global: {global_graph['total_functions']} funcs, {global_graph['total_intra_edges']} intra, {global_graph['total_inter_edges']} inter")

    # Render dependency graph como Markdown
    DOCS_DIR.mkdir(parents=True, exist_ok=True)
    md = ["# Windows 1.03 - Module dependency graph\n"]
    md.append("Generado automaticamente por pass2_callgraph.\n")
    md.append(f"- Total functions: **{global_graph['total_functions']}**")
    md.append(f"- Intra-module call edges: **{global_graph['total_intra_edges']}**")
    md.append(f"- Inter-module call edges: **{global_graph['total_inter_edges']}**\n")
    md.append("## Module dependencies\n")
    depgraph = global_graph["module_depgraph"]
    for mod in sorted(depgraph.keys()):
        deps = depgraph[mod]
        if deps:
            md.append(f"- **{mod}** -> {', '.join(deps)}")
    md.append("\n## Most-called external functions\n")
    counter: dict[tuple[str, str], int] = defaultdict(int)
    for edge in global_graph["inter_edges"]:
        counter[(edge["to_module"], edge["to_func"])] += 1
    top = sorted(counter.items(), key=lambda x: -x[1])[:50]
    md.append("| Target | Calls |")
    md.append("|--------|-------|")
    for (m, f), c in top:
        md.append(f"| `{m}.{f}` | {c} |")
    (DOCS_DIR / "callgraph.md").write_text("\n".join(md) + "\n", encoding="utf-8")

    mark_phase_done(progress, PASS_NAME, {
        "total_functions": global_graph["total_functions"],
        "total_intra_edges": global_graph["total_intra_edges"],
        "total_inter_edges": global_graph["total_inter_edges"],
    })
    save_progress(progress)
    log(PASS_NAME, "DONE")
    return 0


if __name__ == "__main__":
    sys.exit(main())
