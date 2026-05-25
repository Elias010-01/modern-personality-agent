"""Wrapper SQLite para el state del harness.

Decisiones:
- Schema en state/schema.sql, idempotente (CREATE IF NOT EXISTS).
- WAL mode para permitir lecturas mientras el agente escribe.
- Transacciones explícitas vía context manager.
- Sin ORM. Las queries son cortas y específicas, mejor SQL directo.
"""

from __future__ import annotations

import sqlite3
from contextlib import contextmanager
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterator

from .config import Config
from .errors import ConfigError

SCHEMA_VERSION = 1


@dataclass
class FunctionRow:
    id: int
    module_name: str
    seg_number: int
    seg_offset: int
    size: int
    name: str | None
    ordinal: int | None
    is_exported: bool
    has_symbol: bool
    status: str
    attempts: int


class DB:
    def __init__(self, path: Path):
        self.path = path
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self._conn: sqlite3.Connection | None = None

    @property
    def conn(self) -> sqlite3.Connection:
        if self._conn is None:
            self._conn = sqlite3.connect(self.path, isolation_level=None)
            self._conn.row_factory = sqlite3.Row
            self._conn.execute("PRAGMA foreign_keys = ON")
            self._conn.execute("PRAGMA journal_mode = WAL")
        return self._conn

    def close(self) -> None:
        if self._conn is not None:
            self._conn.close()
            self._conn = None

    @contextmanager
    def tx(self) -> Iterator[sqlite3.Connection]:
        c = self.conn
        c.execute("BEGIN")
        try:
            yield c
            c.execute("COMMIT")
        except BaseException:
            c.execute("ROLLBACK")
            raise

    def init_schema(self, schema_sql_path: Path) -> None:
        if not schema_sql_path.exists():
            raise ConfigError(f"No encuentro el schema SQL en {schema_sql_path}")
        sql = schema_sql_path.read_text(encoding="utf-8")
        self.conn.executescript(sql)

    def schema_version(self) -> int:
        cur = self.conn.execute("PRAGMA user_version")
        return int(cur.fetchone()[0])

    # ---- Modules -----------------------------------------------------------

    def upsert_module(
        self,
        *,
        name: str,
        binary: str,
        kind: str,
        sha256: str,
        size: int,
        has_debug_symbols: bool,
        verify_mode: str,
        notes: str = "",
    ) -> None:
        self.conn.execute(
            """
            INSERT INTO modules (name, binary, kind, sha256, size,
                                 has_debug_symbols, verify_mode, notes)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            ON CONFLICT(name) DO UPDATE SET
                binary=excluded.binary,
                kind=excluded.kind,
                sha256=excluded.sha256,
                size=excluded.size,
                has_debug_symbols=excluded.has_debug_symbols,
                verify_mode=excluded.verify_mode,
                notes=excluded.notes
            """,
            (
                name, binary, kind, sha256, size,
                int(has_debug_symbols), verify_mode, notes,
            ),
        )

    def mark_analyzed(self, module: str) -> None:
        self.conn.execute(
            "UPDATE modules SET analyzed_at = datetime('now') WHERE name = ?",
            (module,),
        )

    # ---- Segments ----------------------------------------------------------

    def insert_segment(
        self, module: str, seg_number: int, kind: str,
        file_offset: int, size: int,
    ) -> None:
        self.conn.execute(
            """
            INSERT OR REPLACE INTO segments (module_name, seg_number, kind,
                                             file_offset, size)
            VALUES (?, ?, ?, ?, ?)
            """,
            (module, seg_number, kind, file_offset, size),
        )

    # ---- Functions ---------------------------------------------------------

    def upsert_function(
        self,
        *,
        module: str,
        seg_number: int,
        seg_offset: int,
        size: int,
        name: str | None = None,
        ordinal: int | None = None,
        is_exported: bool = False,
        has_symbol: bool = False,
    ) -> int:
        self.conn.execute(
            """
            INSERT INTO functions
                (module_name, seg_number, seg_offset, size, name, ordinal,
                 is_exported, has_symbol)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            ON CONFLICT(module_name, seg_number, seg_offset) DO UPDATE SET
                size       = excluded.size,
                name       = COALESCE(excluded.name, functions.name),
                ordinal    = COALESCE(excluded.ordinal, functions.ordinal),
                is_exported= excluded.is_exported OR functions.is_exported,
                has_symbol = excluded.has_symbol  OR functions.has_symbol
            """,
            (module, seg_number, seg_offset, size, name, ordinal,
             int(is_exported), int(has_symbol)),
        )
        cur = self.conn.execute(
            "SELECT id FROM functions WHERE module_name=? AND seg_number=? AND seg_offset=?",
            (module, seg_number, seg_offset),
        )
        return int(cur.fetchone()[0])

    def get_function(self, fn_id: int) -> FunctionRow | None:
        cur = self.conn.execute(
            "SELECT * FROM functions WHERE id = ?", (fn_id,),
        )
        row = cur.fetchone()
        if row is None:
            return None
        return FunctionRow(
            id=row["id"], module_name=row["module_name"],
            seg_number=row["seg_number"], seg_offset=row["seg_offset"],
            size=row["size"], name=row["name"], ordinal=row["ordinal"],
            is_exported=bool(row["is_exported"]),
            has_symbol=bool(row["has_symbol"]),
            status=row["status"], attempts=row["attempts"],
        )

    def set_function_status(
        self, fn_id: int, status: str,
        diff_bytes: int | None = None, diff_summary: str | None = None,
    ) -> None:
        self.conn.execute(
            """
            UPDATE functions
               SET status = ?,
                   last_diff_bytes  = COALESCE(?, last_diff_bytes),
                   last_diff_summary = COALESCE(?, last_diff_summary),
                   matched_at = CASE WHEN ?='matched' THEN datetime('now') ELSE matched_at END
             WHERE id = ?
            """,
            (status, diff_bytes, diff_summary, status, fn_id),
        )

    def increment_attempts(self, fn_id: int) -> int:
        self.conn.execute(
            "UPDATE functions SET attempts = attempts + 1, "
            "last_attempt_at = datetime('now') WHERE id = ?",
            (fn_id,),
        )
        cur = self.conn.execute(
            "SELECT attempts FROM functions WHERE id = ?", (fn_id,),
        )
        return int(cur.fetchone()[0])

    # ---- Attempts ----------------------------------------------------------

    def record_attempt(
        self,
        *,
        function_id: int,
        outcome: str,
        diff_bytes: int | None = None,
        diff_summary: str | None = None,
        compile_log: str | None = None,
        source_c: str | None = None,
        source_asm: str | None = None,
        rationale: str | None = None,
        model: str | None = None,
        tokens_in: int | None = None,
        tokens_out: int | None = None,
    ) -> int:
        cur = self.conn.execute(
            """
            INSERT INTO attempts
                (function_id, finished_at, outcome, diff_bytes, diff_summary,
                 compile_log, source_c, source_asm, rationale, model,
                 tokens_in, tokens_out)
            VALUES (?, datetime('now'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """,
            (function_id, outcome, diff_bytes, diff_summary, compile_log,
             source_c, source_asm, rationale, model, tokens_in, tokens_out),
        )
        return int(cur.lastrowid or 0)

    # ---- Selection ---------------------------------------------------------

    def next_function_for_work(
        self,
        *,
        priority_strategy: str,
        module_priority: list[str],
        max_attempts: int,
    ) -> FunctionRow | None:
        """Devuelve la siguiente función candidata según la estrategia."""
        # Filtros base: status pending/in_progress, attempts < max, size > 0.
        # size=0 son entradas de la export table (forwarders/trampolines) que
        # apuntan al medio de otra función; Ghidra no las detecta como entry
        # points propios y no son matchables aisladamente.
        base_where = (
            "f.status IN ('pending', 'in_progress') AND f.attempts < ? "
            "AND f.size > 0"
        )

        # Construye CASE para orden de módulos
        if module_priority:
            cases = " ".join(
                f"WHEN ? THEN {idx}" for idx in range(len(module_priority))
            )
            module_order_sql = f"CASE f.module_name {cases} ELSE 999 END"
            params: list[Any] = [max_attempts] + list(module_priority)
        else:
            module_order_sql = "0"
            params = [max_attempts]

        if priority_strategy == "small_first":
            order = f"{module_order_sql}, f.size ASC, f.id ASC"
        elif priority_strategy == "symbols_first":
            order = f"{module_order_sql}, f.has_symbol DESC, f.size ASC, f.id ASC"
        elif priority_strategy == "callgraph_up":
            # Hojas primero: funciones sin callees pendientes.
            order = (
                f"{module_order_sql}, "
                "(SELECT COUNT(*) FROM call_edges ce "
                " JOIN functions ff ON ff.id = ce.callee_id "
                " WHERE ce.caller_id = f.id AND ff.status != 'matched') ASC, "
                "f.has_symbol DESC, f.size ASC, f.id ASC"
            )
        else:  # leaves_first o desconocido → mismo que callgraph_up
            order = (
                f"{module_order_sql}, "
                "(SELECT COUNT(*) FROM call_edges ce "
                " WHERE ce.caller_id = f.id) ASC, "
                "f.size ASC, f.id ASC"
            )

        sql = f"SELECT * FROM functions f WHERE {base_where} ORDER BY {order} LIMIT 1"
        cur = self.conn.execute(sql, params)
        row = cur.fetchone()
        if row is None:
            return None
        return FunctionRow(
            id=row["id"], module_name=row["module_name"],
            seg_number=row["seg_number"], seg_offset=row["seg_offset"],
            size=row["size"], name=row["name"], ordinal=row["ordinal"],
            is_exported=bool(row["is_exported"]),
            has_symbol=bool(row["has_symbol"]),
            status=row["status"], attempts=row["attempts"],
        )

    # ---- Hashes ------------------------------------------------------------

    def remember_hash(self, binary: str, sha256: str, size: int) -> None:
        self.conn.execute(
            """
            INSERT INTO expected_hashes (binary, sha256, size, source)
            VALUES (?, ?, ?, 'first-seen')
            ON CONFLICT(binary) DO NOTHING
            """,
            (binary, sha256, size),
        )

    def expected_hash(self, binary: str) -> tuple[str, int] | None:
        cur = self.conn.execute(
            "SELECT sha256, size FROM expected_hashes WHERE binary = ?",
            (binary,),
        )
        row = cur.fetchone()
        return (row["sha256"], row["size"]) if row else None

    # ---- Reporting ---------------------------------------------------------

    def progress_by_module(self) -> list[dict[str, Any]]:
        cur = self.conn.execute("SELECT * FROM v_progress_by_module ORDER BY module")
        return [dict(r) for r in cur.fetchall()]


def open_db(cfg: Config) -> DB:
    db = DB(cfg.paths.state_db)
    schema_path = cfg.paths.root / "state" / "schema.sql"
    db.init_schema(schema_path)
    return db
