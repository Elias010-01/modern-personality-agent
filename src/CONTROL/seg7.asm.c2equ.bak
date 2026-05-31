; ======================================================================
; CONTROL / seg7.asm   (segment 7 of CONTROL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        16
; Total instructions:                 2080
; 
; Classification (pass8):
;   C-origin (high+medium):             16
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     69 (45 unique)
;   Top:
;        4  GETDC
;        4  RELEASEDC
;        3  LSTRLEN
;        3  CREATESOLIDBRUSH
;        3  DELETEOBJECT
;        3  FILLRECT
;        2  LOADSTRING
;        2  SENDDLGITEMMESSAGE
; ======================================================================
; AUTO-GENERATED from original CONTROL segment 7
; segment_size=5842 bytes, flags=0xf130
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0018                          ; 75 03
        jmp     L_009E                          ; E9 86 00
;   [conditional branch target (if/else)] L_0018
L_0018:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0034                          ; 74 17
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_005D                          ; 74 3B
        cmp     ax, 0x114                       ; 3D 14 01
        je      L_006E                          ; 74 47
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_007F                          ; 74 53
        cmp     ax, 0x204                       ; 3D 04 02
        je      L_007F                          ; 74 4E
        jmp     L_00C6                          ; E9 92 00
;   [conditional branch target (if/else)] L_0034
L_0034:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_00D3                          ; E8 99 00
        or      ax, ax                          ; 0B C0
        jne     L_004F                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_004A
L_004A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_00C8                          ; EB 79
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: BEGINPAINT, ENDPAINT, MESSAGEBEEP (+2 more).

;-------------------------------------------------------------------------
; sub_004F   offset=0x004F  size=51 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   MESSAGEBEEP
;   PTINRECT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0720, L_09EC, L_0C1D
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_004F
L_004F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_004A                          ; EB ED
;   [conditional branch target (if/else)] L_005D
L_005D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0720                          ; E8 B4 06
        jmp     L_004A                          ; EB DC
;   [conditional branch target (if/else)] L_006E
L_006E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_09EC                          ; E8 6F 09
        jmp     L_004A                          ; EB CB
;   [conditional branch target (if/else)] L_007F
L_007F:
        mov     ax, 0xc80                       ; B8 80 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_004A                          ; 74 B7
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_004A                          ; EB AC
;   [unconditional branch target] L_009E
L_009E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_0C1D                          ; E8 66 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_004A                          ; EB 84
;   [unconditional branch target] L_00C6
L_00C6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00C8
L_00C8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETSTOCKOBJECT, GETSYSCOLOR, LOADSTRING (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_00D3   offset=0x00D3  size=65 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETSYSCOLOR
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_00D3
L_00D3:
        ;   = cProc <158> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x9e                        ; 81 EC 9E 00
        push    di                              ; 57
        push    si                              ; 56
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x94a], ax            ; A3 4A 09
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_00F2
L_00F2:
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x16a]           ; FF B7 6A 01
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x77a], ax       ; 89 84 7A 07
        mov     word ptr [si + 0x77c], dx       ; 89 94 7C 07
        mov     word ptr [si + 0xa2a], ax       ; 89 84 2A 0A
        mov     word ptr [si + 0xa2c], dx       ; 89 94 2C 0A
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_013B                          ; 75 1E
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 0x70                        ; 05 70 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A B8 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0140                          ; 75 05
;   [conditional branch target (if/else)] L_013B
L_013B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0142                          ; EB 02
;   [conditional branch target (if/else)] L_0140
L_0140:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0142
L_0142:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_016C                          ; 75 23
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 05 02 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0171                          ; 75 0A
        cmp     ax, 0xfffe                      ; 3D FE FF
        jne     L_0171                          ; 75 05
;   [conditional branch target (if/else)] L_016C
L_016C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0173                          ; EB 02
;   [conditional branch target (if/else)] L_0171
L_0171:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0173
L_0173:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0xa        ; 83 7E F4 0A
        jge     L_0182                          ; 7D 03
        jmp     L_00F2                          ; E9 70 FF
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (4 uses)

; Description (heuristic):
;   Mixed routine using: GETTEXTEXTENT, LSTRLEN, GETCLIENTRECT (+10 more).

;-------------------------------------------------------------------------
; sub_0182   offset=0x0182  size=483 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETTEXTEXTENT
;   LSTRLEN(LPSTR lpsz) -> INT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETSYSTEMMETRICS
;   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SCREENTOCLIENT
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETSCROLLRANGE
;
; Near calls (internal): L_06C7, L_1649
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0182
L_0182:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x2bc                       ; B8 BC 02
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 99 01 00 00 [FIXUP]
        mov     word ptr [0xa1e], ax            ; A3 1E 0A
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x2d0                       ; B8 D0 02
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A A8 01 00 00 [FIXUP]
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x2c6                       ; B8 C6 02
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A A2 03 00 00 [FIXUP]
        mov     word ptr [0xd34], ax            ; A3 34 0D
        push    word ptr [0xa1e]                ; FF 36 1E 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A D9 01 00 00 [FIXUP]
        push    word ptr [0x9fc]                ; FF 36 FC 09
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A F0 01 00 00 [FIXUP]
        push    word ptr [0xd34]                ; FF 36 34 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x407                       ; B8 07 04
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
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xb6e], 0             ; C7 06 6E 0B 00 00
        call    L_06C7                          ; E8 B5 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 27 02 00 00 [FIXUP]
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0xa00], ax            ; A3 00 0A
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 37 02 00 00 [FIXUP]
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0x76e], ax            ; A3 6E 07
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 43 02 00 00 [FIXUP]
        mov     word ptr [0x734], ax            ; A3 34 07
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 4F 02 00 00 [FIXUP]
        mov     word ptr [0x8dc], ax            ; A3 DC 08
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 5B 02 00 00 [FIXUP]
        mov     word ptr [0xd88], ax            ; A3 88 0D
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xd92], ax            ; A3 92 0D
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x17e                       ; B8 7E 01
        push    ds                              ; 1E
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc46], ax            ; A3 46 0C
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa1e]                ; FF 36 1E 0A
        mov     ax, 0xaf6                       ; B8 F6 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1649                          ; E8 C7 13
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x9fc]                ; FF 36 FC 09
        mov     ax, 0x6c4                       ; B8 C4 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1649                          ; E8 B8 13
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xd34]                ; FF 36 34 0D
        mov     ax, 0x71c                       ; B8 1C 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1649                          ; E8 A9 13
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_02C0                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xc54                       ; B8 54 0C
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A E0 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02C5                          ; 75 05
;   [conditional branch target (if/else)] L_02C0
L_02C0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02C7                          ; EB 02
;   [conditional branch target (if/else)] L_02C5
L_02C5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02C7
L_02C7:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_02E8                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x7b                        ; B8 7B 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x9d2                       ; B8 D2 09
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 08 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02ED                          ; 75 05
;   [conditional branch target (if/else)] L_02E8
L_02E8:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02EF                          ; EB 02
;   [conditional branch target (if/else)] L_02ED
L_02ED:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02EF
L_02EF:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0310                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x7c                        ; B8 7C 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x8f4                       ; B8 F4 08
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 30 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0315                          ; 75 05
;   [conditional branch target (if/else)] L_0310
L_0310:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0317                          ; EB 02
;   [conditional branch target (if/else)] L_0315
L_0315:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0317
L_0317:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0338                          ; 75 1A
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x7d                        ; B8 7D 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x91d                       ; B8 1D 09
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_033D                          ; 75 05
;   [conditional branch target (if/else)] L_0338
L_0338:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_033F                          ; EB 02
;   [conditional branch target (if/else)] L_033D
L_033D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_033F
L_033F:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_034B                          ; 74 05
        sub     ax, ax                          ; 2B C0
        jmp     L_06BF                          ; E9 74 03
;   [conditional branch target (if/else)] L_034B
L_034B:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        push    ax                              ; 50
        mov     ax, 0xc54                       ; B8 54 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 7D 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A 83 03 00 00 [FIXUP]
        mov     word ptr [0x9ce], ax            ; A3 CE 09
        mov     word ptr [0x9d0], dx            ; 89 16 D0 09
        push    word ptr [bp - 0x9c]            ; FF B6 64 FF
        mov     ax, 0x9d2                       ; B8 D2 09
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x6d0], ax            ; A3 D0 06
        mov     word ptr [0x6d2], dx            ; 89 16 D2 06
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        push    word ptr [bp - 0x9c]            ; FF B6 64 FF
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A CA 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x98]        ; 8B 86 68 FF
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        mov     ax, 0x2c1                       ; B8 C1 02
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 26 04 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A 32 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 0C 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 40 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x94]        ; 8B 86 6C FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 8A 01 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A AE 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A BC 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x98]        ; 8B 86 68 FF
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xc80], ax            ; A3 80 0C
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0xc82], ax            ; A3 82 0C
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     word ptr [0xc84], ax            ; A3 84 0C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [0xc86], ax            ; A3 86 0C
        mov     ax, word ptr [0xc82]            ; A1 82 0C
        mov     word ptr [0xc4a], ax            ; A3 4A 0C
        mov     word ptr [0xb68], ax            ; A3 68 0B
        mov     word ptr [0xa16], ax            ; A3 16 0A
        mov     word ptr [0xa0e], ax            ; A3 0E 0A
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [0xc4e], ax            ; A3 4E 0C
        mov     word ptr [0xb6c], ax            ; A3 6C 0B
        mov     word ptr [0xa1a], ax            ; A3 1A 0A
        mov     word ptr [0xa12], ax            ; A3 12 0A
        mov     ax, word ptr [0xc80]            ; A1 80 0C
        mov     word ptr [0xa0c], ax            ; A3 0C 0A
        mov     ax, word ptr [0xc84]            ; A1 84 0C
        mov     word ptr [0xa18], ax            ; A3 18 0A
        mov     si, word ptr [0x80c]            ; 8B 36 0C 08
        shl     si, 1                           ; D1 E6
        mov     di, ax                          ; 8B F8
        sub     di, word ptr [0xc80]            ; 2B 3E 80 0C
        sar     di, 1                           ; D1 FF
        mov     ax, word ptr [0x9ce]            ; A1 CE 09
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [0xa0c]            ; 2B 06 0C 0A
        neg     ax                              ; F7 D8
        add     ax, di                          ; 03 C7
        sub     ax, si                          ; 2B C6
        mov     word ptr [0xb66], ax            ; A3 66 0B
        mov     ax, word ptr [0x80c]            ; A1 0C 08
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     ax, word ptr [0x9ce]            ; A1 CE 09
        add     ax, word ptr [bp - 0x9e]        ; 03 86 62 FF
        add     ax, word ptr [0xb66]            ; 03 06 66 0B
        mov     word ptr [0xb6a], ax            ; A3 6A 0B
        mov     ax, word ptr [0x6d0]            ; A1 D0 06
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [0xa0c]            ; 2B 06 0C 0A
        neg     ax                              ; F7 D8
        add     ax, di                          ; 03 C7
        sub     ax, si                          ; 2B C6
        mov     word ptr [0xc48], ax            ; A3 48 0C
        mov     ax, word ptr [0x6d0]            ; A1 D0 06
        add     ax, word ptr [bp - 0x9e]        ; 03 86 62 FF
        add     ax, word ptr [0xc48]            ; 03 06 48 0C
        mov     word ptr [0xc4c], ax            ; A3 4C 0C
        mov     si, word ptr [0x80c]            ; 8B 36 0C 08
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [0xb66]            ; A1 66 0B
        add     ax, si                          ; 03 C6
        mov     word ptr [0xad6], ax            ; A3 D6 0A
        mov     ax, word ptr [0xb6c]            ; A1 6C 0B
        sub     ax, word ptr [0xb68]            ; 2B 06 68 0B
        sub     ax, word ptr [0xa6a]            ; 2B 06 6A 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xb68]            ; 03 06 68 0B
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0xad8], ax            ; A3 D8 0A
        mov     ax, word ptr [0xc48]            ; A1 48 0C
        add     ax, si                          ; 03 C6
        mov     word ptr [0xaee], ax            ; A3 EE 0A
        mov     ax, word ptr [0xc4e]            ; A1 4E 0C
        sub     ax, word ptr [0xc4a]            ; 2B 06 4A 0C
        sub     ax, word ptr [0xa6a]            ; 2B 06 6A 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xc4a]            ; 03 06 4A 0C
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0xaf0], ax            ; A3 F0 0A
        mov     word ptr [0xb10], 1             ; C7 06 10 0B 01 00
        mov     ax, word ptr [0xb6a]            ; A1 6A 0B
        sub     ax, word ptr [0x80c]            ; 2B 06 0C 08
        mov     word ptr [0xa14], ax            ; A3 14 0A
        mov     ax, word ptr [0xb66]            ; A1 66 0B
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     ax, word ptr [0xa0c]            ; A1 0C 0A
        mov     word ptr [0x736], ax            ; A3 36 07
        mov     ax, word ptr [0xa18]            ; A1 18 0A
        mov     word ptr [0x73a], ax            ; A3 3A 07
        mov     ax, word ptr [0xa12]            ; A1 12 0A
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0x738], ax            ; A3 38 07
        mov     ax, word ptr [0x8a4]            ; A1 A4 08
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x738]            ; 03 06 38 07
        add     ax, word ptr [0x76e]            ; 03 06 6E 07
        mov     word ptr [0x73c], ax            ; A3 3C 07
        mov     si, word ptr [0x80c]            ; 8B 36 0C 08
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [0x736]            ; A1 36 07
        add     ax, si                          ; 03 C6
        mov     word ptr [0xdaa], ax            ; A3 AA 0D
        mov     ax, word ptr [0x73c]            ; A1 3C 07
        sub     ax, word ptr [0x738]            ; 2B 06 38 07
        sub     ax, word ptr [0xa6a]            ; 2B 06 6A 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0x738]            ; 03 06 38 07
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0xdac], ax            ; A3 AC 0D
        mov     ax, word ptr [0xa18]            ; A1 18 0A
        sub     ax, word ptr [0x732]            ; 2B 06 32 07
        mov     word ptr [0x80e], ax            ; A3 0E 08
        mov     ax, word ptr [0xa18]            ; A1 18 0A
        mov     word ptr [0x812], ax            ; A3 12 08
        mov     ax, word ptr [0x73c]            ; A1 3C 07
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0x810], ax            ; A3 10 08
        add     ax, word ptr [0x734]            ; 03 06 34 07
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0x814], ax            ; A3 14 08
        mov     ax, word ptr [0xa0c]            ; A1 0C 0A
        mov     word ptr [0x6d6], ax            ; A3 D6 06
        mov     ax, word ptr [0xa18]            ; A1 18 0A
        dec     ax                              ; 48
        mov     word ptr [0x6da], ax            ; A3 DA 06
        mov     ax, word ptr [0xc86]            ; A1 86 0C
        mov     word ptr [0x6dc], ax            ; A3 DC 06
        sub     ax, word ptr [0xd92]            ; 2B 06 92 0D
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [0x6d8], ax            ; A3 D8 06
        mov     ax, word ptr [0x6d6]            ; A1 D6 06
        add     ax, si                          ; 03 C6
        mov     word ptr [0xd8a], ax            ; A3 8A 0D
        add     ax, word ptr [0xd88]            ; 03 06 88 0D
        mov     word ptr [0xd8e], ax            ; A3 8E 0D
        mov     ax, word ptr [0x6dc]            ; A1 DC 06
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [0xd90], ax            ; A3 90 0D
        sub     ax, word ptr [0xd92]            ; 2B 06 92 0D
        mov     word ptr [0xd8c], ax            ; A3 8C 0D
        mov     ax, word ptr [0x80e]            ; A1 0E 08
        mov     word ptr [0xa52], ax            ; A3 52 0A
        mov     ax, word ptr [0x812]            ; A1 12 08
        mov     word ptr [0xa56], ax            ; A3 56 0A
        mov     ax, word ptr [0x6d8]            ; A1 D8 06
        mov     word ptr [0xa58], ax            ; A3 58 0A
        sub     ax, word ptr [0x734]            ; 2B 06 34 07
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0xa54], ax            ; A3 54 0A
        mov     ax, word ptr [0xa0c]            ; A1 0C 0A
        mov     word ptr [0xb06], ax            ; A3 06 0B
        mov     ax, word ptr [0x80e]            ; A1 0E 08
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [0xb0a], ax            ; A3 0A 0B
        mov     ax, word ptr [0x810]            ; A1 10 08
        mov     word ptr [0xb08], ax            ; A3 08 0B
        mov     ax, word ptr [0xa58]            ; A1 58 0A
        mov     word ptr [0xb0c], ax            ; A3 0C 0B
        mov     ax, word ptr [0x80e]            ; A1 0E 08
        mov     word ptr [0xc1e], ax            ; A3 1E 0C
        mov     word ptr [0x770], ax            ; A3 70 07
        mov     word ptr [0x8d4], ax            ; A3 D4 08
        mov     ax, word ptr [0x812]            ; A1 12 08
        mov     word ptr [0xc22], ax            ; A3 22 0C
        mov     word ptr [0x774], ax            ; A3 74 07
        mov     word ptr [0x8d8], ax            ; A3 D8 08
        mov     ax, word ptr [0x814]            ; A1 14 08
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0x8d6], ax            ; A3 D6 08
        mov     ax, word ptr [0xa54]            ; A1 54 0A
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0x776], ax            ; A3 76 07
        mov     ax, word ptr [0x8dc]            ; A1 DC 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x776]            ; A1 76 07
        sub     ax, word ptr [0x8d6]            ; 2B 06 D6 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x8d6]            ; 03 06 D6 08
        mov     word ptr [0xc20], ax            ; A3 20 0C
        add     ax, word ptr [0x8dc]            ; 03 06 DC 08
        mov     word ptr [0xc24], ax            ; A3 24 0C
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr [0x8da], ax            ; A3 DA 08
        mov     ax, word ptr [0xc24]            ; A1 24 0C
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        mov     word ptr [0x772], ax            ; A3 72 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_06BF
L_06BF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: SETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_06C7   offset=0x06C7  size=32 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   SETSCROLLPOS
;
; Near calls (internal): L_1384
;-------------------------------------------------------------------------
;   [sub-routine] L_06C7
L_06C7:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [0xb6e]            ; 8B 1E 6E 0B
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xa2c]           ; FF B7 2C 0A
        push    word ptr [bx + 0xa2a]           ; FF B7 2A 0A
        call    L_1384                          ; E8 A7 0C
        push    word ptr [0xa1e]                ; FF 36 1E 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xc26]                ; FF 36 26 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 03 07 00 00 [FIXUP]
        push    word ptr [0x9fc]                ; FF 36 FC 09
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xc3a]                ; FF 36 3A 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 18 07 00 00 [FIXUP]
        push    word ptr [0xd34]                ; FF 36 34 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xcde]                ; FF 36 DE 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: ENDDIALOG, GETDC, LOADCURSOR (+4 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0720   offset=0x0720  size=96 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCURSOR
;   SETSYSCOLORS
;   SHOWCURSOR
;
; Near calls (internal): L_06C7, L_08E9, L_0E9C
;-------------------------------------------------------------------------
;   [sub-routine] L_0720
L_0720:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_074A                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0737                          ; 75 03
        jmp     L_07CF                          ; E9 98 00
;   [conditional branch target (if/else)] L_0737
L_0737:
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_073F                          ; 75 03
        jmp     L_0826                          ; E9 E7 00
;   [conditional branch target (if/else)] L_073F
L_073F:
        cmp     ax, 0x15                        ; 3D 15 00
        jne     L_0747                          ; 75 03
        jmp     L_07DD                          ; E9 96 00
;   [conditional branch target (if/else)] L_0747
L_0747:
        jmp     L_08E2                          ; E9 98 01
;   [conditional branch target (if/else)] L_074A
L_074A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A D6 07 00 00 [FIXUP]
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0768                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A A3 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0768
L_0768:
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
        call    far USER.LOADCURSOR             ; 9A B1 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A B7 07 00 00 [FIXUP]
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0x16a                       ; B8 6A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa2a                       ; B8 2A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETSYSCOLORS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_08E9                          ; E8 54 01
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_07A7                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07A7
L_07A7:
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
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_07C4                          ; 74 03
        jmp     L_08E2                          ; E9 1E 01
;   [conditional branch target (if/else)] L_07C4
L_07C4:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_08E2                          ; E9 13 01
;   [unconditional branch target] L_07CF
L_07CF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 46 00 00 00 [FIXUP]
        jmp     L_08E2                          ; E9 05 01
;   [unconditional branch target] L_07DD
L_07DD:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_07E2
L_07E2:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        mov     ax, word ptr [si + 0x77a]       ; 8B 84 7A 07
        mov     dx, word ptr [si + 0x77c]       ; 8B 94 7C 07
        mov     word ptr [si + 0xa2a], ax       ; 89 84 2A 0A
        mov     word ptr [si + 0xa2c], dx       ; 89 94 2C 0A
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0xa          ; 83 7E FC 0A
        jl      L_07E2                          ; 7C E0
        call    L_06C7                          ; E8 C2 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 4F 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
;   [loop start] L_0814
L_0814:
        push    ax                              ; 50
        call    L_0E9C                          ; E8 84 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 96 03 00 00 [FIXUP]
        jmp     L_08E2                          ; E9 BC 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (2 uses)

; Description (heuristic):
;   Mixed routine using: GETDC, RELEASEDC, SENDMESSAGE.

;-------------------------------------------------------------------------
; sub_0826   offset=0x0826  size=68 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_06C7, L_0E9C
;-------------------------------------------------------------------------
;   [unconditional branch target] L_0826
L_0826:
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
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xb6e], ax            ; A3 6E 0B
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0859                          ; 75 1A
        mov     word ptr [0xb6e], 9             ; C7 06 6E 0B 09 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A D4 09 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0859
L_0859:
        call    L_06C7                          ; E8 6B FE
        cmp     word ptr [0xb6e], 3             ; 83 3E 6E 0B 03
        jne     L_08A5                          ; 75 42
        mov     word ptr [0xb10], 1             ; C7 06 10 0B 01 00
        mov     ax, word ptr [0xb6a]            ; A1 6A 0B
        sub     ax, word ptr [0x80c]            ; 2B 06 0C 08
        mov     word ptr [0xa14], ax            ; A3 14 0A
        mov     ax, word ptr [0xb66]            ; A1 66 0B
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [0xa10], ax            ; A3 10 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A CA 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 0C 06
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 02 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 1F 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_08A5
L_08A5:
        cmp     word ptr [0xb6e], 4             ; 83 3E 6E 0B 04
        jne     L_08E2                          ; 75 36
        mov     word ptr [0xb10], 2             ; C7 06 10 0B 02 00
        mov     ax, word ptr [0xc4c]            ; A1 4C 0C
        sub     ax, word ptr [0x80c]            ; 2B 06 0C 08
        mov     word ptr [0xa14], ax            ; A3 14 0A
        mov     ax, word ptr [0xc48]            ; A1 48 0C
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [0xa10], ax            ; A3 10 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 09 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 C3 05
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_0814                          ; E9 32 FF
;   [error/early exit] L_08E2
L_08E2:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_08E9   offset=0x08E9  size=108 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   WRITEPROFILESTRING
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_08E9
L_08E9:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_08F9
L_08F9:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0xa2a]       ; 8A 87 2A 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 41 09 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1ee                       ; B8 EE 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 50 09 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0xa2b]       ; 8A 87 2B 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    far _entry_36                   ; 9A 76 09 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 5F 09 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1f0                       ; B8 F0 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A 85 09 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0xa2c]       ; 8A 87 2C 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_09B2                          ; 74 23
        mov     ax, 0x1f2                       ; B8 F2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x200]       ; 8B 87 00 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_09B2                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_09B4                          ; EB 02
;   [conditional branch target (if/else)] L_09B2
L_09B2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_09B4
L_09B4:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 0xa        ; 83 7E F6 0A
        jge     L_09C3                          ; 7D 03
        jmp     L_08F9                          ; E9 36 FF
;   [conditional branch target (if/else)] L_09C3
L_09C3:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x1f9                       ; B8 F9 01
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 33 08 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_09E6                          ; 75 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_25                   ; 9A C8 07 00 00 [FIXUP]
;   [error/early exit] L_09E6
L_09E6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: GETNEARESTCOLOR, GETDC, GETKEYSTATE (+2 more).

;-------------------------------------------------------------------------
; sub_09EC   offset=0x09EC  size=186 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETNEARESTCOLOR
;   GETDC(HWND hWnd) -> HDC
;   GETKEYSTATE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETSCROLLPOS
;
; Near calls (internal): L_0E9C, L_1563
;-------------------------------------------------------------------------
;   [sub-routine] L_09EC
L_09EC:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_09FE                          ; 76 03
        jmp     L_0B61                          ; E9 63 01
;   [conditional branch target (if/else)] L_09FE
L_09FE:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xb4f]        ; 2E FF A7 4F 0B
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0A25                          ; 75 17
        dec     word ptr [0xc26]                ; FF 0E 26 0C
;   [loop start] L_0A12
L_0A12:
        cmp     word ptr [0xc26], 0             ; 83 3E 26 0C 00
        jl      L_0A1C                          ; 7C 03
        jmp     L_0B61                          ; E9 45 01
;   [loop start (also forward branch)] L_0A1C
L_0A1C:
        mov     word ptr [0xc26], 0             ; C7 06 26 0C 00 00
        jmp     L_0B61                          ; E9 3C 01
;   [conditional branch target (if/else)] L_0A25
L_0A25:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0A33                          ; 75 06
        dec     word ptr [0xc3a]                ; FF 0E 3A 0C
        jmp     L_0AAB                          ; EB 78
;   [conditional branch target (if/else)] L_0A33
L_0A33:
        dec     word ptr [0xcde]                ; FF 0E DE 0C
;   [loop start] L_0A37
L_0A37:
        cmp     word ptr [0xcde], 0             ; 83 3E DE 0C 00
        jl      L_0A41                          ; 7C 03
        jmp     L_0B61                          ; E9 20 01
;   [loop start (also forward branch)] L_0A41
L_0A41:
        mov     word ptr [0xcde], 0             ; C7 06 DE 0C 00 00
        jmp     L_0B61                          ; E9 17 01
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0A69                          ; 75 17
        inc     word ptr [0xc26]                ; FF 06 26 0C
;   [loop start] L_0A56
L_0A56:
        cmp     word ptr [0xc26], 0x2f          ; 83 3E 26 0C 2F
        jg      L_0A60                          ; 7F 03
        jmp     L_0B61                          ; E9 01 01
;   [loop start (also forward branch)] L_0A60
L_0A60:
        mov     word ptr [0xc26], 0x2f          ; C7 06 26 0C 2F 00
        jmp     L_0B61                          ; E9 F8 00
;   [conditional branch target (if/else)] L_0A69
L_0A69:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0A77                          ; 75 06
        inc     word ptr [0xc3a]                ; FF 06 3A 0C
        jmp     L_0ADB                          ; EB 64
;   [conditional branch target (if/else)] L_0A77
L_0A77:
        inc     word ptr [0xcde]                ; FF 06 DE 0C
;   [loop start] L_0A7B
L_0A7B:
        cmp     word ptr [0xcde], 0x30          ; 83 3E DE 0C 30
        jg      L_0A85                          ; 7F 03
        jmp     L_0B61                          ; E9 DC 00
;   [loop start (also forward branch)] L_0A85
L_0A85:
        mov     word ptr [0xcde], 0x30          ; C7 06 DE 0C 30 00
        jmp     L_0B61                          ; E9 D3 00
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0A9E                          ; 75 08
        sub     word ptr [0xc26], 0xc           ; 83 2E 26 0C 0C
        jmp     L_0A12                          ; E9 74 FF
;   [conditional branch target (if/else)] L_0A9E
L_0A9E:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0AB7                          ; 75 11
        sub     word ptr [0xc3a], 0xc           ; 83 2E 3A 0C 0C
;   [unconditional branch target] L_0AAB
L_0AAB:
        cmp     word ptr [0xc3a], 0             ; 83 3E 3A 0C 00
        jl      L_0AB5                          ; 7C 03
        jmp     L_0B61                          ; E9 AC 00
;   [conditional branch target (if/else)] L_0AB5
L_0AB5:
        jmp     L_0B29                          ; EB 72
;   [conditional branch target (if/else)] L_0AB7
L_0AB7:
        sub     word ptr [0xcde], 0xc           ; 83 2E DE 0C 0C
        jmp     L_0A37                          ; E9 78 FF
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0ACE                          ; 75 07
        add     word ptr [0xc26], 0xc           ; 83 06 26 0C 0C
        jmp     L_0A56                          ; EB 88
;   [conditional branch target (if/else)] L_0ACE
L_0ACE:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0AE4                          ; 75 0E
        add     word ptr [0xc3a], 0xc           ; 83 06 3A 0C 0C
;   [unconditional branch target] L_0ADB
L_0ADB:
        cmp     word ptr [0xc3a], 0x30          ; 83 3E 3A 0C 30
        jle     L_0B61                          ; 7E 7F
        jmp     L_0B47                          ; EB 63
;   [conditional branch target (if/else)] L_0AE4
L_0AE4:
        add     word ptr [0xcde], 0xc           ; 83 06 DE 0C 0C
        jmp     L_0A7B                          ; EB 90
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0AFB                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xc26], ax            ; A3 26 0C
        jmp     L_0B61                          ; EB 66
;   [conditional branch target (if/else)] L_0AFB
L_0AFB:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0B0B                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xc3a], ax            ; A3 3A 0C
        jmp     L_0B61                          ; EB 56
;   [conditional branch target (if/else)] L_0B0B
L_0B0B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xcde], ax            ; A3 DE 0C
        jmp     L_0B61                          ; EB 4E
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0B1E                          ; 75 03
        jmp     L_0A1C                          ; E9 FE FE
;   [conditional branch target (if/else)] L_0B1E
L_0B1E:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_0B29                          ; 74 03
        jmp     L_0A41                          ; E9 18 FF
;   [branch target] L_0B29
L_0B29:
        mov     word ptr [0xc3a], 0             ; C7 06 3A 0C 00 00
        jmp     L_0B61                          ; EB 30
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0B3C                          ; 75 03
        jmp     L_0A60                          ; E9 24 FF
;   [conditional branch target (if/else)] L_0B3C
L_0B3C:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_0B47                          ; 74 03
        jmp     L_0A85                          ; E9 3E FF
;   [branch target] L_0B47
L_0B47:
        mov     word ptr [0xc3a], 0x30          ; C7 06 3A 0C 30 00
        jmp     L_0B61                          ; EB 12
        push    es                              ; 06
        or      cl, byte ptr [bp + si + 0xa]    ; 0A 4A 0A
        mov     cs, word ptr [bp + si]          ; 8E 0A
        mov     di, 0xeb0a                      ; BF 0A EB
        or      ch, bl                          ; 0A EB
        or      dl, byte ptr [bp + di]          ; 0A 13
        or      si, word ptr [bx + di]          ; 0B 31
        or      dx, word ptr [0xff0c]           ; 0B 16 0C FF
        jbe     L_0B68                          ; 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
;   [conditional branch target (if/else)] L_0B68
L_0B68:
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0B75                          ; 75 05
        mov     ax, word ptr [0xc26]            ; A1 26 0C
        jmp     L_0B85                          ; EB 10
;   [conditional branch target (if/else)] L_0B75
L_0B75:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_0B82                          ; 75 05
        mov     ax, word ptr [0xc3a]            ; A1 3A 0C
        jmp     L_0B85                          ; EB 03
;   [conditional branch target (if/else)] L_0B82
L_0B82:
        mov     ax, word ptr [0xcde]            ; A1 DE 0C
;   [unconditional branch target] L_0B85
L_0B85:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A EE 06 00 00 [FIXUP]
        push    word ptr [0xc26]                ; FF 36 26 0C
        push    word ptr [0xc3a]                ; FF 36 3A 0C
        push    word ptr [0xcde]                ; FF 36 DE 0C
        call    L_1563                          ; E8 C5 09
        mov     bx, word ptr [0xb6e]            ; 8B 1E 6E 0B
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0xa2a], ax       ; 89 87 2A 0A
        mov     word ptr [bx + 0xa2c], dx       ; 89 97 2C 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 81 08 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xb6e], 0             ; 83 3E 6E 0B 00
        je      L_0BE3                          ; 74 23
        cmp     word ptr [0xb6e], 1             ; 83 3E 6E 0B 01
        je      L_0BE3                          ; 74 1C
        cmp     word ptr [0xb6e], 5             ; 83 3E 6E 0B 05
        je      L_0BE3                          ; 74 15
        cmp     word ptr [0xb6e], 8             ; 83 3E 6E 0B 08
        je      L_0BE3                          ; 74 0E
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        test    ax, 0x8000                      ; A9 00 80
        je      L_0C01                          ; 74 1E
;   [conditional branch target (if/else)] L_0BE3
L_0BE3:
        mov     si, word ptr [0xb6e]            ; 8B 36 6E 0B
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, 0xa2a                       ; 81 C6 2A 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        call    far GDI.GETNEARESTCOLOR         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
;   [conditional branch target (if/else)] L_0C01
L_0C01:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [0xb6e]                ; FF 36 6E 0B
        call    L_0E9C                          ; E8 91 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A1 08 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: CREATESOLIDBRUSH, DELETEOBJECT, FILLRECT.

;-------------------------------------------------------------------------
; sub_0C1D   offset=0x0C1D  size=234 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   FILLRECT
;
; Near calls (internal): L_0E9C, L_1563
;-------------------------------------------------------------------------
;   [sub-routine] L_0C1D
L_0C1D:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0xafa]            ; A1 FA 0A
        mov     cx, word ptr [0x80c]            ; 8B 0E 0C 08
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0xaf6]            ; 2B 06 F6 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xaf8]            ; A1 F8 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xafc]            ; A1 FC 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0C46
L_0C46:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, 0x30                        ; B9 30 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xaf6]            ; 03 06 F6 0A
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xaf6]            ; 03 06 F6 0A
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, cx                          ; 8B C1
        push    ax                              ; 50
        call    L_1563                          ; E8 E4 08
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A D0 0C 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.FILLRECT               ; 9A D9 0C 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A E1 0C 00 00 [FIXUP]
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x2f         ; 83 7E FE 2F
        jl      L_0C46                          ; 7C 9C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0xafa]            ; A1 FA 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_1563                          ; E8 96 08
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 4B 0D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.FILLRECT               ; 9A 5E 0D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 66 0D 00 00 [FIXUP]
        cmp     word ptr [0x9cc], 0             ; 83 3E CC 09 00
        je      L_0CFD                          ; 74 11
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xaf6                       ; B8 F6 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x9cc]                ; FF 36 CC 09
        call    far _entry_42                   ; 9A BF 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0CFD
L_0CFD:
        mov     ax, word ptr [0x6c6]            ; A1 C6 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x6ca]            ; A1 CA 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0D0E
L_0D0E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, 0x31                        ; B9 31 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x6c4]            ; 03 06 C4 06
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x6c4]            ; 03 06 C4 06
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_1563                          ; E8 1B 08
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 96 0D 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.FILLRECT               ; 9A 9F 0D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A A7 0D 00 00 [FIXUP]
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x30         ; 83 7E FE 30
        jl      L_0D0E                          ; 7C 9B
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x6c8]            ; A1 C8 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1563                          ; E8 D0 07
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 11 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.FILLRECT               ; 9A 24 0E 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 2C 0E 00 00 [FIXUP]
        cmp     word ptr [0x9cc], 0             ; 83 3E CC 09 00
        je      L_0DC3                          ; 74 11
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6c4                       ; B8 C4 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x9cc]                ; FF 36 CC 09
        call    far _entry_42                   ; 9A 88 0E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0DC3
L_0DC3:
        mov     ax, word ptr [0x71e]            ; A1 1E 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x722]            ; A1 22 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0DD4
L_0DD4:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        mov     cx, 0x31                        ; B9 31 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x71c]            ; 03 06 1C 07
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        imul    word ptr [bp - 4]               ; F7 6E FC
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x71c]            ; 03 06 1C 07
        add     ax, word ptr [0x80c]            ; 03 06 0C 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1563                          ; E8 55 07
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 5F 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.FILLRECT               ; 9A 68 0E 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 70 0E 00 00 [FIXUP]
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x30         ; 83 7E FE 30
        jl      L_0DD4                          ; 7C 9B
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x720]            ; A1 20 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_1563                          ; E8 07 07
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A B7 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.FILLRECT               ; 9A FF 0E 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x9cc], 0             ; 83 3E CC 09 00
        je      L_0E8C                          ; 74 11
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x71c                       ; B8 1C 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x9cc]                ; FF 36 CC 09
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E8C
L_0E8C:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_0E9C                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (1 use)
;   Locals:
;     [bp-0xa]   HBRUSH    (1 use)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0E9C   offset=0x0E9C  size=214 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   LINETO(HDC hDC, INT x, INT y) -> BOOL
;   MOVETO(HDC hDC, INT x, INT y) -> DWORD
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   DRAWICON
;   DRAWTEXT
;   FILLRECT
;-------------------------------------------------------------------------
;   [sub-routine] L_0E9C
L_0E9C:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa44]                ; FF 36 44 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa42]                ; FF 36 42 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A EC 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 0xffff                      ; 2D FF FF
        cmp     ax, 0xa                         ; 3D 0A 00
        jbe     L_0ECC                          ; 76 03
        jmp     L_1376                          ; E9 AA 04
;   [conditional branch target (if/else)] L_0ECC
L_0ECC:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1360]       ; 2E FF A7 60 13
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xc88]                ; FF 36 88 0C
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0xa50]                ; FF 36 50 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa4e]                ; FF 36 4E 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6d6                       ; B8 D6 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x6d6]                ; FF 36 D6 06
        ;   ^ arg x
        push    word ptr [0x6d8]                ; FF 36 D8 06
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x6d6]                ; FF 36 D6 06
        ;   ^ arg x
        push    word ptr [0x6dc]                ; FF 36 DC 06
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 2F 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x6da]                ; FF 36 DA 06
        ;   ^ arg x
        push    word ptr [0x6dc]                ; FF 36 DC 06
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 40 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x6da]                ; FF 36 DA 06
        ;   ^ arg x
        mov     ax, word ptr [0x6d8]            ; A1 D8 06
        dec     ax                              ; 48
        push    ax                              ; 50
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xd8a]                ; FF 36 8A 0D
        push    word ptr [0xd8c]                ; FF 36 8C 0D
        push    word ptr [0xc46]                ; FF 36 46 0C
        call    far USER.DRAWICON               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A A0 11 00 00 [FIXUP]
;   [loop start] L_0F63
L_0F63:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A C2 0F 00 00 [FIXUP]
        jmp     L_1376                          ; E9 08 04
        push    word ptr [0xa2c]                ; FF 36 2C 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa2a]                ; FF 36 2A 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 10 10 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb06                       ; B8 06 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A AA 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb06                       ; B8 06 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A BA 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xc1e                       ; B8 1E 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A 23 10 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xc1e                       ; B8 1E 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 33 10 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 3B 10 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xa30]                ; FF 36 30 0A
        ;   ^ arg clrText (high/segment)
        push    word ptr [0xa2e]                ; FF 36 2E 0A
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 00 10 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x91d                       ; B8 1D 09
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0xb06                       ; B8 06 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0FF6
L_0FF6:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg clrText (high/segment)
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 4B 10 00 00 [FIXUP]
        jmp     L_1376                          ; E9 6F 03
        push    word ptr [0xa48]                ; FF 36 48 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa46]                ; FF 36 46 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 8D 10 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x736                       ; B8 36 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A A0 10 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x736                       ; B8 36 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A B0 10 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 9D 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xa4c]                ; FF 36 4C 0A
        ;   ^ arg clrText (high/segment)
        push    word ptr [0xa4a]                ; FF 36 4A 0A
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A E3 10 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdaa]                ; FF 36 AA 0D
        push    word ptr [0xdac]                ; FF 36 AC 0D
        mov     ax, 0x8f4                       ; B8 F4 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 67 11 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 6D 11 00 00 [FIXUP]
        jmp     L_0FF6                          ; EB 82
        cmp     word ptr [bp + 4], 3            ; 83 7E 04 03
        jne     L_1084                          ; 75 0A
        push    word ptr [0xa38]                ; FF 36 38 0A
        push    word ptr [0xa36]                ; FF 36 36 0A
        jmp     L_108C                          ; EB 08
;   [conditional branch target (if/else)] L_1084
L_1084:
        push    word ptr [0xa3c]                ; FF 36 3C 0A
        push    word ptr [0xa3a]                ; FF 36 3A 0A
;   [unconditional branch target] L_108C
L_108C:
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A F6 10 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa0c                       ; B8 0C 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A C0 10 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa0c                       ; B8 0C 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A D0 10 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa14                       ; B8 14 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A 10 11 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa14                       ; B8 14 0A
;   [loop start] L_10CA
L_10CA:
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 20 11 00 00 [FIXUP]
        jmp     L_0F63                          ; E9 8C FE
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xa40]                ; FF 36 40 0A
        ;   ^ arg clrText (high/segment)
        push    word ptr [0xa3e]                ; FF 36 3E 0A
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 93 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0xa40]                ; FF 36 40 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa3e]                ; FF 36 3E 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 82 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0xb10], 1             ; 83 3E 10 0B 01
        jne     L_1134                          ; 75 30
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb66                       ; B8 66 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.FILLRECT               ; 9A 40 11 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb66                       ; B8 66 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 50 11 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xad6]                ; FF 36 D6 0A
        push    word ptr [0xad8]                ; FF 36 D8 0A
        mov     ax, 0xc54                       ; B8 54 0C
        jmp     L_1162                          ; EB 2E
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1134   offset=0x1134  size=171 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   FILLRECT
;
; Near calls (internal): L_0E9C
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1134
L_1134:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xc48                       ; B8 48 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.FILLRECT               ; 9A 95 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xc48                       ; B8 48 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A F9 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xaee]                ; FF 36 EE 0A
        push    word ptr [0xaf0]                ; FF 36 F0 0A
        mov     ax, 0x9d2                       ; B8 D2 09
;   [unconditional branch target] L_1162
L_1162:
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 60 03 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xa40]                ; FF 36 40 0A
        ;   ^ arg clrBk (high/segment)
        push    word ptr [0xa3e]                ; FF 36 3E 0A
        ;   ^ arg clrBk (low/offset)
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xa44]                ; FF 36 44 0A
        ;   ^ arg clrText (high/segment)
        push    word ptr [0xa42]                ; FF 36 42 0A
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDC
        push    word ptr [0x762]                ; FF 36 62 07
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A DC 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCDest
        push    word ptr [0x80e]                ; FF 36 0E 08
        ;   ^ arg x
        push    word ptr [0x810]                ; FF 36 10 08
        ;   ^ arg y
        push    word ptr [0x732]                ; FF 36 32 07
        ;   ^ arg nWidth
        push    word ptr [0x734]                ; FF 36 34 07
        ;   ^ arg nHeight
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x80e                       ; B8 0E 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 24 12 00 00 [FIXUP]
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDC
        push    word ptr [0xa0a]                ; FF 36 0A 0A
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 30 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCDest
        push    word ptr [0xa52]                ; FF 36 52 0A
        ;   ^ arg x
        mov     ax, word ptr [0xa54]            ; A1 54 0A
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x732]                ; FF 36 32 07
        ;   ^ arg nWidth
        push    word ptr [0x734]                ; FF 36 34 07
        ;   ^ arg nHeight
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A CB 11 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa52                       ; B8 52 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 7F 12 00 00 [FIXUP]
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 5F 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg clrBk (high/segment)
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg clrBk (low/offset)
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A 7D 11 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg clrText (high/segment)
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A D2 0F 00 00 [FIXUP]
        jmp     L_0F63                          ; E9 10 FD
        push    word ptr [0xa34]                ; FF 36 34 0A
        ;   ^ arg clr (high/segment)
        push    word ptr [0xa32]                ; FF 36 32 0A
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 77 0F 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x8d4                       ; B8 D4 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A 8F 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x8d4                       ; B8 D4 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A A8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x770                       ; B8 70 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.FILLRECT               ; 9A 8A 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x770                       ; B8 70 07
        jmp     L_10CA                          ; E9 2E FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb06                       ; B8 06 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A B8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x736                       ; B8 36 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A C8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa0c                       ; B8 0C 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A D8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa14                       ; B8 14 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A E8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x8d4                       ; B8 D4 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A F8 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x770                       ; B8 70 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 08 13 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xc1e                       ; B8 1E 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_42                   ; 9A 9A 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
;   [loop start] L_1312
L_1312:
        push    ax                              ; 50
        call    L_0E9C                          ; E8 86 FB
        jmp     L_1376                          ; EB 5E
        cmp     word ptr [0xb10], 1             ; 83 3E 10 0B 01
        jne     L_1327                          ; 75 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_132D                          ; EB 06
; Description (heuristic):
;   Mixed routine using: DELETEOBJECT.

;-------------------------------------------------------------------------
; sub_1327   offset=0x1327  size=38 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;
; Near calls (internal): L_0E9C
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1327
L_1327:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 4                           ; B8 04 00
;   [unconditional branch target] L_132D
L_132D:
        push    ax                              ; 50
        call    L_0E9C                          ; E8 6B FB
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 61 FB
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 57 FB
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_0E9C                          ; E8 4D FB
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0E9C                          ; E8 44 FB
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 9                           ; B8 09 00
        jmp     L_1312                          ; EB B2
        sbb     byte ptr [bp + di], dl          ; 18 13
        outsb   dx, byte ptr [si]               ; 6E
        shufps  xmm1, xmmword ptr [bx], 0x53    ; 0F C6 0F 53
        adc     dh, byte ptr [si + 0x10]        ; 12 74 10
        je      L_137C                          ; 74 10
        xlatb                                   ; D7
        adc     byte ptr [si + 0x712], bl       ; 10 9C 12 07
        adc     byte ptr [bx], bh               ; 10 3F
        adc     ah, dl                          ; 10 D4
        push    cs                              ; 0E
;   [unconditional branch target] L_1376
L_1376:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 67 0F 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (158 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1384   offset=0x1384  size=158 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1384
L_1384:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 8], si           ; 89 76 F8
        mov     al, byte ptr [bp + 5]           ; 8A 46 05
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 6], di           ; 89 7E FA
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     si, di                          ; 3B F7
        jbe     L_13AC                          ; 76 04
        mov     ax, si                          ; 8B C6
        jmp     L_13AE                          ; EB 02
;   [conditional branch target (if/else)] L_13AC
L_13AC:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_13AE
L_13AE:
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jbe     L_13BF                          ; 76 0C
        cmp     si, di                          ; 3B F7
        jbe     L_13BB                          ; 76 04
        mov     ax, si                          ; 8B C6
        jmp     L_13C2                          ; EB 07
;   [conditional branch target (if/else)] L_13BB
L_13BB:
        mov     ax, di                          ; 8B C7
        jmp     L_13C2                          ; EB 03
;   [conditional branch target (if/else)] L_13BF
L_13BF:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
;   [unconditional branch target] L_13C2
L_13C2:
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        cmp     si, di                          ; 3B F7
        jae     L_13CD                          ; 73 04
        mov     ax, si                          ; 8B C6
        jmp     L_13CF                          ; EB 02
;   [conditional branch target (if/else)] L_13CD
L_13CD:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_13CF
L_13CF:
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jae     L_13E0                          ; 73 0C
        cmp     si, di                          ; 3B F7
        jae     L_13DC                          ; 73 04
        mov     ax, si                          ; 8B C6
        jmp     L_13E3                          ; EB 07
;   [conditional branch target (if/else)] L_13DC
L_13DC:
        mov     ax, di                          ; 8B C7
        jmp     L_13E3                          ; EB 03
;   [conditional branch target (if/else)] L_13E0
L_13E0:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
;   [unconditional branch target] L_13E3
L_13E3:
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        mov     cx, 0x30                        ; B9 30 00
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     dl, byte ptr [bp - 0xa]         ; 8A 56 F6
        sub     dh, dh                          ; 2A F6
        add     ax, dx                          ; 03 C2
        mul     cx                              ; F7 E1
        add     ax, 0xff                        ; 05 FF 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x1fe                       ; B9 FE 01
        div     cx                              ; F7 F1
        mov     word ptr [0xc3a], ax            ; A3 3A 0C
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cmp     byte ptr [bp - 0xc], al         ; 38 46 F4
        jne     L_141B                          ; 75 0F
        mov     word ptr [0xcde], 0             ; C7 06 DE 0C 00 00
        mov     word ptr [0xc26], 0x20          ; C7 06 26 0C 20 00
        jmp     L_14FF                          ; E9 E4 00
;   [conditional branch target (if/else)] L_141B
L_141B:
        cmp     word ptr [0xc3a], 0x18          ; 83 3E 3A 0C 18
        jg      L_1447                          ; 7F 25
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        mov     di, ax                          ; 8B F8
        mov     cx, 0x30                        ; B9 30 00
        sub     ax, si                          ; 2B C6
        mul     cx                              ; F7 E1
        mov     cx, di                          ; 8B CF
        add     cx, si                          ; 03 CE
        shr     cx, 1                           ; D1 E9
        add     ax, cx                          ; 03 C1
        sub     dx, dx                          ; 2B D2
        mov     cx, di                          ; 8B CF
        add     cx, si                          ; 03 CE
        div     cx                              ; F7 F1
        jmp     L_1472                          ; EB 2B
;   [conditional branch target (if/else)] L_1447
L_1447:
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        mov     di, ax                          ; 8B F8
        add     ax, si                          ; 03 C6
        sub     ax, 0x1fe                       ; 2D FE 01
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     cx, 0x30                        ; B9 30 00
        mov     ax, di                          ; 8B C7
        sub     ax, si                          ; 2B C6
        mul     cx                              ; F7 E1
        mov     cx, word ptr [bp - 0x12]        ; 8B 4E EE
        shr     cx, 1                           ; D1 E9
        add     ax, cx                          ; 03 C1
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 0x12]            ; F7 76 EE
;   [unconditional branch target] L_1472
L_1472:
        mov     word ptr [0xcde], ax            ; A3 DE 0C
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ax, si                          ; 2B C6
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        sub     dx, dx                          ; 2B D2
        div     di                              ; F7 F7
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        sub     dx, dx                          ; 2B D2
        div     di                              ; F7 F7
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        sub     dx, dx                          ; 2B D2
        div     di                              ; F7 F7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 8], si           ; 39 76 F8
        jne     L_14C9                          ; 75 05
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        jmp     L_14E7                          ; EB 1E
;   [conditional branch target (if/else)] L_14C9
L_14C9:
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jne     L_14DE                          ; 75 0B
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        add     ax, 0x10                        ; 05 10 00
        jmp     L_14E7                          ; EB 09
;   [conditional branch target (if/else)] L_14DE
L_14DE:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        add     ax, 0x20                        ; 05 20 00
;   [unconditional branch target] L_14E7
L_14E7:
        mov     word ptr [0xc26], ax            ; A3 26 0C
        or      ax, ax                          ; 0B C0
        jge     L_14F3                          ; 7D 05
        add     word ptr [0xc26], 0x30          ; 83 06 26 0C 30
;   [conditional branch target (if/else)] L_14F3
L_14F3:
        cmp     word ptr [0xc26], 0x30          ; 83 3E 26 0C 30
        jle     L_14FF                          ; 7E 05
        sub     word ptr [0xc26], 0x30          ; 83 2E 26 0C 30
;   [error/early exit] L_14FF
L_14FF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1507   offset=0x1507  size=34 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1507
L_1507:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jae     L_1514                          ; 73 04
        add     word ptr [bp + 4], 0x30         ; 83 46 04 30
;   [conditional branch target (if/else)] L_1514
L_1514:
        cmp     word ptr [bp + 4], 0x30         ; 83 7E 04 30
        jbe     L_151E                          ; 76 04
        sub     word ptr [bp + 4], 0x30         ; 83 6E 04 30
;   [conditional branch target (if/else)] L_151E
L_151E:
        cmp     word ptr [bp + 4], 8            ; 83 7E 04 08
        jae     L_1539                          ; 73 15
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mul     word ptr [bp + 4]               ; F7 66 04
;   [loop start] L_152D
L_152D:
        add     ax, 4                           ; 05 04 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        jmp     L_155D                          ; EB 24
;   [conditional branch target (if/else)] L_1539
L_1539:
        cmp     word ptr [bp + 4], 0x18         ; 83 7E 04 18
        jae     L_1544                          ; 73 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_155D                          ; EB 19
;   [conditional branch target (if/else)] L_1544
L_1544:
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jae     L_155A                          ; 73 10
        mov     cx, 0x20                        ; B9 20 00
        sub     cx, word ptr [bp + 4]           ; 2B 4E 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mul     cx                              ; F7 E1
        jmp     L_152D                          ; EB D3
;   [error/early exit] L_155A
L_155A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
;   [fall-through exit] L_155D
L_155D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (89 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1563   offset=0x1563  size=89 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1507
;-------------------------------------------------------------------------
;   [sub-routine] L_1563
L_1563:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1588                          ; 75 19
        mov     ax, 0xff                        ; B8 FF 00
        mul     word ptr [bp + 6]               ; F7 66 06
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_162C                          ; E9 A4 00
;   [conditional branch target (if/else)] L_1588
L_1588:
        cmp     word ptr [bp + 6], 0x18         ; 83 7E 06 18
        ja      L_15A6                          ; 77 18
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0x30                        ; 05 30 00
        mul     word ptr [bp + 6]               ; F7 66 06
        add     ax, 0x18                        ; 05 18 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_15C1                          ; EB 1B
;   [conditional branch target (if/else)] L_15A6
L_15A6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mul     word ptr [bp + 4]               ; F7 66 04
        add     ax, 0x18                        ; 05 18 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        sub     cx, ax                          ; 2B C8
        add     cx, word ptr [bp + 4]           ; 03 4E 04
        mov     word ptr [bp - 6], cx           ; 89 4E FA
;   [unconditional branch target] L_15C1
L_15C1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 0x10                        ; 05 10 00
        push    ax                              ; 50
        call    L_1507                          ; E8 2D FF
        mov     cx, 0xff                        ; B9 FF 00
        mul     cx                              ; F7 E1
        add     ax, 0x18                        ; 05 18 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1507                          ; E8 0F FF
        mov     cx, 0xff                        ; B9 FF 00
        mul     cx                              ; F7 E1
        add     ax, 0x18                        ; 05 18 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 0x10                        ; 2D 10 00
        push    ax                              ; 50
        call    L_1507                          ; E8 ED FE
        mov     cx, 0xff                        ; B9 FF 00
        mul     cx                              ; F7 E1
        add     ax, 0x18                        ; 05 18 00
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x30                        ; B9 30 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_162C
L_162C:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        sub     dx, dx                          ; 2B D2
        mov     dh, dl                          ; 8A F2
        mov     dl, ah                          ; 8A D4
        mov     ah, al                          ; 8A E0
        sub     al, al                          ; 2A C0
        or      ax, word ptr [bp - 0xa]         ; 0B 46 F6
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: GETSYSTEMMETRICS, GETWINDOWRECT, SCREENTOCLIENT.

;-------------------------------------------------------------------------
; sub_1649   offset=0x1649  size=53 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: unknown
;
; Far API calls:
;   GETSYSTEMMETRICS
;   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   SCREENTOCLIENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1649
L_1649:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 60 16 00 00 [FIXUP]
        mov     cx, 0xa                         ; B9 0A 00
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far USER.GETSYSTEMMETRICS       ; 9A BB 16 00 00 [FIXUP]
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A F0 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 91 16 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FE 03 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x8a4]            ; 03 06 A4 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 17 02 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     cx, word ptr es:[bx + 6]        ; 26 8B 4F 06
        sub     cx, ax                          ; 2B C8
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

CONTROL_TEXT ENDS

        END
