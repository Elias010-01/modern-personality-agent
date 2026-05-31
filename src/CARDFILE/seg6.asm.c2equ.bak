; ======================================================================
; CARDFILE / seg6.asm   (segment 6 of CARDFILE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        19
; Total instructions:                 2230
; 
; Classification (pass8):
;   C-origin (high+medium):             19
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     101 (42 unique)
;   Top:
;        8  GETDLGITEM
;        8  LSTRCPY
;        7  SETDLGITEMTEXT
;        5  GETDLGITEMTEXT
;        5  LSTRLEN
;        4  DLGDIRLIST
;        4  LOCALALLOC
;        4  GETWINDOWTEXTLENGTH
; ======================================================================
; AUTO-GENERATED from original CARDFILE segment 6
; segment_size=5822 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x92                        ; 81 EC 92 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0022                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_006A                          ; 74 4A
        jmp     L_008A                          ; EB 68
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (2 uses)

; Description (heuristic):
;   Mixed routine using: DLGDIRLIST, SENDDLGITEMMESSAGE, SETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0022   offset=0x0022  size=45 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DLGDIRLIST
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0022
L_0022:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x38                        ; B8 38 00
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 44 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x3e                        ; B8 3E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A 2E 01 00 00 [FIXUP]
;   [loop start] L_0064
L_0064:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0300                          ; E9 96 02
;   [conditional branch target (if/else)] L_006A
L_006A:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_008F                          ; 74 1D
        cmp     ax, 2                           ; 3D 02 00
        jne     L_007A                          ; 75 03
        jmp     L_0181                          ; E9 07 01
;   [conditional branch target (if/else)] L_007A
L_007A:
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0082                          ; 75 03
        jmp     L_02F1                          ; E9 6F 02
;   [conditional branch target (if/else)] L_0082
L_0082:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_008A                          ; 75 03
        jmp     L_018F                          ; E9 05 01
;   [branch target] L_008A
L_008A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0300                          ; E9 71 02
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): GETDLGITEM, ISWINDOWENABLED.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_008F   offset=0x008F  size=9 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   ISWINDOWENABLED
;-------------------------------------------------------------------------
;   [loop start (also forward branch)] L_008F
L_008F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A B0 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00A8                          ; 75 03
        jmp     L_0179                          ; E9 D1 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   WORD      (1 use)
;     [bp-0x6]   HANDLE    (1 use)

; Description (heuristic):
;   Small helper using 3 API(s): GETDLGITEM, GETWINDOWTEXTLENGTH, LOCALALLOC.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_00A8   offset=0x00A8  size=16 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETWINDOWTEXTLENGTH
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_00A8
L_00A8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A AA 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A B0 01 00 00 [FIXUP]
        add     ax, 7                           ; 05 07 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A C2 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_00D6                          ; 75 03
        jmp     L_0179                          ; E9 A3 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   INT       (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_00D6   offset=0x00D6  size=81 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   DLGDIRLIST
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   MESSAGEBEEP
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_030B, L_03DD
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_00D6
L_00D6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A E0 01 00 00 [FIXUP]
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A AC 02 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        call    L_030B                          ; E8 05 02
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        call    L_03DD                          ; E8 CC 02
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_014B                          ; 74 33
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A E3 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_014B                          ; 74 15
;   [loop start] L_0136
L_0136:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A BE 02 00 00 [FIXUP]
        jmp     L_0064                          ; E9 19 FF
;   [conditional branch target (if/else)] L_014B
L_014B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_030B                          ; E8 B7 01
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_03DD                          ; E8 80 02
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_016F                          ; 74 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0064                          ; E9 F5 FE
;   [conditional branch target (if/else)] L_016F
L_016F:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0179
L_0179:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 6]               ; FF 76 FA
        jmp     L_0187                          ; EB 06
;   [unconditional branch target] L_0181
L_0181:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
;   [unconditional branch target] L_0187
L_0187:
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0064                          ; E9 D5 FE
;   [unconditional branch target] L_018F
L_018F:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_01A2                          ; 74 0B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_019F                          ; 75 03
        jmp     L_02CD                          ; E9 2E 01
;   [conditional branch target (if/else)] L_019F
L_019F:
        jmp     L_0064                          ; E9 C2 FE
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   WORD      (2 uses)
;     [bp-0x6]   HANDLE    (1 use)

; Description (heuristic):
;   Small helper using 3 API(s): GETDLGITEM, GETWINDOWTEXTLENGTH, LOCALALLOC.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_01A2   offset=0x01A2  size=16 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETWINDOWTEXTLENGTH
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01A2
L_01A2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_01D0                          ; 75 03
        jmp     L_0064                          ; E9 94 FE
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   INT       (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_01D0   offset=0x01D0  size=125 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=11, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSINEXT
;   ANSIPREV
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   DLGDIRLIST
;   DLGDIRSELECT
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_061E
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01D0
L_01D0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.DLGDIRSELECT           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FD                          ; 75 03
        jmp     L_02B0                          ; E9 B3 00
;   [conditional branch target (if/else)] L_01FD
L_01FD:
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 11 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 20 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0x2a             ; 80 3F 2A
        je      L_022A                          ; 74 05
        cmp     byte ptr [bx], 0x3a             ; 80 3F 3A
        jne     L_022F                          ; 75 05
;   [conditional branch target (if/else)] L_022A
L_022A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0231                          ; EB 02
;   [conditional branch target (if/else)] L_022F
L_022F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0231
L_0231:
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
;   [loop start] L_0235
L_0235:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jbe     L_0280                          ; 76 43
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 2D 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        cmp     al, 0x2a                        ; 3C 2A
        je      L_025C                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_0262                          ; 75 06
;   [conditional branch target (if/else)] L_025C
L_025C:
        mov     word ptr [bp - 0x90], 1         ; C7 86 70 FF 01 00
;   [conditional branch target (if/else)] L_0262
L_0262:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x92], al        ; 88 86 6E FF
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0273                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_0235                          ; 75 C2
;   [conditional branch target (if/else)] L_0273
L_0273:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_0280
L_0280:
        cmp     word ptr [bp - 0x90], 0         ; 83 BE 70 FF 00
        je      L_0299                          ; 74 12
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        lea     cx, [bp - 0x8e]                 ; 8D 8E 72 FF
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_02A9                          ; EB 10
;   [conditional branch target (if/else)] L_0299
L_0299:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        lea     cx, [bp - 0x8e]                 ; 8D 8E 72 FF
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x44                        ; B8 44 00
;   [unconditional branch target] L_02A9
L_02A9:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A D3 03 00 00 [FIXUP]
;   [unconditional branch target] L_02B0
L_02B0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0064                          ; E9 97 FD
;   [unconditional branch target] L_02CD
L_02CD:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02EE                          ; 75 03
        jmp     L_008F                          ; E9 A1 FD
;   [conditional branch target (if/else)] L_02EE
L_02EE:
        jmp     L_0136                          ; E9 45 FE
;   [unconditional branch target] L_02F1
L_02F1:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_061E                          ; E8 24 03
        add     sp, 4                           ; 83 C4 04
        jmp     L_0064                          ; E9 64 FD
;   [unconditional branch target] L_0300
L_0300:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xa]   INT       (2 uses)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_030B   offset=0x030B  size=90 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   ANSIPREV
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_030B
L_030B:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 44 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_035F                          ; 75 25
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A BD 03 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     es, dx                          ; 8E C2
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_035F                          ; 75 0D
        cmp     word ptr [bp - 0xa], 2          ; 83 7E F6 02
        jne     L_035F                          ; 75 07
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_03C5                          ; EB 66
;   [conditional branch target (if/else)] L_035F
L_035F:
        cmp     byte ptr [si], 0x5c             ; 80 3C 5C
        je      L_0369                          ; 74 05
        cmp     byte ptr [si], 0x3a             ; 80 3C 3A
        jne     L_0370                          ; 75 07
;   [conditional branch target (if/else)] L_0369
L_0369:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_03C5                          ; EB 55
;   [conditional branch target (if/else)] L_0370
L_0370:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_037A                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_037D                          ; EB 03
;   [conditional branch target (if/else)] L_037A
L_037A:
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_037D
L_037D:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [loop start] L_0380
L_0380:
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        jae     L_03A1                          ; 73 1C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0397                          ; 74 0C
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_03D7                          ; 74 47
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_039C                          ; 75 07
        jmp     L_03D7                          ; EB 40
;   [conditional branch target (if/else)] L_0397
L_0397:
        cmp     byte ptr [di], 0x2e             ; 80 3D 2E
        je      L_03D7                          ; 74 3B
;   [conditional branch target (if/else)] L_039C
L_039C:
        cmp     byte ptr [di], 0x5c             ; 80 3D 5C
        jne     L_03B3                          ; 75 12
;   [conditional branch target (if/else)] L_03A1
L_03A1:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03C5                          ; 74 1E
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_03D7                          ; 74 2B
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_03C5                          ; 75 14
        jmp     L_03D7                          ; EB 24
;   [conditional branch target (if/else)] L_03B3
L_03B3:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_0380                          ; EB BB
;   [branch target] L_03C5
L_03C5:
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0x4c                        ; 05 4C 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_03D7
L_03D7:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: DLGDIRLIST.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_03DD   offset=0x03DD  size=49 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DLGDIRLIST
;-------------------------------------------------------------------------
;   [sub-routine] L_03DD
L_03DD:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_03F6                          ; EB 10
;   [loop start] L_03E6
L_03E6:
        cmp     byte ptr [si], 0x2a             ; 80 3C 2A
        je      L_03F0                          ; 74 05
        cmp     byte ptr [si], 0x3f             ; 80 3C 3F
        jne     L_03F5                          ; 75 05
;   [conditional branch target (if/else)] L_03F0
L_03F0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03FD                          ; EB 08
;   [conditional branch target (if/else)] L_03F5
L_03F5:
        inc     si                              ; 46
;   [unconditional branch target] L_03F6
L_03F6:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_03E6                          ; 75 EB
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_03FD
L_03FD:
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
        sub     sp, 0x8c                        ; 81 EC 8C 00
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0424                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0421                          ; 75 03
        jmp     L_050C                          ; E9 EB 00
;   [conditional branch target (if/else)] L_0421
L_0421:
        jmp     L_0524                          ; E9 00 01
;   [conditional branch target (if/else)] L_0424
L_0424:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A 60 00 00 00 [FIXUP]
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        jne     L_0442                          ; 75 03
        jmp     L_04F1                          ; E9 AF 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   INT       (1 use)

; Description (heuristic):
;   Mixed routine using: ANSINEXT, GETDLGITEMTEXT, SETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0442   offset=0x0442  size=58 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSINEXT
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_05C5
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0442
L_0442:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 7F 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x85], 0x5c ; 80 BA 7B FF 5C
        je      L_0474                          ; 74 10
        mov     byte ptr [bp + si - 0x84], 0x5c ; C6 82 7C FF 5C
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     byte ptr [bp + si - 0x84], 0    ; C6 82 7C FF 00
;   [conditional branch target (if/else)] L_0474
L_0474:
        mov     word ptr [bp - 0x8a], 0x35a     ; C7 86 76 FF 5A 03
        mov     ax, 0x35a                       ; B8 5A 03
        push    ax                              ; 50
        call    L_05C5                          ; E8 44 01
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
;   [loop start] L_048C
L_048C:
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jae     L_04A8                          ; 73 0E
        mov     bx, word ptr [bp - 0x8a]        ; 8B 9E 76 FF
        mov     si, word ptr [bp - 0x8c]        ; 8B B6 74 FF
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
        je      L_04D5                          ; 74 2D
;   [conditional branch target (if/else)] L_04A8
L_04A8:
        mov     bx, word ptr [bp - 0x8c]        ; 8B 9E 74 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_04BB                          ; 75 0A
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jae     L_04C1                          ; 73 06
;   [conditional branch target (if/else)] L_04BB
L_04BB:
        mov     word ptr [bp - 0x8a], 0x35a     ; C7 86 76 FF 5A 03
;   [conditional branch target (if/else)] L_04C1
L_04C1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A BA 06 00 00 [FIXUP]
        jmp     L_0506                          ; EB 31
;   [conditional branch target (if/else)] L_04D5
L_04D5:
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A EB 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 10 06 00 00 [FIXUP]
        jmp     L_048C                          ; EB 9B
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): ENABLEWINDOW, GETDLGITEM.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_04F1   offset=0x04F1  size=21 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;-------------------------------------------------------------------------
;   [unconditional branch target] L_04F1
L_04F1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 31 05 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 52 06 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0506
L_0506:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05B9                          ; E9 AD 00
;   [unconditional branch target] L_050C
L_050C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0529                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        jne     L_051C                          ; 75 03
        jmp     L_05A2                          ; E9 86 00
;   [conditional branch target (if/else)] L_051C
L_051C:
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0524                          ; 75 03
        jmp     L_05AA                          ; E9 86 00
;   [branch target] L_0524
L_0524:
        sub     ax, ax                          ; 2B C0
        jmp     L_05B9                          ; E9 90 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (3 uses)
;   Locals:
;     [bp-0x4]   WORD      (2 uses)
;     [bp-0x86]   HANDLE    (1 use)

; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.
;   Reads/writes dialog item text.

;-------------------------------------------------------------------------
; sub_0529   offset=0x0529  size=56 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   GETWINDOWTEXTLENGTH
;   ISWINDOWENABLED
;
; Near calls (internal): L_061E
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0529
L_0529:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 47 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A 9D 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0506                          ; 74 C7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 30 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A B6 00 00 00 [FIXUP]
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A C8 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        or      ax, ax                          ; 0B C0
        je      L_0593                          ; 74 25
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        call    far _entry_14                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 4                           ; 83 C4 04
;   [conditional branch target (if/else)] L_0593
L_0593:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
;   [loop start] L_059A
L_059A:
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A D7 06 00 00 [FIXUP]
        jmp     L_0506                          ; E9 64 FF
;   [unconditional branch target] L_05A2
L_05A2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_059A                          ; EB F0
;   [unconditional branch target] L_05AA
L_05AA:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_061E                          ; E8 6B 00
        add     sp, 4                           ; 83 C4 04
        jmp     L_0506                          ; E9 4D FF
;   [unconditional branch target] L_05B9
L_05B9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: ANSINEXT, ANSIPREV, LSTRLEN.

;-------------------------------------------------------------------------
; sub_05C5   offset=0x05C5  size=40 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   ANSINEXT
;   ANSIPREV
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_05C5
L_05C5:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 04 02 00 00 [FIXUP]
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A F4 05 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [loop start] L_05E4
L_05E4:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jbe     L_0617                          ; 76 2B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 45 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x5c                        ; 3C 5C
        je      L_060A                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_05E4                          ; 75 DA
;   [conditional branch target (if/else)] L_060A
L_060A:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 79 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [error/early exit] L_0617
L_0617:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (2 uses)

; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.
;   Reads/writes dialog item text.

;-------------------------------------------------------------------------
; sub_061E   offset=0x061E  size=85 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEWINDOW
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_06EB
;-------------------------------------------------------------------------
;   [sub-routine] L_061E
L_061E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 6], 0x300        ; 81 7E 06 00 03
        jne     L_0656                          ; 75 2E
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 3D 06 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A AE 07 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0656
L_0656:
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
        sub     sp, 0x2e                        ; 83 EC 2E
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_06C3                          ; 75 54
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        push    word ptr [0x166]                ; FF 36 66 01
        call    L_06EB                          ; E8 71 00
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x166], 1             ; 83 3E 66 01 01
        jne     L_068E                          ; 75 07
        mov     word ptr [bp - 6], 5            ; C7 46 FA 05 00
        jmp     L_0693                          ; EB 05
;   [conditional branch target (if/else)] L_068E
L_068E:
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
;   [unconditional branch target] L_0693
L_0693:
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg wID
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        lea     ax, [bp + si - 0x2e]            ; 8D 42 D2
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A A2 07 00 00 [FIXUP]
;   [loop start] L_06BE
L_06BE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_06DF                          ; EB 1C
;   [conditional branch target (if/else)] L_06C3
L_06C3:
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_06DD                          ; 75 13
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_06DD                          ; 75 0D
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 88 01 00 00 [FIXUP]
        jmp     L_06BE                          ; EB E1
;   [conditional branch target (if/else)] L_06DD
L_06DD:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_06DF
L_06DF:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETDLGITEM, SETDLGITEMTEXT, SETFOCUS.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_06EB   offset=0x06EB  size=107 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;   SETFOCUS
;
; Near calls (internal): L_1116
;-------------------------------------------------------------------------
;   [sub-routine] L_06EB
L_06EB:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_06F8
L_06F8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        add     dl, 0x30                        ; 80 C2 30
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr [bx], dl               ; 88 17
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [bp + 4], ax           ; 89 46 04
        or      ax, ax                          ; 0B C0
        ja      L_06F8                          ; 77 DD
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_074B                          ; EB 1C
;   [loop start] L_072F
L_072F:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        mov     bx, si                          ; 8B DE
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [bx], al               ; 88 07
;   [unconditional branch target] L_074B
L_074B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_072F                          ; 72 DC
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
        sub     sp, 0x26                        ; 83 EC 26
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0777                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_07DD                          ; 74 68
        jmp     L_07EF                          ; EB 78
;   [conditional branch target (if/else)] L_0777
L_0777:
        mov     ax, word ptr [0x294]            ; A1 94 02
        cmp     ax, 3                           ; 3D 03 00
        je      L_0790                          ; 74 11
        cmp     ax, 8                           ; 3D 08 00
        je      L_07BE                          ; 74 3A
        cmp     ax, 0xb                         ; 3D 0B 00
        je      L_07C5                          ; 74 3C
        mov     word ptr [bp - 0x26], 0x53      ; C7 46 DA 53 00
        jmp     L_0795                          ; EB 05
;   [conditional branch target (if/else)] L_0790
L_0790:
        mov     word ptr [bp - 0x26], 0x411     ; C7 46 DA 11 04
;   [loop start (also forward branch)] L_0795
L_0795:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 2F 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 97 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_07B8
L_07B8:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0852                          ; E9 94 00
;   [conditional branch target (if/else)] L_07BE
L_07BE:
        mov     word ptr [bp - 0x26], 0x332     ; C7 46 DA 32 03
        jmp     L_0795                          ; EB D0
;   [conditional branch target (if/else)] L_07C5
L_07C5:
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1116                          ; E8 3E 09
        add     sp, 4                           ; 83 C4 04
        jmp     L_0795                          ; EB B8
;   [conditional branch target (if/else)] L_07DD
L_07DD:
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_07F3                          ; 74 09
        cmp     ax, 2                           ; 3D 02 00
        je      L_0844                          ; 74 55
;   [unconditional branch target] L_07EF
L_07EF:
        sub     ax, ax                          ; 2B C0
        jmp     L_0852                          ; EB 5F
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   HWND      (1 use)

; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.
;   Reads/writes dialog item text.

;-------------------------------------------------------------------------
; sub_07F3   offset=0x07F3  size=864 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GETPROFILESTRING
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   WRITEPROFILESTRING
;   CHECKRADIOBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
;   GETWINDOWTEXTLENGTH
;   ISDLGBUTTONCHECKED
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;   SETFOCUS
;
; Near calls (internal): L_1116
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_07F3
L_07F3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A A8 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A 11 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_081A                          ; 75 0E
        cmp     word ptr [0x294], 3             ; 83 3E 94 02 03
        je      L_081A                          ; 74 07
        cmp     word ptr [0x294], 5             ; 83 3E 94 02 05
        jne     L_0844                          ; 75 2A
;   [conditional branch target (if/else)] L_081A
L_081A:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 35 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        or      ax, ax                          ; 0B C0
        je      L_0844                          ; 74 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 50 0B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0844
L_0844:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 5B 0B 00 00 [FIXUP]
        jmp     L_07B8                          ; E9 66 FF
;   [unconditional branch target] L_0852
L_0852:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x44                        ; 83 EC 44
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_087F                          ; 74 0D
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_087A                          ; 75 03
        jmp     L_0A2E                          ; E9 B4 01
;   [loop start (also forward branch)] L_087A
L_087A:
        sub     ax, ax                          ; 2B C0
        jmp     L_0BAD                          ; E9 2E 03
;   [conditional branch target (if/else)] L_087F
L_087F:
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1116                          ; E8 8A 08
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A CF 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 1E 0A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A D3 05 00 00 [FIXUP]
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 4C 06 00 00 [FIXUP]
        cmp     word ptr [0x4a], 0              ; 83 3E 4A 00 00
        je      L_08D5                          ; 74 03
        jmp     L_09B6                          ; E9 E1 00
;   [conditional branch target (if/else)] L_08D5
L_08D5:
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x55                        ; B8 55 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x54                        ; B8 54 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08F9                          ; 75 03
        jmp     L_09B6                          ; E9 BD 00
;   [conditional branch target (if/else)] L_08F9
L_08F9:
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        jmp     L_0910                          ; EB 0F
;   [loop start] L_0901
L_0901:
        cmp     byte ptr [bp - 0x44], 0x2c      ; 80 7E BC 2C
        je      L_091C                          ; 74 15
        cmp     byte ptr [bp - 0x44], 0x20      ; 80 7E BC 20
        je      L_091C                          ; 74 0F
        inc     word ptr [bp - 0x42]            ; FF 46 BE
;   [unconditional branch target] L_0910
L_0910:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        or      al, al                          ; 0A C0
        jne     L_0901                          ; 75 E5
;   [conditional branch target (if/else)] L_091C
L_091C:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_092A                          ; 74 06
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_092A
L_092A:
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x5b                        ; B8 5B 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0943                          ; 74 06
        mov     word ptr [0xba], 0              ; C7 06 BA 00 00 00
;   [loop start (also forward branch)] L_0943
L_0943:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        cmp     al, 0x2c                        ; 3C 2C
        je      L_0953                          ; 74 04
        cmp     al, 0x20                        ; 3C 20
        jne     L_0958                          ; 75 05
;   [conditional branch target (if/else)] L_0953
L_0953:
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        jmp     L_0943                          ; EB EB
;   [conditional branch target (if/else)] L_0958
L_0958:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        cmp     al, 0x50                        ; 3C 50
        je      L_0968                          ; 74 04
        cmp     al, 0x70                        ; 3C 70
        jne     L_0979                          ; 75 11
;   [conditional branch target (if/else)] L_0968
L_0968:
        mov     word ptr [0xbc], 0              ; C7 06 BC 00 00 00
        jmp     L_0979                          ; EB 09
;   [loop start] L_0970
L_0970:
        cmp     byte ptr [bp - 0x44], 0x2c      ; 80 7E BC 2C
        je      L_0985                          ; 74 0F
        inc     word ptr [bp - 0x42]            ; FF 46 BE
;   [branch target] L_0979
L_0979:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        or      al, al                          ; 0A C0
        jne     L_0970                          ; 75 EB
;   [loop start (also forward branch)] L_0985
L_0985:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        cmp     al, 0x2c                        ; 3C 2C
        je      L_0995                          ; 74 04
        cmp     al, 0x20                        ; 3C 20
        jne     L_099A                          ; 75 05
;   [conditional branch target (if/else)] L_0995
L_0995:
        inc     word ptr [bp - 0x42]            ; FF 46 BE
        jmp     L_0985                          ; EB EB
;   [conditional branch target (if/else)] L_099A
L_099A:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x44], al        ; 88 46 BC
        cmp     al, 0x46                        ; 3C 46
        je      L_09AA                          ; 74 04
        cmp     al, 0x46                        ; 3C 46
        jne     L_09B0                          ; 75 06
;   [conditional branch target (if/else)] L_09AA
L_09AA:
        mov     word ptr [0xbe], 1              ; C7 06 BE 00 01 00
;   [conditional branch target (if/else)] L_09B0
L_09B0:
        mov     word ptr [0x4a], 1              ; C7 06 4A 00 01 00
;   [unconditional branch target] L_09B6
L_09B6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        cmp     word ptr [0xbc], 0              ; 83 3E BC 00 00
        je      L_09CD                          ; 74 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_09D0                          ; EB 03
;   [conditional branch target (if/else)] L_09CD
L_09CD:
        mov     ax, 7                           ; B8 07 00
;   [unconditional branch target] L_09D0
L_09D0:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A F2 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        cmp     word ptr [0xba], 0              ; 83 3E BA 00 00
        je      L_09ED                          ; 74 05
        mov     ax, 9                           ; B8 09 00
        jmp     L_09F0                          ; EB 03
;   [conditional branch target (if/else)] L_09ED
L_09ED:
        mov     ax, 0xa                         ; B8 0A 00
;   [unconditional branch target] L_09F0
L_09F0:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 12 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_0A0D                          ; 74 05
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        jmp     L_0A10                          ; EB 03
;   [conditional branch target (if/else)] L_0A0D
L_0A0D:
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
;   [unconditional branch target] L_0A10
L_0A10:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 89 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 0B 0B 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A B4 07 00 00 [FIXUP]
;   [loop start] L_0A28
L_0A28:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BAD                          ; E9 7F 01
;   [unconditional branch target] L_0A2E
L_0A2E:
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_0A41                          ; 76 03
        jmp     L_087A                          ; E9 39 FE
;   [conditional branch target (if/else)] L_0A41
L_0A41:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xb90]        ; 2E FF A7 90 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 74 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [0xbc]             ; A1 BC 00
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        je      L_0A66                          ; 74 06
        mov     word ptr [0x4a], 0              ; C7 06 4A 00 00 00
;   [conditional branch target (if/else)] L_0A66
L_0A66:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [0xbc], ax             ; A3 BC 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 97 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [0xba]             ; A1 BA 00
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        je      L_0A89                          ; 74 06
        mov     word ptr [0x4a], 0              ; C7 06 4A 00 00 00
;   [conditional branch target (if/else)] L_0A89
L_0A89:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [0xba], ax             ; A3 BA 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [0xbe]             ; A1 BE 00
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        je      L_0AAC                          ; 74 06
        mov     word ptr [0x4a], 0              ; C7 06 4A 00 00 00
;   [conditional branch target (if/else)] L_0AAC
L_0AAC:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [0xbe], ax             ; A3 BE 00
        cmp     word ptr [0x4a], 0              ; 83 3E 4A 00 00
        jne     L_0B03                          ; 75 4A
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x60                        ; B8 60 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F6 00 00 00 [FIXUP]
        cmp     word ptr [0xba], 0              ; 83 3E BA 00 00
        je      L_0AD3                          ; 74 04
        mov     byte ptr [bp - 0x3d], 0x31      ; C6 46 C3 31
;   [conditional branch target (if/else)] L_0AD3
L_0AD3:
        cmp     word ptr [0xbc], 0              ; 83 3E BC 00 00
        je      L_0ADE                          ; 74 04
        mov     byte ptr [bp - 0x3b], 0x54      ; C6 46 C5 54
;   [conditional branch target (if/else)] L_0ADE
L_0ADE:
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_0AE9                          ; 74 04
        mov     byte ptr [bp - 0x39], 0x46      ; C6 46 C7 46
;   [conditional branch target (if/else)] L_0AE9
L_0AE9:
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x69                        ; B8 69 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x4a], 1              ; C7 06 4A 00 01 00
;   [conditional branch target (if/else)] L_0B03
L_0B03:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A F9 04 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXTLENGTH    ; 9A 4D 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0B2A                          ; 75 0E
        cmp     word ptr [0x294], 3             ; 83 3E 94 02 03
        je      L_0B2A                          ; 74 07
        cmp     word ptr [0x294], 5             ; 83 3E 94 02 05
        jne     L_0B54                          ; 75 2A
;   [conditional branch target (if/else)] L_0B2A
L_0B2A:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 62 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        or      ax, ax                          ; 0B C0
        je      L_0B54                          ; 74 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 54 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0B54
L_0B54:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 9B 05 00 00 [FIXUP]
        jmp     L_0A28                          ; E9 C6 FE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        jmp     L_0B84                          ; EB 16
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_0B84                          ; EB 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
;   [unconditional branch target] L_0B84
L_0B84:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A28                          ; E9 98 FE
        dec     cx                              ; 49
        or      dl, byte ptr [si + 0xb]         ; 0A 54 0B
        jp      L_0B9E                          ; 7A 08
        jp      L_0BA0                          ; 7A 08
        jp      L_0BA2                          ; 7A 08
        bound   cx, dword ptr [bp + di]         ; 62 0B
        bound   cx, dword ptr [bp + di]         ; 62 0B
;   [conditional branch target (if/else)] L_0B9E
L_0B9E:
        jp      L_0BA8                          ; 7A 08
;   [conditional branch target (if/else)] L_0BA0
L_0BA0:
        outsb   dx, byte ptr [si]               ; 6E
        or      bp, word ptr [bp + 0xb]         ; 0B 6E 0B
        jp      L_0BAE                          ; 7A 08
        jp      L_0BB3                          ; 7A 0B
;   [conditional branch target (if/else)] L_0BA8
L_0BA8:
        jp      L_0BB5                          ; 7A 0B
        jmp     L_0A28                          ; E9 7B FE
;   [unconditional branch target] L_0BAD
L_0BAD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_0BB3
L_0BB3:
        pop     bp                              ; 5D
        dec     bp                              ; 4D
;   [error/early exit] L_0BB5
L_0BB5:
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x182                       ; 81 EC 82 01
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A C3 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x180], ax       ; 89 86 80 FE
        mov     word ptr [bp - 0x17e], dx       ; 89 96 82 FE
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [0x18]                 ; F7 2E 18 00
        add     ax, word ptr [bp - 0x180]       ; 03 86 80 FE
        mov     dx, word ptr [bp - 0x17e]       ; 8B 96 82 FE
        add     ax, 0x34                        ; 05 34 00
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     word ptr [bp - 0x140], dx       ; 89 96 C0 FE
        mov     word ptr [bp - 0x144], 1        ; C7 86 BC FE 01 00
        jmp     L_0CB3                          ; E9 B9 00
;   [loop start] L_0BFA
L_0BFA:
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        add     ax, word ptr [0x18]             ; 03 06 18 00
        cmp     ax, word ptr [0x166]            ; 3B 06 66 01
        jne     L_0C18                          ; 75 10
        mov     ax, word ptr [bp - 0x180]       ; 8B 86 80 FE
        mov     dx, word ptr [bp - 0x17e]       ; 8B 96 82 FE
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     word ptr [bp - 0x140], dx       ; 89 96 C0 FE
;   [conditional branch target (if/else)] L_0C18
L_0C18:
        mov     ax, word ptr [bp - 0x142]       ; 8B 86 BE FE
        mov     dx, word ptr [bp - 0x140]       ; 8B 96 C0 FE
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x146], 0        ; C7 86 BA FE 00 00
;   [loop start] L_0C2F
L_0C2F:
        cmp     word ptr [bp - 0x146], 0x28     ; 83 BE BA FE 28
        jge     L_0CAA                          ; 7D 74
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0CAA                          ; 74 6B
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14a], ax       ; 89 86 B6 FE
        mov     word ptr [bp - 0x148], dx       ; 89 96 B8 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
;   [loop start] L_0C52
L_0C52:
        mov     bx, word ptr [bp - 0x88]        ; 8B 9E 78 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0C8E                          ; 74 33
        les     bx, ptr [bp - 0x14a]            ; C4 9E B6 FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0C8E                          ; 74 29
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 84 0C 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x88]        ; 8B 9E 78 FF
        mov     cl, byte ptr [bx]               ; 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpsz (low/offset)
        mov     word ptr [bp - 0x182], ax       ; 89 86 7E FE
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 35 0E 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x182]       ; 3A 86 7E FE
        je      L_0CA0                          ; 74 12
;   [conditional branch target (if/else)] L_0C8E
L_0C8E:
        mov     bx, word ptr [bp - 0x88]        ; 8B 9E 78 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0CBF                          ; 74 28
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     word ptr [bp - 0x146]           ; FF 86 BA FE
        jmp     L_0C2F                          ; EB 8F
;   [conditional branch target (if/else)] L_0CA0
L_0CA0:
        inc     word ptr [bp - 0x88]            ; FF 86 78 FF
        inc     word ptr [bp - 0x14a]           ; FF 86 B6 FE
        jmp     L_0C52                          ; EB A8
;   [conditional branch target (if/else)] L_0CAA
L_0CAA:
        add     word ptr [bp - 0x142], 0x34     ; 83 86 BE FE 34
        inc     word ptr [bp - 0x144]           ; FF 86 BC FE
;   [unconditional branch target] L_0CB3
L_0CB3:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x144], ax       ; 39 86 BC FE
        jg      L_0CBF                          ; 7F 03
        jmp     L_0BFA                          ; E9 3B FF
;   [conditional branch target (if/else)] L_0CBF
L_0CBF:
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A D4 0E 00 00 [FIXUP]
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x144], ax       ; 39 86 BC FE
        jg      L_0CFC                          ; 7F 2B
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        add     ax, word ptr [0x18]             ; 03 06 18 00
        mov     word ptr [bp - 0x13e], ax       ; 89 86 C2 FE
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x13e], ax       ; 39 86 C2 FE
        jl      L_0CEA                          ; 7C 04
        sub     word ptr [bp - 0x13e], ax       ; 29 86 C2 FE
;   [conditional branch target (if/else)] L_0CEA
L_0CEA:
        push    word ptr [bp - 0x13e]           ; FF B6 C2 FE
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far _entry_36                   ; 9A 7D 0F 00 00 [FIXUP]
        add     sp, 4                           ; 83 C4 04
        jmp     L_0D75                          ; EB 79
;   [conditional branch target (if/else)] L_0CFC
L_0CFC:
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x17c]                ; 8D 86 84 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A A9 06 00 00 [FIXUP]
        lea     ax, [bp - 0x13c]                ; 8D 86 C4 FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x86                        ; B8 86 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A C4 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x13c]                ; 8D 86 C4 FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 3F 0D 00 00 [FIXUP]
        lea     ax, [bp - 0x13c]                ; 8D 86 C4 FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x88                        ; B8 88 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x13c]                ; 8D 86 C4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x17c]                ; 8D 86 84 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_13                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A B7 0D 00 00 [FIXUP]
;   [unconditional branch target] L_0D75
L_0D75:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c8                       ; 81 EC C8 01
        push    di                              ; 57
        push    si                              ; 56
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
        or      ax, ax                          ; 0B C0
        jne     L_0DBE                          ; 75 19
;   [loop start] L_0DA5
L_0DA5:
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndOwner
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_110B                          ; E9 4D 03
;   [conditional branch target (if/else)] L_0DBE
L_0DBE:
        push    word ptr [bp - 0x188]           ; FF B6 78 FE
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A A0 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [bp - 0x184], 0        ; C7 86 7C FE 00 00
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    dx                              ; 52
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A C7 08 00 00 [FIXUP]
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp - 0x18e], ax       ; 89 86 72 FE
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     word ptr [bp - 0x1c2], ax       ; 89 86 3E FE
        mov     ax, word ptr [bp - 0x18e]       ; 8B 86 72 FE
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        mov     dx, word ptr [bp - 0x3e]        ; 8B 56 C2
        mov     word ptr [bp - 0x1c6], ax       ; 89 86 3A FE
        mov     word ptr [bp - 0x1c4], dx       ; 89 96 3C FE
        jmp     L_0E6B                          ; EB 56
;   [loop start] L_0E15
L_0E15:
        mov     word ptr [bp - 0x3c], 0x332     ; C7 46 C4 32 03
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
;   [loop start] L_0E24
L_0E24:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0E54                          ; 74 28
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 4A 0E 00 00 [FIXUP]
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        mov     cl, byte ptr es:[bx]            ; 26 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpsz (low/offset)
        mov     word ptr [bp - 0x1c8], ax       ; 89 86 38 FE
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 37 0F 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x1c8]       ; 3A 86 38 FE
        je      L_0E5F                          ; 74 0B
;   [conditional branch target (if/else)] L_0E54
L_0E54:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0E67                          ; 75 0B
        jmp     L_0F5E                          ; E9 FF 00
;   [conditional branch target (if/else)] L_0E5F
L_0E5F:
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        jmp     L_0E24                          ; EB BD
;   [conditional branch target (if/else)] L_0E67
L_0E67:
        inc     word ptr [bp - 0x1c6]           ; FF 86 3A FE
;   [unconditional branch target] L_0E6B
L_0E6B:
        les     bx, ptr [bp - 0x1c6]            ; C4 9E 3A FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0E15                          ; 75 A0
        inc     word ptr [bp - 0x1c2]           ; FF 86 3E FE
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x1c2], ax       ; 39 86 3E FE
        jne     L_0E88                          ; 75 06
        mov     word ptr [bp - 0x1c2], 0        ; C7 86 3E FE 00 00
;   [conditional branch target (if/else)] L_0E88
L_0E88:
        mov     word ptr [bp - 0x186], 0        ; C7 86 7A FE 00 00
;   [loop start] L_0E8E
L_0E8E:
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        cmp     word ptr [bp - 0x186], ax       ; 39 86 7A FE
        jl      L_0E9B                          ; 7C 03
        jmp     L_0FEC                          ; E9 51 01
;   [conditional branch target (if/else)] L_0E9B
L_0E9B:
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18c], ax       ; 89 86 74 FE
        mov     word ptr [bp - 0x18a], dx       ; 89 96 76 FE
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 0x1c2]           ; F7 AE 3E FE
        add     word ptr [bp - 0x18c], ax       ; 01 86 74 FE
        mov     ax, word ptr [bp - 0x18c]       ; 8B 86 74 FE
        mov     dx, word ptr [bp - 0x18a]       ; 8B 96 76 FE
        lea     di, [bp - 0x36]                 ; 8D 7E CA
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ax                              ; 50
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        cmp     word ptr [bp - 0x44], 0         ; 83 7E BC 00
        je      L_0EFC                          ; 74 08
        push    word ptr [bp - 0x44]            ; FF 76 BC
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0EFC
L_0EFC:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     dx, word ptr [bp - 0x3e]        ; 8B 56 C2
        mov     word ptr [bp - 0x1c6], ax       ; 89 86 3A FE
        mov     word ptr [bp - 0x1c4], dx       ; 89 96 3C FE
;   [loop start] L_0F0A
L_0F0A:
        les     bx, ptr [bp - 0x1c6]            ; C4 9E 3A FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0F17                          ; 75 03
        jmp     L_0FD2                          ; E9 BB 00
;   [conditional branch target (if/else)] L_0F17
L_0F17:
        mov     word ptr [bp - 0x3c], 0x332     ; C7 46 C4 32 03
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
;   [loop start] L_0F26
L_0F26:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0F56                          ; 74 28
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 4C 0F 00 00 [FIXUP]
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        mov     cl, byte ptr es:[bx]            ; 26 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpsz (low/offset)
        mov     word ptr [bp - 0x1c8], ax       ; 89 86 38 FE
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 75 01 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x1c8]       ; 3A 86 38 FE
        je      L_0FC2                          ; 74 6C
;   [conditional branch target (if/else)] L_0F56
L_0F56:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0FCB                          ; 75 6D
;   [loop start (also forward branch)] L_0F5E
L_0F5E:
        mov     word ptr [bp - 0x184], 1        ; C7 86 7C FE 01 00
;   [loop start] L_0F64
L_0F64:
        cmp     word ptr [bp - 0x184], 0        ; 83 BE 7C FE 00
        jne     L_0F6E                          ; 75 03
        jmp     L_1080                          ; E9 12 01
;   [conditional branch target (if/else)] L_0F6E
L_0F6E:
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x1c2], ax       ; 39 86 3E FE
        je      L_0F8B                          ; 74 14
        push    word ptr [bp - 0x1c2]           ; FF B6 3E FE
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 4                           ; 83 C4 04
        or      ax, ax                          ; 0B C0
        jne     L_0F8B                          ; 75 03
        jmp     L_0DA5                          ; E9 1A FE
;   [conditional branch target (if/else)] L_0F8B
L_0F8B:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x332                       ; B8 32 03
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A BA 08 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x1c6]       ; 8B 8E 3A FE
        sub     cx, word ptr [bp - 0x40]        ; 2B 4E C0
        add     cx, ax                          ; 03 C8
        sub     bx, bx                          ; 2B DB
        mov     bx, cx                          ; 8B D9
        sub     cx, cx                          ; 2B C9
        mov     ax, word ptr [bp - 0x1c6]       ; 8B 86 3A FE
        sub     ax, word ptr [bp - 0x40]        ; 2B 46 C0
        mov     cx, ax                          ; 8B C8
        push    bx                              ; 53
        push    cx                              ; 51
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A F0 0D 00 00 [FIXUP]
        jmp     L_10F9                          ; E9 37 01
;   [conditional branch target (if/else)] L_0FC2
L_0FC2:
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        jmp     L_0F26                          ; E9 5B FF
;   [conditional branch target (if/else)] L_0FCB
L_0FCB:
        inc     word ptr [bp - 0x1c6]           ; FF 86 3A FE
        jmp     L_0F0A                          ; E9 38 FF
;   [unconditional branch target] L_0FD2
L_0FD2:
        inc     word ptr [bp - 0x1c2]           ; FF 86 3E FE
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x1c2], ax       ; 39 86 3E FE
        jne     L_0FE5                          ; 75 06
        mov     word ptr [bp - 0x1c2], 0        ; C7 86 3E FE 00 00
;   [conditional branch target (if/else)] L_0FE5
L_0FE5:
        inc     word ptr [bp - 0x186]           ; FF 86 7A FE
        jmp     L_0E8E                          ; E9 A2 FE
;   [unconditional branch target] L_0FEC
L_0FEC:
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg lpszText (high/segment)
        push    word ptr [bp - 0x40]            ; FF 76 C0
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A DE 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     dx, word ptr [bp - 0x3e]        ; 8B 56 C2
        mov     word ptr [bp - 0x1c6], ax       ; 89 86 3A FE
        mov     word ptr [bp - 0x1c4], dx       ; 89 96 3C FE
;   [loop start] L_100D
L_100D:
        les     bx, ptr [bp - 0x1c6]            ; C4 9E 3A FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_101A                          ; 75 03
        jmp     L_0F64                          ; E9 4A FF
;   [conditional branch target (if/else)] L_101A
L_101A:
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp - 0x40]        ; 2B 46 C0
        cmp     ax, word ptr [bp - 0x18e]       ; 3B 86 72 FE
        jl      L_1028                          ; 7C 03
        jmp     L_0F64                          ; E9 3C FF
;   [conditional branch target (if/else)] L_1028
L_1028:
        mov     word ptr [bp - 0x3c], 0x332     ; C7 46 C4 32 03
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
;   [loop start] L_1037
L_1037:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1067                          ; 74 28
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 5D 10 00 00 [FIXUP]
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        mov     cl, byte ptr es:[bx]            ; 26 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpsz (low/offset)
        mov     word ptr [bp - 0x1c8], ax       ; 89 86 38 FE
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 6F 0C 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x1c8]       ; 3A 86 38 FE
        je      L_1072                          ; 74 0B
;   [conditional branch target (if/else)] L_1067
L_1067:
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_107A                          ; 75 0B
        jmp     L_0F5E                          ; E9 EC FE
;   [conditional branch target (if/else)] L_1072
L_1072:
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        jmp     L_1037                          ; EB BD
;   [conditional branch target (if/else)] L_107A
L_107A:
        inc     word ptr [bp - 0x1c6]           ; FF 86 3A FE
        jmp     L_100D                          ; EB 8D
;   [unconditional branch target] L_1080
L_1080:
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x1c0]                ; 8D 86 40 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 0F 0D 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x8a                        ; B8 8A 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 1F 0D 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x332                       ; B8 32 03
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A C3 10 00 00 [FIXUP]
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x8c                        ; B8 8C 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 2F 0D 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x182]                ; 8D 86 7E FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1c0]                ; 8D 86 40 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_13                   ; 9A 56 0D 00 00 [FIXUP]
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 71 0D 00 00 [FIXUP]
;   [unconditional branch target] L_10F9
L_10F9:
        push    word ptr [bp - 0x188]           ; FF B6 78 FE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A C4 0C 00 00 [FIXUP]
        push    word ptr [bp - 0x188]           ; FF B6 78 FE
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_110B
L_110B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x10]   LRESULT   (1 use)

; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALFREE, GLOBALLOCK (+4 more).

;-------------------------------------------------------------------------
; sub_1116   offset=0x1116  size=105 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_1223
;-------------------------------------------------------------------------
;   [sub-routine] L_1116
L_1116:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A BB 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, ax                          ; 3B D0
        jne     L_1182                          ; 75 3D
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A A3 11 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x34                        ; B8 34 00
        mov     bx, dx                          ; 8B DA
        imul    word ptr [0x18]                 ; F7 2E 18 00
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, cx                          ; 8B C1
        mov     dx, bx                          ; 8B D3
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1223                          ; E8 B0 00
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 01 12 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1182
L_1182:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_118B                          ; 74 03
        jmp     L_120D                          ; E9 82 00
;   [conditional branch target (if/else)] L_118B
L_118B:
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A 99 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_120D                          ; 74 6C
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A CB 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    dx                              ; 52
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FB 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_11E8                          ; 74 24
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lpszDest (low/offset)
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        push    dx                              ; 52
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F7 12 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     dx, dx                          ; 2B D2
        mov     bx, ax                          ; 8B D8
        sub     bx, word ptr [bp - 0x10]        ; 2B 5E F0
        les     si, ptr [bp - 6]                ; C4 76 FA
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
;   [conditional branch target (if/else)] L_11E8
L_11E8:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_1223                          ; E8 2C 00
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FE 10 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 07 11 00 00 [FIXUP]
;   [branch target] L_120D
L_120D:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_1219                          ; 75 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_1219
L_1219:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: LSTRCPY, CLOSECOMM, FLUSHCOMM (+6 more).

;-------------------------------------------------------------------------
; sub_1223   offset=0x1223  size=248 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   CLOSECOMM
;   FLUSHCOMM
;   GETCOMMERROR
;   GETCURRENTTIME
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   OPENCOMM
;   WRITECOMM
;
; Near calls (internal): L_14A7, L_15B2
;-------------------------------------------------------------------------
;   [sub-routine] L_1223
L_1223:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_12CC                          ; E9 94 00
;   [loop start] L_1238
L_1238:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
;   [loop start] L_1248
L_1248:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        jge     L_12B3                          ; 7D 60
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x2d                        ; 3C 2D
        jne     L_1272                          ; 75 0F
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [loop start] L_126E
L_126E:
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_1248                          ; EB D6
;   [conditional branch target (if/else)] L_1272
L_1272:
        cmp     byte ptr [bp - 0xa], 0x30       ; 80 7E F6 30
        jl      L_127E                          ; 7C 06
        cmp     byte ptr [bp - 0xa], 0x39       ; 80 7E F6 39
        jle     L_12A2                          ; 7E 24
;   [conditional branch target (if/else)] L_127E
L_127E:
        cmp     byte ptr [bp - 0xa], 0x40       ; 80 7E F6 40
        je      L_12A2                          ; 74 1E
        cmp     byte ptr [bp - 0xa], 0x2c       ; 80 7E F6 2C
        je      L_12A2                          ; 74 18
        cmp     byte ptr [bp - 0xa], 0x28       ; 80 7E F6 28
        je      L_12A2                          ; 74 12
        cmp     byte ptr [bp - 0xa], 0x29       ; 80 7E F6 29
        je      L_12A2                          ; 74 0C
        cmp     byte ptr [bp - 0xa], 0x2a       ; 80 7E F6 2A
        je      L_12A2                          ; 74 06
        cmp     byte ptr [bp - 0xa], 0x23       ; 80 7E F6 23
        jne     L_12AD                          ; 75 0B
;   [conditional branch target (if/else)] L_12A2
L_12A2:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        jmp     L_126E                          ; EB C1
;   [conditional branch target (if/else)] L_12AD
L_12AD:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_12B3
L_12B3:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_12C9                          ; 74 10
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        cmp     ax, 5                           ; 3D 05 00
        jle     L_12C9                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_12DA                          ; EB 11
;   [conditional branch target (if/else)] L_12C9
L_12C9:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_12CC
L_12CC:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_12D8                          ; 74 03
        jmp     L_1238                          ; E9 60 FF
;   [error/early exit] L_12D8
L_12D8:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_12DA
L_12DA:
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
        sub     sp, 0xb6                        ; 81 EC B6 00
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc0                        ; B8 C0 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 0D 14 00 00 [FIXUP]
        cmp     word ptr [0xba], 0              ; 83 3E BA 00 00
        je      L_1306                          ; 74 04
        mov     byte ptr [bp - 9], 0x31         ; C6 46 F7 31
;   [conditional branch target (if/else)] L_1306
L_1306:
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.OPENCOMM               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        or      ax, ax                          ; 0B C0
        jge     L_131F                          ; 7D 03
        jmp     L_146F                          ; E9 50 01
;   [conditional branch target (if/else)] L_131F
L_131F:
        push    ax                              ; 50
        call    L_14A7                          ; E8 84 01
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 53 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ax                              ; 50
        call    L_15B2                          ; E8 70 02
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_136E                          ; EB 24
;   [loop start] L_134A
L_134A:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 97 13 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A 6A 13 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A CE 13 00 00 [FIXUP]
;   [unconditional branch target] L_136E
L_136E:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.WRITECOMM              ; 9A 24 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jle     L_134A                          ; 7E C7
        call    far USER.GETCURRENTTIME         ; 9A 9C 13 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [loop start] L_138E
L_138E:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 35 14 00 00 [FIXUP]
        call    far USER.GETCURRENTTIME         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sbb     dx, word ptr [bp - 4]           ; 1B 56 FC
        or      dx, dx                          ; 0B D2
        jl      L_13C0                          ; 7C 16
        jg      L_13B1                          ; 7F 05
        cmp     ax, 0xbb8                       ; 3D B8 0B
        jbe     L_13C0                          ; 76 0F
;   [conditional branch target (if/else)] L_13B1
L_13B1:
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_1465                          ; E9 A5 00
;   [conditional branch target (if/else)] L_13C0
L_13C0:
        cmp     word ptr [bp - 0x61], 0         ; 83 7E 9F 00
        jne     L_138E                          ; 75 C8
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A 40 14 00 00 [FIXUP]
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 82 14 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x170                       ; B8 70 01
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 9A 14 00 00 [FIXUP]
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc5                        ; B8 C5 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A DE 14 00 00 [FIXUP]
        mov     byte ptr [bp - 0xb2], 0xd       ; C6 86 4E FF 0D
;   [loop start] L_1416
L_1416:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.WRITECOMM              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jg      L_1452                          ; 7F 26
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A 5B 14 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A 4C 14 00 00 [FIXUP]
        push    word ptr [bp - 0x66]            ; FF 76 9A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.FLUSHCOMM              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1416                          ; EB C4
;   [loop start (also forward branch)] L_1452
L_1452:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMERROR           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x61], 0         ; 83 7E 9F 00
        jne     L_1452                          ; 75 ED
;   [unconditional branch target] L_1465
L_1465:
        push    word ptr [bp - 0x66]            ; FF 76 9A
        call    far USER.CLOSECOMM              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_149E                          ; EB 2F
;   [unconditional branch target] L_146F
L_146F:
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 93 10 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x170                       ; B8 70 01
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A F5 10 00 00 [FIXUP]
;   [unconditional branch target] L_149E
L_149E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING, LSTRCPY, GETCOMMSTATE (+1 more).

;-------------------------------------------------------------------------
; sub_14A7   offset=0x14A7  size=113 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETPROFILESTRING
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   GETCOMMSTATE
;   SETCOMMSTATE
;-------------------------------------------------------------------------
;   [sub-routine] L_14A7
L_14A7:
        ;   = cProc <66> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x42                        ; 83 EC 42
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_14C0                          ; 75 03
        jmp     L_15AE                          ; E9 EE 00
;   [conditional branch target (if/else)] L_14C0
L_14C0:
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_14CE                          ; 74 07
        mov     word ptr [bp - 0x19], 0x4b0     ; C7 46 E7 B0 04
        jmp     L_14D3                          ; EB 05
;   [conditional branch target (if/else)] L_14CE
L_14CE:
        mov     word ptr [bp - 0x19], 0x12c     ; C7 46 E7 2C 01
;   [unconditional branch target] L_14D3
L_14D3:
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xca                        ; B8 CA 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A A3 10 00 00 [FIXUP]
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        add     al, 0x31                        ; 04 31
        mov     byte ptr [bp - 0x1d], al        ; 88 46 E3
        mov     ax, 0xda                        ; B8 DA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xd0                        ; B8 D0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A EE 08 00 00 [FIXUP]
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        jmp     L_1518                          ; EB 09
;   [loop start] L_150F
L_150F:
        cmp     byte ptr [bp - 0x42], 0x2c      ; 80 7E BE 2C
        je      L_1524                          ; 74 0F
        inc     word ptr [bp - 0x40]            ; FF 46 C0
;   [unconditional branch target] L_1518
L_1518:
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x42], al        ; 88 46 BE
        or      al, al                          ; 0A C0
        jne     L_150F                          ; 75 EB
;   [loop start (also forward branch)] L_1524
L_1524:
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x42], al        ; 88 46 BE
        cmp     al, 0x2c                        ; 3C 2C
        je      L_1534                          ; 74 04
        cmp     al, 0x20                        ; 3C 20
        jne     L_1539                          ; 75 05
;   [conditional branch target (if/else)] L_1534
L_1534:
        inc     word ptr [bp - 0x40]            ; FF 46 C0
        jmp     L_1524                          ; EB EB
;   [conditional branch target (if/else)] L_1539
L_1539:
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x42], al        ; 88 46 BE
        cmp     al, 0x6e                        ; 3C 6E
        jne     L_1549                          ; 75 04
        sub     al, al                          ; 2A C0
        jmp     L_1555                          ; EB 0C
;   [conditional branch target (if/else)] L_1549
L_1549:
        cmp     byte ptr [bp - 0x42], 0x6f      ; 80 7E BE 6F
        jne     L_1553                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_1555                          ; EB 02
;   [conditional branch target (if/else)] L_1553
L_1553:
        mov     al, 2                           ; B0 02
;   [unconditional branch target] L_1555
L_1555:
        mov     byte ptr [bp - 0x16], al        ; 88 46 EA
        cmp     byte ptr [bp - 0x42], 0         ; 80 7E BE 00
        je      L_1561                          ; 74 03
;   [loop start] L_155E
L_155E:
        inc     word ptr [bp - 0x40]            ; FF 46 C0
;   [conditional branch target (if/else)] L_1561
L_1561:
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x42], al        ; 88 46 BE
        cmp     al, 0x2c                        ; 3C 2C
        je      L_155E                          ; 74 F1
        cmp     al, 0x20                        ; 3C 20
        je      L_155E                          ; 74 ED
        cmp     al, 0x38                        ; 3C 38
        jne     L_1579                          ; 75 04
        mov     al, 8                           ; B0 08
        jmp     L_157B                          ; EB 02
;   [conditional branch target (if/else)] L_1579
L_1579:
        mov     al, 7                           ; B0 07
;   [unconditional branch target] L_157B
L_157B:
        mov     byte ptr [bp - 0x17], al        ; 88 46 E9
        cmp     byte ptr [bp - 0x42], 0         ; 80 7E BE 00
        je      L_1587                          ; 74 03
;   [loop start] L_1584
L_1584:
        inc     word ptr [bp - 0x40]            ; FF 46 C0
;   [conditional branch target (if/else)] L_1587
L_1587:
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x42], al        ; 88 46 BE
        cmp     al, 0x2c                        ; 3C 2C
        je      L_1584                          ; 74 F1
        cmp     al, 0x20                        ; 3C 20
        je      L_1584                          ; 74 ED
        cmp     al, 0x32                        ; 3C 32
        jne     L_159F                          ; 75 04
        mov     al, 2                           ; B0 02
        jmp     L_15A1                          ; EB 02
;   [conditional branch target (if/else)] L_159F
L_159F:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_15A1
L_15A1:
        mov     byte ptr [bp - 0x15], al        ; 88 46 EB
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETCOMMSTATE           ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_15AE
L_15AE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   LPSTR     (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_15B2   offset=0x15B2  size=102 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_15B2
L_15B2:
        ;   = cProc <88> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x58                        ; 83 EC 58
        push    si                              ; 56
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B2 16 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_15D3                          ; EB 03
;   [loop start] L_15D0
L_15D0:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_15D3
L_15D3:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_15D0                          ; 75 F5
        cmp     word ptr [0xbc], 0              ; 83 3E BC 00 00
        je      L_15E6                          ; 74 04
        mov     al, 0x54                        ; B0 54
        jmp     L_15E8                          ; EB 02
;   [conditional branch target (if/else)] L_15E6
L_15E6:
        mov     al, 0x50                        ; B0 50
;   [unconditional branch target] L_15E8
L_15E8:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1659                          ; EB 61
;   [loop start] L_15F8
L_15F8:
        cmp     byte ptr [bp - 0x56], 0x30      ; 80 7E AA 30
        jl      L_1604                          ; 7C 06
        cmp     byte ptr [bp - 0x56], 0x39      ; 80 7E AA 39
        jle     L_164E                          ; 7E 4A
;   [conditional branch target (if/else)] L_1604
L_1604:
        cmp     byte ptr [bp - 0x56], 0x2c      ; 80 7E AA 2C
        je      L_164E                          ; 74 44
        cmp     byte ptr [bp - 0x56], 0x23      ; 80 7E AA 23
        je      L_164E                          ; 74 3E
        cmp     byte ptr [bp - 0x56], 0x2a      ; 80 7E AA 2A
        je      L_164E                          ; 74 38
        cmp     byte ptr [bp - 0x56], 0x40      ; 80 7E AA 40
        jne     L_1639                          ; 75 1D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x2c             ; C6 07 2C
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x2c             ; C6 07 2C
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x2c             ; C6 07 2C
        jmp     L_1659                          ; EB 20
;   [conditional branch target (if/else)] L_1639
L_1639:
        cmp     byte ptr [bp - 0x56], 0x50      ; 80 7E AA 50
        je      L_1645                          ; 74 06
        cmp     byte ptr [bp - 0x56], 0x54      ; 80 7E AA 54
        jne     L_1659                          ; 75 14
;   [conditional branch target (if/else)] L_1645
L_1645:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x44             ; C6 07 44
;   [conditional branch target (if/else)] L_164E
L_164E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp - 0x56]        ; 8A 46 AA
        mov     byte ptr [bx], al               ; 88 07
;   [branch target] L_1659
L_1659:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x56], al        ; 88 46 AA
        or      al, al                          ; 0A C0
        jne     L_15F8                          ; 75 90
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0x3b             ; C6 07 3B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0xd              ; C6 07 0D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 9C 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, bp                          ; 2B C5
        add     ax, 0x54                        ; 05 54 00
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_16A7                          ; 7E 0D
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     byte ptr [bp + si - 0x54], 0    ; C6 42 AC 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
;   [conditional branch target (if/else)] L_16A7
L_16A7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A D3 11 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

CARDFILE_TEXT ENDS

        END
