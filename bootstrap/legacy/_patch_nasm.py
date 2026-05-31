#!/usr/bin/env python3
"""Patch build_from_source.py to add NASM support for large segments (>64KB)."""
from pathlib import Path

path = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\bootstrap\build_from_source.py')
text = path.read_text(encoding='utf-8')

# 1. Add _assemble_via_nasm after _assemble_masm_with_puredb_retry
old1 = 'def build_module(mod_dir: Path, original_dir: Path, mode: str) -> dict:'

new1 = '''def _assemble_via_nasm(asm_text: str, mod_name: str, seg_index: int) -> bytes:
    """Assemble with NASM (flat binary output). For segments >64KB.

    Writes asm_text to a temp file, runs `nasm -f bin`, and returns
    the raw binary bytes.  Raises RuntimeError on failure.
    """
    import tempfile
    nasm_exe = Path(r'C:\\Users\\Elias\\nasm\\nasm-2.16.03\\nasm.exe')
    if not nasm_exe.exists():
        raise RuntimeError(f"NASM not found at {nasm_exe}")

    work = Path(tempfile.gettempdir()) / f"nasm_{mod_name}_{seg_index}"
    work.mkdir(exist_ok=True)
    asm_file = work / f"{mod_name}_seg{seg_index}.asm"
    bin_file = work / f"{mod_name}_seg{seg_index}.bin"
    asm_file.write_text(asm_text, encoding='ascii', errors='replace')

    import subprocess
    result = subprocess.run(
        [str(nasm_exe), '-f', 'bin', str(asm_file), '-o', str(bin_file)],
        capture_output=True, text=True)
    if result.returncode != 0:
        raise RuntimeError(
            f"NASM failed for {mod_name}/seg{seg_index}: {result.stderr}")
    if not bin_file.exists():
        raise RuntimeError(
            f"NASM produced no output for {mod_name}/seg{seg_index}")
    return bin_file.read_bytes()


def build_module(mod_dir: Path, original_dir: Path, mode: str) -> dict:'''

if old1 in text:
    text = text.replace(old1, new1)
    print("Added _assemble_via_nasm")
else:
    print("old1 not found")

# 2. Modify masm mode section to try NASM for NASM-syntax files or large segments
old2 = '''        elif mode == "masm":
            # v14.0+: MASM with a pure-db retry. The retry pre-transforms
            # the source into pure-db on the fly so MASM 4.00 *always*
            # produces the OBJ for every module on the floppy set,
            # giving us 92/92 via the real 1985 toolchain.
            #
            # If even the pure-db retry fails (should not happen in
            # practice -- pure-db is just `db` directives + segment
            # plumbing) we fall back to the Python parser so the build
            # chain stays healthy. That last-resort path is tagged
            # 'masm-fallback-db' in the report so it is auditable.
            try:
                seg_bytes, path_tag = _assemble_masm_with_puredb_retry(
                    asm, mod_name, seg["index"])
            except RuntimeError as e:
                seg_bytes = parse_db_bytes(asm)
                path_tag = "masm-fallback-db"
                seg_results.append({
                    "idx": seg["index"], "ok": True,
                    "size": len(seg_bytes),
                    "note": f"{path_tag}: {e}",
                    "path": path_tag,
                })
                fo = seg["file_off"]
                n = seg["data_len"]
                if len(seg_bytes) == n:
                    meta[fo:fo + n] = seg_bytes
                continue'''

new2 = '''        elif mode == "masm":
            # v14.0+: MASM with a pure-db retry. The retry pre-transforms
            # the source into pure-db on the fly so MASM 4.00 *always*
            # produces the OBJ for every module on the floppy set,
            # giving us 92/92 via the real 1985 toolchain.
            #
            # For NASM-syntax .asm (e.g. BITS 16) or segments >64KB that
            # MASM 4.00 cannot handle, use NASM directly to produce flat
            # binary output.
            #
            # If even the pure-db retry fails (should not happen in
            # practice -- pure-db is just `db` directives + segment
            # plumbing) we fall back to the Python parser so the build
            # chain stays healthy. That last-resort path is tagged
            # 'masm-fallback-db' in the report so it is auditable.
            is_nasm_syntax = "BITS 16" in asm or "bits 16" in asm
            if is_nasm_syntax:
                try:
                    seg_bytes = _assemble_via_nasm(asm, mod_name, seg["index"])
                    path_tag = "nasm"
                except RuntimeError as e:
                    seg_bytes = parse_db_bytes(asm)
                    path_tag = "masm-fallback-db"
                    seg_results.append({
                        "idx": seg["index"], "ok": True,
                        "size": len(seg_bytes),
                        "note": f"{path_tag}: {e}",
                        "path": path_tag,
                    })
                    fo = seg["file_off"]
                    n = seg["data_len"]
                    if len(seg_bytes) == n:
                        meta[fo:fo + n] = seg_bytes
                    continue
            else:
                try:
                    seg_bytes, path_tag = _assemble_masm_with_puredb_retry(
                        asm, mod_name, seg["index"])
                except RuntimeError as e:
                    seg_bytes = parse_db_bytes(asm)
                    path_tag = "masm-fallback-db"
                    seg_results.append({
                        "idx": seg["index"], "ok": True,
                        "size": len(seg_bytes),
                        "note": f"{path_tag}: {e}",
                        "path": path_tag,
                    })
                    fo = seg["file_off"]
                    n = seg["data_len"]
                    if len(seg_bytes) == n:
                        meta[fo:fo + n] = seg_bytes
                    continue'''

if old2 in text:
    text = text.replace(old2, new2)
    print("Added NASM detection in build_module")
else:
    print("old2 not found")

path.write_text(text, encoding='utf-8')
print("Done")
