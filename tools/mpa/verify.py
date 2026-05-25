"""Verificación determinista: byte-diff de funciones.

Una función está "matched" cuando los bytes que MSC4/MASM4 emite para ella
coinciden con los bytes correspondientes del binario original, ignorando los
sitios de relocalización (donde el loader inyecta direcciones).

Esto es el oráculo. El LLM nunca decide si algo es correcto; este módulo sí.
"""

from __future__ import annotations

from dataclasses import dataclass


@dataclass(frozen=True)
class DiffResult:
    matched: bool
    total_bytes: int
    diff_bytes: int
    first_diff_offset: int | None
    summary: str

    @property
    def match_pct(self) -> float:
        if self.total_bytes == 0:
            return 0.0
        return 100.0 * (self.total_bytes - self.diff_bytes) / self.total_bytes


def diff_bytes(
    expected: bytes,
    actual: bytes,
    *,
    ignore_offsets: set[int] | None = None,
    max_summary_lines: int = 16,
) -> DiffResult:
    """Compara dos buffers de bytes.

    ignore_offsets: offsets dentro de `expected` que deben considerarse "comodín"
    (típicamente los sitios donde el loader NE aplica fixups; allí los bytes
    pueden diferir legítimamente entre el .OBJ recompilado y el .EXE original).
    """
    ignore = ignore_offsets or set()
    n = min(len(expected), len(actual))
    diffs: list[int] = []
    for i in range(n):
        if i in ignore:
            continue
        if expected[i] != actual[i]:
            diffs.append(i)
    # Tamaños distintos cuentan como diff en la cola
    if len(expected) != len(actual):
        tail = abs(len(expected) - len(actual))
        diffs.extend(range(n, n + tail))

    summary_lines: list[str] = []
    for off in diffs[:max_summary_lines]:
        e = expected[off] if off < len(expected) else None
        a = actual[off] if off < len(actual) else None
        summary_lines.append(
            f"  +{off:#06x}  exp={_b(e)}  got={_b(a)}"
        )
    if len(diffs) > max_summary_lines:
        summary_lines.append(f"  ... y {len(diffs) - max_summary_lines} más")

    return DiffResult(
        matched=len(diffs) == 0,
        total_bytes=max(len(expected), len(actual)),
        diff_bytes=len(diffs),
        first_diff_offset=diffs[0] if diffs else None,
        summary="\n".join(summary_lines) if summary_lines else "OK",
    )


def _b(v: int | None) -> str:
    return f"{v:02x}" if v is not None else "--"


def hex_dump_diff(
    expected: bytes,
    actual: bytes,
    *,
    width: int = 16,
    context: int = 2,
    ignore_offsets: set[int] | None = None,
) -> str:
    """Hex dump lado a lado, mostrando sólo regiones con diferencias + contexto."""
    ignore = ignore_offsets or set()
    n = max(len(expected), len(actual))
    rows = (n + width - 1) // width
    diff_rows: set[int] = set()
    for i in range(n):
        if i in ignore:
            continue
        e = expected[i] if i < len(expected) else None
        a = actual[i] if i < len(actual) else None
        if e != a:
            diff_rows.add(i // width)

    if not diff_rows:
        return "(no diffs)"

    show_rows: set[int] = set()
    for r in diff_rows:
        for d in range(-context, context + 1):
            if 0 <= r + d < rows:
                show_rows.add(r + d)

    lines: list[str] = []
    last = -2
    for r in sorted(show_rows):
        if r > last + 1:
            lines.append("  ...")
        last = r
        off = r * width
        ee = expected[off : off + width]
        aa = actual[off : off + width]
        eh = " ".join(f"{b:02x}" for b in ee).ljust(width * 3 - 1)
        ah = " ".join(f"{b:02x}" for b in aa).ljust(width * 3 - 1)
        marker = "  " if r not in diff_rows else "!="
        lines.append(f"{off:08x}  {eh}  {marker}  {ah}")
    return "\n".join(lines)
