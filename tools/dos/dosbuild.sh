#!/bin/bash
# dosbuild.sh - run a DOS command (or a build.bat) inside DOSBox-X
# headlessly, capturing output to disk. Designed for byte-exact build loops
# with vintage Microsoft toolchains (MASM 4.0 + MSC 4.0).
#
# Usage:
#   dosbuild.sh <work_dir> <bat_file>
#
# Where:
#   work_dir   - directory that will be mounted as C: in DOSBox.
#                MUST already contain CL.EXE / MASM.EXE / LINK.EXE etc.
#   bat_file   - .BAT file inside work_dir to run after C: is mounted.
#
# Conventions:
#   - The .BAT MUST NOT use 2>&1 (DOS COMMAND.COM does not support it).
#     Use plain `>` and inspect each tool's exit through its log file.
#   - On success, output files (.OBJ, .EXE, .LOG, etc.) are left in work_dir.
#
set -euo pipefail

if [ $# -lt 2 ]; then
    echo "Usage: $0 <work_dir> <bat_file>"
    exit 2
fi

WORK="$1"
BAT="$2"

if [ ! -d "$WORK" ]; then
    echo "ERROR: work_dir '$WORK' does not exist"
    exit 2
fi
if [ ! -f "$WORK/$BAT" ]; then
    echo "ERROR: bat file '$WORK/$BAT' does not exist"
    exit 2
fi

WORK_ABS=$(realpath "$WORK")
CONF="$WORK_ABS/_dosbuild.conf"

cat > "$CONF" <<EOF
[sdl]
output=surface
autolock=false
[cpu]
core=auto
cputype=auto
cycles=max
[dos]
ver=3.30
[autoexec]
mount c $WORK_ABS
c:
call $BAT
exit
EOF

# Use BOTH the DOSBox-X internal -time-limit (kills emulation cleanly from
# inside) AND an external `timeout` with --kill-after as a hard fallback.
# DOSBox-X has been observed to ignore external SIGTERM when COMMAND.COM
# is waiting for keyboard input, so the internal -time-limit is critical.
# Time limits sized for batch builds: the bigger byte-exact verification
# rounds run MASM on 190+ candidates and need a few minutes inside DOS.
SDL_VIDEODRIVER=dummy timeout --kill-after=10 600 dosbox-x \
    -conf "$CONF" \
    -silent -nopromptfolder -fastlaunch \
    -time-limit 500 \
    >/dev/null 2>&1 || true

rm -f "$CONF"
