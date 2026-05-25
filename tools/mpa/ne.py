"""Parser del formato New Executable (NE) usado por Windows 1.x..3.x.

Referencias:
- "Windows 1.0 Programming" — Microsoft Press, 1986 (chapter on New Executable)
- "Windows Internals" — Matt Pietrek (capítulo NE)
- OS/2 Museum: https://www.os2museum.com/wp/the-ne-executable-format/
- Ralf Brown / Iczelion tutorials

Cobertura:
- Cabeceras MZ + NE
- Tabla de segmentos (CODE / DATA / RESOURCE)
- Tabla de entry points (export ordinals)
- Tabla de nombres residentes y no-residentes (puede contener símbolos en
  builds de debug; es donde aparecen en el slack space en algunas builds de
  prod de Win 1.x → este parser sólo extrae lo que el formato declara; el
  análisis de slack space va aparte porque es heurístico).
- Lectura de bytes crudos por (segmento, offset, longitud) para diffing.

NO cubre (todavía):
- Aplicación de fixups del loader. Para diffear el código emitido por
  MSC4/MASM4 contra el binario, hay que comparar PRE-fixup. Lo logramos
  ignorando los offsets que aparecen en relocaciones; ver ne_diff.py.
"""

from __future__ import annotations

import hashlib
import struct
from dataclasses import dataclass, field
from enum import IntFlag
from pathlib import Path

from .errors import NEParseError


# ---- Constantes del formato --------------------------------------------------

MZ_MAGIC = b"MZ"
NE_MAGIC = b"NE"

# Offsets dentro de la cabecera NE (relativos al inicio de la cabecera NE)
NE_USAGE         = 0x02  # WORD: linker version
NE_ENTRY_TABLE   = 0x04  # WORD offset, WORD length
NE_FLAGS         = 0x0C
NE_AUTODATA_SEG  = 0x0E
NE_HEAP_SIZE     = 0x10
NE_STACK_SIZE    = 0x12
NE_CSIP          = 0x14  # entry point CS:IP (segment number, offset)
NE_SSSP          = 0x18
NE_NUM_SEGMENTS  = 0x1C
NE_NUM_MOD_REFS  = 0x1E
NE_NONRES_SIZE   = 0x20  # tamaño de la non-resident name table
NE_SEG_TABLE_OFF = 0x22  # offset desde inicio cabecera NE
NE_RES_TABLE_OFF = 0x24
NE_RNAME_OFF     = 0x26  # resident name table offset
NE_MODREF_OFF    = 0x28
NE_IMPNAME_OFF   = 0x2A
NE_NONRES_OFF    = 0x2C  # offset desde inicio del fichero (no NE!)
NE_MOVABLE_ENTRY = 0x30
NE_ALIGN_SHIFT   = 0x32
NE_NUM_RESOURCES = 0x34
NE_TARGET_OS     = 0x36


class SegmentFlags(IntFlag):
    DATA       = 0x0001  # 0=CODE, 1=DATA
    ALLOC      = 0x0002
    LOADED     = 0x0004
    ITERATED   = 0x0008
    MOVABLE    = 0x0010
    SHAREABLE  = 0x0020
    PRELOAD    = 0x0040
    EXEC_RO    = 0x0080  # CODE: execute-only; DATA: read-only
    HAS_RELOCS = 0x0100
    DISCARDABLE= 0x1000


@dataclass(frozen=True)
class SegmentEntry:
    number: int               # 1-based
    file_offset: int          # absoluto en el fichero
    length_in_file: int
    flags: SegmentFlags
    min_alloc: int            # bytes en memoria

    @property
    def is_code(self) -> bool:
        return not bool(self.flags & SegmentFlags.DATA)

    @property
    def kind(self) -> str:
        return "code" if self.is_code else "data"


@dataclass(frozen=True)
class EntryPoint:
    ordinal: int
    seg_number: int           # 0 si es vacío; 0xFE = constant; 0xFF = movable
    seg_offset: int
    flags: int                # bit 0 = exported, bit 1 = uses global data
    name: str | None = None   # rellenado desde resident/non-resident name table

    @property
    def is_exported(self) -> bool:
        return bool(self.flags & 0x01) and self.seg_number != 0


@dataclass
class NEModule:
    path: Path
    sha256: str
    size: int
    ne_header_offset: int
    flags: int
    num_segments: int
    num_mod_refs: int
    align_shift: int
    target_os: int
    module_name: str          # del resident name table[0]
    description: str          # del non-resident name table[0]
    segments: list[SegmentEntry] = field(default_factory=list)
    entries: list[EntryPoint] = field(default_factory=list)
    resident_names: dict[int, str] = field(default_factory=dict)   # ordinal → name
    nonresident_names: dict[int, str] = field(default_factory=dict)
    raw: bytes = b""          # contenido completo del fichero

    def segment(self, n: int) -> SegmentEntry:
        for s in self.segments:
            if s.number == n:
                return s
        raise NEParseError(f"Segmento {n} no existe en {self.module_name}")

    def read_segment_bytes(self, seg_number: int) -> bytes:
        s = self.segment(seg_number)
        return self.raw[s.file_offset : s.file_offset + s.length_in_file]

    def read_at(self, seg_number: int, seg_offset: int, length: int) -> bytes:
        s = self.segment(seg_number)
        if seg_offset + length > s.length_in_file:
            raise NEParseError(
                f"Lectura fuera de segmento {seg_number} en {self.module_name}: "
                f"offset {seg_offset}+{length} > {s.length_in_file}"
            )
        start = s.file_offset + seg_offset
        return self.raw[start : start + length]


# ---- Parser ------------------------------------------------------------------

def _u16(b: bytes, off: int) -> int:
    return struct.unpack_from("<H", b, off)[0]


def _u32(b: bytes, off: int) -> int:
    return struct.unpack_from("<I", b, off)[0]


def _read_pascal_string(b: bytes, off: int) -> tuple[str, int]:
    """Lee una cadena Pascal-style (length byte + bytes). Devuelve (str, nuevo_offset)."""
    if off >= len(b):
        return "", off
    n = b[off]
    if n == 0:
        return "", off + 1
    s = b[off + 1 : off + 1 + n].decode("latin-1", errors="replace")
    return s, off + 1 + n


def parse_ne(path: Path) -> NEModule:
    """Parsea un fichero NE y devuelve un NEModule."""
    if not path.exists():
        raise NEParseError(f"No existe: {path}")
    raw = path.read_bytes()

    if raw[:2] != MZ_MAGIC:
        raise NEParseError(f"{path.name}: no es MZ")

    if len(raw) < 0x40:
        raise NEParseError(f"{path.name}: cabecera MZ truncada")

    ne_off = _u32(raw, 0x3C)
    if ne_off + 0x40 > len(raw):
        raise NEParseError(f"{path.name}: offset NE inválido {ne_off:#x}")
    if raw[ne_off : ne_off + 2] != NE_MAGIC:
        raise NEParseError(
            f"{path.name}: no es NE (¿PE? ¿LE? primer byte tras MZ stub: "
            f"{raw[ne_off:ne_off+2]!r})"
        )

    h = raw[ne_off : ne_off + 0x40]
    flags         = _u16(h, NE_FLAGS)
    num_segments  = _u16(h, NE_NUM_SEGMENTS)
    num_mod_refs  = _u16(h, NE_NUM_MOD_REFS)
    seg_tbl_off   = _u16(h, NE_SEG_TABLE_OFF)   # relativo a NE
    rname_off     = _u16(h, NE_RNAME_OFF)       # relativo a NE
    nonres_off    = _u32(h, NE_NONRES_OFF)      # absoluto
    nonres_size   = _u16(h, NE_NONRES_SIZE)
    entry_tbl_off = _u16(h, NE_ENTRY_TABLE)     # relativo a NE
    entry_tbl_len = _u16(h, NE_ENTRY_TABLE + 2)
    align_shift   = _u16(h, NE_ALIGN_SHIFT) or 9   # default 512-byte sectors
    target_os     = raw[ne_off + NE_TARGET_OS]

    # ---- Segments
    segments: list[SegmentEntry] = []
    seg_tbl_abs = ne_off + seg_tbl_off
    sector = 1 << align_shift
    for i in range(num_segments):
        e = seg_tbl_abs + i * 8
        if e + 8 > len(raw):
            raise NEParseError(f"{path.name}: tabla de segmentos truncada")
        sect_off  = _u16(raw, e + 0)
        seg_len   = _u16(raw, e + 2)
        seg_flags = _u16(raw, e + 4)
        min_alloc = _u16(raw, e + 6)
        # NE quirk: length=0 significa 64K; sect_off=0 significa "no presente"
        file_off = sect_off * sector
        actual_len = seg_len if seg_len != 0 else 0x10000
        segments.append(SegmentEntry(
            number=i + 1,
            file_offset=file_off,
            length_in_file=actual_len if sect_off != 0 else 0,
            flags=SegmentFlags(seg_flags),
            min_alloc=min_alloc if min_alloc != 0 else 0x10000,
        ))

    # ---- Resident names: primer entry = nombre del módulo
    module_name, resident_names = _parse_name_table(raw, ne_off + rname_off, len(raw))

    # ---- Non-resident names: primer entry = descripción del módulo
    description, nonresident_names = _parse_name_table(raw, nonres_off, nonres_off + nonres_size)

    # ---- Entry table
    entries = _parse_entry_table(raw, ne_off + entry_tbl_off, entry_tbl_len)

    # Adjuntar nombres a ordinales
    by_ord = {ep.ordinal: ep for ep in entries}
    named_entries: list[EntryPoint] = []
    for ep in entries:
        name = resident_names.get(ep.ordinal) or nonresident_names.get(ep.ordinal)
        named_entries.append(EntryPoint(
            ordinal=ep.ordinal, seg_number=ep.seg_number,
            seg_offset=ep.seg_offset, flags=ep.flags, name=name,
        ))
        by_ord[ep.ordinal] = named_entries[-1]

    return NEModule(
        path=path,
        sha256=hashlib.sha256(raw).hexdigest(),
        size=len(raw),
        ne_header_offset=ne_off,
        flags=flags,
        num_segments=num_segments,
        num_mod_refs=num_mod_refs,
        align_shift=align_shift,
        target_os=target_os,
        module_name=module_name,
        description=description,
        segments=segments,
        entries=named_entries,
        resident_names=resident_names,
        nonresident_names=nonresident_names,
        raw=raw,
    )


def _parse_name_table(raw: bytes, start: int, end: int) -> tuple[str, dict[int, str]]:
    """Una name table: secuencia de (pascal_string, WORD ordinal). Termina con length=0.

    El primer entry es el nombre del módulo (resident) o descripción (non-resident),
    y su "ordinal" suele ser 0 → no es un export, es metadata.

    Devuelve (primer_nombre, dict[ordinal_no_cero -> nombre]).
    """
    names: dict[int, str] = {}
    first = ""
    off = start
    is_first = True
    while off < end:
        n = raw[off]
        if n == 0:
            break
        s = raw[off + 1 : off + 1 + n].decode("latin-1", errors="replace")
        off += 1 + n
        if off + 2 > end:
            break
        ordinal = _u16(raw, off)
        off += 2
        if is_first:
            first = s
            is_first = False
            continue
        if ordinal != 0:
            names[ordinal] = s
    return first, names


def _parse_entry_table(raw: bytes, start: int, length: int) -> list[EntryPoint]:
    """Entry table: secuencia de bundles.

    Cada bundle: BYTE count, BYTE seg_indicator.
      seg_indicator == 0   → 'count' entries vacíos (skip ordinal range)
      seg_indicator == 0xFF→ movable: 6 bytes/entry (flags, INT 3F CD, seg, offset)
      otro                 → fixed segment: 3 bytes/entry (flags, offset WORD)
    """
    entries: list[EntryPoint] = []
    off = start
    end = start + length
    ordinal = 1
    while off < end:
        count = raw[off]
        if count == 0:
            # fin de tabla
            break
        seg_ind = raw[off + 1]
        off += 2
        if seg_ind == 0:
            # entries vacíos
            ordinal += count
            continue
        for _ in range(count):
            if seg_ind == 0xFF:  # movable
                flags = raw[off + 0]
                # off+1..+2 son INT 3Fh CDh (instrucción placeholder del loader)
                seg = raw[off + 3]
                seg_off = _u16(raw, off + 4)
                off += 6
            else:               # fixed
                flags = raw[off + 0]
                seg_off = _u16(raw, off + 1)
                seg = seg_ind
                off += 3
            entries.append(EntryPoint(
                ordinal=ordinal, seg_number=seg,
                seg_offset=seg_off, flags=flags,
            ))
            ordinal += 1
    return entries
