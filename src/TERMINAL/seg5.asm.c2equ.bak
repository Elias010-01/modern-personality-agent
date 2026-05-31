; ======================================================================
; TERMINAL / seg5.asm   (segment 5 of TERMINAL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        11
; Total instructions:                 1485
; 
; Classification (pass8):
;   C-origin (high+medium):             11
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     51 (28 unique)
;   Top:
;        6  ENDDIALOG
;        4  SETDLGITEMINT
;        4  GETDLGITEM
;        3  CHECKDLGBUTTON
;        3  ENABLEWINDOW
;        3  GETDLGITEMINT
;        2  OPENFILE
;        2  GETDLGITEMTEXT
; ======================================================================
; AUTO-GENERATED from original TERMINAL segment 5
; segment_size=3766 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Thin wrapper around CHECKDLGBUTTON.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=24 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CHECKDLGBUTTON
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 25 00 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx]               ; 8B 37
        cmp     word ptr [bp + 6], si           ; 39 76 06
        je      L_0031                          ; 74 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 56 00 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx], ax               ; 89 07
;   [error/early exit] L_0031
L_0031:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: MAKEPROCINSTANCE, OPENFILE, CHECKDLGBUTTON (+4 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0038   offset=0x0038  size=266 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   CHECKDLGBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   KILLTIMER
;   SETDLGITEMINT
;   SETTIMER
;-------------------------------------------------------------------------
;   [sub-routine] L_0038
L_0038:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        jmp     L_005B                          ; EB 14
;   [loop start] L_0047
L_0047:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx], si               ; 39 37
        je      L_005A                          ; 74 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 6D 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_005A
L_005A:
        inc     si                              ; 46
;   [unconditional branch target] L_005B
L_005B:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 4], si           ; 39 77 04
        jge     L_0047                          ; 7D E4
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bx]                   ; FF 37
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x80                        ; 81 EC 80 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszFileName (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_009C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_009E                          ; EB 02
;   [error/early exit] L_009C
L_009C:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_009E
L_009E:
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
        mov     ax, OFFSET _entry_24            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_24            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A CF 00 00 00 [FIXUP]
        mov     word ptr [0x179e], ax           ; A3 9E 17
        mov     word ptr [0x17a0], dx           ; 89 16 A0 17
        mov     ax, OFFSET _entry_5             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_5             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A E6 00 00 00 [FIXUP]
        mov     word ptr [0x17a6], ax           ; A3 A6 17
        mov     word ptr [0x17a8], dx           ; 89 16 A8 17
        mov     ax, OFFSET _entry_3             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_3             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FD 00 00 00 [FIXUP]
        mov     word ptr [0x17a2], ax           ; A3 A2 17
        mov     word ptr [0x17a4], dx           ; 89 16 A4 17
        mov     ax, OFFSET _entry_4             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_4             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 14 01 00 00 [FIXUP]
        mov     word ptr [0x17aa], ax           ; A3 AA 17
        mov     word ptr [0x17ac], dx           ; 89 16 AC 17
        mov     ax, OFFSET _entry_2             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_2             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 2B 01 00 00 [FIXUP]
        mov     word ptr [0x17ae], ax           ; A3 AE 17
        mov     word ptr [0x17b0], dx           ; 89 16 B0 17
        mov     ax, OFFSET _entry_23            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_23            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 42 01 00 00 [FIXUP]
        mov     word ptr [0x17b2], ax           ; A3 B2 17
        mov     word ptr [0x17b4], dx           ; 89 16 B4 17
        mov     ax, OFFSET _entry_6             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_6             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 59 01 00 00 [FIXUP]
        mov     word ptr [0x17b6], ax           ; A3 B6 17
        mov     word ptr [0x17b8], dx           ; 89 16 B8 17
        mov     ax, OFFSET _entry_11            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_11            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x179a], ax           ; A3 9A 17
        mov     word ptr [0x179c], dx           ; 89 16 9C 17
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_0185                          ; 75 05
;   [loop start] L_0180
L_0180:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01A1                          ; EB 1C
;   [conditional branch target (if/else)] L_0185
L_0185:
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_019F                          ; 75 13
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_019F                          ; 75 0D
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 5B 02 00 00 [FIXUP]
        jmp     L_0180                          ; EB E1
;   [conditional branch target (if/else)] L_019F
L_019F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01A1
L_01A1:
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
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_01D1                          ; 74 10
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_01C9                          ; 75 03
        jmp     L_0290                          ; E9 C7 00
;   [conditional branch target (if/else)] L_01C9
L_01C9:
        cmp     ax, 0x113                       ; 3D 13 01
        je      L_0219                          ; 74 4B
        jmp     L_0298                          ; E9 C7 00
;   [conditional branch target (if/else)] L_01D1
L_01D1:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x182], ax            ; A3 82 01
        mov     word ptr [0x17ba], 0            ; C7 06 BA 17 00 00
        mov     word ptr [0x17bc], 0            ; C7 06 BC 17 00 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x17c0], 5            ; C7 06 C0 17 05 00
        mov     ax, word ptr [0x288]            ; A1 88 02
        mov     word ptr [0x17be], ax           ; A3 BE 17
;   [loop start] L_0200
L_0200:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x2b                        ; B8 2B 00
        push    ax                              ; 50
        push    word ptr [0x17be]               ; FF 36 BE 17
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A B3 03 00 00 [FIXUP]
;   [loop start] L_0213
L_0213:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02AC                          ; E9 93 00
;   [conditional branch target (if/else)] L_0219
L_0219:
        add     word ptr [0x17bc], 0xc8         ; 81 06 BC 17 C8 00
        push    word ptr [0x17ba]               ; FF 36 BA 17
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [0x17bc]               ; FF 36 BC 17
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x17ba], ax           ; A3 BA 17
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0261                          ; 74 24
        cmp     word ptr [bp - 4], 7            ; 83 7E FC 07
        je      L_0261                          ; 74 1E
;   [loop start] L_0243
L_0243:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x182], 0             ; C7 06 82 01 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A E7 02 00 00 [FIXUP]
        jmp     L_0213                          ; EB B2
;   [conditional branch target (if/else)] L_0261
L_0261:
        dec     word ptr [0x17c0]               ; FF 0E C0 17
        cmp     word ptr [0x17c0], 0            ; 83 3E C0 17 00
        jg      L_0213                          ; 7F A7
        dec     word ptr [0x17be]               ; FF 0E BE 17
        cmp     word ptr [0x17be], 0            ; 83 3E BE 17 00
        jge     L_0287                          ; 7D 10
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        call    far _entry_21                   ; 9A A1 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], 7            ; C7 46 FC 07 00
        jmp     L_0243                          ; EB BC
;   [conditional branch target (if/else)] L_0287
L_0287:
        mov     word ptr [0x17c0], 5            ; C7 06 C0 17 05 00
        jmp     L_0200                          ; E9 70 FF
;   [unconditional branch target] L_0290
L_0290:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_029C                          ; 74 04
;   [unconditional branch target] L_0298
L_0298:
        sub     ax, ax                          ; 2B C0
        jmp     L_02AC                          ; EB 10
;   [conditional branch target (if/else)] L_029C
L_029C:
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 6            ; C7 46 FC 06 00
        jmp     L_0243                          ; EB 97
;   [unconditional branch target] L_02AC
L_02AC:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_02EB                          ; 74 22
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_02DB                          ; 75 0D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_02DF                          ; 74 09
        cmp     ax, 2                           ; 3D 02 00
        je      L_02F0                          ; 74 15
;   [conditional branch target (if/else)] L_02DB
L_02DB:
        sub     ax, ax                          ; 2B C0
        jmp     L_02F7                          ; EB 18
; Description (heuristic):
;   Mixed routine using: ENDDIALOG.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_02DF   offset=0x02DF  size=35 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_02DF
L_02DF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_02E5
L_02E5:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 32 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02EB
L_02EB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02F7                          ; EB 07
;   [conditional branch target (if/else)] L_02F0
L_02F0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_02E5                          ; EB EE
;   [unconditional branch target] L_02F7
L_02F7:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0336                          ; 74 22
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0326                          ; 75 0D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_032A                          ; 74 09
        cmp     ax, 2                           ; 3D 02 00
        je      L_033B                          ; 74 15
;   [conditional branch target (if/else)] L_0326
L_0326:
        sub     ax, ax                          ; 2B C0
        jmp     L_0342                          ; EB 18
; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.
;   Reads/writes dialog item text.

;-------------------------------------------------------------------------
; sub_032A   offset=0x032A  size=200 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ENABLEWINDOW
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMINT
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMINT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0038
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_032A
L_032A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0330
L_0330:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0336
L_0336:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0342                          ; EB 07
;   [conditional branch target (if/else)] L_033B
L_033B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_0330                          ; EB EE
;   [unconditional branch target] L_0342
L_0342:
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_036C                          ; 74 0A
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_03E1                          ; 74 7A
;   [loop start] L_0367
L_0367:
        sub     ax, ax                          ; 2B C0
        jmp     L_04E4                          ; E9 78 01
;   [conditional branch target (if/else)] L_036C
L_036C:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        je      L_0378                          ; 74 05
        mov     ax, 7                           ; B8 07 00
        jmp     L_037B                          ; EB 03
;   [conditional branch target (if/else)] L_0378
L_0378:
        mov     ax, 8                           ; B8 08 00
;   [unconditional branch target] L_037B
L_037B:
        mov     word ptr [0x9a], ax             ; A3 9A 00
        cmp     word ptr [0x278], 0             ; 83 3E 78 02 00
        je      L_038A                          ; 74 05
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_038D                          ; EB 03
;   [conditional branch target (if/else)] L_038A
L_038A:
        mov     ax, 9                           ; B8 09 00
;   [unconditional branch target] L_038D
L_038D:
        mov     word ptr [0xa0], ax             ; A3 A0 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x9a                        ; B8 9A 00
        push    ax                              ; 50
        call    L_0038                          ; E8 9E FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        call    L_0038                          ; E8 94 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        push    word ptr [0x28a]                ; FF 36 8A 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A C6 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        push    word ptr [0x288]                ; FF 36 88 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_03DB
L_03DB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04E4                          ; E9 03 01
;   [conditional branch target (if/else)] L_03E1
L_03E1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 9                           ; 3D 09 00
        jbe     L_03EF                          ; 76 03
        jmp     L_0367                          ; E9 78 FF
;   [conditional branch target (if/else)] L_03EF
L_03EF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x4cd]        ; 2E FF A7 CD 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 26 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A 57 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0447                          ; 74 1E
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0435                          ; 7D 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0441                          ; EB 0C
;   [conditional branch target (if/else)] L_0435
L_0435:
        cmp     word ptr [bp - 4], 0x100        ; 81 7E FC 00 01
        jle     L_0441                          ; 7E 05
        mov     word ptr [bp - 4], 0x100        ; C7 46 FC 00 01
;   [branch target] L_0441
L_0441:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x288], ax            ; A3 88 02
;   [conditional branch target (if/else)] L_0447
L_0447:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0481                          ; 74 1D
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0470                          ; 7D 07
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_047B                          ; EB 0B
;   [conditional branch target (if/else)] L_0470
L_0470:
        cmp     word ptr [bp - 4], 0xf          ; 83 7E FC 0F
        jle     L_047B                          ; 7E 05
        mov     word ptr [bp - 4], 0xf          ; C7 46 FC 0F 00
;   [branch target] L_047B
L_047B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x28a], ax            ; A3 8A 02
;   [conditional branch target (if/else)] L_0481
L_0481:
        cmp     word ptr [0x9a], 7              ; 83 3E 9A 00 07
        jne     L_048D                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_048F                          ; EB 02
;   [conditional branch target (if/else)] L_048D
L_048D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_048F
L_048F:
        mov     word ptr [0x276], ax            ; A3 76 02
        cmp     word ptr [0xa0], 0xa            ; 83 3E A0 00 0A
        jne     L_049E                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04A0                          ; EB 02
;   [conditional branch target (if/else)] L_049E
L_049E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04A0
L_04A0:
        mov     word ptr [0x278], ax            ; A3 78 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A CF 06 00 00 [FIXUP]
        jmp     L_03DB                          ; E9 29 FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9a                        ; B8 9A 00
        jmp     L_04C6                          ; EB 09
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa0                        ; B8 A0 00
;   [unconditional branch target] L_04C6
L_04C6:
        push    ax                              ; 50
        call    0                               ; E8 36 FB
        jmp     L_03DB                          ; E9 0E FF
        test    word ptr [bp + di], 0x4a3       ; F7 03 A3 04
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        mov     dl, 4                           ; B2 04
        mov     dl, 4                           ; B2 04
        mov     bp, 0xbd04                      ; BD 04 BD
        add     al, 0xe9                        ; 04 E9
        idiv    si                              ; F7 FE
;   [unconditional branch target] L_04E4
L_04E4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 4], 0x300        ; 81 7E 04 00 03
        jne     L_0527                          ; 75 2E
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 0E 05 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDlg
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 03 06 00 00 [FIXUP]
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
;   [error/early exit] L_0527
L_0527:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_052D   offset=0x052D  size=64 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIPREV
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_052D
L_052D:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        jmp     L_0562                          ; EB 1D
;   [loop start] L_0545
L_0545:
        cmp     di, 0x5c                        ; 83 FF 5C
        je      L_0571                          ; 74 27
        cmp     di, 0x3a                        ; 83 FF 3A
        je      L_0571                          ; 74 22
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jbe     L_0571                          ; 76 1D
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0562
L_0562:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        cmp     di, 0x2e                        ; 83 FF 2E
        jne     L_0545                          ; 75 D4
;   [conditional branch target (if/else)] L_0571
L_0571:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_0589                          ; 74 10
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0589
L_0589:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x86                        ; 81 EC 86 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_05AC                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_05DE                          ; 74 34
        jmp     L_05F6                          ; EB 4A
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: SENDDLGITEMMESSAGE.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_05AC   offset=0x05AC  size=31 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_05AC
L_05AC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0x7d                        ; B8 7D 00
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
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        push    word ptr [0x1796]               ; FF 36 96 17
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_05D8
L_05D8:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_070A                          ; E9 2C 01
;   [conditional branch target (if/else)] L_05DE
L_05DE:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_05FB                          ; 74 15
        cmp     ax, 2                           ; 3D 02 00
        jne     L_05EE                          ; 75 03
        jmp     L_06EB                          ; E9 FD 00
;   [conditional branch target (if/else)] L_05EE
L_05EE:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_05F6                          ; 75 03
        jmp     L_06F8                          ; E9 02 01
;   [branch target] L_05F6
L_05F6:
        sub     ax, ax                          ; 2B C0
        jmp     L_070A                          ; E9 0F 01
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): GETDLGITEM, ISWINDOWENABLED.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_05FB   offset=0x05FB  size=9 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   ISWINDOWENABLED
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_05FB
L_05FB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0614                          ; 75 03
        jmp     L_06C7                          ; E9 B3 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x86]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (3 file APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0614   offset=0x0614  size=84 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
;   5
;   6
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;
; Near calls (internal): L_052D
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0614
L_0614:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x7d                        ; B8 7D 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x94                        ; B8 94 00
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x1794]           ; A1 94 17
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 32 07 00 00 [FIXUP]
        mov     ax, 0x92                        ; B8 92 00
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        call    L_052D                          ; E8 DD FE
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_06D6                          ; 74 75
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpszPath (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszPath (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wReadWrite
        ; --> _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
        call    far KERNEL._LOPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        jl      L_06AD                          ; 7C 11
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A A1 07 00 00 [FIXUP]
        mov     word ptr [0x1798], 1            ; C7 06 98 17 01 00
        jmp     L_06B3                          ; EB 06
;   [conditional branch target (if/else)] L_06AD
L_06AD:
        mov     word ptr [0x1798], 2            ; C7 06 98 17 02 00
;   [unconditional branch target] L_06B3
L_06B3:
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, word ptr [0x1796]           ; A1 96 17
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 8F 00 00 00 [FIXUP]
;   [unconditional branch target] L_06C7
L_06C7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_06CD
L_06CD:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 99 01 00 00 [FIXUP]
        jmp     L_05D8                          ; E9 02 FF
;   [conditional branch target (if/else)] L_06D6
L_06D6:
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05D8                          ; E9 ED FE
;   [unconditional branch target] L_06EB
L_06EB:
        mov     word ptr [0x1798], 0            ; C7 06 98 17 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_06CD                          ; EB D5
; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.

;-------------------------------------------------------------------------
; sub_06F8   offset=0x06F8  size=380 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   _LCLOSE(HFILE hFile) -> HFILE
;   CHECKDLGBUTTON
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   ENABLEWINDOW
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMINT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMINT
;   SETFOCUS
;
; Near calls (internal): L_0038
;-------------------------------------------------------------------------
;   [unconditional branch target] L_06F8
L_06F8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05D8                          ; E9 CE FE
;   [unconditional branch target] L_070A
L_070A:
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
        sub     sp, 0x88                        ; 81 EC 88 00
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 8                           ; 05 08 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 41 07 00 00 [FIXUP]
        mov     ax, 0x94                        ; B8 94 00
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 8B 07 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0x92                        ; B8 92 00
        push    ax                              ; 50
        mov     ax, 0x81                        ; B8 81 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_078F                          ; 75 13
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 8                           ; 05 08 00
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_078F
L_078F:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_07AC                          ; 75 17
        cmp     word ptr [bp - 0x88], 0         ; 83 BE 78 FF 00
        jle     L_07A7                          ; 7E 0B
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07AC                          ; EB 05
;   [conditional branch target (if/else)] L_07A7
L_07A7:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
;   [branch target] L_07AC
L_07AC:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1794], ax           ; A3 94 17
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x1796], ax           ; A3 96 17
        mov     ax, word ptr [0x179a]           ; A1 9A 17
        or      ax, word ptr [0x179c]           ; 0B 06 9C 17
        je      L_07F6                          ; 74 1D
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWndOwner
        push    word ptr [0x179c]               ; FF 36 9C 17
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [0x179a]               ; FF 36 9A 17
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FC                          ; EB 06
;   [conditional branch target (if/else)] L_07F6
L_07F6:
        mov     word ptr [0x1798], 0            ; C7 06 98 17 00 00
;   [unconditional branch target] L_07FC
L_07FC:
        mov     ax, word ptr [0x1798]           ; A1 98 17
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
        sub     sp, 0x32                        ; 83 EC 32
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_082A                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0827                          ; 75 03
        jmp     L_0986                          ; E9 5F 01
;   [conditional branch target (if/else)] L_0827
L_0827:
        jmp     L_0981                          ; E9 57 01
;   [conditional branch target (if/else)] L_082A
L_082A:
        mov     word ptr [0x17c4], 0            ; C7 06 C4 17 00 00
        mov     ax, word ptr [0x26c]            ; A1 6C 02
        mov     word ptr [0x17c2], ax           ; A3 C2 17
        mov     ax, word ptr [0x26e]            ; A1 6E 02
        mov     word ptr [0x17ca], ax           ; A3 CA 17
        mov     ax, word ptr [0x270]            ; A1 70 02
        mov     word ptr [0x17c8], ax           ; A3 C8 17
        mov     ax, word ptr [0x27a]            ; A1 7A 02
        mov     word ptr [0x17c6], ax           ; A3 C6 17
        cmp     word ptr [0x272], 0             ; 83 3E 72 02 00
        je      L_0854                          ; 74 05
        mov     ax, 0x15                        ; B8 15 00
        jmp     L_0857                          ; EB 03
;   [conditional branch target (if/else)] L_0854
L_0854:
        mov     ax, 0x14                        ; B8 14 00
;   [unconditional branch target] L_0857
L_0857:
        mov     word ptr [0xa6], ax             ; A3 A6 00
        cmp     word ptr [0x274], 0             ; 83 3E 74 02 00
        je      L_0866                          ; 74 05
        mov     ax, 0x16                        ; B8 16 00
        jmp     L_0869                          ; EB 03
;   [conditional branch target (if/else)] L_0866
L_0866:
        mov     ax, 0x17                        ; B8 17 00
;   [unconditional branch target] L_0869
L_0869:
        mov     word ptr [0xac], ax             ; A3 AC 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xac                        ; B8 AC 00
        push    ax                              ; 50
        call    L_0038                          ; E8 C2 F7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        push    word ptr [0x17c2]               ; FF 36 C2 17
        call    far USER.CHECKDLGBUTTON         ; 9A 92 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [0x17c8]               ; FF 36 C8 17
        call    far USER.CHECKDLGBUTTON         ; 9A A2 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        push    word ptr [0x17ca]               ; FF 36 CA 17
        call    far USER.CHECKDLGBUTTON         ; 9A 47 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 0A 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    word ptr [0x17c6]               ; FF 36 C6 17
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 0F 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa6                        ; B8 A6 00
        push    ax                              ; 50
        call    L_0038                          ; E8 5D F7
        mov     word ptr [bp - 4], 0x28         ; C7 46 FC 28 00
;   [loop start] L_08E0
L_08E0:
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        ;   ^ arg hInstance
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wID
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 2B 09 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0x32         ; 83 7E FC 32
        jle     L_08E0                          ; 7E C9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [0x32a]                ; FF 36 2A 03
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A D3 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 50 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 68 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 74 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    ax                              ; 50
        cmp     word ptr [0x1cbc], 0            ; 83 3E BC 1C 00
        je      L_0964                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0966                          ; EB 02
;   [conditional branch target (if/else)] L_0964
L_0964:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0966
L_0966:
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 23 05 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0xa6]                 ; FF 36 A6 00
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 01 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0981
L_0981:
        sub     ax, ax                          ; 2B C0
        jmp     L_0AD5                          ; E9 4F 01
;   [unconditional branch target] L_0986
L_0986:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_098F                          ; 74 03
        jmp     L_0AD2                          ; E9 43 01
;   [conditional branch target (if/else)] L_098F
L_098F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x16                        ; 3D 16 00
        ja      L_0981                          ; 77 E7
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xaa4]        ; 2E FF A7 A4 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A 1C 04 00 00 [FIXUP]
        mov     word ptr [0x17c6], ax           ; A3 C6 17
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_09C2                          ; 74 03
        mov     word ptr [0x27a], ax            ; A3 7A 02
;   [conditional branch target (if/else)] L_09C2
L_09C2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A C0 05 00 00 [FIXUP]
        mov     word ptr [0x32a], ax            ; A3 2A 03
        push    ax                              ; 50
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x17c2]           ; A1 C2 17
        mov     word ptr [0x26c], ax            ; A3 6C 02
        mov     ax, word ptr [0x17ca]           ; A1 CA 17
        mov     word ptr [0x26e], ax            ; A3 6E 02
        mov     ax, word ptr [0x17c8]           ; A1 C8 17
        mov     word ptr [0x270], ax            ; A3 70 02
        cmp     word ptr [0xac], 0x16           ; 83 3E AC 00 16
        jne     L_09FE                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A00                          ; EB 02
;   [conditional branch target (if/else)] L_09FE
L_09FE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A00
L_0A00:
        mov     word ptr [0x274], ax            ; A3 74 02
        cmp     word ptr [0xa6], 0x15           ; 83 3E A6 00 15
        jne     L_0A0F                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A11                          ; EB 02
;   [conditional branch target (if/else)] L_0A0F
L_0A0F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A11
L_0A11:
        mov     word ptr [0x272], ax            ; A3 72 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0A1A
L_0A1A:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A AB 04 00 00 [FIXUP]
        jmp     L_0AD2                          ; E9 AF 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_0A1A                          ; EB F0
        cmp     word ptr [0x17c2], 0            ; 83 3E C2 17 00
        jne     L_0A36                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A38                          ; EB 02
;   [conditional branch target (if/else)] L_0A36
L_0A36:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A38
L_0A38:
        mov     word ptr [0x17c2], ax           ; A3 C2 17
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        push    word ptr [0x17c2]               ; FF 36 C2 17
;   [loop start] L_0A46
L_0A46:
        call    far USER.CHECKDLGBUTTON         ; 9A 0F 00 00 00 [FIXUP]
        jmp     L_0AD2                          ; E9 84 00
        cmp     word ptr [0x17c8], 0            ; 83 3E C8 17 00
        jne     L_0A5A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A5C                          ; EB 02
;   [conditional branch target (if/else)] L_0A5A
L_0A5A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A5C
L_0A5C:
        mov     word ptr [0x17c8], ax           ; A3 C8 17
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [0x17c8]               ; FF 36 C8 17
        jmp     L_0A46                          ; EB DA
        cmp     word ptr [0x17ca], 0            ; 83 3E CA 17 00
        jne     L_0A78                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A7A                          ; EB 02
;   [conditional branch target (if/else)] L_0A78
L_0A78:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A7A
L_0A7A:
        mov     word ptr [0x17ca], ax           ; A3 CA 17
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        push    word ptr [0x17ca]               ; FF 36 CA 17
        jmp     L_0A46                          ; EB BC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa6                        ; B8 A6 00
;   [loop start] L_0A93
L_0A93:
        push    ax                              ; 50
        call    0                               ; E8 69 F5
        jmp     L_0AD2                          ; EB 39
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xac                        ; B8 AC 00
        jmp     L_0A93                          ; EB EF
        mov     byte ptr [0x2309], al           ; A2 09 23
        or      al, byte ptr [bx + di - 0x7ef7] ; 0A 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bx + di - 0x7ef7], ax ; 09 81 09 81
        or      word ptr [bp + 0xa], cx         ; 09 4E 0A
        insb    byte ptr es:[di], dx            ; 6C
        or      ch, byte ptr [bp + si]          ; 0A 2A
        or      cl, byte ptr [bp + si - 0x75f6] ; 0A 8A 0A 8A
        or      bl, byte ptr [bx + di - 0x66f6] ; 0A 99 0A 99
        or      bh, byte ptr [bx + si + 1]      ; 0A B8 01 00
;   [unconditional branch target] L_0AD5
L_0AD5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0AE0   offset=0x0AE0  size=59 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0AE0
L_0AE0:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [0x27c]            ; A1 7C 02
        mov     word ptr [si + 1], ax           ; 89 44 01
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_0AFD                          ; 74 05
        mov     ax, 0x1f                        ; B8 1F 00
        jmp     L_0B00                          ; EB 03
;   [conditional branch target (if/else)] L_0AFD
L_0AFD:
        mov     ax, 0x20                        ; B8 20 00
;   [unconditional branch target] L_0B00
L_0B00:
        mov     word ptr [si + 0x1b], ax        ; 89 44 1B
        mov     ax, word ptr [si + 5]           ; 8B 44 05
        add     ax, word ptr [0x280]            ; 03 06 80 02
        sub     ax, 4                           ; 2D 04 00
        mov     word ptr [si + 3], ax           ; 89 44 03
        mov     ax, word ptr [si + 0x23]        ; 8B 44 23
        add     ax, word ptr [0x27e]            ; 03 06 7E 02
        mov     word ptr [si + 0x21], ax        ; 89 44 21
        mov     ax, word ptr [0x282]            ; A1 82 02
        or      ax, ax                          ; 0B C0
        je      L_0B2B                          ; 74 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B43                          ; 74 1D
        ; constant VK_SHIFT
        mov     di, 0x10                        ; BF 10 00
        jmp     L_0B2E                          ; EB 03
;   [conditional branch target (if/else)] L_0B2B
L_0B2B:
        ; constant WM_GETTEXTLENGTH
        mov     di, 0xe                         ; BF 0E 00
;   [loop start (also forward branch)] L_0B2E
L_0B2E:
        mov     word ptr [si + 9], di           ; 89 7C 09
        mov     ax, word ptr [0x284]            ; A1 84 02
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B5F                          ; 74 26
        cmp     ax, 2                           ; 3D 02 00
        je      L_0B48                          ; 74 0A
        mov     di, 0x1b                        ; BF 1B 00
        jmp     L_0B4B                          ; EB 08
;   [conditional branch target (if/else)] L_0B43
L_0B43:
        ; constant WM_PAINT
        mov     di, 0xf                         ; BF 0F 00
        jmp     L_0B2E                          ; EB E6
;   [conditional branch target (if/else)] L_0B48
L_0B48:
        mov     di, 0x19                        ; BF 19 00
;   [loop start (also forward branch)] L_0B4B
L_0B4B:
        mov     word ptr [si + 0xf], di         ; 89 7C 0F
        mov     ax, word ptr [0x286]            ; A1 86 02
        or      ax, ax                          ; 0B C0
        je      L_0B64                          ; 74 0F
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B69                          ; 74 0F
        mov     di, 0x1e                        ; BF 1E 00
        jmp     L_0B6C                          ; EB 0D
;   [conditional branch target (if/else)] L_0B5F
L_0B5F:
        mov     di, 0x1a                        ; BF 1A 00
        jmp     L_0B4B                          ; EB E7
;   [conditional branch target (if/else)] L_0B64
L_0B64:
        mov     di, 0x1c                        ; BF 1C 00
        jmp     L_0B6C                          ; EB 03
;   [conditional branch target (if/else)] L_0B69
L_0B69:
        mov     di, 0x1d                        ; BF 1D 00
;   [unconditional branch target] L_0B6C
L_0B6C:
        mov     word ptr [si + 0x15], di        ; 89 7C 15
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.

;-------------------------------------------------------------------------
; sub_0B75   offset=0x0B75  size=333 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=9, ASM=1)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATEDIALOG
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   ENABLEWINDOW
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMINT
;   SETDLGITEMINT
;
; Near calls (internal): L_0038, L_0AE0, L_0B75
;-------------------------------------------------------------------------
;   [sub-routine] L_0B75
L_0B75:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [si + 1]           ; 8B 44 01
        mov     word ptr [0x27c], ax            ; A3 7C 02
        cmp     word ptr [si + 0x1b], 0x1f      ; 83 7C 1B 1F
        jne     L_0B8D                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B8F                          ; EB 02
;   [conditional branch target (if/else)] L_0B8D
L_0B8D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B8F
L_0B8F:
        mov     word ptr [0x26a], ax            ; A3 6A 02
        mov     ax, word ptr [si + 0x21]        ; 8B 44 21
        sub     ax, word ptr [si + 0x23]        ; 2B 44 23
        mov     word ptr [0x27e], ax            ; A3 7E 02
        mov     ax, word ptr [si + 3]           ; 8B 44 03
        sub     ax, word ptr [si + 5]           ; 2B 44 05
        add     ax, 4                           ; 05 04 00
        mov     word ptr [0x280], ax            ; A3 80 02
        mov     ax, word ptr [si + 0x15]        ; 8B 44 15
        sub     ax, word ptr [si + 0x17]        ; 2B 44 17
        mov     word ptr [0x286], ax            ; A3 86 02
        mov     bx, word ptr [si + 9]           ; 8B 5C 09
        sub     bx, word ptr [si + 0xb]         ; 2B 5C 0B
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xb2]        ; 8B 87 B2 00
        mov     word ptr [0x282], ax            ; A3 82 02
        mov     bx, word ptr [si + 0xf]         ; 8B 5C 0F
        sub     bx, word ptr [si + 0x11]        ; 2B 5C 11
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xb8]        ; 8B 87 B8 00
        mov     word ptr [0x284], ax            ; A3 84 02
        mov     bx, word ptr [0x286]            ; 8B 1E 86 02
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xbe]        ; 8B 87 BE 00
        mov     word ptr [0x286], ax            ; A3 86 02
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
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0C02                          ; 74 0D
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0BFD                          ; 75 03
        jmp     L_0CB8                          ; E9 BB 00
;   [loop start (also forward branch)] L_0BFD
L_0BFD:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E3D                          ; E9 3B 02
;   [conditional branch target (if/else)] L_0C02
L_0C02:
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        call    L_0AE0                          ; E8 D7 FE
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xc7                        ; B8 C7 00
        push    ax                              ; 50
        call    L_0038                          ; E8 22 F4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xcd                        ; B8 CD 00
        push    ax                              ; 50
        call    L_0038                          ; E8 18 F4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xd3                        ; B8 D3 00
        push    ax                              ; 50
        call    L_0038                          ; E8 0E F4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xd9                        ; B8 D9 00
        push    ax                              ; 50
        call    L_0038                          ; E8 04 F4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xdf                        ; B8 DF 00
        push    ax                              ; 50
        call    L_0038                          ; E8 FA F3
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xe5                        ; B8 E5 00
        push    ax                              ; 50
        call    L_0038                          ; E8 F0 F3
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        push    word ptr [0xc5]                 ; FF 36 C5 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A CD 08 00 00 [FIXUP]
        cmp     word ptr [0x190], 0             ; 83 3E 90 01 00
        je      L_0CB2                          ; 74 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [0x26a], 0             ; 83 3E 6A 02 00
        je      L_0C71                          ; 74 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_0C74                          ; EB 03
;   [conditional branch target (if/else)] L_0C71
L_0C71:
        mov     ax, 0x1f                        ; B8 1F 00
;   [unconditional branch target] L_0C74
L_0C74:
        push    ax                              ; 50
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 9E 0C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0C8A                          ; 74 09
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A AE 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C8A
L_0C8A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [0x27e], 0             ; 83 3E 7E 02 00
        jne     L_0C99                          ; 75 05
        mov     ax, 0x22                        ; B8 22 00
        jmp     L_0C9C                          ; EB 03
;   [conditional branch target (if/else)] L_0C99
L_0C99:
        mov     ax, 0x21                        ; B8 21 00
;   [unconditional branch target] L_0C9C
L_0C9C:
        push    ax                              ; 50
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 37 09 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0CB2                          ; 74 09
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 44 09 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0CB2
L_0CB2:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E3D                          ; E9 85 01
;   [unconditional branch target] L_0CB8
L_0CB8:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x28                        ; 3D 28 00
        jbe     L_0CC6                          ; 76 03
        jmp     L_0BFD                          ; E9 37 FF
;   [conditional branch target (if/else)] L_0CC6
L_0CC6:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xde8]        ; 2E FF A7 E8 0D
        mov     byte ptr [0xc4], 0              ; C6 06 C4 00 00
        cmp     word ptr [0xdf], 0x1f           ; 83 3E DF 00 1F
        jne     L_0CDF                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CE1                          ; EB 02
;   [conditional branch target (if/else)] L_0CDF
L_0CDF:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0CE1
L_0CE1:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A B2 09 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0D32                          ; 74 31
        cmp     ax, 0x258                       ; 3D 58 02
        je      L_0D1C                          ; 74 16
        jg      L_0D4A                          ; 7F 42
        cmp     ax, 0x4b                        ; 3D 4B 00
        je      L_0D1C                          ; 74 0F
        cmp     ax, 0x6e                        ; 3D 6E 00
        je      L_0D1C                          ; 74 0A
        cmp     ax, 0x96                        ; 3D 96 00
        je      L_0D1C                          ; 74 05
        cmp     ax, 0x12c                       ; 3D 2C 01
        jne     L_0D2D                          ; 75 11
;   [loop start (also forward branch)] L_0D1C
L_0D1C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xc5], ax             ; A3 C5 00
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D32                          ; 74 0A
        cmp     ax, 0x12c0                      ; 3D C0 12
        jle     L_0D32                          ; 7E 05
;   [loop start (also forward branch)] L_0D2D
L_0D2D:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [conditional branch target (if/else)] L_0D32
L_0D32:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0D71                          ; 75 39
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D65                          ; 74 20
        mov     ax, 0x22                        ; B8 22 00
        jmp     L_0D68                          ; EB 1E
;   [conditional branch target (if/else)] L_0D4A
L_0D4A:
        cmp     ax, 0x4b0                       ; 3D B0 04
        je      L_0D1C                          ; 74 CD
        cmp     ax, 0x708                       ; 3D 08 07
        je      L_0D1C                          ; 74 C8
        cmp     ax, 0x960                       ; 3D 60 09
        je      L_0D1C                          ; 74 C3
        cmp     ax, 0x12c0                      ; 3D C0 12
        je      L_0D1C                          ; 74 BE
        cmp     ax, 0x2580                      ; 3D 80 25
        je      L_0D1C                          ; 74 B9
        jmp     L_0D2D                          ; EB C8
;   [conditional branch target (if/else)] L_0D65
L_0D65:
        mov     ax, 0x21                        ; B8 21 00
;   [unconditional branch target] L_0D68
L_0D68:
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E4 06 00 00 [FIXUP]
        jmp     L_0CB2                          ; E9 41 FF
;   [conditional branch target (if/else)] L_0D71
L_0D71:
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 FD FD
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x266                       ; B8 66 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D92                          ; EB 05
        mov     byte ptr [0xc4], 1              ; C6 06 C4 00 01
;   [unconditional branch target] L_0D92
L_0D92:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 1C 0A 00 00 [FIXUP]
        jmp     L_0CB2                          ; E9 11 FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xc7                        ; B8 C7 00
        jmp     L_0DE1                          ; EB 35
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xcd                        ; B8 CD 00
        jmp     L_0DE1                          ; EB 2A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd3                        ; B8 D3 00
        jmp     L_0DE1                          ; EB 1F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd9                        ; B8 D9 00
        jmp     L_0DE1                          ; EB 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xdf                        ; B8 DF 00
        jmp     L_0DE1                          ; EB 09
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe5                        ; B8 E5 00
;   [unconditional branch target] L_0DE1
L_0DE1:
        push    ax                              ; 50
        call    0                               ; E8 1B F2
        jmp     L_0CB2                          ; E9 CA FE
        into                                    ; CE
        or      al, 0x8d                        ; 0C 8D
        or      ax, 0xbfd                       ; 0D FD 0B
        std                                     ; FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      bp, word ptr [si - 0x53f3]      ; 0B AC 0D AC
        or      ax, 0xdac                       ; 0D AC 0D
        std                                     ; FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      di, bp                          ; 0B FD
        or      si, word ptr [bx - 0x48f3]      ; 0B B7 0D B7
        or      ax, 0xdb7                       ; 0D B7 0D
        ret     0xc20d                          ; C2 0D C2
        or      ax, 0xdc2                       ; 0D C2 0D
        int     0xd                             ; CD 0D
        int     0xd                             ; CD 0D
        fmul    dword ptr [di]                  ; D8 0D
        fmul    dword ptr [di]                  ; D8 0D
        fmul    dword ptr [di]                  ; D8 0D
        fmul    dword ptr [di]                  ; D8 0D
        mov     ax, word ptr [0xa10d]           ; A1 0D A1
        or      ax, 0xda1                       ; 0D A1 0D
        mov     ax, word ptr [0xa10d]           ; A1 0D A1
        or      ax, 0x75e9                      ; 0D E9 75
        inc     byte ptr [bp + di + 0x2ed]      ; FE 83 ED 02
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
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x2070]               ; FF 36 70 20
        ;   ^ arg hWndOwner
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x17a0]          ; FF B7 A0 17
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bx + 0x179e]          ; FF B7 9E 17
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A F0 07 00 00 [FIXUP]
        cdq                                     ; 99
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x1bf8]               ; FF 36 F8 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x17a0]          ; FF B7 A0 17
        push    word ptr [bx + 0x179e]          ; FF B7 9E 17
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

TERMINAL_TEXT ENDS

        END
