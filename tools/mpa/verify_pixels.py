"""Verificación por framebuffer para display drivers.

Idea: ejecutar el mismo "test reel" de primitivas GDI bajo DOSBox-X dos veces
(driver original vs driver recompilado), capturar el framebuffer y diffear.

El test reel es una secuencia determinista de llamadas GDI (líneas, rects,
BitBlts con todos los ROPs, texto en todas las fuentes registradas, scroll,
clipping). Vive en `tests/pixel_reel/` y se ensambla en un .EXE de Windows
1.x mínimo que arranca el driver, dibuja, y vuelca el framebuffer a un
archivo a través de un hook que añadimos al runtime de DOSBox-X.

Este módulo es la parte Python que orquesta el diff de los volcados.

NOTA: Este módulo es funcional para el diff. La parte de generar el reel y
hookear DOSBox-X requiere setup adicional documentado en
`docs/display_drivers.md`. Hasta que esté en su sitio, `run_pixel_diff` falla
con PrereqMissingError indicando qué falta.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from .errors import PrereqMissingError


@dataclass(frozen=True)
class PixelDiffResult:
    matched: bool
    total_pixels: int
    diff_pixels: int
    diff_pct: float
    summary: str


def diff_framebuffers(
    expected: bytes,
    actual: bytes,
    *,
    width: int,
    height: int,
    bytes_per_pixel: int = 1,
    tolerance_pct: float = 0.0,
) -> PixelDiffResult:
    """Compara dos framebuffers raw."""
    expected_pixels = width * height
    if len(expected) != len(actual):
        return PixelDiffResult(
            matched=False, total_pixels=expected_pixels,
            diff_pixels=expected_pixels,
            diff_pct=100.0,
            summary=f"tamaños distintos: {len(expected)} vs {len(actual)}",
        )
    diffs = 0
    stride = bytes_per_pixel
    n = min(len(expected), len(actual))
    for i in range(0, n, stride):
        if expected[i : i + stride] != actual[i : i + stride]:
            diffs += 1
    pct = 100.0 * diffs / expected_pixels if expected_pixels else 0.0
    matched = pct <= tolerance_pct
    return PixelDiffResult(
        matched=matched, total_pixels=expected_pixels,
        diff_pixels=diffs, diff_pct=pct,
        summary=f"{diffs}/{expected_pixels} px diff ({pct:.4f}%)",
    )


def run_pixel_diff(
    *,
    reel_path: Path,
    original_driver: Path,
    candidate_driver: Path,
    dosbox_x_binary: Path,
    work_dir: Path,
    tolerance_pct: float = 0.0,
) -> PixelDiffResult:
    """Ejecuta el test reel dos veces en DOSBox-X y diffea framebuffers.

    Por ahora levanta PrereqMissingError porque requiere:
    - DOSBox-X compilado con el hook de framebuffer-dump (parche en
      bootstrap/dosbox-x-fb-hook.patch, no incluido todavía).
    - El reel ensamblado en tests/pixel_reel/REEL.EXE.

    La estructura está aquí para que el agente NUNCA se invente
    verificación pixel-diff. Cuando tengas el setup, esta función se completa.
    """
    if not dosbox_x_binary.exists():
        raise PrereqMissingError(
            "dosbox-x con hook de framebuffer",
            "Ejecuta bash bootstrap/install-dosbox-x.sh y aplica "
            "el parche bootstrap/dosbox-x-fb-hook.patch (pendiente, ver "
            "docs/display_drivers.md).",
        )
    raise PrereqMissingError(
        "pixel-diff harness",
        "El test reel y el hook de framebuffer-dump aún no están "
        "implementados. Ver docs/display_drivers.md para el plan.",
    )
