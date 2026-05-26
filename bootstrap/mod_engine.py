#!/usr/bin/env python3
"""mod_engine.py - Declarative patch engine shared by mod_system.py and
launch_elias_win103.py.

A mod is described by two TOML files in mods/<name>/:

    meta.toml         human-readable metadata
                      (name, title, author, date, description)

    patches.toml      declarative list of targets and patches:

      [[targets]]
      output = "WIN.COM"
      source = "original/WIN.COM"
      [[targets.patches]]
      type = "string"
      replacements = [
        ["Microsoft Windows", "Elias's Windows!!"],
        ["Version 1.03", "Version MOD!"],
      ]
      [[targets.patches]]
      type = "bitmap"
      offset = "WINCOM_LOGO_OFFSET"      # name from bootstrap/win103_layout
      source = "mod/blibbet/blibbet_logo.bmp"
      format = "cga-mode6-bank-interleaved-1bpp"
      width = 536
      height = 36
      optional = true                    # don't fail if source missing

      [[targets]]
      output = "MSDOS.EXE"
      source = "rebuild:MSDOS"           # special: rebuild via smart_build
      [[targets.patches]]
      type = "string"
      scope = "src/MSDOS/ne_meta.bin"    # patch is applied to this file before rebuild
      replacements = [
        ["File", "MOD!"],
        ["View", "MIO!"],
      ]

      [deploy]
      img = "runtime/win103-built.img"   # inject all "output" files into this IMG

For backward compat, mods that only have `patches/<MODULE>/...` files
(the v07 format) still work via the old mod_system.py code path.
"""
from __future__ import annotations

import shutil
import subprocess
import sys
from dataclasses import dataclass, field
from pathlib import Path

try:
    import tomllib  # Python >= 3.11
except ImportError:                       # pragma: no cover
    import tomli as tomllib               # type: ignore[no-redef]

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

from fat12_replace import replace_file as fat12_replace_file  # noqa: E402
import win103_layout  # noqa: E402


# =============================================================
#  Dataclasses
# =============================================================

@dataclass
class Patch:
    kind: str                              # "string" | "bitmap"
    scope: str | None = None               # which file the patch is applied to
                                           # (defaults to the target's source)
    replacements: list[tuple[bytes, bytes]] = field(default_factory=list)
    bmp_source: Path | None = None
    bmp_format: str | None = None
    bmp_offset: int = 0
    bmp_size: int = 0
    bmp_width: int = 0
    bmp_height: int = 0
    optional: bool = False


@dataclass
class Target:
    output: str                            # e.g. "WIN.COM"
    source: str                            # e.g. "original/WIN.COM" or "rebuild:MSDOS"
    patches: list[Patch] = field(default_factory=list)


@dataclass
class ModSpec:
    name: str
    title: str = ""
    description: str = ""
    targets: list[Target] = field(default_factory=list)
    deploy_img: Path | None = None
    rebuild_modules: list[str] = field(default_factory=list)
    mod_dir: Path | None = None


# =============================================================
#  Parsing
# =============================================================

def _resolve_offset(spec, name: str = "offset") -> int:
    """Accept int, hex string ('0x099D'), or symbolic name from
    win103_layout (e.g. 'WINCOM_LOGO_OFFSET')."""
    if isinstance(spec, int):
        return spec
    if isinstance(spec, str):
        s = spec.strip()
        if s.startswith(("0x", "0X")):
            return int(s, 16)
        if s.isdigit():
            return int(s)
        if hasattr(win103_layout, s):
            v = getattr(win103_layout, s)
            if not isinstance(v, int):
                raise ValueError(f"{name} '{s}' resolves to non-int {v!r}")
            return v
    raise ValueError(f"cannot resolve {name} = {spec!r}")


def load_mod(mod_dir: Path) -> ModSpec:
    """Load mods/<name>/meta.toml + patches.toml -> ModSpec."""
    if not mod_dir.exists():
        raise FileNotFoundError(f"mod dir does not exist: {mod_dir}")

    meta_path = mod_dir / "meta.toml"
    patches_path = mod_dir / "patches.toml"

    meta = {}
    if meta_path.exists():
        with meta_path.open("rb") as fh:
            meta = tomllib.load(fh)

    spec = ModSpec(
        name=meta.get("name", mod_dir.name),
        title=meta.get("title", ""),
        description=meta.get("description", ""),
        mod_dir=mod_dir,
    )

    if not patches_path.exists():
        # Legacy mod (v07 format) - no patches.toml.  ModSpec stays
        # empty; caller is expected to fall back to the old code path.
        return spec

    with patches_path.open("rb") as fh:
        data = tomllib.load(fh)

    for t in data.get("targets", []):
        tgt = Target(
            output=t["output"],
            source=t["source"],
        )
        for p in t.get("patches", []):
            kind = p["type"]
            patch = Patch(kind=kind, scope=p.get("scope"))
            patch.optional = p.get("optional", False)
            if kind == "string":
                for old, new in p.get("replacements", []):
                    if not isinstance(old, str) or not isinstance(new, str):
                        raise ValueError(
                            f"target {t['output']}: string patch replacements "
                            f"must be [str, str], got {old!r}, {new!r}")
                    patch.replacements.append(
                        (old.encode("latin-1"), new.encode("latin-1")))
            elif kind == "bitmap":
                patch.bmp_source = Path(p["source"])
                if not patch.bmp_source.is_absolute():
                    patch.bmp_source = ROOT / patch.bmp_source
                patch.bmp_format = p.get(
                    "format", "cga-mode6-bank-interleaved-1bpp")
                patch.bmp_offset = _resolve_offset(p.get("offset"), "offset")
                patch.bmp_size = _resolve_offset(p.get("size", 0), "size")
                patch.bmp_width = int(p.get("width", 0))
                patch.bmp_height = int(p.get("height", 0))
            else:
                raise ValueError(f"unknown patch type {kind!r} in {t['output']}")
            tgt.patches.append(patch)
        spec.targets.append(tgt)

    if "rebuilds" in data:
        spec.rebuild_modules = list(data["rebuilds"])

    if "deploy" in data and "img" in data["deploy"]:
        p = Path(data["deploy"]["img"])
        spec.deploy_img = p if p.is_absolute() else ROOT / p

    return spec


# =============================================================
#  Patch primitives
# =============================================================

def _is_word_char(b: int) -> bool:
    return (0x30 <= b <= 0x39) or (0x41 <= b <= 0x5A) or (0x61 <= b <= 0x7A)


def apply_string_patch(data: bytearray, replacements,
                       label: str = "?", verbose: bool = True) -> int:
    """Word-boundary-safe length-preserving string substitutions.

    `replacements` is a list of (old_bytes, new_bytes) tuples.
    Both items MUST be bytes/bytearray of the same length.
    Returns the number of substitutions applied.
    """
    n = 0
    for old, new in replacements:
        if len(old) != len(new):
            raise ValueError(
                f"[{label}] string replacement length mismatch: "
                f"{old!r} ({len(old)} B) vs {new!r} ({len(new)} B)")
        start = 0
        while True:
            idx = data.find(old, start)
            if idx < 0:
                break
            prev_b = data[idx - 1] if idx > 0 else 0
            next_b = data[idx + len(old)] if idx + len(old) < len(data) else 0
            if _is_word_char(prev_b) or _is_word_char(next_b):
                start = idx + 1
                continue
            data[idx:idx + len(old)] = new
            n += 1
            if verbose:
                preview_old = old.decode("latin-1", "replace")[:24]
                preview_new = new.decode("latin-1", "replace")[:24]
                print(f"    [{label}] '{preview_old}' -> '{preview_new}' @0x{idx:X}")
            start = idx + len(new)
    return n


def apply_bitmap_patch(data: bytearray, patch: Patch,
                       label: str = "?") -> int:
    """Apply a bitmap patch.  Returns 1 on success, 0 if patch is
    optional and source BMP is missing."""
    src = patch.bmp_source
    if src is None or not src.exists():
        if patch.optional:
            print(f"    [{label}] (bitmap source missing, skipped: {src})")
            return 0
        raise FileNotFoundError(f"bitmap source missing: {src}")

    if patch.bmp_format != "cga-mode6-bank-interleaved-1bpp":
        raise ValueError(
            f"[{label}] unsupported bitmap format: {patch.bmp_format!r}")

    # Lazy import to avoid mandatory dependency on blibbet_mod for other formats.
    from blibbet_mod import read_bmp_1bpp, linear_to_cga

    bits, w, h = read_bmp_1bpp(src)
    exp_w = patch.bmp_width or win103_layout.WINCOM_LOGO_WIDTH
    exp_h = patch.bmp_height or win103_layout.WINCOM_LOGO_HEIGHT
    if (w, h) != (exp_w, exp_h):
        raise ValueError(
            f"[{label}] BMP dimensions {w}x{h} != expected {exp_w}x{exp_h}")
    cga = linear_to_cga(bits)
    size = patch.bmp_size or len(cga)
    if len(cga) != size:
        raise ValueError(
            f"[{label}] encoded CGA bytes {len(cga)} != declared size {size}")
    off = patch.bmp_offset
    data[off:off + size] = cga
    print(f"    [{label}] bitmap @0x{off:04X} ({size} B) from "
          f"{src.relative_to(ROOT) if src.is_relative_to(ROOT) else src}")
    return 1


# =============================================================
#  Target build
# =============================================================

def _resolve_source(source: str, mod_dir: Path) -> Path | None:
    """Resolve a target.source spec to an actual filesystem path.

    Special form "rebuild:<MODULE>" returns None (handled by caller).
    """
    if source.startswith("rebuild:"):
        return None
    p = Path(source)
    if not p.is_absolute():
        p = ROOT / p
    return p


def build_target(target: Target, mod_spec: ModSpec, verbose: bool = True) -> bytes:
    """Apply all patches of `target` and return the resulting bytes."""
    print(f"  build target: {target.output}")

    if target.source.startswith("rebuild:"):
        module_name = target.source.split(":", 1)[1]
        # Pre-patch any ne_meta.bin or src/ file referenced in scope=
        for p in target.patches:
            if p.scope and p.kind == "string":
                _apply_scoped_string_patch(p, target.output, mod_spec.mod_dir)
        # Run smart_build
        out_path = ROOT / "built" / target.output
        print(f"    running smart_build --module {module_name}")
        r = subprocess.run(
            [sys.executable, "bootstrap/smart_build.py",
             "--module", module_name, "--mod-build"],
            cwd=str(ROOT), capture_output=True, text=True)
        for line in r.stdout.splitlines():
            if line.startswith("[") or line.startswith("==="):
                print(f"      {line}")
        if not out_path.exists():
            raise FileNotFoundError(f"smart_build did not produce {out_path}")
        data = bytearray(out_path.read_bytes())
    else:
        src_path = _resolve_source(target.source, mod_spec.mod_dir)
        if src_path is None or not src_path.exists():
            raise FileNotFoundError(f"target source missing: {target.source}")
        data = bytearray(src_path.read_bytes())

    # Apply non-scoped patches (those that mutate the produced bytes)
    for p in target.patches:
        if p.scope:
            continue                       # scoped patches already applied pre-build
        if p.kind == "string":
            apply_string_patch(data, p.replacements,
                               label=target.output, verbose=verbose)
        elif p.kind == "bitmap":
            apply_bitmap_patch(data, p, label=target.output)
        else:
            raise ValueError(f"unknown patch kind {p.kind!r}")

    # Validate final size against win103_layout
    expected = win103_layout.SIZE_BY_FILE.get(target.output)
    if expected is not None and len(data) != expected:
        raise ValueError(
            f"target {target.output} produced {len(data)} B, expected {expected} B")

    return bytes(data)


def _apply_scoped_string_patch(patch: Patch, target_name: str,
                               mod_dir: Path | None) -> None:
    """Apply a string patch to a file in src/ (or anywhere).  Used for
    rebuild targets where the patch must happen before smart_build."""
    scope = patch.scope
    assert scope is not None
    scope_path = ROOT / scope if not Path(scope).is_absolute() else Path(scope)
    if not scope_path.exists():
        raise FileNotFoundError(f"scope path missing: {scope}")

    # Backup once
    bak = scope_path.with_suffix(scope_path.suffix + ".bak")
    if not bak.exists():
        shutil.copy2(scope_path, bak)
        print(f"    backup: {bak.relative_to(ROOT) if bak.is_relative_to(ROOT) else bak}")

    data = bytearray(bak.read_bytes())
    n = apply_string_patch(data, patch.replacements,
                           label=f"{target_name}:{scope_path.name}")
    print(f"    {n} replacement(s) in {scope_path.name}")
    scope_path.write_bytes(bytes(data))


def restore_scoped_files(mod_spec: ModSpec) -> None:
    """Restore any src/ files that were modified by scoped patches."""
    seen = set()
    for t in mod_spec.targets:
        for p in t.patches:
            if not p.scope:
                continue
            scope_path = (ROOT / p.scope) if not Path(p.scope).is_absolute() else Path(p.scope)
            if scope_path in seen:
                continue
            seen.add(scope_path)
            bak = scope_path.with_suffix(scope_path.suffix + ".bak")
            if bak.exists():
                shutil.copy2(bak, scope_path)
                print(f"    restored: {scope_path.relative_to(ROOT) if scope_path.is_relative_to(ROOT) else scope_path}")


# =============================================================
#  IMG deploy
# =============================================================

def deploy_to_img(img_path: Path, artifacts: dict[str, bytes],
                  img_bak: Path | None = None,
                  restore_first: bool = True) -> None:
    """Inject each name -> bytes into the FAT12 image at img_path."""
    if restore_first:
        if img_bak is None:
            img_bak = img_path.with_suffix(img_path.suffix + ".bak")
        if not img_bak.exists():
            raise FileNotFoundError(f"no IMG backup at {img_bak}")
        shutil.copy2(img_bak, img_path)
        print(f"    IMG restored from {img_bak.name}")

    for name, data in artifacts.items():
        print(f"    inject {name} ({len(data)} B)")
        fat12_replace_file(img_path, name, data, verbose=False)


# =============================================================
#  Top-level: run a mod end-to-end
# =============================================================

@dataclass
class RunResult:
    spec: ModSpec
    artifacts: dict[str, bytes] = field(default_factory=dict)
    deployed_img: Path | None = None


def run_mod(mod_dir: Path, *, deploy: bool = True,
            verbose: bool = True) -> RunResult:
    """Apply every target's patches, optionally inject into the IMG.

    Returns a RunResult with the resulting artifacts.
    """
    spec = load_mod(mod_dir)
    if not spec.targets:
        raise ValueError(
            f"mod {mod_dir.name} has no patches.toml; this engine cannot run "
            "legacy v07 mods - use mod_system.py for those.")

    print(f"Running mod '{spec.name}'")
    if spec.title:
        print(f"  {spec.title}")

    # ---- Build all targets ----
    result = RunResult(spec=spec)
    try:
        for tgt in spec.targets:
            result.artifacts[tgt.output] = build_target(tgt, spec, verbose=verbose)
    finally:
        # Always restore scoped files so src/ stays clean
        restore_scoped_files(spec)

    # ---- Save artifacts under mods/<name>/img/ ----
    img_dir = mod_dir / "img"
    img_dir.mkdir(parents=True, exist_ok=True)
    for name, data in result.artifacts.items():
        (img_dir / name).write_bytes(data)
        print(f"  artifact: mods/{mod_dir.name}/img/{name} ({len(data)} B)")

    # ---- Deploy to IMG ----
    if deploy and spec.deploy_img:
        print(f"\nDeploy to {spec.deploy_img.relative_to(ROOT) if spec.deploy_img.is_relative_to(ROOT) else spec.deploy_img}")
        deploy_to_img(spec.deploy_img, result.artifacts)
        result.deployed_img = spec.deploy_img

    return result
