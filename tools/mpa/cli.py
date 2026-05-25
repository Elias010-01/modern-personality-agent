"""CLI: punto de entrada del harness.

Subcomandos:
  doctor          → chequea prereqs (Ghidra, DOSBox-X, originals, KB)
  db-init         → inicializa schema en state/mpa.db
  index           → parsea originals y siembra DB
  analyze         → corre Ghidra headless sobre cada módulo y mergea funciones
  status          → dashboard de progreso
  next            → abre bundle de trabajo para la siguiente función
  open <id>       → abre bundle para una función concreta
  verify <id>     → compila attempt.c/.asm y diffea contra el binario
  kb-search <q>   → busca en la KB
  smoke           → smoke test del toolchain legacy
"""

from __future__ import annotations

import sys
from pathlib import Path
from typing import Annotated, Optional

import typer
from rich import print as rprint
from rich.console import Console
from rich.table import Table

from . import ghidra as gh
from . import indexer
from . import kb as kb_mod
from . import legacy_cc
from . import runner as run_mod
from .config import load_config
from .db import open_db
from .errors import MPAError

app = typer.Typer(no_args_is_help=True, add_completion=False, help=__doc__)
console = Console()


def _cfg_db():
    cfg = load_config()
    db = open_db(cfg)
    return cfg, db


@app.command()
def doctor() -> None:
    """Chequea prereqs y reporta estado."""
    try:
        cfg, _ = _cfg_db()
    except MPAError as exc:
        rprint(f"[red]✗[/red] config: {exc}")
        raise typer.Exit(1)
    rprint("[green]✓[/green] config cargada")

    checks = [
        ("Ghidra headless",       cfg.ghidra.analyze_headless),
        ("DOSBox-X binario",      cfg.dosbox.binary),
        ("Toolchain DOS (MSC4+MASM51)", cfg.dosbox.toolchain_dir / "MSC" / "BIN" / "CL.EXE"),
    ]
    for label, p in checks:
        if p.exists():
            rprint(f"[green]✓[/green] {label}: {p}")
        else:
            rprint(f"[yellow]○[/yellow] {label}: NO encontrado en {p}")

    if not cfg.paths.original.exists() or not any(cfg.paths.original.iterdir()):
        rprint("[yellow]○[/yellow] original/: vacío. Coloca tus binarios "
               "de Win 1.03 (ver original/README.md).")
    else:
        n = sum(1 for _ in cfg.paths.original.iterdir())
        rprint(f"[green]✓[/green] original/: {n} entradas")

    rprint("\nPara inicializar el state: [cyan]just db-init[/cyan]")


@app.command("db-init")
def db_init() -> None:
    """Inicializa el schema en state/mpa.db."""
    cfg, db = _cfg_db()
    rprint(f"[green]✓[/green] DB inicializada en {db.path}")
    rprint(f"  schema_version = {db.schema_version()}")


@app.command()
def index() -> None:
    """Parsea binarios en original/ y los siembra en la DB."""
    cfg, db = _cfg_db()
    try:
        results = indexer.index_all(cfg, db)
    except MPAError as exc:
        rprint(f"[red]✗ {exc}[/red]")
        raise typer.Exit(1)
    table = Table(title="Indexación")
    table.add_column("Módulo")
    table.add_column("Funciones sembradas (exports)", justify="right")
    for k, v in results.items():
        table.add_row(k, str(v))
    console.print(table)


@app.command()
def analyze(
    module: Annotated[Optional[str], typer.Argument(help="Sólo este módulo")] = None,
) -> None:
    """Lanza Ghidra headless sobre módulos indexados."""
    cfg, db = _cfg_db()
    targets = [t for t in cfg.targets if module is None or t.name == module]
    out_tmp = cfg.paths.logs
    out_tmp.mkdir(parents=True, exist_ok=True)
    for t in targets:
        bin_path = cfg.original_path(t)
        if not bin_path.exists():
            rprint(f"[yellow]○[/yellow] {t.name}: binario ausente, skip")
            continue
        rprint(f"[cyan]→[/cyan] importando y analizando {t.name}…")
        try:
            gh.import_and_analyze(cfg, bin_path, t.name)
            json_out = out_tmp / f"{t.name}.functions.json"
            functions = gh.export_functions(cfg, t.name, t.binary, json_out)
            ins, upd = indexer.merge_ghidra_functions(db, t.name, functions)
            db.mark_analyzed(t.name)
            rprint(f"  funciones: {len(functions)} (insertadas={ins} actualizadas={upd})")
        except MPAError as exc:
            rprint(f"[red]✗ {t.name}: {exc}[/red]")


@app.command()
def status() -> None:
    """Dashboard de progreso."""
    cfg, db = _cfg_db()
    rows = db.progress_by_module()
    if not rows:
        rprint("DB vacía. Ejecuta [cyan]just index[/cyan] primero.")
        return
    table = Table(title="Progreso por módulo")
    for col in ("module", "matched", "in_progress", "needs_human",
                "pending", "skipped", "total", "pct_matched"):
        table.add_column(col, justify="right" if col != "module" else "left")
    for r in rows:
        table.add_row(
            str(r["module"]),
            str(r["matched"] or 0),
            str(r["in_progress"] or 0),
            str(r["needs_human"] or 0),
            str(r["pending"] or 0),
            str(r["skipped"] or 0),
            str(r["total"] or 0),
            f"{r['pct_matched'] or 0:.2f}%",
        )
    console.print(table)


@app.command(name="next")
def next_cmd() -> None:
    """Crea el bundle para la siguiente función candidata."""
    cfg, db = _cfg_db()
    bundle = run_mod.open_work(cfg, db)
    if bundle is None:
        rprint("[green]Cola vacía o todas las funciones agotadas en intentos.[/green]")
        return
    rprint(f"[cyan]→[/cyan] función #{bundle.function_id} ({bundle.module}::{bundle.function_name})")
    rprint(f"  workspace: {bundle.workspace_dir}")
    rprint(f"  prompt:    {bundle.prompt_path}")
    rprint(f"  disasm:    {bundle.disasm_path}")
    rprint(f"  context:   {bundle.context_path}")


@app.command(name="open")
def open_cmd(fn_id: int) -> None:
    """Abre el bundle de una función concreta por id."""
    cfg, db = _cfg_db()
    bundle = run_mod.open_work(cfg, db, fn_id)
    if bundle is None:
        rprint(f"[red]Función {fn_id} no existe[/red]")
        raise typer.Exit(1)
    rprint(f"[cyan]→[/cyan] {bundle.workspace_dir}")


@app.command()
def verify(fn_id: int) -> None:
    """Compila attempt.c/.asm y diffea contra el binario original."""
    cfg, db = _cfg_db()
    try:
        outcome = run_mod.verify_attempt(cfg, db, fn_id)
    except MPAError as exc:
        rprint(f"[red]✗ {exc}[/red]")
        raise typer.Exit(1)
    if outcome.matched:
        rprint(f"[green]✓ MATCH[/green] tras {outcome.attempts_so_far} intento(s)")
    else:
        rprint(f"[red]✗ MISMATCH[/red] diff_bytes={outcome.diff_bytes} "
               f"intento {outcome.attempts_so_far}/{cfg.runner.max_attempts}")
        rprint(f"status nuevo: [yellow]{outcome.new_status}[/yellow]")
        rprint(outcome.summary)


@app.command(name="kb-search")
def kb_search(query: str, limit: int = 20) -> None:
    """Busca en la knowledge base."""
    cfg, _ = _cfg_db()
    try:
        hits = kb_mod.search(cfg, query, limit=limit)
    except MPAError as exc:
        rprint(f"[red]✗ {exc}[/red]")
        raise typer.Exit(1)
    if not hits:
        rprint("(sin resultados)")
        return
    for h in hits:
        rprint(f"[cyan]{h.source}[/cyan]/{h.file}:{h.line}  {h.text}")


@app.command()
def smoke() -> None:
    """Compila un .C trivial con el toolchain legacy."""
    cfg, _ = _cfg_db()
    try:
        ok = legacy_cc.smoke_test(cfg)
    except MPAError as exc:
        rprint(f"[red]✗ {exc}[/red]")
        raise typer.Exit(1)
    if ok:
        rprint("[green]✓[/green] toolchain legacy operativo")
    else:
        rprint("[red]✗[/red] toolchain legacy no produjo .OBJ")
        raise typer.Exit(1)


def main() -> None:
    try:
        app()
    except MPAError as exc:
        rprint(f"[red]{exc}[/red]")
        sys.exit(1)


if __name__ == "__main__":
    main()
