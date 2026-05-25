# -*- coding: utf-8 -*-
# Ghidra Jython script: exporta todas las funciones del programa actual a JSON.
#
# Uso (vía mpa.ghidra.run_script):
#   ExportFunctions.py <ruta_json_salida>
#
# Este script lo invoca el harness; no se ejecuta a mano.
#
# @category MPA

import json
import sys

from ghidra.program.model.address import Address  # noqa
from ghidra.program.model.symbol import SourceType  # noqa


def _seg_off(addr):
    """Para programas en modo Real Mode 16-bit, segmento y offset de la dir."""
    s = addr.getAddressSpace()
    name = s.getName()
    # Ghidra para 'x86:LE:16:Real Mode' codifica seg:off en la dir directamente.
    # getOffset() devuelve seg<<4 | off (linear). Para NE preferimos el segmento
    # lógico del módulo, que Ghidra expone como bloque de memoria nombrado.
    block = currentProgram.getMemory().getBlock(addr)
    if block is None:
        return -1, int(addr.getOffset())
    block_name = block.getName() or ""
    # Ghidra 11.x con NeLoader nombra los bloques de segmento NE de varias
    # formas dependiendo de la versión y tipo: "Code1", "Code2", "Data1",
    # "Segment_1", "Seg1"... Aceptamos cualquiera que termine en dígitos.
    seg = -1
    # primero, prefijo + dígitos al final
    for prefix in ("Segment_", "Seg", "Code", "Data"):
        if block_name.startswith(prefix):
            tail = block_name[len(prefix):].lstrip("_")
            if tail.isdigit():
                seg = int(tail)
                break
    off = int(addr.getOffset()) - int(block.getStart().getOffset())
    return seg, off


def main():
    args = getScriptArgs()
    if not args:
        print("ExportFunctions.py: falta ruta de salida")
        sys.exit(2)
    out_path = args[0]

    fm = currentProgram.getFunctionManager()
    listing = currentProgram.getListing()  # noqa
    rows = []
    for fn in fm.getFunctions(True):
        entry = fn.getEntryPoint()
        seg, off = _seg_off(entry)
        body = fn.getBody()
        size = int(body.getNumAddresses()) if body is not None else 0
        rows.append({
            "name": fn.getName(),
            "seg": seg,
            "off": off,
            "size": size,
            "thunk": bool(fn.isThunk()),
            "external": bool(fn.isExternal()),
        })

    with open(out_path, "w") as fh:
        json.dump(rows, fh, indent=2)
    print("ExportFunctions.py: %d funciones -> %s" % (len(rows), out_path))


main()
