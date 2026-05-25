"""Pass 1: extrae patrones de cada funcion en los .asm humano-legibles.

Para cada PROC ... ENDP genera un objeto JSON con:
  - module, segment, name, offset, size_bytes
  - num_instructions, num_lines
  - has_label_start (L_XXXX antes del codigo)
  - is_far (PROC FAR) vs is_near
  - prologue: standard | inc_bp | minimal | none
  - epilogue: retf | retf_n | ret | ret_n | iret | jmp_tail
  - calls_near: [L_XXXX, ...]
  - calls_far: [(seg,off) o nombre]
  - jumps: cantidad y tipos
  - ints: lista de INTs invocadas (con valor inmediato)
  - has_loop: bool
  - has_string_op: bool (movsb, scasb, ...)
  - data_refs: numero de [imm], [bp+N], [bx+...] etc (heuristica)
  - mnemonic_histogram: dict
  - first_instructions: 5 primeras lineas para contexto

Salida:
  state/analyze/pass1/<MODULE>.json
"""

from __future__ import annotations

import json
import re
import sys
from collections import Counter
from pathlib import Path
from typing import Any

# Permite ejecutarlo directamente: python bootstrap/analyze/pass1_patterns.py
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

PASS_NAME = "pass1_patterns"
OUT_DIR = STATE_DIR / "pass1"

# ---- Regex utilitarios ----

RE_PROC_HEADER = re.compile(
    r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s+PROC\s+(FAR|NEAR)\b", re.IGNORECASE
)
RE_PROC_END = re.compile(
    r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s+ENDP\b", re.IGNORECASE
)
RE_FN_BANNER = re.compile(
    r"^\s*;\s*([A-Za-z_][A-Za-z0-9_]*)\s+\(offset\s+0x([0-9A-Fa-f]+),\s*size\s+(\d+)\s+bytes\)"
)
RE_LABEL = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*):\s*$")
# Linea de instruccion: "        mnemonic  operands   ; HH HH HH"
RE_INSTR = re.compile(r"^\s+([a-z][a-z0-9]*)\b(.*?)(?:\s+;\s*([0-9A-Fa-f\s]+?)(?:\s*\[FIXUP[^\]]*\])?\s*)?$")
RE_HEX_BYTES = re.compile(r"\s*;\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)")

RE_CALL_NEAR = re.compile(r"\bcall\s+(L_[0-9A-Fa-f]+)\b", re.IGNORECASE)
RE_CALL_FAR_LBL = re.compile(r"\bcall\s+(FAR\s+PTR\s+)?([A-Za-z_][A-Za-z0-9_]*)\b", re.IGNORECASE)
RE_JMP_LBL = re.compile(r"\bj[a-z]+\s+(L_[0-9A-Fa-f]+|[A-Za-z_][A-Za-z0-9_]*)\b", re.IGNORECASE)
RE_INT_NUM = re.compile(r"\bint\s+(0x[0-9A-Fa-f]+|\d+)\b", re.IGNORECASE)
RE_MEM_OPERAND = re.compile(r"\[[^\]]+\]")

PROLOGUE_PATTERNS = [
    ("standard_far_inc_bp",  ["inc", "push", "mov"]),   # inc bp / push bp / mov bp,sp
    ("standard_near",         ["push", "mov"]),         # push bp / mov bp,sp
    ("standard_far",          ["push", "mov"]),         # push bp / mov bp,sp (igual al near pero PROC FAR)
]

STRING_OPS = {"movsb", "movsw", "scasb", "scasw", "lodsb", "lodsw", "stosb", "stosw", "cmpsb", "cmpsw"}
LOOP_OPS = {"loop", "loope", "loopne", "loopz", "loopnz"}
RET_OPS = {"ret", "retf", "iret"}


def parse_module(module: str) -> dict[str, Any]:
    """Parsea todos los seg*.asm de un modulo y devuelve {funcs: [...], stats: {...}}."""
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))

    all_funcs: list[dict[str, Any]] = []
    total_lines = 0
    total_instr = 0

    for sf in seg_files:
        with sf.open("r", encoding="utf-8", errors="replace") as f:
            lines = f.readlines()
        total_lines += len(lines)

        seg_funcs, seg_instr = parse_segment(module, sf.name, lines)
        total_instr += seg_instr
        all_funcs.extend(seg_funcs)

    return {
        "module": module,
        "num_functions": len(all_funcs),
        "num_lines": total_lines,
        "num_instructions": total_instr,
        "functions": all_funcs,
    }


def parse_segment(module: str, seg_filename: str, lines: list[str]) -> tuple[list[dict[str, Any]], int]:
    """Parsea un segmento. Devuelve lista de funcs y total de instrucciones del segmento."""
    funcs: list[dict[str, Any]] = []
    total_instr = 0

    # Estado actual
    cur: dict[str, Any] | None = None
    pending_banner: dict[str, Any] | None = None  # offset/size del banner ;----- previo

    for line_no, raw in enumerate(lines, start=1):
        line = raw.rstrip("\n")

        # Banner que precede a la funcion (con offset y size)
        m = RE_FN_BANNER.match(line)
        if m and cur is None:
            pending_banner = {
                "name_banner": m.group(1),
                "offset": int(m.group(2), 16),
                "size_bytes": int(m.group(3)),
            }
            continue

        # PROC inicio
        m = RE_PROC_HEADER.match(line)
        if m:
            name = m.group(1)
            kind = m.group(2).upper()
            cur = {
                "module": module,
                "segment_file": seg_filename,
                "name": name,
                "kind": "FAR" if kind == "FAR" else "NEAR",
                "start_line": line_no,
                "offset": pending_banner["offset"] if pending_banner else None,
                "size_bytes": pending_banner["size_bytes"] if pending_banner else None,
                "instructions": [],
                "raw_lines": [],
            }
            pending_banner = None
            continue

        # ENDP fin
        m = RE_PROC_END.match(line)
        if m and cur is not None:
            cur["end_line"] = line_no
            analyzed = analyze_function(cur)
            funcs.append(analyzed)
            total_instr += analyzed["num_instructions"]
            cur = None
            continue

        # Dentro de un PROC: linea de instruccion o label
        if cur is not None:
            cur["raw_lines"].append(line)
            if RE_LABEL.match(line):
                continue
            mi = RE_INSTR.match(line)
            if mi:
                mnem = mi.group(1).lower()
                operands = (mi.group(2) or "").strip()
                bytes_hex = (mi.group(3) or "").strip()
                cur["instructions"].append({
                    "mnemonic": mnem,
                    "operands": operands,
                    "bytes": bytes_hex,
                })

    return funcs, total_instr


def analyze_function(fn: dict[str, Any]) -> dict[str, Any]:
    """Analiza una funcion ya parseada y produce su entrada final."""
    instrs = fn["instructions"]
    mnems = [i["mnemonic"] for i in instrs]
    full_lines = "\n".join(fn["raw_lines"])

    # Prologue detection
    prologue = "none"
    if len(mnems) >= 3 and mnems[0] == "inc" and "bp" in instrs[0]["operands"] and mnems[1] == "push" and "bp" in instrs[1]["operands"] and mnems[2] == "mov":
        prologue = "far_inc_bp_standard"
    elif len(mnems) >= 2 and mnems[0] == "push" and "bp" in instrs[0]["operands"] and mnems[1] == "mov":
        prologue = "standard_bp"
    elif len(mnems) >= 1 and mnems[0] == "push":
        prologue = "saves_regs"

    # Epilogue detection (busca ultimas 2-4 instrucciones significativas)
    epilogue = "unknown"
    for i in instrs[::-1]:
        m = i["mnemonic"]
        if m in {"ret", "retf", "iret"}:
            ops = i["operands"]
            if m == "retf":
                epilogue = "retf_n" if ops else "retf"
            elif m == "ret":
                epilogue = "ret_n" if ops else "ret"
            else:
                epilogue = "iret"
            break
        if m == "jmp":
            epilogue = "jmp_tail"
            break

    # Calls
    calls_near = sorted(set(RE_CALL_NEAR.findall(full_lines)))
    # calls_far: heuristica basica - "call FAR" o "call NAME" donde NAME no es L_xxxx
    calls_far_raw = []
    for i in instrs:
        if i["mnemonic"] != "call":
            continue
        ops = i["operands"]
        if "FAR" in ops.upper() or "ptr" in ops.lower():
            calls_far_raw.append(ops.strip())
        else:
            # busca nombres que no sean L_xxxx
            for m in re.finditer(r"\b([A-Za-z_][A-Za-z0-9_]+)\b", ops):
                name = m.group(1)
                if not name.startswith("L_") and name.upper() not in {"FAR", "NEAR", "PTR", "WORD", "DWORD"}:
                    calls_far_raw.append(name)
    calls_far = sorted(set(calls_far_raw))

    # Jumps
    jumps = [i for i in instrs if i["mnemonic"].startswith("j") and i["mnemonic"] != "jmp"]
    unconditional_jumps = [i for i in instrs if i["mnemonic"] == "jmp"]

    # INT calls
    ints: list[str] = []
    for i in instrs:
        if i["mnemonic"] == "int":
            ints.append(i["operands"].strip())

    # Loops y string ops
    has_loop = any(m in LOOP_OPS for m in mnems)
    has_string_op = any(m in STRING_OPS for m in mnems)

    # Memory operand frequency
    mem_refs = sum(1 for i in instrs if RE_MEM_OPERAND.search(i["operands"]))

    # Mnemonic histogram (top mnemonics)
    histo = Counter(mnems)

    # Clasificacion heuristica
    classification = classify(fn, instrs, mnems, calls_near, calls_far, ints, has_loop, has_string_op, epilogue, len(instrs))

    return {
        "module": fn["module"],
        "segment_file": fn["segment_file"],
        "name": fn["name"],
        "kind": fn["kind"],
        "offset": fn["offset"],
        "size_bytes": fn["size_bytes"],
        "start_line": fn["start_line"],
        "end_line": fn.get("end_line"),
        "num_instructions": len(instrs),
        "prologue": prologue,
        "epilogue": epilogue,
        "calls_near": calls_near,
        "calls_far": calls_far,
        "num_jumps_cond": len(jumps),
        "num_jumps_uncond": len(unconditional_jumps),
        "ints": ints,
        "has_loop": has_loop,
        "has_string_op": has_string_op,
        "num_mem_refs": mem_refs,
        "mnemonic_histogram": dict(histo.most_common(15)),
        "classification": classification,
        "first_instructions": [
            f"{i['mnemonic']} {i['operands']}".strip() for i in instrs[:6]
        ],
        "last_instructions": [
            f"{i['mnemonic']} {i['operands']}".strip() for i in instrs[-4:]
        ],
    }


def classify(fn, instrs, mnems, calls_near, calls_far, ints, has_loop, has_string_op, epilogue, n_instr) -> str:
    """Clasificacion heuristica.

    Etiquetas:
      trivial_stub      - 1-3 instrucciones, casi vacia
      wrapper           - hace 1 call y devuelve
      leaf              - no llama a nadie, hace algo simple
      dispatcher        - muchas comparaciones + jumps (tabla de decision)
      iterator          - tiene loop o string-op
      dos_caller        - hace INT 21h
      bios_caller       - hace INT 10h/16h/etc
      isr               - usa iret
      complex           - >50 instrucciones
      api_export        - PROC FAR exportada (se setea fuera)
    """
    if n_instr <= 3:
        return "trivial_stub"
    if epilogue == "iret":
        return "isr"
    if has_loop or has_string_op:
        if n_instr > 50:
            return "complex_iterator"
        return "iterator"
    if any(i in {"0x21", "21h", "33"} for i in ints):
        return "dos_caller"
    if any(i in {"0x10", "10h", "16", "0x16", "16h", "0x1a", "0x13"} for i in ints):
        return "bios_caller"
    total_calls = len(calls_near) + len(calls_far)
    if total_calls == 1 and n_instr <= 15:
        return "wrapper"
    if total_calls == 0 and n_instr <= 20:
        return "leaf"
    # dispatcher: muchas cmp + jcc
    n_cmp = sum(1 for m in mnems if m == "cmp")
    n_jcc = sum(1 for m in mnems if m.startswith("j") and m != "jmp")
    if n_cmp >= 4 and n_jcc >= 4:
        return "dispatcher"
    if n_instr > 80:
        return "complex"
    if n_instr > 30:
        return "medium"
    return "small"


def process_module(module: str, progress: dict[str, Any]) -> dict[str, Any]:
    if is_module_done(progress, PASS_NAME, module):
        log(PASS_NAME, f"SKIP {module} (already done)")
        # Pero leemos el JSON existente para retornar stats
        f = OUT_DIR / f"{module}.json"
        if f.exists():
            with f.open("r", encoding="utf-8") as fh:
                return json.load(fh)
        return {"module": module, "num_functions": 0}

    log(PASS_NAME, f"BEGIN {module}")
    result = parse_module(module)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    out_file = OUT_DIR / f"{module}.json"
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(result, f, indent=2)

    log(PASS_NAME, f"END   {module}: {result['num_functions']} funcs, {result['num_instructions']} instr")

    mark_module_done(progress, PASS_NAME, module)
    save_progress(progress)
    return result


def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"Discovered {len(modules)} modules")

    stats_total = {"modules": 0, "functions": 0, "instructions": 0, "lines": 0}
    for mod in modules:
        try:
            r = process_module(mod, progress)
            stats_total["modules"] += 1
            stats_total["functions"] += r.get("num_functions", 0)
            stats_total["instructions"] += r.get("num_instructions", 0)
            stats_total["lines"] += r.get("num_lines", 0)
        except Exception as exc:  # pragma: no cover
            log(PASS_NAME, f"ERROR {mod}: {exc!r}")
            raise

    mark_phase_done(progress, PASS_NAME, stats_total)
    save_progress(progress)
    log(PASS_NAME, f"DONE. Stats: {stats_total}")

    # Top-level summary
    summary = {
        "phase": PASS_NAME,
        "stats": stats_total,
        "per_module": [],
    }
    for mod in modules:
        f = OUT_DIR / f"{mod}.json"
        if f.exists():
            with f.open("r", encoding="utf-8") as fh:
                d = json.load(fh)
            summary["per_module"].append({
                "module": d["module"],
                "num_functions": d["num_functions"],
                "num_instructions": d["num_instructions"],
            })
    with (STATE_DIR / "pass1_summary.json").open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)

    return 0


if __name__ == "__main__":
    # Permite importar state como modulo hermano
    sys.path.insert(0, str(Path(__file__).parent))
    sys.exit(main())
