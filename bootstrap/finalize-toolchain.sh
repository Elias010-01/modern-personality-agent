#!/usr/bin/env bash
# Organiza la estructura final del toolchain en ~/opt/legacy-toolchain/c/
# para que DOSBox-X la monte con MOUNT C y CL.EXE / MASM.EXE funcionen.
set -euo pipefail

T=$HOME/opt/legacy-toolchain/c

# Limpia destinos (idempotente)
rm -rf "$T/MSC/BIN" "$T/MSC/INCLUDE" "$T/MSC/LIB" "$T/MSC/STARTUP"
mkdir -p "$T/MSC/BIN" "$T/MSC/INCLUDE" "$T/MSC/INCLUDE/SYS" "$T/MSC/LIB" "$T/MSC/STARTUP" "$T/MASM"

cd "$T"

# ---- MSC BIN -----------------------------------------------------------------
# raw_compiler tiene C1.EXE C2.EXE C3.EXE MSC.EXE
# raw_utilities tiene CL.EXE, LIB.EXE, MAKE.EXE, EXEMOD.EXE, EXEPACK.EXE, SETENV.EXE, CV.EXE
# raw_inc_lib_s tiene LINK.EXE
# raw_lib_l tiene C3L.EXE (compiler para large model)
for f in MSC/raw_compiler/*.EXE; do
  [ -f "$f" ] && cp "$f" "MSC/BIN/$(basename $f)"
done
for f in MSC/raw_utilities/*.EXE; do
  [ -f "$f" ] && cp "$f" "MSC/BIN/$(basename $f)"
done
[ -f MSC/raw_inc_lib_s/LINK.EXE ] && cp MSC/raw_inc_lib_s/LINK.EXE MSC/BIN/LINK.EXE
[ -f MSC/raw_lib_l/C3L.EXE ] && cp MSC/raw_lib_l/C3L.EXE MSC/BIN/C3L.EXE

# ---- MSC INCLUDE -------------------------------------------------------------
# raw_inc_lib_s tiene los .H
for f in MSC/raw_inc_lib_s/*.H; do
  [ -f "$f" ] && cp "$f" "MSC/INCLUDE/$(basename $f)"
done
if [ -d MSC/raw_inc_lib_s/SYS ]; then
  cp MSC/raw_inc_lib_s/SYS/*.H MSC/INCLUDE/SYS/ 2>/dev/null || true
fi

# ---- MSC LIB -----------------------------------------------------------------
# Libs de los 3 disquetes
for d in raw_inc_lib_s raw_lib_l raw_lib_mc; do
  for f in "MSC/$d"/*.LIB "MSC/$d"/*.OBJ; do
    [ -f "$f" ] && cp "$f" "MSC/LIB/$(basename $f)"
  done
done

# ---- MSC STARTUP -------------------------------------------------------------
for f in MSC/raw_startup/*.ASM MSC/raw_startup/*.INC MSC/raw_startup/*.C MSC/raw_startup/*.H MSC/raw_startup/*.BAT MSC/raw_startup/*.DOC MSC/raw_startup/*.LNK; do
  [ -f "$f" ] && cp "$f" "MSC/STARTUP/$(basename $f)"
done

# ---- MASM BIN (sólo lo que necesitamos) --------------------------------------
# MASM.EXE de disk1 (real mode, no OS/2)
cp MASM/raw_disk1/MASM.EXE MASM/MASM.EXE
cp MASM/raw_disk1/CREF.EXE MASM/CREF.EXE 2>/dev/null || true
# LINK.EXE de disk2 (también real mode)
cp MASM/raw_disk2/LINK.EXE MASM/LINK.EXE 2>/dev/null || true

# ---- Limpia los raw_ -------------------------------------------------------
echo "=== limpiando raw_ tras instalación ==="
rm -rf "$T"/MSC/raw_*
rm -rf "$T"/MASM/raw_*

echo
echo "=== árbol final ==="
find "$T" -maxdepth 3 | sort | head -120

echo
echo "=== ficheros clave ==="
for need in MSC/BIN/CL.EXE MSC/BIN/C1.EXE MSC/BIN/C2.EXE MSC/BIN/C3.EXE MSC/BIN/LINK.EXE MSC/BIN/LIB.EXE MSC/INCLUDE/STDIO.H MSC/INCLUDE/DOS.H MSC/LIB/MLIBC.LIB MSC/LIB/SLIBC.LIB MASM/MASM.EXE; do
  if [ -f "$T/$need" ]; then
    sz=$(stat -c%s "$T/$need")
    echo "  OK    $need ($sz)"
  else
    echo "  FALTA $need"
  fi
done
