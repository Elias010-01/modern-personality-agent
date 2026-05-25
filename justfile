## modern-personality-agent: tareas
##
## Uso: `just <tarea>`. `just` sin argumentos muestra esta lista.

# Activación del venv. Todas las tareas Python pasan por aquí.
venv := ".venv/bin/activate"

# Default: lista de tareas
default:
    @just --list

# ---- Setup ------------------------------------------------------------------

# Instala todo en WSL (idempotente).
bootstrap:
    bash bootstrap/bootstrap.sh

# Sólo instala/actualiza Ghidra.
install-ghidra:
    bash bootstrap/install-ghidra.sh

# Sólo compila/instala DOSBox-X.
install-dosbox-x:
    bash bootstrap/install-dosbox-x.sh

# Sólo prepara la imagen DOS con MSC4/MASM4.
install-toolchain:
    bash bootstrap/install-legacy-toolchain.sh

# Comprueba prereqs y reporta estado.
doctor:
    . {{venv}} && mpa doctor

# ---- Datos & state -----------------------------------------------------------

# Inicializa la DB SQLite (idempotente).
db-init:
    . {{venv}} && mpa db-init

# Indexa los binarios originales de Win 1.03 → puebla la DB.
index:
    . {{venv}} && mpa index

# Lanza Ghidra headless sobre todos los módulos (o uno concreto: just analyze KERNEL).
analyze module="":
    . {{venv}} && mpa analyze {{module}}

# Dashboard de progreso.
status:
    . {{venv}} && mpa status

# Verifica hashes de binarios en original/.
verify-original:
    . {{venv}} && mpa doctor

# ---- Loop del agente ---------------------------------------------------------

# Crea el bundle para la siguiente función candidata.
next:
    . {{venv}} && mpa next

# Abre el bundle de una función concreta.
open id:
    . {{venv}} && mpa open {{id}}

# Compila attempt.c/.asm de la función y diffea contra el original.
verify id:
    . {{venv}} && mpa verify {{id}}

# Smoke test del toolchain legacy.
smoke:
    . {{venv}} && mpa smoke

# ---- Knowledge base ----------------------------------------------------------

# Busca en la KB.
kb q:
    . {{venv}} && mpa kb-search '{{q}}'

# ---- Tests + lint ------------------------------------------------------------

test:
    . {{venv}} && pytest -q tools/tests

lint:
    . {{venv}} && ruff check tools

fmt:
    . {{venv}} && ruff format tools

typecheck:
    . {{venv}} && mypy tools/mpa

# ---- Limpieza ----------------------------------------------------------------

clean:
    rm -rf logs/* workspaces/*/  out/ tmp/

# Reset total del state (CUIDADO: borra DB y proyectos Ghidra).
reset-state:
    rm -f state/mpa.db state/mpa.db-*
    rm -rf .ghidra-projects
