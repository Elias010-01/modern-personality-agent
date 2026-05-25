"""Estado persistente del pipeline de analisis.

Guarda en state/analyze/progress.json el progreso de cada fase, modulo y funcion.
Soporta reanudacion: si un proceso se corta, la siguiente ejecucion salta lo ya hecho.
"""

from __future__ import annotations

import json
import os
import time
from pathlib import Path
from typing import Any

REPO = Path(__file__).resolve().parents[2]
STATE_DIR = REPO / "state" / "analyze"
PROGRESS_FILE = STATE_DIR / "progress.json"
LOGS_DIR = REPO / "logs"


def _now() -> str:
    return time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())


def load_progress() -> dict[str, Any]:
    STATE_DIR.mkdir(parents=True, exist_ok=True)
    if not PROGRESS_FILE.exists():
        return {
            "version": 1,
            "started_at": _now(),
            "updated_at": _now(),
            "phases": {},
        }
    with PROGRESS_FILE.open("r", encoding="utf-8") as f:
        return json.load(f)


def save_progress(progress: dict[str, Any]) -> None:
    STATE_DIR.mkdir(parents=True, exist_ok=True)
    progress["updated_at"] = _now()
    tmp = PROGRESS_FILE.with_suffix(".json.tmp")
    with tmp.open("w", encoding="utf-8") as f:
        json.dump(progress, f, indent=2, sort_keys=False)
    tmp.replace(PROGRESS_FILE)


def phase(progress: dict[str, Any], name: str) -> dict[str, Any]:
    """Devuelve (creando si hace falta) el sub-dict de una fase."""
    if name not in progress["phases"]:
        progress["phases"][name] = {
            "started_at": _now(),
            "status": "in_progress",
            "modules_done": [],
            "stats": {},
        }
    return progress["phases"][name]


def mark_module_done(progress: dict[str, Any], phase_name: str, module: str) -> None:
    ph = phase(progress, phase_name)
    if module not in ph["modules_done"]:
        ph["modules_done"].append(module)


def is_module_done(progress: dict[str, Any], phase_name: str, module: str) -> bool:
    if phase_name not in progress["phases"]:
        return False
    return module in progress["phases"][phase_name]["modules_done"]


def mark_phase_done(progress: dict[str, Any], phase_name: str, stats: dict | None = None) -> None:
    ph = phase(progress, phase_name)
    ph["status"] = "done"
    ph["finished_at"] = _now()
    if stats:
        ph["stats"].update(stats)


def log(phase_name: str, msg: str) -> None:
    LOGS_DIR.mkdir(parents=True, exist_ok=True)
    logf = LOGS_DIR / f"analyze-{phase_name}.log"
    with logf.open("a", encoding="utf-8") as f:
        f.write(f"[{_now()}] {msg}\n")
    print(f"[{phase_name}] {msg}", flush=True)


def list_modules() -> list[str]:
    src = REPO / "src"
    return sorted(
        d.name for d in src.iterdir()
        if d.is_dir() and any(d.glob("seg*.asm"))
    )
