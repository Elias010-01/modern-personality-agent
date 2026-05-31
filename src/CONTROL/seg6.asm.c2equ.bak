; ======================================================================
; CONTROL / seg6.asm   (segment 6 of CONTROL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        27
; Total instructions:                 2260
; 
; Classification (pass8):
;   C-origin (high+medium):             25
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     98 (32 unique)
;   Top:
;       12  SENDMESSAGE
;        8  LSTRCAT
;        8  GETPROFILESTRING
;        6  GETDLGITEM
;        6  LOADSTRING
;        5  LSTRCPY
;        4  SENDDLGITEMMESSAGE
;        4  MESSAGEBOX
; ======================================================================
; AUTO-GENERATED from original CONTROL segment 6
; segment_size=5848 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CONTROL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xae                        ; 81 EC AE 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0023                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0020                          ; 75 03
        jmp     L_00A6                          ; E9 86 00
;   [conditional branch target (if/else)] L_0020
L_0020:
        jmp     L_0295                          ; E9 72 02
;   [conditional branch target (if/else)] L_0023
L_0023:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0036                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 62 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0036
L_0036:
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
        call    far USER.LOADCURSOR             ; 9A 70 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 76 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02A4                          ; E8 54 02
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0066                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 4E 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0066
L_0066:
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
        call    far USER.LOADCURSOR             ; 9A 5C 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 62 02 00 00 [FIXUP]
        cmp     word ptr [bp - 0xae], 0         ; 83 BE 52 FF 00
        jne     L_0092                          ; 75 11
;   [loop start] L_0081
L_0081:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_008C
L_008C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0297                          ; E9 05 02
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Thin wrapper around SHOWWINDOW(hWnd, nCmdShow) -> BOOL.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0092   offset=0x0092  size=19 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_06EA
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0092
L_0092:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_06EA                          ; E8 46 06
        jmp     L_008C                          ; EB E6
;   [unconditional branch target] L_00A6
L_00A6:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00B1                          ; 75 03
        jmp     L_0232                          ; E9 81 01
;   [conditional branch target (if/else)] L_00B1
L_00B1:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0081                          ; 74 CB
        cmp     ax, 0x12c                       ; 3D 2C 01
        je      L_00C5                          ; 74 0A
        cmp     ax, 0x136                       ; 3D 36 01
        jne     L_00C3                          ; 75 03
        jmp     L_01F4                          ; E9 31 01
;   [conditional branch target (if/else)] L_00C3
L_00C3:
        jmp     L_008C                          ; EB C7
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;     [bp+0xe]  HWND      (1 use)
;   Locals:
;     [bp-0x6]   HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: GETDLGITEM, SENDMESSAGE.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_00C5   offset=0x00C5  size=32 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_00C5
L_00C5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 07 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        ;   ^ arg hWnd
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
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 0xac], si        ; 89 B6 54 FF
        cmp     si, -1                          ; 83 FE FF
        je      L_008C                          ; 74 9E
        mov     di, si                          ; 8B FE
        shl     di, 1                           ; D1 E7
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
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
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 27 01 00 00 [FIXUP]
        mov     word ptr [di + 0x94c], ax       ; 89 85 4C 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0115                          ; 75 09
        mov     word ptr [di + 0x94c], 0        ; C7 85 4C 09 00 00
        jmp     L_008C                          ; E9 77 FF
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0x6]   HWND      (8 uses)
;     [bp-0xac]   WPARAM    (4 uses)

; Description (heuristic):
;   String manipulation routine (2 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0115   offset=0x0115  size=88 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0115
L_0115:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg wParam
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 65 01 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     byte ptr [bx + si], 0           ; C6 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        ;   ^ arg wParam
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 86 01 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
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
        call    far USER.SENDMESSAGE            ; 9A 9A 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A B0 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg wParam
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A C4 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A D8 01 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 01 02 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008C                          ; E9 98 FE
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0xac]   LRESULT   (1 use)

; Description (heuristic):
;   Thin wrapper around SENDMESSAGE(hWnd, wMsg, wParam, lParam) -> LRESULT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_01F4   offset=0x01F4  size=12 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [unconditional branch target] L_01F4
L_01F4:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
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
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A A4 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0211                          ; 75 03
        jmp     L_008C                          ; E9 7B FE
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: LOADCURSOR, SENDDLGITEMMESSAGE, SETCURSOR (+1 more).

;-------------------------------------------------------------------------
; sub_0211   offset=0x0211  size=60 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCURSOR
;   SHOWCURSOR
;
; Near calls (internal): L_06EA, L_0910
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0211
L_0211:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0xac]        ; 8B 9E 54 FF
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008C                          ; E9 5A FE
;   [unconditional branch target] L_0232
L_0232:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_06EA                          ; E8 B2 04
        or      ax, ax                          ; 0B C0
        jne     L_023F                          ; 75 03
        jmp     L_008C                          ; E9 4D FE
;   [conditional branch target (if/else)] L_023F
L_023F:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0252                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 7A 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0252
L_0252:
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
        call    far USER.LOADCURSOR             ; 9A 88 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 8E 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0910                          ; E8 A4 06
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_027E                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_027E
L_027E:
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
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0081                          ; E9 EC FD
;   [unconditional branch target] L_0295
L_0295:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0297
L_0297:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x106]   HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING, LOCALALLOC, ENABLEWINDOW (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_02A4   offset=0x02A4  size=94 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETPROFILESTRING
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETPARENT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_02A4
L_02A4:
        ;   = cProc <262> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x106                       ; 81 EC 06 01
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x281                       ; B8 81 02
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        or      ax, ax                          ; 0B C0
        jne     L_02E2                          ; 75 22
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A 6E 03 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 7B 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 8C 03 00 00 [FIXUP]
;   [loop start] L_02DD
L_02DD:
        sub     ax, ax                          ; 2B C0
        jmp     L_06E3                          ; E9 01 04
;   [conditional branch target (if/else)] L_02E2
L_02E2:
        mov     ax, 0x21d                       ; B8 1D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x214                       ; B8 14 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 38 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 17 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xae], ax        ; 89 86 52 FF
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xac], ax        ; 89 86 54 FF
        mov     ax, 0x226                       ; B8 26 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x225                       ; B8 25 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A D0 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x106]       ; 8B 9E FA FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0393                          ; 75 4E
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0365                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0367                          ; EB 02
;   [conditional branch target (if/else)] L_0365
L_0365:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0367
L_0367:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0388                          ; 75 03
        jmp     L_05CC                          ; E9 44 02
;   [loop start (also forward branch)] L_0388
L_0388:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05E3                          ; E9 50 02
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xae]   HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING, SENDMESSAGE.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0393   offset=0x0393  size=34 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETPROFILESTRING
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0393
L_0393:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
;   [loop start] L_03AF
L_03AF:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_03EA                          ; 75 33
        mov     ax, 0x22d                       ; B8 2D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x22c                       ; B8 2C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x280                       ; B8 80 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], 0        ; C7 86 FC FE 00 00
        mov     ax, word ptr [bp - 0x106]       ; 8B 86 FA FE
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x102], 0        ; C7 86 FE FE 00 00
        jmp     L_0577                          ; E9 8D 01
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xae]   HWND      (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_03EA   offset=0x03EA  size=294 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETPROFILESTRING
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   ENABLEWINDOW
;   GETPARENT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_03EA
L_03EA:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A F8 04 00 00 [FIXUP]
;   [loop start] L_03FF
L_03FF:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_03AF                          ; 74 A5
        jmp     L_03FF                          ; EB F3
;   [loop start] L_040C
L_040C:
        mov     ax, 0x236                       ; B8 36 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x235                       ; B8 35 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 09 06 00 00 [FIXUP]
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 63 04 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x100], 0        ; 80 BE 00 FF 00
        jne     L_043E                          ; 75 03
        jmp     L_056C                          ; E9 2E 01
;   [conditional branch target (if/else)] L_043E
L_043E:
        mov     word ptr [bp - 0x102], 1        ; C7 86 FE FE 01 00
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        mov     ax, 0x23e                       ; B8 3E 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A C4 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0467                          ; 74 0B
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 97 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0467
L_0467:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0472                          ; 74 03
        jmp     L_0561                          ; E9 EF 00
;   [conditional branch target (if/else)] L_0472
L_0472:
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 8E 04 00 00 [FIXUP]
        jmp     L_0561                          ; E9 DE 00
;   [loop start] L_0483
L_0483:
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B6 04 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        call    far _entry_22                   ; 9A D3 04 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A E3 04 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 42 06 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        mov     ax, 0x240                       ; B8 40 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 48 05 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 5D 05 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 52 06 00 00 [FIXUP]
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 1B 05 00 00 [FIXUP]
        cmp     word ptr [bp - 0x104], 0x14     ; 83 BE FC FE 14
        jge     L_0540                          ; 7D 3D
        mov     si, word ptr [bp - 0x104]       ; 8B B6 FC FE
        shl     si, 1                           ; D1 E6
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        ;   ^ arg hWnd
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 99 06 00 00 [FIXUP]
        mov     word ptr [si + 0x94c], ax       ; 89 84 4C 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_052E                          ; 75 06
        mov     word ptr [si + 0x94c], 0        ; C7 84 4C 09 00 00
;   [conditional branch target (if/else)] L_052E
L_052E:
        mov     si, word ptr [bp - 0x104]       ; 8B B6 FC FE
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x94c]       ; 8B 84 4C 09
        mov     word ptr [si + 0x8a6], ax       ; 89 84 A6 08
        inc     word ptr [bp - 0x104]           ; FF 86 FC FE
;   [conditional branch target (if/else)] L_0540
L_0540:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x242                       ; B8 42 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 17 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0561                          ; 74 0B
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 31 06 00 00 [FIXUP]
;   [branch target] L_0561
L_0561:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_056C                          ; 74 03
        jmp     L_0483                          ; E9 17 FF
;   [loop start (also forward branch)] L_056C
L_056C:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_056C                          ; 75 F5
;   [unconditional branch target] L_0577
L_0577:
        mov     bx, word ptr [bp - 0x58]        ; 8B 5E A8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0582                          ; 74 03
        jmp     L_040C                          ; E9 8A FE
;   [conditional branch target (if/else)] L_0582
L_0582:
        cmp     word ptr [bp - 0x102], 0        ; 83 BE FE FE 00
        jne     L_05EF                          ; 75 66
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x59                        ; B8 59 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 8E 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05A9                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05AB                          ; EB 02
;   [conditional branch target (if/else)] L_05A9
L_05A9:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05AB
L_05AB:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETPARENT              ; 9A C4 02 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A D1 02 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_05CC                          ; 74 03
        jmp     L_0388                          ; E9 BC FD
;   [branch target] L_05CC
L_05CC:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_05E3
L_05E3:
        push    word ptr [bp - 0x106]           ; FF B6 FA FE
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A DC 06 00 00 [FIXUP]
        jmp     L_02DD                          ; E9 EE FC
;   [conditional branch target (if/else)] L_05EF
L_05EF:
        mov     ax, 0x24c                       ; B8 4C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x245                       ; B8 45 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x244                       ; B8 44 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FB 02 00 00 [FIXUP]
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        mov     ax, 0x254                       ; B8 54 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 5E 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_062B                          ; 74 06
        inc     word ptr [bp - 0x58]            ; FF 46 A8
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_062B
L_062B:
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 73 06 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 83 06 00 00 [FIXUP]
        push    word ptr [bp - 0x58]            ; FF 76 A8
        mov     ax, 0x256                       ; B8 56 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A AA 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_066F                          ; 74 03
        inc     word ptr [bp - 0x58]            ; FF 46 A8
;   [conditional branch target (if/else)] L_066F
L_066F:
        push    word ptr [bp - 0x58]            ; FF 76 A8
        call    far _entry_22                   ; 9A B9 07 00 00 [FIXUP]
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 75 01 00 00 [FIXUP]
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg hWnd
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A B8 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_06BC                          ; 75 16
        push    word ptr [bp - 0xac]            ; FF B6 54 FF
        ;   ^ arg hWnd
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A D3 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_06BC
L_06BC:
        push    word ptr [bp - 0xae]            ; FF B6 52 FF
        ;   ^ arg hWnd
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0x104]       ; 8B 9E FC FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 49 07 00 00 [FIXUP]
        push    word ptr [bp - 0x106]           ; FF B6 FA FE
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_06E3
L_06E3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (2 uses)
;   Locals:
;     [bp-0x4]   HWND      (1 use)
;     [bp-0x6]   HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: LSTRCAT, GETDLGITEM, LOADSTRING (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_06EA   offset=0x06EA  size=174 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_06EA
L_06EA:
        ;   = cProc <350> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x15e                       ; 81 EC 5E 01
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x11e], 1        ; C7 86 E2 FE 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 10 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A CD 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x11c], 0        ; C7 86 E4 FE 00 00
;   [loop start] L_071D
L_071D:
        mov     si, word ptr [bp - 0x11c]       ; 8B B6 E4 FE
        mov     byte ptr [bp + si - 0x11a], 0xff ; C6 82 E6 FE FF
        inc     word ptr [bp - 0x11c]           ; FF 86 E4 FE
        cmp     word ptr [bp - 0x11c], 0x14     ; 83 BE E4 FE 14
        jl      L_071D                          ; 7C EC
        mov     word ptr [bp - 0x11c], 0        ; C7 86 E4 FE 00 00
;   [loop start] L_0737
L_0737:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0x11c]           ; FF B6 E4 FE
        ;   ^ arg wParam
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A DF 00 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_075A                          ; 75 08
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_075A                          ; 75 03
        jmp     L_0904                          ; E9 AA 01
;   [conditional branch target (if/else)] L_075A
L_075A:
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x94c]       ; 8B B7 4C 09
        or      si, si                          ; 0B F6
        jne     L_076B                          ; 75 03
        jmp     L_08EB                          ; E9 80 01
;   [conditional branch target (if/else)] L_076B
L_076B:
        cmp     byte ptr [bp + si - 0x11a], 0xff ; 80 BA E6 FE FF
        jne     L_0775                          ; 75 03
        jmp     L_08EB                          ; E9 76 01
;   [conditional branch target (if/else)] L_0775
L_0775:
        mov     word ptr [bp - 0x11e], 0        ; C7 86 E2 FE 00 00
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x5a                        ; B8 5A 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 58 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_079B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_079D                          ; EB 02
;   [conditional branch target (if/else)] L_079B
L_079B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_079D
L_079D:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 35 01 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 06 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_07EF                          ; 75 1B
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x5b                        ; B8 5B 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 73 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07F4                          ; 75 05
;   [conditional branch target (if/else)] L_07EF
L_07EF:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_07F6                          ; EB 02
;   [conditional branch target (if/else)] L_07F4
L_07F4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_07F6
L_07F6:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 56 08 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [bx + 0x94c]       ; 8B BF 4C 09
        mov     al, byte ptr [bp + di - 0x11a]  ; 8A 83 E6 FE
        cwde                                    ; 98
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A AE 08 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4E 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A B8 08 00 00 [FIXUP]
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 92 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_087B                          ; 75 1B
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x5c                        ; B8 5C 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 9C 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0880                          ; 75 05
;   [conditional branch target (if/else)] L_087B
L_087B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0882                          ; EB 02
;   [conditional branch target (if/else)] L_0880
L_0880:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0882
L_0882:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 6A 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        ;   ^ arg wParam
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 7A 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 40 09 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_08CC                          ; 74 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A D9 02 00 00 [FIXUP]
        jmp     L_08FD                          ; EB 31
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_08CC   offset=0x08CC  size=27 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_08CC
L_08CC:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_08FD                          ; EB 12
;   [unconditional branch target] L_08EB
L_08EB:
        mov     bx, word ptr [bp - 0x11c]       ; 8B 9E E4 FE
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x94c]       ; 8B B7 4C 09
        mov     al, byte ptr [bp - 0x11c]       ; 8A 86 E4 FE
        mov     byte ptr [bp + si - 0x11a], al  ; 88 82 E6 FE
;   [unconditional branch target] L_08FD
L_08FD:
        inc     word ptr [bp - 0x11c]           ; FF 86 E4 FE
        jmp     L_0737                          ; E9 33 FE
;   [unconditional branch target] L_0904
L_0904:
        mov     ax, word ptr [bp - 0x11e]       ; 8B 86 E2 FE
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   String manipulation routine (4 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0910   offset=0x0910  size=325 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GETPROFILESTRING
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   WRITEPROFILESTRING
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_0910
L_0910:
        ;   = cProc <562> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x232                       ; 81 EC 32 02
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     ax, 0x260                       ; B8 60 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x259                       ; B8 59 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x258                       ; B8 58 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 36 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 6A 09 00 00 [FIXUP]
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        mov     ax, 0x268                       ; B8 68 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 89 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0964                          ; 74 07
        inc     word ptr [bp - 0x142]           ; FF 86 BE FE
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_0964
L_0964:
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A A4 09 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x140], 0        ; 80 BE C0 FE 00
        je      L_09D6                          ; 74 61
        mov     word ptr [bp - 0xa8], 1         ; C7 86 58 FF 01 00
        mov     ax, word ptr [bp - 0x142]       ; 8B 86 BE FE
        mov     word ptr [bp - 0x146], ax       ; 89 86 BA FE
        push    ax                              ; 50
        mov     ax, 0x26a                       ; B8 6A 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 13 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x142], ax       ; 89 86 BE FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_099F                          ; 74 07
        inc     word ptr [bp - 0x142]           ; FF 86 BE FE
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_099F
L_099F:
        push    word ptr [bp - 0x146]           ; FF B6 BA FE
        call    far _entry_22                   ; 9A AD 09 00 00 [FIXUP]
        push    word ptr [bp - 0x142]           ; FF B6 BE FE
        call    far _entry_22                   ; 9A 51 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x142]       ; 8B 86 BE FE
        mov     word ptr [bp - 0x144], ax       ; 89 86 BC FE
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_09DC                          ; 75 1C
        inc     word ptr [bp - 0x144]           ; FF 86 BC FE
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 05 0B 00 00 [FIXUP]
        jmp     L_09DC                          ; EB 06
;   [conditional branch target (if/else)] L_09D6
L_09D6:
        mov     word ptr [bp - 0xa8], 0         ; C7 86 58 FF 00 00
;   [branch target] L_09DC
L_09DC:
        mov     word ptr [bp - 0x1b2], 0        ; C7 86 4E FE 00 00
;   [loop start] L_09E2
L_09E2:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0x1b2]           ; FF B6 4E FE
        ;   ^ arg wParam
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 8A 0A 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0A09                          ; 75 08
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0A09                          ; 75 03
        jmp     L_0BFD                          ; E9 F4 01
;   [conditional branch target (if/else)] L_0A09
L_0A09:
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 43 0A 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x26d                       ; B8 6D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x26c                       ; B8 6C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 26 04 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        mov     ax, 0x275                       ; B8 75 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4E 04 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 30 04 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0A5F
L_0A5F:
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x277                       ; B8 77 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 9A 0A 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0x1b2]       ; 8B 9E 4E FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x94c]           ; FF B7 4C 09
        ;   ^ arg wParam
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A BA 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 15 0B 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x12c                       ; B8 2C 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     bx, word ptr [bp - 0x1b2]       ; 8B 9E 4E FE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x8a6]           ; FF B7 A6 08
        ;   ^ arg wParam
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 98 0B 00 00 [FIXUP]
        cmp     word ptr [bp - 0xa8], 0         ; 83 BE 58 FF 00
        jne     L_0AC8                          ; 75 03
        jmp     L_0B7E                          ; E9 B6 00
;   [conditional branch target (if/else)] L_0AC8
L_0AC8:
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A ED 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AE0                          ; 74 03
        jmp     L_0B7E                          ; E9 9E 00
;   [conditional branch target (if/else)] L_0AE0
L_0AE0:
        lea     ax, [bp - 0xc0]                 ; 8D 86 40 FF
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, word ptr [bp - 0x144]       ; 8B 86 BC FE
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AF8                          ; 74 03
        jmp     L_0B7E                          ; E9 86 00
;   [conditional branch target (if/else)] L_0AF8
L_0AF8:
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x140]                ; 8D 86 C0 FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 7C 04 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x279                       ; B8 79 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 26 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 0x146]       ; 8B 86 BA FE
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 36 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x27b                       ; B8 7B 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 47 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A A6 04 00 00 [FIXUP]
        mov     ax, 0x284                       ; B8 84 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x27d                       ; B8 7D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x232]                ; 8D 86 CE FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B69                          ; 75 05
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [conditional branch target (if/else)] L_0B69
L_0B69:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FB 03 00 00 [FIXUP]
;   [unconditional branch target] L_0B7E
L_0B7E:
        inc     word ptr [bp - 0x1b2]           ; FF 86 4E FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x136                       ; B8 36 01
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0x1b2]           ; FF B6 4E FE
        ;   ^ arg wParam
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 2B 02 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0BA6                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0BD1                          ; 74 2B
;   [conditional branch target (if/else)] L_0BA6
L_0BA6:
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 95 0C 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A D5 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0BD1                          ; 75 03
        jmp     L_0A5F                          ; E9 8E FE
;   [conditional branch target (if/else)] L_0BD1
L_0BD1:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0BF5                          ; 74 1E
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1b0]                ; 8D 86 50 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 5C 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BF5                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BF7                          ; EB 02
;   [conditional branch target (if/else)] L_0BF5
L_0BF5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0BF7
L_0BF7:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_09E2                          ; E9 E5 FD
;   [unconditional branch target] L_0BFD
L_0BFD:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0C0B                          ; 75 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0C0B
L_0C0B:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x29c                       ; B8 9C 02
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 15 0D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xaa                        ; 81 EC AA 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0C47                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0C44                          ; 75 03
        jmp     L_0D2A                          ; E9 E6 00
;   [conditional branch target (if/else)] L_0C44
L_0C44:
        jmp     L_0D3B                          ; E9 F4 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (2 uses)
;   Locals:
;     [bp-0xaa]   HWND      (1 use)

; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.

;-------------------------------------------------------------------------
; sub_0C47   offset=0x0C47  size=103 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETPROFILESTRING
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0D48
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0C47
L_0C47:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 6A 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C6F                          ; 75 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 8B 0D 00 00 [FIXUP]
        jmp     L_0D3D                          ; E9 CE 00
;   [conditional branch target (if/else)] L_0C6F
L_0C6F:
        mov     ax, 0x2ac                       ; B8 AC 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a5                       ; B8 A5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 0F 0E 00 00 [FIXUP]
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        mov     ax, 0x2b4                       ; B8 B4 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A DA 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0CA9                          ; 74 06
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_0CA9
L_0CA9:
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ax                              ; 50
        call    far _entry_22                   ; 9A EF 0C 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 48 0F 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x2b6                       ; B8 B6 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A DB 0D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0CEB                          ; 74 03
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [conditional branch target (if/else)] L_0CEB
L_0CEB:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_22                   ; 9A 45 08 00 00 [FIXUP]
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 9C 0E 00 00 [FIXUP]
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        ;   ^ arg hWnd
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0xa8]                 ; 8D 86 58 FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A A9 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 9A 00 00 00 [FIXUP]
;   [loop start] L_0D25
L_0D25:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D3D                          ; EB 13
;   [unconditional branch target] L_0D2A
L_0D2A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0D48                          ; E8 0F 00
        jmp     L_0D25                          ; EB EA
;   [unconditional branch target] L_0D3B
L_0D3B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D3D
L_0D3D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.

;-------------------------------------------------------------------------
; sub_0D48   offset=0x0D48  size=31 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;
; Near calls (internal): L_0D95
;-------------------------------------------------------------------------
;   [sub-routine] L_0D48
L_0D48:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_0D5F                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0D84                          ; 74 2C
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0D71                          ; 74 14
        jmp     L_0D8F                          ; EB 30
;   [conditional branch target (if/else)] L_0D5F
L_0D5F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDlg
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 01 07 00 00 [FIXUP]
        push    ax                              ; 50
        jmp     L_0D7D                          ; EB 0C
;   [conditional branch target (if/else)] L_0D71
L_0D71:
        cmp     word ptr [bp + 4], 2            ; 83 7E 04 02
        jne     L_0D8F                          ; 75 18
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
;   [unconditional branch target] L_0D7D
L_0D7D:
        call    L_0D95                          ; E8 15 00
        or      ax, ax                          ; 0B C0
        je      L_0D8F                          ; 74 0B
;   [conditional branch target (if/else)] L_0D84
L_0D84:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 88 00 00 00 [FIXUP]
;   [error/early exit] L_0D8F
L_0D8F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)
;   Locals:
;     [bp-0x124]   LRESULT   (1 use)

; Description (heuristic):
;   Thin wrapper around SENDMESSAGE(hWnd, wMsg, wParam, lParam) -> LRESULT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0D95   offset=0x0D95  size=16 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_0D95
L_0D95:
        ;   = cProc <292> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x124                       ; 81 EC 24 01
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
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
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A CD 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x124], ax       ; 89 86 DC FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0DBB                          ; 75 05
;   [loop start] L_0DB6
L_0DB6:
        sub     ax, ax                          ; 2B C0
        jmp     L_111D                          ; E9 62 03
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)
;   Locals:
;     [bp-0x124]   WPARAM    (1 use)

; Description (heuristic):
;   String manipulation routine (3 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0DBB   offset=0x0DBB  size=124 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GETPROFILESTRING
;   LOADLIBRARY(LPSTR lpszLibFile) -> HANDLE
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0DBB
L_0DBB:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0x124]           ; FF B6 DC FE
        ;   ^ arg wParam
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 28 08 00 00 [FIXUP]
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ax                              ; 50
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 72 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 42 01 00 00 [FIXUP]
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, 0x2b9                       ; B8 B9 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2b8                       ; B8 B8 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 36 09 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x122], 0        ; 80 BE DE FE 00
        jne     L_0E68                          ; 75 4E
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A D1 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E3A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E3C                          ; EB 02
;   [conditional branch target (if/else)] L_0E3A
L_0E3A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0E3C
L_0E3C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0E4E                          ; 74 0B
;   [loop start] L_0E43
L_0E43:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A C6 08 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 68 FF
;   [conditional branch target (if/else)] L_0E4E
L_0E4E:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A DF 05 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 4E FF
;   [conditional branch target (if/else)] L_0E68
L_0E68:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2c1                       ; B8 C1 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 85 0E 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2c3                       ; B8 C3 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 36 08 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0EA0                          ; 75 10
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x2c5                       ; B8 C5 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 64 0F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0EA0
L_0EA0:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A EA 0E 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszLibFile (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszLibFile (low/offset)
        ; --> LOADLIBRARY(LPSTR lpszLibFile) -> HANDLE
        call    far KERNEL.LOADLIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        or      ax, ax                          ; 0B C0
        jne     L_0F17                          ; 75 59
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 7B 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0EDE                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EE0                          ; EB 02
;   [conditional branch target (if/else)] L_0EDE
L_0EDE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0EE0
L_0EE0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 53 0F 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0EF7                          ; 74 03
        jmp     L_0E43                          ; E9 4C FF
; Description (heuristic):
;   Internal helper (17 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0EF7   offset=0x0EF7  size=17 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0EF7
L_0EF7:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A E5 08 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 9F FE
;   [conditional branch target (if/else)] L_0F17
L_0F17:
        cmp     word ptr [bp - 0xd0], 0x20      ; 83 BE 30 FF 20
        ja      L_0F21                          ; 77 03
        jmp     L_0DB6                          ; E9 95 FE
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xa]   FARPROC   (1 use)
;     [bp-0xd0]   HANDLE    (1 use)

; Description (heuristic):
;   String manipulation routine (3 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0F21   offset=0x0F21  size=221 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   FREELIBRARY(HANDLE hLibModule) -> VOID
;   FREEMODULE
;   GETPROCADDRESS(HANDLE hModule, LPSTR lpszProc) -> FARPROC
;   GETPROFILESTRING
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   WRITEPROFILESTRING
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCURSOR
;   SHOWCURSOR
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0F21
L_0F21:
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        ;   ^ arg hModule
        mov     ax, 0x2ca                       ; B8 CA 02
        push    ds                              ; 1E
        ;   ^ arg lpszProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszProc (low/offset)
        ; --> GETPROCADDRESS(HANDLE hModule, LPSTR lpszProc) -> FARPROC
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        je      L_0F3C                          ; 74 03
        jmp     L_0FD1                          ; E9 95 00
;   [conditional branch target (if/else)] L_0F3C
L_0F3C:
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x2d5                       ; B8 D5 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A D0 09 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 5B 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A CA 07 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A E7 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F88                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F8A                          ; EB 02
;   [conditional branch target (if/else)] L_0F88
L_0F88:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0F8A
L_0F8A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 66 10 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0FAE                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_43                   ; 9A D1 12 00 00 [FIXUP]
        jmp     L_0FC5                          ; EB 17
;   [conditional branch target (if/else)] L_0FAE
L_0FAE:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A E9 12 00 00 [FIXUP]
;   [unconditional branch target] L_0FC5
L_0FC5:
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        ;   ^ arg hLibModule
        ; --> FREELIBRARY(HANDLE hLibModule) -> VOID
        call    far KERNEL.FREELIBRARY          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0DB6                          ; E9 E5 FD
;   [unconditional branch target] L_0FD1
L_0FD1:
        mov     ax, 0x2e0                       ; B8 E0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2d7                       ; B8 D7 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xce0                       ; B8 E0 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 32 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        lcall   [bp - 0xa]                      ; FF 5E F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xd0]            ; FF B6 30 FF
        call    far KERNEL.FREEMODULE           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_1018                          ; 75 03
        jmp     L_111A                          ; E9 02 01
;   [conditional branch target (if/else)] L_1018
L_1018:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_102B                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 02 11 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_102B
L_102B:
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
        call    far USER.LOADCURSOR             ; 9A 10 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 16 11 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A BE 0C 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 3B 13 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x2e8                       ; B8 E8 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 95 10 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     ax, 0x2ea                       ; B8 EA 02
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 4B 13 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A A7 0E 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A A5 10 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x2ec                       ; B8 EC 02
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A B5 10 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A CE 0C 00 00 [FIXUP]
        mov     ax, 0x2f5                       ; B8 F5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A E8 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_10DF                          ; 75 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_25                   ; 9A 07 0C 00 00 [FIXUP]
        jmp     L_10F4                          ; EB 15
;   [conditional branch target (if/else)] L_10DF
L_10DF:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x2fd                       ; B8 FD 02
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 1C 0C 00 00 [FIXUP]
;   [unconditional branch target] L_10F4
L_10F4:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_1106                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A B4 11 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1106
L_1106:
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
        call    far USER.LOADCURSOR             ; 9A C2 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A C8 11 00 00 [FIXUP]
;   [fall-through exit] L_111A
L_111A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
;   [fall-through exit] L_111D
L_111D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
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
        je      L_113C                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_1179                          ; 74 3F
        jmp     L_1174                          ; EB 38
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (2 uses)

; Description (heuristic):
;   Dialog procedure (DlgProc). Handles dialog messages.

;-------------------------------------------------------------------------
; sub_113C   offset=0x113C  size=121 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CHECKDLGBUTTON
;   CHECKRADIOBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   SETCURSOR
;   SETFOCUS
;   SHOWCURSOR
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_127F, L_1305, L_1547
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_113C
L_113C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        call    L_1305                          ; E8 AF 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 4F 0C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A 21 0D 00 00 [FIXUP]
;   [unconditional branch target] L_1174
L_1174:
        sub     ax, ax                          ; 2B C0
        jmp     L_1274                          ; E9 FB 00
;   [conditional branch target (if/else)] L_1179
L_1179:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_1198                          ; 74 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_11F8                          ; 74 72
        cmp     ax, 0x324                       ; 3D 24 03
        jae     L_1205                          ; 73 7A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        jmp     L_123C                          ; E9 A4 00
;   [conditional branch target (if/else)] L_1198
L_1198:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_127F                          ; E8 E1 00
        or      ax, ax                          ; 0B C0
        jne     L_11A5                          ; 75 03
        jmp     L_1271                          ; E9 CC 00
;   [conditional branch target (if/else)] L_11A5
L_11A5:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_11B8                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A E0 11 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_11B8
L_11B8:
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
        call    far USER.LOADCURSOR             ; 9A EE 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A F4 11 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1547                          ; E8 75 03
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_11E4                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 32 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_11E4
L_11E4:
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
        call    far USER.LOADCURSOR             ; 9A 40 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 46 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_11F8
L_11F8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 68 0C 00 00 [FIXUP]
        jmp     L_1271                          ; EB 6C
;   [conditional branch target (if/else)] L_1205
L_1205:
        cmp     word ptr [bp + 0xa], 0x329      ; 81 7E 0A 29 03
        jae     L_1218                          ; 73 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        jmp     L_123C                          ; EB 24
;   [conditional branch target (if/else)] L_1218
L_1218:
        cmp     word ptr [bp + 0xa], 0x32c      ; 81 7E 0A 2C 03
        jae     L_122B                          ; 73 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        jmp     L_123C                          ; EB 11
;   [conditional branch target (if/else)] L_122B
L_122B:
        cmp     word ptr [bp + 0xa], 0x32d      ; 81 7E 0A 2D 03
        ja      L_1247                          ; 77 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
;   [unconditional branch target] L_123C
L_123C:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A 64 12 00 00 [FIXUP]
        jmp     L_1271                          ; EB 2A
;   [conditional branch target (if/else)] L_1247
L_1247:
        cmp     word ptr [bp + 0xa], 0x33e      ; 81 7E 0A 3E 03
        jb      L_1271                          ; 72 23
        cmp     word ptr [bp + 0xa], 0x33f      ; 81 7E 0A 3F 03
        ja      L_1271                          ; 77 1C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x33e                       ; B8 3E 03
        push    ax                              ; 50
        mov     ax, 0x33f                       ; B8 3F 03
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1305                          ; E8 94 00
;   [branch target] L_1271
L_1271:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1274
L_1274:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)
;   Locals:
;     [bp-0x54]   LRESULT   (1 use)

; Description (heuristic):
;   Mixed routine using: LOADSTRING, MESSAGEBOX, SENDDLGITEMMESSAGE.

;-------------------------------------------------------------------------
; sub_127F   offset=0x127F  size=57 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_127F
L_127F:
        ;   = cProc <86> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A F8 09 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        jmp     L_12F4                          ; EB 4E
;   [loop start] L_12A6
L_12A6:
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x56], al        ; 88 46 AA
        cmp     al, 0x30                        ; 3C 30
        jl      L_12B3                          ; 7C 04
        cmp     al, 0x39                        ; 3C 39
        jle     L_12F1                          ; 7E 3E
;   [conditional branch target (if/else)] L_12B3
L_12B3:
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 2D 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_12D7                          ; 75 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_43                   ; 9A 47 0E 00 00 [FIXUP]
        jmp     L_12ED                          ; EB 16
;   [conditional branch target (if/else)] L_12D7
L_12D7:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 61 0E 00 00 [FIXUP]
;   [unconditional branch target] L_12ED
L_12ED:
        sub     ax, ax                          ; 2B C0
        jmp     L_12FF                          ; EB 0E
;   [conditional branch target (if/else)] L_12F1
L_12F1:
        inc     word ptr [bp - 0x54]            ; FF 46 AC
;   [unconditional branch target] L_12F4
L_12F4:
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_12A6                          ; 75 AA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_12FF
L_12FF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1305   offset=0x1305  size=48 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETPROFILESTRING
;-------------------------------------------------------------------------
;   [sub-routine] L_1305
L_1305:
        ;   = cProc <88> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x58                        ; 83 EC 58
        mov     ax, 0x312                       ; B8 12 03
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0x33e        ; 81 7E 04 3E 03
        jne     L_131C                          ; 75 05
        mov     ax, 0x306                       ; B8 06 03
        jmp     L_131F                          ; EB 03
;   [conditional branch target (if/else)] L_131C
L_131C:
        mov     ax, 0x30c                       ; B8 0C 03
;   [unconditional branch target] L_131F
L_131F:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x305                       ; B8 05 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 88 0C 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    far _entry_22                   ; 9A 63 13 00 00 [FIXUP]
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x318                       ; B8 18 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A B0 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_135F                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_135F
L_135F:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A AE 0C 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_137A                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        jmp     L_1384                          ; EB 0A
; Description (heuristic):
;   Mixed routine using: SETDLGITEMTEXT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_137A   offset=0x137A  size=36 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_137A
L_137A:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        mov     ax, 0x31a                       ; B8 1A 03
;   [unconditional branch target] L_1384
L_1384:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x31f                       ; B8 1F 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A F5 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_13AB                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_13AB
L_13AB:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 0D 14 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        cmp     ax, 0x65                        ; 3D 65 00
        je      L_1439                          ; 74 7B
        cmp     ax, 0x6e                        ; 3D 6E 00
        je      L_13C8                          ; 74 05
        cmp     ax, 0x6f                        ; 3D 6F 00
        je      L_13D5                          ; 74 0D
;   [conditional branch target (if/else)] L_13C8
L_13C8:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        jmp     L_13E3                          ; EB 0E
; Description (heuristic):
;   Mixed routine using: CHECKRADIOBUTTON.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_13D5   offset=0x13D5  size=39 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CHECKRADIOBUTTON
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_13D5
L_13D5:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        mov     ax, 0x322                       ; B8 22 03
;   [loop start (also forward branch)] L_13E3
L_13E3:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 56 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 66 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1409                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_1409
L_1409:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 7E 14 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        sub     ax, 0x34                        ; 2D 34 00
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        or      ax, ax                          ; 0B C0
        jl      L_1449                          ; 7C 28
        cmp     ax, 4                           ; 3D 04 00
        jg      L_1449                          ; 7F 23
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        add     ax, 0x324                       ; 05 24 03
        jmp     L_1454                          ; EB 1B
; Description (heuristic):
;   Internal helper (7 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1439   offset=0x1439  size=7 instr  segment=seg6.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1439
L_1439:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x321                       ; B8 21 03
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        mov     ax, 0x321                       ; B8 21 03
        jmp     L_13E3                          ; EB 9A
; Description (heuristic):
;   Mixed routine using: LSTRCMP, CHECKRADIOBUTTON.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1449   offset=0x1449  size=88 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   CHECKRADIOBUTTON
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1449
L_1449:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        mov     ax, 0x328                       ; B8 28 03
        push    ax                              ; 50
;   [unconditional branch target] L_1454
L_1454:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A A5 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x323                       ; B8 23 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A B5 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_147A                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_147A
L_147A:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A CD 14 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x325                       ; B8 25 03
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A F4 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_14E9                          ; 75 54
;   [loop start] L_1495
L_1495:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        mov     ax, 0x329                       ; B8 29 03
;   [loop start] L_14A3
L_14A3:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 3D 15 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
        call    far _entry_44                   ; 9A 74 10 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_14C9                          ; 74 06
        inc     word ptr [bp - 0x54]            ; FF 46 AC
        mov     byte ptr [bx], 0                ; C6 07 00
;   [conditional branch target (if/else)] L_14C9
L_14C9:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_22                   ; 9A 56 10 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x56]        ; 8B 5E AA
        cmp     byte ptr [bx], 0x70             ; 80 3F 70
        jne     L_1530                          ; 75 57
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
        mov     ax, 0x32c                       ; B8 2C 03
        jmp     L_153B                          ; EB 52
;   [conditional branch target (if/else)] L_14E9
L_14E9:
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x327                       ; B8 27 03
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 17 15 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_150C                          ; 75 10
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        mov     ax, 0x32a                       ; B8 2A 03
        jmp     L_14A3                          ; EB 97
;   [conditional branch target (if/else)] L_150C
L_150C:
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x32b                       ; B8 2B 03
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A C6 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1522                          ; 74 03
        jmp     L_1495                          ; E9 73 FF
; Description (heuristic):
;   Internal helper (6 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1522   offset=0x1522  size=6 instr  segment=seg6.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1522
L_1522:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x329                       ; B8 29 03
        push    ax                              ; 50
        mov     ax, 0x32b                       ; B8 2B 03
        push    ax                              ; 50
        jmp     L_14A3                          ; E9 73 FF
; Description (heuristic):
;   Thin wrapper around CHECKRADIOBUTTON.

;-------------------------------------------------------------------------
; sub_1530   offset=0x1530  size=10 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CHECKRADIOBUTTON
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1530
L_1530:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32c                       ; B8 2C 03
        push    ax                              ; 50
        mov     ax, 0x32d                       ; B8 2D 03
        push    ax                              ; 50
;   [unconditional branch target] L_153B
L_153B:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 41 12 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1547   offset=0x1547  size=177 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   WRITEPROFILESTRING
;   ISDLGBUTTONCHECKED
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_1547
L_1547:
        ;   = cProc <42> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2a                        ; 83 EC 2A
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x334                       ; B8 34 03
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 9A 12 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], 0x321     ; C7 46 EC 21 03
;   [loop start] L_156B
L_156B:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 67 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_157D                          ; 75 03
        jmp     L_1647                          ; E9 CA 00
;   [conditional branch target (if/else)] L_157D
L_157D:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, 0x321                       ; 2D 21 03
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_158B                          ; 76 03
        jmp     L_1638                          ; E9 AD 00
;   [conditional branch target (if/else)] L_158B
L_158B:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x161e]       ; 2E FF A7 1E 16
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32f                       ; B8 2F 03
;   [loop start] L_159B
L_159B:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 89 16 00 00 [FIXUP]
        jmp     L_1638                          ; E9 93 00
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x332                       ; B8 32 03
        jmp     L_159B                          ; EB EC
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x335                       ; B8 35 03
        jmp     L_159B                          ; EB E2
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x338                       ; B8 38 03
        jmp     L_159B                          ; EB D8
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x33b                       ; B8 3B 03
        jmp     L_159B                          ; EB CE
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x33e                       ; B8 3E 03
        jmp     L_159B                          ; EB C4
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x341                       ; B8 41 03
        jmp     L_159B                          ; EB BA
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x344                       ; B8 44 03
        jmp     L_159B                          ; EB B0
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x347                       ; B8 47 03
        jmp     L_159B                          ; EB A6
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x34a                       ; B8 4A 03
        jmp     L_159B                          ; EB 9C
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x34f                       ; B8 4F 03
        jmp     L_159B                          ; EB 92
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x352                       ; B8 52 03
        jmp     L_159B                          ; EB 88
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x355                       ; B8 55 03
        jmp     L_159B                          ; E9 7D FF
        xchg    bx, ax                          ; 93
        adc     ax, 0x15a5                      ; 15 A5 15
        scasw   ax, word ptr es:[di]            ; AF
        adc     ax, 0x15b9                      ; 15 B9 15
        ret                                     ; C3
        adc     ax, 0x15cd                      ; 15 CD 15
        xlatb                                   ; D7
        adc     ax, 0x15e1                      ; 15 E1 15
        jmp     L_1645                          ; EB 15
        cmc                                     ; F5
        adc     ax, 0x15ff                      ; 15 FF 15
        or      word ptr [0x1613], dx           ; 09 16 13 16
;   [unconditional branch target] L_1638
L_1638:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 9A 0F 00 00 [FIXUP]
;   [unconditional branch target] L_1647
L_1647:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        cmp     word ptr [bp - 0x14], 0x32d     ; 81 7E EC 2D 03
        jg      L_1654                          ; 7F 03
        jmp     L_156B                          ; E9 17 FF
;   [conditional branch target (if/else)] L_1654
L_1654:
        mov     word ptr [bp - 0x14], 0x33e     ; C7 46 EC 3E 03
;   [loop start] L_1659
L_1659:
        cmp     word ptr [bp - 0x14], 0x33f     ; 81 7E EC 3F 03
        jg      L_168D                          ; 7F 2D
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_16B9                          ; 74 4A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     ax, 0x33e                       ; 3D 3E 03
        je      L_167E                          ; 74 07
        cmp     ax, 0x33f                       ; 3D 3F 03
        je      L_16AF                          ; 74 33
        jmp     L_168D                          ; EB 0F
;   [conditional branch target (if/else)] L_167E
L_167E:
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x356                       ; B8 56 03
;   [loop start] L_1686
L_1686:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 4C 10 00 00 [FIXUP]
;   [branch target] L_168D
L_168D:
        mov     ax, 0x362                       ; B8 62 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A CA 10 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_16BE                          ; 75 19
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A D9 10 00 00 [FIXUP]
        jmp     L_16D3                          ; EB 24
;   [conditional branch target (if/else)] L_16AF
L_16AF:
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x35c                       ; B8 5C 03
        jmp     L_1686                          ; EB CD
;   [conditional branch target (if/else)] L_16B9
L_16B9:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_1659                          ; EB 9B
;   [conditional branch target (if/else)] L_16BE
L_16BE:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x368                       ; B8 68 03
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A F0 10 00 00 [FIXUP]
;   [unconditional branch target] L_16D3
L_16D3:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

CONTROL_TEXT ENDS

        END
