"""Pass 5: indice maestro navegable de Windows 1.03 documentado.

Genera:
  docs/analysis/INDEX.md             - portada con stats globales
  docs/analysis/by-module.md         - tabla por modulo (funcs, confidence)
  docs/analysis/by-classification.md - tabla por clasificacion semantica
  docs/analysis/top-apis.md          - top APIs invocadas
  docs/analysis/api-by-name.md       - lista alfabetica de TODAS las funciones con descripcion

Cada modulo ya tiene su <MODULE>.md (generado en Pass 3).
"""

from __future__ import annotations

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import (  # noqa: E402
    REPO,
    STATE_DIR,
    list_modules,
    load_progress,
    log,
    mark_phase_done,
    phase,
    save_progress,
)

PASS_NAME = "pass5_index"
PASS3_DIR = STATE_DIR / "pass3"
DOCS_DIR = REPO / "docs" / "analysis"


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()

    # Recolecta todas las funciones de todos los modulos
    all_funcs: list[dict] = []
    per_module_stats: list[dict] = []
    for mod in modules:
        f = PASS3_DIR / f"{mod}.json"
        if not f.exists():
            continue
        data = json.loads(f.read_text(encoding="utf-8"))
        funcs = data.get("functions", [])
        all_funcs.extend(funcs)
        cc = data.get("confidence_count", {})
        per_module_stats.append({
            "module": mod,
            "num_functions": len(funcs),
            "high": cc.get("high", 0),
            "medium": cc.get("medium", 0),
            "low": cc.get("low", 0),
            "unknown": cc.get("unknown", 0),
        })

    log(PASS_NAME, f"Total funcs: {len(all_funcs)} in {len(per_module_stats)} modules")

    # Stats globales
    total_high = sum(s["high"] for s in per_module_stats)
    total_medium = sum(s["medium"] for s in per_module_stats)
    total_low = sum(s["low"] for s in per_module_stats)
    total_unknown = sum(s["unknown"] for s in per_module_stats)

    DOCS_DIR.mkdir(parents=True, exist_ok=True)

    # ---- INDEX.md ----
    lines = [
        "# Windows 1.03 - Documentacion automatica",
        "",
        "Esta documentacion se genera automaticamente por el pipeline de analisis",
        "(`bootstrap/analyze/`) a partir de los `.asm` humano-legibles en `src/`.",
        "",
        "## Resumen global",
        "",
        f"- **Modulos analizados**: {len(per_module_stats)}",
        f"- **Funciones totales**: {len(all_funcs)}",
        f"- **Confidence**:",
        f"    - high (API conocida): **{total_high}**",
        f"    - medium (convencion o patron): **{total_medium}**",
        f"    - low (heuristica generica): **{total_low}**",
        f"    - unknown: **{total_unknown}**",
        "",
        "## Indices",
        "",
        "- [Por modulo](by-module.md)",
        "- [Por clasificacion](by-classification.md)",
        "- [Top APIs invocadas](top-apis.md)",
        "- [Lista alfabetica de funciones](api-by-name.md)",
        "- [Call graph](callgraph.md)",
        "",
        "## Documentacion por modulo",
        "",
    ]
    for s in sorted(per_module_stats, key=lambda x: x["module"]):
        lines.append(f"- [{s['module']}]({s['module']}.md) - {s['num_functions']} funcs (high={s['high']}, medium={s['medium']})")
    (DOCS_DIR / "INDEX.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    # ---- by-module.md ----
    lines = [
        "# Funciones por modulo",
        "",
        "| Modulo | Funcs | High | Medium | Low | Unknown |",
        "|--------|------:|-----:|-------:|----:|--------:|",
    ]
    for s in sorted(per_module_stats, key=lambda x: -x["num_functions"]):
        lines.append(f"| [{s['module']}]({s['module']}.md) | {s['num_functions']} | {s['high']} | {s['medium']} | {s['low']} | {s['unknown']} |")
    lines.append(f"| **TOTAL** | **{len(all_funcs)}** | **{total_high}** | **{total_medium}** | **{total_low}** | **{total_unknown}** |")
    (DOCS_DIR / "by-module.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    # ---- by-classification.md ----
    cls_counter: Counter = Counter()
    cls_by_module: dict[str, Counter] = defaultdict(Counter)
    for fn in all_funcs:
        cls = fn.get("classification", "unknown")
        cls_counter[cls] += 1
        cls_by_module[fn.get("module", "?")][cls] += 1

    lines = [
        "# Funciones por clasificacion semantica",
        "",
        "## Totales globales",
        "",
        "| Clasificacion | Cantidad |",
        "|---------------|---------:|",
    ]
    for cls, n in cls_counter.most_common():
        lines.append(f"| `{cls}` | {n} |")
    lines.append("")
    lines.append("## Por modulo")
    lines.append("")
    cls_keys = sorted(cls_counter.keys())
    header = "| Modulo | " + " | ".join(cls_keys) + " |"
    sep = "|--------|" + "|".join(["-----:"] * len(cls_keys)) + "|"
    lines.append(header)
    lines.append(sep)
    for s in sorted(per_module_stats, key=lambda x: x["module"]):
        mod = s["module"]
        row = [mod] + [str(cls_by_module[mod].get(k, 0)) for k in cls_keys]
        lines.append("| " + " | ".join(row) + " |")
    (DOCS_DIR / "by-classification.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    # ---- top-apis.md ----
    inter_counter: Counter = Counter()
    for fn in all_funcs:
        for c in fn.get("callees_inter", []) or []:
            inter_counter[(c["module"], c["func"])] += 1

    lines = [
        "# Top APIs invocadas (cross-module)",
        "",
        "Top 100 funciones mas llamadas por otros modulos. Util para identificar",
        "que partes del sistema son criticas / mas usadas.",
        "",
        "| # | API | Llamadas |",
        "|---|-----|---------:|",
    ]
    for i, ((m, fname), n) in enumerate(inter_counter.most_common(100), 1):
        lines.append(f"| {i} | `{m}.{fname}` | {n} |")
    (DOCS_DIR / "top-apis.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    # ---- api-by-name.md ----
    # Solo funciones con nombre real (no sub_XXXX)
    named_funcs = [f for f in all_funcs if not (f.get("name") or "").startswith("sub_")]
    named_funcs.sort(key=lambda x: x.get("name", ""))

    lines = [
        "# Lista alfabetica de funciones nombradas",
        "",
        f"Total: **{len(named_funcs)}** funciones con nombre exportado o conocido.",
        "",
        "| Funcion | Modulo | Tipo | Instr | Descripcion |",
        "|---------|--------|------|------:|-------------|",
    ]
    for fn in named_funcs:
        name = fn.get("name", "")
        mod = fn.get("module", "")
        kind = fn.get("kind", "")
        n_instr = fn.get("num_instructions", 0)
        desc = (fn.get("description", "") or "").replace("|", "\\|")[:140]
        lines.append(f"| `{name}` | [{mod}]({mod}.md) | {kind} | {n_instr} | {desc} |")
    (DOCS_DIR / "api-by-name.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    log(PASS_NAME, f"Generated: INDEX.md, by-module.md, by-classification.md, top-apis.md, api-by-name.md")

    mark_phase_done(progress, PASS_NAME, {
        "total_functions": len(all_funcs),
        "named_functions": len(named_funcs),
    })
    save_progress(progress)
    log(PASS_NAME, "DONE")
    return 0


if __name__ == "__main__":
    sys.exit(main())
