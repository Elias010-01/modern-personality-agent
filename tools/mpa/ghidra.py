"""Wrapper para Ghidra headless.

Convención: cada módulo NE se importa una sola vez en un proyecto Ghidra
nombrado igual que el módulo (KERNEL, GDI, ...). El análisis se hace una sola
vez (caro: minutos) y se cachea en .ghidra-projects/<MODULE>/.

Sobre ese proyecto, ejecutamos scripts Jython post-análisis que extraen:
- Lista de funciones con (segment, offset, size)
- Disassembly por función (con etiquetas de Ghidra)
- Cross-references → para poblar call_edges
- Strings con sus xrefs

Los scripts viven en tools/ghidra_scripts/ y son invocados con -postScript.
"""

from __future__ import annotations

import json
import subprocess
from dataclasses import dataclass
from pathlib import Path

from .config import Config
from .errors import GhidraError, PrereqMissingError


@dataclass(frozen=True)
class GhidraFunction:
    name: str
    seg_number: int
    seg_offset: int
    size: int
    is_thunk: bool


def _check(cfg: Config) -> None:
    if not cfg.ghidra.analyze_headless.exists():
        raise PrereqMissingError(
            f"Ghidra {cfg.ghidra.version} headless",
            f"Ejecuta bash bootstrap/install-ghidra.sh\n"
            f"  Esperado en: {cfg.ghidra.analyze_headless}",
        )


def import_and_analyze(cfg: Config, binary_path: Path, project_name: str) -> Path:
    """Importa el binario en un proyecto Ghidra (creándolo si no existe) y lo analiza.

    Devuelve la ruta del proyecto (.gpr).
    """
    _check(cfg)
    proj_dir = cfg.paths.ghidra_proj
    proj_dir.mkdir(parents=True, exist_ok=True)

    cmd = [
        str(cfg.ghidra.analyze_headless),
        str(proj_dir),
        project_name,
        "-import", str(binary_path),
        "-overwrite",
        "-processor", cfg.ghidra.processor,
        "-loader", "NeLoader",
        "-analysisTimeoutPerFile", str(cfg.ghidra.analyze_timeout),
    ]
    proc = subprocess.run(
        cmd, capture_output=True, text=True,
        timeout=cfg.ghidra.analyze_timeout + 120,
    )
    if proc.returncode != 0:
        raise GhidraError(
            f"analyzeHeadless falló para {binary_path.name}:\n"
            f"--- stdout ---\n{proc.stdout[-4000:]}\n"
            f"--- stderr ---\n{proc.stderr[-4000:]}\n"
        )
    return proj_dir / f"{project_name}.gpr"


def run_script(
    cfg: Config,
    project_name: str,
    script_name: str,
    binary_name: str,
    output_path: Path,
    *extra_args: str,
) -> None:
    """Ejecuta un script Jython sobre un proyecto ya analizado.

    El script vive en tools/ghidra_scripts/ y es invocado con -postScript.
    Los argumentos al script se pasan como argv adicional: primero
    output_path, luego extra_args.
    """
    _check(cfg)
    scripts_dir = cfg.paths.root / "tools" / "ghidra_scripts"
    if not (scripts_dir / script_name).exists():
        raise GhidraError(f"No existe el script Ghidra {script_name} en {scripts_dir}")

    cmd = [
        str(cfg.ghidra.analyze_headless),
        str(cfg.paths.ghidra_proj),
        project_name,
        "-process", binary_name,
        "-noanalysis",
        "-scriptPath", str(scripts_dir),
        "-postScript", script_name, str(output_path),
        *[str(a) for a in extra_args],
    ]
    proc = subprocess.run(
        cmd, capture_output=True, text=True,
        timeout=cfg.ghidra.analyze_timeout,
    )
    # Jython 2 puede fallar con SyntaxError sin propagar al exit code; detectamos
    # también marcadores típicos de error en el output de Ghidra.
    failed = (
        proc.returncode != 0
        or "SyntaxError" in proc.stdout
        or "Traceback (most recent call last)" in proc.stdout
        or "ERROR Script Failed" in proc.stdout
    )
    if failed:
        raise GhidraError(
            f"Script {script_name} falló:\n"
            f"--- stdout ---\n{proc.stdout[-4000:]}\n"
            f"--- stderr ---\n{proc.stderr[-4000:]}\n"
        )


def export_functions(
    cfg: Config, project_name: str, binary_name: str, out_json: Path,
) -> list[GhidraFunction]:
    """Lanza ExportFunctions.py y devuelve la lista de funciones."""
    run_script(cfg, project_name, "ExportFunctions.py", binary_name, out_json)
    data = json.loads(out_json.read_text(encoding="utf-8"))
    return [
        GhidraFunction(
            name=e["name"],
            seg_number=e["seg"],
            seg_offset=e["off"],
            size=e["size"],
            is_thunk=e.get("thunk", False),
        )
        for e in data
    ]


def export_disassembly(
    cfg: Config, project_name: str, binary_name: str,
    seg: int, off: int, out_path: Path,
) -> str:
    """Genera el disassembly anotado de una función concreta."""
    run_script(
        cfg, project_name, "ExportDisasm.py", binary_name, out_path,
        str(seg), hex(off),
    )
    return out_path.read_text(encoding="utf-8")
