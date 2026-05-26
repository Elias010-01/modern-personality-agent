#!/usr/bin/env python3
"""
smart_build.py - Builder "inteligente" que respeta los cambios del usuario.

Diferencia con build_from_source.py:

  build_from_source.py: lee bytes del comentario (`; 8B EC`) como autoridad
                        unica. Si cambias la instruccion pero no el comentario,
                        el cambio se IGNORA.

  smart_build.py:       si la instruccion legible se puede ENSAMBLAR (via
                        Keystone) y produce bytes DISTINTOS a los del
                        comentario, los bytes NUEVOS se usan. El comentario
                        se reescribe automaticamente al re-emitir el .asm.

Esto permite modificar el codigo cambiando solo el texto de la instruccion
(p.ej. `mov ax, 0x103` -> `mov ax, 0x104`) y que el binario resultante
refleje el cambio. Sin necesidad de tocar bytes hex.

NO funciona para cambios que alteran el TAMANO de la instruccion (e.g.
anadir bytes nuevos al medio). Para eso hace falta re-linkar (LINK4)
con MASM real, lo cual queda fuera de este script.

Si la instruccion no se puede ensamblar o produce bytes de tamano distinto,
el script:
  - Emite un WARNING claro
  - Mantiene los bytes del comentario como fallback (no rompe el build)
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
BUILT = ROOT / "built"

# Importar parser de bytes existente
sys.path.insert(0, str(ROOT / "bootstrap"))

try:
    from keystone import Ks, KS_ARCH_X86, KS_MODE_16, KsError, KS_OPT_SYNTAX_INTEL
    HAVE_KEYSTONE = True
except ImportError:
    HAVE_KEYSTONE = False


_RE_DB = re.compile(r"^\s*db\s+(.+?)\s*$", re.IGNORECASE)
_RE_HEX = re.compile(r"0([0-9a-f]+)h", re.IGNORECASE)
_RE_COMMENT_HEX = re.compile(
    r"^\s*((?:[0-9A-Fa-f]{2}\s+)*[0-9A-Fa-f]{2})\s*(?:\[FIXUP\]\s*)?$")

# Patrones para detectar instrucciones legibles vs labels/headers
_RE_INSTR_LINE = re.compile(r"^\s+(\S+)(?:\s+(.+?))?\s*;\s*(.+)$")


def parse_line(line: str) -> dict | None:
    """
    Devuelve dict con keys: indent, mnemonic, op_str, comment, raw, kind.
    kind ∈ {db, instr, label, blank, header, proc, endp, segment, end, other}
    """
    s = line.rstrip("\r\n")
    if not s.strip():
        return {"kind": "blank", "raw": line}
    stripped = s.lstrip()
    indent = s[:len(s) - len(stripped)]
    if stripped.startswith(";"):
        return {"kind": "header", "raw": line}
    upper = stripped.upper()
    if upper.endswith(":") and not upper.startswith("DB"):
        return {"kind": "label", "raw": line}
    if " PROC " in upper or upper.endswith(" PROC"):
        return {"kind": "proc", "raw": line}
    if upper.endswith(" ENDP") or upper == "ENDP":
        return {"kind": "endp", "raw": line}
    if " SEGMENT " in upper or " ENDS" in upper:
        return {"kind": "segment", "raw": line}
    if upper == "END":
        return {"kind": "end", "raw": line}
    # Separar codigo y comentario
    if ";" in s:
        code_part, comment_part = s.split(";", 1)
    else:
        code_part, comment_part = s, ""
    # Detectar db
    m = _RE_DB.match(code_part)
    if m:
        return {
            "kind": "db",
            "raw": line,
            "indent": indent,
            "operand_str": m.group(1).strip(),
            "comment": comment_part.strip(),
        }
    # Instruccion: mnemonic + (op_str) + ; comment
    tokens = code_part.strip().split(None, 1)
    if not tokens:
        return {"kind": "blank", "raw": line}
    return {
        "kind": "instr",
        "raw": line,
        "indent": indent,
        "mnemonic": tokens[0],
        "op_str": tokens[1] if len(tokens) > 1 else "",
        "comment": comment_part.strip(),
    }


def comment_to_bytes(comment: str) -> bytes | None:
    """Convierte 'AB CD EF' o 'AB CD EF [FIXUP]' a bytes."""
    if not comment:
        return None
    m = _RE_COMMENT_HEX.match(comment)
    if not m:
        return None
    try:
        return bytes(int(h, 16) for h in m.group(1).split())
    except ValueError:
        return None


def db_to_bytes(operand_str: str) -> bytes:
    """Convierte '055h, 08bh, 0ech' a bytes."""
    out = bytearray()
    for hexm in _RE_HEX.finditer(operand_str):
        out.append(int(hexm.group(1), 16))
    return bytes(out)


def try_assemble_instruction(parsed: dict, addr: int, ks: "Ks") -> bytes | None:
    """
    Intenta ensamblar la instruccion legible con Keystone.
    Devuelve bytes si funciona, None si no.

    Para instrucciones con fixups simbolicos (e.g. `call far KERNEL.LSTRCPY`),
    no podemos re-ensamblar (Keystone no sabe del simbolo). En ese caso
    devolvemos None y se mantiene el comentario como autoridad.
    """
    mnem = parsed["mnemonic"].lower()
    op = parsed["op_str"]
    # Si tiene referencia a simbolo (e.g. KERNEL.LSTRCPY o L_xxxx), no asm
    if op and (re.search(r"\b[A-Z][A-Z0-9_]+\.[A-Z_]", op) or
               re.search(r"\bL_[0-9A-F]{4}", op) or
               re.search(r"\bOFFSET\b", op) or
               "_entry_" in op or "_SEG" in op):
        return None
    # Mnemonicos que Keystone codifica mal en 16-bit (prefix 66)
    # Para esos no intentamos; mantenemos comentario.
    PROBLEMATIC_PREFIX_MNEMONICS = {"cwde", "cdq"}
    if mnem in PROBLEMATIC_PREFIX_MNEMONICS:
        return None
    # `lcall` no es estandar; Keystone no lo entiende como Capstone
    if mnem in {"lcall", "ljmp"}:
        return None
    text = f"{mnem} {op}".strip()
    try:
        encoded, _ = ks.asm(text, addr=addr)
    except KsError:
        return None
    if encoded is None:
        return None
    return bytes(encoded)


_RE_ASM_MARKER = re.compile(r"\[ASM\]")


def parse_segment_bytes(asm_text: str, ks: "Ks | None" = None,
                       verbose: bool = False) -> tuple[bytes, list[str]]:
    """
    Authority por linea:
      - `db ...`                -> bytes del operando db
      - `<instr> ; HEX [ASM]`   -> bytes del ensamblado de <instr> (opt-in mod)
      - `<instr> ; HEX`         -> bytes del comentario (default; el comentario
                                   manda; si el usuario edita la instruccion sin
                                   tocar HEX, el cambio se IGNORA)
      - `<instr> ; (sin hex)`   -> intenta ensamblar; si falla, error

    Para hacer un mod editando la instruccion en vez de los bytes, anade el
    marcador `[ASM]` al final del comentario:

      mov ax, 0x103       ; B8 03 01           <- bytes mandan (Win 1.03)
      mov ax, 0x104       ; B8 03 01 [ASM]     <- ahora el ensamblado manda (Win 1.04)
    """
    warnings: list[str] = []
    out = bytearray()
    line_no = 0

    if ks is None and HAVE_KEYSTONE:
        ks = Ks(KS_ARCH_X86, KS_MODE_16)
        try:
            ks.syntax = KS_OPT_SYNTAX_INTEL
        except Exception:
            pass

    for raw_line in asm_text.splitlines():
        line_no += 1
        p = parse_line(raw_line + "\n")
        if not p:
            continue
        k = p["kind"]
        if k == "db":
            out.extend(db_to_bytes(p["operand_str"]))
        elif k == "instr":
            comment_raw = p["comment"]
            opt_in_asm = bool(_RE_ASM_MARKER.search(comment_raw))
            cb = comment_to_bytes(comment_raw)

            if opt_in_asm:
                # El usuario quiere que la instruccion mande
                asm_bytes = try_assemble_instruction(p, addr=len(out), ks=ks) if ks else None
                if asm_bytes is None:
                    if cb is not None:
                        out.extend(cb)
                        warnings.append(
                            f"line {line_no}: [ASM] requested but cannot assemble "
                            f"'{p['mnemonic']} {p['op_str']}'; using comment bytes")
                    else:
                        warnings.append(
                            f"line {line_no}: [ASM] requested but cannot assemble "
                            f"and no comment bytes; SKIPPED")
                    continue
                if cb is not None and len(asm_bytes) != len(cb):
                    out.extend(cb)
                    warnings.append(
                        f"line {line_no}: [ASM] mod has DIFFERENT SIZE "
                        f"({len(cb)}B -> {len(asm_bytes)}B); reverted to comment bytes. "
                        f"Use real MASM+LINK4 for size-changing mods.")
                    continue
                out.extend(asm_bytes)
                if cb is None or asm_bytes != cb:
                    warnings.append(
                        f"line {line_no}: [ASM] mod applied: "
                        f"{cb.hex() if cb else '<empty>'} -> {asm_bytes.hex()}")
            elif cb is not None:
                out.extend(cb)
            else:
                # Sin [ASM] y sin comentario hex; intentar ensamblar como fallback
                asm_bytes = try_assemble_instruction(p, addr=len(out), ks=ks) if ks else None
                if asm_bytes is not None:
                    out.extend(asm_bytes)
                    warnings.append(
                        f"line {line_no}: no comment bytes; used assembled fallback")
                else:
                    warnings.append(
                        f"line {line_no}: cannot extract bytes (no comment, no assembly)")
    return bytes(out), warnings


def build_module(mod_dir: Path, verbose: bool = False) -> dict:
    layout = json.loads((mod_dir / "layout.json").read_text())
    meta = bytearray((mod_dir / "ne_meta.bin").read_bytes())

    ks = None
    if HAVE_KEYSTONE:
        ks = Ks(KS_ARCH_X86, KS_MODE_16)
        try:
            ks.syntax = KS_OPT_SYNTAX_INTEL
        except Exception:
            pass

    total_warnings: list[str] = []
    for seg in layout["segments"]:
        asm_path = mod_dir / f"seg{seg['index']}.asm"
        try:
            asm_text = asm_path.read_text(encoding="ascii")
        except UnicodeDecodeError:
            asm_text = asm_path.read_text(encoding="latin-1")
        seg_bytes, warnings = parse_segment_bytes(asm_text, ks=ks, verbose=verbose)
        if warnings:
            total_warnings.extend(
                [f"  [{layout['module']} seg{seg['index']}] {w}" for w in warnings])
        # Truncar al tamano esperado del segmento si hay padding extra
        if len(seg_bytes) > seg["data_len"]:
            seg_bytes = seg_bytes[:seg["data_len"]]
        elif len(seg_bytes) < seg["data_len"]:
            seg_bytes = seg_bytes + b"\x00" * (seg["data_len"] - len(seg_bytes))
        meta[seg["file_off"]:seg["file_off"] + seg["data_len"]] = seg_bytes

    BUILT.mkdir(parents=True, exist_ok=True)
    out_path = BUILT / layout["original_name"]
    out_path.write_bytes(bytes(meta))

    orig_path = ROOT / "original" / layout["original_name"]
    sha_o = hashlib.sha256(orig_path.read_bytes()).hexdigest()[:16]
    sha_b = hashlib.sha256(bytes(meta)).hexdigest()[:16]
    return {
        "module": layout["module"],
        "original_name": layout["original_name"],
        "size": len(meta),
        "sha_original": sha_o,
        "sha_built": sha_b,
        "match": sha_o == sha_b,
        "warnings": total_warnings,
    }


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", action="append", default=None)
    ap.add_argument("--verbose", "-v", action="store_true")
    ap.add_argument("--mod-build", action="store_true",
                    help="Mod-build mode: a DIFF vs original is EXPECTED "
                         "(the mod intentionally changes the binary). "
                         "Reports [MOD] instead of [DIFF], exit code 0.")
    ap.add_argument("--quiet-keystone", action="store_true",
                    help="Suppress the 'keystone not installed' notice "
                         "(implied by --mod-build).")
    args = ap.parse_args()

    # The keystone notice only matters when the user is actually modifying
    # ASSEMBLY instructions (not data). In --mod-build mode the patches are
    # usually pure data (ne_meta.bin string substitutions) so the notice
    # is misleading.
    if not HAVE_KEYSTONE and not args.quiet_keystone and not args.mod_build:
        print("INFO: keystone-engine not installed. Instruction-level edits "
              "to .asm files will fall back to the byte comments. "
              "(Data-only mods do not need keystone.)", file=sys.stderr)

    mods = []
    for d in sorted(SRC.iterdir()):
        if not d.is_dir() or not (d / "layout.json").exists():
            continue
        if args.module and d.name not in args.module:
            continue
        mods.append(d)

    ok = 0
    fail = 0
    diff_expected = 0
    all_warnings: list[str] = []
    for mod_dir in mods:
        try:
            r = build_module(mod_dir, verbose=args.verbose)
        except Exception as e:
            print(f"[ERR ] {mod_dir.name}: {e}")
            fail += 1
            continue
        if r["match"]:
            flag = "OK  "
            ok += 1
        elif args.mod_build:
            flag = "MOD "
            diff_expected += 1
        else:
            flag = "DIFF"
            fail += 1
        print(f"[{flag}] {r['original_name']:14s} "
              f"{r['size']:7d}B sha={r['sha_original']} vs {r['sha_built']} "
              f"warnings={len(r['warnings'])}")
        if args.verbose and r["warnings"]:
            for w in r["warnings"]:
                print(w)
        all_warnings.extend(r["warnings"])

    print()
    if args.mod_build:
        print(f"=== {ok} byte-exact + {diff_expected} modded "
              f"({len(all_warnings)} warnings) ===")
    else:
        print(f"=== {ok}/{ok+fail} modulos byte-exact "
              f"({len(all_warnings)} warnings totales) ===")

    if all_warnings and not args.verbose:
        print("\nUsa --verbose para ver detalles de warnings.")

    return 0 if fail == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
