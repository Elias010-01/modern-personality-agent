#!/usr/bin/env python3
"""Batch matcher: detecta patrones triviales en los bytes de funciones
pendientes y genera attempt.asm automáticamente. Luego invoca verify.

Patrones soportados (todos exportados, modelo medium, FAR):
  - "iret"     1B: cf                  → IRET
  - "retf"     1B: cb                  → RETF (cuerpo vacío)
  - "int_retf" 3B: cd XX cb            → INT XXh; RETF
  - "mov_imm_retf" 4B: b8 LL HH cb     → MOV AX, immw; RETF
  - "getvar_retf" 5B: 2e a1 LL HH cb   → MOV AX, CS:[var]; RETF (getter)
  - "retf_imm"  3B: ca LL HH           → RETF immw

Uso:
  python batch-match.py [--limit N] [--dry-run]
"""
from __future__ import annotations

import argparse
import shutil
import subprocess
import sqlite3
import sys
from dataclasses import dataclass
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO / "tools"))

from mpa.config import load_config
from mpa.ne import parse_ne


@dataclass
class Candidate:
    fn_id: int
    module: str
    name: str | None
    seg: int
    off: int
    size: int
    bytes_: bytes


# --- plantillas ASM por patrón -----------------------------------------------

ASM_HEADER = """\
;-----------------------------------------------------------
; auto-generado por batch-match.py
; fn={fn_id} module={module} name={name} size={size}
; pattern={pattern}
;-----------------------------------------------------------

_TEXT   SEGMENT WORD PUBLIC 'CODE'
        ASSUME  CS:_TEXT

        PUBLIC  {label}
{label} PROC FAR
"""

ASM_FOOTER = """\
{label} ENDP

_TEXT   ENDS
        END
"""


def asm_label(c: Candidate) -> str:
    # PUBLIC label: si tiene nombre, úsalo; si no, generamos F<id:05d>
    return c.name if c.name else f"F{c.fn_id:05d}"


def emit_asm(c: Candidate, body: str, pattern: str) -> str:
    label = asm_label(c)
    head = ASM_HEADER.format(
        fn_id=c.fn_id, module=c.module, name=c.name or "(none)",
        size=c.size, pattern=pattern, label=label,
    )
    tail = ASM_FOOTER.format(label=label)
    return head + body + tail


def try_match_iret(c: Candidate) -> str | None:
    if c.size == 1 and c.bytes_ == b"\xcf":
        return emit_asm(c, "        iret\n", "iret")
    return None


def try_match_retf_empty(c: Candidate) -> str | None:
    if c.size == 1 and c.bytes_ == b"\xcb":
        return emit_asm(c, "        ret\n", "retf")
    return None


def try_match_int_retf(c: Candidate) -> str | None:
    # cd XX cb  -> INT XXh ; RETF
    if c.size == 3 and len(c.bytes_) == 3 and c.bytes_[0] == 0xcd and c.bytes_[2] == 0xcb:
        n = c.bytes_[1]
        body = f"        int     {n:02x}h\n        ret\n"
        return emit_asm(c, body, "int_retf")
    return None


def try_match_mov_imm_retf(c: Candidate) -> str | None:
    # b8 LL HH cb  -> MOV AX, immw ; RETF
    if c.size == 4 and len(c.bytes_) == 4 and c.bytes_[0] == 0xb8 and c.bytes_[3] == 0xcb:
        imm = c.bytes_[1] | (c.bytes_[2] << 8)
        body = f"        mov     ax, {imm:04x}h\n        ret\n"
        return emit_asm(c, body, "mov_imm_retf")
    return None


def try_match_retf_imm(c: Candidate) -> str | None:
    # ca LL HH  -> RETF immw (sólo el retf con clean-up)
    # Funciones de cuerpo vacío con stack cleanup (Pascal calling conv con args)
    if c.size == 3 and len(c.bytes_) == 3 and c.bytes_[0] == 0xca:
        imm = c.bytes_[1] | (c.bytes_[2] << 8)
        # MASM emite "ret N" como RETF imm en proc FAR
        body = f"        ret     {imm}\n"
        return emit_asm(c, body, "retf_imm")
    return None


MATCHERS = [
    try_match_retf_empty,
    try_match_iret,
    try_match_int_retf,
    try_match_mov_imm_retf,
    try_match_retf_imm,
]


# --- main --------------------------------------------------------------------

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=100)
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--module", default=None, help="restringir a un módulo")
    args = ap.parse_args()

    cfg = load_config(REPO)
    conn = sqlite3.connect(REPO / "state" / "mpa.db")
    conn.row_factory = sqlite3.Row

    # Cargar bytes de segmentos
    mod_bytes: dict[tuple[str, int], bytes] = {}
    for t in cfg.targets:
        bp = cfg.original_path(t)
        if not bp.exists():
            continue
        ne = parse_ne(bp)
        for seg in ne.segments:
            try:
                mod_bytes[(t.name, seg.number)] = ne.read_segment_bytes(seg.number)
            except Exception:
                pass

    # Funciones candidatas
    sql = (
        "SELECT id, name, module_name, seg_number, seg_offset, size "
        "FROM functions "
        "WHERE status IN ('pending','in_progress') AND size > 0 AND size <= 6 "
        "AND attempts < 5"
    )
    params: list = []
    if args.module:
        sql += " AND module_name=?"
        params.append(args.module)
    sql += " ORDER BY size ASC, id ASC LIMIT ?"
    params.append(args.limit)

    candidates = []
    for row in conn.execute(sql, params):
        seg_key = (row["module_name"], row["seg_number"])
        data = mod_bytes.get(seg_key, b"")
        body = data[row["seg_offset"]:row["seg_offset"] + row["size"]]
        if len(body) != row["size"]:
            continue
        candidates.append(Candidate(
            fn_id=row["id"], module=row["module_name"], name=row["name"],
            seg=row["seg_number"], off=row["seg_offset"], size=row["size"],
            bytes_=body,
        ))

    print(f"== {len(candidates)} candidatas con size<=6 ==")

    written = 0
    skipped = 0
    for c in candidates:
        # Saltar funciones sin nombre del export table → MASM PUBLIC requiere nombre,
        # las funciones internas (sin name) son problemáticas para el linker.
        # Por ahora hacemos sólo las con nombre.
        if c.name is None:
            skipped += 1
            continue
        asm_src = None
        pattern = None
        for fn_match in MATCHERS:
            asm_src = fn_match(c)
            if asm_src:
                pattern = fn_match.__name__.replace("try_match_", "")
                break
        if not asm_src:
            continue

        # Crear workspace
        safe = "".join(ch if ch.isalnum() or ch in "._-" else "_" for ch in c.name)
        ws = REPO / "workspaces" / c.module / f"{c.fn_id:06d}__{safe}"
        ws.mkdir(parents=True, exist_ok=True)
        # Limpia cualquier attempt.c previo
        for old in (ws / "attempt.c",):
            if old.exists():
                old.unlink()

        att_path = ws / "attempt.asm"
        att_path.write_text(asm_src, encoding="ascii")
        written += 1
        print(f"  [{pattern:<14}] #{c.fn_id} {c.module}::{c.name} size={c.size} "
              f"bytes={c.bytes_.hex()}")

    print(f"\n== generados {written} attempts.asm  (skipped sin-nombre={skipped}) ==")

    if args.dry_run:
        print("(dry-run: no se ejecuta verify)")
        return 0

    # Ejecutar verify uno a uno
    print("\n== verificando ==")
    venv_py = REPO / ".venv" / "bin" / "python"
    matched = 0
    failed = 0
    for c in candidates:
        if c.name is None:
            continue
        ws = REPO / "workspaces" / c.module / f"{c.fn_id:06d}__{''.join(ch if ch.isalnum() or ch in '._-' else '_' for ch in c.name)}"
        if not (ws / "attempt.asm").exists():
            continue
        r = subprocess.run(
            [str(venv_py), "-m", "mpa.cli", "verify", str(c.fn_id)],
            cwd=REPO, capture_output=True, text=True,
        )
        out = (r.stdout + r.stderr).strip().splitlines()
        # busca primera línea relevante
        first = next((ln for ln in out if "MATCH" in ln or "MISMATCH" in ln or "✓" in ln or "✗" in ln or "FAIL" in ln), out[-1] if out else "(no output)")
        ok = "MATCH" in first and "MISMATCH" not in first
        if ok:
            matched += 1
            print(f"  ✓ #{c.fn_id} {c.name}: {first.strip()}")
        else:
            failed += 1
            print(f"  ✗ #{c.fn_id} {c.name}: {first.strip()}")

    print(f"\n== resultado: matched={matched}/{matched+failed} ==")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
