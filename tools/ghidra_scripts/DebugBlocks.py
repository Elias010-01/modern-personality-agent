# -*- coding: utf-8 -*-
# Debug Jython: imprime nombres de memory blocks y muestra ejemplos de funciones.
# Uso: -postScript DebugBlocks.py <out.txt>
#
# @category MPA

import sys


def main():
    args = getScriptArgs()
    out_path = args[0] if args else "/tmp/blocks.txt"

    lines = []
    lines.append("=== Memory blocks ===")
    mem = currentProgram.getMemory()
    for blk in mem.getBlocks():
        lines.append("name=%s start=%s end=%s size=%d exec=%s" % (
            blk.getName(),
            blk.getStart().toString(),
            blk.getEnd().toString(),
            blk.getSize(),
            blk.isExecute(),
        ))

    lines.append("")
    lines.append("=== Sample functions (first 10) ===")
    fm = currentProgram.getFunctionManager()
    count = 0
    for fn in fm.getFunctions(True):
        if count >= 10:
            break
        entry = fn.getEntryPoint()
        blk = mem.getBlock(entry)
        blk_name = blk.getName() if blk else "(no block)"
        lines.append("fn=%s entry=%s block=%s offset_in_block=%d" % (
            fn.getName(),
            entry.toString(),
            blk_name,
            int(entry.getOffset()) - (int(blk.getStart().getOffset()) if blk else 0),
        ))
        count += 1

    lines.append("")
    lines.append("total functions: %d" % fm.getFunctionCount())

    with open(out_path, "w") as fh:
        fh.write("\n".join(lines) + "\n")
    print("DebugBlocks.py: wrote %s" % out_path)


main()
