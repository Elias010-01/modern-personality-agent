; ======================================================================
; NOTEPAD / seg1.asm   (segment 1 of NOTEPAD)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        17
; Total instructions:                 1410
; 
; Classification (pass8):
;   C-origin (high+medium):             10
;   ASM-origin (high+medium):            3
;   Unclear:                             4
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     56 (49 unique)
;   Top:
;        4  SENDMESSAGE
;        2  POSTMESSAGE
;        2  ISICONIC
;        2  ENABLEMENUITEM
;        2  GETMENU
;        1  INVALIDATERECT
;        1  MOVEWINDOW
;        1  OPENFILE
; ======================================================================
; AUTO-GENERATED from original NOTEPAD segment 1
; segment_size=3461 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Small helper using 2 API(s): INVALIDATERECT, MOVEWINDOW.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=29 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        je      L_001E                          ; 74 11
        push    word ptr [0x1a]                 ; FF 36 1A 00
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
;   [conditional branch target (if/else)] L_001E
L_001E:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, 0xf                         ; 2D 0F 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Mixed routine using: OPENFILE, GETFOCUS, GETKEYSTATE (+4 more).

;-------------------------------------------------------------------------
; sub_0047   offset=0x0047  size=317 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   GETFOCUS
;   GETKEYSTATE
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCURSOR
;   SETSCROLLPOS
;
; Near calls (internal): L_038D, L_03E2, L_0837
;-------------------------------------------------------------------------
;   [sub-routine] L_0047
L_0047:
        ;   = cProc <144> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x90                        ; 81 EC 90 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0059                          ; 75 03
        jmp     L_019C                          ; E9 43 01
;   [conditional branch target (if/else)] L_0059
L_0059:
        jle     L_005E                          ; 7E 03
        jmp     L_0331                          ; E9 D3 02
;   [conditional branch target (if/else)] L_005E
L_005E:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 9                           ; 3D 09 00
        jbe     L_0069                          ; 76 03
        jmp     L_0350                          ; E9 E7 02
;   [conditional branch target (if/else)] L_0069
L_0069:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x31d]        ; 2E FF A7 1D 03
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1e], 0xa0           ; C7 06 1E 00 A0 00
;   [loop start] L_0080
L_0080:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0387                          ; E9 01 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E2                          ; E8 54 03
        or      ax, ax                          ; 0B C0
        je      L_0080                          ; 74 EE
        push    word ptr [0x27e]                ; FF 36 7E 02
        push    word ptr [0x18]                 ; FF 36 18 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        push    word ptr [0x8a]                 ; FF 36 8A 00
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ax                              ; 50
        mov     ax, 0x278                       ; B8 78 02
        push    ax                              ; 50
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_00E8                          ; 75 1C
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x4e]                 ; FF 36 4E 00
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
;   [loop start] L_00DC
L_00DC:
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 51 07
        jmp     L_0080                          ; EB 98
;   [conditional branch target (if/else)] L_00E8
L_00E8:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0080                          ; 74 92
        cmp     word ptr [0x278], -1            ; 83 3E 78 02 FF
        jne     L_0137                          ; 75 42
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x2c]                 ; FF 36 2C 00
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 28 07
        cmp     ax, 6                           ; 3D 06 00
        je      L_0117                          ; 74 03
        jmp     L_0080                          ; E9 69 FF
;   [conditional branch target (if/else)] L_0117
L_0117:
        push    word ptr [0x28a]                ; FF 36 8A 02
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
;   [conditional branch target (if/else)] L_0137
L_0137:
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0080                          ; E9 3C FF
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0154                          ; 74 09
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_018D                          ; EB 39
;   [conditional branch target (if/else)] L_0154
L_0154:
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0080                          ; E9 19 FF
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     dx, 0x7fff                      ; BA FF 7F
        push    dx                              ; 52
;   [loop start] L_0176
L_0176:
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A CB 01 00 00 [FIXUP]
        jmp     L_0080                          ; E9 01 FF
        cmp     byte ptr [0x256], 0             ; 80 3E 56 02 00
        jne     L_0194                          ; 75 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
;   [loop start (also forward branch)] L_018D
L_018D:
        push    ax                              ; 50
        call    L_038D                          ; E8 FC 01
        jmp     L_0080                          ; E9 EC FE
;   [conditional branch target (if/else)] L_0194
L_0194:
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0080                          ; E9 E4 FE
;   [unconditional branch target] L_019C
L_019C:
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_018D                          ; EB E8
;   [loop start] L_01A5
L_01A5:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_01B7                          ; 7D 05
        mov     ax, 0x303                       ; B8 03 03
        jmp     L_01BA                          ; EB 03
;   [conditional branch target (if/else)] L_01B7
L_01B7:
        mov     ax, 0x300                       ; B8 00 03
;   [unconditional branch target] L_01BA
L_01BA:
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [loop start] L_01BD
L_01BD:
        push    word ptr [0x1a]                 ; FF 36 1A 00
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
        call    far USER.SENDMESSAGE            ; 9A AB 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     dx, ax                          ; 3B D0
        jne     L_01DC                          ; 75 03
        jmp     L_0080                          ; E9 A4 FE
;   [loop start (also forward branch)] L_01DC
L_01DC:
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        cmp     word ptr [bp - 0x90], ax        ; 39 86 70 FF
        je      L_01FA                          ; 74 0C
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x90], ax        ; 39 86 70 FF
        je      L_01FA                          ; 74 03
        jmp     L_0080                          ; E9 86 FE
;   [conditional branch target (if/else)] L_01FA
L_01FA:
        cmp     word ptr [bp + 8], 0x302        ; 81 7E 08 02 03
        jne     L_0211                          ; 75 10
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0211                          ; 75 03
        jmp     L_0080                          ; E9 6F FE
;   [conditional branch target (if/else)] L_0211
L_0211:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        push    word ptr [bp + 8]               ; FF 76 08
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
        jmp     L_0080                          ; E9 5B FE
;   [loop start] L_0225
L_0225:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0080                          ; E9 50 FE
;   [loop start] L_0230
L_0230:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x417                       ; B8 17 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        jmp     L_0176                          ; E9 37 FF
;   [loop start] L_023F
L_023F:
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        jne     L_024B                          ; 75 05
        mov     ax, 0x44                        ; B8 44 00
        jmp     L_024E                          ; EB 03
;   [conditional branch target (if/else)] L_024B
L_024B:
        mov     ax, 0xc4                        ; B8 C4 00
;   [unconditional branch target] L_024E
L_024E:
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_14                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0270                          ; 74 14
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        jne     L_0268                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_026A                          ; EB 02
;   [conditional branch target (if/else)] L_0268
L_0268:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_026A
L_026A:
        mov     word ptr [0x20], ax             ; A3 20 00
        jmp     L_0080                          ; E9 10 FE
;   [conditional branch target (if/else)] L_0270
L_0270:
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x56]                 ; FF 36 56 00
        sub     ax, ax                          ; 2B C0
        jmp     L_00DC                          ; E9 5B FE
;   [loop start] L_0281
L_0281:
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        je      L_028C                          ; 74 03
        jmp     L_0080                          ; E9 F4 FD
;   [conditional branch target (if/else)] L_028C
L_028C:
        cmp     word ptr [bp + 6], 0x601        ; 81 7E 06 01 06
        jne     L_02BC                          ; 75 29
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ; constant WM_HSCROLL
        mov     ax, 0x114                       ; B8 14 01
;   [loop start] L_02A1
L_02A1:
        push    ax                              ; 50
        mov     ax, 0x40e                       ; B8 0E 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0080                          ; E9 C4 FD
;   [conditional branch target (if/else)] L_02BC
L_02BC:
        cmp     word ptr [bp + 6], 0x602        ; 81 7E 06 02 06
        je      L_02C6                          ; 74 03
        jmp     L_0080                          ; E9 BA FD
;   [conditional branch target (if/else)] L_02C6
L_02C6:
        push    word ptr [0x18]                 ; FF 36 18 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ; constant WM_VSCROLL
        mov     ax, 0x115                       ; B8 15 01
        jmp     L_02A1                          ; EB CA
;   [loop start] L_02D7
L_02D7:
        call    far _entry_13                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jl      L_02E6                          ; 7C 03
        jmp     L_0080                          ; E9 9A FD
;   [conditional branch target (if/else)] L_02E6
L_02E6:
        cmp     ax, 0xfffc                      ; 3D FC FF
        jne     L_02F0                          ; 75 05
        mov     ax, word ptr [0x50]             ; A1 50 00
        jmp     L_02FE                          ; EB 0E
;   [conditional branch target (if/else)] L_02F0
L_02F0:
        cmp     word ptr [bp - 6], -5           ; 83 7E FA FB
        jne     L_02FB                          ; 75 05
        mov     ax, word ptr [0x52]             ; A1 52 00
        jmp     L_02FE                          ; EB 03
;   [conditional branch target (if/else)] L_02FB
L_02FB:
        mov     ax, word ptr [0x4a]             ; A1 4A 00
;   [unconditional branch target] L_02FE
L_02FE:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    ax                              ; 50
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0317                          ; 74 06
        mov     ax, word ptr [0x32]             ; A1 32 00
        jmp     L_00DC                          ; E9 C5 FD
;   [conditional branch target (if/else)] L_0317
L_0317:
        mov     ax, 0x1c4                       ; B8 C4 01
        jmp     L_00DC                          ; E9 BF FD
        inc     sp                              ; 44
        add     word ptr [bp + di + 1], cx      ; 01 4B 01
        xchg    byte ptr [bx + di], al          ; 86 01
        push    ax                              ; 50
        add     dx, word ptr [bx + si + 3]      ; 03 50 03
        push    ax                              ; 50
        add     sp, word ptr [bx + 1]           ; 03 67 01
        jg      L_032E                          ; 7F 01
        jno     L_032F                          ; 71 00
;   [conditional branch target (if/else)] L_032F
L_032F:
        xchg    byte ptr [bx + si], al          ; 86 00
;   [unconditional branch target] L_0331
L_0331:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0339                          ; 75 03
        jmp     L_0281                          ; E9 48 FF
;   [conditional branch target (if/else)] L_0339
L_0339:
        jg      L_0354                          ; 7F 19
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0343                          ; 75 03
        jmp     L_0225                          ; E9 E2 FE
;   [conditional branch target (if/else)] L_0343
L_0343:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_034B                          ; 75 03
        jmp     L_01A5                          ; E9 5A FE
;   [conditional branch target (if/else)] L_034B
L_034B:
        cmp     ax, 0xe                         ; 3D 0E 00
        je      L_02D7                          ; 74 87
;   [loop start (also forward branch)] L_0350
L_0350:
        sub     ax, ax                          ; 2B C0
        jmp     L_0387                          ; EB 33
;   [conditional branch target (if/else)] L_0354
L_0354:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jne     L_035C                          ; 75 03
        jmp     L_023F                          ; E9 E3 FE
;   [conditional branch target (if/else)] L_035C
L_035C:
        jg      L_0368                          ; 7F 0A
        cmp     ax, 0x19                        ; 3D 19 00
        jne     L_0366                          ; 75 03
        jmp     L_0230                          ; E9 CA FE
;   [conditional branch target (if/else)] L_0366
L_0366:
        jmp     L_0350                          ; EB E8
;   [conditional branch target (if/else)] L_0368
L_0368:
        cmp     ax, 0x300                       ; 3D 00 03
        jl      L_0350                          ; 7C E3
        cmp     ax, 0x301                       ; 3D 01 03
        jg      L_0375                          ; 7F 03
        jmp     L_01BD                          ; E9 48 FE
;   [conditional branch target (if/else)] L_0375
L_0375:
        cmp     ax, 0x302                       ; 3D 02 03
        jne     L_037D                          ; 75 03
        jmp     L_01DC                          ; E9 5F FE
;   [conditional branch target (if/else)] L_037D
L_037D:
        cmp     ax, 0x303                       ; 3D 03 03
        jne     L_0385                          ; 75 03
        jmp     L_01BD                          ; E9 38 FE
;   [conditional branch target (if/else)] L_0385
L_0385:
        jmp     L_0350                          ; EB C9
;   [fall-through exit] L_0387
L_0387:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  LPSTR     (1 use)
;   Locals:
;     [bp-0x2]   INT       (1 use)

; Description (heuristic):
;   Mixed routine using: DIALOGBOX.

;-------------------------------------------------------------------------
; sub_038D   offset=0x038D  size=33 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;
; Near calls (internal): L_0837
;-------------------------------------------------------------------------
;   [sub-routine] L_038D
L_038D:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x27e]                ; FF 36 7E 02
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x18]                 ; FF 36 18 00
        ;   ^ arg hWndOwner
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x8e]            ; FF B7 8E 00
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bx + 0x8c]            ; FF B7 8C 00
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_03D9                          ; 75 1C
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x36]                 ; FF 36 36 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 62 04
        sub     ax, ax                          ; 2B C0
        jmp     L_03DC                          ; EB 03
;   [error/early exit] L_03D9
L_03D9:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_03DC
L_03DC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_03E2   offset=0x03E2  size=283 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   ISICONIC
;   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
;   POSTQUITMESSAGE
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETFOCUS
;
; Near calls (internal): L_0047, L_038D, L_03E2, L_0837, L_0876, L_09CC
;-------------------------------------------------------------------------
;   [sub-routine] L_03E2
L_03E2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 0x408                       ; B8 08 04
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
        call    far USER.SENDMESSAGE            ; 9A 07 05 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_0469                          ; 74 5F
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x30]                 ; FF 36 30 00
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0422                          ; 74 05
        mov     ax, word ptr [0x32]             ; A1 32 00
        jmp     L_0425                          ; EB 03
;   [conditional branch target (if/else)] L_0422
L_0422:
        mov     ax, 0x1c4                       ; B8 C4 01
;   [unconditional branch target] L_0425
L_0425:
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0431                          ; 74 05
        mov     ax, 0x1000                      ; B8 00 10
        jmp     L_0433                          ; EB 02
;   [conditional branch target (if/else)] L_0431
L_0431:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0433
L_0433:
        or      al, 0x23                        ; 0C 23
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 FC 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0469                          ; 75 26
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0457                          ; 74 0D
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_038D                          ; E8 38 FF
        jmp     L_0476                          ; EB 1F
;   [conditional branch target (if/else)] L_0457
L_0457:
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_18                   ; 9A 60 01 00 00 [FIXUP]
        jmp     L_0476                          ; EB 0D
;   [conditional branch target (if/else)] L_0469
L_0469:
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        je      L_0474                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0476                          ; EB 02
;   [conditional branch target (if/else)] L_0474
L_0474:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0476
L_0476:
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
        sub     sp, 0x2c                        ; 83 EC 2C
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_0499                          ; 75 03
        jmp     L_0519                          ; E9 80 00
;   [conditional branch target (if/else)] L_0499
L_0499:
        jbe     L_049E                          ; 76 03
        jmp     L_0653                          ; E9 B5 01
;   [conditional branch target (if/else)] L_049E
L_049E:
        cmp     ax, 2                           ; 3D 02 00
        je      L_050E                          ; 74 6B
        cmp     ax, 5                           ; 3D 05 00
        jne     L_04AB                          ; 75 03
        jmp     L_0566                          ; E9 BB 00
;   [conditional branch target (if/else)] L_04AB
L_04AB:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_04B3                          ; 75 03
        jmp     L_0541                          ; E9 8E 00
;   [conditional branch target (if/else)] L_04B3
L_04B3:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_04BB                          ; 75 03
        jmp     L_054A                          ; E9 8F 00
;   [conditional branch target (if/else)] L_04BB
L_04BB:
        cmp     ax, 8                           ; 3D 08 00
        je      L_04F6                          ; 74 36
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_04C8                          ; 75 03
        jmp     L_058C                          ; E9 C4 00
;   [conditional branch target (if/else)] L_04C8
L_04C8:
        jmp     L_066F                          ; E9 A4 01
;   [loop start] L_04CB
L_04CB:
        cmp     word ptr [bp + 0xa], 0xb        ; 83 7E 0A 0B
        jne     L_04DF                          ; 75 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_038D                          ; E8 B1 FE
        jmp     L_0634                          ; E9 55 01
;   [conditional branch target (if/else)] L_04DF
L_04DF:
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
        call    far USER.DEFWINDOWPROC          ; 9A 7F 06 00 00 [FIXUP]
        jmp     L_0634                          ; E9 3E 01
;   [loop start (also forward branch)] L_04F6
L_04F6:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 7F 07 00 00 [FIXUP]
        jmp     L_0634                          ; E9 26 01
;   [conditional branch target (if/else)] L_050E
L_050E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0634                          ; E9 1B 01
;   [unconditional branch target] L_0519
L_0519:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E2                          ; E8 C1 FE
        or      ax, ax                          ; 0B C0
        jne     L_0528                          ; 75 03
        jmp     L_0634                          ; E9 0C 01
;   [conditional branch target (if/else)] L_0528
L_0528:
        push    word ptr [0x18]                 ; FF 36 18 00
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0634                          ; E9 00 01
;   [loop start] L_0534
L_0534:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E2                          ; E8 A5 FE
;   [loop start] L_053D
L_053D:
        cdq                                     ; 99
        jmp     L_06B0                          ; E9 6F 01
;   [unconditional branch target] L_0541
L_0541:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_054A                          ; 74 03
        jmp     L_0634                          ; E9 EA 00
;   [branch target] L_054A
L_054A:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.ISICONIC               ; 9A 50 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_055A                          ; 74 03
        jmp     L_0634                          ; E9 DA 00
;   [conditional branch target (if/else)] L_055A
L_055A:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0634                          ; E9 CE 00
;   [unconditional branch target] L_0566
L_0566:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_057D                          ; 74 10
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0575                          ; 75 03
        jmp     L_066F                          ; E9 FA 00
;   [conditional branch target (if/else)] L_0575
L_0575:
        cmp     ax, 2                           ; 3D 02 00
        je      L_057D                          ; 74 03
        jmp     L_0634                          ; E9 B7 00
;   [conditional branch target (if/else)] L_057D
L_057D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    0                               ; E8 77 FA
        jmp     L_0634                          ; E9 A8 00
;   [unconditional branch target] L_058C
L_058C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0634                          ; E9 8B 00
;   [loop start] L_05A9
L_05A9:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 8            ; 83 7E 06 08
        jg      L_05C4                          ; 7F 07
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_05D4                          ; EB 10
;   [conditional branch target (if/else)] L_05C4
L_05C4:
        sub     word ptr [bp + 6], 8            ; 83 6E 06 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_05D4                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [branch target] L_05D4
L_05D4:
        cmp     word ptr [bp + 8], 2            ; 83 7E 08 02
        jg      L_05E1                          ; 7F 07
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
        jmp     L_05F1                          ; EB 10
;   [conditional branch target (if/else)] L_05E1
L_05E1:
        sub     word ptr [bp + 8], 2            ; 83 6E 08 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_05F1                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [branch target] L_05F1
L_05F1:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
        call    far USER.POSTMESSAGE            ; 9A 1E 02 00 00 [FIXUP]
        jmp     L_0634                          ; EB 2C
;   [loop start] L_0608
L_0608:
        call    L_0876                          ; E8 6B 02
        jmp     L_0634                          ; EB 27
;   [loop start] L_060D
L_060D:
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0639                          ; 75 24
        cmp     word ptr [bp + 8], 0x500        ; 81 7E 08 00 05
        jne     L_0639                          ; 75 1D
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x36]                 ; FF 36 36 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 03 02
;   [loop start (also forward branch)] L_0634
L_0634:
        sub     ax, ax                          ; 2B C0
        jmp     L_053D                          ; E9 04 FF
;   [conditional branch target (if/else)] L_0639
L_0639:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0047                          ; E8 FF F9
        or      ax, ax                          ; 0B C0
        jne     L_0634                          ; 75 E8
;   [loop start] L_064C
L_064C:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09CC                          ; E8 7B 03
        jmp     L_0634                          ; EB E1
;   [unconditional branch target] L_0653
L_0653:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_065B                          ; 75 03
        jmp     L_04CB                          ; E9 70 FE
;   [conditional branch target (if/else)] L_065B
L_065B:
        ja      L_0685                          ; 77 28
        cmp     ax, 0x11                        ; 3D 11 00
        jne     L_0665                          ; 75 03
        jmp     L_0534                          ; E9 CF FE
;   [conditional branch target (if/else)] L_0665
L_0665:
        cmp     ax, 0x1a                        ; 3D 1A 00
        je      L_064C                          ; 74 E2
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_060D                          ; 74 9E
;   [loop start (also forward branch)] L_066F
L_066F:
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
        jmp     L_06B0                          ; EB 2B
;   [conditional branch target (if/else)] L_0685
L_0685:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_068D                          ; 75 03
        jmp     L_0608                          ; E9 7B FF
;   [conditional branch target (if/else)] L_068D
L_068D:
        ja      L_069E                          ; 77 0F
        cmp     ax, 0x114                       ; 3D 14 01
        jb      L_066F                          ; 72 DB
        cmp     ax, 0x115                       ; 3D 15 01
        ja      L_069C                          ; 77 03
        jmp     L_04F6                          ; E9 5A FE
;   [conditional branch target (if/else)] L_069C
L_069C:
        jmp     L_066F                          ; EB D1
;   [conditional branch target (if/else)] L_069E
L_069E:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_06A6                          ; 75 03
        jmp     L_05A9                          ; E9 03 FF
;   [conditional branch target (if/else)] L_06A6
L_06A6:
        cmp     ax, 0x204                       ; 3D 04 02
        jne     L_06AE                          ; 75 03
        jmp     L_05A9                          ; E9 FB FE
;   [conditional branch target (if/else)] L_06AE
L_06AE:
        jmp     L_066F                          ; EB BF
;   [unconditional branch target] L_06B0
L_06B0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: DISPATCHMESSAGE, GETMESSAGE, TRANSLATEACCELERATOR (+1 more).

;-------------------------------------------------------------------------
; sub_06BB   offset=0x06BB  size=48 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
;   TRANSLATEACCELERATOR
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;
; Near calls (internal): L_072E
;-------------------------------------------------------------------------
;   [sub-routine] L_06BB
L_06BB:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0712                          ; 75 39
        sub     ax, ax                          ; 2B C0
        jmp     L_0728                          ; EB 4B
;   [loop start] L_06DD
L_06DD:
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x24e]                ; FF 36 4E 02
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0712                          ; 75 1F
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        call    L_072E                          ; E8 2A 00
        or      ax, ax                          ; 0B C0
        je      L_0712                          ; 74 0A
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0712
L_0712:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
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
        jne     L_06DD                          ; 75 B8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
;   [fall-through exit] L_0728
L_0728:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   String manipulation routine (2 string APIs).

;-------------------------------------------------------------------------
; sub_072E   offset=0x072E  size=108 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   ISICONIC
;   MESSAGEBEEP
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0837
;-------------------------------------------------------------------------
;   [sub-routine] L_072E
L_072E:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        cmp     word ptr [bx], ax               ; 39 07
        je      L_0741                          ; 74 03
        jmp     L_07CC                          ; E9 8B 00
;   [conditional branch target (if/else)] L_0741
L_0741:
        cmp     word ptr [bx + 2], 0x102        ; 81 7F 02 02 01
        je      L_074B                          ; 74 03
        jmp     L_07CC                          ; E9 81 00
;   [conditional branch target (if/else)] L_074B
L_074B:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07CC                          ; 75 74
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        jne     L_07CC                          ; 75 6D
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 4], 8            ; 83 7F 04 08
        je      L_07CC                          ; 74 64
        cmp     word ptr [bx + 4], 0xd          ; 83 7F 04 0D
        je      L_07CC                          ; 74 5E
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 0x411                       ; B8 11 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A A3 07 00 00 [FIXUP]
        cmp     ax, word ptr [0x1e]             ; 3B 06 1E 00
        jb      L_0795                          ; 72 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0791
L_0791:
        sub     ax, ax                          ; 2B C0
        jmp     L_07CF                          ; EB 3A
;   [conditional branch target (if/else)] L_0795
L_0795:
        push    word ptr [0x1a]                 ; FF 36 1A 00
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
        call    far USER.SENDMESSAGE            ; 9A 78 01 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jl      L_07CC                          ; 7C 21
        jg      L_07B2                          ; 7F 05
        cmp     ax, 0x4000                      ; 3D 00 40
        jb      L_07CC                          ; 72 1A
;   [conditional branch target (if/else)] L_07B2
L_07B2:
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x36]                 ; FF 36 36 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0837                          ; E8 6D 00
        jmp     L_0791                          ; EB C5
;   [branch target] L_07CC
L_07CC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_07CF
L_07CF:
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
        sub     sp, 0x104                       ; 81 EC 04 01
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_07F4                          ; 75 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07F4
L_07F4:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [0x38]             ; A1 38 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 19 08 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 0x104]       ; 8B 86 FC FE
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        ;   ^ arg hWnd
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)
;     [bp+0xe]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: MESSAGEBOX.

;-------------------------------------------------------------------------
; sub_0837   offset=0x0837  size=31 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;
; Near calls (internal): L_0A22
;-------------------------------------------------------------------------
;   [sub-routine] L_0837
L_0837:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x102                       ; 81 EC 02 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A22                          ; E8 CD 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x8]   LRESULT   (1 use)

; Description (heuristic):
;   Menu manipulation routine (2 menu APIs).

;-------------------------------------------------------------------------
; sub_0876   offset=0x0876  size=124 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   CLOSECLIPBOARD
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   ENUMCLIPBOARDFORMATS
;   GETMENU
;   GETSUBMENU
;   OPENCLIPBOARD
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [sub-routine] L_0876
L_0876:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0x1a]                 ; FF 36 1A 00
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
        call    far USER.SENDMESSAGE            ; 9A 10 09 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     dx, ax                          ; 3B D0
        jne     L_089D                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_089F                          ; EB 02
;   [conditional branch target (if/else)] L_089D
L_089D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_089F
L_089F:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A C7 08 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A D1 08 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A DE 08 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A E7 08 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A F1 08 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x301                       ; B8 01 03
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FE 08 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A 1C 09 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A 26 09 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x303                       ; B8 03 03
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 3E 09 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 0x416                       ; B8 16 04
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
        call    far USER.SENDMESSAGE            ; 9A 02 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A 47 09 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A 51 09 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0939                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_093C                          ; EB 03
;   [conditional branch target (if/else)] L_0939
L_0939:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_093C
L_093C:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A C4 09 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A AD 09 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A B7 09 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        cmp     word ptr [0x20], 0              ; 83 3E 20 00 00
        je      L_0966                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0968                          ; EB 02
;   [conditional branch target (if/else)] L_0966
L_0966:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0968
L_0968:
        push    ax                              ; 50
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_09A8                          ; 74 28
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_0994                          ; EB 0D
;   [loop start] L_0987
L_0987:
        cmp     word ptr [bp - 0xa], 1          ; 83 7E F6 01
        jne     L_0994                          ; 75 07
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_09A3                          ; EB 0F
;   [branch target] L_0994
L_0994:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0987                          ; 75 E4
;   [unconditional branch target] L_09A3
L_09A3:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_09A8
L_09A8:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A DE 09 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETSUBMENU             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 0x302                       ; B8 02 03
        push    ax                              ; 50
        ;   ^ arg wIDItem
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A 10 0A 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: DELETEDC, ENABLEMENUITEM, GETMENU.

;-------------------------------------------------------------------------
; sub_09CC   offset=0x09CC  size=36 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   GETMENU
;-------------------------------------------------------------------------
;   [sub-routine] L_09CC
L_09CC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_09FD                          ; 7D 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A0E                          ; EB 11
;   [conditional branch target (if/else)] L_09FD
L_09FD:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0A0E
L_0A0E:
        push    ax                              ; 50
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: FATALEXIT, INITTASK, WAITEVENT (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0A22   offset=0x0A22  size=157 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   FATALEXIT
;   INITTASK
;   WAITEVENT
;   5
;   6
;   INITAPP
;
; Near calls (internal): L_06BB, L_0C7E, L_0D10
;-------------------------------------------------------------------------
;   [sub-routine] L_0A22
L_0A22:
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
;   [loop start] L_0A37
L_0A37:
        mov     ax, word ptr [0x280]            ; A1 80 02
        cmp     word ptr [si], ax               ; 39 04
        jne     L_0A46                          ; 75 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0A69                          ; 74 25
        jmp     L_0A61                          ; EB 1B
;   [conditional branch target (if/else)] L_0A46
L_0A46:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_0A37                          ; 75 E5
        sub     ax, ax                          ; 2B C0
        jmp     L_0A76                          ; EB 20
;   [loop start] L_0A56
L_0A56:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
;   [unconditional branch target] L_0A61
L_0A61:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0A56                          ; 75 ED
;   [conditional branch target (if/else)] L_0A69
L_0A69:
        inc     si                              ; 46
        inc     si                              ; 46
;   [loop start] L_0A6B
L_0A6B:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_0A6B                          ; 75 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0A76
L_0A76:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [0x148]            ; A1 48 01
        mov     bx, word ptr [0x14a]            ; 8B 1E 4A 01
        mov     cx, word ptr [0x14c]            ; 8B 0E 4C 01
        mov     dx, word ptr [0x14e]            ; 8B 16 4E 01
        clc                                     ; F8
        int     0x21                            ; CD 21
        mov     word ptr [0x148], ax            ; A3 48 01
        mov     word ptr [0x14a], bx            ; 89 1E 4A 01
        mov     word ptr [0x14c], cx            ; 89 0E 4C 01
        mov     word ptr [0x14e], dx            ; 89 16 4E 01
        mov     ax, 0                           ; B8 00 00
        jae     L_0AB7                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_0AB7
L_0AB7:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0AE9                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0AE9
L_0AE9:
        pop     ds                              ; 1F
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_0B2D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_0B2D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0B29                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_0B29
L_0B29:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_0B2D
L_0B2D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B70                          ; 74 2B
        mov     word ptr [0x15e], 0             ; C7 06 5E 01 00 00
        mov     word ptr [0x150], cx            ; 89 0E 50 01
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_0C7E                          ; E8 27 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B70                          ; 74 07
        call    L_06BB                          ; E8 4F FB
        push    ax                              ; 50
        call    L_0D10                          ; E8 A0 01
;   [conditional branch target (if/else)] L_0B70
L_0B70:
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
; sub_0B75   offset=0x0B75  size=130 instr  segment=seg1.asm
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
; Near calls (internal): L_0D20
;-------------------------------------------------------------------------
;   [sub-routine] L_0B75
L_0B75:
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
        call    far KERNEL.LOCALALLOC           ; 9A A7 0B 00 00 [FIXUP]
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
        call    far KERNEL.LOCALALLOC           ; 9A DE 0B 00 00 [FIXUP]
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
        call    far KERNEL.LOCALFREE            ; 9A ED 0B 00 00 [FIXUP]
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
        call    far KERNEL.LOCALSIZE            ; 9A 56 0C 00 00 [FIXUP]
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
        je      L_0C63                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C65                          ; EB 02
;   [error/early exit] L_0C63
L_0C63:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0C65
L_0C65:
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
        call    L_0D20                          ; E8 A6 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0C7E   offset=0x0C7E  size=59 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=7)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0C7E
L_0C7E:
        mov     bx, 0x1ae                       ; BB AE 01
;   [loop start] L_0C81
L_0C81:
        cmp     bx, 0x1b4                       ; 81 FB B4 01
        jae     L_0C8F                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0C81                          ; EB F2
;   [error/early exit] L_0C8F
L_0C8F:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
;   [loop start] L_0C93
L_0C93:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_0CA4                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_0CA4                          ; 74 05
        or      byte ptr [bx + 0x182], 0x40     ; 80 8F 82 01 40
;   [conditional branch target (if/else)] L_0CA4
L_0CA4:
        dec     bx                              ; 4B
        jns     L_0C93                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x164], ax            ; A3 64 01
        ret                                     ; C3
        mov     es, word ptr [0x15e]            ; 8E 06 5E 01
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x152], bx            ; 89 1E 52 01
        mov     word ptr [0x154], es            ; 8C 06 54 01
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0xb30                       ; BA 30 0B
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x1a4]         ; 36 8B 0E A4 01
        jcxz    L_0CF9                          ; E3 22
        lds     ax, ptr ss:[0x1a6]              ; 36 C5 06 A6 01
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x1a2]                      ; 36 FF 1E A2 01
        jae     L_0CEA                          ; 73 03
        jmp     L_0B33                          ; E9 49 FE
;   [conditional branch target (if/else)] L_0CEA
L_0CEA:
        lds     ax, ptr ss:[0x1aa]              ; 36 C5 06 AA 01
        mov     dx, ds                          ; 8C DA
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x1a2]                      ; 36 FF 1E A2 01
;   [conditional branch target (if/else)] L_0CF9
L_0CF9:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
;   [loop iteration target] L_0D01
L_0D01:
        test    byte ptr [bx + 0x182], 1        ; F6 87 82 01 01
        je      L_0D0C                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
;   [conditional branch target (if/else)] L_0D0C
L_0D0C:
        inc     bx                              ; 43
        loop    L_0D01                          ; E2 F2
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_0D10   offset=0x0D10  size=8 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_0D2B, L_0D61
;-------------------------------------------------------------------------
;   [sub-routine] L_0D10
L_0D10:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_0D61                          ; E8 4B 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0D2B                          ; E8 0F 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0D20   offset=0x0D20  size=6 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0D20
L_0D20:
        xor     ch, ch                          ; 32 ED
        jcxz    L_0D2A                          ; E3 06
;   [loop iteration target] L_0D24
L_0D24:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_0D24                          ; E2 FA
;   [error/early exit] L_0D2A
L_0D2A:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0D2B   offset=0x0D2B  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_0B75, L_0D73
;-------------------------------------------------------------------------
;   [sub-routine] L_0D2B
L_0D2B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_0D73                          ; E8 42 00
        call    L_0B75                          ; E8 41 FE
        or      ah, ah                          ; 0A E4
        je      L_0D42                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_0D42                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
;   [conditional branch target (if/else)] L_0D42
L_0D42:
        push    ds                              ; 1E
        lds     dx, ptr [0x152]                 ; C5 16 52 01
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x1a4]            ; 8B 0E A4 01
        jcxz    L_0D5A                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x1a2]                         ; FF 1E A2 01
;   [conditional branch target (if/else)] L_0D5A
L_0D5A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0D61   offset=0x0D61  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0D61
L_0D61:
        mov     bx, 0x1b4                       ; BB B4 01
;   [loop start] L_0D64
L_0D64:
        cmp     bx, 0x1b4                       ; 81 FB B4 01
        jae     L_0D72                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0D64                          ; EB F2
;   [error/early exit] L_0D72
L_0D72:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0D73   offset=0x0D73  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0D73
L_0D73:
        mov     bx, 0x1b4                       ; BB B4 01
;   [loop start] L_0D76
L_0D76:
        cmp     bx, 0x1b6                       ; 81 FB B6 01
        jae     L_0D84                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0D76                          ; EB F2
;   [error/early exit] L_0D84
L_0D84:
        ret                                     ; C3

NOTEPAD_TEXT ENDS

        END
