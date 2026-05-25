"""Pass 7: enriquece el call graph con aristas de IMPORTS de los .DEF.

Muchos modulos (drivers de hardware, keyboard layouts) NO hacen `call far`
explicitos a otros modulos pero SI estan relacionados por:
  - LIBRARY name vs filename (ej: ATTKBD.DRV declara LIBRARY KEYBOARD)
  - IMPORTS MODULE.func en .DEF de los modulos que dependen de ellos
  - Aliases del sistema: KEYBOARD, DISPLAY, MOUSE, SOUND, COMM, SYSTEM

Salida:
  state/analyze/pass7/imports_global.json - mapping LIBRARY -> filename + edges import
  Regenera docs/analysis/callgraph.html con aristas enriquecidas
"""

from __future__ import annotations

import json
import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402

OUT_DIR = STATE_DIR / "pass7"

RE_LIBRARY = re.compile(r"^\s*LIBRARY\s+(\S+)", re.IGNORECASE | re.MULTILINE)
RE_IMPORT_LINE = re.compile(r"^\s+([A-Z][A-Z0-9_]*)\.([A-Z0-9_]+)\s*$", re.MULTILINE)


def parse_def(def_path: Path) -> dict:
    """Parsea un .DEF y devuelve {library, imports[(MOD,FUNC)]}"""
    text = def_path.read_text(encoding="utf-8", errors="replace")
    library = None
    m = RE_LIBRARY.search(text)
    if m:
        library = m.group(1).upper()
    imports: list[tuple[str, str]] = []
    # Solo buscar imports despues de 'IMPORTS'
    if "IMPORTS" in text.upper():
        # Tomar la zona desde IMPORTS hasta el siguiente keyword o EOF
        idx = text.upper().find("IMPORTS")
        chunk = text[idx + len("IMPORTS"):]
        # cortar en proxima palabra MAYUSCULAS sola al inicio de linea
        m2 = re.search(r"^[A-Z]+\s*$", chunk, re.MULTILINE)
        if m2:
            chunk = chunk[:m2.start()]
        for ml in RE_IMPORT_LINE.finditer(chunk):
            imports.append((ml.group(1).upper(), ml.group(2).upper()))
    return {"library": library, "imports": imports}


def main() -> int:
    log("pass7_enrich_deps", "BEGIN")
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    modules = list_modules()

    # 1) Construir mapping library_name -> filename
    library_to_module: dict[str, str] = {}  # LIBRARY name -> filename (en mayusculas)
    module_defs: dict[str, dict] = {}
    for mod in modules:
        def_path = REPO / "src" / mod / f"{mod}.def"
        if not def_path.exists():
            # algunos modulos tienen otros nombres
            cands = list((REPO / "src" / mod).glob("*.def"))
            if not cands:
                continue
            def_path = cands[0]
        parsed = parse_def(def_path)
        module_defs[mod] = parsed
        if parsed["library"]:
            library_to_module[parsed["library"]] = mod

    log("pass7_enrich_deps", f"Library mappings: {len(library_to_module)}")
    for lib, mod in sorted(library_to_module.items()):
        if lib != mod:
            log("pass7_enrich_deps", f"  alias: {lib} -> {mod}")

    # 2) Construir aristas import
    import_edges: dict[tuple[str, str], int] = defaultdict(int)
    unresolved: dict[str, int] = defaultdict(int)
    for mod, parsed in module_defs.items():
        for (tgt_lib, _func) in parsed["imports"]:
            # resolver tgt_lib a un modulo del filesystem
            if tgt_lib in [m for m in modules]:
                # match directo por nombre de modulo (filename)
                tgt_mod = tgt_lib
            elif tgt_lib in library_to_module:
                tgt_mod = library_to_module[tgt_lib]
            else:
                unresolved[tgt_lib] += 1
                continue
            if tgt_mod == mod:
                continue
            import_edges[(mod, tgt_mod)] += 1

    log("pass7_enrich_deps", f"Import edges: {len(import_edges)}")
    log("pass7_enrich_deps", f"Unresolved library refs: {dict(unresolved)}")

    # Guardar JSON
    result = {
        "library_to_module": library_to_module,
        "import_edges": [
            {"from": s, "to": d, "count": c}
            for (s, d), c in sorted(import_edges.items())
        ],
        "unresolved": dict(unresolved),
    }
    (OUT_DIR / "imports_global.json").write_text(
        json.dumps(result, indent=2, ensure_ascii=False),
        encoding="utf-8"
    )

    # 3) Regenerar callgraph.html con aristas enriquecidas
    regenerate_html(import_edges, library_to_module)

    log("pass7_enrich_deps", "DONE")
    return 0


def regenerate_html(import_edges: dict, library_to_module: dict) -> None:
    """Regenera callgraph.html combinando call edges (Pass 6) + import edges (Pass 7)."""
    log("pass7_enrich_deps", "Regenerating callgraph.html with import edges")
    # Para no duplicar codigo, llamamos a pass6 con el extra
    from pass6_visualize import KIND_COLOR, MODULE_KIND, HTML_TEMPLATE
    from state import list_modules

    modules = list_modules()
    pass3_dir = STATE_DIR / "pass3"

    nodes: list[dict] = []
    call_edges_counter: dict[tuple[str, str], int] = defaultdict(int)
    funcs_by_module: dict[str, list[dict]] = {}

    for mod in modules:
        f = pass3_dir / f"{mod}.json"
        if not f.exists():
            funcs_by_module[mod] = []
            continue
        data = json.loads(f.read_text(encoding="utf-8"))
        funcs = data.get("functions", [])
        funcs_by_module[mod] = [
            {
                "name": fn.get("name"), "offset": fn.get("offset"),
                "kind": fn.get("kind"), "n_instr": fn.get("num_instructions"),
                "desc": fn.get("description"), "tags": fn.get("semantic_tags", []),
                "confidence": fn.get("confidence"),
                "callers": fn.get("callers", []),
                "callees_intra": fn.get("callees_intra", []),
                "callees_inter": fn.get("callees_inter", []),
            }
            for fn in funcs
        ]
        for fn in funcs:
            for c in fn.get("callees_inter", []) or []:
                tgt = c.get("module")
                if tgt and tgt != mod:
                    # resolver alias si aplica
                    if tgt in library_to_module:
                        tgt = library_to_module[tgt]
                    call_edges_counter[(mod, tgt)] += 1

    for mod in modules:
        kind = MODULE_KIND.get(mod, "unknown")
        nfuncs = len(funcs_by_module.get(mod, []))
        nodes.append({
            "id": mod, "label": mod,
            "title": f"{mod}\n{kind}\n{nfuncs} funcs",
            "color": KIND_COLOR[kind], "kind": kind,
            "value": max(nfuncs, 1), "nfuncs": nfuncs,
        })

    # Construir aristas combinadas: call (solidas) + import (punteadas)
    edges: list[dict] = []
    all_pairs = set(call_edges_counter.keys()) | set(import_edges.keys())
    max_call = max(call_edges_counter.values()) if call_edges_counter else 1
    max_imp = max(import_edges.values()) if import_edges else 1
    for (src, dst) in all_pairs:
        n_call = call_edges_counter.get((src, dst), 0)
        n_imp = import_edges.get((src, dst), 0)
        if n_call > 0 and n_imp > 0:
            # combinado: arista solida con tooltip que muestra ambos
            edges.append({
                "from": src, "to": dst,
                "value": n_call + n_imp,
                "title": f"{src} -> {dst}\n  calls directos: {n_call}\n  imports: {n_imp}",
                "width": 1 + 4 * (n_call / max_call),
                "edge_kind": "both",
            })
        elif n_call > 0:
            edges.append({
                "from": src, "to": dst,
                "value": n_call,
                "title": f"{src} -> {dst}: {n_call} llamadas directas",
                "width": 1 + 4 * (n_call / max_call),
                "edge_kind": "call",
            })
        else:
            edges.append({
                "from": src, "to": dst,
                "value": n_imp,
                "title": f"{src} -> {dst}: solo IMPORT ({n_imp} funcs importadas, sin call directo)",
                "width": 1 + 2 * (n_imp / max_imp),
                "edge_kind": "import",
                "dashes": True,
            })

    payload = {
        "nodes": nodes,
        "edges": edges,
        "funcs_by_module": funcs_by_module,
        "kind_colors": KIND_COLOR,
        "library_to_module": library_to_module,
        "stats": {
            "total_modules": len(nodes),
            "total_edges": len(edges),
            "total_functions": sum(n["nfuncs"] for n in nodes),
            "call_edges": sum(1 for e in edges if e.get("edge_kind") in ("call", "both")),
            "import_edges": sum(1 for e in edges if e.get("edge_kind") in ("import", "both")),
        },
    }

    # Modificamos el template del Pass 6 para soportar import edges con dashes y leyenda
    html = HTML_TEMPLATE.replace("__PAYLOAD__", json.dumps(payload, ensure_ascii=False))
    # Insertar leyenda de tipos de arista
    legend_html = (
        '<div style="margin-top:8px; font-size:11px; opacity:0.8;">'
        '<b>Aristas:</b><br>'
        '<span style="border-bottom:2px solid #fff8;">━━━</span> call directo<br>'
        '<span style="border-bottom:2px dashed #fff8;">╌╌╌</span> IMPORT (carga/ordinal)<br>'
        '</div>'
    )
    html = html.replace(
        'placeholder="Buscar modulo... (ej: USER)">',
        'placeholder="Buscar modulo... (ej: USER)">' + legend_html
    )
    # Hacer que el edge respete `dashes` (vis-network ya lo soporta nativamente)
    out = REPO / "docs" / "analysis" / "callgraph.html"
    out.write_text(html, encoding="utf-8")
    log("pass7_enrich_deps", f"Regenerated {out}  ({payload['stats']})")


if __name__ == "__main__":
    sys.exit(main())
