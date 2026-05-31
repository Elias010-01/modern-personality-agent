; ======================================================================
; PAINT / seg1.asm   (segment 1 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        49
; Total instructions:                 4169
; 
; Classification (pass8):
;   C-origin (high+medium):             44
;   ASM-origin (high+medium):            0
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     171 (70 unique)
;   Top:
;       13  GETMENU
;       12  GETDC
;       11  RELEASEDC
;       10  DELETEDC
;        8  BITBLT
;        7  CHECKMENUITEM
;        6  SELECTOBJECT
;        6  ENABLEMENUITEM
; ======================================================================
; AUTO-GENERATED from original PAINT segment 1
; segment_size=11144 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (2 uses)
;   Locals:
;     [bp-0x18]   HDC       (6 uses)

; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=111 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   MULDIV
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   CHANGEMENU
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   GETMENU
;   GETSYSTEMMENU
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1086
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1086                          ; E8 6C 10
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xdbe]                ; FF 36 BE 0D
        push    word ptr [0xc86]                ; FF 36 86 0C
        push    word ptr [0xdaa]                ; FF 36 AA 0D
        call    far GDI.MULDIV                  ; 9A 40 00 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x43a8                      ; B8 A8 43
        push    ax                              ; 50
        mov     ax, 0x2710                      ; B8 10 27
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xe60], ax            ; A3 60 0E
        mov     word ptr [0x878], 0             ; C7 06 78 08 00 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 0F 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 89 02 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 8C 00 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A A8 00 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 8F 02 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A E2 00 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_00DE                          ; 75 1B
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00E6                          ; EB 08
;   [conditional branch target (if/else)] L_00DE
L_00DE:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 7E 02 00 00 [FIXUP]
;   [unconditional branch target] L_00E6
L_00E6:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_0123                          ; 74 2B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x81                        ; B8 81 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 1F 01 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1128                      ; B8 28 11
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0123
L_0123:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0129   offset=0x0129  size=31 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_0129
L_0129:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        jne     L_013D                          ; 75 07
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_0171                          ; EB 34
;   [conditional branch target (if/else)] L_013D
L_013D:
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        je      L_0150                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0152                          ; EB 02
;   [conditional branch target (if/else)] L_0150
L_0150:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0152
L_0152:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0179                          ; 74 20
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_0167                          ; 75 07
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_0171                          ; 74 0A
;   [conditional branch target (if/else)] L_0167
L_0167:
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0171
L_0171:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0179
L_0179:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Thin wrapper around GETMODULEUSAGE(hModule) -> INT.

;-------------------------------------------------------------------------
; sub_0182   offset=0x0182  size=23 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETMODULEUSAGE(HANDLE hModule) -> INT
;
; Near calls (internal): L_11E2
;-------------------------------------------------------------------------
;   [sub-routine] L_0182
L_0182:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_19                   ; 9A 93 01 00 00 [FIXUP]
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_19                   ; 9A 9C 01 00 00 [FIXUP]
        push    word ptr [0xc90]                ; FF 36 90 0C
        call    far _entry_19                   ; 9A A5 01 00 00 [FIXUP]
        push    word ptr [0xaca]                ; FF 36 CA 0A
        call    far _entry_19                   ; 9A AE 01 00 00 [FIXUP]
        push    word ptr [0x874]                ; FF 36 74 08
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11E2                          ; E8 2B 10
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hModule
        ; --> GETMODULEUSAGE(HANDLE hModule) -> INT
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_01CA                          ; 75 05
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_01CA
L_01CA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (2 uses)
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0x2]   INT       (1 use)
;     [bp-0xc]   BOOL      (1 use)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).

;-------------------------------------------------------------------------
; sub_01CE   offset=0x01CE  size=202 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   LINETO(HDC hDC, INT x, INT y) -> BOOL
;   MOVETO(HDC hDC, INT x, INT y) -> DWORD
;   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;-------------------------------------------------------------------------
;   [sub-routine] L_01CE
L_01CE:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0xbc4]                ; FF 36 C4 0B
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A F8 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg x
        push    word ptr [0xbc4]                ; FF 36 C4 0B
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 20 03 00 00 [FIXUP]
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        mov     si, ax                          ; 8B F0
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, word ptr [bp - 2]           ; 8B 4E FE
        sub     cx, ax                          ; 2B C8
        sub     cx, si                          ; 2B CE
        sub     cx, 0xd                         ; 83 E9 0D
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     cx, di                          ; 3B CF
        jge     L_0251                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_0254                          ; EB 03
;   [conditional branch target (if/else)] L_0251
L_0251:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
;   [unconditional branch target] L_0254
L_0254:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [si + 0xd]                  ; 8D 44 0D
        push    ax                              ; 50
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 9B 02 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A A1 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    si                              ; 56
        ;   ^ arg left
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg top
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        ;   ^ arg right
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        ;   ^ arg bottom
        ; --> RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [0xe06]            ; 03 06 06 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg x
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A 40 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [0xe06]            ; 03 06 06 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 6B 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, word ptr [0xe06]            ; 8B 0E 06 0E
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 88 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 97 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A A6 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x876], 0             ; 83 3E 76 08 00
        je      L_03BC                          ; 74 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_03BC
L_03BC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: MOVEWINDOW.

;-------------------------------------------------------------------------
; sub_03C4   offset=0x03C4  size=99 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_03C4
L_03C4:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xbac], ax            ; A3 AC 0B
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0xbc2], ax            ; A3 C2 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xbaa], ax            ; A3 AA 0B
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        sub     si, word ptr [0xbc4]            ; 2B 36 C4 0B
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jle     L_03ED                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_03EF                          ; EB 02
;   [conditional branch target (if/else)] L_03ED
L_03ED:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_03EF
L_03EF:
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [0x876], 0             ; 83 3E 76 08 00
        jne     L_0401                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0403                          ; EB 02
;   [conditional branch target (if/else)] L_0401
L_0401:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0403
L_0403:
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        jne     L_0413                          ; 75 03
        jmp     L_04C2                          ; E9 AF 00
;   [conditional branch target (if/else)] L_0413
L_0413:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jge     L_0420                          ; 7D 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0423                          ; EB 03
;   [conditional branch target (if/else)] L_0420
L_0420:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
;   [unconditional branch target] L_0423
L_0423:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_0433                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_0436                          ; EB 03
;   [conditional branch target (if/else)] L_0433
L_0433:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
;   [unconditional branch target] L_0436
L_0436:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xc86]            ; A1 86 0C
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0446                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0449                          ; EB 03
;   [conditional branch target (if/else)] L_0446
L_0446:
        mov     ax, word ptr [0xc86]            ; A1 86 0C
;   [unconditional branch target] L_0449
L_0449:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xc92]            ; A1 92 0C
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_0459                          ; 7D 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_045C                          ; EB 03
;   [conditional branch target (if/else)] L_0459
L_0459:
        mov     ax, word ptr [0xc92]            ; A1 92 0C
;   [unconditional branch target] L_045C
L_045C:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg x
        add     ax, word ptr [0xbc4]            ; 03 06 C4 0B
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nWidth
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A BE 04 00 00 [FIXUP]
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jge     L_04A4                          ; 7D 06
        push    word ptr [0x572]                ; FF 36 72 05
        jmp     L_04AF                          ; EB 0B
;   [conditional branch target (if/else)] L_04A4
L_04A4:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jle     L_04C2                          ; 7E 17
        push    word ptr [0x570]                ; FF 36 70 05
;   [unconditional branch target] L_04AF
L_04AF:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_04C2
L_04C2:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: GETDC, RELEASECAPTURE, RELEASEDC (+2 more).

;-------------------------------------------------------------------------
; sub_04C9   offset=0x04C9  size=116 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   RELEASECAPTURE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCAPTURE
;   SETCURSOR
;
; Near calls (internal): L_0B90, L_1817, L_189A
;-------------------------------------------------------------------------
;   [sub-routine] L_04C9
L_04C9:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_04EF                          ; 74 18
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_04DF                          ; 75 03
        jmp     L_05A2                          ; E9 C3 00
;   [conditional branch target (if/else)] L_04DF
L_04DF:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_04E7                          ; 75 03
        jmp     L_05F0                          ; E9 09 01
;   [conditional branch target (if/else)] L_04E7
L_04E7:
        cmp     ax, 0x203                       ; 3D 03 02
        je      L_0531                          ; 74 45
        jmp     L_062F                          ; E9 40 01
;   [conditional branch target (if/else)] L_04EF
L_04EF:
        push    word ptr [0xe38]                ; FF 36 38 0E
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_0502                          ; 7F 03
        jmp     L_062F                          ; E9 2D 01
;   [conditional branch target (if/else)] L_0502
L_0502:
        cmp     word ptr [0x876], -1            ; 83 3E 76 08 FF
        jne     L_050C                          ; 75 03
        jmp     L_062F                          ; E9 23 01
;   [conditional branch target (if/else)] L_050C
L_050C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A C4 05 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        call    far _entry_46                   ; 9A D3 05 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A DE 05 00 00 [FIXUP]
        jmp     L_062F                          ; E9 FE 00
;   [conditional branch target (if/else)] L_0531
L_0531:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_49                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0552                          ; 75 0B
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B90                          ; E8 40 06
        jmp     L_057A                          ; EB 28
;   [conditional branch target (if/else)] L_0552
L_0552:
        cmp     word ptr [bp - 2], 4            ; 83 7E FE 04
        jne     L_0589                          ; 75 31
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_056A                          ; 75 0B
;   [loop start] L_055F
L_055F:
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1817                          ; E8 AF 12
        jmp     L_057A                          ; EB 10
;   [conditional branch target (if/else)] L_056A
L_056A:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jge     L_057A                          ; 7D 09
;   [loop start] L_0571
L_0571:
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_189A                          ; E8 20 13
;   [loop start (also forward branch)] L_057A
L_057A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x3be]                ; FF 36 BE 03
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_062F                          ; E9 A6 00
;   [conditional branch target (if/else)] L_0589
L_0589:
        cmp     word ptr [bp - 2], 3            ; 83 7E FE 03
        je      L_0592                          ; 74 03
        jmp     L_062F                          ; E9 9D 00
;   [conditional branch target (if/else)] L_0592
L_0592:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        je      L_0571                          ; 74 D8
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jle     L_057A                          ; 7E DA
        jmp     L_055F                          ; EB BD
;   [unconditional branch target] L_05A2
L_05A2:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_05EA                          ; 75 41
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_38                   ; 9A 5C 07 00 00 [FIXUP]
        mov     word ptr [0x876], 0             ; C7 06 76 08 00 00
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3be], ax            ; A3 BE 03
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 0C 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 26 06 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05EA
L_05EA:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_062F                          ; EB 3F
;   [unconditional branch target] L_05F0
L_05F0:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_062F                          ; 7E 38
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_062F                          ; 75 2D
        mov     word ptr [0x876], 0xffff        ; C7 06 76 08 FF FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 8C 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 79 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A A0 06 00 00 [FIXUP]
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_062F
L_062F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0635   offset=0x0635  size=71 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_03C4
;-------------------------------------------------------------------------
;   [sub-routine] L_0635
L_0635:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [bp + 4], 0x71         ; 83 7E 04 71
        jne     L_0646                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0648                          ; EB 02
;   [conditional branch target (if/else)] L_0646
L_0646:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0648
L_0648:
        cmp     ax, word ptr [0x55e]            ; 3B 06 5E 05
        jne     L_0651                          ; 75 03
        jmp     L_06F2                          ; E9 A1 00
;   [conditional branch target (if/else)] L_0651
L_0651:
        cmp     word ptr [bp + 4], 0x71         ; 83 7E 04 71
        jne     L_065C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_065E                          ; EB 02
;   [conditional branch target (if/else)] L_065C
L_065C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_065E
L_065E:
        mov     word ptr [0x55e], ax            ; A3 5E 05
        cmp     word ptr [bp + 4], 0x70         ; 83 7E 04 70
        jne     L_0688                          ; 75 21
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_34                   ; 9A B8 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 95 06 00 00 [FIXUP]
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_06A4                          ; 74 26
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A B0 00 00 00 [FIXUP]
        jmp     L_06A4                          ; EB 1C
;   [conditional branch target (if/else)] L_0688
L_0688:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 0A 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 21 00 00 00 [FIXUP]
;   [branch target] L_06A4
L_06A4:
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0xa4a                       ; B8 4A 0A
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0xa001                      ; B8 01 A0
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A DF 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_03C4                          ; E8 E3 FC
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_06F2
L_06F2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)

; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_06F8   offset=0x06F8  size=359 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   HIDECARET
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SHOWCARET
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (first 8 of 16): L_0635, L_0AE2, L_0B19, L_0B50, L_0B90, L_113E, L_135D, L_1445 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_06F8
L_06F8:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        jne     L_070D                          ; 75 08
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_070D
L_070D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 0x1e                        ; 2D 1E 00
        cmp     ax, 0x53                        ; 3D 53 00
        jbe     L_071B                          ; 76 03
        jmp     L_0A01                          ; E9 E6 02
;   [conditional branch target (if/else)] L_071B
L_071B:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xa34]        ; 2E FF A7 34 0A
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 AD 03
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 A1 03
        push    word ptr [0x574]                ; FF 36 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 91 03
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 85 03
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 6C 03
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_0783                          ; 75 0C
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_28F7                          ; E8 77 21
        jmp     L_0ADC                          ; E9 59 03
;   [conditional branch target (if/else)] L_0783
L_0783:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jl      L_078D                          ; 7C 03
        jmp     L_0ADC                          ; E9 4F 03
;   [conditional branch target (if/else)] L_078D
L_078D:
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 43 03
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B90                          ; E8 EE 03
        jmp     L_0ADC                          ; E9 37 03
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1EBF                          ; E8 11 17
        jmp     L_0ADC                          ; E9 2B 03
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F01                          ; E8 47 17
        jmp     L_0ADC                          ; E9 1F 03
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2067                          ; E8 A1 18
        jmp     L_0ADC                          ; E9 13 03
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D9E                          ; E8 CC 15
        jmp     L_0ADC                          ; E9 07 03
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 13 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_07F0                          ; 74 08
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FF                          ; EB 0F
;   [conditional branch target (if/else)] L_07F0
L_07F0:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_07FF                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_58                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_07FF
L_07FF:
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A B1 08 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 CE 02
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 27 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FF                          ; EB DD
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 3F 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
;   [loop start] L_0832
L_0832:
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07FF                          ; EB C5
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 9C 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        jmp     L_0832                          ; EB E6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x4e                        ; 3D 4E 00
        jne     L_0857                          ; 75 03
        jmp     L_0927                          ; E9 D0 00
;   [conditional branch target (if/else)] L_0857
L_0857:
        cmp     ax, 0x4f                        ; 3D 4F 00
        jne     L_085F                          ; 75 03
        jmp     L_08FF                          ; E9 A0 00
;   [conditional branch target (if/else)] L_085F
L_085F:
        cmp     ax, 0x50                        ; 3D 50 00
        jne     L_0867                          ; 75 03
        jmp     L_0914                          ; E9 AD 00
;   [conditional branch target (if/else)] L_0867
L_0867:
        cmp     ax, 0x51                        ; 3D 51 00
        jne     L_086F                          ; 75 03
        jmp     L_0958                          ; E9 E9 00
;   [conditional branch target (if/else)] L_086F
L_086F:
        cmp     ax, 0x52                        ; 3D 52 00
        je      L_087E                          ; 74 0A
        cmp     ax, 0x53                        ; 3D 53 00
        jne     L_087C                          ; 75 03
        jmp     L_0945                          ; E9 C9 00
;   [conditional branch target (if/else)] L_087C
L_087C:
        jmp     L_088F                          ; EB 11
;   [conditional branch target (if/else)] L_087E
L_087E:
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        je      L_0889                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_088C                          ; EB 03
;   [conditional branch target (if/else)] L_0889
L_0889:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_088C
L_088C:
        mov     word ptr [0xdb2], ax            ; A3 B2 0D
;   [loop start (also forward branch)] L_088F
L_088F:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_135D                          ; E8 C6 0A
;   [loop start] L_0897
L_0897:
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A CD 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_113E                          ; E8 95 08
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A E6 08 00 00 [FIXUP]
;   [loop start] L_08B5
L_08B5:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        jne     L_08BF                          ; 75 03
        jmp     L_097E                          ; E9 BF 00
;   [loop start (also forward branch)] L_08BF
L_08BF:
        push    word ptr [0x574]                ; FF 36 74 05
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 10 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x574]                ; FF 36 74 05
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x574]                ; FF 36 74 05
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 2A 05 00 00 [FIXUP]
        push    word ptr [0x574]                ; FF 36 74 05
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 DD 01
;   [unconditional branch target] L_08FF
L_08FF:
        cmp     word ptr [0xa1a], 1             ; 83 3E 1A 0A 01
        je      L_090B                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_090E                          ; EB 03
;   [conditional branch target (if/else)] L_090B
L_090B:
        mov     ax, 0x258                       ; B8 58 02
;   [unconditional branch target] L_090E
L_090E:
        mov     word ptr [0xa1a], ax            ; A3 1A 0A
        jmp     L_088F                          ; E9 7B FF
;   [unconditional branch target] L_0914
L_0914:
        cmp     byte ptr [0xa1c], 0             ; 80 3E 1C 0A 00
        je      L_091F                          ; 74 04
        sub     al, al                          ; 2A C0
        jmp     L_0921                          ; EB 02
;   [conditional branch target (if/else)] L_091F
L_091F:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [unconditional branch target] L_0921
L_0921:
        mov     byte ptr [0xa1c], al            ; A2 1C 0A
        jmp     L_088F                          ; E9 68 FF
;   [unconditional branch target] L_0927
L_0927:
        mov     word ptr [0xa1a], 1             ; C7 06 1A 0A 01 00
        mov     byte ptr [0xa1c], 0             ; C6 06 1C 0A 00
        mov     byte ptr [0xa1d], 0             ; C6 06 1D 0A 00
        mov     byte ptr [0xa1e], 0             ; C6 06 1E 0A 00
        mov     word ptr [0xdb2], 0             ; C7 06 B2 0D 00 00
        jmp     L_088F                          ; E9 4A FF
;   [unconditional branch target] L_0945
L_0945:
        cmp     byte ptr [0xa1e], 0             ; 80 3E 1E 0A 00
        je      L_0950                          ; 74 04
        sub     al, al                          ; 2A C0
        jmp     L_0952                          ; EB 02
;   [conditional branch target (if/else)] L_0950
L_0950:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [unconditional branch target] L_0952
L_0952:
        mov     byte ptr [0xa1e], al            ; A2 1E 0A
        jmp     L_088F                          ; E9 37 FF
;   [unconditional branch target] L_0958
L_0958:
        cmp     byte ptr [0xa1d], 0             ; 80 3E 1D 0A 00
        je      L_0963                          ; 74 04
        sub     al, al                          ; 2A C0
        jmp     L_0965                          ; EB 02
;   [conditional branch target (if/else)] L_0963
L_0963:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [unconditional branch target] L_0965
L_0965:
        mov     byte ptr [0xa1d], al            ; A2 1D 0A
        jmp     L_088F                          ; E9 24 FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0AE2                          ; E8 6E 01
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_097E                          ; 74 03
        jmp     L_08BF                          ; E9 41 FF
;   [branch target] L_097E
L_097E:
        cmp     word ptr [0x566], 0             ; 83 3E 66 05 00
        jne     L_0988                          ; 75 03
        jmp     L_0ADC                          ; E9 54 01
;   [conditional branch target (if/else)] L_0988
L_0988:
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 48 01
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B19                          ; E8 7C 01
        jmp     L_08B5                          ; E9 15 FF
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1817                          ; E8 6E 0E
        jmp     L_0ADC                          ; E9 30 01
        push    word ptr [0x574]                ; FF 36 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_189A                          ; E8 E5 0E
        jmp     L_0ADC                          ; E9 24 01
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B50                          ; E8 8F 01
        jmp     L_0ADC                          ; E9 18 01
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 0D 01
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0635                          ; E8 5D FC
        jmp     L_0ADC                          ; E9 01 01
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [loop start] L_09E1
L_09E1:
        push    ax                              ; 50
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0ADC                          ; E9 F2 00
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_09E1                          ; EB EF
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
        jmp     L_09E1                          ; EB E7
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        jmp     L_09E1                          ; EB E0
;   [unconditional branch target] L_0A01
L_0A01:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     cl, 8                           ; B1 08
        sar     ax, cl                          ; D3 F8
        and     ax, 0x7f                        ; 25 7F 00
        cmp     ax, 0x36                        ; 3D 36 00
        je      L_0A18                          ; 74 08
        cmp     ax, 0x42                        ; 3D 42 00
        je      L_0A26                          ; 74 11
        jmp     L_0ADC                          ; E9 C4 00
;   [conditional branch target (if/else)] L_0A18
L_0A18:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1445                          ; E8 22 0A
        jmp     L_0897                          ; E9 71 FE
;   [conditional branch target (if/else)] L_0A26
L_0A26:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14BB                          ; E8 8A 0A
        jmp     L_0897                          ; E9 63 FE
        and     ax, word ptr [bx]               ; 23 07
        das                                     ; 2F
        pop     es                              ; 07
        cmp     ax, word ptr [bx]               ; 3B 07
        dec     bx                              ; 4B
        pop     es                              ; 07
        push    di                              ; 57
        pop     es                              ; 07
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        add     word ptr [bp + si], cx          ; 01 0A
        jo      L_0A55                          ; 70 07
        cdq                                     ; 99
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     es                              ; 07
        mov     cl, 7                           ; B1 07
        mov     bp, 0xc907                      ; BD 07 C9
        pop     es                              ; 07
        aad     7                               ; D5 07
        push    cs                              ; 0E
        or      byte ptr [bp + si], ah          ; 08 22
        or      byte ptr [bp + si], bh          ; 08 3A
        or      byte ptr [bx + di], al          ; 08 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      cl, byte ptr [si + 8]           ; 0A 4C 08
        dec     sp                              ; 4C
        or      byte ptr [si + 8], cl           ; 08 4C 08
        dec     sp                              ; 4C
        or      byte ptr [si + 8], cl           ; 08 4C 08
        dec     sp                              ; 4C
        or      byte ptr [bp + di + 9], ch      ; 08 6B 09
        imul    cx, word ptr [bx + di], 0x6b    ; 6B 09 6B
        or      word ptr [si - 0x6bf7], dx      ; 09 94 09 94
        or      word ptr [bx + di], ax          ; 09 01
        or      bl, bl                          ; 0A DB
        or      dx, bp                          ; 09 EA
        or      dx, si                          ; 09 F2
        or      dx, di                          ; 09 FA
        or      word ptr [bx + di], ax          ; 09 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      al, byte ptr [bx + di]          ; 0A 01
        or      ah, byte ptr [bx + si - 0x53f7] ; 0A A0 09 AC
        or      word ptr [bx + di], ax          ; 09 01
        or      bh, byte ptr [bx + si - 0x47f7] ; 0A B8 09 B8
        or      word ptr [bx + si - 0x47f7], di ; 09 B8 09 B8
        or      word ptr [bx + di], ax          ; 09 01
        or      al, ah                          ; 0A C4
        or      word ptr [bx + di], ax          ; 09 01
        or      cl, bh                          ; 0A CF
        or      di, cx                          ; 09 CF
        or      word ptr [bp + di + 0x5de5], cx ; 09 8B E5 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HMENU     (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_0AE2   offset=0x0AE2  size=21 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_0AE2
L_0AE2:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 23 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x3c4]                ; FF 36 C4 03
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 0F 0B 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x3c4], ax            ; A3 C4 03
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 33 0B 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HMENU     (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_0B19   offset=0x0B19  size=21 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_0B19
L_0B19:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 5A 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x88a]                ; FF 36 8A 08
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 46 0B 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x88a], ax            ; A3 8A 08
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 6D 0B 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HMENU     (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_0B50   offset=0x0B50  size=25 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_0B50
L_0B50:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A C7 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, word ptr [0x87a]            ; A1 7A 08
        add     ax, 0x69                        ; 05 69 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 86 0B 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 0x69                        ; 2D 69 00
        mov     word ptr [0x87a], ax            ; A3 7A 08
        add     ax, 0x69                        ; 05 69 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (2 uses)
;   Locals:
;     [bp-0x4]   HDC       (4 uses)

; Description (heuristic):
;   Mixed routine using: DELETEDC, GETDC, RELEASEDC.

;-------------------------------------------------------------------------
; sub_0B90   offset=0x0B90  size=50 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_0C1E, L_2891
;-------------------------------------------------------------------------
;   [sub-routine] L_0B90
L_0B90:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_38                   ; 9A AE 05 00 00 [FIXUP]
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_0BEB                          ; 75 39
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2891                          ; E8 DA 1C
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FB 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_0C1E                          ; E8 58 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 0F 0C 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 52 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_0C1E                          ; E8 3D 00
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 82 06 00 00 [FIXUP]
        jmp     L_0C13                          ; EB 28
;   [conditional branch target (if/else)] L_0BEB
L_0BEB:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jge     L_0C13                          ; 7D 21
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A DA 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 07 08 00 00 [FIXUP]
;   [branch target] L_0C13
L_0C13:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Small helper using 3 API(s): GETSTOCKOBJECT, PATBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_0C1E   offset=0x0C1E  size=22 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0C1E
L_0C1E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 5E 00 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 64 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 80 00 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)

; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0C54   offset=0x0C54  size=115 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SETFOCUS
;-------------------------------------------------------------------------
;   [sub-routine] L_0C54
L_0C54:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x96                        ; 81 EC 96 00
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0CA2                          ; 74 33
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 75 01 00 00 [FIXUP]
        jmp     L_0D57                          ; E9 B5 00
;   [conditional branch target (if/else)] L_0CA2
L_0CA2:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A D1 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     si, ax                          ; 8B F0
        sub     si, word ptr [0xbc4]            ; 2B 36 C4 0B
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jle     L_0CD0                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_0CD2                          ; EB 02
;   [conditional branch target (if/else)] L_0CD0
L_0CD0:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0CD2
L_0CD2:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_0CE2                          ; 7D 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0CE5                          ; EB 03
;   [conditional branch target (if/else)] L_0CE2
L_0CE2:
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
;   [unconditional branch target] L_0CE5
L_0CE5:
        mov     word ptr [bp - 0x96], ax        ; 89 86 6A FF
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0CF6                          ; 7D 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_0CF9                          ; EB 03
;   [conditional branch target (if/else)] L_0CF6
L_0CF6:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
;   [unconditional branch target] L_0CF9
L_0CF9:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0x96]        ; 2B 86 6A FF
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 0x812                       ; B8 12 08
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x7e2                       ; B8 E2 07
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
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg x
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [0xbc4]            ; 03 06 C4 0B
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 0x96]            ; FF B6 6A FF
        ;   ^ arg nWidth
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nHeight
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndParent
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x574], ax            ; A3 74 05
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A 14 10 00 00 [FIXUP]
;   [unconditional branch target] L_0D57
L_0D57:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)
;   Locals:
;     [bp-0x2]   FARPROC   (1 use)
;     [bp-0x4]   FARPROC   (3 uses)

; Description (heuristic):
;   Small helper using 3 API(s): DIALOGBOX, FREEPROCINSTANCE, MAKEPROCINSTANCE.

;-------------------------------------------------------------------------
; sub_0D63   offset=0x0D63  size=25 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_0D63
L_0D63:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, OFFSET _entry_64            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_64            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        mov     ax, 0x330                       ; B8 30 03
        push    ds                              ; 1E
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWndOwner
        push    dx                              ; 52
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).

;-------------------------------------------------------------------------
; sub_0DA6   offset=0x0DA6  size=266 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   CLOSECLIPBOARD
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   ENUMCLIPBOARDFORMATS
;   GETMENU
;   ISICONIC
;   OPENCLIPBOARD
;   POSTQUITMESSAGE
;   SETFOCUS
;
; Near calls (first 8 of 9): L_0129, L_0182, L_01CE, L_03C4, L_04C9, L_06F8, L_0C54, L_0D63 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0DA6
L_0DA6:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A EC 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        je      L_0DC5                          ; 74 07
        cmp     word ptr [0x552], 0             ; 83 3E 52 05 00
        je      L_0DCA                          ; 74 05
;   [conditional branch target (if/else)] L_0DC5
L_0DC5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DCC                          ; EB 02
;   [conditional branch target (if/else)] L_0DCA
L_0DCA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0DCC
L_0DCC:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     word ptr [0x55e], 0             ; 83 3E 5E 05 00
        je      L_0DDE                          ; 74 05
        mov     ax, 0x70                        ; B8 70 00
        jmp     L_0DE1                          ; EB 03
;   [conditional branch target (if/else)] L_0DDE
L_0DDE:
        mov     ax, 0x71                        ; B8 71 00
;   [unconditional branch target] L_0DE1
L_0DE1:
        push    ax                              ; 50
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0DED                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DEF                          ; EB 02
;   [conditional branch target (if/else)] L_0DED
L_0DED:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0DEF
L_0DEF:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 0C 0E 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     word ptr [0x55e], 0             ; 83 3E 5E 05 00
        je      L_0E04                          ; 74 05
        mov     ax, 0x71                        ; B8 71 00
        jmp     L_0E07                          ; EB 03
;   [conditional branch target (if/else)] L_0E04
L_0E04:
        mov     ax, 0x70                        ; B8 70 00
;   [unconditional branch target] L_0E07
L_0E07:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 99 0E 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     word ptr [0x55e], 0             ; 83 3E 5E 05 00
        je      L_0E1F                          ; 74 05
        mov     ax, 0x70                        ; B8 70 00
        jmp     L_0E22                          ; EB 03
;   [conditional branch target (if/else)] L_0E1F
L_0E1F:
        mov     ax, 0x71                        ; B8 71 00
;   [unconditional branch target] L_0E22
L_0E22:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 43 0E 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     word ptr [0x55e], 0             ; 83 3E 5E 05 00
        je      L_0E3A                          ; 74 05
        mov     ax, 0x71                        ; B8 71 00
        jmp     L_0E3D                          ; EB 03
;   [conditional branch target (if/else)] L_0E3A
L_0E3A:
        mov     ax, 0x70                        ; B8 70 00
;   [unconditional branch target] L_0E3D
L_0E3D:
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FC 0A 00 00 [FIXUP]
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_0E8E                          ; 75 3B
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E8E                          ; 74 2F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_0E7D                          ; EB 19
;   [loop start] L_0E64
L_0E64:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0E73                          ; 74 0A
        cmp     ax, 3                           ; 3D 03 00
        je      L_0E73                          ; 74 05
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0E7A                          ; 75 07
;   [conditional branch target (if/else)] L_0E73
L_0E73:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0E89                          ; EB 0F
;   [conditional branch target (if/else)] L_0E7A
L_0E7A:
        push    word ptr [bp - 6]               ; FF 76 FA
;   [unconditional branch target] L_0E7D
L_0E7D:
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0E64                          ; 75 DB
;   [unconditional branch target] L_0E89
L_0E89:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E8E
L_0E8E:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A D8 00 00 00 [FIXUP]
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
        sub     sp, 0x26                        ; 83 EC 26
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0F01                          ; 74 41
        jbe     L_0EC5                          ; 76 03
        jmp     L_102E                          ; E9 69 01
;   [conditional branch target (if/else)] L_0EC5
L_0EC5:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0EF9                          ; 74 2F
        cmp     ax, 2                           ; 3D 02 00
        je      L_0F10                          ; 74 41
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0ED7                          ; 75 03
        jmp     L_0F5B                          ; E9 84 00
;   [conditional branch target (if/else)] L_0ED7
L_0ED7:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0EDF                          ; 75 03
        jmp     L_0FF6                          ; E9 17 01
;   [conditional branch target (if/else)] L_0EDF
L_0EDF:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0EE7                          ; 75 03
        jmp     L_0F69                          ; E9 82 00
;   [conditional branch target (if/else)] L_0EE7
L_0EE7:
        jmp     L_1045                          ; E9 5B 01
;   [loop start] L_0EEA
L_0EEA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0DA6                          ; E8 B6 FE
;   [loop start] L_0EF0
L_0EF0:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_107B                          ; E9 82 01
;   [conditional branch target (if/else)] L_0EF9
L_0EF9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    0                               ; E8 01 F1
        jmp     L_0EF0                          ; EB EF
;   [conditional branch target (if/else)] L_0F01
L_0F01:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0129                          ; E8 22 F2
;   [loop start] L_0F07
L_0F07:
        cdq                                     ; 99
;   [loop start] L_0F08
L_0F08:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0EF0                          ; EB E0
;   [conditional branch target (if/else)] L_0F10
L_0F10:
        call    L_0182                          ; E8 6F F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0EF0                          ; EB D3
;   [loop start] L_0F1D
L_0F1D:
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        je      L_0F32                          ; 74 0E
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_33                   ; 9A 42 01 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        je      L_0F37                          ; 74 05
;   [conditional branch target (if/else)] L_0F32
L_0F32:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F07                          ; EB D0
;   [conditional branch target (if/else)] L_0F37
L_0F37:
        sub     ax, ax                          ; 2B C0
        jmp     L_0F07                          ; EB CC
;   [loop start] L_0F3B
L_0F3B:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0EF0                          ; 74 AF
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_0F4F                          ; 75 07
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_0EF0                          ; 74 A1
;   [conditional branch target (if/else)] L_0F4F
L_0F4F:
        mov     ax, 0x3ce                       ; B8 CE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 6D 01 00 00 [FIXUP]
        jmp     L_0EF0                          ; EB 95
;   [unconditional branch target] L_0F5B
L_0F5B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_03C4                          ; E8 5D F4
        jmp     L_0EF0                          ; EB 87
;   [unconditional branch target] L_0F69
L_0F69:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_01CE                          ; E8 4F F2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x574], 0             ; 83 3E 74 05 00
        je      L_0F96                          ; 74 03
        jmp     L_0EF0                          ; E9 5A FF
;   [conditional branch target (if/else)] L_0F96
L_0F96:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0FA5                          ; 74 03
        jmp     L_0EF0                          ; E9 4B FF
;   [conditional branch target (if/else)] L_0FA5
L_0FA5:
        cmp     word ptr [0x560], 0             ; 83 3E 60 05 00
        je      L_0FAF                          ; 74 03
        jmp     L_0EF0                          ; E9 41 FF
;   [conditional branch target (if/else)] L_0FAF
L_0FAF:
        mov     word ptr [0x560], 1             ; C7 06 60 05 01 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C54                          ; E8 97 FC
        jmp     L_0EF0                          ; E9 30 FF
;   [loop start] L_0FC0
L_0FC0:
        test    word ptr [bp + 8], 0xfffe       ; F7 46 08 FE FF
        je      L_0FCA                          ; 74 03
        jmp     L_0EF0                          ; E9 26 FF
;   [conditional branch target (if/else)] L_0FCA
L_0FCA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_06F8                          ; E8 25 F7
        jmp     L_0EF0                          ; E9 1A FF
;   [loop start] L_0FD6
L_0FD6:
        cmp     byte ptr [bp + 0xa], 0x80       ; 80 7E 0A 80
        jne     L_1045                          ; 75 69
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0D63                          ; E8 81 FD
        jmp     L_0EF0                          ; E9 0B FF
;   [loop start] L_0FE5
L_0FE5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_04C9                          ; E8 D6 F4
        jmp     L_0EF0                          ; E9 FA FE
;   [unconditional branch target] L_0FF6
L_0FF6:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0FFF                          ; 75 03
        jmp     L_0EF0                          ; E9 F1 FE
;   [conditional branch target (if/else)] L_0FFF
L_0FFF:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1008                          ; 74 03
        jmp     L_0EF0                          ; E9 E8 FE
;   [conditional branch target (if/else)] L_1008
L_1008:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jle     L_101B                          ; 7E 0C
        push    word ptr [0x570]                ; FF 36 70 05
;   [loop start] L_1013
L_1013:
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0EF0                          ; E9 D5 FE
;   [conditional branch target (if/else)] L_101B
L_101B:
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jge     L_1028                          ; 7D 06
        push    word ptr [0x572]                ; FF 36 72 05
        jmp     L_1013                          ; EB EB
;   [conditional branch target (if/else)] L_1028
L_1028:
        push    word ptr [0x574]                ; FF 36 74 05
        jmp     L_1013                          ; EB E5
;   [unconditional branch target] L_102E
L_102E:
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0FC0                          ; 74 8D
        ja      L_105C                          ; 77 27
        cmp     ax, 0x11                        ; 3D 11 00
        jne     L_103D                          ; 75 03
        jmp     L_0F1D                          ; E9 E0 FE
;   [conditional branch target (if/else)] L_103D
L_103D:
        cmp     ax, 0x16                        ; 3D 16 00
        jne     L_1045                          ; 75 03
        jmp     L_0F3B                          ; E9 F6 FE
;   [loop start (also forward branch)] L_1045
L_1045:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F08                          ; E9 AC FE
;   [conditional branch target (if/else)] L_105C
L_105C:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_1064                          ; 75 03
        jmp     L_0FD6                          ; E9 72 FF
;   [conditional branch target (if/else)] L_1064
L_1064:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_106C                          ; 75 03
        jmp     L_0EEA                          ; E9 7E FE
;   [conditional branch target (if/else)] L_106C
L_106C:
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_1045                          ; 72 D4
        cmp     ax, 0x203                       ; 3D 03 02
        ja      L_1079                          ; 77 03
        jmp     L_0FE5                          ; E9 6C FF
;   [conditional branch target (if/else)] L_1079
L_1079:
        jmp     L_1045                          ; EB CA
;   [unconditional branch target] L_107B
L_107B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETSTOCKOBJECT.

;-------------------------------------------------------------------------
; sub_1086   offset=0x1086  size=61 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;
; Near calls (internal): L_113E, L_11FE, L_135D, L_1445, L_14BB
;-------------------------------------------------------------------------
;   [sub-routine] L_1086
L_1086:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x9b0], 0             ; C7 06 B0 09 00 00
        mov     word ptr [0x918], 0             ; C7 06 18 09 00 00
        mov     word ptr [0x916], 0             ; C7 06 16 09 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11FE                          ; E8 51 01
        mov     word ptr [0xa14], 0             ; C7 06 14 0A 00 00
        mov     word ptr [0xa16], 0             ; C7 06 16 0A 00 00
        mov     word ptr [0xa18], 0             ; C7 06 18 0A 00 00
        mov     word ptr [0xa1a], 1             ; C7 06 1A 0A 01 00
        mov     byte ptr [0xa1c], 0             ; C6 06 1C 0A 00
        mov     byte ptr [0xa1d], 0             ; C6 06 1D 0A 00
        mov     byte ptr [0xa1e], 0             ; C6 06 1E 0A 00
        mov     byte ptr [0xa1f], 0             ; C6 06 1F 0A 00
        mov     byte ptr [0xa20], 0             ; C6 06 20 0A 00
        mov     byte ptr [0xa21], 0             ; C6 06 21 0A 00
        mov     byte ptr [0xa22], 0             ; C6 06 22 0A 00
        mov     byte ptr [0xa23], 0             ; C6 06 23 0A 00
        mov     word ptr [0xdb2], 0             ; C7 06 B2 0D 00 00
        mov     word ptr [0x914], 0xb600        ; C7 06 14 09 00 B6
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xb600                      ; B8 00 B6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1445                          ; E8 40 03
        mov     word ptr [0x912], 0xc200        ; C7 06 12 09 00 C2
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xc200                      ; B8 00 C2
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14BB                          ; E8 A4 03
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_135D                          ; E8 3E 02
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 28 0C 00 00 [FIXUP]
        mov     word ptr [0x9b0], ax            ; A3 B0 09
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_113E                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: CREATEFONTINDIRECT, GETTEXTMETRICS.

;-------------------------------------------------------------------------
; sub_113E   offset=0x113E  size=39 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATEFONTINDIRECT
;   GETTEXTMETRICS
;
; Near calls (internal): L_1196, L_11BA
;-------------------------------------------------------------------------
;   [sub-routine] L_113E
L_113E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x9b0]                ; FF 36 B0 09
        call    far _entry_19                   ; 9A F1 11 00 00 [FIXUP]
        mov     ax, 0xa12                       ; B8 12 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEFONTINDIRECT      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x9b0], ax            ; A3 B0 09
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1196                          ; E8 30 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe6e                       ; B8 6E 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11BA                          ; E8 3F 00
        mov     ax, word ptr [0xdb2]            ; A1 B2 0D
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xe6e]            ; 03 06 6E 0E
        add     ax, word ptr [0xe76]            ; 03 06 76 0E
        mov     word ptr [0xc88], ax            ; A3 88 0C
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around SELECTOBJECT(hDC, hObj) -> HANDLE.

;-------------------------------------------------------------------------
; sub_1196   offset=0x1196  size=18 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_1196
L_1196:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x9b0]                ; FF 36 B0 09
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A D3 11 00 00 [FIXUP]
        mov     word ptr [0x910], ax            ; A3 10 09
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around SELECTOBJECT(hDC, hObj) -> HANDLE.

;-------------------------------------------------------------------------
; sub_11BA   offset=0x11BA  size=19 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_11BA
L_11BA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x910], 0             ; 83 3E 10 09 00
        je      L_11D7                          ; 74 0C
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x910]                ; FF 36 10 09
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 2E 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_11D7
L_11D7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_11E2   offset=0x11E2  size=16 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_11E2
L_11E2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x9b0]                ; FF 36 B0 09
        call    far _entry_19                   ; 9A 8A 01 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xa]   HMENU     (1 use)
;     [bp-0x10]   HMENU     (1 use)

; Description (heuristic):
;   Mixed routine using: GETATOMNAME, CHANGEMENU, CREATEMENU (+1 more).

;-------------------------------------------------------------------------
; sub_11FE   offset=0x11FE  size=142 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETATOMNAME
;   CHANGEMENU
;   CREATEMENU(void) -> HMENU
;   GETMENU
;
; Near calls (internal): L_1746
;-------------------------------------------------------------------------
;   [sub-routine] L_11FE
L_11FE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3e                        ; 83 EC 3E
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 6E 13 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0xe98                       ; B8 98 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> CREATEMENU(void) -> HMENU
        call    far USER.CREATEMENU             ; 9A 40 12 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 4D 12 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 0x36                        ; B8 36 00
        push    ax                              ; 50
        mov     ax, 0x10f0                      ; B8 F0 10
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> CREATEMENU(void) -> HMENU
        call    far USER.CREATEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 0x90                        ; B8 90 00
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A E1 12 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1746                          ; E8 EF 04
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_12E8                          ; E9 89 00
;   [loop start] L_125F
L_125F:
        mov     word ptr [bp - 0x3e], 4         ; C7 46 C2 04 00
        mov     byte ptr [bp - 3], 0            ; C6 46 FD 00
        mov     byte ptr [bp - 4], 0x30         ; C6 46 FC 30
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x94c]       ; 8B 87 4C 09
        jmp     L_129D                          ; EB 26
;   [loop start] L_1277
L_1277:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     si, word ptr [bp - 0x3e]        ; 8B 76 C2
        dec     word ptr [bp - 0x3e]            ; FF 4E C2
        mov     ax, cx                          ; 8B C1
        mul     word ptr [bp - 0x14]            ; F7 66 EC
        mov     cl, byte ptr [bp - 0xe]         ; 8A 4E F2
        sub     cl, al                          ; 2A C8
        add     cl, 0x30                        ; 80 C1 30
        mov     byte ptr [bp + si - 8], cl      ; 88 4A F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
;   [unconditional branch target] L_129D
L_129D:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_1277                          ; 75 D3
        cmp     word ptr [bp - 0x3e], 4         ; 83 7E C2 04
        je      L_12AD                          ; 74 03
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
;   [conditional branch target (if/else)] L_12AD
L_12AD:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     si, word ptr [bp - 0x3e]        ; 8B 76 C2
        lea     ax, [bp + si - 8]               ; 8D 42 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ah, 0xc2                        ; 80 C4 C2
        push    ax                              ; 50
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jle     L_12DA                          ; 7E 12
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_12DA                          ; 75 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_12DC                          ; EB 02
;   [conditional branch target (if/else)] L_12DA
L_12DA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_12DC
L_12DC:
        or      ah, 1                           ; 80 CC 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 42 13 00 00 [FIXUP]
        inc     word ptr [bp - 0xc]             ; FF 46 F4
;   [unconditional branch target] L_12E8
L_12E8:
        mov     ax, word ptr [0x916]            ; A1 16 09
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_12F3                          ; 7D 03
        jmp     L_125F                          ; E9 6C FF
;   [conditional branch target (if/else)] L_12F3
L_12F3:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_1349                          ; EB 4F
;   [loop start] L_12FA
L_12FA:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x9b2]           ; FF B7 B2 09
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x27                        ; B8 27 00
        push    ax                              ; 50
        call    far KERNEL.GETATOMNAME          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ah, 0xb6                        ; 80 C4 B6
        push    ax                              ; 50
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jle     L_133B                          ; 7E 12
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_133B                          ; 75 05
        mov     ax, 0x20                        ; B8 20 00
        jmp     L_133D                          ; EB 02
;   [conditional branch target (if/else)] L_133B
L_133B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_133D
L_133D:
        or      ah, 1                           ; 80 CC 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 07 01 00 00 [FIXUP]
        inc     word ptr [bp - 0xc]             ; FF 46 F4
;   [unconditional branch target] L_1349
L_1349:
        mov     ax, word ptr [0x918]            ; A1 18 09
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_12FA                          ; 7C A9
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Thin wrapper around GETMENU.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_135D   offset=0x135D  size=27 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_135D
L_135D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 64 14 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0xa1a], 1             ; 83 3E 1A 0A 01
        jne     L_1398                          ; 75 1C
        cmp     byte ptr [0xa1c], 0             ; 80 3E 1C 0A 00
        jne     L_1398                          ; 75 15
        cmp     byte ptr [0xa1d], 0             ; 80 3E 1D 0A 00
        jne     L_1398                          ; 75 0E
        cmp     byte ptr [0xa1e], 0             ; 80 3E 1E 0A 00
        jne     L_1398                          ; 75 07
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        je      L_13A3                          ; 74 0B
;   [conditional branch target (if/else)] L_1398
L_1398:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_13AD                          ; EB 0A
; Description (heuristic):
;   Mixed routine using: CHECKMENUITEM.

;-------------------------------------------------------------------------
; sub_13A3   offset=0x13A3  size=62 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_13A3
L_13A3:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
;   [unconditional branch target] L_13AD
L_13AD:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A CA 13 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        cmp     word ptr [0xa1a], 1             ; 83 3E 1A 0A 01
        je      L_13C6                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13C8                          ; EB 02
;   [conditional branch target (if/else)] L_13C6
L_13C6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_13C8
L_13C8:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A E5 13 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        cmp     byte ptr [0xa1c], 0             ; 80 3E 1C 0A 00
        je      L_13E1                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13E3                          ; EB 02
;   [conditional branch target (if/else)] L_13E1
L_13E1:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_13E3
L_13E3:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 00 14 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        cmp     byte ptr [0xa1d], 0             ; 80 3E 1D 0A 00
        je      L_13FC                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13FE                          ; EB 02
;   [conditional branch target (if/else)] L_13FC
L_13FC:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_13FE
L_13FE:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 1B 14 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x53                        ; B8 53 00
        push    ax                              ; 50
        cmp     byte ptr [0xa1e], 0             ; 80 3E 1E 0A 00
        je      L_1417                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_1419                          ; EB 02
;   [conditional branch target (if/else)] L_1417
L_1417:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1419
L_1419:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 36 14 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x52                        ; B8 52 00
        push    ax                              ; 50
        cmp     word ptr [0xdb2], 0             ; 83 3E B2 0D 00
        je      L_1432                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_1434                          ; EB 02
;   [conditional branch target (if/else)] L_1432
L_1432:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1434
L_1434:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 27 0E 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HMENU     (1 use)

; Description (heuristic):
;   Mixed routine using: GETATOMNAME, CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_1445   offset=0x1445  size=51 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETATOMNAME
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_1445
L_1445:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        cmp     word ptr [0x918], si            ; 39 36 18 09
        jbe     L_14AF                          ; 76 4F
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A B0 0D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x914]                ; FF 36 14 09
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 87 14 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x914], ax            ; A3 14 09
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A EA 14 00 00 [FIXUP]
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x9b2]           ; FF B7 B2 09
        mov     ax, 0xa24                       ; B8 24 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far KERNEL.GETATOMNAME          ; 9A 0D 13 00 00 [FIXUP]
        mov     bl, byte ptr [bp + 6]           ; 8A 5E 06
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0x91a]       ; 8A 87 1A 09
        mov     byte ptr [0xa1f], al            ; A2 1F 0A
;   [conditional branch target (if/else)] L_14AF
L_14AF:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HMENU     (1 use)

; Description (heuristic):
;   Mixed routine using: GETDEVICECAPS, CHECKMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_14BB   offset=0x14BB  size=121 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;
; Near calls (internal): L_15D7, L_165F
;-------------------------------------------------------------------------
;   [sub-routine] L_14BB
L_14BB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        cmp     word ptr [0x916], si            ; 39 36 16 09
        jbe     L_150C                          ; 76 36
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 10 12 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x912]                ; FF 36 12 09
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FD 14 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x912], ax            ; A3 12 09
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A AF 13 00 00 [FIXUP]
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x94c]       ; 8B 87 4C 09
        mov     word ptr [0xa12], ax            ; A3 12 0A
;   [conditional branch target (if/else)] L_150C
L_150C:
        pop     si                              ; 5E
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     al, byte ptr es:[bx + 0xd]      ; 26 8A 47 0D
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_15D7                          ; E8 99 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    L_165F                          ; E8 14 01
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx]            ; 26 8B 37
        push    si                              ; 56
        ;   ^ arg hDC
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 64 15 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    si                              ; 56
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    word ptr [bp - 0xc], 0x100      ; F7 46 F4 00 01
        je      L_159A                          ; 74 1A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_1587
L_1587:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jg      L_15C8                          ; 7F 39
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_165F                          ; E8 CA 00
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1587                          ; EB ED
;   [conditional branch target (if/else)] L_159A
L_159A:
        mov     word ptr [bp - 0xa], 2          ; C7 46 F6 02 00
        jmp     L_15BD                          ; EB 1C
;   [loop start] L_15A1
L_15A1:
        cmp     word ptr [bp - 0xa], 8          ; 83 7E F6 08
        jle     L_15AD                          ; 7E 06
        test    byte ptr [bp - 0xc], 0x80       ; F6 46 F4 80
        je      L_15C8                          ; 74 1B
;   [conditional branch target (if/else)] L_15AD
L_15AD:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_165F                          ; E8 A5 00
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_15BD
L_15BD:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [bp - 6]               ; F7 6E FA
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jle     L_15A1                          ; 7E D9
;   [conditional branch target (if/else)] L_15C8
L_15C8:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Mixed routine using: ADDATOM, FINDATOM.

;-------------------------------------------------------------------------
; sub_15D7   offset=0x15D7  size=49 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ADDATOM
;   FINDATOM
;-------------------------------------------------------------------------
;   [sub-routine] L_15D7
L_15D7:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        cmp     word ptr [0x918], 0x19          ; 83 3E 18 09 19
        jge     L_1658                          ; 7D 73
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_1611                          ; 75 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1658                          ; 74 4F
        mov     si, word ptr [0x918]            ; 8B 36 18 09
        shl     si, 1                           ; D1 E6
        jmp     L_1649                          ; EB 38
;   [conditional branch target (if/else)] L_1611
L_1611:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_1632                          ; EB 1A
;   [loop start] L_1618
L_1618:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [si + 0x9b2], ax       ; 39 84 B2 09
        jne     L_162F                          ; 75 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [si + 0x91a], ax       ; 39 84 1A 09
        je      L_163A                          ; 74 0B
;   [conditional branch target (if/else)] L_162F
L_162F:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_1632
L_1632:
        mov     ax, word ptr [0x918]            ; A1 18 09
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_1618                          ; 7C DE
;   [conditional branch target (if/else)] L_163A
L_163A:
        mov     ax, word ptr [0x918]            ; A1 18 09
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_1658                          ; 7C 16
        mov     si, ax                          ; 8B F0
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [unconditional branch target] L_1649
L_1649:
        mov     word ptr [si + 0x9b2], ax       ; 89 84 B2 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [si + 0x91a], ax       ; 89 84 1A 09
        inc     word ptr [0x918]                ; FF 06 18 09
;   [error/early exit] L_1658
L_1658:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: ENUMFONTS, FREEPROCINSTANCE, MAKEPROCINSTANCE.

;-------------------------------------------------------------------------
; sub_165F   offset=0x165F  size=89 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENUMFONTS
;   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;-------------------------------------------------------------------------
;   [sub-routine] L_165F
L_165F:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_167E                          ; EB 11
;   [loop start] L_166D
L_166D:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx + 0x94c], ax       ; 39 87 4C 09
        jge     L_1686                          ; 7D 0B
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_167E
L_167E:
        mov     ax, word ptr [0x916]            ; A1 16 09
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_166D                          ; 7C E7
;   [conditional branch target (if/else)] L_1686
L_1686:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx + 0x94c], ax       ; 39 87 4C 09
        jne     L_169C                          ; 75 08
        mov     ax, word ptr [0x916]            ; A1 16 09
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_16DF                          ; 7C 43
;   [conditional branch target (if/else)] L_169C
L_169C:
        mov     ax, word ptr [0x916]            ; A1 16 09
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_16BA                          ; EB 16
;   [loop start] L_16A4
L_16A4:
        cmp     word ptr [bp - 4], 0x32         ; 83 7E FC 32
        jge     L_16B7                          ; 7D 0D
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x94a]       ; 8B 84 4A 09
        mov     word ptr [si + 0x94c], ax       ; 89 84 4C 09
;   [conditional branch target (if/else)] L_16B7
L_16B7:
        dec     word ptr [bp - 4]               ; FF 4E FC
;   [unconditional branch target] L_16BA
L_16BA:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jg      L_16A4                          ; 7F E2
        cmp     word ptr [0x916], 0x32          ; 83 3E 16 09 32
        jge     L_16CD                          ; 7D 04
        inc     word ptr [0x916]                ; FF 06 16 09
;   [conditional branch target (if/else)] L_16CD
L_16CD:
        cmp     word ptr [bp - 2], 0x32         ; 83 7E FE 32
        jge     L_16DF                          ; 7D 0C
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0x94c], ax       ; 89 87 4C 09
;   [error/early exit] L_16DF
L_16DF:
        pop     si                              ; 5E
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
        sub     sp, 8                           ; 83 EC 08
        mov     ax, OFFSET _entry_12            ; B8 8C 17 [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA 8F 17 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 98 17 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    es                              ; 06
        push    bx                              ; 53
        call    far GDI.ENUMFONTS               ; 9A D0 17 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A DE 17 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xc]   LPVOID    (1 use)
;     [bp-0xe]   HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: ENUMFONTS, FREEPROCINSTANCE, GLOBALALLOC (+6 more).

;-------------------------------------------------------------------------
; sub_1746   offset=0x1746  size=74 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ENUMFONTS
;   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOCKSEGMENT
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   UNLOCKSEGMENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1746
L_1746:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_1770                          ; 74 0E
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_1782                          ; EB 12
;   [conditional branch target (if/else)] L_1770
L_1770:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 8]                    ; 8D 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ss         ; 8C 56 F6
;   [unconditional branch target] L_1782
L_1782:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, OFFSET _entry_12            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A B4 17 00 00 [FIXUP]
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
        mov     ax, OFFSET _entry_13            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_13            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 76 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.ENUMFONTS               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A E9 17 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A 9C 0D 00 00 [FIXUP]
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_1805                          ; 74 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_180E                          ; EB 09
;   [conditional branch target (if/else)] L_1805
L_1805:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_180E
L_180E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   HDC       (1 use)

; Description (heuristic):
;   Thin wrapper around GETDC(hWnd) -> HDC.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1817   offset=0x1817  size=26 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;
; Near calls (internal): L_19D0
;-------------------------------------------------------------------------
;   [sub-routine] L_1817
L_1817:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x83a], -1            ; 83 3E 3A 08 FF
        je      L_188F                          ; 74 64
        dec     word ptr [0x83a]                ; FF 0E 3A 08
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_1857                          ; 75 21
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 74 18 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x67                        ; B8 67 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19D0                          ; E8 83 01
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_111                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1884                          ; EB 2D
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0x4]   HDC       (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): GETDC, RELEASEDC.

;-------------------------------------------------------------------------
; sub_1857   offset=0x1857  size=26 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1914, L_2891
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1857
L_1857:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x66                        ; B8 66 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1914                          ; E8 B1 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_38                   ; 9A F8 18 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2891                          ; E8 21 10
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A BD 18 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    far _entry_110                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1884
L_1884:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A E2 18 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_188F
L_188F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (2 uses)
;   Locals:
;     [bp-0x4]   HDC       (2 uses)

; Description (heuristic):
;   Small helper using 2 API(s): GETDC, RELEASEDC.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_189A   offset=0x189A  size=30 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_19D0
;-------------------------------------------------------------------------
;   [sub-routine] L_189A
L_189A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x83a], 1             ; 83 3E 3A 08 01
        je      L_1909                          ; 74 5B
        inc     word ptr [0x83a]                ; FF 06 3A 08
        cmp     word ptr [0x83a], 0             ; 83 3E 3A 08 00
        jne     L_18E8                          ; 75 2F
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A BB 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x66                        ; B8 66 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19D0                          ; E8 00 01
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A CD 0B 00 00 [FIXUP]
        jmp     L_1909                          ; EB 21
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_18E8   offset=0x18E8  size=19 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1914, L_2891
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_18E8
L_18E8:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x67                        ; B8 67 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1914                          ; E8 20 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_38                   ; 9A A7 0B 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2891                          ; E8 90 0F
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_1909
L_1909:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)
;   Locals:
;     [bp-0x4]   HMENU     (3 uses)

; Description (heuristic):
;   Mixed routine using: ENABLEMENUITEM, GETMENU, GETPARENT.

;-------------------------------------------------------------------------
; sub_1914   offset=0x1914  size=75 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;   GETPARENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1914
L_1914:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETPARENT              ; 9A E1 19 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A E7 19 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 4B 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 61 19 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x67         ; 83 7E 06 67
        jne     L_1975                          ; 75 20
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 71 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2b                        ; B8 2B 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 81 19 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1975
L_1975:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 91 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A A1 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A B1 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A C1 19 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A F6 19 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)
;   Locals:
;     [bp-0x4]   HMENU     (3 uses)

; Description (heuristic):
;   Mixed routine using: ENABLEMENUITEM, GETMENU, GETPARENT.

;-------------------------------------------------------------------------
; sub_19D0   offset=0x19D0  size=77 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;   GETPARENT
;-------------------------------------------------------------------------
;   [sub-routine] L_19D0
L_19D0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A DA 14 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 05 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 1A 1A 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x67         ; 83 7E 06 67
        jne     L_1A2D                          ; 75 1E
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 29 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2b                        ; B8 2B 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 38 1A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1A2D
L_1A2D:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 47 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 56 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 65 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 7B 1A 00 00 [FIXUP]
        cmp     word ptr [0xe5e], 0             ; 83 3E 5E 0E 00
        je      L_1A7F                          ; 74 0F
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A F1 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1A7F
L_1A7F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HMENU     (9 uses)

; Description (heuristic):
;   Mixed routine using: ENABLEMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_1A8A   offset=0x1A8A  size=106 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_1A8A
L_1A8A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 31 1B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A BA 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A C9 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A D8 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A E7 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x31                        ; B8 31 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A F6 1A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 05 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 41 1B 00 00 [FIXUP]
        mov     word ptr [0x564], 1             ; C7 06 64 05 01 00
        mov     word ptr [0x56c], 1             ; C7 06 6C 05 01 00
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A 0C 1D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 50 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 5F 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 6E 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 1D 1D 00 00 [FIXUP]
        mov     word ptr [0x568], 1             ; C7 06 68 05 01 00
        mov     word ptr [0x56c], 1             ; C7 06 6C 05 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_1B89   offset=0x1B89  size=180 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_1B89
L_1B89:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_1BA7                          ; 75 0A
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_1BA7                          ; 75 03
        jmp     L_1D8D                          ; E9 E6 01
;   [conditional branch target (if/else)] L_1BA7
L_1BA7:
        cmp     word ptr [0x1170], 0            ; 83 3E 70 11 00
        jne     L_1BB1                          ; 75 03
        jmp     L_1D08                          ; E9 57 01
;   [conditional branch target (if/else)] L_1BB1
L_1BB1:
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jge     L_1BBB                          ; 7D 03
        jmp     L_1CD6                          ; E9 1B 01
;   [conditional branch target (if/else)] L_1BBB
L_1BBB:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A D3 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_1C37                          ; 74 69
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 3C 1C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
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
        call    far GDI.BITBLT                  ; 9A 65 1C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 6D 1C 00 00 [FIXUP]
        cmp     word ptr [0x566], 0             ; 83 3E 66 05 00
        jne     L_1C12                          ; 75 03
        jmp     L_1CAB                          ; E9 99 00
;   [conditional branch target (if/else)] L_1C12
L_1C12:
        push    word ptr [0xba8]                ; FF 36 A8 0B
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 20 1C 00 00 [FIXUP]
        push    word ptr [0x10e6]               ; FF 36 E6 10
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF 17 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x88e], ax            ; A3 8E 08
        mov     word ptr [0x892], ax            ; A3 92 08
        mov     word ptr [0x88c], ax            ; A3 8C 08
        mov     word ptr [0x890], ax            ; A3 90 08
        mov     word ptr [0x566], ax            ; A3 66 05
        jmp     L_1CAB                          ; EB 74
;   [conditional branch target (if/else)] L_1C37
L_1C37:
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 76 1C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 9F 1C 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A A7 1C 00 00 [FIXUP]
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A DB 1D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A C8 1C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A D0 1C 00 00 [FIXUP]
;   [unconditional branch target] L_1CAB
L_1CAB:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCSrc
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
        call    far GDI.BITBLT                  ; 9A 19 1E 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A E5 0B 00 00 [FIXUP]
        jmp     L_1CEF                          ; EB 19
;   [unconditional branch target] L_1CD6
L_1CD6:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_1CE7                          ; 74 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_72                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1CEF                          ; EB 08
;   [conditional branch target (if/else)] L_1CE7
L_1CE7:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1CEF
L_1CEF:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_1CFF                          ; 74 09
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_19                   ; 9A 04 1D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1CFF
L_1CFF:
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_19                   ; 9A 4D 11 00 00 [FIXUP]
;   [unconditional branch target] L_1D08
L_1D08:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 2B 19 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 2D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 4D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 5D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x31                        ; B8 31 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 6D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 7D 1D 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMenu
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3B 19 00 00 [FIXUP]
        mov     word ptr [0x564], 0             ; C7 06 64 05 00 00
        mov     word ptr [0x568], 0             ; C7 06 68 05 00 00
;   [unconditional branch target] L_1D8D
L_1D8D:
        mov     word ptr [0x56c], 0             ; C7 06 6C 05 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: BITBLT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1D9E   offset=0x1D9E  size=44 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_1D9E
L_1D9E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_1DBC                          ; 75 0A
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_1DBC                          ; 75 03
        jmp     L_1EB4                          ; E9 F8 00
;   [conditional branch target (if/else)] L_1DBC
L_1DBC:
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jge     L_1DD6                          ; 7D 13
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_1DD1                          ; 74 07
        call    far _entry_116                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1DD6                          ; EB 05
;   [conditional branch target (if/else)] L_1DD1
L_1DD1:
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_1DD6
L_1DD6:
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A E7 1D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A D6 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_1E1F                          ; 74 2A
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCSrc
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg xSrc
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 76 02 00 00 [FIXUP]
        jmp     L_1E7D                          ; EB 5E
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HDC       (2 uses)
;     [bp-0x6]   HDC       (3 uses)
;     [bp-0xa]   HDC       (1 use)

; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_1E1F   offset=0x1E1F  size=56 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   GETPARENT
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1B89
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1E1F
L_1E1F:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCSrc
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg xSrc
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 71 1E 00 00 [FIXUP]
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A C5 1F 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A F8 1F 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 81 1E 00 00 [FIXUP]
;   [unconditional branch target] L_1E7D
L_1E7D:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 89 1E 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 37 20 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 5B 1F 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 25 19 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B89                          ; E8 E0 FC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 91 1F 00 00 [FIXUP]
;   [unconditional branch target] L_1EB4
L_1EB4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: CLOSECLIPBOARD, OPENCLIPBOARD.

;-------------------------------------------------------------------------
; sub_1EBF   offset=0x1EBF  size=32 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CLOSECLIPBOARD
;   OPENCLIPBOARD
;
; Near calls (internal): L_1D9E, L_1F01, L_285E
;-------------------------------------------------------------------------
;   [sub-routine] L_1EBF
L_1EBF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.OPENCLIPBOARD          ; 9A 12 1F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1EE1                          ; 75 0C
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        call    L_285E                          ; E8 7F 09
        jmp     L_1EF6                          ; EB 15
;   [conditional branch target (if/else)] L_1EE1
L_1EE1:
        call    far USER.CLOSECLIPBOARD         ; 9A 58 20 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F01                          ; E8 13 00
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D9E                          ; E8 A8 FE
;   [unconditional branch target] L_1EF6
L_1EF6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_1F01   offset=0x1F01  size=122 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   DELETEDC(HDC hDC) -> BOOL
;   MULDIV
;   SETBITMAPDIMENSION
;   CLOSECLIPBOARD
;   EMPTYCLIPBOARD
;   GETDC(HWND hWnd) -> HDC
;   OPENCLIPBOARD
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCLIPBOARDDATA
;
; Near calls (internal): L_285E
;-------------------------------------------------------------------------
;   [sub-routine] L_1F01
L_1F01:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.OPENCLIPBOARD          ; 9A 87 20 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1F27                          ; 75 0D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    L_285E                          ; E8 3A 09
        jmp     L_205C                          ; E9 35 01
;   [conditional branch target (if/else)] L_1F27
L_1F27:
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_1F3D                          ; 75 0A
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_1F3D                          ; 75 03
        jmp     L_2057                          ; E9 1A 01
;   [conditional branch target (if/else)] L_1F3D
L_1F3D:
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jge     L_1F57                          ; 7D 13
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_1F52                          ; 74 07
        call    far _entry_116                  ; 9A CB 1D 00 00 [FIXUP]
        jmp     L_1F57                          ; EB 05
;   [conditional branch target (if/else)] L_1F52
L_1F52:
        call    far _entry_115                  ; 9A D2 1D 00 00 [FIXUP]
;   [branch target] L_1F57
L_1F57:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 3A 18 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xdaa]                ; FF 36 AA 0D
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        call    far GDI.MULDIV                  ; 9A 83 1F 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [0xdbe]                ; FF 36 BE 0D
        push    word ptr [0xc76]                ; FF 36 76 0C
        call    far GDI.MULDIV                  ; 9A EC 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 8B 18 00 00 [FIXUP]
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A 93 21 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_1FB5                          ; 75 03
        jmp     L_2057                          ; E9 A2 00
;   [conditional branch target (if/else)] L_1FB5
L_1FB5:
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far GDI.SETBITMAPDIMENSION      ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_27                   ; 9A D1 1F 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 08 20 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
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
        call    far GDI.BITBLT                  ; 9A 2F 20 00 00 [FIXUP]
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_203B                          ; 74 38
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A C0 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x226                       ; B8 26 02
        mov     dx, 0xbb                        ; BA BB 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FC 1B 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 4B 20 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_203B
L_203B:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 53 20 00 00 [FIXUP]
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 04 1C 00 00 [FIXUP]
;   [unconditional branch target] L_2057
L_2057:
        call    far USER.CLOSECLIPBOARD         ; 9A 8A 0E 00 00 [FIXUP]
;   [unconditional branch target] L_205C
L_205C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Drawing routine (5 GDI APIs).
;   Acquires a device context, draws, releases.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_2067   offset=0x2067  size=533 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   DELETEDC(HDC hDC) -> BOOL
;   GETBITMAPDIMENSION
;   GETOBJECT
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   MULDIV
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   PLAYMETAFILE
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETMAPMODE(HDC hDC, INT iMode) -> INT
;   SETVIEWPORTEXT
;   SETWINDOWEXT
;   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   COPYRECT
;   GETCLIPBOARDDATA
;   GETDC(HWND hWnd) -> HDC
;   GETPARENT
;   OPENCLIPBOARD
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_1A8A, L_261F, L_26FE, L_285E, L_2891
;-------------------------------------------------------------------------
;   [sub-routine] L_2067
L_2067:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x40                        ; 83 EC 40
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_38                   ; 9A 67 18 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2891                          ; E8 0E 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.OPENCLIPBOARD          ; 9A 57 0E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_209C                          ; 75 0D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_285E                          ; E8 C5 07
        jmp     L_2612                          ; E9 76 05
;   [conditional branch target (if/else)] L_209C
L_209C:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        jne     L_20AF                          ; 75 03
        jmp     L_22E4                          ; E9 35 02
;   [conditional branch target (if/else)] L_20AF
L_20AF:
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far GDI.GETBITMAPDIMENSION      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        or      ax, dx                          ; 0B C2
        je      L_2153                          ; 74 77
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0xdaa]                ; F7 2E AA 0D
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 03 21 00 00 [FIXUP]
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [0xc76]                ; FF 36 76 0C
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0xdbe]                ; F7 2E BE 0D
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 32 00 00 00 [FIXUP]
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x40]        ; 8B 4E C0
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_2126                          ; 75 03
        inc     word ptr [bp - 0x22]            ; FF 46 DE
;   [conditional branch target (if/else)] L_2126
L_2126:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        imul    word ptr [bp - 0x22]            ; F7 6E DE
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        cdq                                     ; 99
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_214B                          ; 75 03
        inc     word ptr [bp - 0x22]            ; FF 46 DE
;   [conditional branch target (if/else)] L_214B
L_214B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [bp - 0x22]            ; F7 6E DE
        jmp     L_215C                          ; EB 09
;   [conditional branch target (if/else)] L_2153
L_2153:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_215C
L_215C:
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [0xbc6], ax            ; 39 06 C6 0B
        jg      L_216B                          ; 7F 03
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
;   [conditional branch target (if/else)] L_216B
L_216B:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [0xbc8], ax            ; 39 06 C8 0B
        jg      L_217A                          ; 7F 03
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
;   [conditional branch target (if/else)] L_217A
L_217A:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1170], ax           ; A3 70 11
        or      ax, ax                          ; 0B C0
        jne     L_21A1                          ; 75 03
        jmp     L_25D3                          ; E9 32 04
;   [conditional branch target (if/else)] L_21A1
L_21A1:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xdb6]            ; 03 06 B6 0D
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 67 24 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x10ee], ax           ; A3 EE 10
        mov     word ptr [0x10ec], ax           ; A3 EC 10
        mov     word ptr [0x10ea], ax           ; A3 EA 10
        mov     word ptr [0x10e8], ax           ; A3 E8 10
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far _entry_27                   ; 9A FE 21 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 91 23 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xDest
        push    ax                              ; 50
        ;   ^ arg yDest
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg wDest
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg hDest
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        push    word ptr [bp - 0x40]            ; FF 76 C0
        ;   ^ arg wSrc
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hSrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_223D                          ; 75 08
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_226A                          ; 74 2D
;   [conditional branch target (if/else)] L_223D
L_223D:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_261F                          ; E8 C1 03
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
;   [conditional branch target (if/else)] L_226A
L_226A:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A B8 22 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 41 23 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    ax                              ; 50
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
;   [loop start] L_228C
L_228C:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A DE 24 00 00 [FIXUP]
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far _entry_72                   ; 9A E1 1C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 5B 23 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 0A 24 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A D1 22 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_48                   ; 9A 82 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A 9C 1E 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A8A                          ; E8 AF F7
;   [loop start] L_22DB
L_22DB:
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        jmp     L_260D                          ; E9 29 03
;   [unconditional branch target] L_22E4
L_22E4:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A 06 25 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_22F7                          ; 75 03
        jmp     L_2501                          ; E9 0A 02
;   [conditional branch target (if/else)] L_22F7
L_22F7:
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 64 17 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        lea     di, [bp - 0x34]                 ; 8D 7E CC
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A F7 17 00 00 [FIXUP]
        cmp     word ptr [bp - 0x34], 7         ; 83 7E CC 07
        je      L_2326                          ; 74 06
        cmp     word ptr [bp - 0x34], 8         ; 83 7E CC 08
        jne     L_2331                          ; 75 0B
;   [conditional branch target (if/else)] L_2326
L_2326:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        jmp     L_2368                          ; EB 37
;   [conditional branch target (if/else)] L_2331
L_2331:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A E6 24 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_26FE                          ; E8 AA 03
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A B0 1E 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [unconditional branch target] L_2368
L_2368:
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A A7 1F 00 00 [FIXUP]
        mov     word ptr [0x1170], ax           ; A3 70 11
        or      ax, ax                          ; 0B C0
        jne     L_238F                          ; 75 03
        jmp     L_25D3                          ; E9 44 02
;   [conditional branch target (if/else)] L_238F
L_238F:
        push    ax                              ; 50
        call    far _entry_27                   ; 9A 7E 24 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 24 11 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A A8 11 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 4A 0C 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        push    word ptr [bp - 0x34]            ; FF 76 CC
        ;   ^ arg iMode
        ; --> SETMAPMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETMAPMODE              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        cmp     ax, 7                           ; 3D 07 00
        je      L_23DD                          ; 74 07
        cmp     ax, 8                           ; 3D 08 00
        je      L_23EB                          ; 74 10
        jmp     L_23FB                          ; EB 1E
;   [conditional branch target (if/else)] L_23DD
L_23DD:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far GDI.SETWINDOWEXT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_23EB
L_23EB:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        call    far GDI.SETVIEWPORTEXT          ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_23FB
L_23FB:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far GDI.PLAYMETAFILE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 79 1E 00 00 [FIXUP]
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [0xbc6], ax            ; 39 06 C6 0B
        jg      L_241A                          ; 7F 03
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
;   [conditional branch target (if/else)] L_241A
L_241A:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [0xbc8], ax            ; 39 06 C8 0B
        jg      L_2429                          ; 7F 03
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
;   [conditional branch target (if/else)] L_2429
L_2429:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xdb6]            ; 03 06 B6 0D
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x10ee], ax           ; A3 EE 10
        mov     word ptr [0x10ec], ax           ; A3 EC 10
        mov     word ptr [0x10ea], ax           ; A3 EA 10
        mov     word ptr [0x10e8], ax           ; A3 E8 10
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 4C 1E 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_2495                          ; 75 08
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_24BE                          ; 74 29
;   [conditional branch target (if/else)] L_2495
L_2495:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_261F                          ; E8 6D 01
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
;   [conditional branch target (if/else)] L_24BE
L_24BE:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 0x10]            ; FF 76 F0
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
        call    far GDI.BITBLT                  ; 9A 43 1E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 91 1E 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    ax                              ; 50
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        jmp     L_228C                          ; E9 8B FD
;   [unconditional branch target] L_2501
L_2501:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A A1 20 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      ax, ax                          ; 0B C0
        jne     L_2514                          ; 75 03
        jmp     L_2603                          ; E9 EF 00
;   [conditional branch target (if/else)] L_2514
L_2514:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     si, ax                          ; 8B F0
        add     si, 2                           ; 83 C6 02
        push    si                              ; 56
        ;   ^ arg nWidth
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A 81 23 00 00 [FIXUP]
        mov     word ptr [0x1170], ax           ; A3 70 11
        or      ax, ax                          ; 0B C0
        jne     L_253D                          ; 75 03
        jmp     L_25D3                          ; E9 96 00
;   [conditional branch target (if/else)] L_253D
L_253D:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [0xbc6]            ; 2B 06 C6 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb6], ax            ; A3 B6 0D
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [0xbc8]            ; 2B 06 C8 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0xdb8], ax            ; A3 B8 0D
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        mov     word ptr [0xdba], ax            ; A3 BA 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        mov     word ptr [0xdbc], ax            ; A3 BC 0D
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A DC 21 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x10ee], ax           ; A3 EE 10
        mov     word ptr [0x10ec], ax           ; A3 EC 10
        mov     word ptr [0x10ea], ax           ; A3 EA 10
        mov     word ptr [0x10e8], ax           ; A3 E8 10
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_53                   ; 9A 8D 09 00 00 [FIXUP]
        cmp     word ptr [0xbc6], 0             ; 83 3E C6 0B 00
        jne     L_25DB                          ; 75 38
        cmp     word ptr [0xbc8], 0             ; 83 3E C8 0B 00
        jne     L_25DB                          ; 75 31
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_19                   ; 9A FB 1C 00 00 [FIXUP]
        cmp     word ptr [0x10e6], 0            ; 83 3E E6 10 00
        je      L_25C3                          ; 74 09
        push    word ptr [0x10e6]               ; FF 36 E6 10
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A CF 25 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_25C3
L_25C3:
        cmp     word ptr [0xba8], 0             ; 83 3E A8 0B 00
        je      L_25D3                          ; 74 09
        push    word ptr [0xba8]                ; FF 36 A8 0B
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 17 1C 00 00 [FIXUP]
;   [branch target] L_25D3
L_25D3:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x25                        ; B8 25 00
        jmp     L_2609                          ; EB 2E
;   [conditional branch target (if/else)] L_25DB
L_25DB:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A F0 25 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_48                   ; 9A C9 22 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A C0 22 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A8A                          ; E8 90 F4
        mov     word ptr [0x566], 1             ; C7 06 66 05 01 00
        jmp     L_22DB                          ; E9 D8 FC
; Description (heuristic):
;   Thin wrapper around CLOSECLIPBOARD.

;-------------------------------------------------------------------------
; sub_2603   offset=0x2603  size=13 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CLOSECLIPBOARD
;
; Near calls (internal): L_285E
;-------------------------------------------------------------------------
;   [unconditional branch target] L_2603
L_2603:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
;   [unconditional branch target] L_2609
L_2609:
        push    ax                              ; 50
        call    L_285E                          ; E8 51 02
;   [unconditional branch target] L_260D
L_260D:
        call    far USER.CLOSECLIPBOARD         ; 9A E2 1E 00 00 [FIXUP]
;   [unconditional branch target] L_2612
L_2612:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: MESSAGEBOX.

;-------------------------------------------------------------------------
; sub_261F   offset=0x261F  size=81 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_261F
L_261F:
        ;   = cProc <130> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        je      L_2639                          ; 74 0C
        cmp     word ptr [0x552], 0             ; 83 3E 52 05 00
        jne     L_2639                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2660                          ; EB 27
;   [conditional branch target (if/else)] L_2639
L_2639:
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 77 28 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc56                       ; B8 56 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 87 28 00 00 [FIXUP]
;   [unconditional branch target] L_2660
L_2660:
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        cmp     ax, 1                           ; 3D 01 00
        je      L_266C                          ; 74 03
        jmp     L_26F8                          ; E9 8C 00
;   [conditional branch target (if/else)] L_266C
L_266C:
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jle     L_2689                          ; 7E 0A
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        sub     ax, word ptr [0xc84]            ; 2B 06 84 0C
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
;   [conditional branch target (if/else)] L_2689
L_2689:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_26A0                          ; 7E 0A
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [0xc8e]            ; 2B 06 8E 0C
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [conditional branch target (if/else)] L_26A0
L_26A0:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        push    ax                              ; 50
        call    far _entry_117                  ; 9A F4 26 00 00 [FIXUP]
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        add     ax, word ptr [0xc84]            ; 03 06 84 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [0xc8e]            ; 03 06 8E 0C
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
;   [fall-through exit] L_26F8
L_26F8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x10                            ; C2 10 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HDC       (4 uses)

; Description (heuristic):
;   Mixed routine using: GETDEVICECAPS.

;-------------------------------------------------------------------------
; sub_26FE   offset=0x26FE  size=43 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;
; Near calls (internal): L_276F
;-------------------------------------------------------------------------
;   [sub-routine] L_26FE
L_26FE:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 1F 27 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 3C 27 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_276F                          ; E8 48 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 49 27 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 57 15 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_276F                          ; E8 1E 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jle     L_2767                          ; 7E 09
        or      ax, ax                          ; 0B C0
        jle     L_2767                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2769                          ; EB 02
;   [error/early exit] L_2767
L_2767:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_2769
L_2769:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (95 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_276F   offset=0x276F  size=95 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_276F
L_276F:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_2788                          ; 75 03
        jmp     L_2851                          ; E9 C9 00
;   [conditional branch target (if/else)] L_2788
L_2788:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 7                           ; 3D 07 00
        jbe     L_2796                          ; 76 03
        jmp     L_2851                          ; E9 BB 00
;   [conditional branch target (if/else)] L_2796
L_2796:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x27d6]       ; 2E FF A7 D6 27
        mov     word ptr [bp - 0xa], 0xa        ; C7 46 F6 0A 00
        jmp     L_27E6                          ; EB 41
        mov     word ptr [bp - 0xa], 0x64       ; C7 46 F6 64 00
        jmp     L_27E6                          ; EB 3A
        mov     word ptr [bp - 0x10], 0xfe      ; C7 46 F0 FE 00
        mov     word ptr [bp - 0xa], 0x3840     ; C7 46 F6 40 38
        jmp     L_27E6                          ; EB 2E
        mov     word ptr [bp - 0x10], 0xfe      ; C7 46 F0 FE 00
        mov     word ptr [bp - 0xa], 0x3e8      ; C7 46 F6 E8 03
        jmp     L_27E6                          ; EB 22
        mov     word ptr [bp - 0x10], 0xfe      ; C7 46 F0 FE 00
        mov     word ptr [bp - 0xa], 0x2710     ; C7 46 F6 10 27
        jmp     L_27E6                          ; EB 16
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_2858                          ; E9 82 00
        shl     byte ptr [bx], 1                ; D0 27
        sahf                                    ; 9E
        daa                                     ; 27
        movsw   word ptr es:[di], word ptr [si] ; A5
        daa                                     ; 27
        mov     ax, 0xc427                      ; B8 27 C4
        daa                                     ; 27
        lodsb   al, byte ptr [si]               ; AC
        daa                                     ; 27
        shl     byte ptr [bx], 1                ; D0 27
        shl     byte ptr [bx], 1                ; D0 27
;   [unconditional branch target] L_27E6
L_27E6:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 00 28 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 17 28 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      dx, dx                          ; 0B D2
        jl      L_2855                          ; 7C 0B
        jg      L_2851                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_2855                          ; 76 04
;   [branch target] L_2851
L_2851:
        sub     ax, ax                          ; 2B C0
        jmp     L_2858                          ; EB 03
;   [error/early exit] L_2855
L_2855:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
;   [fall-through exit] L_2858
L_2858:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Thin wrapper around MESSAGEBOX(hWndOwner, lpszText, lpszTitle, wStyle) -> INT.

;-------------------------------------------------------------------------
; sub_285E   offset=0x285E  size=23 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_285E
L_285E:
        ;   = cProc <128> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x80                        ; 81 EC 80 00
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 83 0C 00 00 [FIXUP]
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 93 0C 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HDC       (2 uses)
;     [bp-0x6]   HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: BITBLT, DELETEDC.

;-------------------------------------------------------------------------
; sub_2891   offset=0x2891  size=41 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_2891
L_2891:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0xbf4], 0             ; 83 3E F4 0B 00
        je      L_28EE                          ; 74 49
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A B6 28 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 6E 29 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
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
        call    far GDI.BITBLT                  ; 9A 9E 29 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A EA 28 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 09 2A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_28EE
L_28EE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)
;   Locals:
;     [bp-0xa]   HDC       (1 use)

; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_28F7   offset=0x28F7  size=222 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_28F7
L_28F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        mov     ax, word ptr [0x56c]            ; A1 6C 05
        neg     ax                              ; F7 D8
        mov     word ptr [0x56c], ax            ; A3 6C 05
        mov     ax, word ptr [0x894]            ; A1 94 08
        neg     ax                              ; F7 D8
        mov     word ptr [0x894], ax            ; A3 94 08
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 76 22 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jge     L_2932                          ; 7D 06
        push    ax                              ; 50
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2932
L_2932:
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_2943                          ; 74 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_72                   ; 9A DA 2A 00 00 [FIXUP]
        jmp     L_2952                          ; EB 0F
;   [conditional branch target (if/else)] L_2943
L_2943:
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        je      L_2952                          ; 74 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_79                   ; 9A EB 1C 00 00 [FIXUP]
;   [branch target] L_2952
L_2952:
        cmp     word ptr [0x3c2], 0             ; 83 3E C2 03 00
        je      L_2961                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_75                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2961
L_2961:
        mov     ax, word ptr [0x582]            ; A1 82 05
        neg     ax                              ; F7 D8
        mov     word ptr [0x582], ax            ; A3 82 05
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 7A 29 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A A1 2A 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A BF 29 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A E0 29 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 01 2A 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDCSrc
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
        call    far GDI.BITBLT                  ; 9A CA 2A 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 11 2A 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A D2 2A 00 00 [FIXUP]
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_2A26                          ; 75 0A
        cmp     word ptr [0x568], 0             ; 83 3E 68 05 00
        jne     L_2A26                          ; 75 03
        jmp     L_2B64                          ; E9 3E 01
;   [conditional branch target (if/else)] L_2A26
L_2A26:
        mov     ax, word ptr [0x10ea]           ; A1 EA 10
        xor     word ptr [0xdb8], ax            ; 31 06 B8 0D
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        xor     word ptr [0x10ea], ax           ; 31 06 EA 10
        mov     ax, word ptr [0x10ea]           ; A1 EA 10
        xor     word ptr [0xdb8], ax            ; 31 06 B8 0D
        mov     ax, word ptr [0x10e8]           ; A1 E8 10
        xor     word ptr [0xdb6], ax            ; 31 06 B6 0D
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        xor     word ptr [0x10e8], ax           ; 31 06 E8 10
        mov     ax, word ptr [0x10e8]           ; A1 E8 10
        xor     word ptr [0xdb6], ax            ; 31 06 B6 0D
        mov     ax, word ptr [0x10ee]           ; A1 EE 10
        xor     word ptr [0xdbc], ax            ; 31 06 BC 0D
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        xor     word ptr [0x10ee], ax           ; 31 06 EE 10
        mov     ax, word ptr [0x10ee]           ; A1 EE 10
        xor     word ptr [0xdbc], ax            ; 31 06 BC 0D
        mov     ax, word ptr [0x10ec]           ; A1 EC 10
        xor     word ptr [0xdba], ax            ; 31 06 BA 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        xor     word ptr [0x10ec], ax           ; 31 06 EC 10
        mov     ax, word ptr [0x10ec]           ; A1 EC 10
        xor     word ptr [0xdba], ax            ; 31 06 BA 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_2AE1                          ; 74 4C
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jle     L_2AD6                          ; 7E 3A
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A ED 2A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
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
        call    far GDI.BITBLT                  ; 9A 16 2B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 1E 2B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2AD6
L_2AD6:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_72                   ; 9A A5 22 00 00 [FIXUP]
        jmp     L_2B64                          ; E9 83 00
;   [conditional branch target (if/else)] L_2AE1
L_2AE1:
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jle     L_2B5C                          ; 7E 74
        push    word ptr [0xc9e]                ; FF 36 9E 0C
        call    far _entry_27                   ; 9A 27 2B 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x326                       ; B8 26 03
        mov     dx, 0x22                        ; BA 22 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 9D 22 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 6E 22 00 00 [FIXUP]
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A F2 21 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    ax                              ; 50
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A DA 28 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A E2 28 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2B5C
L_2B5C:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_79                   ; 9A 4E 29 00 00 [FIXUP]
;   [unconditional branch target] L_2B64
L_2B64:
        cmp     word ptr [0x894], 0             ; 83 3E 94 08 00
        jle     L_2B73                          ; 7E 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_119                  ; 9A 2E 29 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2B73
L_2B73:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A B0 22 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
