; ======================================================================
; CLIPBRD / seg1.asm   (segment 1 of CLIPBRD)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        26
; Total instructions:                 2437
; 
; Classification (pass8):
;   C-origin (high+medium):             19
;   ASM-origin (high+medium):            2
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     114 (84 unique)
;   Top:
;        4  GLOBALLOCK
;        4  GLOBALUNLOCK
;        3  FILLRECT
;        3  INVALIDATERECT
;        3  LOADSTRING
;        3  SETSCROLLPOS
;        3  GLOBALALLOC
;        3  GLOBALFREE
; ======================================================================
; AUTO-GENERATED from original CLIPBRD segment 1
; segment_size=6131 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CLIPBRD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0022                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_001D
L_001D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_002B                          ; EB 09
;   [conditional branch target (if/else)] L_0022
L_0022:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_001D                          ; 74 F4
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_002B
L_002B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2a]   HANDLE    (1 use)

; Description (heuristic):
;   Drawing routine (6 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0036   offset=0x0036  size=544 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   GETTEXTMETRICS
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CHANGECLIPBOARDCHAIN
;   CHANGEMENU
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   GETKEYSTATE
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   GETSYSCOLOR
;   GETSYSTEMMENU
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   ISWINDOWENABLED
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   OPENCLIPBOARD
;   POSTQUITMESSAGE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCLIPBOARDVIEWER
;   SETFOCUS
;   SETSCROLLPOS
;   SETSCROLLRANGE
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_0578, L_05F8, L_0746, L_088E, L_134C, L_13C6
;-------------------------------------------------------------------------
;   [sub-routine] L_0036
L_0036:
        ;   = cProc <60> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        push    si                              ; 56
        ;   ^ arg hInstance
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 7C 00 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_009B                          ; 74 42
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 32 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        je      L_0096                          ; 74 29
        push    si                              ; 56
        ;   ^ arg hInstance
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 5D 01 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0096
L_0096:
        sub     ax, ax                          ; 2B C0
        jmp     L_01D7                          ; E9 3C 01
;   [conditional branch target (if/else)] L_009B
L_009B:
        push    si                              ; 56
        call    L_0578                          ; E8 D9 04
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0096                          ; 74 F0
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x10fc                      ; BA FC 10
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp + 4]               ; FF 76 04
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
        push    si                              ; 56
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hWnd
        push    word ptr [bp - 0x26]            ; FF 76 DA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0xe0], ax             ; A3 E0 00
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     word ptr [0xde], ax             ; A3 DE 00
        mov     ax, word ptr [0xe0]             ; A1 E0 00
        shr     ax, 1                           ; D1 E8
        mov     word ptr [0xe2], ax             ; A3 E2 00
        mov     ax, word ptr [0xde]             ; A1 DE 00
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        mov     word ptr [0xe4], ax             ; A3 E4 00
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCLIPBOARDVIEWER     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10], ax             ; A3 10 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jne     L_0140                          ; 75 03
        jmp     L_01C1                          ; E9 81 00
;   [conditional branch target (if/else)] L_0140
L_0140:
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    si                              ; 56
        ;   ^ arg hInstance
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 8A 01 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, OFFSET _entry_1             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_1             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    si                              ; 56
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xd2], ax             ; A3 D2 00
        mov     word ptr [0xd4], dx             ; 89 16 D4 00
        jmp     L_01C1                          ; EB 14
;   [loop start] L_01AD
L_01AD:
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_01C1
L_01C1:
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
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
        jne     L_01AD                          ; 75 D9
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
;   [fall-through exit] L_01D7
L_01D7:
        pop     si                              ; 5E
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
        sub     sp, 0x36                        ; 83 EC 36
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x15                        ; 3D 15 00
        jne     L_01FA                          ; 75 03
        jmp     L_04EF                          ; E9 F5 02
;   [conditional branch target (if/else)] L_01FA
L_01FA:
        jle     L_01FF                          ; 7E 03
        jmp     L_0539                          ; E9 3A 03
;   [conditional branch target (if/else)] L_01FF
L_01FF:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0207                          ; 75 03
        jmp     L_0363                          ; E9 5C 01
;   [conditional branch target (if/else)] L_0207
L_0207:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_020F                          ; 75 03
        jmp     L_0340                          ; E9 31 01
;   [conditional branch target (if/else)] L_020F
L_020F:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0217                          ; 75 03
        jmp     L_029A                          ; E9 83 00
;   [conditional branch target (if/else)] L_0217
L_0217:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_021F                          ; 75 03
        jmp     L_0422                          ; E9 03 02
;   [conditional branch target (if/else)] L_021F
L_021F:
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_0227                          ; 75 03
        jmp     L_050E                          ; E9 E7 02
;   [conditional branch target (if/else)] L_0227
L_0227:
        jmp     L_0231                          ; EB 08
;   [loop start] L_0229
L_0229:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0246                          ; 74 15
;   [loop start (also forward branch)] L_0231
L_0231:
        push    si                              ; 56
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
        jmp     L_056C                          ; E9 26 03
;   [conditional branch target (if/else)] L_0246
L_0246:
        push    word ptr [0xce]                 ; FF 36 CE 00
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    si                              ; 56
        ;   ^ arg hWndOwner
        push    word ptr [0xd4]                 ; FF 36 D4 00
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [0xd2]                 ; FF 36 D2 00
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0267                          ; EB 07
;   [loop start] L_0260
L_0260:
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jne     L_026E                          ; 75 07
;   [loop start (also forward branch)] L_0267
L_0267:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0269
L_0269:
        sub     dx, dx                          ; 2B D2
        jmp     L_056C                          ; E9 FE 02
;   [conditional branch target (if/else)] L_026E
L_026E:
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0281                          ; 75 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x10], ax             ; A3 10 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0269                          ; EB E8
;   [conditional branch target (if/else)] L_0281
L_0281:
        push    word ptr [0x10]                 ; FF 36 10 00
        ;   ^ arg hWnd
        mov     ax, 0x30d                       ; B8 0D 03
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A F6 02 00 00 [FIXUP]
        jmp     L_056C                          ; E9 D2 02
;   [unconditional branch target] L_029A
L_029A:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0267                          ; 74 C7
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0267                          ; 75 C1
        push    si                              ; 56
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0267                          ; 74 B7
        push    si                              ; 56
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0267                          ; EB AF
;   [loop start] L_02B8
L_02B8:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x22                        ; 3D 22 00
        je      L_02E4                          ; 74 24
        ja      L_0329                          ; 77 67
        cmp     ax, 9                           ; 3D 09 00
        je      L_030B                          ; 74 44
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_02DD                          ; 74 11
        jmp     L_0231                          ; E9 62 FF
;   [loop start] L_02CF
L_02CF:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_02E9                          ; EB 13
;   [loop start] L_02D6
L_02D6:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_02E9                          ; EB 0C
;   [conditional branch target (if/else)] L_02DD
L_02DD:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_02E9                          ; EB 05
;   [conditional branch target (if/else)] L_02E4
L_02E4:
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
;   [unconditional branch target] L_02E9
L_02E9:
        push    si                              ; 56
        ; constant WM_VSCROLL
        mov     ax, 0x115                       ; B8 15 01
;   [loop start] L_02ED
L_02ED:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A AE 03 00 00 [FIXUP]
        jmp     L_0267                          ; E9 6A FF
;   [loop start] L_02FD
L_02FD:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0323                          ; EB 1F
;   [loop start] L_0304
L_0304:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0323                          ; EB 18
;   [conditional branch target (if/else)] L_030B
L_030B:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_031D                          ; 7D 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0320                          ; EB 03
;   [conditional branch target (if/else)] L_031D
L_031D:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_0320
L_0320:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_0323
L_0323:
        push    si                              ; 56
        ; constant WM_HSCROLL
        mov     ax, 0x114                       ; B8 14 01
        jmp     L_02ED                          ; EB C4
;   [conditional branch target (if/else)] L_0329
L_0329:
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_02FD                          ; 74 CF
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_02CF                          ; 74 9C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_0304                          ; 74 CC
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_02D6                          ; 74 99
        jmp     L_0231                          ; E9 F1 FE
;   [unconditional branch target] L_0340
L_0340:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_0349                          ; 74 03
        jmp     L_03CC                          ; E9 83 00
;   [conditional branch target (if/else)] L_0349
L_0349:
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        jne     L_0353                          ; 75 03
        jmp     L_0267                          ; E9 14 FF
;   [conditional branch target (if/else)] L_0353
L_0353:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        call    L_134C                          ; E8 EF 0F
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_0267                          ; E9 04 FF
;   [unconditional branch target] L_0363
L_0363:
        push    si                              ; 56
        push    word ptr [0x10]                 ; FF 36 10 00
        call    far USER.CHANGECLIPBOARDCHAIN   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        je      L_0381                          ; 74 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        call    L_134C                          ; E8 CE 0F
        add     sp, 0xa                         ; 83 C4 0A
;   [conditional branch target (if/else)] L_0381
L_0381:
        push    word ptr [0xe6]                 ; FF 36 E6 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0267                          ; E9 D2 FE
;   [loop start] L_0395
L_0395:
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_03B2                          ; 74 16
        push    word ptr [0x10]                 ; FF 36 10 00
        ;   ^ arg hWnd
        mov     ax, 0x308                       ; B8 08 03
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_03B2
L_03B2:
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_03CC
L_03CC:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x16], ax             ; A3 16 00
        mov     word ptr [0x12], ax             ; A3 12 00
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 0A 04 00 00 [FIXUP]
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x14], ax             ; A3 14 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 1B 04 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     word ptr [0x18], ax             ; A3 18 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 3D 07 00 00 [FIXUP]
        jmp     L_0267                          ; E9 45 FE
;   [unconditional branch target] L_0422
L_0422:
        push    si                              ; 56
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_042F                          ; 75 03
        jmp     L_0267                          ; E9 38 FE
;   [conditional branch target (if/else)] L_042F
L_042F:
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A DB 00 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 21 05 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 67 04 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FD 04 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        push    si                              ; 56
        call    L_088E                          ; E8 14 04
        add     sp, 4                           ; 83 C4 04
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0267                          ; E9 DC FD
;   [loop start] L_048B
L_048B:
        cmp     word ptr [bp + 0xa], 5          ; 83 7E 0A 05
        jne     L_0494                          ; 75 03
        jmp     L_0267                          ; E9 D3 FD
;   [conditional branch target (if/else)] L_0494
L_0494:
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        je      L_04AB                          ; 74 10
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    dx                              ; 52
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 0x30a                       ; B8 0A 03
        jmp     L_04D9                          ; EB 2E
;   [conditional branch target (if/else)] L_04AB
L_04AB:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        call    L_05F8                          ; E8 43 01
;   [loop start] L_04B5
L_04B5:
        add     sp, 6                           ; 83 C4 06
        jmp     L_0267                          ; E9 AC FD
;   [loop start] L_04BB
L_04BB:
        cmp     word ptr [bp + 0xa], 5          ; 83 7E 0A 05
        jne     L_04C4                          ; 75 03
        jmp     L_0267                          ; E9 A3 FD
;   [conditional branch target (if/else)] L_04C4
L_04C4:
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        je      L_04E3                          ; 74 18
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    dx                              ; 52
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 0x30e                       ; B8 0E 03
;   [unconditional branch target] L_04D9
L_04D9:
        push    ax                              ; 50
        call    L_13C6                          ; E8 E9 0E
        add     sp, 8                           ; 83 C4 08
        jmp     L_0267                          ; E9 84 FD
;   [conditional branch target (if/else)] L_04E3
L_04E3:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        call    L_0746                          ; E8 59 02
        jmp     L_04B5                          ; EB C6
;   [unconditional branch target] L_04EF
L_04EF:
        push    word ptr [0xe6]                 ; FF 36 E6 00
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 86 03 00 00 [FIXUP]
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 83 05 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A 8A 05 00 00 [FIXUP]
        mov     word ptr [0xe6], ax             ; A3 E6 00
        jmp     L_0267                          ; E9 59 FD
;   [unconditional branch target] L_050E
L_050E:
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A B9 03 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0xe6]                 ; FF 36 E6 00
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A E1 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0xe6]                 ; FF 36 E6 00
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0267                          ; E9 2E FD
;   [unconditional branch target] L_0539
L_0539:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0541                          ; 75 03
        jmp     L_02B8                          ; E9 77 FD
;   [conditional branch target (if/else)] L_0541
L_0541:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_0549                          ; 75 03
        jmp     L_0229                          ; E9 E0 FC
;   [conditional branch target (if/else)] L_0549
L_0549:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_0551                          ; 75 03
        jmp     L_04BB                          ; E9 6A FF
;   [conditional branch target (if/else)] L_0551
L_0551:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_0559                          ; 75 03
        jmp     L_048B                          ; E9 32 FF
;   [conditional branch target (if/else)] L_0559
L_0559:
        cmp     ax, 0x308                       ; 3D 08 03
        jne     L_0561                          ; 75 03
        jmp     L_0395                          ; E9 34 FE
;   [conditional branch target (if/else)] L_0561
L_0561:
        cmp     ax, 0x30d                       ; 3D 0D 03
        jne     L_0569                          ; 75 03
        jmp     L_0260                          ; E9 F7 FC
;   [conditional branch target (if/else)] L_0569
L_0569:
        jmp     L_0231                          ; E9 C5 FC
;   [unconditional branch target] L_056C
L_056C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)
;   Locals:
;     [bp-0xc]   HCURSOR   (1 use)
;     [bp-0xe]   HICON     (1 use)

; Description (heuristic):
;   Mixed routine using: CREATESOLIDBRUSH, GETSYSCOLOR, LOADCURSOR (+2 more).

;-------------------------------------------------------------------------
; sub_0578   offset=0x0578  size=46 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   GETSYSCOLOR
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   REGISTERCLASS
;-------------------------------------------------------------------------
;   [sub-routine] L_0578
L_0578:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg clr (high/segment)
        push    ax                              ; 50
        ;   ^ arg clr (low/offset)
        ; --> CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xe6], ax             ; A3 E6 00
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
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     ax, 0x1c                        ; B8 1C 00
        push    ds                              ; 1E
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0xb0                        ; B8 B0 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 0x1a], 3         ; C7 46 E6 03 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - OFFSET _entry_2], 0xffff ; C7 46 E8 FF FF [FIXUP]
        mov     word ptr [bp - OFFSET _entry_2], 0xffff ; C7 46 EA FF FF [FIXUP]
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     word ptr [0xce], ax             ; A3 CE 00
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, SCROLLWINDOW, SETSCROLLPOS (+1 more).

;-------------------------------------------------------------------------
; sub_05F8   offset=0x05F8  size=144 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SCROLLWINDOW
;   SETSCROLLPOS
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_1600, L_16A1, L_1705, L_1768
;-------------------------------------------------------------------------
;   [sub-routine] L_05F8
L_05F8:
        ;   = cProc <22> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     si, word ptr [0x14]             ; 8B 36 14 00
        mov     ax, word ptr [0xdc]             ; A1 DC 00
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 4                           ; 3D 04 00
        jbe     L_0618                          ; 76 03
        jmp     L_0741                          ; E9 29 01
;   [conditional branch target (if/else)] L_0618
L_0618:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x673]        ; 2E FF A7 73 06
        sub     si, word ptr [0xde]             ; 2B 36 DE 00
        jmp     L_067D                          ; EB 57
        add     si, word ptr [0xde]             ; 03 36 DE 00
        jmp     L_067D                          ; EB 51
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x12]             ; A1 12 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_16A1                          ; E8 60 10
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1600                          ; E8 BA 0F
        mov     si, ax                          ; 8B F0
        jmp     L_067D                          ; EB 33
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0xde]             ; 2B 06 DE 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xde]             ; A1 DE 00
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jae     L_065F                          ; 73 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [conditional branch target (if/else)] L_065F
L_065F:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_066C                          ; 75 07
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        neg     ax                              ; F7 D8
        jmp     L_066F                          ; EB 03
;   [conditional branch target (if/else)] L_066C
L_066C:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
;   [unconditional branch target] L_066F
L_066F:
        add     si, ax                          ; 03 F0
        jmp     L_067D                          ; EB 0A
        and     byte ptr [0x626], al            ; 20 06 26 06
        dec     dx                              ; 4A
        push    es                              ; 06
        dec     dx                              ; 4A
        push    es                              ; 06
        sub     al, 6                           ; 2C 06
;   [unconditional branch target] L_067D
L_067D:
        or      si, si                          ; 0B F6
        jl      L_0688                          ; 7C 07
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jg      L_068C                          ; 7F 04
;   [conditional branch target (if/else)] L_0688
L_0688:
        sub     si, si                          ; 2B F6
        jmp     L_06B7                          ; EB 2B
;   [conditional branch target (if/else)] L_068C
L_068C:
        cmp     word ptr [0x12], si             ; 39 36 12 00
        jge     L_0698                          ; 7D 06
        mov     si, word ptr [0x12]             ; 8B 36 12 00
        jmp     L_06B7                          ; EB 1F
;   [conditional branch target (if/else)] L_0698
L_0698:
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        or      dx, dx                          ; 0B D2
        je      L_06B7                          ; 74 10
        mov     ax, word ptr [0xde]             ; A1 DE 00
        shr     ax, 1                           ; D1 E8
        cmp     dx, ax                          ; 3B D0
        jbe     L_06B4                          ; 76 04
        add     si, word ptr [0xde]             ; 03 36 DE 00
;   [conditional branch target (if/else)] L_06B4
L_06B4:
        sub     si, word ptr [bp - 0x14]        ; 2B 76 EC
;   [branch target] L_06B7
L_06B7:
        mov     ax, word ptr [0x14]             ; A1 14 00
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jg      L_06C9                          ; 7F 06
        or      ax, ax                          ; 0B C0
        jge     L_0741                          ; 7D 7A
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_06C9
L_06C9:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     ax, word ptr [0xdc]             ; A1 DC 00
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jg      L_06EF                          ; 7F 13
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A C8 03 00 00 [FIXUP]
        jmp     L_0704                          ; EB 15
;   [conditional branch target (if/else)] L_06EF
L_06EF:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0704
L_0704:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jg      L_071E                          ; 7F 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0737                          ; EB 19
;   [conditional branch target (if/else)] L_071E
L_071E:
        mov     ax, word ptr [0x12]             ; A1 12 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1768                          ; E8 36 10
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1705                          ; E8 CE 0F
;   [unconditional branch target] L_0737
L_0737:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0741
L_0741:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: INVALIDATERECT, SCROLLWINDOW, SETSCROLLPOS (+1 more).

;-------------------------------------------------------------------------
; sub_0746   offset=0x0746  size=144 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   SCROLLWINDOW
;   SETSCROLLPOS
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_1600, L_16A1, L_1705, L_1768
;-------------------------------------------------------------------------
;   [sub-routine] L_0746
L_0746:
        ;   = cProc <22> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     si, word ptr [0x18]             ; 8B 36 18 00
        mov     ax, word ptr [0xda]             ; A1 DA 00
        sub     ax, word ptr [0xd6]             ; 2B 06 D6 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 4                           ; 3D 04 00
        jbe     L_0766                          ; 76 03
        jmp     L_0889                          ; E9 23 01
;   [conditional branch target (if/else)] L_0766
L_0766:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x7c1]        ; 2E FF A7 C1 07
        sub     si, word ptr [0xe0]             ; 2B 36 E0 00
        jmp     L_07CB                          ; EB 57
        add     si, word ptr [0xe0]             ; 03 36 E0 00
        jmp     L_07CB                          ; EB 51
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x16]             ; A1 16 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_16A1                          ; E8 12 0F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1600                          ; E8 6C 0E
        mov     si, ax                          ; 8B F0
        jmp     L_07CB                          ; EB 33
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0xe0]             ; 2B 06 E0 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xe0]             ; A1 E0 00
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jae     L_07AD                          ; 73 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [conditional branch target (if/else)] L_07AD
L_07AD:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_07BA                          ; 75 07
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        neg     ax                              ; F7 D8
        jmp     L_07BD                          ; EB 03
;   [conditional branch target (if/else)] L_07BA
L_07BA:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
;   [unconditional branch target] L_07BD
L_07BD:
        add     si, ax                          ; 03 F0
        jmp     L_07CB                          ; EB 0A
        outsb   dx, byte ptr [si]               ; 6E
        pop     es                              ; 07
        je      L_07CC                          ; 74 07
        cwde                                    ; 98
        pop     es                              ; 07
        cwde                                    ; 98
        pop     es                              ; 07
        jp      L_07D2                          ; 7A 07
;   [unconditional branch target] L_07CB
L_07CB:
        or      si, si                          ; 0B F6
        jl      L_07D6                          ; 7C 07
        cmp     word ptr [0x16], 0              ; 83 3E 16 00 00
        jg      L_07DA                          ; 7F 04
;   [conditional branch target (if/else)] L_07D6
L_07D6:
        sub     si, si                          ; 2B F6
        jmp     L_0805                          ; EB 2B
;   [conditional branch target (if/else)] L_07DA
L_07DA:
        cmp     word ptr [0x16], si             ; 39 36 16 00
        jge     L_07E6                          ; 7D 06
        mov     si, word ptr [0x16]             ; 8B 36 16 00
        jmp     L_0805                          ; EB 1F
;   [conditional branch target (if/else)] L_07E6
L_07E6:
        mov     ax, si                          ; 8B C6
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xe0]                 ; F7 36 E0 00
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        or      dx, dx                          ; 0B D2
        je      L_0805                          ; 74 10
        mov     ax, word ptr [0xe0]             ; A1 E0 00
        shr     ax, 1                           ; D1 E8
        cmp     dx, ax                          ; 3B D0
        jbe     L_0802                          ; 76 04
        add     si, word ptr [0xe0]             ; 03 36 E0 00
;   [conditional branch target (if/else)] L_0802
L_0802:
        sub     si, word ptr [bp - 0x12]        ; 2B 76 EE
;   [branch target] L_0805
L_0805:
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jg      L_0817                          ; 7F 06
        or      ax, ax                          ; 0B C0
        jge     L_0889                          ; 7D 74
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_0817
L_0817:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [0x18], si             ; 89 36 18 00
        mov     ax, word ptr [0xda]             ; A1 DA 00
        sub     ax, word ptr [0xd6]             ; 2B 06 D6 00
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jg      L_083D                          ; 7F 13
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A E9 06 00 00 [FIXUP]
        jmp     L_0852                          ; EB 15
;   [conditional branch target (if/else)] L_083D
L_083D:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A 00 07 00 00 [FIXUP]
;   [unconditional branch target] L_0852
L_0852:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 08 07 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [0x16], ax             ; 39 06 16 00
        jle     L_087F                          ; 7E 19
        mov     ax, word ptr [0x16]             ; A1 16 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1768                          ; E8 EE 0E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1705                          ; E8 86 0E
;   [conditional branch target (if/else)] L_087F
L_087F:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A F9 03 00 00 [FIXUP]
;   [error/early exit] L_0889
L_0889:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).

;-------------------------------------------------------------------------
; sub_088E   offset=0x088E  size=329 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETTEXTEXTENT
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   CLOSECLIPBOARD
;   COPYRECT
;   COUNTCLIPBOARDFORMATS
;   ENUMCLIPBOARDFORMATS
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETCLIPBOARDFORMATNAME
;   INFLATERECT
;   INTERSECTRECT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
;
; Near calls (internal): L_0C02, L_134C, L_13C6
;-------------------------------------------------------------------------
;   [sub-routine] L_088E
L_088E:
        ;   = cProc <130> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x82                        ; 81 EC 82 00
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        je      L_08C2                          ; 74 11
        push    word ptr [bp - 0x12]            ; FF 76 EE
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xe6]                 ; FF 36 E6 00
        call    far USER.FILLRECT               ; 9A 32 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_08C2
L_08C2:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 15 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x26]             ; 03 06 26 00
        cmp     ax, word ptr [si + 6]           ; 3B 44 06
        jg      L_08DE                          ; 7F 03
        jmp     L_0B29                          ; E9 4B 02
;   [conditional branch target (if/else)] L_08DE
L_08DE:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xe2]             ; 03 06 E2 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [0xe4]             ; A1 E4 00
        mov     word ptr [0x26], ax             ; A3 26 00
        mov     word ptr [0x1a], 0              ; C7 06 1A 00 00 00
        call    far USER.COUNTCLIPBOARDFORMATS  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        je      L_0903                          ; 74 03
        jmp     L_09CD                          ; E9 CA 00
;   [conditional branch target (if/else)] L_0903
L_0903:
        push    word ptr [0xce]                 ; FF 36 CE 00
        ;   ^ arg hInstance
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ;   ^ arg wID
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 06 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hDC
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg x
        push    word ptr [0x26]                 ; FF 36 26 00
        ;   ^ arg y
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x20]            ; FF 76 E0
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 71 0A 00 00 [FIXUP]
;   [loop start] L_0933
L_0933:
        mov     ax, word ptr [0xde]             ; A1 DE 00
        add     ax, word ptr [0xe4]             ; 03 06 E4 00
        add     ax, 3                           ; 05 03 00
        add     word ptr [0x26], ax             ; 01 06 26 00
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x26]             ; 03 06 26 00
        sub     ax, 3                           ; 2D 03 00
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        push    ax                              ; 50
        ;   ^ arg nWidth
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 8D 09 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x26]             ; 03 06 26 00
        dec     ax                              ; 48
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        push    ax                              ; 50
        ;   ^ arg nWidth
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x26]             ; A1 26 00
        add     word ptr [0xd8], ax             ; 01 06 D8 00
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        jne     L_09B1                          ; 75 03
        jmp     L_0B13                          ; E9 62 01
;   [conditional branch target (if/else)] L_09B1
L_09B1:
        push    word ptr [0xdc]                 ; FF 36 DC 00
        push    word ptr [0xda]                 ; FF 36 DA 00
        push    word ptr [0xd8]                 ; FF 36 D8 00
        push    word ptr [0xd6]                 ; FF 36 D6 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_134C                          ; E8 85 09
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_0B29                          ; E9 5C 01
;   [unconditional branch target] L_09CD
L_09CD:
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        mov     word ptr [bp - 0x78], 0         ; C7 46 88 00 00
        mov     word ptr [bp - 0x7a], 1         ; C7 46 86 01 00
;   [loop start] L_09DC
L_09DC:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cmp     word ptr [bp - 0x7a], ax        ; 39 46 86
        jle     L_09E7                          ; 7E 03
        jmp     L_0933                          ; E9 4C FF
;   [conditional branch target (if/else)] L_09E7
L_09E7:
        push    word ptr [bp - 0x78]            ; FF 76 88
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        cmp     ax, 5                           ; 3D 05 00
        ja      L_0A0C                          ; 77 15
        push    word ptr [0xce]                 ; FF 36 CE 00
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 4F 00 00 00 [FIXUP]
        jmp     L_0A3E                          ; EB 32
;   [conditional branch target (if/else)] L_0A0C
L_0A0C:
        mov     ax, word ptr [bp - 0x78]        ; 8B 46 88
        cmp     ax, 0x80                        ; 3D 80 00
        jne     L_0A17                          ; 75 03
        jmp     L_0AE7                          ; E9 D0 00
;   [conditional branch target (if/else)] L_0A17
L_0A17:
        cmp     ax, 0x81                        ; 3D 81 00
        jb      L_0A24                          ; 72 08
        cmp     ax, 0x83                        ; 3D 83 00
        ja      L_0A24                          ; 77 03
        jmp     L_0B0D                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0A24
L_0A24:
        push    word ptr [bp - 0x78]            ; FF 76 88
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDFORMATNAME ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     di, ax                          ; 8B F8
        mov     byte ptr [bp + di - 0x74], 0    ; C6 43 8C 00
;   [loop start (also forward branch)] L_0A3E
L_0A3E:
        mov     byte ptr [bp - 0x25], 0         ; C6 46 DB 00
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_0A89                          ; 74 34
        mov     byte ptr [bp - 0x7c], 0x2c      ; C6 46 84 2C
        mov     byte ptr [bp - 0x7b], 0x20      ; C6 46 85 20
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hDC
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg x
        push    word ptr [0x26]                 ; FF 36 26 00
        ;   ^ arg y
        lea     ax, [bp - 0x7c]                 ; 8D 46 84
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A D6 0A 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        lea     ax, [bp - 0x7c]                 ; 8D 46 84
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A 95 0A 00 00 [FIXUP]
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
;   [conditional branch target (if/else)] L_0A89
L_0A89:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x76]            ; FF 76 8A
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        sub     cx, word ptr [0xe2]             ; 2B 0E E2 00
        cmp     ax, cx                          ; 3B C1
        jb      L_0AC3                          ; 72 16
        mov     di, word ptr [bp - 8]           ; 8B 7E F8
        add     di, word ptr [0xe2]             ; 03 3E E2 00
        cmp     word ptr [bp - 0x1e], di        ; 39 7E E2
        jbe     L_0AC3                          ; 76 0A
        mov     word ptr [bp - 0x1e], di        ; 89 7E E2
        mov     ax, word ptr [0xde]             ; A1 DE 00
        add     word ptr [0x26], ax             ; 01 06 26 00
;   [conditional branch target (if/else)] L_0AC3
L_0AC3:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hDC
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg x
        push    word ptr [0x26]                 ; FF 36 26 00
        ;   ^ arg y
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x76]            ; FF 76 8A
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
        mov     word ptr [bp - 0x24], 1         ; C7 46 DC 01 00
        jmp     L_0B0D                          ; EB 26
;   [unconditional branch target] L_0AE7
L_0AE7:
        mov     word ptr [0x1a], 1              ; C7 06 1A 00 01 00
        mov     byte ptr [bp - 0x74], 0         ; C6 46 8C 00
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        mov     ax, 0x30c                       ; B8 0C 03
        push    ax                              ; 50
        call    L_13C6                          ; E8 C5 08
        add     sp, 8                           ; 83 C4 08
        cmp     byte ptr [bp - 0x74], 0         ; 80 7E 8C 00
        je      L_0B0D                          ; 74 03
        jmp     L_0A3E                          ; E9 31 FF
;   [branch target] L_0B0D
L_0B0D:
        inc     word ptr [bp - 0x7a]            ; FF 46 86
        jmp     L_09DC                          ; E9 C9 FE
;   [unconditional branch target] L_0B13
L_0B13:
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0xe2]             ; A1 E2 00
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [0xe4]             ; A1 E4 00
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0B29
L_0B29:
        cmp     word ptr [0x1a], 0              ; 83 3E 1A 00 00
        je      L_0BA5                          ; 74 75
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        or      ax, ax                          ; 0B C0
        jne     L_0B49                          ; 75 03
        jmp     L_0BF7                          ; E9 AE 00
;   [conditional branch target (if/else)] L_0B49
L_0B49:
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        mov     word ptr [bp - 0x80], dx        ; 89 56 80
        or      ax, dx                          ; 0B C2
        jne     L_0B5D                          ; 75 03
        jmp     L_0BF7                          ; E9 9A 00
;   [conditional branch target (if/else)] L_0B5D
L_0B5D:
        les     bx, ptr [bp - 0x82]             ; C4 9E 7E FF
        push    si                              ; 56
        mov     di, bx                          ; 8B FB
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     si                              ; 5E
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x7e]            ; FF 76 82
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x7e]            ; FF 76 82
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x309                       ; B8 09 03
        push    ax                              ; 50
        call    L_13C6                          ; E8 2E 08
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp - 0x7e]            ; FF 76 82
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0BF7                          ; EB 52
;   [conditional branch target (if/else)] L_0BA5
L_0BA5:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INTERSECTRECT          ; 9A 7C 0B 00 00 [FIXUP]
        mov     ax, word ptr [0xd6]             ; A1 D6 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jle     L_0BF7                          ; 7E 30
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0BF7                          ; 7E 28
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        add     ax, word ptr [0x14]             ; 03 06 14 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [0xd6]             ; 2B 06 D6 00
        add     ax, word ptr [0x18]             ; 03 06 18 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0C02                          ; E8 0E 00
        add     sp, 0xa                         ; 83 C4 0A
;   [branch target] L_0BF7
L_0BF7:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: GETCLIPBOARDDATA.

;-------------------------------------------------------------------------
; sub_0C02   offset=0x0C02  size=82 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETCLIPBOARDDATA
;
; Near calls (internal): L_0CD8, L_0DBF, L_1072, L_10C5
;-------------------------------------------------------------------------
;   [sub-routine] L_0C02
L_0C02:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     word ptr [bp - 0xa], 8          ; C7 46 F6 08 00
        mov     si, 0x28                        ; BE 28 00
        jmp     L_0CB3                          ; E9 9A 00
;   [loop start] L_0C19
L_0C19:
        push    word ptr [si]                   ; FF 34
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0C2A                          ; 75 03
        jmp     L_0CB0                          ; E9 86 00
;   [conditional branch target (if/else)] L_0C2A
L_0C2A:
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, 3                           ; 3D 03 00
        je      L_0C77                          ; 74 46
        ja      L_0C91                          ; 77 5E
        cmp     ax, 1                           ; 3D 01 00
        je      L_0C40                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_0C54                          ; 74 17
        jmp     L_0CC0                          ; E9 80 00
;   [loop start (also forward branch)] L_0C40
L_0C40:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_10C5                          ; E8 76 04
        add     sp, 8                           ; 83 C4 08
        jmp     L_0CC0                          ; EB 6C
;   [loop start (also forward branch)] L_0C54
L_0C54:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0CD8                          ; E8 72 00
        jmp     L_0C89                          ; EB 21
;   [loop start] L_0C68
L_0C68:
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1072                          ; E8 00 04
        add     sp, 4                           ; 83 C4 04
        jmp     L_0CC0                          ; EB 49
;   [loop start (also forward branch)] L_0C77
L_0C77:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0DBF                          ; E8 36 01
;   [unconditional branch target] L_0C89
L_0C89:
        add     sp, 0xa                         ; 83 C4 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0CC0                          ; EB 2F
;   [conditional branch target (if/else)] L_0C91
L_0C91:
        cmp     ax, 0x81                        ; 3D 81 00
        je      L_0C40                          ; 74 AA
        ja      L_0CA4                          ; 77 0C
        cmp     ax, 4                           ; 3D 04 00
        jb      L_0CC0                          ; 72 23
        cmp     ax, 5                           ; 3D 05 00
        jbe     L_0C68                          ; 76 C6
        jmp     L_0CC0                          ; EB 1C
;   [conditional branch target (if/else)] L_0CA4
L_0CA4:
        cmp     ax, 0x82                        ; 3D 82 00
        je      L_0C54                          ; 74 AB
        cmp     ax, 0x83                        ; 3D 83 00
        je      L_0C77                          ; 74 C9
        jmp     L_0CC0                          ; EB 10
;   [unconditional branch target] L_0CB0
L_0CB0:
        add     si, 2                           ; 83 C6 02
;   [unconditional branch target] L_0CB3
L_0CB3:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        or      ax, ax                          ; 0B C0
        je      L_0CC0                          ; 74 03
        jmp     L_0C19                          ; E9 59 FF
;   [branch target] L_0CC0
L_0CC0:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0CD3                          ; 75 0D
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1072                          ; E8 A2 03
        add     sp, 4                           ; 83 C4 04
;   [error/early exit] L_0CD3
L_0CD3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)
;   Locals:
;     [bp-0xa]   HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: BITBLT, CREATECOMPATIBLEDC, DELETEDC (+2 more).

;-------------------------------------------------------------------------
; sub_0CD8   offset=0x0CD8  size=84 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   GETOBJECT
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0CD8
L_0CD8:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0CF7                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0DB9                          ; E9 C2 00
;   [conditional branch target (if/else)] L_0CF7
L_0CF7:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 48 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x12], -1             ; 83 3E 12 00 FF
        jne     L_0D32                          ; 75 18
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [0xdc]             ; 2B 06 DC 00
        add     ax, word ptr [0xd8]             ; 03 06 D8 00
        mov     word ptr [0x12], ax             ; A3 12 00
        or      ax, ax                          ; 0B C0
        jge     L_0D32                          ; 7D 06
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
;   [conditional branch target (if/else)] L_0D32
L_0D32:
        cmp     word ptr [0x16], -1             ; 83 3E 16 00 FF
        jne     L_0D51                          ; 75 18
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [0xda]             ; 2B 06 DA 00
        add     ax, word ptr [0xd6]             ; 03 06 D6 00
        mov     word ptr [0x16], ax             ; A3 16 00
        or      ax, ax                          ; 0B C0
        jge     L_0D51                          ; 7D 06
        mov     word ptr [0x16], 0              ; C7 06 16 00 00 00
;   [conditional branch target (if/else)] L_0D51
L_0D51:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     di, word ptr [bp - 0x16]        ; 8B 7E EA
        sub     di, word ptr [bp + 0xa]         ; 2B 7E 0A
        cmp     word ptr [bp - 2], di           ; 39 7E FE
        jge     L_0D72                          ; 7D 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0D74                          ; EB 02
;   [conditional branch target (if/else)] L_0D72
L_0D72:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0D74
L_0D74:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     di, word ptr [bp - 0x14]        ; 8B 7E EC
        sub     di, word ptr [bp + 0xc]         ; 2B 7E 0C
        cmp     word ptr [bp - 4], di           ; 39 7E FC
        jge     L_0D87                          ; 7D 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0D89                          ; EB 02
;   [conditional branch target (if/else)] L_0D87
L_0D87:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0D89
L_0D89:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        push    word ptr [si]                   ; FF 34
        ;   ^ arg x
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDCSrc
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg xSrc
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0DB9
L_0DB9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HANDLE    (1 use)
;   Locals:
;     [bp-0x16]   LPVOID    (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0DBF   offset=0x0DBF  size=65 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=8, ASM=4)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   SAVEDC
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0F92
;-------------------------------------------------------------------------
;   [sub-routine] L_0DBF
L_0DBF:
        ;   = cProc <36> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si]               ; 2B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 4B 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        or      ax, dx                          ; 0B C2
        jne     L_0DF5                          ; 75 03
        jmp     L_0F89                          ; E9 94 01
;   [conditional branch target (if/else)] L_0DF5
L_0DF5:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        push    si                              ; 56
        lea     di, [bp - 0x24]                 ; 8D 7E DC
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
        pop     si                              ; 5E
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 84 0B 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_0E23                          ; 75 03
        jmp     L_0F89                          ; E9 66 01
;   [conditional branch target (if/else)] L_0E23
L_0E23:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     ax, 7                           ; 3D 07 00
        jl      L_0E30                          ; 7C 05
        cmp     ax, 8                           ; 3D 08 00
        jle     L_0E90                          ; 7E 60
;   [conditional branch target (if/else)] L_0E30
L_0E30:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 45 0E 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 68 0E 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_0F92                          ; E8 3F 01
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_0E60                          ; 75 03
        jmp     L_0F7E                          ; E9 1E 01
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: GETDEVICECAPS, INTERSECTCLIPRECT, PLAYMETAFILE (+6 more).

;-------------------------------------------------------------------------
; sub_0E60   offset=0x0E60  size=101 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   INTERSECTCLIPRECT
;   PLAYMETAFILE
;   RESTOREDC
;   SETBRUSHORG
;   SETMAPMODE(HDC hDC, INT iMode) -> INT
;   SETVIEWPORTEXT
;   SETVIEWPORTORG
;   SETWINDOWEXT
;
; Near calls (internal): L_0F92
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0E60
L_0E60:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 75 0E 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    L_0F92                          ; E8 0F 01
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0EF2                          ; 75 65
        jmp     L_0F7E                          ; E9 EE 00
;   [conditional branch target (if/else)] L_0E90
L_0E90:
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        mov     word ptr [0x16], 0              ; C7 06 16 00 00 00
        mov     ax, word ptr [0xda]             ; A1 DA 00
        sub     ax, word ptr [0xd6]             ; 2B 06 D6 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0xdc]             ; A1 DC 00
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [loop start] L_0EB0
L_0EB0:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [si + 6]               ; FF 74 06
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ;   ^ arg iMode
        ; --> SETMAPMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETMAPMODE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [si]               ; 8B 04
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        push    ax                              ; 50
        call    far GDI.SETVIEWPORTORG          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     ax, 7                           ; 3D 07 00
        je      L_0F33                          ; 74 48
        cmp     ax, 8                           ; 3D 08 00
        je      L_0F4D                          ; 74 5D
        jmp     L_0F5B                          ; EB 69
;   [conditional branch target (if/else)] L_0EF2
L_0EF2:
        cmp     word ptr [0x16], -1             ; 83 3E 16 00 FF
        jne     L_0F11                          ; 75 18
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [0xda]             ; 2B 06 DA 00
        add     ax, word ptr [0xd6]             ; 03 06 D6 00
        mov     word ptr [0x16], ax             ; A3 16 00
        or      ax, ax                          ; 0B C0
        jge     L_0F11                          ; 7D 06
        mov     word ptr [0x16], 0              ; C7 06 16 00 00 00
;   [conditional branch target (if/else)] L_0F11
L_0F11:
        cmp     word ptr [0x12], -1             ; 83 3E 12 00 FF
        jne     L_0EB0                          ; 75 98
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0xdc]             ; 2B 06 DC 00
        add     ax, word ptr [0xd8]             ; 03 06 D8 00
        mov     word ptr [0x12], ax             ; A3 12 00
        or      ax, ax                          ; 0B C0
        jge     L_0EB0                          ; 7D 86
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        jmp     L_0EB0                          ; E9 7D FF
;   [conditional branch target (if/else)] L_0F33
L_0F33:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0F4D                          ; 74 14
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0F4D                          ; 74 0E
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far GDI.SETWINDOWEXT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0F4D
L_0F4D:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SETVIEWPORTEXT          ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0F5B
L_0F5B:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [si]               ; 2B 04
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far GDI.PLAYMETAFILE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [unconditional branch target] L_0F7E
L_0F7E:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0F89
L_0F89:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (88 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F92   offset=0x0F92  size=88 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_1705, L_1768
;-------------------------------------------------------------------------
;   [sub-routine] L_0F92
L_0F92:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 6], 0x7fff       ; C7 46 FA FF 7F
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0FB5                          ; 75 03
        jmp     L_1067                          ; E9 B2 00
;   [conditional branch target (if/else)] L_0FB5
L_0FB5:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 7                           ; 3D 07 00
        jbe     L_0FC3                          ; 76 03
        jmp     L_1067                          ; E9 A4 00
;   [conditional branch target (if/else)] L_0FC3
L_0FC3:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xffd]        ; 2E FF A7 FD 0F
        mov     word ptr [bp - 2], 0xa          ; C7 46 FE 0A 00
        jmp     L_100D                          ; EB 3B
        mov     word ptr [bp - 2], 0x64         ; C7 46 FE 64 00
        jmp     L_100D                          ; EB 34
        mov     word ptr [bp - 0xc], 0xfe       ; C7 46 F4 FE 00
        mov     word ptr [bp - 2], 0x3840       ; C7 46 FE 40 38
        jmp     L_100D                          ; EB 28
        mov     word ptr [bp - 0xc], 0x9ec      ; C7 46 F4 EC 09
;   [loop start] L_0FEA
L_0FEA:
        mov     word ptr [bp - 2], 0x2710       ; C7 46 FE 10 27
        jmp     L_100D                          ; EB 1C
        mov     word ptr [bp - 0xc], 0xfe       ; C7 46 F4 FE 00
        jmp     L_0FEA                          ; EB F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_106E                          ; EB 71
        clc                                     ; F8
        bswap   bx                              ; 0F CB
        psrld   mm1, qword ptr [bx]             ; 0F D2 0F
        in      ax, 0xf                         ; E5 0F
        int1                                    ; F1
        psubusw mm1, qword ptr [bx]             ; 0F D9 0F
        adc     byte ptr [edi + 0x10], ah       ; 67 10 67 10
;   [unconditional branch target] L_100D
L_100D:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1768                          ; E8 4C 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1768                          ; E8 2F 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1768                          ; E8 2A 07
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        adc     dx, word ptr [bp - 0xe]         ; 13 56 F2
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_1705                          ; E8 B6 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jb      L_106B                          ; 72 0B
        ja      L_1067                          ; 77 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jbe     L_106B                          ; 76 04
;   [branch target] L_1067
L_1067:
        sub     ax, ax                          ; 2B C0
        jmp     L_106E                          ; EB 03
;   [error/early exit] L_106B
L_106B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [fall-through exit] L_106E
L_106E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)

; Description (heuristic):
;   Mixed routine using: DRAWTEXT, FILLRECT, LOADSTRING.

;-------------------------------------------------------------------------
; sub_1072   offset=0x1072  size=33 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   DRAWTEXT
;   FILLRECT
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_1072
L_1072:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x14], 0              ; C7 06 14 00 00 00
        mov     word ptr [0x18], 0              ; C7 06 18 00 00 00
        push    word ptr [0xce]                 ; FF 36 CE 00
        ;   ^ arg hInstance
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wID
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 15 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xe6]                 ; FF 36 E6 00
        call    far USER.FILLRECT               ; 9A BE 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb0                        ; B8 B0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0xd6                        ; B8 D6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far USER.DRAWTEXT               ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_10C5   offset=0x10C5  size=173 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_1072, L_12B3
;-------------------------------------------------------------------------
;   [sub-routine] L_10C5
L_10C5:
        ;   = cProc <138> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x8a                        ; 81 EC 8A 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        lea     di, [bp - 0x6e]                 ; 8D 7E 92
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        sub     word ptr [bp - 0x6c], dx        ; 29 56 94
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        sub     ax, word ptr [bp - 0x6c]        ; 2B 46 94
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        mov     word ptr [bp - 0x78], dx        ; 89 56 88
        or      dx, dx                          ; 0B D2
        je      L_1115                          ; 74 16
        mov     ax, word ptr [0xde]             ; A1 DE 00
        sub     ax, dx                          ; 2B C2
        add     word ptr [bp - 0x68], ax        ; 01 46 98
        mov     ax, word ptr [0xdc]             ; A1 DC 00
        cmp     word ptr [bp - 0x68], ax        ; 39 46 98
        jle     L_1115                          ; 7E 06
        mov     ax, word ptr [0xde]             ; A1 DE 00
        sub     word ptr [bp - 0x68], ax        ; 29 46 98
;   [conditional branch target (if/else)] L_1115
L_1115:
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        cmp     word ptr [bp - 0x68], ax        ; 39 46 98
        jg      L_1120                          ; 7F 03
        jmp     L_12AD                          ; E9 8D 01
;   [conditional branch target (if/else)] L_1120
L_1120:
        mov     ax, word ptr [0xda]             ; A1 DA 00
        sub     ax, word ptr [0xd6]             ; 2B 06 D6 00
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xe0]                 ; F7 36 E0 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jle     L_1159                          ; 7E 25
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        sub     ax, word ptr [bp - 0x6c]        ; 2B 46 94
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        or      ax, ax                          ; 0B C0
        jle     L_1159                          ; 7E 12
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A E4 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        mov     word ptr [bp - 0x72], dx        ; 89 56 8E
        or      ax, dx                          ; 0B C2
        jne     L_1169                          ; 75 10
;   [conditional branch target (if/else)] L_1159
L_1159:
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1072                          ; E8 0F FF
        add     sp, 4                           ; 83 C4 04
        jmp     L_12AD                          ; E9 44 01
;   [conditional branch target (if/else)] L_1169
L_1169:
        cmp     word ptr [bp - 2], 0x64         ; 83 7E FE 64
        jle     L_1174                          ; 7E 05
        mov     word ptr [bp - 2], 0x64         ; C7 46 FE 64 00
;   [conditional branch target (if/else)] L_1174
L_1174:
        push    word ptr [bp - 0x72]            ; FF 76 8E
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp - 0x74]            ; FF 76 8C
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 48 0A 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x74]        ; 03 46 8C
        mov     dx, word ptr [bp - 0x72]        ; 8B 56 8E
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     word ptr [bp - 0x7c], dx        ; 89 56 84
        cmp     word ptr [0x16], -1             ; 83 3E 16 00 FF
        jne     L_1198                          ; 75 06
        mov     word ptr [0x16], 0              ; C7 06 16 00 00 00
;   [conditional branch target (if/else)] L_1198
L_1198:
        cmp     word ptr [0x12], -1             ; 83 3E 12 00 FF
        jne     L_1215                          ; 75 76
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        mov     dx, word ptr [bp - 0x72]        ; 8B 56 8E
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        mov     word ptr [bp - 0x80], dx        ; 89 56 80
        mov     word ptr [bp - 0x86], 0         ; C7 86 7A FF 00 00
        mov     ax, word ptr [0xdc]             ; A1 DC 00
        sub     ax, word ptr [0xd8]             ; 2B 06 D8 00
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        mov     word ptr [bp - 0x84], ax        ; 89 86 7C FF
;   [loop start] L_11C3
L_11C3:
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     dx, word ptr [bp - 0x7c]        ; 8B 56 84
        cmp     word ptr [bp - 0x82], ax        ; 39 86 7E FF
        jae     L_11ED                          ; 73 1E
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x80]            ; FF 76 80
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ax                              ; 50
        call    L_12B3                          ; E8 D3 00
        add     sp, 8                           ; 83 C4 08
        add     word ptr [bp - 0x82], ax        ; 01 86 7E FF
        inc     word ptr [bp - 0x86]            ; FF 86 7A FF
        jmp     L_11C3                          ; EB D6
;   [conditional branch target (if/else)] L_11ED
L_11ED:
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        sub     ax, word ptr [bp - 0x84]        ; 2B 86 7C FF
        mul     word ptr [0xde]                 ; F7 26 DE 00
        mov     word ptr [0x12], ax             ; A3 12 00
        or      ax, ax                          ; 0B C0
        jge     L_1206                          ; 7D 06
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
;   [conditional branch target (if/else)] L_1206
L_1206:
        mov     ax, word ptr [bp - 0x84]        ; 8B 86 7C FF
        mul     word ptr [0xde]                 ; F7 26 DE 00
        add     ax, word ptr [0xd8]             ; 03 06 D8 00
        mov     word ptr [0xdc], ax             ; A3 DC 00
;   [conditional branch target (if/else)] L_1215
L_1215:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     dx, dx                          ; 2B D2
        div     word ptr [0xde]                 ; F7 36 DE 00
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        jmp     L_1243                          ; EB 20
;   [loop start] L_1223
L_1223:
        mov     ax, word ptr [bp - 0x70]        ; 8B 46 90
        dec     word ptr [bp - 0x70]            ; FF 4E 90
        or      ax, ax                          ; 0B C0
        je      L_124C                          ; 74 1F
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x72]            ; FF 76 8E
        push    word ptr [bp - 0x74]            ; FF 76 8C
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ax                              ; 50
        call    L_12B3                          ; E8 76 00
        add     sp, 8                           ; 83 C4 08
        add     word ptr [bp - 0x74], ax        ; 01 46 8C
;   [unconditional branch target] L_1243
L_1243:
        les     bx, ptr [bp - 0x74]             ; C4 5E 8C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1223                          ; 75 D7
;   [conditional branch target (if/else)] L_124C
L_124C:
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        jmp     L_129B                          ; EB 47
;   [loop start] L_1254
L_1254:
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     dx, word ptr [bp - 0x7c]        ; 8B 56 84
        cmp     word ptr [bp - 0x74], ax        ; 39 46 8C
        jae     L_12A5                          ; 73 46
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x72]            ; FF 76 8E
        push    word ptr [bp - 0x74]            ; FF 76 8C
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ax                              ; 50
        call    L_12B3                          ; E8 44 00
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     word ptr [bp - 0x88], dx        ; 89 96 78 FF
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 0x6e]            ; FF 76 92
        ;   ^ arg x
        push    word ptr [bp - 0x76]            ; FF 76 8A
        ;   ^ arg y
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    dx                              ; 52
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 2F 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        add     word ptr [bp - 0x74], ax        ; 01 46 8C
        mov     ax, word ptr [0xde]             ; A1 DE 00
        add     word ptr [bp - 0x76], ax        ; 01 46 8A
;   [unconditional branch target] L_129B
L_129B:
        mov     ax, word ptr [bp - 0x7a]        ; 8B 46 86
        dec     word ptr [bp - 0x7a]            ; FF 4E 86
        or      ax, ax                          ; 0B C0
        jne     L_1254                          ; 75 AF
;   [conditional branch target (if/else)] L_12A5
L_12A5:
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 0D 0E 00 00 [FIXUP]
;   [fall-through exit] L_12AD
L_12AD:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (71 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12B3   offset=0x12B3  size=71 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_12B3
L_12B3:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        sub     di, di                          ; 2B FF
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_12C5
L_12C5:
        cmp     word ptr [bp + 0xa], di         ; 39 7E 0A
        jle     L_133C                          ; 7E 72
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, si                          ; 8B C6
        inc     si                              ; 46
        add     bx, ax                          ; 03 D8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_133C                          ; 74 5F
        cmp     ax, 9                           ; 3D 09 00
        je      L_130D                          ; 74 2B
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_12FB                          ; 74 14
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_12FB                          ; 74 0F
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        add     bx, ax                          ; 03 D8
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_12C5                          ; EB CA
;   [conditional branch target (if/else)] L_12FB
L_12FB:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx + si], 0xd      ; 26 80 38 0D
        je      L_130A                          ; 74 06
        cmp     byte ptr es:[bx + si], 0xa      ; 26 80 38 0A
        jne     L_133C                          ; 75 32
;   [conditional branch target (if/else)] L_130A
L_130A:
        inc     si                              ; 46
        jmp     L_133C                          ; EB 2F
;   [conditional branch target (if/else)] L_130D
L_130D:
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        sub     dx, cx                          ; 2B D1
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, dx                          ; 8B C2
        add     ax, di                          ; 03 C7
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        jge     L_133C                          ; 7D 17
;   [loop start] L_1325
L_1325:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        or      ax, ax                          ; 0B C0
        je      L_12C5                          ; 74 96
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        add     bx, ax                          ; 03 D8
        mov     byte ptr [bx], 0x20             ; C6 07 20
        jmp     L_1325                          ; EB E9
;   [branch target] L_133C
L_133C:
        mov     ax, di                          ; 8B C7
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   LPVOID    (1 use)
;     [bp-0x6]   HANDLE    (2 uses)

; Description (heuristic):
;   Mixed routine using: GLOBALALLOC, GLOBALFREE, GLOBALLOCK (+1 more).

;-------------------------------------------------------------------------
; sub_134C   offset=0x134C  size=46 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_13C6
;-------------------------------------------------------------------------
;   [sub-routine] L_134C
L_134C:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 8                           ; B8 08 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A 3B 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_13C2                          ; 74 5A
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 4B 11 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_13BA                          ; 74 42
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A A9 12 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x30b                       ; B8 0B 03
        push    ax                              ; 50
        call    L_13C6                          ; E8 0F 00
        add     sp, 8                           ; 83 C4 08
;   [conditional branch target (if/else)] L_13BA
L_13BA:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 9F 0B 00 00 [FIXUP]
;   [error/early exit] L_13C2
L_13C2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (1 use)
;     [bp+0x6]  WPARAM    (1 use)
;     [bp+0x8]  LPARAM    (1 use)
;     [bp+0xa]  LPARAM    (1 use)

; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_13C6   offset=0x13C6  size=57 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=6, ASM=5)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   GETCLIPBOARDOWNER
;   INITAPP
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;
; Near calls (internal): L_0036, L_155E, L_15F0
;-------------------------------------------------------------------------
;   [sub-routine] L_13C6
L_13C6:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        call    far USER.GETCLIPBOARDOWNER      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_13EA                          ; 74 12
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wMsg
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wParam
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 93 02 00 00 [FIXUP]
;   [error/early exit] L_13EA
L_13EA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_140D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_140D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1409                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1409
L_1409:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_140D
L_140D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1450                          ; 74 2B
        mov     word ptr [0x4e], 0              ; C7 06 4E 00 00 00
        mov     word ptr [0x40], cx             ; 89 0E 40 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_155E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1450                          ; 74 07
        call    L_0036                          ; E8 EA EB
        push    ax                              ; 50
        call    L_15F0                          ; E8 A0 01
;   [conditional branch target (if/else)] L_1450
L_1450:
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
; sub_1455   offset=0x1455  size=130 instr  segment=seg1.asm
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
; Near calls (internal): L_178E
;-------------------------------------------------------------------------
;   [sub-routine] L_1455
L_1455:
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
        call    far KERNEL.LOCALALLOC           ; 9A 87 14 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A BE 14 00 00 [FIXUP]
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
        call    far KERNEL.LOCALFREE            ; 9A CD 14 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A 62 00 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 92 01 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALSIZE(HANDLE hMem) -> WORD
        call    far KERNEL.LOCALSIZE            ; 9A 36 15 00 00 [FIXUP]
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
        call    far KERNEL.GLOBALALLOC          ; 9A 5D 13 00 00 [FIXUP]
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
        call    far KERNEL.GLOBALFREE           ; 9A BE 13 00 00 [FIXUP]
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
        je      L_1543                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1545                          ; EB 02
;   [error/early exit] L_1543
L_1543:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_1545
L_1545:
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
        call    L_178E                          ; E8 34 02
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_155E   offset=0x155E  size=59 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_155E
L_155E:
        mov     bx, 0x9e                        ; BB 9E 00
;   [loop start] L_1561
L_1561:
        cmp     bx, 0xa4                        ; 81 FB A4 00
        jae     L_156F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_1561                          ; EB F2
;   [error/early exit] L_156F
L_156F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_1573
L_1573:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_1584                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_1584                          ; 74 05
        or      byte ptr [bx + 0x72], 0x40      ; 80 8F 72 00 40
;   [conditional branch target (if/else)] L_1584
L_1584:
        dec     bx                              ; 4B
        jns     L_1573                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x54], ax             ; A3 54 00
        ret                                     ; C3
        mov     es, word ptr [0x4e]             ; 8E 06 4E 00
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x42], bx             ; 89 1E 42 00
        mov     word ptr [0x44], es             ; 8C 06 44 00
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x1410                      ; BA 10 14
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x94]          ; 36 8B 0E 94 00
        jcxz    L_15D9                          ; E3 22
        lds     ax, ptr ss:[0x96]               ; 36 C5 06 96 00
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x92]                       ; 36 FF 1E 92 00
        jae     L_15CA                          ; 73 03
        jmp     L_1413                          ; E9 49 FE
;   [conditional branch target (if/else)] L_15CA
L_15CA:
        lds     ax, ptr ss:[0x9a]               ; 36 C5 06 9A 00
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x92]                       ; 36 FF 1E 92 00
;   [conditional branch target (if/else)] L_15D9
L_15D9:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_15E1
L_15E1:
        test    byte ptr [bx + 0x72], 1         ; F6 87 72 00 01
        je      L_15EC                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_15EC
L_15EC:
        inc     bx                              ; 43
        loop    L_15E1                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_15F0   offset=0x15F0  size=8 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_1799, L_17CF
;-------------------------------------------------------------------------
;   [sub-routine] L_15F0
L_15F0:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_17CF                          ; E8 D9 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1799                          ; E8 9D 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1600   offset=0x1600  size=74 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1768
;-------------------------------------------------------------------------
;   [sub-routine] L_1600
L_1600:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_1621                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_1621
L_1621:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_163A                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_163A
L_163A:
        or      ax, ax                          ; 0B C0
        jne     L_1654                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_168F                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1654
L_1654:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_165F
L_165F:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_165F                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1768                          ; E8 EC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_1688                          ; 77 07
        jb      L_168B                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_168B                          ; 76 03
;   [conditional branch target (if/else)] L_1688
L_1688:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_168B
L_168B:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_168F
L_168F:
        or      di, di                          ; 0B FF
        je      L_169A                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_169A
L_169A:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_16A1   offset=0x16A1  size=46 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_16A1
L_16A1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_16C1                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_16C1
L_16C1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_16DA                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_16DA
L_16DA:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_16FF                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_16FF
L_16FF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1705   offset=0x1705  size=47 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1768
;-------------------------------------------------------------------------
;   [sub-routine] L_1705
L_1705:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_1727                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_1762                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1727
L_1727:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_1732
L_1732:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_1732                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1768                          ; E8 19 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_175B                          ; 77 07
        jb      L_175E                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_175E                          ; 76 03
;   [conditional branch target (if/else)] L_175B
L_175B:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_175E
L_175E:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_1762
L_1762:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_1768   offset=0x1768  size=19 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1768
L_1768:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_178E   offset=0x178E  size=6 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_178E
L_178E:
        xor     ch, ch                          ; 32 ED
        jcxz    L_1798                          ; E3 06
;   [loop iteration target] L_1792
L_1792:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_1792                          ; E2 FA
;   [error/early exit] L_1798
L_1798:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1799   offset=0x1799  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_1455, L_17E1
;-------------------------------------------------------------------------
;   [sub-routine] L_1799
L_1799:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_17E1                          ; E8 42 00
        call    L_1455                          ; E8 B3 FC
        or      ah, ah                          ; 0A E4
        je      L_17B0                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_17B0                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_17B0
L_17B0:
        push    ds                              ; 1E
        lds     dx, ptr [0x42]                  ; C5 16 42 00
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x94]             ; 8B 0E 94 00
        jcxz    L_17C8                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x92]                          ; FF 1E 92 00
;   [conditional branch target (if/else)] L_17C8
L_17C8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_17CF   offset=0x17CF  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_17CF
L_17CF:
        mov     bx, 0xa4                        ; BB A4 00
;   [loop start] L_17D2
L_17D2:
        cmp     bx, 0xa4                        ; 81 FB A4 00
        jae     L_17E0                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_17D2                          ; EB F2
;   [error/early exit] L_17E0
L_17E0:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_17E1   offset=0x17E1  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_17E1
L_17E1:
        mov     bx, 0xa4                        ; BB A4 00
;   [loop start] L_17E4
L_17E4:
        cmp     bx, 0xa6                        ; 81 FB A6 00
        jae     L_17F2                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_17E4                          ; EB F2
;   [error/early exit] L_17F2
L_17F2:
        ret                                     ; C3

CLIPBRD_TEXT ENDS

        END
