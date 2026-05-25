"""Knowledge base con búsqueda local.

Backends soportados:
- "ripgrep": búsqueda full-text sobre kb/data/. Funciona sin indexar. Default.
- "tantivy": índice BM25 de tantivy-py si el usuario quiere semántica BM25.
  (Opcional, requiere instalación extra.)

Las fuentes se declaran en kb/sources.toml. Cada fuente tiene un fetcher
(http, git, manual) que pobla kb/data/<source_id>/. Lo que se ingiere son
ficheros de texto plano, markdown o PDF (extraído a texto).
"""

from __future__ import annotations

import shutil
import subprocess
from dataclasses import dataclass
from pathlib import Path

from .config import Config
from .errors import PrereqMissingError


@dataclass(frozen=True)
class KBHit:
    source: str
    file: str
    line: int
    text: str


def search(cfg: Config, query: str, *, limit: int = 20) -> list[KBHit]:
    if cfg.kb.backend == "ripgrep":
        return _search_ripgrep(cfg, query, limit=limit)
    if cfg.kb.backend == "tantivy":
        return _search_tantivy(cfg, query, limit=limit)
    raise ValueError(f"backend KB desconocido: {cfg.kb.backend}")


def _search_ripgrep(cfg: Config, query: str, *, limit: int) -> list[KBHit]:
    rg = shutil.which("rg")
    if rg is None:
        raise PrereqMissingError(
            "ripgrep",
            "Instala ripgrep: sudo apt install ripgrep (en WSL)",
        )
    if not cfg.kb.data_dir.exists():
        return []
    cmd = [
        rg, "--no-heading", "--line-number", "--with-filename",
        "--max-count", str(limit), "--smart-case",
        query, str(cfg.kb.data_dir),
    ]
    proc = subprocess.run(cmd, capture_output=True, text=True)
    if proc.returncode not in (0, 1):  # 1 = no match, no es error
        return []
    hits: list[KBHit] = []
    for line in proc.stdout.splitlines()[:limit]:
        parts = line.split(":", 2)
        if len(parts) < 3:
            continue
        path_str, lineno, text = parts
        path = Path(path_str)
        try:
            rel = path.relative_to(cfg.kb.data_dir)
            source = rel.parts[0] if rel.parts else "?"
            file = "/".join(rel.parts[1:]) if len(rel.parts) > 1 else rel.name
        except ValueError:
            source, file = "?", path.name
        try:
            ln = int(lineno)
        except ValueError:
            ln = 0
        hits.append(KBHit(source=source, file=file, line=ln, text=text.strip()))
    return hits


def _search_tantivy(cfg: Config, query: str, *, limit: int) -> list[KBHit]:
    raise PrereqMissingError(
        "tantivy backend",
        "Backend 'tantivy' no implementado todavía. Usa backend='ripgrep' "
        "en config.toml.",
    )
