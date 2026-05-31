#!/usr/bin/env python3
"""Patch build_from_source.py to add C2 EQU support."""
from pathlib import Path

path = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap\build_from_source.py')
text = path.read_text(encoding='utf-8')

old = '''    Raises RuntimeError if both attempts fail (should not happen).
    """
    try:
        return _assemble_via_masm(asm_text, mod_name, seg_index), "masm"
    except RuntimeError as first_err:
        try:
            pdb_text = convert_to_pure_db(asm_text)
        except Exception as conv_err:
            raise RuntimeError(
                f"convert_to_pure_db failed for "
                f"{mod_name}/seg{seg_index}: {conv_err}; "
                f"original MASM error: {first_err}")
        return (_assemble_via_masm(
            pdb_text, mod_name, seg_index, _suffix="P"), "masm-puredb")


def build_module(mod_dir: Path, original_dir: Path, mode: str) -> dict:'''

new = '''    Raises RuntimeError if both attempts fail (should not happen).
    """
    # Load C2 EQU map for orphan label resolution
    equ_map = {}
    equ_path = ROOT / "state" / "analyze" / "pass_c2_equ_map.json"
    if equ_path.exists():
        equ_map = json.loads(equ_path.read_text(encoding="utf-8"))

    seg_rel = f"{mod_name}\\seg{seg_index}.asm"
    seg_rel_alt = f"{mod_name}/seg{seg_index}.asm"
    equ_offsets = equ_map.get(seg_rel, equ_map.get(seg_rel_alt, {}))
    equ_offsets = {int(k): v for k, v in equ_offsets.items()}

    orig_bytes = parse_db_bytes(asm_text)
    def _check_size(obj_bytes, tag):
        if len(obj_bytes) != len(orig_bytes):
            raise RuntimeError(
                f"MASM size mismatch: assembled {len(obj_bytes)} vs "
                f"expected {len(orig_bytes)} bytes")
        return obj_bytes, tag

    try:
        return _check_size(
            _assemble_via_masm(asm_text, mod_name, seg_index), "masm")
    except RuntimeError as first_err:
        try:
            pdb_text = convert_to_pure_db(asm_text, equ_offsets)
        except Exception as conv_err:
            raise RuntimeError(
                f"convert_to_pure_db failed for "
                f"{mod_name}/seg{seg_index}: {conv_err}; "
                f"original MASM error: {first_err}")
        return _check_size(
            _assemble_via_masm(pdb_text, mod_name, seg_index, _suffix="P"),
            "masm-puredb")


def build_module(mod_dir: Path, original_dir: Path, mode: str) -> dict:'''

if old in text:
    text = text.replace(old, new)
    path.write_text(text, encoding='utf-8')
    print("PATCHED successfully")
else:
    print("OLD string not found - checking if already patched...")
    if "equ_map" in text:
        print("Already patched!")
    else:
        print("ERROR: could not find target string")
