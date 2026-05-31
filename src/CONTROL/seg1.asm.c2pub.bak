; ======================================================================
; CONTROL / seg1.asm   (segment 1 of CONTROL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        26
; Total instructions:                 2423
; 
; Classification (pass8):
;   C-origin (high+medium):             18
;   ASM-origin (high+medium):            4
;   Unclear:                             4
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     102 (70 unique)
;   Top:
;        4  MESSAGEBOX
;        3  GETDC
;        3  RELEASEDC
;        3  SETFOCUS
;        3  SETTIMER
;        3  FILLRECT
;        3  INVERTRECT
;        3  SETBKMODE
; ======================================================================
; AUTO-GENERATED from original CONTROL segment 1
; segment_size=6037 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CONTROL_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xc]  HANDLE    (9 uses)

; Description (heuristic):
;   Mixed routine using: CREATEWINDOW, LOADSTRING, MESSAGEBOX.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=144 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <104> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x68                        ; 83 EC 68
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xa6c                       ; B8 6C 0A
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 2B 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 40 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xb12                       ; B8 12 0B
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 55 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0x97a                       ; B8 7A 09
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 6A 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xc8c                       ; B8 8C 0C
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 7F 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xda0                       ; B8 A0 0D
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 94 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A A9 00 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A CA 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        mov     word ptr [0xada], ax            ; A3 DA 0A
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00E9                          ; 74 30
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 52 01 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 3A 01 00 00 [FIXUP]
;   [loop start] L_00E4
L_00E4:
        sub     ax, ax                          ; 2B C0
        jmp     L_0375                          ; E9 8C 02
;   [conditional branch target (if/else)] L_00E9
L_00E9:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0128                          ; 74 33
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x8de], ax            ; A3 DE 08
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
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
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        or      ax, ax                          ; 0B C0
        jne     L_0141                          ; 75 19
;   [conditional branch target (if/else)] L_0128
L_0128:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        mov     ax, 0xa6c                       ; B8 6C 0A
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_030F                          ; E9 CE 01
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xc]  HANDLE    (2 uses)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0141   offset=0x0141  size=369 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEDC(HDC hDC) -> BOOL
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   GETNEARESTCOLOR
;   GETPROFILESTRING
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CHANGEMENU
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   GETDC(HWND hWnd) -> HDC
;   GETMENU
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   GETSUBMENU
;   GETSYSCOLOR
;   GETSYSTEMMENU
;   ISDIALOGMESSAGE
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   POSTQUITMESSAGE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETFOCUS
;   SHOWCURSOR
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_04FF, L_050F, L_0630, L_063C, L_0EDA, L_1438
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0141
L_0141:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A A7 01 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0x140                       ; B8 40 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 8B 01 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A D2 01 00 00 [FIXUP]
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        je      L_01D6                          ; 74 40
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hInstance
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 9F 02 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far USER.GETMENU                ; 9A E7 01 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A 86 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A B7 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01D6
L_01D6:
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    far _entry_23                   ; 9A 1E 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0219                          ; 75 36
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far USER.GETMENU                ; 9A 2A 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMenu
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 05 02 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 15 02 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3B 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0219
L_0219:
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_023F                          ; 75 19
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far USER.GETMENU                ; 9A 7C 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_023F
L_023F:
        mov     ax, 0x31                        ; B8 31 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x27                        ; B8 27 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x36                        ; B8 36 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02BB                          ; 75 43
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02BB
L_02BB:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        ;   ^ arg hWnd
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02FC                          ; EB 34
;   [loop start] L_02C8
L_02C8:
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EDA                          ; E8 08 0C
        or      ax, ax                          ; 0B C0
        jne     L_02FC                          ; 75 26
        push    word ptr [0xa20]                ; FF 36 20 0A
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02FC                          ; 75 14
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_02FC
L_02FC:
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; --> GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02C8                          ; 75 B9
;   [unconditional branch target] L_030F
L_030F:
        cmp     word ptr [0xa02], 0             ; 83 3E 02 0A 00
        je      L_031F                          ; 74 09
        push    word ptr [0xa02]                ; FF 36 02 0A
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 3B 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_031F
L_031F:
        cmp     word ptr [0x724], 0             ; 83 3E 24 07 00
        je      L_032F                          ; 74 09
        push    word ptr [0x724]                ; FF 36 24 07
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_032F
L_032F:
        cmp     word ptr [0x762], 0             ; 83 3E 62 07 00
        je      L_033F                          ; 74 09
        push    word ptr [0x762]                ; FF 36 62 07
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 4B 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_033F
L_033F:
        cmp     word ptr [0xa0a], 0             ; 83 3E 0A 0A 00
        je      L_034F                          ; 74 09
        push    word ptr [0xa0a]                ; FF 36 0A 0A
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 5B 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_034F
L_034F:
        cmp     word ptr [0x9cc], 0             ; 83 3E CC 09 00
        je      L_035F                          ; 74 09
        push    word ptr [0x9cc]                ; FF 36 CC 09
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 6E 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_035F
L_035F:
        cmp     word ptr [0xc7e], 0             ; 83 3E 7E 0C 00
        jne     L_0369                          ; 75 03
        jmp     L_00E4                          ; E9 7B FD
;   [conditional branch target (if/else)] L_0369
L_0369:
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00E4                          ; E9 6F FD
;   [fall-through exit] L_0375
L_0375:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_040B                          ; 74 7B
        jbe     L_0395                          ; 76 03
        jmp     L_04D0                          ; E9 3B 01
;   [conditional branch target (if/else)] L_0395
L_0395:
        cmp     ax, 1                           ; 3D 01 00
        je      L_03A7                          ; 74 0D
        cmp     ax, 2                           ; 3D 02 00
        je      L_03BB                          ; 74 1C
        cmp     ax, 5                           ; 3D 05 00
        je      L_03C8                          ; 74 24
        jmp     L_0488                          ; E9 E1 00
;   [conditional branch target (if/else)] L_03A7
L_03A7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_03B5
L_03B5:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_04F4                          ; E9 39 01
;   [conditional branch target (if/else)] L_03BB
L_03BB:
        call    L_04FF                          ; E8 41 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03B5                          ; EB ED
;   [conditional branch target (if/else)] L_03C8
L_03C8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_050F                          ; E8 38 01
        jmp     L_03B5                          ; EB DC
;   [loop start] L_03D9
L_03D9:
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
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0630                          ; E8 3F 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03B5                          ; EB B5
;   [loop start] L_0400
L_0400:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_063C                          ; E8 33 02
        jmp     L_03B5                          ; EB AA
;   [conditional branch target (if/else)] L_040B
L_040B:
        cmp     word ptr [0xc2a], 0             ; 83 3E 2A 0C 00
        je      L_041A                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_041A
L_041A:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_03B5                          ; 74 95
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_03B5                          ; 75 8F
        push    word ptr [0xc44]                ; FF 36 44 0C
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03B5                          ; EB 84
;   [loop start] L_0431
L_0431:
        push    word ptr [0xa02]                ; FF 36 02 0A
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 1B 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.GETNEARESTCOLOR         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa02], ax            ; A3 02 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        mov     ax, 0x15                        ; B8 15 00
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
        jmp     L_03B5                          ; E9 35 FF
;   [loop start] L_0480
L_0480:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0xc                         ; 3D 0C 00
        je      L_049E                          ; 74 16
;   [loop start (also forward branch)] L_0488
L_0488:
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
        jmp     L_04F4                          ; EB 56
;   [conditional branch target (if/else)] L_049E
L_049E:
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0xb04]                ; FF 36 04 0B
        push    word ptr [0xb02]                ; FF 36 02 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1438                          ; E8 80 0F
        jmp     L_03B5                          ; E9 FA FE
;   [loop start] L_04BB
L_04BB:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_04C4                          ; 75 03
        jmp     L_03B5                          ; E9 F1 FE
;   [conditional branch target (if/else)] L_04C4
L_04C4:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 07 05 00 00 [FIXUP]
        jmp     L_03B5                          ; E9 E5 FE
;   [unconditional branch target] L_04D0
L_04D0:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_04D8                          ; 75 03
        jmp     L_03D9                          ; E9 01 FF
;   [conditional branch target (if/else)] L_04D8
L_04D8:
        cmp     ax, 0x15                        ; 3D 15 00
        jne     L_04E0                          ; 75 03
        jmp     L_0431                          ; E9 51 FF
;   [conditional branch target (if/else)] L_04E0
L_04E0:
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_04BB                          ; 74 D6
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_04ED                          ; 75 03
        jmp     L_0400                          ; E9 13 FF
;   [conditional branch target (if/else)] L_04ED
L_04ED:
        cmp     ax, 0x112                       ; 3D 12 01
        je      L_0480                          ; 74 8E
        jmp     L_0488                          ; EB 94
;   [unconditional branch target] L_04F4
L_04F4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_04FF   offset=0x04FF  size=7 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_04FF
L_04FF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETCARETBLINKTIME, KILLTIMER, MESSAGEBOX (+2 more).

;-------------------------------------------------------------------------
; sub_050F   offset=0x050F  size=108 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETCARETBLINKTIME
;   KILLTIMER
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;   SETTIMER
;-------------------------------------------------------------------------
;   [sub-routine] L_050F
L_050F:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x6d4], ax            ; A3 D4 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x8f2], ax            ; A3 F2 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        je      L_055D                          ; 74 30
        cmp     ax, 1                           ; 3D 01 00
        je      L_053A                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_055D                          ; 74 26
        jmp     L_062A                          ; E9 F0 00
;   [conditional branch target (if/else)] L_053A
L_053A:
        push    word ptr [0xa20]                ; FF 36 20 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A 50 05 00 00 [FIXUP]
        push    word ptr [0xa20]                ; FF 36 20 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3a], 1              ; C7 06 3A 00 01 00
        jmp     L_062A                          ; E9 CD 00
;   [conditional branch target (if/else)] L_055D
L_055D:
        mov     ax, word ptr [0x768]            ; A1 68 07
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x974]            ; A1 74 09
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_0596                          ; 7D 05
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [conditional branch target (if/else)] L_0596
L_0596:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_05A1                          ; 7D 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [conditional branch target (if/else)] L_05A1
L_05A1:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg x
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg y
        push    word ptr [0x768]                ; FF 36 68 07
        ;   ^ arg nWidth
        push    word ptr [0x974]                ; FF 36 74 09
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_062A                          ; 74 68
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_05EC                          ; 75 23
        push    word ptr [0xa20]                ; FF 36 20 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05E7                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05E9                          ; EB 02
;   [conditional branch target (if/else)] L_05E7
L_05E7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05E9
L_05E9:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_05EC
L_05EC:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_060D                          ; 74 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0624                          ; 74 17
;   [conditional branch target (if/else)] L_060D
L_060D:
        push    word ptr [0x73e]                ; FF 36 3E 07
        ;   ^ arg hWndOwner
        mov     ax, 0xb12                       ; B8 12 0B
        push    ds                              ; 1E
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
        call    far USER.MESSAGEBOX             ; 9A E0 00 00 00 [FIXUP]
;   [error/early exit] L_0624
L_0624:
        mov     word ptr [0x3a], 0              ; C7 06 3A 00 00 00
;   [error/early exit] L_062A
L_062A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0630   offset=0x0630  size=6 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0630
L_0630:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Drawing routine (7 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_063C   offset=0x063C  size=540 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   WRITEPROFILESTRING
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CHECKDLGBUTTON
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   FILLRECT
;   GETDC(HWND hWnd) -> HDC
;   GETMENU
;   GETSYSCOLOR
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   INVERTRECT
;   ISDLGBUTTONCHECKED
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   PTINRECT
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCURSOR
;   SETFOCUS
;   SETTIMER
;   SHOWCURSOR
;   SWAPMOUSEBUTTON
;
; Near calls (internal): L_0788, L_0BB1, L_0C86, L_0D06, L_1225, L_1257, L_1438
;-------------------------------------------------------------------------
;   [sub-routine] L_063C
L_063C:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xa                         ; 3D 0A 00
        jbe     L_0650                          ; 76 03
        jmp     L_078D                          ; E9 3D 01
;   [conditional branch target (if/else)] L_0650
L_0650:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x777]        ; 2E FF A7 77 07
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa08]                ; FF 36 08 0A
        push    word ptr [0xa06]                ; FF 36 06 0A
;   [loop start] L_066D
L_066D:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1438                          ; E8 C6 0D
        jmp     L_078D                          ; E9 18 01
        push    word ptr [0x8de]                ; FF 36 DE 08
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x8d0]                ; FF 36 D0 08
        push    word ptr [0x8ce]                ; FF 36 CE 08
        jmp     L_066D                          ; EB E1
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa5e]                ; FF 36 5E 0A
        push    word ptr [0xa5c]                ; FF 36 5C 0A
        jmp     L_066D                          ; EB CA
        push    word ptr [0x8de]                ; FF 36 DE 08
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x818]                ; FF 36 18 08
        push    word ptr [0x816]                ; FF 36 16 08
        jmp     L_066D                          ; EB B3
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 4                           ; B8 04 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa24]                ; FF 36 24 0A
        push    word ptr [0xa22]                ; FF 36 22 0A
        jmp     L_066D                          ; EB 9C
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 7                           ; B8 07 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x978]                ; FF 36 78 09
        push    word ptr [0x976]                ; FF 36 76 09
        jmp     L_066D                          ; EB 85
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 8                           ; B8 08 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x8e4]                ; FF 36 E4 08
        push    word ptr [0x8e2]                ; FF 36 E2 08
        jmp     L_066D                          ; E9 6D FF
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 9                           ; B8 09 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xc1c]                ; FF 36 1C 0C
        push    word ptr [0xc1a]                ; FF 36 1A 0C
        jmp     L_066D                          ; E9 55 FF
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x71a]                ; FF 36 1A 07
        push    word ptr [0x718]                ; FF 36 18 07
        jmp     L_066D                          ; E9 3D FF
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETMENU                ; 9A AF 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMenu
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 59 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0755                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0757                          ; EB 02
;   [conditional branch target (if/else)] L_0755
L_0755:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0757
L_0757:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_078D                          ; EB 2E
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 0xb                         ; B8 0B 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x76c]                ; FF 36 6C 07
        push    word ptr [0x76a]                ; FF 36 6A 07
        jmp     L_066D                          ; E9 F6 FE
        pop     ax                              ; 58
        push    es                              ; 06
        jne     L_0781                          ; 75 06
        mov     word ptr [0x6d1], es            ; 8C 06 D1 06
        call    L_0788                          ; E8 06 00
        pop     es                              ; 07
        xor     byte ptr [bx], al               ; 30 07
        pop     di                              ; 5F
        pop     es                              ; 07
        mov     word ptr [0xba06], ax           ; A3 06 BA
        push    es                              ; 06
        sbb     byte ptr [bx], al               ; 18 07
;   [fall-through exit] L_078D
L_078D:
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_07B0                          ; 74 08
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_07D7                          ; 74 2A
        jmp     L_08C3                          ; E9 13 01
;   [conditional branch target (if/else)] L_07B0
L_07B0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SWAPMOUSEBUTTON        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.SWAPMOUSEBUTTON        ; 9A 42 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x96                        ; B8 96 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
;   [loop start] L_07CC
L_07CC:
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_07D1
L_07D1:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_08C5                          ; E9 EE 00
;   [conditional branch target (if/else)] L_07D7
L_07D7:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_080A                          ; 74 2B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_07E7                          ; 75 03
        jmp     L_08B5                          ; E9 CE 00
;   [conditional branch target (if/else)] L_07E7
L_07E7:
        cmp     ax, 0x96                        ; 3D 96 00
        jne     L_07D1                          ; 75 E5
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x96                        ; B8 96 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 39 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0805                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0807                          ; EB 02
;   [conditional branch target (if/else)] L_0805
L_0805:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0807
L_0807:
        push    ax                              ; 50
        jmp     L_07CC                          ; EB C2
;   [conditional branch target (if/else)] L_080A
L_080A:
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_081D                          ; 75 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 78 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_081D
L_081D:
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
        call    far USER.LOADCURSOR             ; 9A 86 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A 8C 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x96                        ; B8 96 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far USER.SWAPMOUSEBUTTON        ; 9A B5 07 00 00 [FIXUP]
        mov     ax, 0x54                        ; B8 54 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x43                        ; B8 43 00
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_085B                          ; 74 05
        mov     ax, 0x3c                        ; B8 3C 00
        jmp     L_085E                          ; EB 03
;   [conditional branch target (if/else)] L_085B
L_085B:
        mov     ax, 0x40                        ; B8 40 00
;   [unconditional branch target] L_085E
L_085E:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_087C                          ; 75 0B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc2a], ax            ; A3 2A 0C
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 16 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_087C
L_087C:
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
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_08A0                          ; 75 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_08B5                          ; EB 15
;   [conditional branch target (if/else)] L_08A0
L_08A0:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x5c                        ; B8 5C 00
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 79 04 00 00 [FIXUP]
;   [unconditional branch target] L_08B5
L_08B5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A E9 08 00 00 [FIXUP]
        jmp     L_07D1                          ; E9 0E FF
;   [unconditional branch target] L_08C3
L_08C3:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_08C5
L_08C5:
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
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_08F2                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_08ED
L_08ED:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_08FB                          ; EB 09
;   [conditional branch target (if/else)] L_08F2
L_08F2:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_08ED                          ; 74 F4
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_08FB
L_08FB:
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
        sub     sp, 0x24                        ; 83 EC 24
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_091E                          ; 75 03
        jmp     L_0B20                          ; E9 02 02
;   [conditional branch target (if/else)] L_091E
L_091E:
        jbe     L_0923                          ; 76 03
        jmp     L_0B7B                          ; E9 58 02
;   [conditional branch target (if/else)] L_0923
L_0923:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0947                          ; 74 1F
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0955                          ; 74 28
        cmp     ax, 0x15                        ; 3D 15 00
        jne     L_0935                          ; 75 03
        jmp     L_0A4C                          ; E9 17 01
;   [conditional branch target (if/else)] L_0935
L_0935:
        cmp     ax, 0x110                       ; 3D 10 01
        jne     L_0942                          ; 75 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0942
L_0942:
        sub     ax, ax                          ; 2B C0
        jmp     L_0BA6                          ; E9 5F 02
;   [conditional branch target (if/else)] L_0947
L_0947:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_094F
L_094F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0BA6                          ; E9 51 02
;   [conditional branch target (if/else)] L_0955
L_0955:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        mov     ax, 0xd94                       ; B8 94 0D
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A E2 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BB1                          ; E8 30 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FA 03 00 00 [FIXUP]
        jmp     L_094F                          ; EB BF
;   [loop start] L_0990
L_0990:
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_09DB                          ; 74 37
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A DF 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        cmp     word ptr [0xb8], 0              ; 83 3E B8 00 00
        jne     L_09BC                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_09BE                          ; EB 02
;   [conditional branch target (if/else)] L_09BC
L_09BC:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_09BE
L_09BE:
        mov     word ptr [0xb8], ax             ; A3 B8 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C86                          ; E8 BF 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 02 0A 00 00 [FIXUP]
        push    word ptr [0x6cc]                ; FF 36 CC 06
        call    far USER.SETFOCUS               ; 9A 2B 04 00 00 [FIXUP]
;   [loop start (also forward branch)] L_09DB
L_09DB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 3C 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_09F5
L_09F5:
        push    ax                              ; 50
        call    far _entry_27                   ; 9A 60 0B 00 00 [FIXUP]
;   [loop start] L_09FB
L_09FB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 67 04 00 00 [FIXUP]
        jmp     L_094F                          ; E9 46 FF
;   [loop start] L_0A09
L_0A09:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_094F                          ; E9 32 FF
;   [loop start] L_0A1D
L_0A1D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_0A38                          ; 75 03
        jmp     L_094F                          ; E9 17 FF
;   [conditional branch target (if/else)] L_0A38
L_0A38:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A A2 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_09F5                          ; EB A9
;   [unconditional branch target] L_0A4C
L_0A4C:
        push    word ptr [0x9cc]                ; FF 36 CC 09
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 6D 0A 00 00 [FIXUP]
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 76 0A 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 84 0A 00 00 [FIXUP]
        mov     word ptr [0x9cc], ax            ; A3 CC 09
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 36 04 00 00 [FIXUP]
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 90 0A 00 00 [FIXUP]
        mov     word ptr [0xa66], ax            ; A3 66 0A
        mov     word ptr [0xa68], dx            ; 89 16 68 0A
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 59 04 00 00 [FIXUP]
        mov     word ptr [0xc7e], ax            ; A3 7E 0C
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 4B 04 00 00 [FIXUP]
        mov     word ptr [0x8ee], ax            ; A3 EE 08
        mov     word ptr [0x8f0], dx            ; 89 16 F0 08
        jmp     L_094F                          ; E9 B1 FE
;   [loop start] L_0A9E
L_0A9E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 50 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0AE6                          ; 75 37
        push    ax                              ; 50
        mov     ax, 0xb7c                       ; B8 7C 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far USER.FILLRECT               ; 9A 9D 0C 00 00 [FIXUP]
        cmp     word ptr [0xb6], 0              ; 83 3E B6 00 00
        je      L_0AD2                          ; 74 0D
        push    word ptr [bp - 0x24]            ; FF 76 DC
        mov     ax, 0xb7c                       ; B8 7C 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0AD2
L_0AD2:
        cmp     word ptr [0xb6], 0              ; 83 3E B6 00 00
        jne     L_0ADE                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AE0                          ; EB 02
;   [conditional branch target (if/else)] L_0ADE
L_0ADE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0AE0
L_0AE0:
        mov     word ptr [0xb6], ax             ; A3 B6 00
        jmp     L_09FB                          ; E9 15 FF
;   [conditional branch target (if/else)] L_0AE6
L_0AE6:
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        je      L_0AEF                          ; 74 03
        jmp     L_09FB                          ; E9 0C FF
;   [conditional branch target (if/else)] L_0AEF
L_0AEF:
        cmp     word ptr [0xae], 0              ; 83 3E AE 00 00
        jl      L_0AFD                          ; 7C 07
        cmp     word ptr [0xae], 2              ; 83 3E AE 00 02
        jle     L_0B02                          ; 7E 05
;   [conditional branch target (if/else)] L_0AFD
L_0AFD:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1225                          ; E8 23 07
;   [conditional branch target (if/else)] L_0B02
L_0B02:
        cmp     word ptr [0xae], 3              ; 83 3E AE 00 03
        jl      L_0B10                          ; 7C 07
        cmp     word ptr [0xae], 5              ; 83 3E AE 00 05
        jle     L_0B15                          ; 7E 05
;   [conditional branch target (if/else)] L_0B10
L_0B10:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1257                          ; E8 42 07
;   [conditional branch target (if/else)] L_0B15
L_0B15:
        push    word ptr [bp - 0x24]            ; FF 76 DC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D06                          ; E8 E9 01
        jmp     L_09FB                          ; E9 DB FE
;   [unconditional branch target] L_0B20
L_0B20:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B30                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_0B4C                          ; 74 1F
        jmp     L_094F                          ; E9 1F FE
;   [conditional branch target (if/else)] L_0B30
L_0B30:
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1e                        ; B8 1E 00
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
        call    far USER.SENDMESSAGE            ; 9A B1 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0B4C
L_0B4C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 3E 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A DA 05 00 00 [FIXUP]
        jmp     L_09FB                          ; E9 80 FE
;   [unconditional branch target] L_0B7B
L_0B7B:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_0B83                          ; 75 03
        jmp     L_0A9E                          ; E9 1B FF
;   [conditional branch target (if/else)] L_0B83
L_0B83:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_0B8B                          ; 75 03
        jmp     L_0A1D                          ; E9 92 FE
;   [conditional branch target (if/else)] L_0B8B
L_0B8B:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_0B93                          ; 75 03
        jmp     L_0A09                          ; E9 76 FE
;   [conditional branch target (if/else)] L_0B93
L_0B93:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0B9B                          ; 75 03
        jmp     L_09DB                          ; E9 40 FE
;   [conditional branch target (if/else)] L_0B9B
L_0B9B:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_0BA3                          ; 75 03
        jmp     L_0990                          ; E9 ED FD
;   [conditional branch target (if/else)] L_0BA3
L_0BA3:
        jmp     L_0942                          ; E9 9C FD
;   [unconditional branch target] L_0BA6
L_0BA6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: SETBKMODE, SETTEXTCOLOR, DRAWTEXT.

;-------------------------------------------------------------------------
; sub_0BB1   offset=0x0BB1  size=88 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   DRAWTEXT
;
; Near calls (internal): L_0C86, L_0D06, L_119A, L_1225, L_1257
;-------------------------------------------------------------------------
;   [sub-routine] L_0BB1
L_0BB1:
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
        ;   ^ arg hDC
        push    word ptr [0x8f0]                ; FF 36 F0 08
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x8ee]                ; FF 36 EE 08
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A AD 0C 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A B9 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0BDF
L_0BDF:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x764                       ; B8 64 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0xabe                       ; 05 BE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A 1D 0C 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xaf2                       ; B8 F2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x74a                       ; 05 4A 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A D3 0C 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jl      L_0BDF                          ; 7C B5
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_0C3B                          ; 75 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1257                          ; E8 21 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1225                          ; E8 EA 05
;   [conditional branch target (if/else)] L_0C3B
L_0C3B:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0C40
L_0C40:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0xb70], 0xffff   ; C7 87 70 0B FF FF
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 6            ; 83 7E FC 06
        jl      L_0C40                          ; 7C EC
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D06                          ; E8 AA 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xb8]                 ; FF 36 B8 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C86                          ; E8 1E 00
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_0C7B                          ; 74 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0xae]                 ; FF 36 AE 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_119A                          ; E8 1F 05
;   [conditional branch target (if/else)] L_0C7B
L_0C7B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: SETBKMODE, SETTEXTCOLOR, DRAWTEXT (+2 more).

;-------------------------------------------------------------------------
; sub_0C86   offset=0x0C86  size=55 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   DRAWTEXT
;   FILLRECT
;   INVERTRECT
;
; Near calls (internal): L_1337
;-------------------------------------------------------------------------
;   [sub-routine] L_0C86
L_0C86:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        push    word ptr [0x8f0]                ; FF 36 F0 08
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x8ee]                ; FF 36 EE 08
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x7ba                       ; B8 BA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0CEA                          ; 74 0D
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A A5 0E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0CEA
L_0CEA:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x9cc]                ; FF 36 CC 09
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1337                          ; E8 3C 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_0D06   offset=0x0D06  size=179 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   DRAWTEXT
;   FILLRECT
;   INVERTRECT
;
; Near calls (internal): L_12C7
;-------------------------------------------------------------------------
;   [sub-routine] L_0D06
L_0D06:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     ax, word ptr [0x726]            ; A1 26 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x730]            ; A1 30 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x640], 0             ; 83 3E 40 06 00
        je      L_0D40                          ; 74 19
        cmp     word ptr [0x726], 0xc           ; 83 3E 26 07 0C
        jle     L_0D33                          ; 7E 05
        sub     word ptr [0x726], 0xc           ; 83 2E 26 07 0C
;   [conditional branch target (if/else)] L_0D33
L_0D33:
        cmp     word ptr [0x726], 0             ; 83 3E 26 07 00
        jne     L_0D40                          ; 75 06
        mov     word ptr [0x726], 0xc           ; C7 06 26 07 0C 00
;   [conditional branch target (if/else)] L_0D40
L_0D40:
        mov     ax, word ptr [0x726]            ; A1 26 07
        cmp     word ptr [0xb70], ax            ; 39 06 70 0B
        je      L_0D9D                          ; 74 54
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x8f0]                ; FF 36 F0 08
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x8ee]                ; FF 36 EE 08
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 68 0E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xace                       ; B8 CE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far USER.FILLRECT               ; 9A 4C 0E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A 58 0E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp - 0xc], 0xc        ; 83 7E F4 0C
        jge     L_0D84                          ; 7D 05
        mov     ax, 0x742                       ; B8 42 07
        jmp     L_0D87                          ; EB 03
;   [conditional branch target (if/else)] L_0D84
L_0D84:
        mov     ax, 0xc3c                       ; B8 3C 0C
;   [unconditional branch target] L_0D87
L_0D87:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0xace                       ; B8 CE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A 89 0E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0D9D
L_0D9D:
        mov     cx, 0x64                        ; B9 64 00
        mov     ax, word ptr [0x730]            ; A1 30 07
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [0x730], dx            ; 89 16 30 07
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_0DAF
L_0DAF:
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0xb70]       ; 8B 84 70 0B
        cmp     word ptr [si + 0x726], ax       ; 39 84 26 07
        jne     L_0DC9                          ; 75 0B
        mov     ax, word ptr [0xae]             ; A1 AE 00
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        je      L_0DC9                          ; 74 03
        jmp     L_0EA9                          ; E9 E0 00
;   [conditional branch target (if/else)] L_0DC9
L_0DC9:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x726]           ; FF B7 26 07
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12C7                          ; E8 EC 04
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x726], 0xa      ; 83 BF 26 07 0A
        jge     L_0E38                          ; 7D 51
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        cmp     word ptr [0xc28], 0             ; 83 3E 28 0C 00
        jne     L_0E0E                          ; 75 1B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0E09                          ; 74 10
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     bx, cl                          ; D3 E3
        mov     ax, word ptr [0x7a2]            ; A1 A2 07
        cmp     word ptr [bx + 0x6e0], ax       ; 39 87 E0 06
        jne     L_0E0E                          ; 75 05
;   [conditional branch target (if/else)] L_0E09
L_0E09:
        mov     ax, 0xba                        ; B8 BA 00
        jmp     L_0E11                          ; EB 03
;   [conditional branch target (if/else)] L_0E0E
L_0E0E:
        mov     ax, 0xbc                        ; B8 BC 00
;   [unconditional branch target] L_0E11
L_0E11:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 34 0E 00 00 [FIXUP]
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
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
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E38
L_0E38:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x6e0                       ; 05 E0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xc7e]                ; FF 36 7E 0C
        call    far USER.FILLRECT               ; 9A BA 0A 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A D6 0B 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x8f0]                ; FF 36 F0 08
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x8ee]                ; FF 36 EE 08
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A CA 0B 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x6e0                       ; 05 E0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A FC 0B 00 00 [FIXUP]
        mov     ax, word ptr [0xae]             ; A1 AE 00
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_0EA9                          ; 75 14
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x6e0                       ; 05 E0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A CE 0A 00 00 [FIXUP]
;   [branch target] L_0EA9
L_0EA9:
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x726]       ; 8B 84 26 07
        mov     word ptr [si + 0xb70], ax       ; 89 84 70 0B
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 6          ; 83 7E F6 06
        jge     L_0EC2                          ; 7D 03
        jmp     L_0DAF                          ; E9 ED FE
;   [conditional branch target (if/else)] L_0EC2
L_0EC2:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x726], ax            ; A3 26 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x730], ax            ; A3 30 07
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: GETDC, GETKEYSTATE, RELEASEDC (+1 more).

;-------------------------------------------------------------------------
; sub_0EDA   offset=0x0EDA  size=241 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   GETKEYSTATE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETTIMER
;
; Near calls (internal): L_0D06, L_1257
;-------------------------------------------------------------------------
;   [sub-routine] L_0EDA
L_0EDA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 0x100     ; 26 81 7F 02 00 01
        je      L_0EF5                          ; 74 03
        jmp     L_1015                          ; E9 20 01
;   [conditional branch target (if/else)] L_0EF5
L_0EF5:
        cmp     word ptr es:[bx + 4], 9         ; 26 83 7F 04 09
        je      L_0EFF                          ; 74 03
        jmp     L_1015                          ; E9 16 01
;   [conditional branch target (if/else)] L_0EFF
L_0EFF:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_0F5A                          ; 74 54
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A AB 0F 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0xa20]                ; FF 36 20 0A
        push    word ptr [0xae]                 ; FF 36 AE 00
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0xb70], 0xffff   ; C7 87 70 0B FF FF
        mov     word ptr [0xae], 0xffff         ; C7 06 AE 00 FF FF
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D06                          ; E8 CD FD
        push    word ptr [0xa20]                ; FF 36 20 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A 74 0B 00 00 [FIXUP]
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A C7 0F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0F5A
L_0F5A:
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_0F84                          ; 75 21
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 92 0F 00 00 [FIXUP]
        test    ax, 0x8000                      ; A9 00 80
        je      L_0F7E                          ; 74 0D
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_0FEB                          ; 75 73
;   [loop start] L_0F78
L_0F78:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        jmp     L_100D                          ; E9 8F 00
;   [loop start (also forward branch)] L_0F7E
L_0F7E:
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        jmp     L_100D                          ; E9 89 00
;   [conditional branch target (if/else)] L_0F84
L_0F84:
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_0FCD                          ; 75 40
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A DB 0F 00 00 [FIXUP]
        test    ax, 0x8000                      ; A9 00 80
        je      L_0FA0                          ; 74 05
        mov     ax, word ptr [0x740]            ; A1 40 07
        jmp     L_0FA3                          ; EB 03
;   [conditional branch target (if/else)] L_0FA0
L_0FA0:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
;   [unconditional branch target] L_0FA3
L_0FA3:
        mov     word ptr [0xc44], ax            ; A3 44 0C
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A A8 09 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1257                          ; E8 A0 02
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D06                          ; E8 47 FD
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A CE 09 00 00 [FIXUP]
        jmp     L_1010                          ; EB 43
;   [conditional branch target (if/else)] L_0FCD
L_0FCD:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_0FF0                          ; 75 1A
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FE 0F 00 00 [FIXUP]
        test    ax, 0x8000                      ; A9 00 80
        jne     L_0F7E                          ; 75 9A
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        je      L_100A                          ; 74 1F
;   [conditional branch target (if/else)] L_0FEB
L_0FEB:
        mov     ax, word ptr [0x6cc]            ; A1 CC 06
        jmp     L_100D                          ; EB 1D
;   [conditional branch target (if/else)] L_0FF0
L_0FF0:
        mov     ax, word ptr [0x6cc]            ; A1 CC 06
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1010                          ; 75 17
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        test    ax, 0x8000                      ; A9 00 80
        je      L_100A                          ; 74 03
        jmp     L_0F78                          ; E9 6E FF
;   [conditional branch target (if/else)] L_100A
L_100A:
        mov     ax, word ptr [0x740]            ; A1 40 07
;   [unconditional branch target] L_100D
L_100D:
        mov     word ptr [0xc44], ax            ; A3 44 0C
;   [loop start (also forward branch)] L_1010
L_1010:
        sub     ax, ax                          ; 2B C0
        jmp     L_118F                          ; E9 7A 01
;   [unconditional branch target] L_1015
L_1015:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 0x100     ; 26 81 7F 02 00 01
        jne     L_1010                          ; 75 F0
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        je      L_1032                          ; 74 09
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1010                          ; 75 DE
;   [conditional branch target (if/else)] L_1032
L_1032:
        mov     ax, word ptr [0xae]             ; A1 AE 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cmp     ax, 0x25                        ; 3D 25 00
        jne     L_1047                          ; 75 03
        jmp     L_10E9                          ; E9 A2 00
;   [conditional branch target (if/else)] L_1047
L_1047:
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_105B                          ; 74 0F
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_1054                          ; 75 03
        jmp     L_1100                          ; E9 AC 00
;   [conditional branch target (if/else)] L_1054
L_1054:
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_10C1                          ; 74 68
        jmp     L_1010                          ; EB B5
;   [conditional branch target (if/else)] L_105B
L_105B:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_1073                          ; 75 11
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_106E                          ; 75 03
        jmp     L_10FC                          ; E9 8E 00
;   [loop start (also forward branch)] L_106E
L_106E:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_1084                          ; EB 11
;   [conditional branch target (if/else)] L_1073
L_1073:
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1081                          ; 75 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_1084                          ; EB 03
;   [conditional branch target (if/else)] L_1081
L_1081:
        mov     ax, 8                           ; B8 08 00
;   [loop start (also forward branch)] L_1084
L_1084:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_1087
L_1087:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 0B 0F 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_1098
L_1098:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        ja      L_10A7                          ; 77 03
        jmp     L_1180                          ; E9 D9 00
;   [conditional branch target (if/else)] L_10A7
L_10A7:
        cmp     word ptr es:[bx + 4], 0x25      ; 26 83 7F 04 25
        je      L_10B1                          ; 74 03
        jmp     L_1135                          ; E9 84 00
;   [conditional branch target (if/else)] L_10B1
L_10B1:
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1119                          ; 75 5C
        sub     ax, ax                          ; 2B C0
        jmp     L_111C                          ; EB 5B
;   [conditional branch target (if/else)] L_10C1
L_10C1:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_10D6                          ; 75 0E
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        je      L_1113                          ; 74 42
;   [loop start] L_10D1
L_10D1:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_1084                          ; EB AE
;   [conditional branch target (if/else)] L_10D6
L_10D6:
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_10E4                          ; 75 05
        mov     ax, 7                           ; B8 07 00
        jmp     L_1084                          ; EB A0
;   [conditional branch target (if/else)] L_10E4
L_10E4:
        mov     ax, 9                           ; B8 09 00
        jmp     L_1084                          ; EB 9B
;   [unconditional branch target] L_10E9
L_10E9:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_1087                          ; 75 97
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        je      L_10FC                          ; 74 03
        jmp     L_106E                          ; E9 72 FF
;   [branch target] L_10FC
L_10FC:
        sub     ax, ax                          ; 2B C0
        jmp     L_1084                          ; EB 84
;   [unconditional branch target] L_1100
L_1100:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_110A                          ; 74 03
        jmp     L_1087                          ; E9 7D FF
;   [conditional branch target (if/else)] L_110A
L_110A:
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_10D1                          ; 75 BE
;   [conditional branch target (if/else)] L_1113
L_1113:
        mov     ax, 2                           ; B8 02 00
        jmp     L_1084                          ; E9 6B FF
;   [conditional branch target (if/else)] L_1119
L_1119:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_111C
L_111C:
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jle     L_1135                          ; 7E 14
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_112F                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_1132                          ; EB 03
;   [conditional branch target (if/else)] L_112F
L_112F:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
;   [unconditional branch target] L_1132
L_1132:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [branch target] L_1135
L_1135:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0x27      ; 26 83 7F 04 27
        jne     L_116B                          ; 75 2C
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1150                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_1153                          ; EB 03
;   [conditional branch target (if/else)] L_1150
L_1150:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
;   [unconditional branch target] L_1153
L_1153:
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_116B                          ; 7D 13
        mov     ax, word ptr [0x740]            ; A1 40 07
        cmp     word ptr [0xc44], ax            ; 39 06 44 0C
        jne     L_1165                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1168                          ; EB 03
;   [conditional branch target (if/else)] L_1165
L_1165:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_1168
L_1168:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_116B
L_116B:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xa20]                ; FF 36 20 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_27                   ; 9A F7 09 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1098                          ; E9 18 FF
;   [unconditional branch target] L_1180
L_1180:
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 56 0F 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_118F
L_118F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)

; Description (heuristic):
;   Mixed routine using: GETDLGITEM, GETFOCUS, GETPARENT (+2 more).

;-------------------------------------------------------------------------
; sub_119A   offset=0x119A  size=51 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETFOCUS
;   GETPARENT
;   SETFOCUS
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_119A
L_119A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_11D8                          ; 7C 2E
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jg      L_11D8                          ; 7F 28
        call    far USER.GETFOCUS               ; 9A E5 11 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETPARENT              ; 9A EB 11 00 00 [FIXUP]
        cmp     ax, word ptr [0xa20]            ; 3B 06 20 0A
        jne     L_121A                          ; 75 59
        push    word ptr [0x740]                ; FF 36 40 07
        call    far USER.SETFOCUS               ; 9A FA 11 00 00 [FIXUP]
        mov     ax, word ptr [0x740]            ; A1 40 07
        mov     word ptr [0xc44], ax            ; A3 44 0C
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x195                       ; B8 95 01
        jmp     L_120A                          ; EB 32
;   [conditional branch target (if/else)] L_11D8
L_11D8:
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        jl      L_121A                          ; 7C 3C
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        jg      L_121A                          ; 7F 36
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0xa20]            ; 3B 06 20 0A
        jne     L_121A                          ; 75 25
        push    word ptr [0xaec]                ; FF 36 EC 0A
        call    far USER.SETFOCUS               ; 9A D7 09 00 00 [FIXUP]
        mov     ax, word ptr [0xaec]            ; A1 EC 0A
        mov     word ptr [0xc44], ax            ; A3 44 0C
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x19f                       ; B8 9F 01
;   [unconditional branch target] L_120A
L_120A:
        push    ax                              ; 50
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A C2 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_121A
L_121A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1225   offset=0x1225  size=27 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_1288
;-------------------------------------------------------------------------
;   [sub-routine] L_1225
L_1225:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     byte ptr [0x5a1], 0x2c          ; C6 06 A1 05 2C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1288                          ; E8 4F 00
        mov     al, byte ptr [0x5a5]            ; A0 A5 05
        cwde                                    ; 98
        mov     word ptr [0x726], ax            ; A3 26 07
        mov     al, byte ptr [0x5a4]            ; A0 A4 05
        cwde                                    ; 98
        mov     word ptr [0x728], ax            ; A3 28 07
        mov     al, byte ptr [0x5a7]            ; A0 A7 05
        cwde                                    ; 98
        mov     word ptr [0x72a], ax            ; A3 2A 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1257   offset=0x1257  size=26 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_1288
;-------------------------------------------------------------------------
;   [sub-routine] L_1257
L_1257:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     byte ptr [0x5a1], 0x2a          ; C6 06 A1 05 2A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1288                          ; E8 1D 00
        mov     al, byte ptr [0x5a7]            ; A0 A7 05
        cwde                                    ; 98
        mov     word ptr [0x72c], ax            ; A3 2C 07
        mov     al, byte ptr [0x5a6]            ; A0 A6 05
        cwde                                    ; 98
        mov     word ptr [0x72e], ax            ; A3 2E 07
        mov     ax, word ptr [0x5a4]            ; A1 A4 05
        mov     word ptr [0x730], ax            ; A3 30 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (30 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1288   offset=0x1288  size=30 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=5)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_1288
L_1288:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [0x5a0]            ; A1 A0 05
        mov     bx, word ptr [0x5a2]            ; 8B 1E A2 05
        mov     cx, word ptr [0x5a4]            ; 8B 0E A4 05
        mov     dx, word ptr [0x5a6]            ; 8B 16 A6 05
        clc                                     ; F8
        int     0x21                            ; CD 21
        mov     word ptr [0x5a0], ax            ; A3 A0 05
        mov     word ptr [0x5a2], bx            ; 89 1E A2 05
        mov     word ptr [0x5a4], cx            ; 89 0E A4 05
        mov     word ptr [0x5a6], dx            ; 89 16 A6 05
        mov     ax, 0                           ; B8 00 00
        jae     L_12BC                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_12BC
L_12BC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (51 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12C7   offset=0x12C7  size=51 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_12C7
L_12C7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_12DB
L_12DB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr [bx], dl               ; 88 17
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp + 8], ax           ; 89 46 08
        or      ax, ax                          ; 0B C0
        jg      L_12DB                          ; 7F DF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_1323                          ; EB 1C
;   [loop start] L_1307
L_1307:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        mov     bx, si                          ; 8B DE
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [bx], al               ; 88 07
;   [unconditional branch target] L_1323
L_1323:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jb      L_1307                          ; 72 DC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (1 use)
;     [bp+0xc]  HDC       (6 uses)
;   Locals:
;     [bp-0x4]   HANDLE    (2 uses)
;     [bp-0x6]   INT       (2 uses)
;     [bp-0x8]   INT       (2 uses)

; Description (heuristic):
;   Mixed routine using: PATBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_1337   offset=0x1337  size=80 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_1337
L_1337:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FD 13 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    si                              ; 56
        ;   ^ arg x
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        ;   ^ arg y
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nWidth
        push    word ptr [0x8a4]                ; FF 36 A4 08
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A AC 13 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    si                              ; 56
        ;   ^ arg x
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [0x8a4]            ; 2B 06 A4 08
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nWidth
        push    word ptr [0x8a4]                ; FF 36 A4 08
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A CB 13 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    si                              ; 56
        ;   ^ arg x
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        ;   ^ arg y
        push    word ptr [0x80c]                ; FF 36 0C 08
        ;   ^ arg nWidth
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A F2 13 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr [0x80c]            ; 2B 06 0C 08
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        ;   ^ arg y
        push    word ptr [0x80c]                ; FF 36 0C 08
        ;   ^ arg nWidth
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HWND      (1 use)

; Description (heuristic):
;   Thin wrapper around MESSAGEBOX(hWndOwner, lpszText, lpszTitle, wStyle) -> INT.

;-------------------------------------------------------------------------
; sub_140D   offset=0x140D  size=24 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_140D
L_140D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWndOwner
        mov     ax, 0xa6c                       ; B8 6C 0A
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A AB 14 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  FARPROC   (1 use)
;     [bp+0x8]  FARPROC   (1 use)
;     [bp+0xa]  HWND      (1 use)
;     [bp+0xc]  LPSTR     (1 use)
;     [bp+0xe]  LPSTR     (1 use)
;     [bp+0x10]  HANDLE    (1 use)
;   Locals:
;     [bp-0x4]   INT       (1 use)

; Description (heuristic):
;   Mixed routine using: DIALOGBOX, MESSAGEBOX.

;-------------------------------------------------------------------------
; sub_1438   offset=0x1438  size=61 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;
; Near calls (internal): L_140D, L_14BA
;-------------------------------------------------------------------------
;   [sub-routine] L_1438
L_1438:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hInstance
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_146C                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_140D                          ; E8 A1 FF
;   [conditional branch target (if/else)] L_146C
L_146C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x102                       ; 81 EC 02 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14BA                          ; E8 22 00
        push    word ptr [bp + 0x14]            ; FF 76 14
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        push    word ptr [bp + 0x12]            ; FF 76 12
        ;   ^ arg lpszTitle (high/segment)
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg lpszTitle (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A 20 06 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_14BA   offset=0x14BA  size=92 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=3, ASM=6)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   INITAPP
;
; Near calls (internal): L_168E, L_1720
;-------------------------------------------------------------------------
;   [sub-routine] L_14BA
L_14BA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
;   [loop start] L_14CF
L_14CF:
        mov     ax, word ptr [0xada]            ; A1 DA 0A
        cmp     word ptr [si], ax               ; 39 04
        jne     L_14DE                          ; 75 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1501                          ; 74 25
        jmp     L_14F9                          ; EB 1B
;   [conditional branch target (if/else)] L_14DE
L_14DE:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_14CF                          ; 75 E5
        sub     ax, ax                          ; 2B C0
        jmp     L_150E                          ; EB 20
;   [loop start] L_14EE
L_14EE:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
;   [unconditional branch target] L_14F9
L_14F9:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_14EE                          ; 75 ED
;   [conditional branch target (if/else)] L_1501
L_1501:
        inc     si                              ; 46
        inc     si                              ; 46
;   [loop start] L_1503
L_1503:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_1503                          ; 75 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_150E
L_150E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_153D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1539                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1539
L_1539:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_153D
L_153D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1580                          ; 74 2B
        mov     word ptr [0x5de], 0             ; C7 06 DE 05 00 00
        mov     word ptr [0x5d0], cx            ; 89 0E D0 05
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_168E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1580                          ; 74 07
        call    0                               ; E8 84 EA
        push    ax                              ; 50
        call    L_1720                          ; E8 A0 01
;   [conditional branch target (if/else)] L_1580
L_1580:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (7 uses)
;     [bp+0x6]  HANDLE    (3 uses)
;   Locals:
;     [bp-0x2]   HANDLE    (2 uses)

; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALCOMPACT, GLOBALFREE (+5 more).

;-------------------------------------------------------------------------
; sub_1585   offset=0x1585  size=130 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALSIZE(HANDLE hMem) -> DWORD
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   LOCALSIZE(HANDLE hMem) -> WORD
;
; Near calls (internal): L_1730
;-------------------------------------------------------------------------
;   [sub-routine] L_1585
L_1585:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A B7 15 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A EE 15 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FD 15 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A 66 16 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> GLOBALSIZE(HANDLE hMem) -> DWORD
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1673                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1675                          ; EB 02
;   [error/early exit] L_1673
L_1673:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_1675
L_1675:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwMinFree (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwMinFree (low/offset)
        ; --> GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_1730                          ; E8 A6 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_168E   offset=0x168E  size=59 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_168E
L_168E:
        mov     bx, 0x62e                       ; BB 2E 06
;   [loop start] L_1691
L_1691:
        cmp     bx, 0x634                       ; 81 FB 34 06
        jae     L_169F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1691                          ; EB F2
;   [error/early exit] L_169F
L_169F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_16A3
L_16A3:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_16B4                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_16B4                          ; 74 05
        or      byte ptr [bx + 0x602], 0x40     ; 80 8F 02 06 40
;   [conditional branch target (if/else)] L_16B4
L_16B4:
        dec     bx                              ; 4B
        jns     L_16A3                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        ret                                     ; C3
        mov     es, word ptr [0x5de]            ; 8E 06 DE 05
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x5d2], bx            ; 89 1E D2 05
        mov     word ptr [0x5d4], es            ; 8C 06 D4 05
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x1540                      ; BA 40 15
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x624]         ; 36 8B 0E 24 06
        jcxz    L_1709                          ; E3 22
        lds     ax, ptr ss:[0x626]              ; 36 C5 06 26 06
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x622]                      ; 36 FF 1E 22 06
        jae     L_16FA                          ; 73 03
        jmp     L_1543                          ; E9 49 FE
;   [conditional branch target (if/else)] L_16FA
L_16FA:
        lds     ax, ptr ss:[0x62a]              ; 36 C5 06 2A 06
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x622]                      ; 36 FF 1E 22 06
;   [conditional branch target (if/else)] L_1709
L_1709:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_1711
L_1711:
        test    byte ptr [bx + 0x602], 1        ; F6 87 02 06 01
        je      L_171C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_171C
L_171C:
        inc     bx                              ; 43
        loop    L_1711                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_1720   offset=0x1720  size=8 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_173B, L_1771
;-------------------------------------------------------------------------
;   [sub-routine] L_1720
L_1720:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_1771                          ; E8 4B 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_173B                          ; E8 0F 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_1730   offset=0x1730  size=6 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1730
L_1730:
        xor     ch, ch                          ; 32 ED
        jcxz    L_173A                          ; E3 06
;   [loop iteration target] L_1734
L_1734:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_1734                          ; E2 FA
;   [error/early exit] L_173A
L_173A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_173B   offset=0x173B  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_1585, L_1783
;-------------------------------------------------------------------------
;   [sub-routine] L_173B
L_173B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_1783                          ; E8 42 00
        call    L_1585                          ; E8 41 FE
        or      ah, ah                          ; 0A E4
        je      L_1752                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_1752                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_1752
L_1752:
        push    ds                              ; 1E
        lds     dx, ptr [0x5d2]                 ; C5 16 D2 05
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x624]            ; 8B 0E 24 06
        jcxz    L_176A                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x622]                         ; FF 1E 22 06
;   [conditional branch target (if/else)] L_176A
L_176A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_1771   offset=0x1771  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1771
L_1771:
        mov     bx, 0x634                       ; BB 34 06
;   [loop start] L_1774
L_1774:
        cmp     bx, 0x634                       ; 81 FB 34 06
        jae     L_1782                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1774                          ; EB F2
;   [error/early exit] L_1782
L_1782:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_1783   offset=0x1783  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1783
L_1783:
        mov     bx, 0x634                       ; BB 34 06
;   [loop start] L_1786
L_1786:
        cmp     bx, 0x636                       ; 81 FB 36 06
        jae     L_1794                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1786                          ; EB F2
;   [error/early exit] L_1794
L_1794:
        ret                                     ; C3

CONTROL_TEXT ENDS

        END
