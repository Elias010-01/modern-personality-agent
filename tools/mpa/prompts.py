"""Plantillas de prompt para el agente.

El runner construye un "bundle" de contexto que es texto puro (no API call)
y lo escribe a disco. El usuario, o una sesión de Cascade, lo consume.

Cuando se quiera automatizar la llamada a un LLM (Anthropic API,
OpenAI-compatible, etc.) bastará con leer el bundle y enviarlo. Por ahora
mantengo el path desacoplado para evitar lock-in.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from .config import Config
from .db import DB, FunctionRow


SYSTEM_PROMPT = """\
Eres un decompilador matching para Windows 1.03 (1985). Tu trabajo es
convertir disassembly x86 16-bit en C (Microsoft C 4.0) o ASM (MASM 4.0)
que, al recompilarse, produzca BYTES IDÉNTICOS a la sección original.

Reglas duras:
1. El criterio de "hecho" es matching binario. Bonito C que no matchea = fallo.
2. Convención de llamada por defecto: Pascal (callee cleanup, args en orden
   directo). Marca exports con `__export __loadds` cuando aplique.
3. Modelo de memoria medium (M): código far, datos near.
4. NO inventes tipos. Antes de definir un struct, busca en la base de tipos
   compartida. Si necesitas uno nuevo, decláralo y dilo en la nota.
5. NO inventes interrupciones ni offsets de hardware. Búscalos en la KB.
6. Si dudas entre dos formas que matchearían, elige la más simple/idiomática
   para MSC 4.0 de la época.
7. Si el disassembly contiene patrones que MSC 4.0 no podría haber emitido
   (p.ej. uso explícito de DI/SI sin razón en C), proponlo como ASM puro.

Salida obligatoria:
- Bloque ```c o ```asm con el código.
- Línea final: RATIONALE: <una frase explicando por qué eso matcheará>.
"""


@dataclass(frozen=True)
class WorkBundle:
    function_id: int
    function_name: str
    module: str
    workspace_dir: Path
    prompt_path: Path
    disasm_path: Path
    context_path: Path


def build_bundle(
    cfg: Config, db: DB, fn: FunctionRow,
) -> WorkBundle:
    """Construye el directorio de trabajo y los ficheros de contexto.

    Estructura:
      workspaces/<MODULE>/<fn_id>__<name_or_addr>/
        ├── prompt.md          # qué pedir al agente
        ├── disasm.txt         # output de Ghidra para esta función
        ├── context.md         # tipos relevantes, callees ya matched, KB hits
        ├── attempt.c          # (a rellenar por el agente)
        └── attempt.asm        # (a rellenar por el agente, si aplica)
    """
    name = fn.name or f"sub_{fn.seg_number:02d}_{fn.seg_offset:04x}"
    safe = "".join(c if c.isalnum() or c in "._-" else "_" for c in name)
    ws_dir = cfg.paths.workspaces / fn.module_name / f"{fn.id:06d}__{safe}"
    ws_dir.mkdir(parents=True, exist_ok=True)

    disasm_path = ws_dir / "disasm.txt"
    context_path = ws_dir / "context.md"
    prompt_path = ws_dir / "prompt.md"

    # Disassembly: si Ghidra ya lo exportó, usarlo. Si no, generarlo ahora.
    # Si Ghidra no está disponible o falla, dejar placeholder para no romper.
    if not disasm_path.exists():
        try:
            from . import ghidra as gh
            # El nombre del binario lo sacamos del targets.toml (ej KERNEL.EXE)
            target = next(
                (t for t in cfg.targets if t.name == fn.module_name), None,
            )
            bin_name = target.binary if target else f"{fn.module_name}.EXE"
            gh.export_disassembly(
                cfg,
                project_name=fn.module_name,
                binary_name=bin_name,
                seg=fn.seg_number,
                off=fn.seg_offset,
                out_path=disasm_path,
            )
        except Exception as exc:  # pragma: no cover (Ghidra optional)
            disasm_path.write_text(
                f"# disassembly no generado automáticamente\n"
                f"# motivo: {type(exc).__name__}: {exc}\n"
                f"# regenera manualmente con: mpa disasm {fn.id}\n",
                encoding="utf-8",
            )

    # Context: callees ya matched, tipos relevantes, intentos previos
    context_path.write_text(_build_context(db, fn), encoding="utf-8")

    # Prompt
    prompt_path.write_text(_build_prompt(cfg, db, fn), encoding="utf-8")

    return WorkBundle(
        function_id=fn.id,
        function_name=name,
        module=fn.module_name,
        workspace_dir=ws_dir,
        prompt_path=prompt_path,
        disasm_path=disasm_path,
        context_path=context_path,
    )


def _build_context(db: DB, fn: FunctionRow) -> str:
    sections: list[str] = []
    sections.append(f"# Contexto para {fn.module_name}::{fn.name or 'sub'}")
    sections.append("")
    sections.append(f"- Función ID: {fn.id}")
    sections.append(f"- Dirección: seg {fn.seg_number}, offset {fn.seg_offset:#06x}")
    sections.append(f"- Tamaño: {fn.size} bytes")
    sections.append(f"- Exportada: {fn.is_exported}")
    sections.append(f"- Tiene símbolo de debug: {fn.has_symbol}")
    sections.append(f"- Intentos previos: {fn.attempts}")
    sections.append("")

    # Callees
    cur = db.conn.execute(
        """
        SELECT f.id, f.name, f.status
        FROM call_edges ce
        JOIN functions f ON f.id = ce.callee_id
        WHERE ce.caller_id = ?
        ORDER BY f.module_name, f.seg_number, f.seg_offset
        """,
        (fn.id,),
    )
    callees = cur.fetchall()
    if callees:
        sections.append("## Callees")
        for c in callees:
            display_name = c["name"] or f"fn#{c['id']}"
            sections.append(f"- [{c['status']}] {display_name}")
        sections.append("")

    # Intentos previos
    cur = db.conn.execute(
        "SELECT outcome, diff_bytes, diff_summary, rationale "
        "FROM attempts WHERE function_id = ? ORDER BY id DESC LIMIT 3",
        (fn.id,),
    )
    prev = cur.fetchall()
    if prev:
        sections.append("## Intentos previos (los más recientes)")
        for p in prev:
            sections.append(f"- outcome={p['outcome']} diff={p['diff_bytes']}")
            if p["diff_summary"]:
                sections.append("```")
                sections.append(p["diff_summary"])
                sections.append("```")
            if p["rationale"]:
                sections.append(f"  rationale: {p['rationale']}")
        sections.append("")

    # Tipos compartidos relevantes (heurística: top 20 más usados)
    cur = db.conn.execute(
        "SELECT name, kind, size_bytes FROM types ORDER BY id LIMIT 20",
    )
    types = cur.fetchall()
    if types:
        sections.append("## Tipos compartidos (consulta antes de crear nuevos)")
        for t in types:
            sections.append(f"- {t['kind']} {t['name']} ({t['size_bytes']}B)")
        sections.append("")

    return "\n".join(sections)


def _build_prompt(cfg: Config, db: DB, fn: FunctionRow) -> str:
    pieces: list[str] = [SYSTEM_PROMPT, "", "---", ""]
    pieces.append(f"# Tarea: decompilar `{fn.module_name}::{fn.name or 'sub'}`")
    pieces.append("")
    pieces.append("Lee:")
    pieces.append("- `disasm.txt` → output de Ghidra para esta función")
    pieces.append("- `context.md` → callees, intentos previos, tipos disponibles")
    pieces.append("")
    pieces.append("Escribe tu propuesta en `attempt.c` (o `attempt.asm` si es ASM puro).")
    pieces.append("")
    pieces.append("Cuando estés satisfecho, lanza:")
    pieces.append("")
    pieces.append("```")
    pieces.append(f"just verify {fn.id}")
    pieces.append("```")
    pieces.append("")
    pieces.append("Esto compila con MSC 4.0 / MASM 4.0, diffea contra el binario "
                  "original, y actualiza la DB. Si no matchea, recibirás el diff "
                  "y podrás iterar.")
    target = next((t for t in cfg.targets if t.name == fn.module_name), None)
    if target and not target.has_debug_symbols:
        pieces.append("")
        pieces.append("⚠️  Este módulo NO tiene símbolos de debug. Apóyate en KB "
                      "(Ralf Brown, DDK samples) y en cross-ref con módulos "
                      "matched. Si es un display driver, considera modo pixel-diff.")
    return "\n".join(pieces)
