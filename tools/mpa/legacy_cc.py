"""Wrapper para el toolchain legacy (MSC 4.0 / MASM 4.0) en DOSBox-X.

Estrategia:
- DOSBox-X corre en modo headless (-exit) con una imagen de disco que tiene
  preinstalados MSC 4.0 y MASM 4.0 (la imagen la prepara
  bootstrap/install-legacy-toolchain.sh y vive en
  ~/opt/legacy-toolchain/dos.img).
- Por cada compilación: copiamos los .C/.ASM al directorio compartido,
  generamos un .BAT que ejecuta CL/MASM con los flags adecuados, lanzamos
  DOSBox-X con -c "MOUNT C ..." -c "C:" -c "BUILD.BAT" -exit, y recogemos
  los .OBJ resultantes + el log.
- Batching: en lugar de un .BAT por archivo, generamos uno que compila todo
  el bundle del runner en una sola invocación de DOSBox-X. Eso baja el
  overhead de arranque de DOSBox-X de ~1.5s a una vez por bundle.

Este módulo NO comprueba que el toolchain esté presente al importarse; lo
hace en compile() y lanza PrereqMissingError con instrucciones.
"""

from __future__ import annotations

import shutil
import subprocess
import tempfile
from dataclasses import dataclass
from pathlib import Path

from .config import Config
from .errors import PrereqMissingError, ToolchainError


@dataclass(frozen=True)
class CompileUnit:
    """Una unidad de compilación: un .C o un .ASM con su nombre lógico."""
    name: str           # p.e. "kernel_lock"
    kind: str           # "c" | "asm"
    source: str         # contenido fuente


@dataclass(frozen=True)
class CompileResult:
    name: str
    obj_bytes: bytes | None     # contenido del .OBJ; None si falló
    success: bool
    log: str
    duration_s: float


def _check_prereqs(cfg: Config) -> None:
    if not cfg.dosbox.binary.exists():
        raise PrereqMissingError(
            "DOSBox-X",
            f"Ejecuta bash bootstrap/install-dosbox-x.sh\n"
            f"  Esperado en: {cfg.dosbox.binary}",
        )
    cl_exe = cfg.dosbox.toolchain_dir / "MSC" / "BIN" / "CL.EXE"
    if not cl_exe.exists():
        raise PrereqMissingError(
            "Toolchain DOS (MSC 4.0 + MASM 5.1)",
            f"Ejecuta los scripts:\n"
            f"  bash bootstrap/build-toolchain-tree.sh\n"
            f"  bash bootstrap/organize-toolchain.sh\n"
            f"  bash bootstrap/finalize-toolchain.sh\n"
            f"  Esperado: {cl_exe}",
        )


def _build_autoexec(units: list[CompileUnit], cfg: Config, work: Path) -> str:
    """Genera el [autoexec] del dosbox.conf que compila las units.

    El output de CL/MASM no llega al stdout del proceso DOSBox-X (va a
    pantalla SDL virtual). Por eso redirigimos cada invocación a un
    fichero D:\\<NAME>.LOG y los leemos tras la sesión.

    Por unidad fallida creamos un marker D:\\<NAME>.FAIL.
    """
    lines: list[str] = []
    lines.append(f'MOUNT C "{cfg.dosbox.toolchain_dir}"')
    lines.append(f'MOUNT D "{work}"')
    lines.append("PATH=C:\\MSC\\BIN;C:\\MASM")
    lines.append("SET INCLUDE=C:\\MSC\\INCLUDE")
    lines.append("SET LIB=C:\\MSC\\LIB")
    lines.append("SET TMP=D:\\")
    lines.append("D:")
    model = cfg.legacy.memory_model.upper()
    for u in units:
        name = u.name.upper()[:8]
        if u.kind == "c":
            # MSC 4.0: CL /c /A<model> /Gs /Zl <name>.C
            # /Gs = no stack checking ; /Zl = no default lib references
            lines.append(f"CL /c /A{model} /Gs /Zl {name}.C > {name}.LOG")
            lines.append(f"if errorlevel 1 echo FAIL > {name}.FAIL")
        elif u.kind == "asm":
            # MASM 5.1: MASM <name>,,,; (el ; final suprime preguntas;
            # las comas explícitas posicionan .obj, .lst, .crf en defaults)
            lines.append(f"MASM {name},,,; > {name}.LOG")
            lines.append(f"if errorlevel 1 echo FAIL > {name}.FAIL")
        else:
            raise ValueError(f"kind desconocido: {u.kind}")
    lines.append("echo DONE > MPA_DONE.TXT")
    lines.append("exit")
    return "\n".join(lines) + "\n"


def compile_bundle(cfg: Config, units: list[CompileUnit]) -> list[CompileResult]:
    """Compila/ensambla un bundle de unidades en una sola sesión DOSBox-X.

    Devuelve un CompileResult por unidad, en el mismo orden.
    """
    if not units:
        return []

    _check_prereqs(cfg)

    import time
    t0 = time.monotonic()

    with tempfile.TemporaryDirectory(prefix="mpa-cc-") as td:
        work = Path(td)
        # Copia fuentes con nombres 8.3 mayúsculas (DOS los espera así)
        for u in units:
            ext = "C" if u.kind == "c" else "ASM"
            name83 = u.name.upper()[:8]
            (work / f"{name83}.{ext}").write_text(u.source, encoding="latin-1", newline="\r\n")

        # Genera dosbox.conf con [autoexec]. El uso de -c args no es fiable;
        # el autoexec section sí lo es.
        autoexec = _build_autoexec(
            [CompileUnit(name=u.name.upper()[:8], kind=u.kind, source=u.source)
             for u in units],
            cfg, work,
        )
        conf_path = work / "dosbox.conf"
        conf_path.write_text(
            "[sdl]\noutput=surface\nautolock=false\n\n"
            "[dosbox]\nmachine=svga_s3\nmemsize=16\n\n"
            "[cpu]\ncore=auto\ncputype=auto\n\n"
            "[autoexec]\n" + autoexec,
            encoding="ascii",
        )

        # Lanza DOSBox-X con autoexec, silent y fastlaunch.
        # El output del DOS interno NO llega a stdout (va a SDL virtual).
        # Por eso cada CL/MASM redirige a su <NAME>.LOG dentro de D:.
        cmd = [
            str(cfg.dosbox.binary),
            "-conf", str(conf_path),
            "-silent", "-fastlaunch", "-nogui", "-nomenu",
            "-exit",
        ]
        env = {"SDL_AUDIODRIVER": "dummy"}
        import os
        full_env = {**os.environ, **env}
        try:
            proc = subprocess.run(
                cmd, env=full_env,
                capture_output=True, text=True,
                timeout=cfg.dosbox.cc_timeout * max(2, len(units)),
            )
        except subprocess.TimeoutExpired as exc:
            raise ToolchainError(
                "DOSBox-X (CL/MASM)", -1,
                f"timeout tras {exc.timeout}s",
            ) from exc

        dosbox_log = proc.stdout + "\n" + proc.stderr

        # Recoge los .OBJ y sus logs por unidad
        results: list[CompileResult] = []
        for u in units:
            name83 = u.name.upper()[:8]
            obj_path = work / f"{name83}.OBJ"
            log_path = work / f"{name83}.LOG"
            fail_path = work / f"{name83}.FAIL"
            unit_log = log_path.read_text(encoding="latin-1", errors="replace") \
                if log_path.exists() else ""
            failed = fail_path.exists()
            success = obj_path.exists() and not failed
            obj_bytes = obj_path.read_bytes() if success else None
            results.append(CompileResult(
                name=u.name,
                obj_bytes=obj_bytes,
                success=success,
                log=unit_log if unit_log else dosbox_log[-2000:],
                duration_s=time.monotonic() - t0,
            ))

    return results


def _slice_log(full_log: str, name83: str) -> str:
    """Extrae las líneas del log relevantes a una unidad concreta."""
    lines = full_log.splitlines()
    # Buscamos el marcador "--- NAME.{c|asm} ---" y devolvemos hasta el siguiente "---"
    out: list[str] = []
    capturing = False
    for ln in lines:
        marker = f"--- {name83.lower()}."
        if ln.lower().startswith(f"--- {name83.lower()}"):
            capturing = True
            out.append(ln)
            continue
        if capturing:
            if ln.startswith("--- "):
                break
            out.append(ln)
    return "\n".join(out) if out else full_log[-2000:]


def smoke_test(cfg: Config) -> bool:
    """Compila un .C trivial. Útil para `just doctor`.

    Nota: MSC 4.0 (1986) sólo entiende K&R C, no ANSI. Por eso los parámetros
    se declaran después del paréntesis y no dentro.
    """
    src = (
        "int mpa_smoke(x)\r\n"
        "int x;\r\n"
        "{\r\n"
        "    return x + 1;\r\n"
        "}\r\n"
    )
    results = compile_bundle(cfg, [CompileUnit(name="SMOKE", kind="c", source=src)])
    return bool(results and results[0].success)
