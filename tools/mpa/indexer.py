"""Indexador: parsea las binarias originales y puebla la DB.

Para cada binario en original/ que aparezca en targets.toml:
  1. Calcula sha256, lo registra como expected_hash si es la primera vez.
  2. Parsea el NE (segments, exports, names).
  3. Inserta el módulo, sus segmentos, y sus entry points como funciones
     iniciales en la DB.

Esto es trabajo barato (segundos por binario). Las funciones internas (no
exportadas) las descubre Ghidra después; este indexador sólo siembra.
"""

from __future__ import annotations

import hashlib
from pathlib import Path

from .config import Config
from .db import DB
from .errors import OriginalBinaryMissingError, NEParseError
from .ne import parse_ne


def _sha256(p: Path) -> str:
    h = hashlib.sha256()
    with p.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 16), b""):
            h.update(chunk)
    return h.hexdigest()


def index_all(cfg: Config, db: DB) -> dict[str, int]:
    """Indexa todos los módulos declarados en targets.toml.

    Devuelve {module_name: num_functions_seeded}.
    """
    results: dict[str, int] = {}
    for target in cfg.targets:
        bin_path = cfg.original_path(target)
        if not bin_path.exists():
            raise OriginalBinaryMissingError(target.binary, str(bin_path))

        sha = _sha256(bin_path)
        size = bin_path.stat().st_size

        # Sanity: si ya teníamos un hash esperado y no coincide → aviso
        prev = db.expected_hash(target.binary)
        if prev is not None and prev[0] != sha:
            raise NEParseError(
                f"Hash de {target.binary} no coincide con el conocido. "
                f"Esperado {prev[0]}, encontrado {sha}. "
                f"¿Cambió la copia? Si es intencional, borra la fila en "
                f"expected_hashes y reintenta."
            )

        try:
            mod = parse_ne(bin_path)
        except NEParseError as exc:
            raise NEParseError(f"Parseando {target.binary}: {exc}") from exc

        with db.tx():
            db.upsert_module(
                name=target.name,
                binary=target.binary,
                kind=target.kind,
                sha256=sha,
                size=size,
                has_debug_symbols=target.has_debug_symbols,
                verify_mode=target.verify_mode,
                notes=target.notes,
            )
            db.remember_hash(target.binary, sha, size)

            for seg in mod.segments:
                db.insert_segment(
                    target.name, seg.number, seg.kind,
                    seg.file_offset, seg.length_in_file,
                )

            count = 0
            for ep in mod.entries:
                if not ep.is_exported or ep.seg_number == 0:
                    continue
                db.upsert_function(
                    module=target.name,
                    seg_number=ep.seg_number,
                    seg_offset=ep.seg_offset,
                    size=0,                      # Ghidra rellenará tras analyze
                    name=ep.name,
                    ordinal=ep.ordinal,
                    is_exported=True,
                    has_symbol=ep.name is not None,
                )
                count += 1
            results[target.name] = count

    return results


def merge_ghidra_functions(
    db: DB, module: str, ghidra_functions: list,
) -> tuple[int, int]:
    """Mergea funciones descubiertas por Ghidra con las ya sembradas.

    Devuelve (insertadas, actualizadas).
    """
    inserted = 0
    updated = 0
    with db.tx():
        for gf in ghidra_functions:
            if gf.seg_number < 1:
                continue  # no pertenece a un segmento NE conocido
            # ¿existe ya?
            cur = db.conn.execute(
                "SELECT id, size, name FROM functions "
                "WHERE module_name=? AND seg_number=? AND seg_offset=?",
                (module, gf.seg_number, gf.seg_offset),
            )
            row = cur.fetchone()
            if row is None:
                db.upsert_function(
                    module=module,
                    seg_number=gf.seg_number,
                    seg_offset=gf.seg_offset,
                    size=gf.size,
                    name=gf.name if not gf.name.startswith("FUN_") else None,
                    has_symbol=not gf.name.startswith("FUN_"),
                )
                inserted += 1
            else:
                # Actualiza tamaño si Ghidra lo encontró; nombre sólo si era
                # genérico o si Ghidra trae uno mejor (no FUN_).
                new_name = row["name"]
                if not new_name and not gf.name.startswith("FUN_"):
                    new_name = gf.name
                db.conn.execute(
                    "UPDATE functions SET size=?, name=COALESCE(?, name) WHERE id=?",
                    (gf.size, new_name, row["id"]),
                )
                updated += 1
    return inserted, updated
