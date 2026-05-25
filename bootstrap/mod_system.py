#!/usr/bin/env python3
"""
mod_system.py - Sistema de mods para Windows 1.x reconstruido.

Diseno:
  - El codigo base en src/ es SAGRADO. Nunca se toca directamente.
  - Cada mod vive en mods/<mod-name>/ con su descripcion y sus patches.
  - Un mod = conjunto de cambios sobre los .asm de uno o varios modulos.
  - Aplicar un mod: 'apply':
      1. Restaura src/ desde backup limpio (deja src/ en estado base)
      2. Aplica las modificaciones del mod (copia/parchea .asm)
      3. Ejecuta smart_build.py -> built/
      4. Devuelve el resultado byte-exact verificable
  - 'list': lista mods disponibles
  - 'revert': restaura src/ al estado base (limpia mods)
  - 'create': inicializa un mod nuevo a partir de una plantilla

Formato de un mod (mods/<name>/):

  meta.toml          Descripcion (autor, fecha, descripcion humana)
  patches/<MOD>/seg<N>.asm   .asm completo o parcial que substituye al base
                              (cualquier fichero aqui se copia encima de src/)
  files/             Ficheros adicionales (e.g. resources binarios)
  apply.sh           (opcional) Script de aplicacion custom

Comandos:
  mod_system.py list
  mod_system.py create <name>
  mod_system.py apply <name>
  mod_system.py revert
  mod_system.py status

El estado actual (qu`e mod esta aplicado) se guarda en state/mod-applied.txt.
"""
from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
MODS = ROOT / "mods"
BACKUPS = ROOT / "backups"
STATE = ROOT / "state"


def find_latest_backup() -> Path | None:
    if not BACKUPS.exists():
        return None
    cands = sorted(BACKUPS.glob("windows103-recompilable-*.tar.gz"))
    return cands[-1] if cands else None


def get_applied_mod() -> str | None:
    p = STATE / "mod-applied.txt"
    if p.exists():
        return p.read_text().strip() or None
    return None


def set_applied_mod(name: str | None) -> None:
    STATE.mkdir(parents=True, exist_ok=True)
    p = STATE / "mod-applied.txt"
    p.write_text(name or "")


def restore_src_from_backup() -> None:
    """Restaura src/ desde el backup mas reciente."""
    backup = find_latest_backup()
    if not backup:
        print("ERROR: no hay backup de src/ disponible", file=sys.stderr)
        sys.exit(2)
    print(f"  Restaurando src/ desde {backup.name}")
    subprocess.run(["tar", "xzf", str(backup), "--overwrite", "src/"],
                   cwd=str(ROOT), check=True)


def cmd_list(args) -> int:
    if not MODS.exists():
        print("(no hay mods. Usa `mod_system.py create <nombre>` para crear uno)")
        return 0
    mods = sorted([d for d in MODS.iterdir() if d.is_dir()])
    if not mods:
        print("(no hay mods)")
        return 0
    applied = get_applied_mod()
    print(f"Mods disponibles ({len(mods)}):")
    for d in mods:
        meta = d / "meta.toml"
        marker = " [APLICADO]" if applied == d.name else ""
        title = ""
        if meta.exists():
            for line in meta.read_text().splitlines():
                if line.strip().startswith("title"):
                    title = line.split("=", 1)[1].strip().strip('"').strip("'")
                    break
        print(f"  - {d.name}{marker}: {title}")
    return 0


def cmd_status(args) -> int:
    applied = get_applied_mod()
    if applied:
        print(f"Mod aplicado: {applied}")
    else:
        print("Estado: src/ en BASE (sin mods aplicados)")
    return 0


def cmd_create(args) -> int:
    name = args.name
    target = MODS / name
    if target.exists():
        print(f"ERROR: mods/{name} ya existe", file=sys.stderr)
        return 1
    (target / "patches").mkdir(parents=True)
    (target / "files").mkdir()
    (target / "meta.toml").write_text(
        f'name = "{name}"\n'
        f'title = "(escribe aqui un titulo corto)"\n'
        f'author = "{os.environ.get("USER", "anon")}"\n'
        f'description = """\n'
        f'(escribe aqui que hace este mod)\n'
        f'"""\n')
    (target / "README.md").write_text(
        f"# Mod: {name}\n\n"
        f"Edita los .asm que quieras modificar en `patches/<MODULE>/seg<N>.asm`.\n"
        f"Para mods de operandos (cambiar constantes), edita los bytes en\n"
        f"el comentario `; HEX HEX HEX` directamente.\n"
        f"Para mods donde quieras que mande la instruccion legible, anade\n"
        f"`[ASM]` al final del comentario.\n\n"
        f"Aplica con:\n\n"
        f"```\npython3 bootstrap/mod_system.py apply {name}\n```\n")
    print(f"[OK] mods/{name}/ creado")
    print(f"Ahora edita los ficheros en mods/{name}/patches/<MODULE>/")
    return 0


def cmd_revert(args) -> int:
    """Restaura src/ y runtime/win103-built.img al estado base."""
    print("Revirtiendo a src/ base...")
    restore_src_from_backup()
    set_applied_mod(None)
    # Reconstruir built/
    print("Reconstruyendo built/...")
    r = subprocess.run([sys.executable, "bootstrap/smart_build.py"],
                       cwd=str(ROOT), capture_output=True, text=True)
    last = r.stdout.strip().splitlines()[-1] if r.stdout else ""
    print(f"  {last}")
    # Restaurar IMG si hay backup
    img_path = ROOT / "runtime" / "win103-built.img"
    img_bak = ROOT / "runtime" / "win103-built.img.bak"
    if img_bak.exists() and img_path.exists():
        shutil.copy2(img_bak, img_path)
        print(f"  IMG restaurada desde {img_bak.name}")
    print("Estado: src/ y IMG en BASE (sin mods)")
    return 0


def cmd_apply(args) -> int:
    name = args.name
    mod_dir = MODS / name
    if not mod_dir.exists():
        print(f"ERROR: mods/{name} no existe. Mods disponibles:", file=sys.stderr)
        return cmd_list(args)

    print(f"Aplicando mod '{name}'...")

    # 1. Restaurar src/ a base limpio
    print("  Paso 1/3: restaurando src/ desde backup")
    restore_src_from_backup()

    # 2. Aplicar patches del mod (copiar patches/<MODULE>/* encima de src/<MODULE>/)
    patches_dir = mod_dir / "patches"
    if patches_dir.exists():
        n_patched = 0
        for src_file in patches_dir.rglob("*"):
            if src_file.is_file():
                rel = src_file.relative_to(patches_dir)
                dst = SRC / rel
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src_file, dst)
                n_patched += 1
        print(f"  Paso 2/3: {n_patched} fichero(s) aplicado(s) sobre src/")
    else:
        print(f"  Paso 2/3: (no hay patches/ en mods/{name})")

    # Aplicar files/ adicionales si los hay (e.g. nuevas resources)
    files_dir = mod_dir / "files"
    if files_dir.exists():
        for src_file in files_dir.rglob("*"):
            if src_file.is_file():
                rel = src_file.relative_to(files_dir)
                dst = ROOT / rel
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src_file, dst)

    # 3. Build con smart_build.py
    print("  Paso 3/3: smart_build...")
    # Modulos que el mod toca (deduccion desde patches/)
    modded_modules = set()
    if patches_dir.exists():
        for p in patches_dir.iterdir():
            if p.is_dir():
                modded_modules.add(p.name.upper())

    r = subprocess.run([sys.executable, "bootstrap/smart_build.py"],
                       cwd=str(ROOT), capture_output=True, text=True)
    # smart_build retorna 1 si hay DIFF en algun modulo. Eso es ESPERADO
    # cuando un mod toca un modulo. Analizamos las lineas para distinguir.
    expected_diffs = []
    unexpected_diffs = []
    for line in r.stdout.splitlines():
        if line.startswith("[DIFF]"):
            # Formato: [DIFF] MODULO.EXE  bytes  sha...
            tokens = line.split()
            if len(tokens) >= 2:
                modname = tokens[1].split(".")[0]
                if modname in modded_modules:
                    expected_diffs.append(modname)
                else:
                    unexpected_diffs.append(modname)
    last = r.stdout.strip().splitlines()[-1] if r.stdout else ""
    print(f"  {last}")
    if unexpected_diffs:
        print(f"  [ERR] DIFFs inesperados (modulos no tocados por el mod): "
              f"{', '.join(unexpected_diffs)}")
        return 1
    if expected_diffs:
        print(f"  [OK] DIFFs esperados (modulos moddeados): "
              f"{', '.join(expected_diffs)}")
    set_applied_mod(name)

    # 4. Deploy a runtime/win103-built.img:
    #   - built/<MOD>.EXE para cada modulo moddeado
    #   - mods/<name>/img/* (raw files: WIN.COM, WIN100.OVL, etc.)
    img_path = ROOT / "runtime" / "win103-built.img"
    img_bak = ROOT / "runtime" / "win103-built.img.bak"
    img_files_dir = mod_dir / "img"

    if img_path.exists():
        # Backup si no existe
        if not img_bak.exists():
            print(f"  Paso 4/4: backup imagen -> {img_bak.name}")
            shutil.copy2(img_path, img_bak)
        else:
            # Restaurar desde backup antes de aplicar mod (estado limpio)
            print(f"  Paso 4/4: restaurando IMG base + aplicando mod")
            shutil.copy2(img_bak, img_path)

        # Copiar binarios moddeados al IMG (los que estan en el IMG ademas)
        IMG_BINARIES = {"CALC.EXE", "CALENDAR.EXE", "CARDFILE.EXE", "CLIPBRD.EXE",
                        "CLOCK.EXE", "CONTROL.EXE", "MSDOS.EXE", "NOTEPAD.EXE",
                        "PAINT.EXE", "REVERSI.EXE", "SPOOLER.EXE", "TERMINAL.EXE",
                        "WRITE.EXE"}
        n_copied = 0
        for mod_mod in modded_modules:
            # Buscar el .EXE o .DRV correspondiente en built/
            for ext in (".EXE", ".DRV"):
                bin_name = f"{mod_mod}{ext}"
                bin_path = ROOT / "built" / bin_name
                if bin_path.exists() and bin_name in IMG_BINARIES:
                    subprocess.run(["mcopy", "-i", str(img_path), "-o",
                                    str(bin_path), f"::{bin_name}"],
                                   check=True)
                    print(f"    -> IMG: {bin_name} [MODDED]")
                    n_copied += 1
                    break

        # Copiar img/ raw files (WIN.COM, WIN100.OVL, etc.)
        if img_files_dir.exists():
            for f in sorted(img_files_dir.iterdir()):
                if f.is_file():
                    subprocess.run(["mcopy", "-i", str(img_path), "-o",
                                    str(f), f"::{f.name}"], check=True)
                    print(f"    -> IMG: {f.name} [MODDED raw]")
                    n_copied += 1

        if n_copied:
            print(f"  [OK] {n_copied} fichero(s) inyectado(s) en {img_path.name}")

    print(f"\nMod '{name}' aplicado correctamente.")
    print(f"  Modulos modificados: {', '.join(modded_modules) or '(ninguno)'}")
    if img_files_dir.exists():
        raw = sorted([f.name for f in img_files_dir.iterdir() if f.is_file()])
        if raw:
            print(f"  Ficheros raw moddeados: {', '.join(raw)}")
    print(f"\nArranca DOSBox-X para verlo:")
    print(f"  Start-Process \"runtime\\dosbox-x-win\\mingw-build\\mingw-sdl2\\dosbox-x.exe\" \\")
    print(f"                -ArgumentList \"-conf\",\"runtime\\dosbox-win103.conf\"")
    print(f"\nPara revertir: python3 bootstrap/mod_system.py revert")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd")
    sub.required = True

    sub.add_parser("list", help="lista mods disponibles")
    sub.add_parser("status", help="muestra mod aplicado actualmente")
    sub.add_parser("revert", help="restaura src/ a base sin mods")

    p_create = sub.add_parser("create", help="crea un mod nuevo")
    p_create.add_argument("name", help="nombre del mod (e.g. 'win104')")

    p_apply = sub.add_parser("apply", help="aplica un mod a src/ y rebuild")
    p_apply.add_argument("name", help="nombre del mod a aplicar")

    args = ap.parse_args()
    return {
        "list":   cmd_list,
        "status": cmd_status,
        "revert": cmd_revert,
        "create": cmd_create,
        "apply":  cmd_apply,
    }[args.cmd](args)


if __name__ == "__main__":
    sys.exit(main())
