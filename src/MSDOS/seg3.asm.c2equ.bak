; ======================================================================
; MSDOS / seg3.asm   (segment 3 of MSDOS)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        72
; Total instructions:                 5791
; 
; Classification (pass8):
;   C-origin (high+medium):             58
;   ASM-origin (high+medium):            5
;   Unclear:                             9
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     155 (76 unique)
;   Top:
;        7  LSTRCPY
;        6  POSTMESSAGE
;        5  ANSIUPPER
;        5  GETCLIENTRECT
;        5  LSTRLEN
;        4  LOCALFREE
;        4  GETSYSCOLOR
;        4  ISRECTEMPTY
; ======================================================================
; AUTO-GENERATED from original MSDOS segment 3
; segment_size=14452 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSDOS_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hModule
        ; --> GETMODULEUSAGE(HANDLE hModule) -> INT
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jle     L_0061                          ; 7E 46
        cmp     word ptr [0xd2], 0              ; 83 3E D2 00 00
        je      L_004F                          ; 74 2D
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpProc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpProc (low/offset)
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENUMWINDOWS            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpProc (high/segment)
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_004F
L_004F:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0064                          ; EB 03
;   [conditional branch target (if/else)] L_0061
L_0061:
        call    L_00CB                          ; E8 67 00
;   [unconditional branch target] L_0064
L_0064:
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
        sub     sp, 0x16                        ; 83 EC 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETCLASSNAME           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x346]            ; A1 46 03
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_00BD                          ; 74 28
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0xdc                        ; B8 DC 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 9D 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00BD                          ; 75 15
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        mov     ax, 0x404                       ; B8 04 04
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
        sub     ax, ax                          ; 2B C0
        jmp     L_00C0                          ; EB 03
;   [conditional branch target (if/else)] L_00BD
L_00BD:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00C0
L_00C0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Small helper using 2 API(s): EXITWINDOWS, MESSAGEBOX.

;-------------------------------------------------------------------------
; sub_00CB   offset=0x00CB  size=21 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   EXITWINDOWS(DWORD dwReserved, WORD wReturnCode) -> BOOL
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_00CB
L_00CB:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x346]                ; FF 36 46 03
        ;   ^ arg hWndOwner
        mov     ax, 0x3da                       ; B8 DA 03
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x32c                       ; B8 2C 03
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x1031                      ; B8 31 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A D6 01 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00F3                          ; 75 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> EXITWINDOWS(DWORD dwReserved, WORD wReturnCode) -> BOOL
        call    far USER.EXITWINDOWS            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_00F3
L_00F3:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0xce]   INT       (1 use)

; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_00F7   offset=0x00F7  size=101 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_00F7
L_00F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x116                       ; 81 EC 16 01
        mov     word ptr [bp - 0xd0], 0x10      ; C7 86 30 FF 10 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x18                        ; 3D 18 00
        je      L_0145                          ; 74 32
        cmp     ax, 0x1c                        ; 3D 1C 00
        je      L_018C                          ; 74 74
        cmp     ax, 0x1d                        ; 3D 1D 00
        je      L_0181                          ; 74 64
        mov     word ptr [bp - 0xd0], 0x30      ; C7 86 30 FF 30 00
        push    word ptr [0x1da]                ; FF 36 DA 01
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x46                        ; B8 46 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        mov     word ptr [bp - 0xce], ax        ; 89 86 32 FF
        mov     word ptr [bp - 0xcc], ss        ; 8C 96 34 FF
        jmp     L_0155                          ; EB 10
;   [conditional branch target (if/else)] L_0145
L_0145:
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2f6                       ; B8 F6 02
;   [loop start] L_014E
L_014E:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A A4 01 00 00 [FIXUP]
;   [unconditional branch target] L_0155
L_0155:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0197                          ; 74 3A
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01A8                          ; EB 27
;   [conditional branch target (if/else)] L_0181
L_0181:
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x38a                       ; B8 8A 03
        jmp     L_014E                          ; EB C2
;   [conditional branch target (if/else)] L_018C
L_018C:
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x228                       ; B8 28 02
        jmp     L_014E                          ; EB B7
;   [conditional branch target (if/else)] L_0197
L_0197:
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 89 02 00 00 [FIXUP]
;   [unconditional branch target] L_01A8
L_01A8:
        cmp     word ptr [0xca], 0              ; 83 3E CA 00 00
        je      L_01B3                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01C1                          ; EB 0E
;   [conditional branch target (if/else)] L_01B3
L_01B3:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_01BE                          ; 74 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_01C1                          ; EB 03
;   [conditional branch target (if/else)] L_01BE
L_01BE:
        mov     ax, word ptr [0x346]            ; A1 46 03
;   [unconditional branch target] L_01C1
L_01C1:
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x548                       ; B8 48 05
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        or      ah, 0x10                        ; 80 CC 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_01E4                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01E6                          ; EB 02
;   [conditional branch target (if/else)] L_01E4
L_01E4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01E6
L_01E6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_01F1   offset=0x01F1  size=25 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_087F, L_26AE, L_2700
;-------------------------------------------------------------------------
;   [sub-routine] L_01F1
L_01F1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        call    L_2700                          ; E8 02 25
        mov     word ptr [0x530], ax            ; A3 30 05
        push    ax                              ; 50
        call    L_087F                          ; E8 7A 06
        mov     word ptr [0x560], ax            ; A3 60 05
        call    L_26AE                          ; E8 A3 24
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x274]           ; FF B7 74 02
        call    L_087F                          ; E8 66 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0222   offset=0x0222  size=504 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIPREV
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   GETFOCUS
;   GETMENU
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETSCROLLPOS
;
; Near calls (first 8 of 18): L_00CB, L_00F7, L_01F1, L_06F4, L_0752, L_0BC0, L_0EB7, L_10CA ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0222
L_0222:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x64                        ; 83 EC 64
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 BA 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1AC8                          ; E8 88 18
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x346]            ; 3B 06 46 03
        jne     L_0250                          ; 75 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D91                          ; E8 41 2B
;   [conditional branch target (if/else)] L_0250
L_0250:
        cmp     word ptr [bp + 6], 0x401        ; 81 7E 06 01 04
        jne     L_025A                          ; 75 03
        jmp     L_037A                          ; E9 20 01
;   [conditional branch target (if/else)] L_025A
L_025A:
        mov     ax, word ptr [0x560]            ; A1 60 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01F1                          ; E8 8C FF
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_027E                          ; 74 11
        push    word ptr [0x5aa]                ; FF 36 AA 05
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
        call    far USER.INVALIDATERECT         ; 9A AB 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_027E
L_027E:
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B5 02 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14F2                          ; E8 60 12
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A C9 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02AA                          ; 74 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_02AA
L_02AA:
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x1e0                       ; B8 E0 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_143E                          ; E8 80 11
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x1e0                       ; B8 E0 01
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02D6                          ; 74 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_02D6
L_02D6:
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        mov     word ptr [bp - 0x62], ss        ; 8C 56 9E
        les     bx, ptr [bp - 0x64]             ; C4 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     si, word ptr [0x530]            ; 8B 36 30 05
        shl     si, 1                           ; D1 E6
        mov     al, byte ptr [si + 0x274]       ; 8A 84 74 02
        add     al, 0x41                        ; 04 41
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     byte ptr es:[bx], 0x3a          ; 26 C6 07 3A
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0317                          ; EB 11
;   [loop start] L_0306
L_0306:
        les     bx, ptr [bp - 0x64]             ; C4 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_0317
L_0317:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0306                          ; 75 E7
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x64]            ; FF 76 9C
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     es, dx                          ; 8E C2
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        je      L_0343                          ; 74 0A
        les     bx, ptr [bp - 0x64]             ; C4 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
;   [conditional branch target (if/else)] L_0343
L_0343:
        les     bx, ptr [bp - 0x64]             ; C4 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     byte ptr es:[bx], 0x2a          ; 26 C6 07 2A
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        inc     word ptr [bp - 0x64]            ; FF 46 9C
        mov     byte ptr es:[bx], 0x2a          ; 26 C6 07 2A
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_271D                          ; E8 AB 23
        call    L_10CA                          ; E8 55 0D
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EB7                          ; E8 3D 0B
;   [unconditional branch target] L_037A
L_037A:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1184                          ; E8 05 0E
        mov     word ptr [0xb2], 0              ; C7 06 B2 00 00 00
        push    word ptr [0x346]                ; FF 36 46 03
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BC0                          ; E8 22 08
        push    word ptr [0x328]                ; FF 36 28 03
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
        call    far USER.INVALIDATERECT         ; 9A C9 03 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_03BC                          ; 75 07
        cmp     word ptr [bp + 6], 0x401        ; 81 7E 06 01 04
        jne     L_03CD                          ; 75 11
;   [conditional branch target (if/else)] L_03BC
L_03BC:
        push    word ptr [0x55e]                ; FF 36 5E 05
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
;   [conditional branch target (if/else)] L_03CD
L_03CD:
        cmp     word ptr [bp + 6], 0x400        ; 81 7E 06 00 04
        jne     L_03DA                          ; 75 06
        mov     word ptr [0xc0], 0              ; C7 06 C0 00 00 00
;   [conditional branch target (if/else)] L_03DA
L_03DA:
        mov     word ptr [0x14], 0              ; C7 06 14 00 00 00
        call    far USER.GETFOCUS               ; 9A 41 02 00 00 [FIXUP]
        cmp     ax, word ptr [0x346]            ; 3B 06 46 03
        jne     L_03F4                          ; 75 09
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D21                          ; E8 2D 29
;   [conditional branch target (if/else)] L_03F4
L_03F4:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 59 03
        pop     si                              ; 5E
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, si                          ; 8B C6
        cmp     ax, 0x3b                        ; 3D 3B 00
        jne     L_0420                          ; 75 03
        jmp     L_04A7                          ; E9 87 00
;   [conditional branch target (if/else)] L_0420
L_0420:
        jle     L_0425                          ; 7E 03
        jmp     L_0646                          ; E9 21 02
;   [conditional branch target (if/else)] L_0425
L_0425:
        sub     ax, 0x32                        ; 2D 32 00
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0430                          ; 76 03
        jmp     L_069B                          ; E9 6B 02
;   [conditional branch target (if/else)] L_0430
L_0430:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x634]        ; 2E FF A7 34 06
        call    L_00CB                          ; E8 90 FC
        jmp     L_069B                          ; E9 5D 02
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 51 01 00 00 [FIXUP]
;   [loop start] L_044D
L_044D:
        push    si                              ; 56
        call    far _entry_15                   ; 9A 72 04 00 00 [FIXUP]
        jmp     L_069B                          ; E9 45 02
;   [loop start] L_0456
L_0456:
        cmp     word ptr [0x68], 1              ; 83 3E 68 00 01
        jle     L_044D                          ; 7E F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 8A FC
        jmp     L_069B                          ; E9 2B 02
        push    si                              ; 56
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0480                          ; 75 03
        jmp     L_069B                          ; E9 1B 02
;   [conditional branch target (if/else)] L_0480
L_0480:
        push    ax                              ; 50
        call    far _entry_14                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_049C                          ; 74 12
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A D8 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_049C
L_049C:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_069B                          ; E9 F4 01
;   [unconditional branch target] L_04A7
L_04A7:
        cmp     word ptr [0x7c], 0              ; 83 3E 7C 00 00
        je      L_04B1                          ; 74 03
        jmp     L_069B                          ; E9 EA 01
;   [conditional branch target (if/else)] L_04B1
L_04B1:
        call    far _entry_13                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_069B                          ; E9 E2 01
;   [loop start] L_04B9
L_04B9:
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1dc], 0             ; C7 06 DC 01 00 00
;   [loop start] L_04CB
L_04CB:
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWnd
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_069B                          ; E9 BC 01
;   [loop start] L_04DF
L_04DF:
        mov     word ptr [0x1dc], 1             ; C7 06 DC 01 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A 2B 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 08 05 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 18 05 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        mov     ax, 0x3d                        ; B8 3D 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 3B 05 00 00 [FIXUP]
        jmp     L_04CB                          ; EB AD
;   [loop start] L_051E
L_051E:
        cmp     word ptr [0x1e], si             ; 39 36 1E 00
        jne     L_0527                          ; 75 03
        jmp     L_069B                          ; E9 74 01
;   [conditional branch target (if/else)] L_0527
L_0527:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A B1 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x1e]                 ; FF 36 1E 00
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A 4C 05 00 00 [FIXUP]
        mov     word ptr [0x1e], si             ; 89 36 1E 00
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        push    si                              ; 56
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A C1 05 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1AC8                          ; E8 72 15
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D91                          ; E8 36 28
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xc4], ax             ; A3 C4 00
        mov     word ptr [0x55c], ax            ; A3 5C 05
        push    word ptr [0x328]                ; FF 36 28 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_212A                          ; E8 BC 1B
        push    word ptr [0x328]                ; FF 36 28 03
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
        call    far USER.INVALIDATERECT         ; 9A 0C 06 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D21                          ; E8 99 27
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        jne     L_0592                          ; 75 03
        jmp     L_069B                          ; E9 09 01
;   [conditional branch target (if/else)] L_0592
L_0592:
        push    word ptr [0x55c]                ; FF 36 5C 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1A42                          ; E8 A6 14
        jmp     L_069B                          ; E9 FC 00
;   [loop start] L_059F
L_059F:
        cmp     word ptr [0xc6], si             ; 39 36 C6 00
        jne     L_05A8                          ; 75 03
        jmp     L_069B                          ; E9 F3 00
;   [conditional branch target (if/else)] L_05A8
L_05A8:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 47 01
        push    word ptr [bp + 8]               ; FF 76 08
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0xc6]                 ; FF 36 C6 00
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A D2 05 00 00 [FIXUP]
        mov     word ptr [0xc6], si             ; 89 36 C6 00
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMenu
        push    si                              ; 56
        ;   ^ arg wIDItem
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EB7                          ; E8 DC 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1184                          ; E8 A4 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1AC8                          ; E8 E2 14
        push    word ptr [0x328]                ; FF 36 28 03
        push    word ptr [0x78]                 ; FF 36 78 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D91                          ; E8 92 27
        push    word ptr [0x328]                ; FF 36 28 03
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
        call    far USER.INVALIDATERECT         ; 9A 7A 02 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D21                          ; E8 08 27
        mov     word ptr [0x55c], 0             ; C7 06 5C 05 00 00
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        je      L_062D                          ; 74 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1A42                          ; E8 15 14
;   [conditional branch target (if/else)] L_062D
L_062D:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 20 01
        jmp     L_069B                          ; EB 67
        dec     bp                              ; 4D
        add     al, 0x4d                        ; 04 4D
        add     al, 0x70                        ; 04 70
        add     al, 0x4d                        ; 04 4D
        add     al, 0x56                        ; 04 56
        add     al, 0x3e                        ; 04 3E
        add     al, 0x38                        ; 04 38
        add     al, 0x4d                        ; 04 4D
        add     al, 0x4d                        ; 04 4D
        add     al, 0x3d                        ; 04 3D
        inc     dx                              ; 42
        add     byte ptr [di + 3], dh           ; 00 75 03
        jmp     L_044D                          ; E9 FF FD
        jg      L_066F                          ; 7F 1F
        cmp     ax, 0x3d                        ; 3D 3D 00
        jne     L_0658                          ; 75 03
        jmp     L_04DF                          ; E9 87 FE
;   [conditional branch target (if/else)] L_0658
L_0658:
        cmp     ax, 0x3e                        ; 3D 3E 00
        jl      L_069B                          ; 7C 3E
        cmp     ax, 0x3f                        ; 3D 3F 00
        jg      L_0665                          ; 7F 03
        jmp     L_051E                          ; E9 B9 FE
;   [conditional branch target (if/else)] L_0665
L_0665:
        cmp     ax, 0x41                        ; 3D 41 00
        jne     L_066D                          ; 75 03
        jmp     L_04B9                          ; E9 4C FE
;   [conditional branch target (if/else)] L_066D
L_066D:
        jmp     L_069B                          ; EB 2C
;   [conditional branch target (if/else)] L_066F
L_066F:
        cmp     ax, 0x49                        ; 3D 49 00
        jg      L_068B                          ; 7F 17
        cmp     ax, 0x48                        ; 3D 48 00
        jl      L_067C                          ; 7C 03
        jmp     L_044D                          ; E9 D1 FD
;   [conditional branch target (if/else)] L_067C
L_067C:
        cmp     ax, 0x44                        ; 3D 44 00
        jl      L_069B                          ; 7C 1A
        cmp     ax, 0x47                        ; 3D 47 00
        jg      L_0689                          ; 7F 03
        jmp     L_059F                          ; E9 16 FF
;   [conditional branch target (if/else)] L_0689
L_0689:
        jmp     L_069B                          ; EB 10
;   [conditional branch target (if/else)] L_068B
L_068B:
        cmp     ax, 0x4a                        ; 3D 4A 00
        jne     L_0693                          ; 75 03
        jmp     L_0456                          ; E9 C3 FD
;   [conditional branch target (if/else)] L_0693
L_0693:
        cmp     ax, 0x7d0                       ; 3D D0 07
        jne     L_069B                          ; 75 03
        jmp     L_044D                          ; E9 B2 FD
;   [branch target] L_069B
L_069B:
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
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06BF                          ; 75 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D91                          ; E8 D2 26
;   [conditional branch target (if/else)] L_06BF
L_06BF:
        push    word ptr [0x328]                ; FF 36 28 03
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_23ED                          ; E8 1E 1D
        push    word ptr [0x328]                ; FF 36 28 03
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_06E9                          ; 74 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D21                          ; E8 38 26
;   [conditional branch target (if/else)] L_06E9
L_06E9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: CLIENTTOSCREEN, SETCURSOR, SETCURSORPOS (+1 more).

;-------------------------------------------------------------------------
; sub_06F4   offset=0x06F4  size=40 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   CLIENTTOSCREEN
;   SETCURSOR
;   SETCURSORPOS
;   SHOWCURSOR
;-------------------------------------------------------------------------
;   [sub-routine] L_06F4
L_06F4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0737                          ; 74 2F
        mov     ax, word ptr [0x184]            ; A1 84 01
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x384]            ; A1 84 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x346]                ; FF 36 46 03
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0737
L_0737:
        push    word ptr [0x420]                ; FF 36 20 04
        call    far USER.SETCURSOR              ; 9A 69 07 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 60 07 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xa]  WORD      (1 use)

; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0752   offset=0x0752  size=113 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   SETCURSOR
;   SHOWCURSOR
;
; Near calls (internal): L_0845, L_085B, L_0874, L_0BC0, L_1AC8
;-------------------------------------------------------------------------
;   [sub-routine] L_0752
L_0752:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x34a]                ; FF 36 4A 03
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
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
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_07B6                          ; 74 30
        cmp     word ptr [0xbc], 0              ; 83 3E BC 00 00
        je      L_079F                          ; 74 12
        mov     word ptr [0xc0], 1              ; C7 06 C0 00 01 00
        mov     word ptr [0xbc], 0              ; C7 06 BC 00 00 00
        mov     word ptr [0x14], 1              ; C7 06 14 00 01 00
;   [conditional branch target (if/else)] L_079F
L_079F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x184], ax            ; A3 84 01
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x384], ax            ; A3 84 03
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BC0                          ; E8 0C 04
        jmp     L_07D8                          ; EB 22
;   [conditional branch target (if/else)] L_07B6
L_07B6:
        mov     word ptr [0xbc], 1              ; C7 06 BC 00 01 00
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_07CC                          ; 74 09
        push    word ptr [0xc8]                 ; FF 36 C8 00
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07CC
L_07CC:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1AC8                          ; E8 F6 12
        mov     word ptr [0xc8], 0              ; C7 06 C8 00 00 00
;   [unconditional branch target] L_07D8
L_07D8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        xor     ax, ax                          ; 33 C0
        mov     bx, ax                          ; 8B D8
        mov     bp, ax                          ; 8B E8
        mov     cx, 0x20                        ; B9 20 00
;   [loop iteration target] L_0802
L_0802:
        shl     si, 1                           ; D1 E6
        rcl     di, 1                           ; D1 D7
        xchg    bp, ax                          ; 95
        call    L_0874                          ; E8 6A 00
        xchg    bp, ax                          ; 95
        xchg    bx, ax                          ; 93
        call    L_0874                          ; E8 65 00
        xchg    bx, ax                          ; 93
        adc     al, 0                           ; 14 00
        loop    L_0802                          ; E2 EE
        mov     cx, bp                          ; 8B CD
        pop     bp                              ; 5D
        push    bp                              ; 55
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     bp, cx                          ; 8B E9
        mov     cx, 0x1810                      ; B9 10 18
        xchg    dx, ax                          ; 92
        call    L_085B                          ; E8 37 00
        xchg    bx, ax                          ; 93
        call    L_0845                          ; E8 1D 00
        xchg    bp, ax                          ; 95
        call    L_0845                          ; E8 19 00
        xor     ax, ax                          ; 33 C0
        xor     ax, ax                          ; 33 C0
        stosb   byte ptr es:[di], al            ; AA
        pop     bp                              ; 5D
        sub     di, word ptr [bp + 6]           ; 2B 7E 06
        dec     di                              ; 4F
        mov     ax, di                          ; 8B C7
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_0845   offset=0x0845  size=4 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: unknown
;
; Near calls (internal): L_084C
;-------------------------------------------------------------------------
;   [sub-routine] L_0845
L_0845:
        push    ax                              ; 50
        mov     dl, ah                          ; 8A D4
        call    L_084C                          ; E8 01 00
        pop     dx                              ; 5A
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_084C   offset=0x084C  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_085B
;-------------------------------------------------------------------------
;   [sub-routine] L_084C
L_084C:
        mov     dh, dl                          ; 8A F2
        shr     dl, 1                           ; D0 EA
        shr     dl, 1                           ; D0 EA
        shr     dl, 1                           ; D0 EA
        shr     dl, 1                           ; D0 EA
        call    L_085B                          ; E8 02 00
        ; constant VK_RETURN
        mov     dl, dh                          ; 8A D6
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_085B   offset=0x085B  size=12 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_085B
L_085B:
        and     dl, 0xf                         ; 80 E2 0F
        je      L_0862                          ; 74 02
        mov     cl, 0                           ; B1 00
;   [conditional branch target (if/else)] L_0862
L_0862:
        dec     ch                              ; FE CD
        and     cl, ch                          ; 22 CD
        or      dl, 0x30                        ; 80 CA 30
        sub     dl, cl                          ; 2A D1
        cmp     dl, 0x20                        ; 80 FA 20
        je      L_0873                          ; 74 03
        mov     al, dl                          ; 8A C2
        stosb   byte ptr es:[di], al            ; AA
;   [error/early exit] L_0873
L_0873:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_0874   offset=0x0874  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0874
L_0874:
        adc     al, al                          ; 12 C0
        daa                                     ; 27
        xchg    ah, al                          ; 86 C4
        adc     al, al                          ; 12 C0
        daa                                     ; 27
        xchg    ah, al                          ; 86 C4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_087F   offset=0x087F  size=9 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=3)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_087F
L_087F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        ; constant WM_GETTEXTLENGTH
        mov     ah, 0xe                         ; B4 0E
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: 5, 6.

;-------------------------------------------------------------------------
; sub_0891   offset=0x0891  size=36 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   5
;   6
;-------------------------------------------------------------------------
;   [sub-routine] L_0891
L_0891:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        lds     dx, ptr [bp + 0xc]              ; C5 56 0C
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_08C2                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_08C2
L_08C2:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_08E1   offset=0x08E1  size=22 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_08E1
L_08E1:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jb      L_08FB                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_08FB
L_08FB:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_0907   offset=0x0907  size=18 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=6, ASM=5)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0907
L_0907:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        lds     dx, ptr [bp + 4]                ; C5 56 04
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ah, 0x11                        ; B4 11
        int     0x21                            ; CD 21
        cwde                                    ; 98
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: 6.

;-------------------------------------------------------------------------
; sub_0925   offset=0x0925  size=42 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=8)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   6
;-------------------------------------------------------------------------
;   [sub-routine] L_0925
L_0925:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        les     di, ptr [bp + 8]                ; C4 7E 08
        cld                                     ; FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      al, al                          ; 0A C0
        jne     L_0943                          ; 75 06
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        inc     al                              ; FE C0
;   [conditional branch target (if/else)] L_0943
L_0943:
        mov     dl, al                          ; 8A D0
        mov     al, 0x5c                        ; B0 5C
        stosb   byte ptr es:[di], al            ; AA
        push    es                              ; 06
        pop     ds                              ; 1F
        mov     si, di                          ; 8B F7
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        jb      L_0965                          ; 72 13
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KEYBOARD.6                  ; 9A D1 08 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0965
L_0965:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_0973   offset=0x0973  size=11 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=3)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0973
L_0973:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     dx, ptr [bp + 8]                ; C5 56 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, 0x4b00                      ; B8 00 4B
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: TEXTOUT, LSTRLEN.

;-------------------------------------------------------------------------
; sub_0989   offset=0x0989  size=77 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_0989
L_0989:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
        cdq                                     ; 99
        div     word ptr [0x35e]                ; F7 36 5E 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
;   [loop start] L_09A1
L_09A1:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0A37                          ; E9 8E 00
;   [loop start] L_09A9
L_09A9:
        mov     bx, word ptr [0x382]            ; 8B 1E 82 03
        mul     bx                              ; F7 E3
        mov     bx, word ptr [0xcc]             ; 8B 1E CC 00
        inc     bx                              ; 43
        shr     bx, 1                           ; D1 EB
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     bx, word ptr [0x354]            ; 8B 1E 54 03
        mul     bx                              ; F7 E3
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     bx, word ptr [0x35e]            ; 8B 1E 5E 03
        mul     bx                              ; F7 E3
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        add     ax, word ptr [0xc4]             ; 03 06 C4 00
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x532]            ; 03 06 32 05
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si]               ; 8B 04
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        mov     bx, ax                          ; 8B D8
        mov     es, word ptr [bp + 6]           ; 8E 46 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        and     byte ptr es:[bx], 0x10          ; 26 80 27 10
        je      L_09F8                          ; 74 01
        inc     ax                              ; 40
;   [conditional branch target (if/else)] L_09F8
L_09F8:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        add     bx, 9                           ; 83 C3 09
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        mov     word ptr [bp - 8], es           ; 8C 46 F8
        mov     di, bx                          ; 8B FB
        push    es                              ; 06
        ;   ^ arg lpsz (high/segment)
        push    di                              ; 57
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [loop start] L_0A10
L_0A10:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg x
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg y
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg lpszStr (high/segment)
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        jne     L_0A10                          ; 75 E1
        inc     word ptr [bp - 2]               ; FF 46 FE
        dec     word ptr [bp + 8]               ; FF 4E 08
        je      L_0A49                          ; 74 12
;   [unconditional branch target] L_0A37
L_0A37:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     ax, word ptr [0x35e]            ; 3B 06 5E 03
        jae     L_0A43                          ; 73 03
        jmp     L_09A9                          ; E9 66 FF
;   [conditional branch target (if/else)] L_0A43
L_0A43:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_09A1                          ; E9 58 FF
;   [conditional branch target (if/else)] L_0A49
L_0A49:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: SETBKMODE.

;-------------------------------------------------------------------------
; sub_0A52   offset=0x0A52  size=86 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;
; Near calls (internal): L_0989, L_2707
;-------------------------------------------------------------------------
;   [sub-routine] L_0A52
L_0A52:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    es                              ; 06
        mov     ax, word ptr [0x1e]             ; A1 1E 00
        cmp     ax, 0x3e                        ; 3D 3E 00
        jne     L_0A77                          ; 75 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        mov     bx, word ptr [0x354]            ; 8B 1E 54 03
        div     bx                              ; F7 F3
        mov     bx, word ptr [0x35e]            ; 8B 1E 5E 03
        mul     bx                              ; F7 E3
        jmp     L_0A87                          ; EB 11
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0A77
L_0A77:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        push    ax                              ; 50
        call    L_2707                          ; E8 85 1C
        or      ax, ax                          ; 0B C0
        je      L_0A87                          ; 74 01
        dec     ax                              ; 48
;   [branch target] L_0A87
L_0A87:
        add     ax, word ptr [0xc4]             ; 03 06 C4 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x1e]             ; A1 1E 00
        cmp     ax, 0x3e                        ; 3D 3E 00
        jne     L_0AB4                          ; 75 1E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        mov     bx, word ptr [0x354]            ; 8B 1E 54 03
        add     ax, bx                          ; 03 C3
        dec     ax                              ; 48
        cdq                                     ; 99
        div     bx                              ; F7 F3
        inc     ax                              ; 40
        mov     bx, word ptr [0x35e]            ; 8B 1E 5E 03
        mul     bx                              ; F7 E3
        jmp     L_0AC4                          ; EB 11
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0AB4
L_0AB4:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        call    L_2707                          ; E8 44 1C
        inc     ax                              ; 40
;   [unconditional branch target] L_0AC4
L_0AC4:
        mov     bx, word ptr [0x182]            ; 8B 1E 82 01
        sub     bx, word ptr [bp - 2]           ; 2B 5E FE
        jb      L_0B25                          ; 72 58
        cmp     ax, bx                          ; 3B C3
        jle     L_0AD3                          ; 7E 02
        mov     ax, bx                          ; 8B C3
;   [conditional branch target (if/else)] L_0AD3
L_0AD3:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0B25                          ; 74 4B
        mov     ax, word ptr [0xc8]             ; A1 C8 00
        or      ax, ax                          ; 0B C0
        je      L_0B25                          ; 74 44
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_0B11                          ; 75 15
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0989                          ; E8 7B FE
        jmp     L_0B25                          ; EB 15
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0B11
L_0B11:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0B25
L_0B25:
        pop     es                              ; 07
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (2 uses)
;     [bp+0x8]  HWND      (1 use)
;   Locals:
;     [bp-0x10]   HANDLE    (3 uses)
;     [bp-0x12]   HANDLE    (2 uses)

; Description (heuristic):
;   Mixed routine using: CREATESOLIDBRUSH, DELETEOBJECT, SELECTOBJECT (+6 more).

;-------------------------------------------------------------------------
; sub_0B2C   offset=0x0B2C  size=55 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBRUSHORG
;   UNREALIZEOBJECT
;   CLIENTTOSCREEN
;   FILLRECT
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETSYSCOLOR
;-------------------------------------------------------------------------
;   [sub-routine] L_0B2C
L_0B2C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 8F 03 00 00 [FIXUP]
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
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        call    far GDI.UNREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 28 07 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A A9 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   String manipulation routine (3 string APIs).

;-------------------------------------------------------------------------
; sub_0BC0   offset=0x0BC0  size=283 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;
; Near calls (internal): L_2DB6
;-------------------------------------------------------------------------
;   [sub-routine] L_0BC0
L_0BC0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x80                        ; 81 EC 80 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x560]            ; A1 60 05
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0x7e], ax        ; 39 46 82
        jge     L_0C0E                          ; 7D 11
        mov     ax, word ptr [0x560]            ; A1 60 05
        mov     word ptr [0x5a6], ax            ; A3 A6 05
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x3d8]            ; A1 D8 03
        jmp     L_0C51                          ; EB 43
;   [conditional branch target (if/else)] L_0C0E
L_0C0E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 8                           ; 2D 08 00
        cdq                                     ; 99
        mov     bx, word ptr [0x5b6]            ; 8B 1E B6 05
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     bx, cl                          ; D3 E3
        idiv    bx                              ; F7 FB
        mov     si, ax                          ; 8B F0
        cmp     si, 1                           ; 83 FE 01
        jge     L_0C2B                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C2D                          ; EB 02
;   [conditional branch target (if/else)] L_0C2B
L_0C2B:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_0C2D
L_0C2D:
        mov     word ptr [0x5a6], ax            ; A3 A6 05
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x560]            ; A1 60 05
        add     ax, word ptr [0x5a6]            ; 03 06 A6 05
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x5a6]            ; 8B 0E A6 05
        idiv    cx                              ; F7 F9
        imul    word ptr [0x3d8]                ; F7 2E D8 03
;   [unconditional branch target] L_0C51
L_0C51:
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, 0x1e0                       ; B8 E0 01
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A BC 0C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [0x26e], ax            ; A3 6E 02
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr [bx + 0x1e0], 0        ; C6 87 E0 01 00
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 49 04 00 00 [FIXUP]
        cmp     byte ptr [0x534], 0             ; 80 3E 34 05 00
        je      L_0CB6                          ; 74 2F
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        jne     L_0CB6                          ; 75 28
        mov     bx, word ptr [0x5b2]            ; 8B 1E B2 05
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        je      L_0CA7                          ; 74 0F
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x20                        ; B8 20 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A B2 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0CA7
L_0CA7:
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x534                       ; B8 34 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0CB6
L_0CB6:
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 09 0A 00 00 [FIXUP]
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        add     ax, word ptr [0x26e]            ; 03 06 6E 02
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        mov     word ptr [0x270], ax            ; A3 70 02
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        add     ax, word ptr [bp - 0x80]        ; 03 46 80
        add     ax, 8                           ; 05 08 00
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jge     L_0D08                          ; 7D 2C
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x3d8]            ; A1 D8 03
        sub     ax, word ptr [0x382]            ; 2B 06 82 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x7c], ax        ; 89 46 84
        jmp     L_0D15                          ; EB 0D
;   [conditional branch target (if/else)] L_0D08
L_0D08:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        mov     word ptr [bp - 0x7c], 8         ; C7 46 84 08 00
;   [unconditional branch target] L_0D15
L_0D15:
        mov     word ptr [bp - 0x78], 8         ; C7 46 88 08 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        mov     ax, word ptr [bp - 0x7a]        ; 8B 46 86
        add     ax, word ptr [0x382]            ; 03 06 82 03
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     ax, word ptr [0x35a]            ; A1 5A 03
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0D3A                          ; 75 08
        mov     ax, word ptr [0x35c]            ; A1 5C 03
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_0D8D                          ; 74 53
;   [conditional branch target (if/else)] L_0D3A
L_0D3A:
        push    word ptr [0x346]                ; FF 36 46 03
        ;   ^ arg hWnd
        mov     ax, 0x356                       ; B8 56 03
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A DA 0D 00 00 [FIXUP]
        mov     ax, word ptr [0x382]            ; A1 82 03
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        dec     ax                              ; 48
        mov     word ptr [0x358], ax            ; A3 58 03
        mov     word ptr [0x356], 8             ; C7 06 56 03 08 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x35a], ax            ; A3 5A 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x35c], ax            ; A3 5C 03
        push    word ptr [0x5aa]                ; FF 36 AA 05
        ;   ^ arg hWnd
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [0x358]                ; FF 36 58 03
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 0E 0E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0D8D
L_0D8D:
        mov     ax, word ptr [bp - 0x76]        ; 8B 46 8A
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     ax, word ptr [0x29c]            ; A1 9C 02
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x29c]            ; 03 06 9C 02
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        mov     ax, word ptr [0x29e]            ; A1 9E 02
        add     word ptr [bp - 0x6e], ax        ; 01 46 92
        mov     ax, word ptr [0x37a]            ; A1 7A 03
        cmp     word ptr [bp - 0x7c], ax        ; 39 46 84
        jne     L_0DCC                          ; 75 10
        mov     ax, word ptr [0x37e]            ; A1 7E 03
        cmp     word ptr [bp - 0x78], ax        ; 39 46 88
        jne     L_0DCC                          ; 75 08
        mov     ax, word ptr [0x37c]            ; A1 7C 03
        cmp     word ptr [bp - 0x7a], ax        ; 39 46 86
        je      L_0E12                          ; 74 46
;   [conditional branch target (if/else)] L_0DCC
L_0DCC:
        push    word ptr [0x346]                ; FF 36 46 03
        ;   ^ arg hWnd
        mov     ax, 0x37a                       ; B8 7A 03
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 38 0E 00 00 [FIXUP]
        mov     di, 0x37a                       ; BF 7A 03
        lea     si, [bp - 0x7c]                 ; 8D 76 84
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        push    word ptr [0x55e]                ; FF 36 5E 05
        ;   ^ arg hWnd
        push    word ptr [0x37a]                ; FF 36 7A 03
        ;   ^ arg x
        push    word ptr [0x37c]                ; FF 36 7C 03
        ;   ^ arg y
        mov     ax, word ptr [0x37e]            ; A1 7E 03
        sub     ax, word ptr [0x37a]            ; 2B 06 7A 03
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x380]            ; A1 80 03
        sub     ax, word ptr [0x37c]            ; 2B 06 7C 03
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 68 0E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E12
L_0E12:
        mov     ax, word ptr [0x18a]            ; A1 8A 01
        cmp     word ptr [bp - 0x72], ax        ; 39 46 8E
        jne     L_0E2A                          ; 75 10
        mov     ax, word ptr [0x18e]            ; A1 8E 01
        cmp     word ptr [bp - 0x6e], ax        ; 39 46 92
        jne     L_0E2A                          ; 75 08
        mov     ax, word ptr [0x18c]            ; A1 8C 01
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        je      L_0E73                          ; 74 49
;   [conditional branch target (if/else)] L_0E2A
L_0E2A:
        push    word ptr [0x346]                ; FF 36 46 03
        ;   ^ arg hWnd
        mov     ax, 0x188                       ; B8 88 01
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 7B 05 00 00 [FIXUP]
        mov     di, 0x188                       ; BF 88 01
        lea     si, [bp - 0x74]                 ; 8D 76 8C
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        push    word ptr [0x328]                ; FF 36 28 03
        ;   ^ arg hWnd
        push    word ptr [bp - 0x74]            ; FF 76 8C
        ;   ^ arg x
        push    word ptr [bp - 0x72]            ; FF 76 8E
        ;   ^ arg y
        mov     ax, word ptr [bp - 0x70]        ; 8B 46 90
        sub     ax, word ptr [bp - 0x74]        ; 2B 46 8C
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        sub     ax, word ptr [bp - 0x72]        ; 2B 46 8E
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2DB6                          ; E8 43 1F
;   [conditional branch target (if/else)] L_0E73
L_0E73:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): GETDC, HIDECARET.

;-------------------------------------------------------------------------
; sub_0E80   offset=0x0E80  size=9 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   HIDECARET
;-------------------------------------------------------------------------
;   [sub-routine] L_0E80
L_0E80:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x328]                ; FF 36 28 03
        call    far USER.HIDECARET              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A C4 06 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)
;     [bp+0x6]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): RELEASEDC, SHOWCARET.

;-------------------------------------------------------------------------
; sub_0E9A   offset=0x0E9A  size=10 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SHOWCARET
;-------------------------------------------------------------------------
;   [sub-routine] L_0E9A
L_0E9A:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A D7 06 00 00 [FIXUP]
        push    word ptr [0x328]                ; FF 36 28 03
        call    far USER.SHOWCARET              ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (78 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0EB7   offset=0x0EB7  size=78 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_0F4B
;-------------------------------------------------------------------------
;   [sub-routine] L_0EB7
L_0EB7:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        mov     ax, word ptr [0xc6]             ; A1 C6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xc8]             ; A1 C8 00
        or      ax, ax                          ; 0B C0
        je      L_0EDF                          ; 74 0B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [0x1d6]            ; 8B 1E D6 01
        or      bx, bx                          ; 0B DB
        jne     L_0EE2                          ; 75 03
;   [conditional branch target (if/else)] L_0EDF
L_0EDF:
        jmp     L_0F3F                          ; EB 5E
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0EE2
L_0EE2:
        push    ds                              ; 1E
        mov     di, bx                          ; 8B FB
        shr     bx, 1                           ; D1 EB
        mov     si, bx                          ; 8B F3
        jmp     L_0EF6                          ; EB 0B
;   [loop start] L_0EEB
L_0EEB:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0F4B                          ; E8 55 00
;   [unconditional branch target] L_0EF6
L_0EF6:
        dec     si                              ; 4E
        cmp     si, 0                           ; 83 FE 00
        jge     L_0EEB                          ; 7D EF
        jmp     L_0F3B                          ; EB 3D
;   [loop start] L_0EFE
L_0EFE:
        mov     bx, di                          ; 8B DF
        mov     ds, word ptr [bp - 4]           ; 8E 5E FC
        xor     si, si                          ; 33 F6
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x1c]                 ; 8D 7E E4
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    ds                              ; 1E
        pop     es                              ; 07
        xor     di, di                          ; 33 FF
        mov     ax, bx                          ; 8B C3
        mov     cx, 0x16                        ; B9 16 00
        mul     cx                              ; F7 E1
        mov     si, ax                          ; 8B F0
        shr     cx, 1                           ; D1 E9
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     di, ax                          ; 8B F8
        push    ss                              ; 16
        pop     ds                              ; 1F
        lea     si, [bp - 0x1c]                 ; 8D 76 E4
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     di, bx                          ; 8B FB
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0F4B                          ; E8 10 00
;   [unconditional branch target] L_0F3B
L_0F3B:
        dec     di                              ; 4F
        jne     L_0EFE                          ; 75 C0
        pop     ds                              ; 1F
;   [unconditional branch target] L_0F3F
L_0F3F:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (84 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F4B   offset=0x0F4B  size=84 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0FF1
;-------------------------------------------------------------------------
;   [sub-routine] L_0F4B
L_0F4B:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        push    ds                              ; 1E
        mov     ds, word ptr [bp + 6]           ; 8E 5E 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
;   [loop start] L_0F6C
L_0F6C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     ax, bx                          ; 3B C3
        jae     L_0FD2                          ; 73 56
        dec     bx                              ; 4B
        cmp     ax, bx                          ; 3B C3
        je      L_0F9A                          ; 74 19
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        add     bx, ax                          ; 03 D8
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    bx                              ; 53
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0FF1                          ; E8 5F 00
        cmp     ax, 0                           ; 3D 00 00
        jge     L_0F9A                          ; 7D 03
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [conditional branch target (if/else)] L_0F9A
L_0F9A:
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        push    es                              ; 06
        push    di                              ; 57
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0FF1                          ; E8 40 00
        cmp     ax, 0                           ; 3D 00 00
        jge     L_0FD2                          ; 7D 1C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, 0x16                        ; B9 16 00
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mul     cx                              ; F7 E1
        mov     si, ax                          ; 8B F0
        shr     cx, 1                           ; D1 E9
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        jmp     L_0F6C                          ; EB 9A
;   [conditional branch target (if/else)] L_0FD2
L_0FD2:
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ss                              ; 16
        pop     ds                              ; 1F
        lea     si, [bp - 0x18]                 ; 8D 76 E8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, 0x16                        ; B9 16 00
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        shr     cl, 1                           ; D0 E9
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (99 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0FF1   offset=0x0FF1  size=99 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0FF1
L_0FF1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        push    ds                              ; 1E
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     dl, byte ptr [si]               ; 8A 14
        and     dl, 0x10                        ; 80 E2 10
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_1012                          ; 74 09
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        or      dl, dl                          ; 0A D2
        jne     L_1021                          ; 75 11
        jmp     L_103D                          ; EB 2B
;   [conditional branch target (if/else)] L_1012
L_1012:
        mov     ax, 0xffff                      ; B8 FF FF
        or      dl, dl                          ; 0A D2
        jne     L_103D                          ; 75 24
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x44                        ; 3D 44 00
        jne     L_1040                          ; 75 1F
;   [conditional branch target (if/else)] L_1021
L_1021:
        add     si, 9                           ; 83 C6 09
        add     bx, 9                           ; 83 C3 09
;   [loop start] L_1027
L_1027:
        xor     ah, ah                          ; 32 E4
;   [loop start] L_1029
L_1029:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, byte ptr es:[bx]            ; 26 3A 07
        jne     L_1036                          ; 75 07
        inc     bx                              ; 43
        or      al, al                          ; 0A C0
        jne     L_1029                          ; 75 F5
        jmp     L_103D                          ; EB 07
;   [conditional branch target (if/else)] L_1036
L_1036:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ja      L_103C                          ; 77 02
        mov     al, 0xff                        ; B0 FF
;   [conditional branch target (if/else)] L_103C
L_103C:
        cwde                                    ; 98
;   [loop start (also forward branch)] L_103D
L_103D:
        jmp     L_10C0                          ; E9 80 00
;   [conditional branch target (if/else)] L_1040
L_1040:
        cmp     ax, 0x46                        ; 3D 46 00
        jne     L_1061                          ; 75 1C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     cx, word ptr [si + 7]           ; 8B 4C 07
        cmp     cx, word ptr es:[bx + 7]        ; 26 3B 4F 07
        jb      L_103D                          ; 72 EC
        jne     L_105C                          ; 75 09
        mov     cx, word ptr [si + 5]           ; 8B 4C 05
        cmp     cx, word ptr es:[bx + 5]        ; 26 3B 4F 05
        jb      L_103D                          ; 72 E1
;   [loop start (also forward branch)] L_105C
L_105C:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_103D                          ; EB DC
;   [conditional branch target (if/else)] L_1061
L_1061:
        cmp     ax, 0x45                        ; 3D 45 00
        jne     L_1083                          ; 75 1D
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     cx, word ptr [si + 3]           ; 8B 4C 03
        cmp     cx, word ptr es:[bx + 3]        ; 26 3B 4F 03
        jb      L_103D                          ; 72 CB
        jne     L_105C                          ; 75 E8
        mov     cx, word ptr [si + 1]           ; 8B 4C 01
        cmp     cx, word ptr es:[bx + 1]        ; 26 3B 4F 01
        jb      L_103D                          ; 72 C0
        ja      L_105C                          ; 77 DD
        xor     ax, ax                          ; 33 C0
        jmp     L_103D                          ; EB BA
;   [conditional branch target (if/else)] L_1083
L_1083:
        add     si, 9                           ; 83 C6 09
        mov     cx, si                          ; 8B CE
        xor     ah, ah                          ; 32 E4
;   [loop start] L_108A
L_108A:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x2e                        ; 3C 2E
        je      L_1093                          ; 74 04
        or      al, al                          ; 0A C0
        jne     L_108A                          ; 75 F7
;   [conditional branch target (if/else)] L_1093
L_1093:
        mov     dx, si                          ; 8B D6
        mov     si, bx                          ; 8B F3
        add     si, 9                           ; 83 C6 09
        mov     di, si                          ; 8B FE
;   [loop start] L_109C
L_109C:
        lodsb   al, byte ptr es:[si]            ; 26 AC
        cmp     al, 0x2e                        ; 3C 2E
        je      L_10A6                          ; 74 04
        or      al, al                          ; 0A C0
        jne     L_109C                          ; 75 F6
;   [conditional branch target (if/else)] L_10A6
L_10A6:
        mov     bx, si                          ; 8B DE
        mov     si, dx                          ; 8B F2
;   [loop start] L_10AA
L_10AA:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, byte ptr es:[bx]            ; 26 3A 07
        jne     L_10BC                          ; 75 0C
        inc     bx                              ; 43
        or      al, al                          ; 0A C0
        jne     L_10AA                          ; 75 F5
        mov     si, cx                          ; 8B F1
        mov     bx, di                          ; 8B DF
        jmp     L_1027                          ; E9 6B FF
;   [conditional branch target (if/else)] L_10BC
L_10BC:
        sub     al, byte ptr es:[bx]            ; 26 2A 07
        cwde                                    ; 98
;   [unconditional branch target] L_10C0
L_10C0:
        pop     ds                              ; 1F
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: LSTRLEN, 6.

;-------------------------------------------------------------------------
; sub_10CA   offset=0x10CA  size=70 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LSTRLEN(LPSTR lpsz) -> INT
;   6
;-------------------------------------------------------------------------
;   [sub-routine] L_10CA
L_10CA:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_1135                          ; 74 5E
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_10EB
L_10EB:
        mov     ax, word ptr [0x1d6]            ; A1 D6 01
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_113A                          ; 7D 47
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KEYBOARD.6                  ; 9A 5F 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     word ptr [bp - 0xa], 0x16       ; 83 46 F6 16
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 5A 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_1130                          ; 7E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_1130
L_1130:
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_10EB                          ; EB B6
;   [conditional branch target (if/else)] L_1135
L_1135:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
;   [conditional branch target (if/else)] L_113A
L_113A:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     cx, ax                          ; 8B C8
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [0x354], cx            ; 89 0E 54 03
        mov     ax, cx                          ; 8B C1
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [0x354], ax            ; A3 54 03
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [0x3d6], ax            ; A3 D6 03
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HANDLE    (1 use)

; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_1184   offset=0x1184  size=98 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   GETPROFILESTRING
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_126A, L_1A42, L_212A
;-------------------------------------------------------------------------
;   [sub-routine] L_1184
L_1184:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [0x182], 0             ; C7 06 82 01 00 00
        mov     word ptr [0xc4], 0              ; C7 06 C4 00 00 00
        mov     word ptr [0x55c], 0             ; C7 06 5C 05 00 00
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        je      L_11DD                          ; 74 31
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
        je      L_11DD                          ; 74 1D
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x104                       ; B8 04 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_11DD
L_11DD:
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_1231                          ; 74 4D
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        sub     si, si                          ; 2B F6
        jmp     L_122B                          ; EB 37
;   [loop start] L_11F4
L_11F4:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        jne     L_1217                          ; 75 1A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x534                       ; B8 34 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_126A                          ; E8 57 00
        or      ax, ax                          ; 0B C0
        je      L_1226                          ; 74 0F
;   [conditional branch target (if/else)] L_1217
L_1217:
        mov     di, 0x182                       ; BF 82 01
        mov     bx, word ptr [di]               ; 8B 1D
        inc     word ptr [di]                   ; FF 05
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [0x532]            ; 8B 3E 32 05
        mov     word ptr [bx + di], si          ; 89 31
;   [conditional branch target (if/else)] L_1226
L_1226:
        add     word ptr [bp - 0xa], 0x16       ; 83 46 F6 16
        inc     si                              ; 46
;   [unconditional branch target] L_122B
L_122B:
        cmp     word ptr [0x1d6], si            ; 39 36 D6 01
        jg      L_11F4                          ; 7F C3
;   [conditional branch target (if/else)] L_1231
L_1231:
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        je      L_1246                          ; 74 0E
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1246                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A A0 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1246
L_1246:
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        je      L_1254                          ; 74 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1A42                          ; E8 EE 07
;   [conditional branch target (if/else)] L_1254
L_1254:
        push    word ptr [0x328]                ; FF 36 28 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_212A                          ; E8 CB 0E
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: ANSIUPPER.

;-------------------------------------------------------------------------
; sub_126A   offset=0x126A  size=147 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_126A
L_126A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        jne     L_1281                          ; 75 03
        jmp     L_1332                          ; E9 B1 00
;   [conditional branch target (if/else)] L_1281
L_1281:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_1297                          ; 75 10
        mov     word ptr [bp + 6], 0x28         ; C7 46 06 28 00
        jmp     L_1297                          ; EB 09
;   [loop start] L_128E
L_128E:
        cmp     byte ptr [bp - 0xa], 0x2e       ; 80 7E F6 2E
        je      L_12A4                          ; 74 10
        inc     word ptr [bp + 0xc]             ; FF 46 0C
;   [branch target] L_1297
L_1297:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        jne     L_128E                          ; 75 EA
;   [conditional branch target (if/else)] L_12A4
L_12A4:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_12B0                          ; 75 03
        jmp     L_13D3                          ; E9 23 01
;   [conditional branch target (if/else)] L_12B0
L_12B0:
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [loop start] L_12B9
L_12B9:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_12C4                          ; 75 03
        jmp     L_13D3                          ; E9 0F 01
;   [conditional branch target (if/else)] L_12C4
L_12C4:
        jmp     L_12C9                          ; EB 03
;   [loop start] L_12C6
L_12C6:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_12C9
L_12C9:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_12C6                          ; 74 F5
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_12B9                          ; 74 E3
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_1300                          ; EB 1C
;   [loop start] L_12E4
L_12E4:
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 64 01 00 00 [FIXUP]
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_130C                          ; 75 12
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_1300
L_1300:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x20                        ; 3C 20
        jne     L_12E4                          ; 75 D8
;   [conditional branch target (if/else)] L_130C
L_130C:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x20                        ; 3C 20
        je      L_131C                          ; 74 04
        or      al, al                          ; 0A C0
        jne     L_1325                          ; 75 09
;   [loop start (also forward branch)] L_131C
L_131C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_13D5                          ; E9 B3 00
;   [loop start] L_1322
L_1322:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [conditional branch target (if/else)] L_1325
L_1325:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_1322                          ; 77 F2
        jmp     L_12B9                          ; EB 87
;   [unconditional branch target] L_1332
L_1332:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_131C                          ; 74 E1
;   [loop start] L_133B
L_133B:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        je      L_13BE                          ; 74 76
        cwde                                    ; 98
        cmp     ax, 0x2a                        ; 3D 2A 00
        je      L_138A                          ; 74 3C
        cmp     ax, 0x2e                        ; 3D 2E 00
        je      L_13AD                          ; 74 5A
        cmp     ax, 0x3f                        ; 3D 3F 00
        je      L_1368                          ; 74 10
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_13D3                          ; 75 73
;   [loop start] L_1360
L_1360:
        inc     word ptr [bp + 0xc]             ; FF 46 0C
;   [loop start] L_1363
L_1363:
        inc     word ptr [bp + 8]               ; FF 46 08
        jmp     L_133B                          ; EB D3
;   [conditional branch target (if/else)] L_1368
L_1368:
        inc     word ptr [bp + 8]               ; FF 46 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        je      L_13D3                          ; 74 5B
        cmp     al, 0x2e                        ; 3C 2E
        je      L_133B                          ; 74 BF
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        jmp     L_133B                          ; EB BA
;   [loop start] L_1381
L_1381:
        cmp     byte ptr [bp - 0xa], 0x2e       ; 80 7E F6 2E
        je      L_1397                          ; 74 10
        inc     word ptr [bp + 0xc]             ; FF 46 0C
;   [conditional branch target (if/else)] L_138A
L_138A:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        jne     L_1381                          ; 75 EA
;   [loop start (also forward branch)] L_1397
L_1397:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        je      L_133B                          ; 74 97
        cmp     al, 0x2e                        ; 3C 2E
        je      L_133B                          ; 74 93
        inc     word ptr [bp + 8]               ; FF 46 08
        jmp     L_1397                          ; EB EA
;   [conditional branch target (if/else)] L_13AD
L_13AD:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        je      L_1360                          ; 74 AA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_13D3                          ; 75 17
        jmp     L_1363                          ; EB A5
;   [conditional branch target (if/else)] L_13BE
L_13BE:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_13D3                          ; 75 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_13D3                          ; 75 03
        jmp     L_131C                          ; E9 49 FF
;   [branch target] L_13D3
L_13D3:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_13D5
L_13D5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: POSTMESSAGE.

;-------------------------------------------------------------------------
; sub_13E0   offset=0x13E0  size=41 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;
; Near calls (internal): L_087F, L_0925
;-------------------------------------------------------------------------
;   [sub-routine] L_13E0
L_13E0:
        ;   = cProc <86> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x56                        ; 83 EC 56
        mov     ax, word ptr [0x530]            ; A1 30 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x274]           ; FF B7 74 02
        call    L_087F                          ; E8 82 F4
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0925                          ; E8 1B F5
        or      ax, ax                          ; 0B C0
        je      L_1423                          ; 74 15
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x274]           ; FF B7 74 02
        call    L_087F                          ; E8 60 F4
        sub     ax, ax                          ; 2B C0
        jmp     L_1438                          ; EB 15
;   [conditional branch target (if/else)] L_1423
L_1423:
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A 98 04 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_1438
L_1438:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: LSTRCPY.

;-------------------------------------------------------------------------
; sub_143E   offset=0x143E  size=76 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;
; Near calls (internal): L_0907
;-------------------------------------------------------------------------
;   [sub-routine] L_143E
L_143E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x9e                        ; 81 EC 9E 00
        push    si                              ; 56
        mov     si, 0x1e0                       ; BE E0 01
        mov     bx, word ptr [0x530]            ; 8B 1E 30 05
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0x274]       ; 8A 87 74 02
        add     al, 0x41                        ; 04 41
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        mov     byte ptr [si], 0x3a             ; C6 04 3A
        inc     si                              ; 46
        mov     byte ptr [si], 0                ; C6 04 00
        mov     byte ptr [bp - 0x6a], 0xff      ; C6 46 96 FF
        mov     byte ptr [bp - 0x64], 8         ; C6 46 9C 08
        mov     byte ptr [bp - 0x63], 0         ; C6 46 9D 00
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x44                        ; B8 44 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 1F 15 00 00 [FIXUP]
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x9c]                 ; 8D 86 64 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0907                          ; E8 78 F4
        or      ax, ax                          ; 0B C0
        jne     L_14E8                          ; 75 55
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], ss        ; 8C 56 CA
        jmp     L_14AD                          ; EB 0E
;   [loop start] L_149F
L_149F:
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        mov     cx, ss                          ; 8C D1
        cmp     ax, word ptr [bp - 0x38]        ; 3B 46 C8
        jae     L_14B6                          ; 73 0C
        dec     word ptr [bp - 0x38]            ; FF 4E C8
;   [unconditional branch target] L_14AD
L_14AD:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_149F                          ; 74 E9
;   [conditional branch target (if/else)] L_14B6
L_14B6:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_14C2                          ; 74 03
        inc     word ptr [bp - 0x38]            ; FF 46 C8
;   [conditional branch target (if/else)] L_14C2
L_14C2:
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [loop start] L_14CC
L_14CC:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     dx, word ptr [bp - 0x36]        ; 8B 56 CA
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_14E5                          ; 73 0E
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        jmp     L_14CC                          ; EB E7
;   [conditional branch target (if/else)] L_14E5
L_14E5:
        mov     byte ptr [si], 0                ; C6 04 00
;   [conditional branch target (if/else)] L_14E8
L_14E8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: LSTRCPY.

;-------------------------------------------------------------------------
; sub_14F2   offset=0x14F2  size=35 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;
; Near calls (internal): L_0925
;-------------------------------------------------------------------------
;   [sub-routine] L_14F2
L_14F2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x52                        ; 83 EC 52
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0925                          ; E8 19 F4
        or      ax, ax                          ; 0B C0
        je      L_1514                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1526                          ; EB 12
;   [conditional branch target (if/else)] L_1514
L_1514:
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 7C 0C 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1526
L_1526:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Thin wrapper around SETFOCUS.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_152F   offset=0x152F  size=21 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   SETFOCUS
;-------------------------------------------------------------------------
;   [sub-routine] L_152F
L_152F:
        ;   = cProc <32> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_1591                          ; 74 54
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_154D                          ; 74 0B
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_154A                          ; 75 03
        jmp     L_1610                          ; E9 C6 00
;   [conditional branch target (if/else)] L_154A
L_154A:
        jmp     L_177C                          ; E9 2F 02
;   [conditional branch target (if/else)] L_154D
L_154D:
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x546], 0             ; 83 3E 46 05 00
        je      L_1560                          ; 74 03
        jmp     L_177C                          ; E9 1C 02
;   [conditional branch target (if/else)] L_1560
L_1560:
        mov     ax, word ptr [0x270]            ; A1 70 02
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_156B                          ; 7C 03
        jmp     L_177C                          ; E9 11 02
; Description (heuristic):
;   Mixed routine using: LSTRCPY, DISPATCHMESSAGE, GETCURRENTTIME (+6 more).

;-------------------------------------------------------------------------
; sub_156B   offset=0x156B  size=197 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETCURRENTTIME
;   GETDOUBLECLICKTIME
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   RELEASECAPTURE
;   SETCAPTURE
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_06F4, L_0752, L_1891, L_18F7
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_156B
L_156B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x26e]            ; 2B 06 6E 02
        push    ax                              ; 50
        call    L_1891                          ; E8 18 03
        mov     word ptr [0x1d8], ax            ; A3 D8 01
        push    ax                              ; 50
        call    L_18F7                          ; E8 77 03
        mov     word ptr [0x64], 1              ; C7 06 64 00 01 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_177C                          ; E9 EB 01
;   [conditional branch target (if/else)] L_1591
L_1591:
        cmp     word ptr [0x64], 0              ; 83 3E 64 00 00
        jne     L_159B                          ; 75 03
        jmp     L_177C                          ; E9 E1 01
;   [conditional branch target (if/else)] L_159B
L_159B:
        cmp     word ptr [0x546], 0             ; 83 3E 46 05 00
        je      L_15A5                          ; 74 03
        jmp     L_177C                          ; E9 D7 01
;   [conditional branch target (if/else)] L_15A5
L_15A5:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_15F6                          ; 7C 4B
        mov     ax, word ptr [0x270]            ; A1 70 02
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_15F6                          ; 7D 43
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_15F6                          ; 7C 3D
        mov     ax, word ptr [0x382]            ; A1 82 03
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_15F6                          ; 7F 35
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x26e]            ; 2B 06 6E 02
        push    ax                              ; 50
        call    L_1891                          ; E8 C5 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x1d8]            ; A1 D8 01
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_15DA                          ; 75 03
        jmp     L_177C                          ; E9 A2 01
;   [conditional branch target (if/else)] L_15DA
L_15DA:
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_15E6                          ; 74 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    L_18F7                          ; E8 11 03
;   [conditional branch target (if/else)] L_15E6
L_15E6:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x1d8], ax            ; A3 D8 01
        push    ax                              ; 50
        call    L_18F7                          ; E8 04 03
        jmp     L_177C                          ; E9 86 01
;   [conditional branch target (if/else)] L_15F6
L_15F6:
        cmp     word ptr [0x1d8], -1            ; 83 3E D8 01 FF
        je      L_1607                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1d8]                ; FF 36 D8 01
        call    L_18F7                          ; E8 F0 02
;   [conditional branch target (if/else)] L_1607
L_1607:
        mov     word ptr [0x1d8], 0xffff        ; C7 06 D8 01 FF FF
        jmp     L_177C                          ; E9 6C 01
;   [unconditional branch target] L_1610
L_1610:
        cmp     word ptr [0x64], 0              ; 83 3E 64 00 00
        jne     L_161A                          ; 75 03
        jmp     L_177C                          ; E9 62 01
;   [conditional branch target (if/else)] L_161A
L_161A:
        mov     word ptr [0x64], 0              ; C7 06 64 00 00 00
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x1d8], -1            ; 83 3E D8 01 FF
        jne     L_162F                          ; 75 03
        jmp     L_177C                          ; E9 4D 01
;   [conditional branch target (if/else)] L_162F
L_162F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1d8]                ; FF 36 D8 01
        call    L_18F7                          ; E8 BE 02
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_164A                          ; 7D 0B
        mov     ax, word ptr [0x382]            ; A1 82 03
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_164A                          ; 7E 03
        jmp     L_177C                          ; E9 32 01
;   [conditional branch target (if/else)] L_164A
L_164A:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 7D 14 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], 0x2a5      ; C7 46 F4 A5 02
        cmp     word ptr [0x1d8], 0             ; 83 3E D8 01 00
        je      L_1693                          ; 74 2E
        mov     ax, word ptr [0x1d8]            ; A1 D8 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_166B
L_166B:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1693                          ; 74 20
        jmp     L_167E                          ; EB 09
;   [loop start] L_1675
L_1675:
        cmp     byte ptr [bp - 0x20], 0         ; 80 7E E0 00
        je      L_168A                          ; 74 0F
        inc     word ptr [bp - 0xc]             ; FF 46 F4
;   [unconditional branch target] L_167E
L_167E:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x20], al        ; 88 46 E0
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_1675                          ; 75 EB
;   [conditional branch target (if/else)] L_168A
L_168A:
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_1709                          ; 75 76
;   [conditional branch target (if/else)] L_1693
L_1693:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     byte ptr [bx], 0                ; C6 07 00
        call    far USER.GETCURRENTTIME         ; 9A B3 16 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        call    far USER.GETDOUBLECLICKTIME     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [0x546], 1             ; C7 06 46 05 01 00
;   [loop start] L_16B2
L_16B2:
        call    far USER.GETCURRENTTIME         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sbb     dx, word ptr [bp - 2]           ; 1B 56 FE
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        cmp     bx, dx                          ; 3B DA
        jle     L_16CC                          ; 7E 03
        jmp     L_176D                          ; E9 A1 00
;   [conditional branch target (if/else)] L_16CC
L_16CC:
        jl      L_16D5                          ; 7C 07
        cmp     cx, ax                          ; 3B C8
        jb      L_16D5                          ; 72 03
        jmp     L_176D                          ; E9 98 00
;   [conditional branch target (if/else)] L_16D5
L_16D5:
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
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
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A 2C 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_16B2                          ; 74 C6
        cmp     word ptr [bp - 0x1c], 0x203     ; 81 7E E4 03 02
        je      L_171A                          ; 74 27
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_16B2                          ; EB A9
;   [conditional branch target (if/else)] L_1709
L_1709:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1714                          ; 75 03
        jmp     L_166B                          ; E9 57 FF
;   [conditional branch target (if/else)] L_1714
L_1714:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_166B                          ; E9 51 FF
;   [loop start (also forward branch)] L_171A
L_171A:
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_LBUTTONUP
        mov     ax, 0x202                       ; B8 02 02
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_171A                          ; 74 E6
        mov     word ptr [0x546], 0             ; C7 06 46 05 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 B5 EF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1766                          ; 74 12
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A 31 14 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1766
L_1766:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 E7 EF
        jmp     L_177C                          ; EB 0F
;   [unconditional branch target] L_176D
L_176D:
        mov     word ptr [0x546], 0             ; C7 06 46 05 00 00
        mov     ax, 0x37                        ; B8 37 00
        push    ax                              ; 50
        call    far _entry_15                   ; 9A 4F 04 00 00 [FIXUP]
;   [fall-through exit] L_177C
L_177C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Thin wrapper around ISRECTEMPTY.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1782   offset=0x1782  size=15 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ISRECTEMPTY
;-------------------------------------------------------------------------
;   [sub-routine] L_1782
L_1782:
        ;   = cProc <106> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x6a                        ; 83 EC 6A
        push    si                              ; 56
        cmp     word ptr [0xc0], 0              ; 83 3E C0 00 00
        je      L_179A                          ; 74 0A
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        jne     L_179A                          ; 75 03
        jmp     L_188A                          ; E9 F0 00
;   [conditional branch target (if/else)] L_179A
L_179A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.ISRECTEMPTY            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_17AC                          ; 74 03
        jmp     L_188A                          ; E9 DE 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HDC       (1 use)
;   Locals:
;     [bp-0x6]   INT       (1 use)

; Description (heuristic):
;   Mixed routine using: SETBKMODE, SETTEXTCOLOR, TEXTOUT (+1 more).

;-------------------------------------------------------------------------
; sub_17AC   offset=0x17AC  size=84 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   GETSYSCOLOR
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_17AC
L_17AC:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 4B 0B 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A F1 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 2], 0x1e0        ; C7 46 FE E0 01
        jmp     L_17EC                          ; EB 11
;   [loop start] L_17DB
L_17DB:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_17EC
L_17EC:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_17DB                          ; 75 E7
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1817                          ; EB 11
;   [loop start] L_1806
L_1806:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1817
L_1817:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1806                          ; 75 E7
        cmp     byte ptr [0x534], 0             ; 80 3E 34 05 00
        je      L_1861                          ; 74 3B
        cmp     word ptr [0x1dc], 0             ; 83 3E DC 01 00
        jne     L_1861                          ; 75 34
        mov     bx, word ptr [0x5b2]            ; 8B 1E B2 05
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        je      L_1841                          ; 74 0A
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
;   [conditional branch target (if/else)] L_1841
L_1841:
        mov     word ptr [bp - 2], 0x534        ; C7 46 FE 34 05
        jmp     L_1859                          ; EB 11
;   [loop start] L_1848
L_1848:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1859
L_1859:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1848                          ; 75 E7
;   [conditional branch target (if/else)] L_1861
L_1861:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xcc]             ; A1 CC 00
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        ;   ^ arg y
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        mov     ax, bx                          ; 8B C3
        lea     cx, [bp - 0x6a]                 ; 8D 4E 96
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 23 0A 00 00 [FIXUP]
;   [fall-through exit] L_188A
L_188A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (40 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1891   offset=0x1891  size=40 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1891
L_1891:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0x5b6]            ; A1 B6 05
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_18A3                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_18F1                          ; EB 4E
;   [conditional branch target (if/else)] L_18A3
L_18A3:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_18AF
L_18AF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_18DC                          ; 74 25
        jmp     L_18C0                          ; EB 07
;   [loop start] L_18B9
L_18B9:
        cmp     al, 0x5c                        ; 3C 5C
        je      L_18CC                          ; 74 0F
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_18C0
L_18C0:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_18B9                          ; 75 ED
;   [conditional branch target (if/else)] L_18CC
L_18CC:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x5b2]            ; 2B 06 B2 05
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jle     L_18E1                          ; 7E 05
;   [conditional branch target (if/else)] L_18DC
L_18DC:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_18F1                          ; EB 10
;   [conditional branch target (if/else)] L_18E1
L_18E1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_18EC                          ; 74 03
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [conditional branch target (if/else)] L_18EC
L_18EC:
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_18AF                          ; EB BE
;   [fall-through exit] L_18F1
L_18F1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_18F7   offset=0x18F7  size=132 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRLEN(LPSTR lpsz) -> INT
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   INVERTRECT
;   SETRECT
;
; Near calls (internal): L_0B2C, L_0E80, L_0E9A, L_152F, L_1782
;-------------------------------------------------------------------------
;   [sub-routine] L_18F7
L_18F7:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_190B                          ; 75 08
        mov     ax, word ptr [0x5b6]            ; A1 B6 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1971                          ; EB 66
;   [conditional branch target (if/else)] L_190B
L_190B:
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        inc     ax                              ; 40
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_1943                          ; EB 29
;   [loop start] L_191A
L_191A:
        cmp     byte ptr [bp - 0x14], 0         ; 80 7E EC 00
        je      L_192F                          ; 74 0F
        inc     word ptr [bp - 0x10]            ; FF 46 F0
;   [loop start] L_1923
L_1923:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_191A                          ; 75 EB
;   [conditional branch target (if/else)] L_192F
L_192F:
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_194B                          ; 74 13
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_1943                          ; 74 03
        inc     word ptr [bp - 0x10]            ; FF 46 F0
;   [branch target] L_1943
L_1943:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1923                          ; 75 D8
;   [conditional branch target (if/else)] L_194B
L_194B:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [0x5b2]            ; 2B 06 B2 05
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_1971                          ; 74 12
        mov     ax, 0x534                       ; B8 34 05
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 1B 11 00 00 [FIXUP]
        inc     ax                              ; 40
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        add     word ptr [bp - 2], ax           ; 01 46 FE
;   [branch target] L_1971
L_1971:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x26e]            ; 03 06 6E 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x26e]                ; FF 36 6E 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x382]                ; FF 36 82 03
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0E80                          ; E8 E7 F4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_0E9A                          ; E8 EA F4
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_19F9                          ; 74 2E
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_19EC                          ; 74 1C
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_1A23                          ; 72 4E
        cmp     ax, 0x203                       ; 3D 03 02
        ja      L_1A23                          ; 77 49
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_152F                          ; E8 48 FB
;   [loop start] L_19E7
L_19E7:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1A37                          ; EB 4B
;   [conditional branch target (if/else)] L_19EC
L_19EC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B2C                          ; E8 35 F1
        jmp     L_19E7                          ; EB EE
;   [conditional branch target (if/else)] L_19F9
L_19F9:
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
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1782                          ; E8 6E FD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_19E7                          ; EB C4
;   [conditional branch target (if/else)] L_1A23
L_1A23:
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
;   [unconditional branch target] L_1A37
L_1A37:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_1A42   offset=0x1A42  size=12 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1AA5, L_1BBA
;-------------------------------------------------------------------------
;   [sub-routine] L_1A42
L_1A42:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1BBA                          ; E8 6F 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, ax                          ; 0B C0
        je      L_1A58                          ; 74 06
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1AA5                          ; E8 4D 00
;   [error/early exit] L_1A58
L_1A58:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: LOCALREALLOC.

;-------------------------------------------------------------------------
; sub_1A5E   offset=0x1A5E  size=35 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=9, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;
; Near calls (internal): L_1AA5
;-------------------------------------------------------------------------
;   [sub-routine] L_1A5E
L_1A5E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    es                              ; 06
        mov     cx, word ptr [0x68]             ; 8B 0E 68 00
        mov     bx, cx                          ; 8B D9
        dec     bx                              ; 4B
        mov     word ptr [0x68], bx             ; 89 1E 68 00
        shl     bx, 1                           ; D1 E3
        push    bx                              ; 53
        mov     di, word ptr [0x66]             ; 8B 3E 66 00
        add     bx, di                          ; 03 DF
        mov     dx, word ptr [bx]               ; 8B 17
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        pop     es                              ; 07
        repne scasw ax, word ptr es:[di]        ; F2 AF
        dec     di                              ; 4F
        dec     di                              ; 4F
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        pop     ax                              ; 58
        mov     bx, 2                           ; BB 02 00
        push    word ptr [0x66]                 ; FF 36 66 00
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x66], ax             ; A3 66 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1AA5                          ; E8 08 00
        pop     es                              ; 07
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Internal helper (16 instructions).

;-------------------------------------------------------------------------
; sub_1AA5   offset=0x1AA5  size=16 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0E80, L_0E9A, L_1B1C
;-------------------------------------------------------------------------
;   [sub-routine] L_1AA5
L_1AA5:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    word ptr [0x328]                ; FF 36 28 03
        call    L_0E80                          ; E8 D0 F3
        mov     si, ax                          ; 8B F0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1B1C                          ; E8 63 00
        push    word ptr [0x328]                ; FF 36 28 03
        push    si                              ; 56
        call    L_0E9A                          ; E8 D9 F3
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_1AC8   offset=0x1AC8  size=34 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_0E80, L_0E9A, L_1B1C
;-------------------------------------------------------------------------
;   [sub-routine] L_1AC8
L_1AC8:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        jcxz    L_1B00                          ; E3 2B
        push    word ptr [0x328]                ; FF 36 28 03
        call    L_0E80                          ; E8 A4 F3
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     cx, word ptr [0x68]             ; 8B 0E 68 00
        jcxz    L_1AF6                          ; E3 11
        mov     di, cx                          ; 8B F9
        mov     si, word ptr [0x66]             ; 8B 36 66 00
;   [loop start] L_1AEB
L_1AEB:
        lodsw   ax, word ptr [si]               ; AD
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    L_1B1C                          ; E8 29 00
        dec     di                              ; 4F
        jne     L_1AEB                          ; 75 F5
;   [conditional branch target (if/else)] L_1AF6
L_1AF6:
        push    word ptr [0x328]                ; FF 36 28 03
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_0E9A                          ; E8 9A F3
;   [conditional branch target (if/else)] L_1B00
L_1B00:
        mov     cx, word ptr [0x68]             ; 8B 0E 68 00
        jcxz    L_1B14                          ; E3 0E
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x68], ax             ; A3 68 00
        push    word ptr [0x66]                 ; FF 36 66 00
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 42 12 00 00 [FIXUP]
;   [error/early exit] L_1B14
L_1B14:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: INVERTRECT.

;-------------------------------------------------------------------------
; sub_1B1C   offset=0x1B1C  size=64 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=10, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INVERTRECT
;-------------------------------------------------------------------------
;   [sub-routine] L_1B1C
L_1B1C:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    es                              ; 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], 8            ; C7 46 FC 08 00
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_1B63                          ; 75 30
        cdq                                     ; 99
        mov     bx, word ptr [0x35e]            ; 8B 1E 5E 03
        div     bx                              ; F7 F3
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        div     bx                              ; F7 F3
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     bx, ax                          ; 2B D8
        mov     ax, word ptr [0x354]            ; A1 54 03
        mul     bx                              ; F7 E3
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     bx, word ptr [0x354]            ; 8B 1E 54 03
        mov     dx, word ptr [0x5b6]            ; 8B 16 B6 05
        sub     bx, dx                          ; 2B DA
        jmp     L_1B79                          ; EB 17
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1B63
L_1B63:
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
        jb      L_1BB2                          ; 72 49
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x2b                        ; B8 2B 00
        mul     word ptr [0x5b6]                ; F7 26 B6 05
        add     ax, 2                           ; 05 02 00
        mov     bx, ax                          ; 8B D8
        mov     ax, cx                          ; 8B C1
;   [unconditional branch target] L_1B79
L_1B79:
        mul     word ptr [0x382]                ; F7 26 82 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        add     bx, 2                           ; 83 C3 02
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, 2                           ; 2D 02 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x382]            ; 03 06 82 03
        stosw   word ptr es:[di], ax            ; AB
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        push    word ptr [bp + 6]               ; FF 76 06
        push    es                              ; 06
        push    di                              ; 57
        call    far USER.INVERTRECT             ; 9A A3 19 00 00 [FIXUP]
;   [error/early exit] L_1BB2
L_1BB2:
        pop     es                              ; 07
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: LOCALALLOC, LOCALREALLOC.

;-------------------------------------------------------------------------
; sub_1BBA   offset=0x1BBA  size=31 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_1BBA
L_1BBA:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x68]             ; A1 68 00
        or      ax, ax                          ; 0B C0
        jne     L_1BD3                          ; 75 0F
        mov     ax, 2                           ; B8 02 00
        mov     bx, 0x40                        ; BB 40 00
        push    bx                              ; 53
        ;   ^ arg wFlags
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A B5 11 00 00 [FIXUP]
        jmp     L_1BE4                          ; EB 11
;   [conditional branch target (if/else)] L_1BD3
L_1BD3:
        inc     ax                              ; 40
        shl     ax, 1                           ; D1 E0
        mov     bx, 2                           ; BB 02 00
        push    word ptr [0x66]                 ; FF 36 66 00
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 90 1A 00 00 [FIXUP]
;   [unconditional branch target] L_1BE4
L_1BE4:
        or      ax, ax                          ; 0B C0
        je      L_1BFF                          ; 74 17
        mov     word ptr [0x66], ax             ; A3 66 00
        mov     bx, word ptr [0x68]             ; 8B 1E 68 00
        shl     bx, 1                           ; D1 E3
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [0x68]                 ; FF 06 68 00
        mov     ax, word ptr [0x68]             ; A1 68 00
;   [error/early exit] L_1BFF
L_1BFF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1C05   offset=0x1C05  size=25 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1C05
L_1C05:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    es                              ; 06
        mov     cx, word ptr [0x68]             ; 8B 0E 68 00
        inc     cx                              ; 41
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [0x66]             ; 8B 3E 66 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     ax, cx                          ; 8B C1
        pop     es                              ; 07
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Thin wrapper around ISRECTEMPTY.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C30   offset=0x1C30  size=12 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ISRECTEMPTY
;-------------------------------------------------------------------------
;   [sub-routine] L_1C30
L_1C30:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.ISRECTEMPTY            ; 9A A1 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1C4C                          ; 74 05
        sub     ax, ax                          ; 2B C0
        jmp     L_1D72                          ; E9 26 01
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HDC       (2 uses)
;   Locals:
;     [bp-0x2]   HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: BITBLT, CREATECOMPATIBLEDC, DELETEDC (+6 more).

;-------------------------------------------------------------------------
; sub_1C4C   offset=0x1C4C  size=121 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   GETSYSCOLOR
;
; Near calls (internal): L_1D7A
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1C4C
L_1C4C:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 67 1C 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A BB 17 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A B4 17 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A C7 17 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hDC
        push    word ptr [0x32a]                ; FF 36 2A 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 8B 0B 00 00 [FIXUP]
        sub     si, si                          ; 2B F6
        jmp     L_1D4F                          ; E9 B7 00
;   [loop start] L_1C98
L_1C98:
        sub     di, di                          ; 2B FF
        jmp     L_1D45                          ; E9 A8 00
;   [loop start] L_1C9D
L_1C9D:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, di                          ; 03 C7
        cmp     ax, word ptr [0x560]            ; 3B 06 60 05
        jl      L_1CAB                          ; 7C 03
        jmp     L_1D4E                          ; E9 A3 00
;   [conditional branch target (if/else)] L_1CAB
L_1CAB:
        mov     ax, word ptr [0x3d8]            ; A1 D8 03
        imul    si                              ; F7 EE
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x5b6]            ; A1 B6 05
        imul    di                              ; F7 EF
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 8]               ; FF 76 08
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        mov     ax, word ptr [0x382]            ; A1 82 03
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        cmp     word ptr [0xce], ax             ; 39 06 CE 00
        je      L_1D06                          ; 74 08
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        jmp     L_1D0C                          ; EB 06
;   [conditional branch target (if/else)] L_1D06
L_1D06:
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
;   [unconditional branch target] L_1D0C
L_1D0C:
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     bx, di                          ; 03 DF
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr [bx + 0x274]       ; 8A 87 74 02
        add     al, 0x41                        ; 04 41
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg x
        mov     ax, word ptr [0xcc]             ; A1 CC 00
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 86 18 00 00 [FIXUP]
        inc     di                              ; 47
;   [unconditional branch target] L_1D45
L_1D45:
        cmp     word ptr [0x5a6], di            ; 39 3E A6 05
        jle     L_1D4E                          ; 7E 03
        jmp     L_1C9D                          ; E9 4F FF
;   [branch target] L_1D4E
L_1D4E:
        inc     si                              ; 46
;   [unconditional branch target] L_1D4F
L_1D4F:
        mov     ax, word ptr [0x5a6]            ; A1 A6 05
        imul    si                              ; F7 EE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, word ptr [0x560]            ; 3B 06 60 05
        jge     L_1D60                          ; 7D 03
        jmp     L_1C98                          ; E9 38 FF
;   [conditional branch target (if/else)] L_1D60
L_1D60:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x530]                ; FF 36 30 05
        call    L_1D7A                          ; E8 08 00
;   [fall-through exit] L_1D72
L_1D72:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: INVERTRECT, SETRECT.

;-------------------------------------------------------------------------
; sub_1D7A   offset=0x1D7A  size=52 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INVERTRECT
;   SETRECT
;-------------------------------------------------------------------------
;   [sub-routine] L_1D7A
L_1D7A:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x5a6]            ; 8B 0E A6 05
        idiv    cx                              ; F7 F9
        imul    word ptr [0x3d8]                ; F7 2E D8 03
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x382]            ; 03 06 82 03
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 8F 19 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A AE 1B 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: RELEASECAPTURE, SETCAPTURE, SETFOCUS.

;-------------------------------------------------------------------------
; sub_1DF0   offset=0x1DF0  size=60 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   RELEASECAPTURE
;   SETCAPTURE
;   SETFOCUS
;
; Near calls (internal): L_06F4, L_0752, L_13E0, L_1E9E, L_1F1E
;-------------------------------------------------------------------------
;   [sub-routine] L_1DF0
L_1DF0:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_1E3E                          ; 74 40
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_1E0B                          ; 74 08
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_1E2A                          ; 74 22
        jmp     L_1E98                          ; E9 8D 00
;   [conditional branch target (if/else)] L_1E0B
L_1E0B:
        mov     word ptr [0x76], 1              ; C7 06 76 00 01 00
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.SETFOCUS               ; 9A 52 15 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A 8A 15 00 00 [FIXUP]
        mov     ax, word ptr [0x530]            ; A1 30 05
        mov     word ptr [0x564], ax            ; A3 64 05
        jmp     L_1E45                          ; EB 1B
;   [conditional branch target (if/else)] L_1E2A
L_1E2A:
        cmp     word ptr [0x76], 0              ; 83 3E 76 00 00
        je      L_1E98                          ; 74 67
        mov     word ptr [0x76], 0              ; C7 06 76 00 00 00
        call    far USER.RELEASECAPTURE         ; 9A 21 16 00 00 [FIXUP]
        jmp     L_1E45                          ; EB 07
;   [conditional branch target (if/else)] L_1E3E
L_1E3E:
        cmp     word ptr [0x76], 0              ; 83 3E 76 00 00
        je      L_1E98                          ; 74 53
;   [unconditional branch target] L_1E45
L_1E45:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1F1E                          ; E8 D0 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_1E5E                          ; 7D 06
        mov     ax, word ptr [0x530]            ; A1 30 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_1E5E
L_1E5E:
        mov     ax, word ptr [0x564]            ; A1 64 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_1E6C                          ; 74 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1E9E                          ; E8 32 00
;   [conditional branch target (if/else)] L_1E6C
L_1E6C:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_1E98                          ; 7C 26
        cmp     word ptr [bp + 8], 0x202        ; 81 7E 08 02 02
        jne     L_1E98                          ; 75 1F
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 76 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x564]                ; FF 36 64 05
        call    L_13E0                          ; E8 58 F5
        or      ax, ax                          ; 0B C0
        jne     L_1E93                          ; 75 07
        push    word ptr [0x530]                ; FF 36 30 05
        call    L_1E9E                          ; E8 0B 00
;   [conditional branch target (if/else)] L_1E93
L_1E93:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 BA E8
;   [error/early exit] L_1E98
L_1E98:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_1E9E   offset=0x1E9E  size=20 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0E80, L_0E9A, L_1D7A
;-------------------------------------------------------------------------
;   [sub-routine] L_1E9E
L_1E9E:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x5aa]                ; FF 36 AA 05
        call    L_0E80                          ; E8 D5 EF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0x564]                ; FF 36 64 05
        call    L_1D7A                          ; E8 C4 FE
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x564], ax            ; A3 64 05
        push    ax                              ; 50
        call    L_1D7A                          ; E8 B7 FE
        push    word ptr [0x5aa]                ; FF 36 AA 05
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_0E9A                          ; E8 CD EF
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (33 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1ED3   offset=0x1ED3  size=33 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_06F4, L_0752, L_13E0, L_1E9E
;-------------------------------------------------------------------------
;   [sub-routine] L_1ED3
L_1ED3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1E9E                          ; E8 B3 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 04 E8
        push    word ptr [0x5aa]                ; FF 36 AA 05
        push    word ptr [0x564]                ; FF 36 64 05
        call    L_13E0                          ; E8 E5 F4
        or      ax, ax                          ; 0B C0
        jne     L_1F0B                          ; 75 0C
        push    word ptr [0x530]                ; FF 36 30 05
        call    L_1E9E                          ; E8 98 FF
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_1F0B
L_1F0B:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 42 E8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: BEGINPAINT, DEFWINDOWPROC, ENDPAINT.

;-------------------------------------------------------------------------
; sub_1F1E   offset=0x1F1E  size=106 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;
; Near calls (internal): L_0B2C, L_1C30, L_1DF0
;-------------------------------------------------------------------------
;   [sub-routine] L_1F1E
L_1F1E:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [0x5a6]            ; A1 A6 05
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_1F71                          ; 7E 3C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_1F71                          ; 7C 36
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jl      L_1F71                          ; 7C 30
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x3d8]            ; 8B 0E D8 03
        idiv    cx                              ; F7 F9
        imul    word ptr [0x5a6]                ; F7 2E A6 05
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     bx, word ptr [0x5b6]            ; 8B 1E B6 05
        mov     si, cx                          ; 8B F1
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     bx, cl                          ; D3 E3
        idiv    bx                              ; F7 FB
        add     si, ax                          ; 03 F0
        mov     word ptr [bp - 2], si           ; 89 76 FE
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     si, ax                          ; 3B F0
        jge     L_1F71                          ; 7D 04
        mov     ax, si                          ; 8B C6
        jmp     L_1F74                          ; EB 03
;   [conditional branch target (if/else)] L_1F71
L_1F71:
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_1F74
L_1F74:
        pop     si                              ; 5E
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_1FC0                          ; 74 30
        ja      L_1FEA                          ; 77 58
        cmp     ax, 1                           ; 3D 01 00
        jne     L_1FF9                          ; 75 62
        mov     ax, word ptr [0x530]            ; A1 30 05
        mov     word ptr [0x564], ax            ; A3 64 05
;   [loop start] L_1F9D
L_1F9D:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_200D                          ; EB 6B
;   [loop start] L_1FA2
L_1FA2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1DF0                          ; E8 3F FE
        jmp     L_1F9D                          ; EB EA
;   [loop start] L_1FB3
L_1FB3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B2C                          ; E8 6E EB
        jmp     L_1F9D                          ; EB DD
;   [conditional branch target (if/else)] L_1FC0
L_1FC0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A 02 1A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1C30                          ; E8 55 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A 1D 1A 00 00 [FIXUP]
        jmp     L_1F9D                          ; EB B3
;   [conditional branch target (if/else)] L_1FEA
L_1FEA:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_1FB3                          ; 74 C4
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_1FF9                          ; 72 05
        cmp     ax, 0x202                       ; 3D 02 02
        jbe     L_1FA2                          ; 76 A9
;   [conditional branch target (if/else)] L_1FF9
L_1FF9:
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
        call    far USER.DEFWINDOWPROC          ; 9A 33 1A 00 00 [FIXUP]
;   [unconditional branch target] L_200D
L_200D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: GETKEYSTATE, PEEKMESSAGE, SETFOCUS.

;-------------------------------------------------------------------------
; sub_2018   offset=0x2018  size=113 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETKEYSTATE
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   SETFOCUS
;
; Near calls (internal): L_1A42, L_1A5E, L_1AC8, L_1C05, L_22EA, L_2DB6, L_2E2A
;-------------------------------------------------------------------------
;   [sub-routine] L_2018
L_2018:
        ;   = cProc <46> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x2e                        ; 83 EC 2E
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_2030                          ; 74 08
        cmp     ax, 0x203                       ; 3D 03 02
        je      L_208C                          ; 74 5F
        jmp     L_2122                          ; E9 F2 00
;   [conditional branch target (if/else)] L_2030
L_2030:
        push    word ptr [0x346]                ; FF 36 46 03
        call    far USER.SETFOCUS               ; 9A 16 1E 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_22EA                          ; E8 A8 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_204D                          ; 7F 03
        jmp     L_2122                          ; E9 D5 00
;   [conditional branch target (if/else)] L_204D
L_204D:
        mov     word ptr [0x55c], ax            ; A3 5C 05
        push    ax                              ; 50
        call    L_2DB6                          ; E8 62 0D
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 A9 FB
        or      ax, ax                          ; 0B C0
        jne     L_207A                          ; 75 1A
        test    byte ptr [bp + 8], 4            ; F6 46 08 04
        jne     L_206D                          ; 75 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1AC8                          ; E8 5B FA
;   [conditional branch target (if/else)] L_206D
L_206D:
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1A42                          ; E8 CB F9
        jmp     L_2122                          ; E9 A8 00
;   [conditional branch target (if/else)] L_207A
L_207A:
        test    byte ptr [bp + 8], 4            ; F6 46 08 04
        jne     L_2083                          ; 75 03
        jmp     L_2122                          ; E9 9F 00
;   [conditional branch target (if/else)] L_2083
L_2083:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_1A5E                          ; E8 D5 F9
        jmp     L_2122                          ; E9 96 00
;   [conditional branch target (if/else)] L_208C
L_208C:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_22EA                          ; E8 55 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_20A0                          ; 7F 03
        jmp     L_2122                          ; E9 82 00
;   [conditional branch target (if/else)] L_20A0
L_20A0:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1AC8                          ; E8 21 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1A42                          ; E8 91 F9
;   [loop start] L_20B1
L_20B1:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_LBUTTONUP
        mov     ax, 0x202                       ; B8 02 02
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A E4 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_20B1                          ; 74 E6
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_2122                          ; 74 50
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        imul    word ptr [bx + si]              ; F7 28
        add     word ptr [bp - 0x2e], ax        ; 01 46 D2
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        lea     di, [bp - 0x2a]                 ; 8D 7E D6
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_211C                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_211E                          ; EB 02
;   [conditional branch target (if/else)] L_211C
L_211C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_211E
L_211E:
        push    ax                              ; 50
        call    L_2E2A                          ; E8 08 0D
;   [error/early exit] L_2122
L_2122:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: GETCLIENTRECT, INVALIDATERECT, ISRECTEMPTY (+2 more).

;-------------------------------------------------------------------------
; sub_212A   offset=0x212A  size=160 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   ISRECTEMPTY
;   SETSCROLLPOS
;   SETSCROLLRANGE
;-------------------------------------------------------------------------
;   [sub-routine] L_212A
L_212A:
        ;   = cProc <22> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x7a], 0              ; 83 3E 7A 00 00
        je      L_213C                          ; 74 03
        jmp     L_22E2                          ; E9 A6 01
;   [conditional branch target (if/else)] L_213C
L_213C:
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2159                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_215B                          ; EB 02
;   [conditional branch target (if/else)] L_2159
L_2159:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_215B
L_215B:
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 79 21 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        cmp     word ptr [0x1e], 0x3f           ; 83 3E 1E 00 3F
        jne     L_2175                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2177                          ; EB 02
;   [conditional branch target (if/else)] L_2175
L_2175:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2177
L_2177:
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 1A 22 00 00 [FIXUP]
        mov     word ptr [0x78], 0xffff         ; C7 06 78 00 FF FF
;   [loop start] L_2183
L_2183:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 91 23 00 00 [FIXUP]
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISRECTEMPTY            ; 9A 6D 23 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_21AD                          ; 74 0F
        mov     word ptr [0x35e], 1             ; C7 06 5E 03 01 00
        mov     word ptr [0x1c], 1              ; C7 06 1C 00 01 00
        jmp     L_22DC                          ; E9 2F 01
;   [conditional branch target (if/else)] L_21AD
L_21AD:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x29e]            ; 2B 06 9E 02
        cdq                                     ; 99
        mov     cx, word ptr [0x382]            ; 8B 0E 82 03
        idiv    cx                              ; F7 F9
        mov     word ptr [0x35e], ax            ; A3 5E 03
        cmp     ax, 1                           ; 3D 01 00
        jg      L_21C6                          ; 7F 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [conditional branch target (if/else)] L_21C6
L_21C6:
        mov     word ptr [0x35e], ax            ; A3 5E 03
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        je      L_21D3                          ; 74 03
        jmp     L_2258                          ; E9 85 00
;   [conditional branch target (if/else)] L_21D3
L_21D3:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     cx, word ptr [0x354]            ; 8B 0E 54 03
        idiv    cx                              ; F7 F9
        mov     word ptr [0x1c], ax             ; A3 1C 00
        cmp     ax, 1                           ; 3D 01 00
        jge     L_21EB                          ; 7D 06
        mov     word ptr [0x1c], 1              ; C7 06 1C 00 01 00
;   [conditional branch target (if/else)] L_21EB
L_21EB:
        mov     ax, word ptr [0x1c]             ; A1 1C 00
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        cmp     ax, word ptr [0x182]            ; 3B 06 82 01
        jge     L_222E                          ; 7D 36
        mov     ax, word ptr [0x182]            ; A1 82 01
        add     ax, word ptr [0x35e]            ; 03 06 5E 03
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        sub     ax, word ptr [0x1c]             ; 2B 06 1C 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 7D 22 00 00 [FIXUP]
        cmp     word ptr [0x78], -1             ; 83 3E 78 00 FF
        jne     L_2233                          ; 75 0E
        mov     word ptr [0x78], 0              ; C7 06 78 00 00 00
        jmp     L_2183                          ; E9 55 FF
;   [loop start (also forward branch)] L_222E
L_222E:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
;   [loop start (also forward branch)] L_2233
L_2233:
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        jle     L_2291                          ; 7E 3D
        mov     ax, si                          ; 8B C6
        jmp     L_2293                          ; EB 3B
;   [unconditional branch target] L_2258
L_2258:
        mov     word ptr [0x1c], 1              ; C7 06 1C 00 01 00
        mov     ax, word ptr [0x182]            ; A1 82 01
        cmp     word ptr [0x35e], ax            ; 39 06 5E 03
        jge     L_222E                          ; 7D C7
        sub     ax, word ptr [0x35e]            ; 2B 06 5E 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x78], -1             ; 83 3E 78 00 FF
        jne     L_2233                          ; 75 AB
        mov     word ptr [0x78], 1              ; C7 06 78 00 01 00
        jmp     L_2183                          ; E9 F2 FE
;   [conditional branch target (if/else)] L_2291
L_2291:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_2293
L_2293:
        mov     word ptr [0xc4], ax             ; A3 C4 00
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        je      L_22AC                          ; 74 11
        push    word ptr [0x328]                ; FF 36 28 03
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
        call    far USER.INVALIDATERECT         ; 9A 48 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_22AC
L_22AC:
        cmp     word ptr [0x78], -1             ; 83 3E 78 00 FF
        jle     L_22DC                          ; 7E 29
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_22C6                          ; 75 0C
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        jmp     L_22C9                          ; EB 03
;   [conditional branch target (if/else)] L_22C6
L_22C6:
        mov     ax, word ptr [0xc4]             ; A1 C4 00
;   [unconditional branch target] L_22C9
L_22C9:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x78]                 ; FF 36 78 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SETSCROLLPOS           ; 9A F6 05 00 00 [FIXUP]
;   [branch target] L_22DC
L_22DC:
        mov     word ptr [0x7a], 0              ; C7 06 7A 00 00 00
;   [fall-through exit] L_22E2
L_22E2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (38 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_22EA   offset=0x22EA  size=38 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_22EA
L_22EA:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_232D                          ; 75 36
        mov     ax, word ptr [0x382]            ; A1 82 03
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jle     L_2328                          ; 7E 25
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [0x354]            ; 8B 0E 54 03
        idiv    cx                              ; F7 F9
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     bx, word ptr [0x382]            ; 8B 1E 82 03
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xc4]             ; 03 0E C4 00
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        jmp     L_233E                          ; EB 16
;   [loop start (also forward branch)] L_2328
L_2328:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_2349                          ; EB 1C
;   [conditional branch target (if/else)] L_232D
L_232D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x382]            ; 8B 0E 82 03
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xc4]             ; 03 06 C4 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_233E
L_233E:
        mov     ax, word ptr [0x182]            ; A1 82 01
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_2328                          ; 7D E2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_2349
L_2349:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: SETTEXTCOLOR, GETCLIENTRECT, GETFOCUS (+4 more).

;-------------------------------------------------------------------------
; sub_234F   offset=0x234F  size=56 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETFOCUS
;   GETSYSCOLOR
;   ISRECTEMPTY
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   SHOWCARET
;
; Near calls (internal): L_0A52, L_23ED
;-------------------------------------------------------------------------
;   [sub-routine] L_234F
L_234F:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [0xc0], 0              ; 83 3E C0 00 00
        jne     L_23D5                          ; 75 79
        cmp     word ptr [0xb2], 0              ; 83 3E B2 00 00
        je      L_2366                          ; 74 03
        jmp     L_23E7                          ; E9 81 00
;   [conditional branch target (if/else)] L_2366
L_2366:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.ISRECTEMPTY            ; 9A 3F 1C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_23B7                          ; 75 42
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 54 1C 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A 5B 1C 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hWnd
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 42 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0A52                          ; E8 AC E6
        call    far USER.GETFOCUS               ; 9A E1 03 00 00 [FIXUP]
        cmp     ax, word ptr [0x346]            ; 3B 06 46 03
        jne     L_23B7                          ; 75 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_23ED                          ; E8 36 00
;   [conditional branch target (if/else)] L_23B7
L_23B7:
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_23E7                          ; 74 29
        cmp     word ptr [0x1d4], 0             ; 83 3E D4 01 00
        je      L_23E7                          ; 74 22
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.SHOWCARET              ; 9A AD 0E 00 00 [FIXUP]
        mov     word ptr [0x1d4], 0             ; C7 06 D4 01 00 00
        jmp     L_23E7                          ; EB 12
;   [conditional branch target (if/else)] L_23D5
L_23D5:
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A 62 17 00 00 [FIXUP]
;   [error/early exit] L_23E7
L_23E7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (7 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_23ED   offset=0x23ED  size=7 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_23ED
L_23ED:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x66]             ; A1 66 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_2412                          ; EB 12
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_2400   offset=0x2400  size=12 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1B1C
;-------------------------------------------------------------------------
;   [loop start] L_2400
L_2400:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        add     word ptr [bp - 2], 2            ; 83 46 FE 02
        push    word ptr [bx]                   ; FF 37
        call    L_1B1C                          ; E8 0D F7
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_2412
L_2412:
        mov     ax, word ptr [0x68]             ; A1 68 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_2400                          ; 7C E6
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_2420   offset=0x2420  size=265 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   SCROLLWINDOW
;   SETSCROLLPOS
;   SETSCROLLRANGE
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_0B2C, L_2018, L_212A, L_234F, L_2420, L_2DB6
;-------------------------------------------------------------------------
;   [sub-routine] L_2420
L_2420:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        cmp     word ptr [0x78], -1             ; 83 3E 78 00 FF
        jne     L_2431                          ; 75 03
        jmp     L_25CB                          ; E9 9A 01
;   [conditional branch target (if/else)] L_2431
L_2431:
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A 8C 21 00 00 [FIXUP]
        mov     ax, word ptr [0x29c]            ; A1 9C 02
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2474                          ; 75 29
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        mov     ax, word ptr [0x35e]            ; A1 5E 03
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        cdq                                     ; 99
        mov     cx, word ptr [0x354]            ; 8B 0E 54 03
        idiv    cx                              ; F7 F9
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_2495                          ; 75 29
        mov     ax, word ptr [0x35e]            ; A1 5E 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_2495                          ; EB 21
;   [conditional branch target (if/else)] L_2474
L_2474:
        mov     ax, word ptr [0x29e]            ; A1 9E 02
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x382]            ; 8B 0E 82 03
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_2495                          ; 75 05
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
;   [branch target] L_2495
L_2495:
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_24BD                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_24DB                          ; 74 2F
        cmp     ax, 2                           ; 3D 02 00
        je      L_24E0                          ; 74 2F
        cmp     ax, 3                           ; 3D 03 00
        je      L_24E5                          ; 74 2F
        cmp     ax, 4                           ; 3D 04 00
        je      L_24EA                          ; 74 2F
        jmp     L_24C5                          ; EB 08
;   [conditional branch target (if/else)] L_24BD
L_24BD:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
;   [loop start] L_24C0
L_24C0:
        neg     ax                              ; F7 D8
;   [loop start] L_24C2
L_24C2:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_24C5
L_24C5:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [0xc4], ax             ; 01 06 C4 00
        cmp     word ptr [0xc4], 0              ; 83 3E C4 00 00
        jge     L_2503                          ; 7D 30
        mov     word ptr [0xc4], 0              ; C7 06 C4 00 00 00
        jmp     L_254A                          ; EB 6F
;   [conditional branch target (if/else)] L_24DB
L_24DB:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_24C2                          ; EB E2
;   [conditional branch target (if/else)] L_24E0
L_24E0:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_24C0                          ; EB DB
;   [conditional branch target (if/else)] L_24E5
L_24E5:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_24C2                          ; EB D8
;   [conditional branch target (if/else)] L_24EA
L_24EA:
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_24FE                          ; 75 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [0x35e]                ; F7 2E 5E 03
;   [loop start] L_24F8
L_24F8:
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
        jmp     L_24C2                          ; EB C4
;   [conditional branch target (if/else)] L_24FE
L_24FE:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_24F8                          ; EB F5
;   [conditional branch target (if/else)] L_2503
L_2503:
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        jne     L_2531                          ; 75 27
        mov     ax, word ptr [0x182]            ; A1 82 01
        add     ax, word ptr [0x35e]            ; 03 06 5E 03
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_254A                          ; 7D 21
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [0xc4], ax             ; A3 C4 00
        jmp     L_254A                          ; EB 19
;   [conditional branch target (if/else)] L_2531
L_2531:
        cmp     word ptr [0x78], 1              ; 83 3E 78 00 01
        jne     L_254A                          ; 75 12
        mov     si, word ptr [0x182]            ; 8B 36 82 01
        sub     si, word ptr [0x35e]            ; 2B 36 5E 03
        cmp     word ptr [0xc4], si             ; 39 36 C4 00
        jle     L_254A                          ; 7E 04
        mov     word ptr [0xc4], si             ; 89 36 C4 00
;   [branch target] L_254A
L_254A:
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_25C4                          ; 74 6D
        cmp     word ptr [0x78], 1              ; 83 3E 78 00 01
        jne     L_2580                          ; 75 22
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0xc4]                 ; FF 36 C4 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 96 25 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        neg     ax                              ; F7 D8
        imul    word ptr [0x382]                ; F7 2E 82 03
        jmp     L_25B0                          ; EB 30
;   [conditional branch target (if/else)] L_2580
L_2580:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A D8 22 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        neg     ax                              ; F7 D8
        imul    word ptr [0x354]                ; F7 2E 54 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_25B0
L_25B0:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_25C4
L_25C4:
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2DB6                          ; E8 EB 07
;   [fall-through exit] L_25CB
L_25CB:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     ax, di                          ; 8B C7
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_2645                          ; 74 57
        jbe     L_25F3                          ; 76 03
        jmp     L_2678                          ; E9 85 00
;   [conditional branch target (if/else)] L_25F3
L_25F3:
        cmp     ax, 1                           ; 3D 01 00
        je      L_2600                          ; 74 08
        cmp     ax, 5                           ; 3D 05 00
        je      L_2631                          ; 74 34
        jmp     L_2691                          ; E9 91 00
;   [conditional branch target (if/else)] L_2600
L_2600:
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 17 26 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 5D 21 00 00 [FIXUP]
;   [loop start] L_261B
L_261B:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_26A1                          ; E9 80 00
;   [loop start] L_2621
L_2621:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2018                          ; E8 E9 F9
        jmp     L_261B                          ; EB EA
;   [conditional branch target (if/else)] L_2631
L_2631:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_212A                          ; E8 F2 FA
        jmp     L_261B                          ; EB E1
;   [loop start] L_263A
L_263A:
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B2C                          ; E8 E9 E4
        jmp     L_261B                          ; EB D6
;   [conditional branch target (if/else)] L_2645
L_2645:
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A C9 1F 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_234F                          ; E8 F0 FC
        push    si                              ; 56
        ;   ^ arg hWnd
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A E4 1F 00 00 [FIXUP]
        jmp     L_261B                          ; EB AF
;   [loop start] L_266C
L_266C:
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2420                          ; E8 AA FD
        jmp     L_261B                          ; EB A3
;   [unconditional branch target] L_2678
L_2678:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_263A                          ; 74 BD
        cmp     ax, 0x114                       ; 3D 14 01
        jb      L_2691                          ; 72 0F
        cmp     ax, 0x115                       ; 3D 15 01
        jbe     L_266C                          ; 76 E5
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_2691                          ; 72 05
        cmp     ax, 0x203                       ; 3D 03 02
        jbe     L_2621                          ; 76 90
;   [branch target] L_2691
L_2691:
        push    si                              ; 56
        ;   ^ arg hWnd
        push    di                              ; 57
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A 09 20 00 00 [FIXUP]
;   [unconditional branch target] L_26A1
L_26A1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: INQUIRESYSTEM.

;-------------------------------------------------------------------------
; sub_26AE   offset=0x26AE  size=35 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   INQUIRESYSTEM
;
; Near calls (internal): L_087F, L_2700
;-------------------------------------------------------------------------
;   [sub-routine] L_26AE
L_26AE:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 2], si           ; 89 76 FE
;   [loop start] L_26BA
L_26BA:
        push    si                              ; 56
        call    L_087F                          ; E8 C1 E1
        call    L_2700                          ; E8 3F 00
        cmp     ax, si                          ; 3B C6
        jne     L_26EB                          ; 75 26
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        call    far SYSTEM.INQUIRESYSTEM        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_26EB                          ; 74 18
        cmp     si, word ptr [0x530]            ; 3B 36 30 05
        jne     L_26DF                          ; 75 06
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_26DF
L_26DF:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x274], si       ; 89 B7 74 02
;   [conditional branch target (if/else)] L_26EB
L_26EB:
        inc     si                              ; 46
        cmp     si, word ptr [0x560]            ; 3B 36 60 05
        jl      L_26BA                          ; 7C C8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [0x560], ax            ; A3 60 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_2700   offset=0x2700  size=4 instr  segment=seg3.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=8)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_2700
L_2700:
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_2707   offset=0x2707  size=11 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_2707
L_2707:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     bx, word ptr [0x382]            ; 8B 1E 82 03
        add     ax, bx                          ; 03 C3
        dec     ax                              ; 48
        cdq                                     ; 99
        div     bx                              ; F7 F3
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_271D   offset=0x271D  size=571 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   GETKEYSTATE
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;
; Near calls (first 8 of 15): L_00F7, L_0222, L_06F4, L_0752, L_0891, L_08E1, L_1A42, L_1A5E ...
;-------------------------------------------------------------------------
;   [sub-routine] L_271D
L_271D:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xc8]             ; A1 C8 00
        or      ax, ax                          ; 0B C0
        je      L_273F                          ; 74 06
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A C8 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_273F
L_273F:
        mov     ax, 0x14                        ; B8 14 00
        mov     word ptr [0xc2], ax             ; A3 C2 00
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        mov     bx, 0x40                        ; BB 40 00
        push    bx                              ; 53
        ;   ^ arg wFlags
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc8], ax             ; A3 C8 00
        or      ax, ax                          ; 0B C0
        jne     L_275F                          ; 75 03
        jmp     L_27FF                          ; E9 A0 00
;   [conditional branch target (if/else)] L_275F
L_275F:
        mov     ax, 0x28                        ; B8 28 00
        mov     bx, 2                           ; BB 02 00
        push    word ptr [0x532]                ; FF 36 32 05
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A E0 1B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2777                          ; 75 03
        jmp     L_27FF                          ; E9 88 00
;   [conditional branch target (if/else)] L_2777
L_2777:
        mov     word ptr [0x532], ax            ; A3 32 05
        mov     bx, 0x30                        ; BB 30 00
        xor     di, di                          ; 33 FF
        lea     si, [bp - 0x30]                 ; 8D 76 D0
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    bx                              ; 53
        push    ss                              ; 16
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0891                          ; E8 01 E1
        jmp     L_281A                          ; E9 87 00
;   [loop start] L_2793
L_2793:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     ax, word ptr [0xc2]             ; 3B 06 C2 00
        jae     L_27C3                          ; 73 27
        mov     al, byte ptr ss:[si + 0x1e]     ; 36 8A 44 1E
        cmp     al, 0x2e                        ; 3C 2E
        je      L_27B7                          ; 74 13
        mov     es, word ptr [0xc8]             ; 8E 06 C8 00
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        add     si, 0x15                        ; 83 C6 15
        mov     cx, 0x16                        ; B9 16 00
        repne movsb byte ptr es:[di], byte ptr [si] ; F2 A4
        inc     word ptr [bp - 4]               ; FF 46 FC
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_27B7
L_27B7:
        lea     si, [bp - 0x30]                 ; 8D 76 D0
        push    ss                              ; 16
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08E1                          ; E8 20 E1
        jmp     L_281A                          ; EB 57
;   [conditional branch target (if/else)] L_27C3
L_27C3:
        mov     ax, word ptr [0xc2]             ; A1 C2 00
        add     ax, 0x14                        ; 05 14 00
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        cdq                                     ; 99
        mov     bx, 2                           ; BB 02 00
        push    word ptr [0xc8]                 ; FF 36 C8 00
        ;   ^ arg hMem
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_27FF                          ; 74 1D
        mov     word ptr [0xc8], ax             ; A3 C8 00
        mov     ax, word ptr [0xc2]             ; A1 C2 00
        add     ax, 0x14                        ; 05 14 00
        shl     ax, 1                           ; D1 E0
        mov     bx, 2                           ; BB 02 00
        push    word ptr [0x532]                ; FF 36 32 05
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 6C 27 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_280F                          ; 75 10
;   [branch target] L_27FF
L_27FF:
        mov     bx, 0x1d                        ; BB 1D 00
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    bx                              ; 53
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 EA D8
        jmp     L_281E                          ; EB 0F
;   [conditional branch target (if/else)] L_280F
L_280F:
        mov     word ptr [0x532], ax            ; A3 32 05
        add     word ptr [0xc2], 0x14           ; 83 06 C2 00 14
;   [loop start] L_2817
L_2817:
        jmp     L_2793                          ; E9 79 FF
;   [unconditional branch target] L_281A
L_281A:
        or      ax, ax                          ; 0B C0
        je      L_2817                          ; 74 F9
;   [unconditional branch target] L_281E
L_281E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x1d6], ax            ; A3 D6 01
        mov     ax, word ptr [0xc8]             ; A1 C8 00
        or      ax, ax                          ; 0B C0
        je      L_2845                          ; 74 1A
        mov     ax, word ptr [0x1d6]            ; A1 D6 01
        mov     word ptr [0xc2], ax             ; A3 C2 00
        mov     bx, 0x16                        ; BB 16 00
        mul     bx                              ; F7 E3
        cdq                                     ; 99
        xor     bx, bx                          ; 33 DB
        push    word ptr [0xc8]                 ; FF 36 C8 00
        ;   ^ arg hMem
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A DA 27 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2845
L_2845:
        mov     ax, word ptr [0x1d6]            ; A1 D6 01
        or      ax, ax                          ; 0B C0
        jne     L_284D                          ; 75 01
        inc     ax                              ; 40
;   [conditional branch target (if/else)] L_284D
L_284D:
        shl     ax, 1                           ; D1 E0
        xor     bx, bx                          ; 33 DB
        push    word ptr [0x532]                ; FF 36 32 05
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    bx                              ; 53
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A F7 27 00 00 [FIXUP]
        pop     es                              ; 07
        pop     di                              ; 5F
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
        sub     sp, 0x7c                        ; 83 EC 7C
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        je      L_2889                          ; 74 09
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0222                          ; E8 99 D9
;   [conditional branch target (if/else)] L_2889
L_2889:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A A5 28 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_289B                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_289D                          ; EB 02
;   [conditional branch target (if/else)] L_289B
L_289B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_289D
L_289D:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A A9 2B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_28B2                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_28B4                          ; EB 02
;   [conditional branch target (if/else)] L_28B2
L_28B2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_28B4
L_28B4:
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_28D0                          ; 74 0B
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_28CD                          ; 75 03
        jmp     L_2B00                          ; E9 33 02
;   [conditional branch target (if/else)] L_28CD
L_28CD:
        jmp     L_2B79                          ; E9 A9 02
;   [conditional branch target (if/else)] L_28D0
L_28D0:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_28DB                          ; 75 03
        jmp     L_2AA8                          ; E9 CD 01
;   [conditional branch target (if/else)] L_28DB
L_28DB:
        jbe     L_28E0                          ; 76 03
        jmp     L_2ADE                          ; E9 FE 01
;   [conditional branch target (if/else)] L_28E0
L_28E0:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_28E8                          ; 75 03
        jmp     L_2A12                          ; E9 2A 01
;   [conditional branch target (if/else)] L_28E8
L_28E8:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_28F0                          ; 75 03
        jmp     L_2AC5                          ; E9 D5 01
;   [conditional branch target (if/else)] L_28F0
L_28F0:
        jmp     L_2B79                          ; E9 86 02
;   [loop start] L_28F3
L_28F3:
        push    word ptr [0x328]                ; FF 36 28 03
        mov     ax, 2                           ; B8 02 00
;   [loop start] L_28FA
L_28FA:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_2420                          ; E8 1F FB
        jmp     L_2B79                          ; E9 75 02
;   [loop start] L_2904
L_2904:
        push    word ptr [0x328]                ; FF 36 28 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_28FA                          ; EB ED
;   [loop start] L_290D
L_290D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_2990                          ; 74 7B
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_2929                          ; 74 0F
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_2922                          ; 75 03
        jmp     L_29A6                          ; E9 84 00
;   [conditional branch target (if/else)] L_2922
L_2922:
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_2980                          ; 74 59
        jmp     L_2934                          ; EB 0B
;   [conditional branch target (if/else)] L_2929
L_2929:
        cmp     word ptr [0x55c], 0             ; 83 3E 5C 05 00
        je      L_2934                          ; 74 04
        dec     word ptr [0x55c]                ; FF 0E 5C 05
;   [loop start (also forward branch)] L_2934
L_2934:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jne     L_293F                          ; 75 03
        jmp     L_2B79                          ; E9 3A 02
;   [conditional branch target (if/else)] L_293F
L_293F:
        push    ax                              ; 50
        call    L_2CAC                          ; E8 69 03
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2DB6                          ; E8 6C 04
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        jne     L_2953                          ; 75 03
        jmp     L_29FF                          ; E9 AC 00
;   [conditional branch target (if/else)] L_2953
L_2953:
        push    word ptr [bp - 0x28]            ; FF 76 D8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 AA F2
        or      ax, ax                          ; 0B C0
        jne     L_2962                          ; 75 03
        jmp     L_29E5                          ; E9 83 00
;   [conditional branch target (if/else)] L_2962
L_2962:
        push    word ptr [0x55c]                ; FF 36 5C 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 9A F2
        or      ax, ax                          ; 0B C0
        je      L_2972                          ; 74 03
        jmp     L_2B79                          ; E9 07 02
;   [loop start (also forward branch)] L_2972
L_2972:
        push    word ptr [0x55c]                ; FF 36 5C 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1A42                          ; E8 C5 F0
        jmp     L_2B79                          ; E9 F9 01
;   [conditional branch target (if/else)] L_2980
L_2980:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        inc     ax                              ; 40
        cmp     ax, word ptr [0x182]            ; 3B 06 82 01
        jge     L_2934                          ; 7D AA
        inc     word ptr [0x55c]                ; FF 06 5C 05
        jmp     L_2934                          ; EB A4
;   [conditional branch target (if/else)] L_2990
L_2990:
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2934                          ; 75 9D
        mov     ax, word ptr [0x35e]            ; A1 5E 03
        cmp     word ptr [0x55c], ax            ; 39 06 5C 05
        jl      L_2934                          ; 7C 94
        sub     word ptr [0x55c], ax            ; 29 06 5C 05
        jmp     L_2934                          ; EB 8E
;   [unconditional branch target] L_29A6
L_29A6:
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2934                          ; 75 87
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        add     ax, word ptr [0x35e]            ; 03 06 5E 03
        cmp     ax, word ptr [0x182]            ; 3B 06 82 01
        jge     L_29C4                          ; 7D 0A
        mov     ax, word ptr [0x35e]            ; A1 5E 03
        add     word ptr [0x55c], ax            ; 01 06 5C 05
        jmp     L_2934                          ; E9 70 FF
;   [conditional branch target (if/else)] L_29C4
L_29C4:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        add     ax, cx                          ; 03 C1
        cmp     ax, word ptr [0x182]            ; 3B 06 82 01
        jl      L_29DB                          ; 7C 03
        jmp     L_2934                          ; E9 59 FF
;   [conditional branch target (if/else)] L_29DB
L_29DB:
        mov     ax, word ptr [0x182]            ; A1 82 01
        dec     ax                              ; 48
        mov     word ptr [0x55c], ax            ; A3 5C 05
        jmp     L_2934                          ; E9 4F FF
;   [unconditional branch target] L_29E5
L_29E5:
        push    word ptr [0x55c]                ; FF 36 5C 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 17 F2
        or      ax, ax                          ; 0B C0
        jne     L_29F5                          ; 75 03
        jmp     L_2B79                          ; E9 84 01
;   [loop start (also forward branch)] L_29F5
L_29F5:
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_1A5E                          ; E8 62 F0
        jmp     L_2B79                          ; E9 7A 01
;   [unconditional branch target] L_29FF
L_29FF:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_2A08                          ; 74 03
        jmp     L_2B79                          ; E9 71 01
;   [conditional branch target (if/else)] L_2A08
L_2A08:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1AC8                          ; E8 B9 F0
        jmp     L_2972                          ; E9 60 FF
;   [unconditional branch target] L_2A12
L_2A12:
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        mov     word ptr [bp - 0x7c], ax        ; 89 46 84
        mov     word ptr [bp - 0x7a], ss        ; 8C 56 86
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_2A34                          ; EB 11
;   [loop start] L_2A23
L_2A23:
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        inc     word ptr [bp - 0x7c]            ; FF 46 84
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_2A34
L_2A34:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_2A23                          ; 75 E7
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_2A52                          ; EB 0D
;   [loop start] L_2A45
L_2A45:
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        mov     cx, ss                          ; 8C D1
        cmp     word ptr [bp - 0x7c], ax        ; 39 46 84
        jbe     L_2A5B                          ; 76 0C
        dec     word ptr [bp - 0x7c]            ; FF 4E 84
;   [unconditional branch target] L_2A52
L_2A52:
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_2A45                          ; 75 EA
;   [conditional branch target (if/else)] L_2A5B
L_2A5B:
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        mov     cx, ss                          ; 8C D1
        cmp     word ptr [bp - 0x7a], cx        ; 39 4E 86
        jne     L_2A6D                          ; 75 08
        cmp     word ptr [bp - 0x7c], ax        ; 39 46 84
        jne     L_2A6D                          ; 75 03
        inc     word ptr [bp - 0x7c]            ; FF 46 84
;   [conditional branch target (if/else)] L_2A6D
L_2A6D:
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 7B DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_24                   ; 9A 4C 17 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2AA0                          ; 74 12
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A E3 23 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2AA0
L_2AA0:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 AD DC
        jmp     L_2B79                          ; E9 D1 00
;   [unconditional branch target] L_2AA8
L_2AA8:
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        jne     L_2AB2                          ; 75 03
        jmp     L_2B79                          ; E9 C7 00
;   [conditional branch target (if/else)] L_2AB2
L_2AB2:
        push    word ptr [0x55c]                ; FF 36 5C 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 4A F1
        or      ax, ax                          ; 0B C0
        jne     L_2AC2                          ; 75 03
        jmp     L_2972                          ; E9 B0 FE
;   [conditional branch target (if/else)] L_2AC2
L_2AC2:
        jmp     L_29F5                          ; E9 30 FF
;   [unconditional branch target] L_2AC5
L_2AC5:
        cmp     word ptr [0x88], 0              ; 83 3E 88 00 00
        je      L_2ACF                          ; 74 03
        jmp     L_2B79                          ; E9 AA 00
;   [conditional branch target (if/else)] L_2ACF
L_2ACF:
        mov     word ptr [0x88], 1              ; C7 06 88 00 01 00
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [0x86], ax             ; A3 86 00
        jmp     L_2B79                          ; E9 9B 00
;   [unconditional branch target] L_2ADE
L_2ADE:
        cmp     ax, 0x21                        ; 3D 21 00
        jne     L_2AE6                          ; 75 03
        jmp     L_28F3                          ; E9 0D FE
;   [conditional branch target (if/else)] L_2AE6
L_2AE6:
        cmp     ax, 0x22                        ; 3D 22 00
        jne     L_2AEE                          ; 75 03
        jmp     L_2904                          ; E9 16 FE
;   [conditional branch target (if/else)] L_2AEE
L_2AEE:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_2AF6                          ; 73 03
        jmp     L_2B79                          ; E9 83 00
;   [conditional branch target (if/else)] L_2AF6
L_2AF6:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_2AFE                          ; 77 03
        jmp     L_290D                          ; E9 0F FE
;   [conditional branch target (if/else)] L_2AFE
L_2AFE:
        jmp     L_2B79                          ; EB 79
;   [unconditional branch target] L_2B00
L_2B00:
        cmp     word ptr [bp + 6], 0xd          ; 83 7E 06 0D
        jne     L_2B79                          ; 75 73
        cmp     word ptr [0x88], 0              ; 83 3E 88 00 00
        je      L_2B79                          ; 74 6C
        mov     word ptr [0x88], 0              ; C7 06 88 00 00 00
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        je      L_2B79                          ; 74 5F
        push    word ptr [0x55c]                ; FF 36 5C 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C05                          ; E8 E2 F0
        or      ax, ax                          ; 0B C0
        jne     L_2B32                          ; 75 0B
        push    word ptr [0x55c]                ; FF 36 5C 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1A42                          ; E8 10 EF
;   [conditional branch target (if/else)] L_2B32
L_2B32:
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_2B79                          ; 74 40
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [0x55c]            ; 8B 1E 5C 05
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        imul    word ptr [bx + si]              ; F7 28
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        lea     di, [bp - 0x22]                 ; 8D 7E DE
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0xb                         ; B9 0B 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x86]                 ; FF 36 86 00
        call    L_2E2A                          ; E8 B1 02
;   [branch target] L_2B79
L_2B79:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        cmp     word ptr [0x14], 0              ; 83 3E 14 00 00
        je      L_2BA4                          ; 74 09
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0222                          ; E8 7E D6
;   [conditional branch target (if/else)] L_2BA4
L_2BA4:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 0F 21 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_2BB6                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2BB8                          ; EB 02
;   [conditional branch target (if/else)] L_2BB6
L_2BB6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2BB8
L_2BB8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A EE 12 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_2C1B                          ; 74 41
        cmp     ax, 1                           ; 3D 01 00
        jge     L_2BE2                          ; 7D 03
        jmp     L_2C9D                          ; E9 BB 00
;   [conditional branch target (if/else)] L_2BE2
L_2BE2:
        cmp     ax, 0x1a                        ; 3D 1A 00
        jle     L_2BEA                          ; 7E 03
        jmp     L_2C9D                          ; E9 B3 00
;   [conditional branch target (if/else)] L_2BEA
L_2BEA:
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_2BF2
L_2BF2:
        mov     ax, word ptr [0x560]            ; A1 60 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_2BFD                          ; 7C 03
        jmp     L_2C9D                          ; E9 A0 00
;   [conditional branch target (if/else)] L_2BFD
L_2BFD:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0x274], ax       ; 39 87 74 02
        jne     L_2C16                          ; 75 0B
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1ED3                          ; E8 C0 F2
        jmp     L_2C9D                          ; E9 87 00
;   [conditional branch target (if/else)] L_2C16
L_2C16:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_2BF2                          ; EB D7
;   [conditional branch target (if/else)] L_2C1B
L_2C1B:
        cmp     word ptr [0xc8], 0              ; 83 3E C8 00 00
        je      L_2CA0                          ; 74 7E
        mov     dx, word ptr [0xc8]             ; 8B 16 C8 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_2C6D                          ; EB 3A
;   [loop start] L_2C33
L_2C33:
        inc     word ptr [0x55c]                ; FF 06 5C 05
        cmp     word ptr [0x55c], ax            ; 39 06 5C 05
        jne     L_2C43                          ; 75 06
        mov     word ptr [0x55c], 0             ; C7 06 5C 05 00 00
;   [conditional branch target (if/else)] L_2C43
L_2C43:
        mov     ax, 0x16                        ; B8 16 00
        mov     bx, word ptr [0x55c]            ; 8B 1E 5C 05
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [0x532]            ; 8B 36 32 05
        imul    word ptr [bx + si]              ; F7 28
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        cmp     byte ptr es:[bx + 9], al        ; 26 38 47 09
        je      L_2C75                          ; 74 0B
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_2C6D
L_2C6D:
        mov     ax, word ptr [0x182]            ; A1 82 01
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_2C33                          ; 7C BE
;   [conditional branch target (if/else)] L_2C75
L_2C75:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_2C9D                          ; 74 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1AC8                          ; E8 44 EE
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2CAC                          ; E8 21 00
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2DB6                          ; E8 24 01
        push    word ptr [0x55c]                ; FF 36 5C 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1A42                          ; E8 A5 ED
;   [branch target] L_2C9D
L_2C9D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [conditional branch target (if/else)] L_2CA0
L_2CA0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2CAC   offset=0x2CAC  size=44 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2420
;-------------------------------------------------------------------------
;   [sub-routine] L_2CAC
L_2CAC:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_2CCA                          ; 7C 10
        mov     ax, word ptr [0x1c]             ; A1 1C 00
        imul    word ptr [0x35e]                ; F7 2E 5E 03
        add     ax, word ptr [0xc4]             ; 03 06 C4 00
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jg      L_2D1B                          ; 7F 51
;   [conditional branch target (if/else)] L_2CCA
L_2CCA:
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2CF5                          ; 75 24
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_2CE5                          ; 7D 0C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        jmp     L_2D0A                          ; EB 25
;   [conditional branch target (if/else)] L_2CE5
L_2CE5:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        sub     ax, word ptr [0x1c]             ; 2B 06 1C 00
        jmp     L_2D09                          ; EB 14
;   [conditional branch target (if/else)] L_2CF5
L_2CF5:
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_2D02                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_2D0A                          ; EB 08
;   [conditional branch target (if/else)] L_2D02
L_2D02:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x35e]            ; 2B 06 5E 03
;   [unconditional branch target] L_2D09
L_2D09:
        inc     ax                              ; 40
;   [unconditional branch target] L_2D0A
L_2D0A:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x328]                ; FF 36 28 03
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_2420                          ; E8 05 F7
;   [error/early exit] L_2D1B
L_2D1B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: CREATECARET, SHOWCARET.

;-------------------------------------------------------------------------
; sub_2D21   offset=0x2D21  size=42 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CREATECARET
;   SHOWCARET
;
; Near calls (internal): L_2DB6
;-------------------------------------------------------------------------
;   [sub-routine] L_2D21
L_2D21:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        je      L_2D86                          ; 74 51
        mov     word ptr [0xbe], 1              ; C7 06 BE 00 01 00
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2D4E                          ; 75 0C
        mov     ax, word ptr [0x354]            ; A1 54 03
        sub     ax, word ptr [0x5b6]            ; 2B 06 B6 05
        add     ax, 4                           ; 05 04 00
        jmp     L_2D58                          ; EB 0A
;   [conditional branch target (if/else)] L_2D4E
L_2D4E:
        mov     ax, 0x2b                        ; B8 2B 00
        imul    word ptr [0x5b6]                ; F7 2E B6 05
        add     ax, 5                           ; 05 05 00
;   [unconditional branch target] L_2D58
L_2D58:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x328]                ; FF 36 28 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        call    far USER.CREATECARET            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x55c]                ; FF 36 5C 05
        call    L_2DB6                          ; E8 43 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1d4], ax            ; A3 D4 01
        or      ax, ax                          ; 0B C0
        jne     L_2D86                          ; 75 09
        push    word ptr [0x328]                ; FF 36 28 03
        call    far USER.SHOWCARET              ; 9A C9 23 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2D86
L_2D86:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Thin wrapper around DESTROYCARET.

;-------------------------------------------------------------------------
; sub_2D91   offset=0x2D91  size=18 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   DESTROYCARET
;-------------------------------------------------------------------------
;   [sub-routine] L_2D91
L_2D91:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_2DAD                          ; 74 0B
        mov     word ptr [0xbe], 0              ; C7 06 BE 00 00 00
        call    far USER.DESTROYCARET           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2DAD
L_2DAD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: SETCARETPOS.

;-------------------------------------------------------------------------
; sub_2DB6   offset=0x2DB6  size=42 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SETCARETPOS
;-------------------------------------------------------------------------
;   [sub-routine] L_2DB6
L_2DB6:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0xbe], 0              ; 83 3E BE 00 00
        je      L_2E24                          ; 74 61
        cmp     word ptr [0x182], 0             ; 83 3E 82 01 00
        je      L_2E24                          ; 74 5A
        mov     word ptr [bp - 4], 6            ; C7 46 FC 06 00
        cmp     word ptr [0x1e], 0x3e           ; 83 3E 1E 00 3E
        jne     L_2E0B                          ; 75 35
        mov     ax, word ptr [0xc4]             ; A1 C4 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_2DE8                          ; 7D 0A
        mov     ax, word ptr [0x354]            ; A1 54 03
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_2DFD                          ; EB 15
;   [conditional branch target (if/else)] L_2DE8
L_2DE8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
        cdq                                     ; 99
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        idiv    cx                              ; F7 F9
        imul    word ptr [0x354]                ; F7 2E 54 03
        add     word ptr [bp - 4], ax           ; 01 46 FC
;   [unconditional branch target] L_2DFD
L_2DFD:
        mov     cx, word ptr [0x35e]            ; 8B 0E 5E 03
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        jmp     L_2E12                          ; EB 07
;   [conditional branch target (if/else)] L_2E0B
L_2E0B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xc4]             ; 2B 06 C4 00
;   [unconditional branch target] L_2E12
L_2E12:
        inc     ax                              ; 40
        imul    word ptr [0x382]                ; F7 2E 82 03
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        call    far USER.SETCARETPOS            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_2E24
L_2E24:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: POSTMESSAGE.

;-------------------------------------------------------------------------
; sub_2E2A   offset=0x2E2A  size=81 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;
; Near calls (internal): L_00F7, L_06F4, L_0752, L_3157
;-------------------------------------------------------------------------
;   [sub-routine] L_2E2A
L_2E2A:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_2E73                          ; 74 3A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 B6 D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x5b2]            ; A1 B2 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_24                   ; 9A 86 2A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2E6C                          ; 74 12
        push    word ptr [0x346]                ; FF 36 46 03
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
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A 9C 2A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2E6C
L_2E6C:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 E1 D8
        jmp     L_2EDB                          ; EB 68
;   [conditional branch target (if/else)] L_2E73
L_2E73:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 9                           ; 05 09 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_2E8D                          ; EB 09
;   [loop start] L_2E84
L_2E84:
        cmp     byte ptr [bp - 6], 0x2e         ; 80 7E FA 2E
        je      L_2E9A                          ; 74 10
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_2E8D
L_2E8D:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_2E84                          ; 75 EA
;   [conditional branch target (if/else)] L_2E9A
L_2E9A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2EBC                          ; 75 19
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 3D D2
        jmp     L_2EDB                          ; EB 1F
;   [conditional branch target (if/else)] L_2EBC
L_2EBC:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 9                           ; 05 09 00
        push    dx                              ; 52
        push    ax                              ; 50
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_2ED2                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_2ED5                          ; EB 03
;   [conditional branch target (if/else)] L_2ED2
L_2ED2:
        mov     ax, word ptr [0x346]            ; A1 46 03
;   [unconditional branch target] L_2ED5
L_2ED5:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3157                          ; E8 7C 02
;   [fall-through exit] L_2EDB
L_2EDB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_2EE1   offset=0x2EE1  size=79 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_2EE1
L_2EE1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A CB 2B 00 00 [FIXUP]
        jmp     L_2F06                          ; EB 03
;   [loop start] L_2F03
L_2F03:
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_2F06
L_2F06:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2F03                          ; 75 F4
        jmp     L_2F25                          ; EB 14
;   [loop start] L_2F11
L_2F11:
        cmp     byte ptr [bp - 8], 0x2e         ; 80 7E F8 2E
        je      L_2F32                          ; 74 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_2F32                          ; 76 10
        dec     word ptr [bp + 6]               ; FF 4E 06
;   [unconditional branch target] L_2F25
L_2F25:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_2F11                          ; 75 DF
;   [conditional branch target (if/else)] L_2F32
L_2F32:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_2F8C                          ; 75 4E
        push    es                              ; 06
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x8a                        ; B8 8A 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 5C 2F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2F90                          ; 74 40
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x8e                        ; B8 8E 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 70 2F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2F90                          ; 74 2C
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x92                        ; B8 92 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 84 2F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2F90                          ; 74 18
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x96                        ; B8 96 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A A0 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2F90                          ; 74 04
;   [conditional branch target (if/else)] L_2F8C
L_2F8C:
        sub     ax, ax                          ; 2B C0
        jmp     L_2F93                          ; EB 03
;   [conditional branch target (if/else)] L_2F90
L_2F90:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_2F93
L_2F93:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: GETCURRENTPDB.

;-------------------------------------------------------------------------
; sub_2F9E   offset=0x2F9E  size=176 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=6, ASM=7)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETCURRENTPDB
;-------------------------------------------------------------------------
;   [sub-routine] L_2F9E
L_2F9E:
        ;   = cProc <50> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x32                        ; 83 EC 32
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        cld                                     ; FC
        mov     byte ptr [bp - 0x32], 0         ; C6 46 CE 00
        lds     si, ptr [bp + 8]                ; C5 76 08
        les     di, ptr [bp + 4]                ; C4 7E 04
;   [loop start] L_2FB2
L_2FB2:
        lodsb   al, byte ptr [si]               ; AC
        stosb   byte ptr es:[di], al            ; AA
        cmp     al, 0x2f                        ; 3C 2F
        je      L_2FBC                          ; 74 04
        cmp     al, 0x5c                        ; 3C 5C
        jne     L_2FBF                          ; 75 03
;   [conditional branch target (if/else)] L_2FBC
L_2FBC:
        inc     byte ptr [bp - 0x32]            ; FE 46 CE
;   [conditional branch target (if/else)] L_2FBF
L_2FBF:
        or      al, al                          ; 0A C0
        jne     L_2FB2                          ; 75 EF
        mov     word ptr es:[di - 1], 0x2a2e    ; 26 C7 45 FF 2E 2A
        mov     byte ptr es:[di + 1], al        ; 26 88 45 01
        push    ss                              ; 16
        pop     ds                              ; 1F
        lea     dx, [bp - 0x2c]                 ; 8D 56 D4
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        lds     dx, ptr [bp + 4]                ; C5 56 04
        xor     cx, cx                          ; 33 C9
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_2FE9                          ; 72 03
        jmp     L_309C                          ; E9 B3 00
;   [conditional branch target (if/else)] L_2FE9
L_2FE9:
        cmp     byte ptr [bp - 0x32], 0         ; 80 7E CE 00
        je      L_2FF2                          ; 74 03
        jmp     L_307C                          ; E9 8A 00
;   [loop start (also forward branch)] L_2FF2
L_2FF2:
        call    far KERNEL.GETCURRENTPDB        ; 9A FF FF 00 00 [FIXUP]
        mov     ds, ax                          ; 8E D8
        mov     ds, word ptr [0x2c]             ; 8E 1E 2C 00
        mov     word ptr [bp - 0x2e], ds        ; 8C 5E D2
        xor     si, si                          ; 33 F6
;   [loop start] L_3002
L_3002:
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_307C                          ; 74 75
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x4150                      ; 3D 50 41
        jne     L_3018                          ; 75 0B
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x4854                      ; 3D 54 48
        jne     L_3018                          ; 75 05
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x3d                        ; 3C 3D
        je      L_301F                          ; 74 07
;   [loop start (also forward branch)] L_3018
L_3018:
        lodsb   al, byte ptr [si]               ; AC
        or      al, al                          ; 0A C0
        jne     L_3018                          ; 75 FB
        jmp     L_3002                          ; EB E3
;   [conditional branch target (if/else)] L_301F
L_301F:
        mov     word ptr [bp - 0x30], si        ; 89 76 D0
;   [loop start] L_3022
L_3022:
        les     di, ptr [bp + 4]                ; C4 7E 04
;   [loop start] L_3025
L_3025:
        lodsb   al, byte ptr [si]               ; AC
        stosb   byte ptr es:[di], al            ; AA
        cmp     al, 0x3b                        ; 3C 3B
        je      L_3030                          ; 74 05
        or      al, al                          ; 0A C0
        jne     L_3025                          ; 75 F6
        dec     si                              ; 4E
;   [conditional branch target (if/else)] L_3030
L_3030:
        mov     al, 0x5c                        ; B0 5C
        mov     bx, di                          ; 8B DF
        dec     bx                              ; 4B
        cmp     bx, word ptr [bp + 4]           ; 3B 5E 04
        jne     L_303D                          ; 75 03
        dec     di                              ; 4F
        jmp     L_3048                          ; EB 0B
;   [conditional branch target (if/else)] L_303D
L_303D:
        cmp     byte ptr es:[di - 2], al        ; 26 38 45 FE
        jne     L_3044                          ; 75 01
        dec     di                              ; 4F
;   [conditional branch target (if/else)] L_3044
L_3044:
        mov     byte ptr es:[di - 1], al        ; 26 88 45 FF
;   [unconditional branch target] L_3048
L_3048:
        mov     word ptr [bp - 0x30], si        ; 89 76 D0
        mov     word ptr [bp - 0x2e], ds        ; 8C 5E D2
        lds     si, ptr [bp + 8]                ; C5 76 08
        cmp     byte ptr [si + 1], 0x3a         ; 80 7C 01 3A
        jne     L_3059                          ; 75 02
        inc     si                              ; 46
        inc     si                              ; 46
;   [loop start (also forward branch)] L_3059
L_3059:
        lodsb   al, byte ptr [si]               ; AC
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_3059                          ; 75 FA
        mov     word ptr es:[di - 1], 0x2a2e    ; 26 C7 45 FF 2E 2A
        mov     byte ptr es:[di + 1], al        ; 26 88 45 01
        lds     dx, ptr [bp + 4]                ; C5 56 04
        xor     cx, cx                          ; 33 C9
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jae     L_309C                          ; 73 28
;   [loop start] L_3074
L_3074:
        lds     si, ptr [bp - 0x30]             ; C5 76 D0
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_3022                          ; 75 A6
;   [loop start (also forward branch)] L_307C
L_307C:
        lds     si, ptr [bp + 8]                ; C5 76 08
        les     di, ptr [bp + 4]                ; C4 7E 04
;   [loop start] L_3082
L_3082:
        lodsb   al, byte ptr [si]               ; AC
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_3082                          ; 75 FA
        mov     word ptr es:[di - 1], 0x452e    ; 26 C7 45 FF 2E 45
        mov     word ptr es:[di + 1], 0x4558    ; 26 C7 45 01 58 45
        mov     byte ptr es:[di + 3], 0         ; 26 C6 45 03 00
        jmp     L_314E                          ; E9 B2 00
;   [branch target] L_309C
L_309C:
        mov     byte ptr [bp - 0x31], 0         ; C6 46 CF 00
;   [loop start] L_30A0
L_30A0:
        push    ss                              ; 16
        pop     ds                              ; 1F
        lea     si, [bp - 0xe]                  ; 8D 76 F2
;   [loop start] L_30A5
L_30A5:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_30A5                          ; 75 FB
        cmp     word ptr [si], 0x5845           ; 81 3C 45 58
        jne     L_30BC                          ; 75 0C
        cmp     word ptr [si + 2], 0x45         ; 83 7C 02 45
        jne     L_30BC                          ; 75 06
        or      byte ptr [bp - 0x31], 8         ; 80 4E CF 08
        jmp     L_30F0                          ; EB 34
;   [conditional branch target (if/else)] L_30BC
L_30BC:
        cmp     word ptr [si], 0x4f43           ; 81 3C 43 4F
        jne     L_30CE                          ; 75 0C
        cmp     word ptr [si + 2], 0x4d         ; 83 7C 02 4D
        jne     L_30CE                          ; 75 06
        or      byte ptr [bp - 0x31], 4         ; 80 4E CF 04
        jmp     L_30F0                          ; EB 22
;   [conditional branch target (if/else)] L_30CE
L_30CE:
        cmp     word ptr [si], 0x4142           ; 81 3C 42 41
        jne     L_30E0                          ; 75 0C
        cmp     word ptr [si + 2], 0x54         ; 83 7C 02 54
        jne     L_30E0                          ; 75 06
        or      byte ptr [bp - 0x31], 2         ; 80 4E CF 02
        jmp     L_3111                          ; EB 31
;   [conditional branch target (if/else)] L_30E0
L_30E0:
        cmp     word ptr [si], 0x4950           ; 81 3C 50 49
        jne     L_30F0                          ; 75 0A
        cmp     word ptr [si + 2], 0x46         ; 83 7C 02 46
        jne     L_30F0                          ; 75 04
        or      byte ptr [bp - 0x31], 1         ; 80 4E CF 01
;   [branch target] L_30F0
L_30F0:
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jae     L_30A0                          ; 73 AA
        cmp     byte ptr [bp - 0x31], 0         ; 80 7E CF 00
        jne     L_3111                          ; 75 15
        cmp     byte ptr [bp - 0x32], 0         ; 80 7E CE 00
        je      L_3105                          ; 74 03
        jmp     L_307C                          ; E9 77 FF
;   [conditional branch target (if/else)] L_3105
L_3105:
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_310E                          ; 75 03
        jmp     L_2FF2                          ; E9 E4 FE
;   [conditional branch target (if/else)] L_310E
L_310E:
        jmp     L_3074                          ; E9 63 FF
;   [branch target] L_3111
L_3111:
        lds     si, ptr [bp + 4]                ; C5 76 04
;   [loop start] L_3114
L_3114:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x2a                        ; 3C 2A
        jne     L_3114                          ; 75 FB
        dec     si                              ; 4E
        mov     al, byte ptr [bp - 0x31]        ; 8A 46 CF
        cwde                                    ; 98
        mov     word ptr [si], 0x4142           ; C7 04 42 41
        mov     word ptr [si + 2], 0x54         ; C7 44 02 54 00
        test    al, 2                           ; A8 02
        jne     L_314E                          ; 75 23
        mov     word ptr [si], 0x4f43           ; C7 04 43 4F
        mov     word ptr [si + 2], 0x4d         ; C7 44 02 4D 00
        test    al, 4                           ; A8 04
        jne     L_314E                          ; 75 16
        mov     word ptr [si], 0x5845           ; C7 04 45 58
        mov     word ptr [si + 2], 0x45         ; C7 44 02 45 00
        test    al, 8                           ; A8 08
        jne     L_314E                          ; 75 09
        mov     word ptr [si], 0x4950           ; C7 04 50 49
        mov     word ptr [si + 2], 0x46         ; C7 44 02 46 00
;   [branch target] L_314E
L_314E:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  LPSTR     (1 use)
;     [bp+0xa]  LPSTR     (1 use)

; Description (heuristic):
;   String manipulation routine (5 string APIs).

;-------------------------------------------------------------------------
; sub_3157   offset=0x3157  size=520 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GETPROFILESTRING
;   GLOBALHANDLE(WORD wSeg) -> DWORD
;   LOADMODULE(LPSTR lpszModule, LPVOID lpParams) -> HANDLE
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (first 8 of 9): L_00F7, L_06F4, L_0752, L_0925, L_0973, L_2EE1, L_2F9E, L_36AE ...
;-------------------------------------------------------------------------
;   [sub-routine] L_3157
L_3157:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xd2                        ; 81 EC D2 00
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 72 33 00 00 [FIXUP]
        cmp     ax, 0x7f                        ; 3D 7F 00
        jle     L_3183                          ; 7E 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     byte ptr es:[bx + 0x7f], 0      ; 26 C6 47 7F 00
;   [conditional branch target (if/else)] L_3183
L_3183:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A CD 31 00 00 [FIXUP]
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A AB 31 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      ax, ax                          ; 0B C0
        je      L_31B6                          ; 74 14
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A CD 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        jne     L_31C9                          ; 75 13
;   [conditional branch target (if/else)] L_31B6
L_31B6:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 31 CF
        jmp     L_3679                          ; E9 B0 04
;   [conditional branch target (if/else)] L_31C9
L_31C9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06F4                          ; E8 19 D5
        jmp     L_31E0                          ; EB 03
;   [loop start] L_31DD
L_31DD:
        inc     word ptr [bp + 8]               ; FF 46 08
;   [unconditional branch target] L_31E0
L_31E0:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_31DD                          ; 74 F4
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    es                              ; 06
        ;   ^ arg lpszSrc (high/segment)
        push    bx                              ; 53
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A BA 32 00 00 [FIXUP]
        mov     word ptr [bp - 0xca], 0         ; C7 86 36 FF 00 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx + 1], 0x3a      ; 26 80 7F 01 3A
        jne     L_321D                          ; 75 17
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A D0 32 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x40                        ; 2D 40 00
        mov     word ptr [bp - 0xca], ax        ; 89 86 36 FF
;   [conditional branch target (if/else)] L_321D
L_321D:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xca]            ; FF B6 36 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0925                          ; E8 FA D6
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        je      L_3242                          ; 74 10
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_323A                          ; 75 03
        jmp     L_34A8                          ; E9 6E 02
;   [loop start (also forward branch)] L_323A
L_323A:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 13 D5
        jmp     L_3679                          ; E9 37 04
;   [conditional branch target (if/else)] L_3242
L_3242:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_3266                          ; 75 1B
        cmp     byte ptr es:[bx + 1], 0x5c      ; 26 80 7F 01 5C
        je      L_3266                          ; 74 14
        cmp     byte ptr es:[bx + 1], 0x2e      ; 26 80 7F 01 2E
        je      L_325C                          ; 74 03
        jmp     L_34A8                          ; E9 4C 02
;   [conditional branch target (if/else)] L_325C
L_325C:
        cmp     byte ptr es:[bx + 2], 0x5c      ; 26 80 7F 02 5C
        je      L_3266                          ; 74 03
        jmp     L_34A8                          ; E9 42 02
;   [conditional branch target (if/else)] L_3266
L_3266:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        jmp     L_328D                          ; EB 19
;   [loop start] L_3274
L_3274:
        cmp     al, 0x2f                        ; 3C 2F
        je      L_329A                          ; 74 22
        cmp     al, 0x20                        ; 3C 20
        je      L_329A                          ; 74 1E
        cmp     al, 0x2a                        ; 3C 2A
        jne     L_3283                          ; 75 03
        jmp     L_34A8                          ; E9 25 02
;   [conditional branch target (if/else)] L_3283
L_3283:
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_328A                          ; 75 03
        jmp     L_34A8                          ; E9 1E 02
;   [conditional branch target (if/else)] L_328A
L_328A:
        inc     word ptr [bp - 0x38]            ; FF 46 C8
;   [unconditional branch target] L_328D
L_328D:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x20], al        ; 88 46 E0
        or      al, al                          ; 0A C0
        jne     L_3274                          ; 75 DA
;   [conditional branch target (if/else)] L_329A
L_329A:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     dx, word ptr [bp - 0x36]        ; 8B 56 CA
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F7 33 00 00 [FIXUP]
        mov     si, word ptr [bp - 0x38]        ; 8B 76 C8
        sub     si, word ptr [bp + 8]           ; 2B 76 08
        mov     byte ptr [bp + si - 0xc6], 0    ; C6 82 3A FF 00
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A AF 34 00 00 [FIXUP]
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_36EE                          ; E8 11 04
        or      ax, ax                          ; 0B C0
        jne     L_32E4                          ; 75 03
        jmp     L_34A8                          ; E9 C4 01
;   [conditional branch target (if/else)] L_32E4
L_32E4:
        jmp     L_32FB                          ; EB 15
;   [loop start] L_32E6
L_32E6:
        cmp     byte ptr [bp - 0xd2], 0x5c      ; 80 BE 2E FF 5C
        je      L_3309                          ; 74 1C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x38], ax        ; 39 46 C8
        jbe     L_3309                          ; 76 11
        dec     word ptr [bp - 0x38]            ; FF 4E C8
;   [unconditional branch target] L_32FB
L_32FB:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_32E6                          ; 75 DD
;   [conditional branch target (if/else)] L_3309
L_3309:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        je      L_337C                          ; 74 6A
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0xc8], ax        ; 89 86 38 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        jmp     L_3348                          ; EB 21
;   [loop start] L_3327
L_3327:
        cmp     byte ptr [bp - 0xd2], 0x2f      ; 80 BE 2E FF 2F
        je      L_3356                          ; 74 28
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        je      L_3356                          ; 74 21
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        inc     word ptr [bp - 0xc8]            ; FF 86 38 FF
        les     si, ptr [bp - 0x38]             ; C4 76 C8
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        mov     al, byte ptr es:[si]            ; 26 8A 04
        mov     byte ptr [bx], al               ; 88 07
;   [unconditional branch target] L_3348
L_3348:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_3327                          ; 75 D1
;   [conditional branch target (if/else)] L_3356
L_3356:
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2F9E                          ; E8 33 FC
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A DE 34 00 00 [FIXUP]
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        jmp     L_33C9                          ; EB 4D
;   [conditional branch target (if/else)] L_337C
L_337C:
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], ss        ; 8C 56 C6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        jmp     L_33B4                          ; EB 20
;   [loop start] L_3394
L_3394:
        cmp     byte ptr [bp - 0xd2], 0x2f      ; 80 BE 2E FF 2F
        je      L_33C2                          ; 74 27
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        je      L_33C2                          ; 74 20
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x3c]             ; C4 5E C4
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_33B4
L_33B4:
        les     bx, ptr [bp - 0x38]             ; C4 5E C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_3394                          ; 75 D2
;   [conditional branch target (if/else)] L_33C2
L_33C2:
        les     bx, ptr [bp - 0x3c]             ; C4 5E C4
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [unconditional branch target] L_33C9
L_33C9:
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        lea     cx, [bp - 0xc6]                 ; 8D 8E 3A FF
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], dx        ; 89 56 C6
        jmp     L_33E0                          ; EB 03
;   [loop start] L_33DD
L_33DD:
        dec     word ptr [bp - 0x3c]            ; FF 4E C4
;   [unconditional branch target] L_33E0
L_33E0:
        les     bx, ptr [bp - 0x3c]             ; C4 5E C4
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_33DD                          ; 75 F4
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    es                              ; 06
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 3F 34 00 00 [FIXUP]
        mov     ax, 0x155                       ; B8 55 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x154                       ; B8 54 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A D9 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_3499                          ; 74 7C
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0xc8], ax        ; 89 86 38 FF
        jmp     L_346F                          ; EB 43
;   [loop start] L_342C
L_342C:
        cmp     byte ptr [bp - 0xd2], 0x5e      ; 80 BE 2E FF 5E
        jne     L_345D                          ; 75 2A
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A D4 34 00 00 [FIXUP]
        jmp     L_3448                          ; EB 03
;   [loop start] L_3445
L_3445:
        inc     word ptr [bp - 0x46]            ; FF 46 BA
;   [unconditional branch target] L_3448
L_3448:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_3445                          ; 75 F5
;   [loop start] L_3450
L_3450:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_346B                          ; 74 13
        dec     word ptr [bp - 0x46]            ; FF 4E BA
        jmp     L_3450                          ; EB F3
;   [conditional branch target (if/else)] L_345D
L_345D:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        inc     word ptr [bp - 0x46]            ; FF 46 BA
        mov     si, word ptr [bp - 0xc8]        ; 8B B6 38 FF
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
;   [conditional branch target (if/else)] L_346B
L_346B:
        inc     word ptr [bp - 0xc8]            ; FF 86 38 FF
;   [unconditional branch target] L_346F
L_346F:
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_342C                          ; 75 AF
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     word ptr [bp - 0xc8], ax        ; 89 86 38 FF
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     ax, word ptr [bp - 0xc8]        ; 8B 86 38 FF
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        jmp     L_34D8                          ; EB 3F
;   [conditional branch target (if/else)] L_3499
L_3499:
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2EE1                          ; E8 3D FA
        or      ax, ax                          ; 0B C0
        jne     L_34C8                          ; 75 20
;   [unconditional branch target] L_34A8
L_34A8:
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FD 2E 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 32 CC
        jmp     L_323A                          ; E9 72 FD
;   [conditional branch target (if/else)] L_34C8
L_34C8:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 55 16 00 00 [FIXUP]
;   [unconditional branch target] L_34D8
L_34D8:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A EC 34 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 65 19 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        cmp     ax, 0x7f                        ; 3D 7F 00
        jle     L_3503                          ; 7E 0B
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        sub     bx, word ptr [bp - 0x1e]        ; 2B 5E E2
        mov     byte ptr es:[bx + 0x7f], 0      ; 26 C6 47 7F 00
;   [conditional branch target (if/else)] L_3503
L_3503:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A A3 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        jmp     L_352C                          ; EB 11
;   [loop start] L_351B
L_351B:
        cmp     byte ptr [bp - 0xd2], 0x2f      ; 80 BE 2E FF 2F
        je      L_3539                          ; 74 17
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        je      L_3539                          ; 74 10
        inc     word ptr [bp - 0x46]            ; FF 46 BA
;   [unconditional branch target] L_352C
L_352C:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_351B                          ; 75 E2
;   [conditional branch target (if/else)] L_3539
L_3539:
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        mov     word ptr [bp - 0xc8], ax        ; 89 86 38 FF
        jmp     L_3545                          ; EB 03
;   [loop start] L_3542
L_3542:
        inc     word ptr [bp - 0x46]            ; FF 46 BA
;   [unconditional branch target] L_3545
L_3545:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_3542                          ; 74 F5
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 72 31 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     byte ptr [bx], al               ; 88 07
        mov     ax, bx                          ; 8B C3
        mov     dx, ds                          ; 8C DA
        inc     ax                              ; 40
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F2 31 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     byte ptr [bx + si + 1], 0xd     ; C6 40 01 0D
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        dec     word ptr [bp - 0xc8]            ; FF 8E 38 FF
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     word ptr [bp - 0x24], 2         ; C7 46 DC 02 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], ds        ; 8C 5E D0
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], ss        ; 8C 56 D4
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        jmp     L_35C3                          ; EB 14
;   [loop start] L_35AF
L_35AF:
        cmp     byte ptr [bp - 0xd2], 0x5c      ; 80 BE 2E FF 5C
        je      L_35D1                          ; 74 1B
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cmp     word ptr [bp - 0xc8], ax        ; 39 86 38 FF
        jbe     L_35D1                          ; 76 12
        dec     word ptr [bp - 0xc8]            ; FF 8E 38 FF
;   [unconditional branch target] L_35C3
L_35C3:
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_35AF                          ; 75 DE
;   [conditional branch target (if/else)] L_35D1
L_35D1:
        mov     bx, word ptr [bp - 0xc8]        ; 8B 9E 38 FF
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        cmp     al, 0x5c                        ; 3C 5C
        je      L_35E3                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_35E7                          ; 75 04
;   [conditional branch target (if/else)] L_35E3
L_35E3:
        inc     word ptr [bp - 0xc8]            ; FF 86 38 FF
;   [conditional branch target (if/else)] L_35E7
L_35E7:
        mov     ax, 0xd4                        ; B8 D4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x168                       ; B8 68 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x160                       ; B8 60 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 15 34 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A 10 32 00 00 [FIXUP]
        mov     word ptr [0x16e], 1             ; C7 06 6E 01 01 00
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, word ptr [bp - 0xc8]        ; 8B 86 38 FF
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 48 2F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_363B                          ; 75 13
        mov     ax, word ptr [0x1da]            ; A1 DA 01
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        ;   ^ arg lpParams (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParams (low/offset)
        ; --> LOADMODULE(LPSTR lpszModule, LPVOID lpParams) -> HANDLE
        call    far KERNEL.LOADMODULE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_3648                          ; EB 0D
;   [conditional branch target (if/else)] L_363B
L_363B:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0973                          ; E8 2B D3
;   [unconditional branch target] L_3648
L_3648:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x16e], 0             ; C7 06 6E 01 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0752                          ; E8 FC D0
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_3665                          ; 75 09
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 0xa], ds         ; 8C 5E 0A
;   [conditional branch target (if/else)] L_3665
L_3665:
        cmp     word ptr [bp - 4], 0x3e         ; 83 7E FC 3E
        jae     L_3679                          ; 73 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_36AE                          ; E8 35 00
;   [branch target] L_3679
L_3679:
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_3687                          ; 74 08
        push    word ptr [bp - 0x26]            ; FF 76 DA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 91 36 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3687
L_3687:
        cmp     word ptr [bp - 0x44], 0         ; 83 7E BC 00
        je      L_3695                          ; 74 08
        push    word ptr [bp - 0x44]            ; FF 76 BC
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 10 1B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3695
L_3695:
        cmp     word ptr [bp - 4], 0x3e         ; 83 7E FC 3E
        jb      L_36A0                          ; 72 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_36A2                          ; EB 02
;   [conditional branch target (if/else)] L_36A0
L_36A0:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_36A2
L_36A2:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_36AE   offset=0x36AE  size=34 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_00F7
;-------------------------------------------------------------------------
;   [sub-routine] L_36AE
L_36AE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_36C9                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_36E3                          ; 74 1F
        cmp     ax, 8                           ; 3D 08 00
        jne     L_36D1                          ; 75 08
;   [conditional branch target (if/else)] L_36C9
L_36C9:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        jmp     L_36D7                          ; EB 06
;   [conditional branch target (if/else)] L_36D1
L_36D1:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
;   [unconditional branch target] L_36D7
L_36D7:
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F7                          ; E8 14 CA
;   [conditional branch target (if/else)] L_36E3
L_36E3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_36EE   offset=0x36EE  size=153 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_36EE
L_36EE:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_3706                          ; EB 03
;   [loop start] L_3703
L_3703:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_3706
L_3706:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_3703                          ; 75 F4
;   [loop start] L_370F
L_370F:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jb      L_3730                          ; 72 16
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0x3a                        ; 3C 3A
        je      L_3730                          ; 74 09
        cmp     al, 0x5c                        ; 3C 5C
        je      L_3730                          ; 74 05
        dec     word ptr [bp - 4]               ; FF 4E FC
        jmp     L_370F                          ; EB DF
;   [conditional branch target (if/else)] L_3730
L_3730:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_374A                          ; EB 09
;   [loop start] L_3741
L_3741:
        cmp     byte ptr [bp - 0xa], 0x2e       ; 80 7E F6 2E
        je      L_3757                          ; 74 10
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_374A
L_374A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        jne     L_3741                          ; 75 EA
;   [conditional branch target (if/else)] L_3757
L_3757:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        sub     si, word ptr [bp - 8]           ; 2B 76 F8
        cmp     si, 8                           ; 83 FE 08
        jg      L_3766                          ; 7F 04
        or      si, si                          ; 0B F6
        jne     L_376A                          ; 75 04
;   [loop start (also forward branch)] L_3766
L_3766:
        sub     ax, ax                          ; 2B C0
        jmp     L_379D                          ; EB 33
;   [conditional branch target (if/else)] L_376A
L_376A:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_3776                          ; 75 03
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [conditional branch target (if/else)] L_3776
L_3776:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_3787                          ; EB 03
;   [loop start] L_3784
L_3784:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_3787
L_3787:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_3784                          ; 75 F4
        mov     ax, bx                          ; 8B C3
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cmp     ax, 3                           ; 3D 03 00
        jg      L_3766                          ; 7F CC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_379D
L_379D:
        pop     si                              ; 5E
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
        sub     sp, 8                           ; 83 EC 08
        test    byte ptr [bp + 0xa], 0x80       ; F6 46 0A 80
        je      L_37D9                          ; 74 22
        mov     word ptr [0x170], 0             ; C7 06 70 01 00 00
        push    word ptr [0x176]                ; FF 36 76 01
        ;   ^ arg lpProc (high/segment)
        push    word ptr [0x174]                ; FF 36 74 01
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A D3 37 00 00 [FIXUP]
        push    word ptr [0x17a]                ; FF 36 7A 01
        ;   ^ arg lpProc (high/segment)
        push    word ptr [0x178]                ; FF 36 78 01
        ;   ^ arg lpProc (low/offset)
        ; --> FREEPROCINSTANCE(FARPROC lpProc) -> VOID
        call    far KERNEL.FREEPROCINSTANCE     ; 9A 4B 00 00 00 [FIXUP]
        jmp     L_3825                          ; EB 4C
;   [conditional branch target (if/else)] L_37D9
L_37D9:
        mov     word ptr [0x170], 1             ; C7 06 70 01 01 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x172], ax            ; A3 72 01
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        add     word ptr [bp - 8], 4            ; 83 46 F8 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x174], ax            ; A3 74 01
        mov     word ptr [0x176], dx            ; 89 16 76 01
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0x178], ax            ; A3 78 01
        mov     word ptr [0x17a], dx            ; 89 16 7A 01
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_3825
L_3825:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x172]                ; FF 36 72 01
        lcall   [0x178]                         ; FF 1E 78 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x172]                ; FF 36 72 01
        lcall   [0x174]                         ; FF 1E 74 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

MSDOS_TEXT ENDS

        END
