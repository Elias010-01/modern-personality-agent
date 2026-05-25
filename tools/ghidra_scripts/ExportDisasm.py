# -*- coding: utf-8 -*-
# Ghidra Jython script: exporta el disassembly anotado de una funcion concreta.
#
# Uso (via mpa.ghidra.run_script):
#   ExportDisasm.py <ruta_salida> <segmento> <offset>
#
# Genera un fichero de texto con:
#   - Cabecera (nombre, seg:off, tamano)
#   - Listado de instrucciones con etiquetas
#   - Decompilacion P-code/C aproximada (si esta disponible)
#
# @category MPA

import sys

from ghidra.app.decompiler import DecompInterface  # noqa
from ghidra.util.task import ConsoleTaskMonitor  # noqa


def find_function(seg, off):
    fm = currentProgram.getFunctionManager()
    for fn in fm.getFunctions(True):
        block = currentProgram.getMemory().getBlock(fn.getEntryPoint())
        if block is None:
            continue
        bname = block.getName() or ""
        s = -1
        # Ghidra 11.x NeLoader nombra bloques NE como Code1, Code2, Data1, etc.
        # Tambien aceptamos Segment_N y SegN por compatibilidad.
        for prefix in ("Segment_", "Seg", "Code", "Data"):
            if bname.startswith(prefix):
                tail = bname[len(prefix):].lstrip("_")
                if tail.isdigit():
                    s = int(tail)
                    break
        if s != seg:
            continue
        o = int(fn.getEntryPoint().getOffset()) - int(block.getStart().getOffset())
        if o == off:
            return fn
    return None


def main():
    args = getScriptArgs()
    if len(args) < 3:
        print("ExportDisasm.py: usage: <out> <seg> <off>")
        sys.exit(2)
    out_path = args[0]
    seg = int(args[1])
    off = int(args[2], 0)

    fn = find_function(seg, off)
    if fn is None:
        with open(out_path, "w") as fh:
            fh.write("ERROR: funcion no encontrada en seg=%d off=%#x\n" % (seg, off))
        return

    listing = currentProgram.getListing()
    body = fn.getBody()
    lines = []
    lines.append("; %s" % fn.getName())
    lines.append("; seg=%d off=%#x size=%d" % (seg, off, int(body.getNumAddresses())))
    lines.append("")

    iter_ = listing.getInstructions(body, True)
    for instr in iter_:
        addr = instr.getAddress()
        bytes_ = instr.getBytes()
        bs = " ".join("%02x" % (b & 0xff) for b in bytes_)
        lines.append("%s  %-24s  %s" % (addr, bs, instr))

    # Decompilacion
    lines.append("")
    lines.append("; --- decompiler output ---")
    decomp = DecompInterface()
    decomp.openProgram(currentProgram)
    monitor = ConsoleTaskMonitor()
    res = decomp.decompileFunction(fn, 60, monitor)
    if res is not None and res.decompileCompleted():
        c = res.getDecompiledFunction()
        if c is not None:
            lines.append(c.getC())
        else:
            lines.append("; (no decompiled function)")
    else:
        lines.append("; (decompiler failed)")

    with open(out_path, "w") as fh:
        fh.write("\n".join(lines))
    print("ExportDisasm.py: %s -> %s" % (fn.getName(), out_path))


main()
