#!/usr/bin/env bash
# Debug: corre bulk-batch dejando el work dir intacto
set -uo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

# Patch temporal: hace que TempDir no se borre
./.venv/bin/python <<'PY'
import sqlite3
c = sqlite3.connect('state/mpa.db')
# Pick 3 KERNEL pending mas pequenos
rows = list(c.execute("""
  SELECT id, name, seg_number, seg_offset, size FROM functions
  WHERE module_name='KERNEL' AND status='pending' AND size>0
  ORDER BY size LIMIT 3
"""))
for r in rows:
  print(r)
PY

# Ejecuta manualmente un test mini
TC=$HOME/opt/legacy-toolchain/c
WORK=$(mktemp -d -t mpa-debugbulk-XXXX)
mkdir -p "$WORK/SRC" "$WORK/OUT"

# Genera un .ASM minimo
cat > "$WORK/SRC/F00100.ASM" << 'EOF'
_TEXT   SEGMENT WORD PUBLIC 'CODE'
        ASSUME  CS:_TEXT
        PUBLIC  F_100
F_100   PROC FAR
        DB      0CBh
F_100   ENDP
_TEXT   ENDS
        END
EOF

cat > "$WORK/SRC/BUILD.BAT" << 'EOF'
@echo off
MASM F00100.ASM,..\OUT\F00100.OBJ,,;
echo errorlevel=%errorlevel% > ..\OUT\STATUS.TXT
EOF

cat > "$WORK/dosbox.conf" << EOF
[sdl]
output=surface
autolock=false
[dosbox]
machine=svga_s3
memsize=16
[autoexec]
MOUNT C "$TC"
MOUNT D "$WORK"
PATH=C:\\MASM;C:\\MSC\\BIN
SET TMP=D:\\OUT\\
D:
CD SRC
BUILD.BAT
exit
EOF

echo "=== running DOSBox-X ==="
SDL_AUDIODRIVER=dummy timeout 30 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -3

echo
echo "=== files in OUT ==="
ls -la "$WORK/OUT/"
echo
echo "=== contents ==="
[ -f "$WORK/OUT/F00100.OBJ" ] && xxd "$WORK/OUT/F00100.OBJ" | head -10
[ -f "$WORK/OUT/STATUS.TXT" ] && cat "$WORK/OUT/STATUS.TXT"

echo "Workdir: $WORK"
