"""Errores tipados con instrucciones accionables.

Filosofía: si algo falla por falta de configuración o prereq, el usuario debe
recibir un mensaje que le diga exactamente qué hacer. Nunca silencio, nunca
mock implícito.
"""

from __future__ import annotations


class MPAError(Exception):
    """Base de todas las excepciones del harness."""


class PrereqMissingError(MPAError):
    """Una herramienta externa requerida no está instalada o no se encuentra."""

    def __init__(self, tool: str, install_hint: str) -> None:
        super().__init__(
            f"Prerrequisito ausente: {tool}\n\n"
            f"Cómo arreglarlo:\n  {install_hint}\n"
        )
        self.tool = tool


class OriginalBinaryMissingError(MPAError):
    """Falta una binaria original de Windows 1.03 en original/."""

    def __init__(self, name: str, expected_path: str) -> None:
        super().__init__(
            f"Binaria original ausente: {name}\n"
            f"  Esperada en: {expected_path}\n\n"
            f"Coloca una copia legítima de Windows 1.03 en original/.\n"
            f"Ver original/README.md.\n"
        )
        self.name = name


class ConfigError(MPAError):
    """Configuración inválida o incompleta."""


class NEParseError(MPAError):
    """Error parseando un binario en formato NE (New Executable)."""


class VerificationError(MPAError):
    """Una verificación determinista falló (bytes / píxeles)."""


class ToolchainError(MPAError):
    """El toolchain legacy (MSC4/MASM4 en DOSBox) falló al compilar/ensamblar."""

    def __init__(self, tool: str, exit_code: int, stderr: str) -> None:
        super().__init__(
            f"{tool} falló con exit code {exit_code}.\n"
            f"--- stderr ---\n{stderr}\n--------------"
        )
        self.tool = tool
        self.exit_code = exit_code
        self.stderr = stderr


class GhidraError(MPAError):
    """Ghidra headless falló."""
