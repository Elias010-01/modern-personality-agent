#!/usr/bin/env bash
# Linkea el KERNEL.EXE con LINK4.EXE usando los OBJs ya compilados.
# Espera la WORK dir como $1, o usa la ultima creada.
set -euo pipefail
cd /mnt/c/Users/Elias/CascadeProjects/modern-personality-agent

WORK="${1:-$(ls -dt /tmp/mpa-kernel-* 2>/dev/null | head -1)}"
if [ -z "$WORK" ] || [ ! -d "$WORK" ]; then
  echo "Error: no work dir. Pasa una como arg o ejecuta try-build-kernel.sh primero."
  exit 1
fi

TC=$HOME/opt/legacy-toolchain/c
echo "WORK=$WORK"
ls "$WORK/OUT/"*.OBJ | wc -l
echo " OBJs listos para link"

# Crea stubs vacios para RIP y LD (los .C que fallaron). Para empezar.
# Nota: pueden tener simbolos publicos sin definir; veremos errores.

# Crea KERNEL.LNK con formato multilinea (espacios + '+' continuacion).
# Sintaxis LINK4 prompts:
#   1. Object Modules [.OBJ]
#   2. Run File [.EXE]
#   3. List File [.MAP]
#   4. Libraries [.LIB]
#   5. Definitions File [.DEF]
cat > "$WORK/OUT/KERNEL.LNK" << 'EOF'
kdata context ldreloc ldaux lddisk +
ldfile ldint ldopen ldseg ldstack +
ldutil lstring task resaux resman +
schedule int21 int24 atom userpro +
diskio lalloc lcompact ldheader linterf +
handle galloc i21mem gcompact glru +
gmem ginterf lddebug ldboot ldfastb +
dosinit kdataend
KERNEL.EXE
KERNEL.MAP
;
D:\KERNEL\KERNEL.DEF
EOF
# Nota: omitidos LD y RIP (los que fallaron).
# Como necesitamos el .DEF en D:\, copiamos:
cp "$WORK/KERNEL/KERNEL.def" "$WORK/KERNEL/KERNEL.DEF" 2>/dev/null || true

cat > "$WORK/dosbox-link.conf" << EOF
[sdl]
output=surface
autolock=false

[dosbox]
machine=svga_s3
memsize=16

[autoexec]
MOUNT C "$TC"
MOUNT D "$WORK"
PATH=C:\\MASM4;C:\\MSC\\BIN
SET TMP=D:\\OUT\\
D:
CD OUT
LINK4 @KERNEL.LNK > LINK.LOG
if errorlevel 1 echo FAIL > LINK.FAIL
echo DONE > LINK.DONE
exit
EOF

echo "=== running LINK4 ==="
SDL_AUDIODRIVER=dummy timeout 90 /usr/bin/dosbox-x \
  -conf "$WORK/dosbox-link.conf" \
  -silent -fastlaunch -nogui -nomenu -exit 2>&1 | tail -5

echo
echo "=== resultados ==="
ls -la "$WORK/OUT/" | head -30

echo
echo "=== LINK.LOG ==="
cat "$WORK/OUT/LINK.LOG" 2>/dev/null | head -40 || echo "no log"

echo
if [ -f "$WORK/OUT/KERNEL.EXE" ]; then
  sz=$(stat -c%s "$WORK/OUT/KERNEL.EXE")
  orig_sz=$(stat -c%s original/KERNEL.EXE)
  echo "OK: KERNEL.EXE generado ($sz bytes, original=$orig_sz bytes)"
else
  echo "FAIL: no KERNEL.EXE"
fi
echo "Workdir: $WORK"
