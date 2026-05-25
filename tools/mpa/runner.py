"""Runner del loop agent-step.

Estados de una función:
  pending  → in_progress (cuando se le da al agente)
  in_progress → matched | needs_human (tras N intentos fallidos)

Operaciones del runner:
  - next: elige la siguiente función según priority_strategy y crea el
    bundle de trabajo en workspaces/. Devuelve el path al prompt.
  - verify: toma una función con attempt.c/.asm en su workspace, compila,
    diffea contra el binario, registra el intento y actualiza la DB.

El runner NO llama a un LLM. La llamada al LLM es responsabilidad de quien
consume el bundle (sesión Cascade humana, script de Anthropic API, etc.).
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from . import legacy_cc
from .config import Config
from .db import DB, FunctionRow
from .errors import MPAError, OriginalBinaryMissingError
from .ne import parse_ne
from .prompts import WorkBundle, build_bundle
from .verify import diff_bytes, hex_dump_diff


@dataclass
class VerifyOutcome:
    matched: bool
    diff_bytes: int
    summary: str
    compile_log: str
    attempts_so_far: int
    new_status: str


def pick_next(cfg: Config, db: DB) -> FunctionRow | None:
    return db.next_function_for_work(
        priority_strategy=cfg.runner.priority_strategy,
        module_priority=cfg.module_priority,
        max_attempts=cfg.runner.max_attempts,
    )


def open_work(cfg: Config, db: DB, fn_id: int | None = None) -> WorkBundle | None:
    """Si fn_id es None, elige la siguiente. Crea el bundle y marca in_progress."""
    if fn_id is None:
        fn = pick_next(cfg, db)
        if fn is None:
            return None
    else:
        fn = db.get_function(fn_id)
        if fn is None:
            return None

    bundle = build_bundle(cfg, db, fn)
    if fn.status == "pending":
        db.set_function_status(fn.id, "in_progress")
    return bundle


def _read_attempt(workspace: Path) -> tuple[str | None, str | None]:
    """Devuelve (source_c, source_asm) leyendo el workspace."""
    c_path = workspace / "attempt.c"
    asm_path = workspace / "attempt.asm"
    src_c = c_path.read_text(encoding="latin-1") if c_path.exists() else None
    src_asm = asm_path.read_text(encoding="latin-1") if asm_path.exists() else None
    return src_c, src_asm


def verify_attempt(cfg: Config, db: DB, fn_id: int) -> VerifyOutcome:
    """Compila el attempt y diffea contra los bytes originales."""
    fn = db.get_function(fn_id)
    if fn is None:
        raise MPAError(f"Función {fn_id} no existe en la DB")

    # Localiza workspace
    target = next((t for t in cfg.targets if t.name == fn.module_name), None)
    if target is None:
        raise MPAError(f"Módulo {fn.module_name} no está en targets.toml")

    bundle = build_bundle(cfg, db, fn)
    src_c, src_asm = _read_attempt(bundle.workspace_dir)
    if src_c is None and src_asm is None:
        raise MPAError(
            f"Falta attempt.c o attempt.asm en {bundle.workspace_dir}.\n"
            f"El agente debe escribir el código antes de verificar."
        )

    # Compila
    units = []
    if src_c is not None:
        units.append(legacy_cc.CompileUnit(name=f"F{fn.id:05d}", kind="c", source=src_c))
    if src_asm is not None:
        units.append(legacy_cc.CompileUnit(name=f"F{fn.id:05d}", kind="asm", source=src_asm))

    results = legacy_cc.compile_bundle(cfg, units)
    compile_log = "\n".join(r.log for r in results)
    if not all(r.success for r in results):
        attempts_so_far = db.increment_attempts(fn_id)
        new_status = "needs_human" if attempts_so_far >= cfg.runner.max_attempts else "in_progress"
        db.set_function_status(fn_id, new_status, diff_bytes=None,
                               diff_summary="compile_error")
        db.record_attempt(
            function_id=fn_id, outcome="compile_error",
            compile_log=compile_log, source_c=src_c, source_asm=src_asm,
        )
        return VerifyOutcome(
            matched=False, diff_bytes=-1,
            summary="compilación falló",
            compile_log=compile_log,
            attempts_so_far=attempts_so_far,
            new_status=new_status,
        )

    # Extrae los bytes de código del .OBJ. MSC4 emite OMF; necesitamos
    # parsear el segmento de código. Implementación mínima: nos quedamos con
    # el contenido del primer LEDATA del primer SEGDEF de tipo CODE.
    obj_blob = b""
    for r in results:
        if r.obj_bytes:
            obj_blob += r.obj_bytes
    actual = _extract_code_from_omf(obj_blob)

    # Bytes esperados: del binario original
    bin_path = cfg.original_path(target)
    if not bin_path.exists():
        raise OriginalBinaryMissingError(target.binary, str(bin_path))
    mod = parse_ne(bin_path)
    expected = mod.read_at(fn.seg_number, fn.seg_offset, fn.size)

    diff = diff_bytes(expected, actual)
    dump = hex_dump_diff(expected, actual)

    attempts_so_far = db.increment_attempts(fn_id)
    if diff.matched:
        new_status = "matched"
    elif attempts_so_far >= cfg.runner.max_attempts:
        new_status = "needs_human"
    else:
        new_status = "in_progress"

    db.set_function_status(
        fn_id, new_status,
        diff_bytes=diff.diff_bytes, diff_summary=dump[:2000],
    )
    db.record_attempt(
        function_id=fn_id,
        outcome="matched" if diff.matched else "mismatch",
        diff_bytes=diff.diff_bytes,
        diff_summary=dump[:8000],
        compile_log=compile_log,
        source_c=src_c, source_asm=src_asm,
    )

    return VerifyOutcome(
        matched=diff.matched, diff_bytes=diff.diff_bytes,
        summary=diff.summary, compile_log=compile_log,
        attempts_so_far=attempts_so_far, new_status=new_status,
    )


# ---- OMF parsing (mínimo) -----------------------------------------------------

# OMF record types (Microsoft Object Module Format)
_THEADR = 0x80
_LEDATA = 0xA0
_LIDATA = 0xA2
_SEGDEF = 0x98
_FIXUPP = 0x9C
_MODEND = 0x8A


def _extract_code_from_omf(blob: bytes) -> bytes:
    """Extrae los bytes de código del primer LEDATA encontrado.

    Implementación mínima suficiente para una función "compilada en aislamiento"
    que produce un único .OBJ con un único segmento de código y un único LEDATA.
    Para casos más complejos (varios LEDATA, LIDATA, FIXUPP que mezcla) hay que
    extender este parser.
    """
    if not blob:
        return b""
    out = bytearray()
    pos = 0
    n = len(blob)
    while pos < n:
        if pos + 3 > n:
            break
        rec_type = blob[pos]
        rec_len = int.from_bytes(blob[pos + 1 : pos + 3], "little")
        body_start = pos + 3
        body_end = body_start + rec_len - 1   # último byte es checksum
        if body_end > n:
            break
        body = blob[body_start:body_end]
        if rec_type == _LEDATA:
            # body: SEGIDX(1-2 bytes) + offset(WORD) + data(...)
            i = 0
            seg_idx = body[i]
            i += 1
            if seg_idx & 0x80:        # forma extendida 2 bytes
                seg_idx = ((seg_idx & 0x7F) << 8) | body[i]
                i += 1
            # offset
            i += 2
            out.extend(body[i:])
        pos = body_end + 1            # +1 por el byte de checksum
    return bytes(out)
