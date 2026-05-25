-- modern-personality-agent: esquema de state
--
-- Este esquema es la memoria persistente del agente. Toda decisión, todo
-- intento, todo símbolo descubierto se guarda aquí. El agente NO recuerda
-- nada entre invocaciones; lo lee de esta DB.
--
-- Versionado vía PRAGMA user_version. Las migraciones son aditivas.

PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;
PRAGMA user_version = 1;

-- Módulos = binarios NE individuales (KERNEL.EXE, GDI.EXE, CGA.DRV, ...)
CREATE TABLE IF NOT EXISTS modules (
    name              TEXT    PRIMARY KEY,            -- "KERNEL", "CGA", ...
    binary            TEXT    NOT NULL,               -- "KERNEL.EXE"
    kind              TEXT    NOT NULL,               -- executable | driver | display_driver
    sha256            TEXT    NOT NULL,               -- hash del binario original
    size              INTEGER NOT NULL,               -- bytes del binario
    has_debug_symbols INTEGER NOT NULL DEFAULT 0,
    verify_mode       TEXT    NOT NULL DEFAULT 'binary',
    indexed_at        TEXT    NOT NULL DEFAULT (datetime('now')),
    analyzed_at       TEXT,                           -- timestamp de análisis Ghidra
    notes             TEXT
);

-- Segmentos del NE (code segments numerados 1..N)
CREATE TABLE IF NOT EXISTS segments (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    module_name       TEXT    NOT NULL REFERENCES modules(name) ON DELETE CASCADE,
    seg_number        INTEGER NOT NULL,               -- ordinal del segmento en NE
    kind              TEXT    NOT NULL,               -- code | data | resource
    file_offset       INTEGER NOT NULL,               -- offset en el .EXE
    size              INTEGER NOT NULL,               -- bytes
    UNIQUE(module_name, seg_number)
);

-- Funciones identificadas. Una fila por función a decompilar.
-- Address = (segment_number, offset_in_segment). Identidad estable.
CREATE TABLE IF NOT EXISTS functions (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    module_name       TEXT    NOT NULL REFERENCES modules(name) ON DELETE CASCADE,
    seg_number        INTEGER NOT NULL,
    seg_offset        INTEGER NOT NULL,
    size              INTEGER NOT NULL,                -- bytes de la función
    name              TEXT,                            -- nombre si es exportada o si tenía símbolo
    ordinal           INTEGER,                         -- export ordinal del NE si aplica
    is_exported       INTEGER NOT NULL DEFAULT 0,
    has_symbol        INTEGER NOT NULL DEFAULT 0,      -- nombre vino de slack-space symbols
    -- Estado del progreso
    status            TEXT    NOT NULL DEFAULT 'pending',
                                  -- pending | in_progress | matched | needs_human | skipped
    attempts          INTEGER NOT NULL DEFAULT 0,
    last_attempt_at   TEXT,
    matched_at        TEXT,
    last_diff_bytes   INTEGER,                         -- bytes diferentes en el último intento
    last_diff_summary TEXT,                            -- texto breve del último diff
    -- Trazabilidad
    workspace_path    TEXT,                            -- workspaces/<module>/<id>/
    source_path       TEXT,                            -- relativo al repo upstream
    UNIQUE(module_name, seg_number, seg_offset)
);

CREATE INDEX IF NOT EXISTS idx_functions_status   ON functions(status);
CREATE INDEX IF NOT EXISTS idx_functions_module   ON functions(module_name, status);
CREATE INDEX IF NOT EXISTS idx_functions_exported ON functions(is_exported, ordinal);

-- Edges del call graph. Origen y destino son function ids.
-- Un edge puede ser indirecto (jump table, callback) → marcamos confidence.
CREATE TABLE IF NOT EXISTS call_edges (
    caller_id   INTEGER NOT NULL REFERENCES functions(id) ON DELETE CASCADE,
    callee_id   INTEGER NOT NULL REFERENCES functions(id) ON DELETE CASCADE,
    kind        TEXT    NOT NULL DEFAULT 'direct',   -- direct | indirect | tail
    confidence  REAL    NOT NULL DEFAULT 1.0,         -- 0..1
    PRIMARY KEY(caller_id, callee_id, kind)
);

CREATE INDEX IF NOT EXISTS idx_callees ON call_edges(caller_id);
CREATE INDEX IF NOT EXISTS idx_callers ON call_edges(callee_id);

-- Tipos compartidos. El agente los lee y escribe; nunca redefine localmente.
CREATE TABLE IF NOT EXISTS types (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    name            TEXT    NOT NULL UNIQUE,
    kind            TEXT    NOT NULL,                  -- struct | union | enum | typedef | primitive
    size_bytes      INTEGER,
    definition_c    TEXT    NOT NULL,                  -- texto C de la definición
    defined_in      TEXT,                              -- módulo donde se introdujo
    confidence      REAL    NOT NULL DEFAULT 0.5,
    notes           TEXT,
    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

-- Símbolos descubiertos (de slack space, exports, o inferencia).
-- Tabla separada de functions para poder registrar también globals/data.
CREATE TABLE IF NOT EXISTS symbols (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    module_name  TEXT    NOT NULL REFERENCES modules(name) ON DELETE CASCADE,
    name         TEXT    NOT NULL,
    seg_number   INTEGER NOT NULL,
    seg_offset   INTEGER NOT NULL,
    kind         TEXT    NOT NULL,                     -- function | global | const | label
    source       TEXT    NOT NULL,                     -- slack | export | inferred | manual
    type_id      INTEGER REFERENCES types(id),
    notes        TEXT,
    UNIQUE(module_name, name)
);

CREATE INDEX IF NOT EXISTS idx_symbols_addr ON symbols(module_name, seg_number, seg_offset);

-- Intentos de decompilación. Una fila por iteración del agente sobre una función.
-- Sirve para auditoría y para dar contexto al agente en reintentos.
CREATE TABLE IF NOT EXISTS attempts (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    function_id     INTEGER NOT NULL REFERENCES functions(id) ON DELETE CASCADE,
    started_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    finished_at     TEXT,
    outcome         TEXT,                              -- matched | mismatch | compile_error | timeout | other
    diff_bytes      INTEGER,
    diff_summary    TEXT,                              -- primer kB del diff hex
    compile_log     TEXT,                              -- stderr/stdout del legacy_cc
    source_c        TEXT,                              -- el .C que se intentó
    source_asm      TEXT,                              -- el .ASM si aplica
    rationale       TEXT,                              -- nota libre del agente
    model           TEXT,                              -- qué modelo lo intentó
    tokens_in       INTEGER,
    tokens_out      INTEGER
);

CREATE INDEX IF NOT EXISTS idx_attempts_function ON attempts(function_id, started_at);

-- Decisiones arquitectónicas (cross-cutting). Permite al agente "razonar"
-- consistentemente entre sesiones.
CREATE TABLE IF NOT EXISTS decisions (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp   TEXT    NOT NULL DEFAULT (datetime('now')),
    scope       TEXT    NOT NULL,                       -- "global" | module | function
    scope_ref   TEXT,                                   -- nombre del módulo o function id
    title       TEXT    NOT NULL,
    rationale   TEXT    NOT NULL,
    superseded_by INTEGER REFERENCES decisions(id)
);

-- Hashes esperados de las binarias originales (para detectar copias corruptas).
CREATE TABLE IF NOT EXISTS expected_hashes (
    binary  TEXT PRIMARY KEY,
    sha256  TEXT NOT NULL,
    size    INTEGER NOT NULL,
    source  TEXT NOT NULL                               -- "first-seen" | "manual"
);

-- Vistas de conveniencia para dashboards
CREATE VIEW IF NOT EXISTS v_progress_by_module AS
SELECT
    m.name                                                AS module,
    COUNT(f.id)                                           AS total,
    SUM(CASE WHEN f.status = 'matched'      THEN 1 ELSE 0 END) AS matched,
    SUM(CASE WHEN f.status = 'in_progress'  THEN 1 ELSE 0 END) AS in_progress,
    SUM(CASE WHEN f.status = 'needs_human'  THEN 1 ELSE 0 END) AS needs_human,
    SUM(CASE WHEN f.status = 'pending'      THEN 1 ELSE 0 END) AS pending,
    SUM(CASE WHEN f.status = 'skipped'      THEN 1 ELSE 0 END) AS skipped,
    ROUND(100.0 * SUM(CASE WHEN f.status = 'matched' THEN 1 ELSE 0 END) /
          NULLIF(COUNT(f.id), 0), 2)                      AS pct_matched
FROM modules m
LEFT JOIN functions f ON f.module_name = m.name
GROUP BY m.name;
