"""Carga de config.toml y targets.toml con resolución de paths y expansión ~."""

from __future__ import annotations

import os
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

if sys.version_info >= (3, 11):
    import tomllib
else:  # pragma: no cover
    import tomli as tomllib

from .errors import ConfigError


def _repo_root() -> Path:
    """Devuelve la raíz del repo (dos niveles arriba de este fichero: tools/mpa/)."""
    return Path(__file__).resolve().parents[2]


def _expand(p: str | Path, root: Path) -> Path:
    """Expande ~ y resuelve rutas relativas contra root."""
    s = str(p)
    if s.startswith("~"):
        return Path(os.path.expanduser(s)).resolve()
    pp = Path(s)
    if pp.is_absolute():
        return pp.resolve()
    return (root / pp).resolve()


@dataclass(frozen=True)
class Paths:
    root: Path
    original: Path
    vendor: Path
    workspaces: Path
    state_db: Path
    ghidra_proj: Path
    logs: Path
    upstream_windows: Path
    upstream_research: Path
    upstream_runtime: Path


@dataclass(frozen=True)
class GhidraCfg:
    version: str
    install_dir: Path
    analyze_headless: Path
    analyze_timeout: int
    processor: str


@dataclass(frozen=True)
class DosboxCfg:
    binary: Path
    toolchain_dir: Path
    cc_timeout: int


@dataclass(frozen=True)
class LegacyToolchainCfg:
    msc_version: str
    masm_version: str
    linker: str
    memory_model: str
    call_conv: str


@dataclass(frozen=True)
class VerificationCfg:
    default_mode: str
    pixel_tol_pct: float


@dataclass(frozen=True)
class RunnerCfg:
    max_attempts: int
    bundle_size: int
    priority_strategy: str


@dataclass(frozen=True)
class KBCfg:
    index_dir: Path
    data_dir: Path
    backend: str


@dataclass(frozen=True)
class ModuleTarget:
    name: str
    binary: str
    kind: str
    has_debug_symbols: bool
    verify_mode: str = "binary"
    notes: str = ""


@dataclass(frozen=True)
class Config:
    paths: Paths
    ghidra: GhidraCfg
    dosbox: DosboxCfg
    legacy: LegacyToolchainCfg
    verification: VerificationCfg
    runner: RunnerCfg
    kb: KBCfg
    module_priority: list[str] = field(default_factory=list)
    targets: list[ModuleTarget] = field(default_factory=list)

    def target(self, name: str) -> ModuleTarget:
        for t in self.targets:
            if t.name == name:
                return t
        raise ConfigError(f"Módulo no declarado en targets.toml: {name}")

    def original_path(self, target: ModuleTarget) -> Path:
        return self.paths.original / target.binary


def _load_toml(path: Path) -> dict[str, Any]:
    if not path.exists():
        raise ConfigError(f"Falta {path}. Es parte del repo; no debería desaparecer.")
    with path.open("rb") as fh:
        return tomllib.load(fh)


def load_config(repo_root: Path | None = None) -> Config:
    root = repo_root.resolve() if repo_root else _repo_root()
    cfg_dir = root / "config"

    main = _load_toml(cfg_dir / "config.toml")
    targets_doc = _load_toml(cfg_dir / "targets.toml")

    try:
        p = main["paths"]
        upstream = p["upstream"]
        paths = Paths(
            root=root,
            original=_expand(p["original"], root),
            vendor=_expand(p["vendor"], root),
            workspaces=_expand(p["workspaces"], root),
            state_db=_expand(p["state_db"], root),
            ghidra_proj=_expand(p["ghidra_proj"], root),
            logs=_expand(p["logs"], root),
            upstream_windows=_expand(upstream["windows"], root),
            upstream_research=_expand(upstream["research"], root),
            upstream_runtime=_expand(upstream["runtime"], root),
        )

        g = main["ghidra"]
        ghidra = GhidraCfg(
            version=g["version"],
            install_dir=_expand(g["install_dir"], root),
            analyze_headless=_expand(g["analyze_headless"], root),
            analyze_timeout=int(g["analyze_timeout"]),
            processor=g["processor"],
        )

        d = main["dosbox"]
        dosbox = DosboxCfg(
            binary=_expand(d["binary"], root),
            toolchain_dir=_expand(d["toolchain_dir"], root),
            cc_timeout=int(d["cc_timeout"]),
        )

        lt = main["legacy_toolchain"]
        legacy = LegacyToolchainCfg(
            msc_version=lt["msc_version"],
            masm_version=lt["masm_version"],
            linker=lt["linker"],
            memory_model=lt["memory_model"],
            call_conv=lt["call_conv"],
        )

        v = main["verification"]
        verification = VerificationCfg(
            default_mode=v["default_mode"],
            pixel_tol_pct=float(v["pixel_tol_pct"]),
        )

        r = main["runner"]
        runner = RunnerCfg(
            max_attempts=int(r["max_attempts"]),
            bundle_size=int(r["bundle_size"]),
            priority_strategy=r["priority_strategy"],
        )

        k = main["kb"]
        kb = KBCfg(
            index_dir=_expand(k["index_dir"], root),
            data_dir=_expand(k["data_dir"], root),
            backend=k["backend"],
        )

        priority_order = list(main["modules"]["priority_order"])
    except KeyError as exc:
        raise ConfigError(f"Clave ausente en config.toml: {exc}") from exc

    targets: list[ModuleTarget] = []
    for entry in targets_doc.get("modules", []):
        targets.append(
            ModuleTarget(
                name=entry["name"],
                binary=entry["binary"],
                kind=entry["kind"],
                has_debug_symbols=bool(entry.get("has_debug_symbols", False)),
                verify_mode=entry.get("verify_mode", verification.default_mode),
                notes=entry.get("notes", ""),
            )
        )

    return Config(
        paths=paths,
        ghidra=ghidra,
        dosbox=dosbox,
        legacy=legacy,
        verification=verification,
        runner=runner,
        kb=kb,
        module_priority=priority_order,
        targets=targets,
    )
