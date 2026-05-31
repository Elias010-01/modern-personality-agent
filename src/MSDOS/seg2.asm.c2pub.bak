; ======================================================================
; MSDOS / seg2.asm   (segment 2 of MSDOS)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         8
; Total instructions:                 1171
; 
; Classification (pass8):
;   C-origin (high+medium):              7
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     38 (31 unique)
;   Top:
;        3  GETPROFILESTRING
;        2  LOCALALLOC
;        2  GETSYSTEMMETRICS
;        2  LOCALFREE
;        2  CREATEWINDOW
;        2  LOADSTRING
;        1  LSTRCPY
;        1  CREATECOMPATIBLEBITMAP
; ======================================================================
; AUTO-GENERATED from original MSDOS segment 2
; segment_size=3029 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSDOS_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, sp                          ; 8B C4
        sub     ax, bx                          ; 2B C3
        mov     word ptr [0x5b2], ax            ; A3 B2 05
        mov     word ptr [0xc], sp              ; 89 26 0C 00
        mov     word ptr [0xe], sp              ; 89 26 0E 00
        mov     word ptr [0xa], ax              ; A3 0A 00
        mov     ax, 0xfa0                       ; B8 A0 0F
        push    cx                              ; 51
        push    es                              ; 06
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        ;   ^ arg wFlags
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        pop     es                              ; 07
        pop     cx                              ; 59
        or      ax, ax                          ; 0B C0
        jne     L_002A                          ; 75 03
        jmp     L_007C                          ; EB 53
        nop                                     ; 90
;   [conditional branch target (if/else)] L_002A
L_002A:
        mov     bx, 0xfa0                       ; BB A0 0F
        cli                                     ; FA
        mov     ss, ax                          ; 8E D0
        mov     sp, bx                          ; 8B E3
        sti                                     ; FB
        push    bx                              ; 53
        push    cx                              ; 51
        push    es                              ; 06
        call    far KERNEL.GETCURRENTTASK       ; 9A FF FF 00 00 [FIXUP]
        mov     es, ax                          ; 8E C0
        mov     word ptr es:[4], ss             ; 26 8C 16 04 00
        mov     word ptr es:[2], sp             ; 26 89 26 02 00
        pop     es                              ; 07
        pop     cx                              ; 59
        pop     bx                              ; 5B
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_007C                          ; 74 29
        mov     word ptr [0x10], cx             ; 89 0E 10 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_007C                          ; 74 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095F                          ; E8 EC 08
        or      ax, ax                          ; 0B C0
        je      L_007C                          ; 74 05
        jmp     far _SEG1_0000                  ; EA FF FF 00 00 [FIXUP]
;   [branch target] L_007C
L_007C:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  LPSTR     (1 use)
;     [bp+0x8]  LPSTR     (1 use)
;   Locals:
;     [bp-0x4]   HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: LOCALALLOC, LSTRCPY.

;-------------------------------------------------------------------------
; sub_0081   offset=0x0081  size=38 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;
; Near calls (internal): L_02A8
;-------------------------------------------------------------------------
;   [sub-routine] L_0081
L_0081:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        call    L_02A8                          ; E8 17 02
        mov     word ptr [0xd2], 1              ; C7 06 D2 00 01 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00CE                          ; 74 2A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_00CE                          ; 74 21
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_00CE                          ; 74 0D
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00CE
L_00CE:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING.

;-------------------------------------------------------------------------
; sub_00DC   offset=0x00DC  size=163 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETPROFILESTRING
;-------------------------------------------------------------------------
;   [sub-routine] L_00DC
L_00DC:
        ;   = cProc <144> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x90                        ; 81 EC 90 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x11e                       ; B8 1E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x11d                       ; B8 1D 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 03 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_010D                          ; 75 03
        jmp     L_01E9                          ; E9 DC 00
;   [conditional branch target (if/else)] L_010D
L_010D:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], ss        ; 8C 96 74 FF
        jmp     L_01DC                          ; E9 BB 00
;   [loop start] L_0121
L_0121:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x90], al        ; 88 86 70 FF
        cmp     al, 0x20                        ; 3C 20
        je      L_0134                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_013A                          ; 75 06
;   [conditional branch target (if/else)] L_0134
L_0134:
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        jmp     L_0121                          ; EB E7
;   [conditional branch target (if/else)] L_013A
L_013A:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0147                          ; 75 03
        jmp     L_01DC                          ; E9 95 00
;   [conditional branch target (if/else)] L_0147
L_0147:
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_015D                          ; EB 0A
;   [loop start] L_0153
L_0153:
        cmp     byte ptr [bp - 0x90], 0x2c      ; 80 BE 70 FF 2C
        je      L_016D                          ; 74 13
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_015D
L_015D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x90], al        ; 88 86 70 FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_0153                          ; 77 E6
;   [conditional branch target (if/else)] L_016D
L_016D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        je      L_0181                          ; 74 07
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_0181
L_0181:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0194                          ; 74 05
        mov     ax, 0xff3e                      ; B8 3E FF
        jmp     L_0197                          ; EB 03
;   [conditional branch target (if/else)] L_0194
L_0194:
        mov     ax, 0xff3f                      ; B8 3F FF
;   [unconditional branch target] L_0197
L_0197:
        push    ax                              ; 50
        call    far _entry_19                   ; 9A 82 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01B0                          ; 74 0F
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_01B0                          ; EB 03
;   [loop start] L_01AD
L_01AD:
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [branch target] L_01B0
L_01B0:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_01AD                          ; 74 F4
        cmp     byte ptr es:[bx], 0x2c          ; 26 80 3F 2C
        jne     L_01C3                          ; 75 04
        mov     byte ptr [bp - 0xa], 0x2c       ; C6 46 F6 2C
;   [conditional branch target (if/else)] L_01C3
L_01C3:
        cmp     byte ptr [bp - 0xa], 0x2c       ; 80 7E F6 2C
        jne     L_01CE                          ; 75 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_01CE
L_01CE:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], dx        ; 89 96 74 FF
;   [unconditional branch target] L_01DC
L_01DC:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_01E9                          ; 74 03
        jmp     L_0121                          ; E9 38 FF
;   [branch target] L_01E9
L_01E9:
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x123                       ; B8 23 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x122                       ; B8 22 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_020E                          ; 75 03
        jmp     L_02A1                          ; E9 93 00
;   [conditional branch target (if/else)] L_020E
L_020E:
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], ss        ; 8C 96 74 FF
        jmp     L_0294                          ; EB 78
;   [loop start] L_021C
L_021C:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x90], al        ; 88 86 70 FF
        cmp     al, 0x20                        ; 3C 20
        je      L_022F                          ; 74 04
        cmp     al, 0x2c                        ; 3C 2C
        jne     L_0235                          ; 75 06
;   [conditional branch target (if/else)] L_022F
L_022F:
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        jmp     L_021C                          ; EB E7
;   [conditional branch target (if/else)] L_0235
L_0235:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0294                          ; 74 55
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0255                          ; EB 0A
;   [loop start] L_024B
L_024B:
        cmp     byte ptr [bp - 0x90], 0x2c      ; 80 BE 70 FF 2C
        je      L_0265                          ; 74 13
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_0255
L_0255:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x90], al        ; 88 86 70 FF
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_024B                          ; 77 E6
;   [conditional branch target (if/else)] L_0265
L_0265:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0275                          ; 74 07
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_0275
L_0275:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], dx        ; 89 96 74 FF
;   [branch target] L_0294
L_0294:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_02A1                          ; 74 03
        jmp     L_021C                          ; E9 7B FF
;   [error/early exit] L_02A1
L_02A1:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2a]   HDC       (5 uses)
;     [bp-0x2c]   HDC       (2 uses)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_02A8   offset=0x02A8  size=260 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATECOMPATIBLEBITMAP
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETTEXTMETRICS
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   FILLRECT
;   FRAMERECT
;   GETDC(HWND hWnd) -> HDC
;   GETSYSTEMMETRICS
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETRECT
;
; Near calls (internal): L_0519
;-------------------------------------------------------------------------
;   [sub-routine] L_02A8
L_02A8:
        ;   = cProc <44> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2c                        ; 83 EC 2C
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A C0 02 00 00 [FIXUP]
        mov     word ptr [0x1de], ax            ; A3 DE 01
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x562], ax            ; A3 62 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    ax                              ; 50
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FD 02 00 00 [FIXUP]
        mov     word ptr [0x348], ax            ; A3 48 03
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 0C 03 00 00 [FIXUP]
        mov     word ptr [0x34e], ax            ; A3 4E 03
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 1A 03 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        ; constant WM_SETTEXT
        mov     cx, 0xc                         ; B9 0C 00
        push    cx                              ; 51
        ;   ^ arg iCap
        mov     si, ax                          ; 8B F0
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        cmp     ax, 3                           ; 3D 03 00
        jge     L_032B                          ; 7D 06
        mov     word ptr [0xce], 0              ; C7 06 CE 00 00 00
;   [conditional branch target (if/else)] L_032B
L_032B:
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     word ptr [0x382], ax            ; A3 82 03
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0xcc], ax             ; A3 CC 00
        add     word ptr [0x382], ax            ; 01 06 82 03
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [0x5b6], ax            ; A3 B6 05
        mov     ax, word ptr [0x382]            ; A1 82 03
        add     ax, 4                           ; 05 04 00
        mov     word ptr [0x3d8], ax            ; A3 D8 03
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x382]            ; A1 82 03
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEBITMAP  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x32a], ax            ; A3 2A 03
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        mov     ax, word ptr [0x382]            ; A1 82 03
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FC 03 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1de]                ; FF 36 DE 01
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        mov     ax, word ptr [0x382]            ; A1 82 03
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 50 04 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x562]                ; FF 36 62 05
        call    far USER.FRAMERECT              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x5b6]            ; A1 B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        push    si                              ; 56
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x562]                ; FF 36 62 05
        call    far USER.FILLRECT               ; 9A B4 04 00 00 [FIXUP]
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [0x5b6]            ; 8B 3E B6 05
        shl     di, 1                           ; D1 E7
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        lea     ax, [si - 1]                    ; 8D 44 FF
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A BB 03 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x562]                ; FF 36 62 05
        call    far USER.FILLRECT               ; 9A CC 03 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 42 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04D2                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04D4                          ; EB 02
;   [conditional branch target (if/else)] L_04D2
L_04D2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04D4
L_04D4:
        mov     word ptr [0x12], ax             ; A3 12 00
        or      ax, ax                          ; 0B C0
        je      L_04E3                          ; 74 08
        mov     word ptr [0x34a], 0             ; C7 06 4A 03 00 00
        jmp     L_04F4                          ; EB 11
;   [conditional branch target (if/else)] L_04E3
L_04E3:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A FE 04 00 00 [FIXUP]
        mov     word ptr [0x34a], ax            ; A3 4A 03
;   [unconditional branch target] L_04F4
L_04F4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x420], ax            ; A3 20 04
        call    L_0519                          ; E8 11 00
        or      ax, ax                          ; 0B C0
        jne     L_0510                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0513                          ; EB 03
;   [conditional branch target (if/else)] L_0510
L_0510:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0513
L_0513:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0519   offset=0x0519  size=353 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   CHANGEMENU
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   GETSYSTEMMENU
;   GETSYSTEMMETRICS
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   REGISTERCLASS
;
; Near calls (internal): L_0AD3
;-------------------------------------------------------------------------
;   [sub-routine] L_0519
L_0519:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A D9 07 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x34a]            ; A1 4A 03
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     word ptr [si + 0x10], 0         ; C7 44 10 00 00
        mov     ax, word ptr [0x1da]            ; A1 DA 01
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, 0xfc                        ; B8 FC 00
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], ds        ; 8C 5C 18
        mov     word ptr [si + 2], OFFSET _entry_5 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _entry_5 ; C7 44 04 FF FF [FIXUP]
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 84 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0568                          ; 75 03
        jmp     L_061C                          ; E9 B4 00
;   [conditional branch target (if/else)] L_0568
L_0568:
        mov     ax, 0xe4                        ; B8 E4 00
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], ds        ; 8C 5C 18
        mov     word ptr [si], 0xb              ; C7 04 0B 00
        mov     word ptr [si + 2], OFFSET _entry_4 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _entry_4 ; C7 44 04 FF FF [FIXUP]
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A AB 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_058F                          ; 75 03
        jmp     L_061C                          ; E9 8D 00
;   [conditional branch target (if/else)] L_058F
L_058F:
        mov     ax, 0xee                        ; B8 EE 00
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], ds        ; 8C 5C 18
        mov     word ptr [si], 2                ; C7 04 02 00
        mov     word ptr [si + 2], OFFSET _entry_2 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _entry_2 ; C7 44 04 FF FF [FIXUP]
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A CF 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_061C                          ; 74 69
        mov     ax, 0xe8                        ; B8 E8 00
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], ds        ; 8C 5C 18
        mov     word ptr [si + 2], OFFSET _entry_3 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _entry_3 ; C7 44 04 FF FF [FIXUP]
        mov     word ptr [si], 0xb              ; C7 04 0B 00
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 0F 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_061C                          ; 74 45
        mov     ax, 0xdc                        ; B8 DC 00
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        mov     word ptr [si + 0x18], ds        ; 8C 5C 18
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [si], 3                ; C7 04 03 00
        mov     word ptr [si + 2], OFFSET _SEG1_0027 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _SEG1_0027 ; C7 44 04 FF FF [FIXUP]
        mov     word ptr [si + 0x12], 1         ; C7 44 12 01 00
        mov     word ptr [si + 0x14], 0         ; C7 44 14 00 00
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_061C                          ; 74 05
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
;   [branch target] L_061C
L_061C:
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x42                        ; 83 EC 42
        mov     word ptr [0xd0], 1              ; C7 06 D0 00 01 00
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 4E 06 00 00 [FIXUP]
        mov     word ptr [0x29e], ax            ; A3 9E 02
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x29c], ax            ; A3 9C 02
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A D6 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0672                          ; 75 03
        jmp     L_087B                          ; E9 09 02
;   [conditional branch target (if/else)] L_0672
L_0672:
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A AE 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_069A                          ; 75 03
        jmp     L_087B                          ; E9 E1 01
;   [conditional branch target (if/else)] L_069A
L_069A:
        push    word ptr [bp - 0x24]            ; FF 76 DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x7d0                       ; B8 D0 07
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06B9                          ; 75 03
        jmp     L_087B                          ; E9 C2 01
;   [conditional branch target (if/else)] L_06B9
L_06B9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x346], ax            ; A3 46 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AD3                          ; E8 0F 04
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x2f6                       ; B8 F6 02
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A F3 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06E1                          ; 75 03
        jmp     L_087B                          ; E9 9A 01
;   [conditional branch target (if/else)] L_06E1
L_06E1:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x228                       ; B8 28 02
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x46                        ; B8 46 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 10 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06FE                          ; 75 03
        jmp     L_087B                          ; E9 7D 01
;   [conditional branch target (if/else)] L_06FE
L_06FE:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x38a                       ; B8 8A 03
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x46                        ; B8 46 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 2D 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_071B                          ; 75 03
        jmp     L_087B                          ; E9 60 01
;   [conditional branch target (if/else)] L_071B
L_071B:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x27                        ; B8 27 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 4A 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0738                          ; 75 03
        jmp     L_087B                          ; E9 43 01
;   [conditional branch target (if/else)] L_0738
L_0738:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x3da                       ; B8 DA 03
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x46                        ; B8 46 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 67 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0755                          ; 75 03
        jmp     L_087B                          ; E9 26 01
;   [conditional branch target (if/else)] L_0755
L_0755:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x32c                       ; B8 2C 03
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 84 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0772                          ; 75 03
        jmp     L_087B                          ; E9 09 01
;   [conditional branch target (if/else)] L_0772
L_0772:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x548                       ; B8 48 05
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A A1 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_078F                          ; 75 03
        jmp     L_087B                          ; E9 EC 00
;   [conditional branch target (if/else)] L_078F
L_078F:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x190                       ; B8 90 01
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07AC                          ; 75 03
        jmp     L_087B                          ; E9 CF 00
;   [conditional branch target (if/else)] L_07AC
L_07AC:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        mov     word ptr [0x526], ax            ; A3 26 05
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [0x534], 0             ; C6 06 34 05 00
        mov     word ptr [0x1d6], 0             ; C7 06 D6 01 00 00
        mov     word ptr [0x354], 1             ; C7 06 54 03 01 00
        mov     word ptr [0x182], 0             ; C7 06 82 01 00 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [0xc2]             ; A1 C2 00
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A B6 00 00 00 [FIXUP]
        mov     word ptr [0x532], ax            ; A3 32 05
        or      ax, ax                          ; 0B C0
        jne     L_07E7                          ; 75 03
        jmp     L_087B                          ; E9 94 00
;   [conditional branch target (if/else)] L_07E7
L_07E7:
        mov     ax, 0xee                        ; B8 EE 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x128                       ; B8 28 01
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 32 08 00 00 [FIXUP]
        mov     word ptr [0x5aa], ax            ; A3 AA 05
        or      ax, ax                          ; 0B C0
        je      L_087B                          ; 74 69
        mov     ax, 0xe8                        ; B8 E8 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x129                       ; B8 29 01
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x55e], ax            ; A3 5E 05
        or      ax, ax                          ; 0B C0
        je      L_087B                          ; 74 3E
        mov     ax, 0xe4                        ; B8 E4 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x12a                       ; B8 2A 01
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5030                      ; BA 30 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 39 0A 00 00 [FIXUP]
        mov     word ptr [0x328], ax            ; A3 28 03
        or      ax, ax                          ; 0B C0
        je      L_087B                          ; 74 13
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xd0], 0              ; C7 06 D0 00 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [branch target] L_087B
L_087B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: GETINSTANCEDATA.

;-------------------------------------------------------------------------
; sub_0886   offset=0x0886  size=83 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETINSTANCEDATA
;-------------------------------------------------------------------------
;   [sub-routine] L_0886
L_0886:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1de                       ; B8 DE 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A A5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x562                       ; B8 62 05
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A B5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x34a                       ; B8 4A 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A C5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x420                       ; B8 20 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A D5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x382                       ; B8 82 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A E5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x5b6                       ; B8 B6 05
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A F5 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xcc                        ; B8 CC 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 05 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x348                       ; B8 48 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 15 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x34e                       ; B8 4E 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 25 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x32a                       ; B8 2A 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 35 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x3d8                       ; B8 D8 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 45 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 55 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xce                        ; B8 CE 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_095F   offset=0x095F  size=146 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0081, L_00DC, L_0886
;-------------------------------------------------------------------------
;   [sub-routine] L_095F
L_095F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x1da], ax            ; A3 DA 01
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0997                          ; 75 15
        mov     word ptr [bp + 6], 1            ; C7 46 06 01 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0081                          ; E8 EF F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_099D                          ; EB 06
;   [conditional branch target (if/else)] L_0997
L_0997:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0886                          ; E8 E9 FE
;   [unconditional branch target] L_099D
L_099D:
        mov     ax, OFFSET _entry_6             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_6             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A C0 09 00 00 [FIXUP]
        mov     word ptr [0x5a2], ax            ; A3 A2 05
        mov     word ptr [0x5a4], dx            ; 89 16 A4 05
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A D7 09 00 00 [FIXUP]
        mov     word ptr [0x2a0], ax            ; A3 A0 02
        mov     word ptr [0x2a2], dx            ; 89 16 A2 02
        mov     ax, OFFSET _entry_9             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_9             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5ae], ax            ; A3 AE 05
        mov     word ptr [0x5b0], dx            ; 89 16 B0 05
        mov     ax, word ptr [0x5a2]            ; A1 A2 05
        or      ax, word ptr [0x5a4]            ; 0B 06 A4 05
        jne     L_09EE                          ; 75 03
        jmp     L_0AB4                          ; E9 C6 00
;   [conditional branch target (if/else)] L_09EE
L_09EE:
        mov     ax, word ptr [0x2a0]            ; A1 A0 02
        or      ax, word ptr [0x2a2]            ; 0B 06 A2 02
        jne     L_09FA                          ; 75 03
        jmp     L_0AB4                          ; E9 BA 00
;   [conditional branch target (if/else)] L_09FA
L_09FA:
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x1ee                       ; B8 EE 01
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 67 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A17                          ; 75 03
        jmp     L_0AB4                          ; E9 9D 00
;   [conditional branch target (if/else)] L_0A17
L_0A17:
        mov     ax, 0xdc                        ; B8 DC 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x1ee                       ; B8 EE 01
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 07 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0A8F                          ; 74 4B
        cmp     word ptr [0xd0], 0              ; 83 3E D0 00 00
        jne     L_0A8F                          ; 75 44
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0A82                          ; 75 31
        call    L_00DC                          ; E8 88 F6
        or      ax, ax                          ; 0B C0
        je      L_0A5D                          ; 74 05
        mov     word ptr [bp + 6], 2            ; C7 46 06 02 00
;   [conditional branch target (if/else)] L_0A5D
L_0A5D:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0A82                          ; 74 1F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_19                   ; 9A 99 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A7A                          ; 74 05
        mov     word ptr [bp + 6], 2            ; C7 46 06 02 00
;   [conditional branch target (if/else)] L_0A7A
L_0A7A:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 1E 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A82
L_0A82:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0AB4                          ; EB 25
;   [conditional branch target (if/else)] L_0A8F
L_0A8F:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xd0], 0              ; 83 3E D0 00 00
        je      L_0AB4                          ; 74 0E
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0AB4                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0AB4
L_0AB4:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0AC6                          ; 74 0C
        cmp     word ptr [0xd0], 0              ; 83 3E D0 00 00
        jne     L_0AC6                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AC8                          ; EB 02
;   [conditional branch target (if/else)] L_0AC6
L_0AC6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0AC8
L_0AC8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING, GETMENU.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0AD3   offset=0x0AD3  size=34 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   GETPROFILESTRING
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_0AD3
L_0AD3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf4                        ; B8 F4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12b                       ; B8 2B 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 68 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B19                          ; 75 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B22                          ; EB 09
; Description (heuristic):
;   Mixed routine using: GETPROFILEINT, GETPROFILESTRING, ENABLEMENUITEM.

;-------------------------------------------------------------------------
; sub_0B19   offset=0x0B19  size=94 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   GETPROFILEINT
;   GETPROFILESTRING
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0B19
L_0B19:
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B22
L_0B22:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 4B 0B 00 00 [FIXUP]
        mov     word ptr [0x542], ax            ; A3 42 05
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x132                       ; B8 32 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x352], ax            ; A3 52 03
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_HSCROLL
        mov     ax, 0x114                       ; B8 14 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 82 0B 00 00 [FIXUP]
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x13e                       ; B8 3E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x118                       ; B8 18 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 9F 0B 00 00 [FIXUP]
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x146                       ; B8 46 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x144                       ; B8 44 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 02 01 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [0x11b], al            ; A2 1B 01
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14e                       ; B8 4E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14c                       ; B8 4C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 05 0B 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [0x11c], al            ; A2 1C 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

MSDOS_TEXT ENDS

        END
