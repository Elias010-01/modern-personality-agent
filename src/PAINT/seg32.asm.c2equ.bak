; ======================================================================
; PAINT / seg32.asm   (segment 32 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        13
; Total instructions:                 1021
; 
; Classification (pass8):
;   C-origin (high+medium):              6
;   ASM-origin (high+medium):            2
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     32 (32 unique)
;   Top:
;        1  ANSIUPPER
;        1  CATCH
;        1  GETMODULEUSAGE
;        1  LSTRCAT
;        1  LSTRCPY
;        1  THROW
;        1  CREATEWINDOW
;        1  LOADACCELERATORS
; ======================================================================
; AUTO-GENERATED from original PAINT segment 32
; segment_size=2304 bytes, flags=0x0150
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
;     [bp+0x6]  LPSTR     (2 uses)
;     [bp+0x8]  LPSTR     (2 uses)

; Description (heuristic):
;   String manipulation routine (3 string APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=163 instr  segment=seg32.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   CATCH
;   GETMODULEUSAGE(HANDLE hModule) -> INT
;   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   THROW
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   LOADACCELERATORS
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SETCURSOR
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <156> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x9c                        ; 81 EC 9C 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x111c], ax           ; A3 1C 11
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xeb8], ax            ; A3 B8 0E
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        mov     ax, 0x16                        ; B8 16 00
        push    ds                              ; 1E
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A 36 00 00 00 [FIXUP]
        mov     word ptr [0x3cc], ax            ; A3 CC 03
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
        mov     word ptr [0x3c8], ax            ; A3 C8 03
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_006B                          ; 74 10
        mov     ax, 0x44e                       ; B8 4E 04
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
;   [conditional branch target (if/else)] L_006B
L_006B:
        mov     ax, 0xad2                       ; B8 D2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.CATCH                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_00E0                          ; 74 64
        cmp     word ptr [0xe92], 0             ; 83 3E 92 0E 00
        je      L_008C                          ; 74 09
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_19                   ; 9A 98 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_008C
L_008C:
        cmp     word ptr [0xbf4], 0             ; 83 3E F4 0B 00
        je      L_009C                          ; 74 09
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_19                   ; 9A A8 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_009C
L_009C:
        cmp     word ptr [0xaca], 0             ; 83 3E CA 0A 00
        je      L_00AC                          ; 74 09
        push    word ptr [0xaca]                ; FF 36 CA 0A
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hModule
        ; --> GETMODULEUSAGE(HANDLE hModule) -> INT
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00C4                          ; 75 05
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00C4
L_00C4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndOwner
        mov     ax, 0xdc2                       ; B8 C2 0D
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_034F                          ; E9 6F 02
;   [conditional branch target (if/else)] L_00E0
L_00E0:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0101                          ; 75 1B
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0101                          ; 75 0E
        mov     ax, 0xad2                       ; B8 D2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A 14 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0101
L_0101:
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0118                          ; 75 0E
        mov     ax, 0xad2                       ; B8 D2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0118
L_0118:
        lea     ax, [bp - 0x9c]                 ; 8D 86 64 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xe3a                       ; B8 3A 0E
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 67 00 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0139                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0146                          ; 75 0D
;   [conditional branch target (if/else)] L_0139
L_0139:
        lea     ax, [bp - 0x9c]                 ; 8D 86 64 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xaf4                       ; B8 F4 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        jmp     L_0152                          ; EB 0C
;   [conditional branch target (if/else)] L_0146
L_0146:
        lea     ax, [bp - 0x9c]                 ; 8D 86 64 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
;   [unconditional branch target] L_0152
L_0152:
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x80c                       ; B8 0C 08
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        lea     ax, [bp - 0x9c]                 ; 8D 86 64 FF
        push    ss                              ; 16
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
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndParent
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
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_01AE                          ; 75 21
        push    word ptr [0x111c]               ; FF 36 1C 11
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_019D                          ; 74 03
        jmp     L_02CE                          ; E9 31 01
;   [conditional branch target (if/else)] L_019D
L_019D:
        mov     ax, 0xad2                       ; B8 D2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A FD 00 00 00 [FIXUP]
        jmp     L_02CE                          ; E9 20 01
; Description (heuristic):
;   Mixed routine using: GETINSTANCEDATA, DISPATCHMESSAGE, GETCURSORPOS (+6 more).

;-------------------------------------------------------------------------
; sub_01AE   offset=0x01AE  size=160 instr  segment=seg32.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETINSTANCEDATA
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETCURSORPOS
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   SETCURSORPOS
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;   TRANSLATEACCELERATOR
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_0355
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01AE
L_01AE:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xca4                       ; B8 A4 0C
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A CA 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe96                       ; B8 96 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A DA 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xdb0                       ; B8 B0 0D
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A EA 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe04                       ; B8 04 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FA 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xacc                       ; B8 CC 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 0A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xc7e                       ; B8 7E 0C
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 1A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe62                       ; B8 62 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe08                       ; B8 08 0E
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 3A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xc02                       ; B8 02 0C
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 4A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xae8                       ; B8 E8 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 5A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xbea                       ; B8 EA 0B
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 6A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe06                       ; B8 06 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 7A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe5c                       ; B8 5C 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 8A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xbc4                       ; B8 C4 0B
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 9A 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x116c                      ; B8 6C 11
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A AA 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa44                       ; B8 44 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A BA 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1122                      ; B8 22 11
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A BA 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1168                      ; B8 68 11
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 2A 02 00 00 [FIXUP]
;   [unconditional branch target] L_02CE
L_02CE:
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_033A                          ; EB 31
;   [loop start] L_0309
L_0309:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xeb8]                ; FF 36 B8 0E
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_033A                          ; 75 1C
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0355                          ; E8 2F 00
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_033A
L_033A:
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
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
        jne     L_0309                          ; 75 BC
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_034F
L_034F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+1 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0355   offset=0x0355  size=315 instr  segment=seg32.asm
;
; Classification (pass8): unclear  (score C=7, ASM=7)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   INITAPP
;
; Near calls (internal): L_06CE, L_0760, L_0770, L_0811
;-------------------------------------------------------------------------
;   [sub-routine] L_0355
L_0355:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        cmp     word ptr [0x57a], 0             ; 83 3E 7A 05 00
        je      L_038E                          ; 74 2E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr es:[bx]            ; 26 8B 37
        cmp     word ptr [0x57a], si            ; 39 36 7A 05
        je      L_0372                          ; 74 06
        cmp     word ptr [0x57c], si            ; 39 36 7C 05
        jne     L_038E                          ; 75 1C
;   [conditional branch target (if/else)] L_0372
L_0372:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], 0x101     ; 26 81 7F 02 01 01
        je      L_0385                          ; 74 08
        cmp     word ptr es:[bx + 2], 0x100     ; 26 81 7F 02 00 01
        jne     L_038E                          ; 75 09
;   [conditional branch target (if/else)] L_0385
L_0385:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0x578]            ; A1 78 05
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [error/early exit] L_038E
L_038E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    es                              ; 06
        lds     dx, ptr [bp + 6]                ; C5 56 06
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     ah, 0x56                        ; B4 56
        int     0x21                            ; CD 21
        jae     L_03B3                          ; 73 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_03B5                          ; EB 03
        nop                                     ; 90
;   [conditional branch target (if/else)] L_03B3
L_03B3:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_03B5
L_03B5:
        pop     es                              ; 07
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     ah, 0x3d                        ; B4 3D
        int     0x21                            ; CD 21
        jae     L_03DC                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
;   [conditional branch target (if/else)] L_03DC
L_03DC:
        pop     ds                              ; 1F
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
        push    ds                              ; 1E
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, 0x3c                        ; B4 3C
        int     0x21                            ; CD 21
        jae     L_0402                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
;   [conditional branch target (if/else)] L_0402
L_0402:
        pop     ds                              ; 1F
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        jae     L_0427                          ; 73 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0429                          ; EB 03
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0427
L_0427:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_0429
L_0429:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jae     L_044D                          ; 73 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_044F                          ; EB 03
        nop                                     ; 90
;   [conditional branch target (if/else)] L_044D
L_044D:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_044F
L_044F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ah, 0x45                        ; B4 45
        int     0x21                            ; CD 21
        jae     L_0470                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
;   [conditional branch target (if/else)] L_0470
L_0470:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, 0x3f                        ; B4 3F
        int     0x21                            ; CD 21
        jae     L_0498                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
;   [conditional branch target (if/else)] L_0498
L_0498:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        jae     L_04C1                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
;   [conditional branch target (if/else)] L_04C1
L_04C1:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    es                              ; 06
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        les     dx, ptr [bp + 8]                ; C4 56 08
        mov     cx, es                          ; 8C C1
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        ; constant BLACKNESS
        mov     ah, 0x42                        ; B4 42
        int     0x21                            ; CD 21
        jae     L_04ED                          ; 73 04
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
;   [conditional branch target (if/else)] L_04ED
L_04ED:
        pop     es                              ; 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        add     al, 0x41                        ; 04 41
        cwde                                    ; 98
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0811                          ; E8 E5 02
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0770                          ; E8 20 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_057D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0579                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_0579
L_0579:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_057D
L_057D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05C0                          ; 74 2B
        mov     word ptr [0x8ae], 0             ; C7 06 AE 08 00 00
        mov     word ptr [0x8a0], cx            ; 89 0E A0 08
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_06CE                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05C0                          ; 74 07
        call    0                               ; E8 44 FA
        push    ax                              ; 50
        call    L_0760                          ; E8 A0 01
;   [conditional branch target (if/else)] L_05C0
L_05C0:
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
; sub_05C5   offset=0x05C5  size=130 instr  segment=seg32.asm
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
; Near calls (internal): L_0875
;-------------------------------------------------------------------------
;   [sub-routine] L_05C5
L_05C5:
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
        call    far KERNEL.LOCALALLOC           ; 9A F7 05 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A 2E 06 00 00 [FIXUP]
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
        call    far KERNEL.LOCALFREE            ; 9A 3D 06 00 00 [FIXUP]
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
        call    far KERNEL.LOCALSIZE            ; 9A A6 06 00 00 [FIXUP]
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
        je      L_06B3                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_06B5                          ; EB 02
;   [error/early exit] L_06B3
L_06B3:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_06B5
L_06B5:
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
        call    L_0875                          ; E8 AB 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_06CE   offset=0x06CE  size=59 instr  segment=seg32.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_06CE
L_06CE:
        mov     bx, 0x8fe                       ; BB FE 08
;   [loop start] L_06D1
L_06D1:
        cmp     bx, 0x904                       ; 81 FB 04 09
        jae     L_06DF                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_06D1                          ; EB F2
;   [error/early exit] L_06DF
L_06DF:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_06E3
L_06E3:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_06F4                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_06F4                          ; 74 05
        or      byte ptr [bx + 0x8d2], 0x40     ; 80 8F D2 08 40
;   [conditional branch target (if/else)] L_06F4
L_06F4:
        dec     bx                              ; 4B
        jns     L_06E3                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x8b4], ax            ; A3 B4 08
        ret                                     ; C3
        mov     es, word ptr [0x8ae]            ; 8E 06 AE 08
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x8a2], bx            ; 89 1E A2 08
        mov     word ptr [0x8a4], es            ; 8C 06 A4 08
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x580                       ; BA 80 05
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x8f4]         ; 36 8B 0E F4 08
        jcxz    L_0749                          ; E3 22
        lds     ax, ptr ss:[0x8f6]              ; 36 C5 06 F6 08
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x8f2]                      ; 36 FF 1E F2 08
        jae     L_073A                          ; 73 03
        jmp     L_0583                          ; E9 49 FE
;   [conditional branch target (if/else)] L_073A
L_073A:
        lds     ax, ptr ss:[0x8fa]              ; 36 C5 06 FA 08
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x8f2]                      ; 36 FF 1E F2 08
;   [conditional branch target (if/else)] L_0749
L_0749:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_0751
L_0751:
        test    byte ptr [bx + 0x8d2], 1        ; F6 87 D2 08 01
        je      L_075C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_075C
L_075C:
        inc     bx                              ; 43
        loop    L_0751                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_0760   offset=0x0760  size=8 instr  segment=seg32.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_0880, L_08B6
;-------------------------------------------------------------------------
;   [sub-routine] L_0760
L_0760:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_08B6                          ; E8 50 01
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0880                          ; E8 14 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0770   offset=0x0770  size=74 instr  segment=seg32.asm
;
; Classification (pass8): c_high  (score C=8, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_08C8
;-------------------------------------------------------------------------
;   [sub-routine] L_0770
L_0770:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_0791                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_0791
L_0791:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_07AA                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_07AA
L_07AA:
        or      ax, ax                          ; 0B C0
        jne     L_07C4                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_07FF                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_07C4
L_07C4:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_07CF
L_07CF:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_07CF                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_08C8                          ; E8 DC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_07F8                          ; 77 07
        jb      L_07FB                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_07FB                          ; 76 03
;   [conditional branch target (if/else)] L_07F8
L_07F8:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_07FB
L_07FB:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_07FF
L_07FF:
        or      di, di                          ; 0B FF
        je      L_080A                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_080A
L_080A:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0811   offset=0x0811  size=46 instr  segment=seg32.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0811
L_0811:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_0831                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_0831
L_0831:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_084A                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_084A
L_084A:
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
        je      L_086F                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_086F
L_086F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0875   offset=0x0875  size=6 instr  segment=seg32.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0875
L_0875:
        xor     ch, ch                          ; 32 ED
        jcxz    L_087F                          ; E3 06
;   [loop iteration target] L_0879
L_0879:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_0879                          ; E2 FA
;   [error/early exit] L_087F
L_087F:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0880   offset=0x0880  size=21 instr  segment=seg32.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_05C5, L_08EE
;-------------------------------------------------------------------------
;   [sub-routine] L_0880
L_0880:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_08EE                          ; E8 68 00
        call    L_05C5                          ; E8 3C FD
        or      ah, ah                          ; 0A E4
        je      L_0897                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_0897                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_0897
L_0897:
        push    ds                              ; 1E
        lds     dx, ptr [0x8a2]                 ; C5 16 A2 08
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x8f4]            ; 8B 0E F4 08
        jcxz    L_08AF                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x8f2]                         ; FF 1E F2 08
;   [conditional branch target (if/else)] L_08AF
L_08AF:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_08B6   offset=0x08B6  size=10 instr  segment=seg32.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_08B6
L_08B6:
        mov     bx, 0x904                       ; BB 04 09
;   [loop start] L_08B9
L_08B9:
        cmp     bx, 0x904                       ; 81 FB 04 09
        jae     L_08C7                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_08B9                          ; EB F2
;   [error/early exit] L_08C7
L_08C7:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_08C8   offset=0x08C8  size=19 instr  segment=seg32.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_08C8
L_08C8:
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
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_08EE   offset=0x08EE  size=10 instr  segment=seg32.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_08EE
L_08EE:
        mov     bx, 0x904                       ; BB 04 09
;   [loop start] L_08F1
L_08F1:
        cmp     bx, 0x906                       ; 81 FB 06 09
        jae     L_08FF                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_08F1                          ; EB F2
;   [error/early exit] L_08FF
L_08FF:
        ret                                     ; C3

PAINT_TEXT ENDS

        END
