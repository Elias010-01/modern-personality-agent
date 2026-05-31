; ======================================================================
; CONTROL / seg3.asm   (segment 3 of CONTROL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         5
; Total instructions:                  310
; 
; Classification (pass8):
;   C-origin (high+medium):              5
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     3 (3 unique)
;   Top:
;        1  GETDLGITEM
;        1  SENDMESSAGE
;        1  SHOWWINDOW
; ======================================================================
; AUTO-GENERATED from original CONTROL segment 3
; segment_size=2005 bytes, flags=0xf130
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
        sub     sp, 0x54                        ; 83 EC 54
        mov     ax, 0xc4                        ; B8 C4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbe                        ; B8 BE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 3E 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        or      ax, ax                          ; 0B C0
        jne     L_002B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_002D                          ; EB 02
;   [conditional branch target (if/else)] L_002B
L_002B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_002D
L_002D:
        mov     word ptr [0x640], ax            ; A3 40 06
        mov     ax, 0xd0                        ; B8 D0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc9                        ; B8 C9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A C7 00 00 00 [FIXUP]
        mov     word ptr [0xc28], ax            ; A3 28 0C
        mov     ax, 0xdd                        ; B8 DD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd7                        ; B8 D7 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xd5                        ; B8 D5 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xaf2                       ; B8 F2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 7B 00 00 00 [FIXUP]
        mov     ax, 0xea                        ; B8 EA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe4                        ; B8 E4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe2                        ; B8 E2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x764                       ; B8 64 07
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 98 00 00 00 [FIXUP]
        mov     ax, 0xf8                        ; B8 F8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xf2                        ; B8 F2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xef                        ; B8 EF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x742                       ; B8 42 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A B5 00 00 00 [FIXUP]
        mov     ax, 0x106                       ; B8 06 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xfd                        ; B8 FD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc3c                       ; B8 3C 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_COMMAND
        mov     ax, 0x111                       ; B8 11 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10b                       ; B8 0B 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        or      ax, ax                          ; 0B C0
        je      L_00DC                          ; 74 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_00F0                          ; 74 19
        cmp     ax, 2                           ; 3D 02 00
        je      L_011F                          ; 74 43
;   [conditional branch target (if/else)] L_00DC
L_00DC:
        mov     ax, 0x6f8                       ; B8 F8 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7a2                       ; B8 A2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FB 00 00 00 [FIXUP]
        mov     ax, 0x700                       ; B8 00 07
        jmp     L_0102                          ; EB 12
;   [conditional branch target (if/else)] L_00F0
L_00F0:
        mov     ax, 0x700                       ; B8 00 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7a2                       ; B8 A2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 0A 01 00 00 [FIXUP]
        mov     ax, 0x6f8                       ; B8 F8 06
;   [unconditional branch target] L_0102
L_0102:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7aa                       ; B8 AA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 19 01 00 00 [FIXUP]
        mov     ax, 0x708                       ; B8 08 07
;   [loop start] L_0111
L_0111:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7b2                       ; B8 B2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 2A 01 00 00 [FIXUP]
        jmp     L_0142                          ; EB 23
;   [conditional branch target (if/else)] L_011F
L_011F:
        mov     ax, 0x708                       ; B8 08 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7a2                       ; B8 A2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 39 01 00 00 [FIXUP]
        mov     ax, 0x6f8                       ; B8 F8 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7aa                       ; B8 AA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x700                       ; B8 00 07
        jmp     L_0111                          ; EB CF
;   [unconditional branch target] L_0142
L_0142:
        cmp     word ptr [0xa20], 0             ; 83 3E 20 0A 00
        je      L_015A                          ; 74 11
        push    word ptr [0xa20]                ; FF 36 20 0A
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
;   [conditional branch target (if/else)] L_015A
L_015A:
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
        sub     sp, 0x10                        ; 83 EC 10
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A 84 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_01B4                          ; 74 25
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0xa20]                ; FF 36 20 0A
        push    word ptr [0xae]                 ; FF 36 AE 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0623                          ; E8 7B 04
        push    word ptr [0xa20]                ; FF 36 20 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01B4
L_01B4:
        mov     ax, 0x578                       ; B8 78 05
        sub     ax, word ptr [0xb0e]            ; 2B 06 0E 0B
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        call    far _entry_36                   ; 9A E9 01 00 00 [FIXUP]
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x116                       ; B8 16 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 03 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x3e8                       ; B8 E8 03
        sub     ax, word ptr [0x6ce]            ; 2B 06 CE 06
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0210                          ; 74 1D
        mov     ax, 0x13f                       ; B8 3F 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12e                       ; B8 2E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0210                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0212                          ; EB 02
;   [conditional branch target (if/else)] L_0210
L_0210:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0212
L_0212:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0221                          ; 75 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0221
L_0221:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     ax, 0x147                       ; B8 47 01
        push    ds                              ; 1E
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
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
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0256                          ; 76 03
        jmp     L_033F                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0256
L_0256:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x32d]        ; 2E FF A7 2D 03
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_027F                          ; 75 19
        sub     word ptr [0xb0e], 0x14          ; 83 2E 0E 0B 14
;   [loop start] L_026B
L_026B:
        cmp     word ptr [0xb0e], 0xc8          ; 81 3E 0E 0B C8 00
        jl      L_0276                          ; 7C 03
        jmp     L_033F                          ; E9 C9 00
;   [loop start (also forward branch)] L_0276
L_0276:
        mov     word ptr [0xb0e], 0xc8          ; C7 06 0E 0B C8 00
        jmp     L_033F                          ; E9 C0 00
;   [conditional branch target (if/else)] L_027F
L_027F:
        sub     word ptr [0x6ce], 0x10          ; 83 2E CE 06 10
;   [loop start] L_0284
L_0284:
        cmp     word ptr [0x6ce], 0x64          ; 83 3E CE 06 64
        jl      L_028E                          ; 7C 03
        jmp     L_033F                          ; E9 B1 00
;   [loop start (also forward branch)] L_028E
L_028E:
        mov     word ptr [0x6ce], 0x64          ; C7 06 CE 06 64 00
        jmp     L_033F                          ; E9 A8 00
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_02B8                          ; 75 19
        add     word ptr [0xb0e], 0x14          ; 83 06 0E 0B 14
;   [loop start] L_02A4
L_02A4:
        cmp     word ptr [0xb0e], 0x4b0         ; 81 3E 0E 0B B0 04
        jg      L_02AF                          ; 7F 03
        jmp     L_033F                          ; E9 90 00
;   [loop start (also forward branch)] L_02AF
L_02AF:
        mov     word ptr [0xb0e], 0x4b0         ; C7 06 0E 0B B0 04
        jmp     L_033F                          ; E9 87 00
;   [conditional branch target (if/else)] L_02B8
L_02B8:
        add     word ptr [0x6ce], 0x10          ; 83 06 CE 06 10
;   [loop start] L_02BD
L_02BD:
        cmp     word ptr [0x6ce], 0x384         ; 81 3E CE 06 84 03
        jle     L_033F                          ; 7E 7A
;   [loop start] L_02C5
L_02C5:
        mov     word ptr [0x6ce], 0x384         ; C7 06 CE 06 84 03
        jmp     L_033F                          ; EB 72
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_02DD                          ; 75 08
        sub     word ptr [0xb0e], 0xfa          ; 81 2E 0E 0B FA 00
        jmp     L_026B                          ; EB 8E
;   [conditional branch target (if/else)] L_02DD
L_02DD:
        sub     word ptr [0x6ce], 0xc8          ; 81 2E CE 06 C8 00
        jmp     L_0284                          ; EB 9F
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_02F5                          ; 75 08
        add     word ptr [0xb0e], 0xfa          ; 81 06 0E 0B FA 00
        jmp     L_02A4                          ; EB AF
;   [conditional branch target (if/else)] L_02F5
L_02F5:
        add     word ptr [0x6ce], 0xc8          ; 81 06 CE 06 C8 00
        jmp     L_02BD                          ; EB C0
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_030D                          ; 75 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0xb0e], ax            ; A3 0E 0B
        jmp     L_033F                          ; EB 32
;   [conditional branch target (if/else)] L_030D
L_030D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x6ce], ax            ; A3 CE 06
        jmp     L_033F                          ; EB 2A
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0320                          ; 75 03
        jmp     L_0276                          ; E9 56 FF
;   [conditional branch target (if/else)] L_0320
L_0320:
        jmp     L_028E                          ; E9 6B FF
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_02AF                          ; 74 84
        jmp     L_02C5                          ; EB 98
        pop     si                              ; 5E
        add     dl, byte ptr [bx - 0x32fe]      ; 02 97 02 CD
        add     ah, ch                          ; 02 E5
        add     bh, ch                          ; 02 FD
        add     ch, byte ptr [si + 0x1503]      ; 02 AC 03 15
        add     sp, word ptr [bp + di]          ; 03 23
        add     bp, word ptr [si - 0x74fd]      ; 03 AC 03 8B
        inc     si                              ; 46
        push    es                              ; 06
        mov     word ptr [0xc44], ax            ; A3 44 0C
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0357                          ; 75 05
        mov     ax, word ptr [0xb0e]            ; A1 0E 0B
        jmp     L_035A                          ; EB 03
;   [conditional branch target (if/else)] L_0357
L_0357:
        mov     ax, word ptr [0x6ce]            ; A1 CE 06
;   [unconditional branch target] L_035A
L_035A:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_039F                          ; 75 33
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A 78 01 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x578                       ; B8 78 05
        sub     ax, word ptr [0xb0e]            ; 2B 06 0E 0B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x578                       ; B8 78 05
        sub     ax, word ptr [0xb0e]            ; 2B 06 0E 0B
        push    ax                              ; 50
        call    far USER.SETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03AC                          ; EB 0D
;   [conditional branch target (if/else)] L_039F
L_039F:
        mov     ax, 0x3e8                       ; B8 E8 03
        sub     ax, word ptr [0x6ce]            ; 2B 06 CE 06
        push    ax                              ; 50
        call    far USER.SETDOUBLECLICKTIME     ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_03AC
L_03AC:
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 94 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_03F1                          ; 74 1B
        cmp     ax, 1                           ; 3D 01 00
        je      L_0420                          ; 74 45
        cmp     ax, 2                           ; 3D 02 00
        je      L_03F1                          ; 74 11
        cmp     ax, 3                           ; 3D 03 00
        je      L_0420                          ; 74 3B
        cmp     ax, 6                           ; 3D 06 00
        je      L_03F1                          ; 74 07
        cmp     ax, 7                           ; 3D 07 00
        je      L_0420                          ; 74 31
        jmp     L_0413                          ; EB 22
;   [conditional branch target (if/else)] L_03F1
L_03F1:
        mov     ax, word ptr [0x9fe]            ; A1 FE 09
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0404                          ; 75 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 6                           ; B8 06 00
        jmp     L_040D                          ; EB 09
;   [conditional branch target (if/else)] L_0404
L_0404:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 8                           ; B8 08 00
;   [loop start (also forward branch)] L_040D
L_040D:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0492                          ; E8 7F 00
;   [unconditional branch target] L_0413
L_0413:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hWnd
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A B0 01 00 00 [FIXUP]
        jmp     L_043E                          ; EB 1E
;   [conditional branch target (if/else)] L_0420
L_0420:
        mov     ax, word ptr [0x9fe]            ; A1 FE 09
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0433                          ; 75 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 7                           ; B8 07 00
        jmp     L_040D                          ; EB DA
;   [conditional branch target (if/else)] L_0433
L_0433:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 9                           ; B8 09 00
        jmp     L_040D                          ; EB CF
;   [unconditional branch target] L_043E
L_043E:
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
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_045B
L_045B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x6e0                       ; 05 E0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_047B                          ; 74 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0487                          ; EB 0C
;   [conditional branch target (if/else)] L_047B
L_047B:
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0xa          ; 83 7E FC 0A
        jl      L_045B                          ; 7C D7
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_0487
L_0487:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (137 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0492   offset=0x0492  size=137 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0492, L_0623, L_069B
;-------------------------------------------------------------------------
;   [sub-routine] L_0492
L_0492:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 9                           ; 3D 09 00
        jbe     L_04A8                          ; 76 03
        jmp     L_05D2                          ; E9 2A 01
;   [conditional branch target (if/else)] L_04A8
L_04A8:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x603]        ; 2E FF A7 03 06
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        jne     L_04C4                          ; 75 0D
;   [loop start] L_04B7
L_04B7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_40                   ; 9A F2 04 00 00 [FIXUP]
        jmp     L_0502                          ; EB 3E
;   [conditional branch target (if/else)] L_04C4
L_04C4:
        cmp     word ptr [0xae], 3              ; 83 3E AE 00 03
        jl      L_04F6                          ; 7C 2B
        cmp     word ptr [0xae], 5              ; 83 3E AE 00 05
        jg      L_04F6                          ; 7F 24
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xae]                 ; FF 36 AE 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0623                          ; E8 45 01
        call    far _entry_38                   ; 9A E6 05 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_39                   ; 9A CC 05 00 00 [FIXUP]
;   [loop start] L_04EB
L_04EB:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_04F6
L_04F6:
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0xb70], 0xffff   ; C7 87 70 0B FF FF
;   [unconditional branch target] L_0502
L_0502:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xae], ax             ; A3 AE 00
        jmp     L_05C8                          ; E9 BD 00
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_04B7                          ; 74 A5
        cmp     word ptr [0xae], 0              ; 83 3E AE 00 00
        jl      L_04F6                          ; 7C DD
        cmp     word ptr [0xae], 2              ; 83 3E AE 00 02
        jg      L_04F6                          ; 7F D6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xae]                 ; FF 36 AE 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0623                          ; E8 F7 00
        jmp     L_04EB                          ; EB BD
        cmp     word ptr [0xae], 0              ; 83 3E AE 00 00
        jl      L_0585                          ; 7C 50
        cmp     word ptr [0xae], 2              ; 83 3E AE 00 02
        jg      L_0585                          ; 7F 49
        cmp     word ptr [bp + 6], 6            ; 83 7E 06 06
        jne     L_054E                          ; 75 0C
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        inc     word ptr [bx + 0x726]           ; FF 87 26 07
        jmp     L_0558                          ; EB 0A
;   [conditional branch target (if/else)] L_054E
L_054E:
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        dec     word ptr [bx + 0x726]           ; FF 8F 26 07
;   [unconditional branch target] L_0558
L_0558:
        mov     si, word ptr [0xae]             ; 8B 36 AE 00
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0xb0]        ; 8B 84 B0 00
        cmp     word ptr [si + 0x726], ax       ; 39 84 26 07
        jle     L_056E                          ; 7E 06
        mov     word ptr [si + 0x726], 0        ; C7 84 26 07 00 00
;   [conditional branch target (if/else)] L_056E
L_056E:
        mov     si, word ptr [0xae]             ; 8B 36 AE 00
        shl     si, 1                           ; D1 E6
        cmp     word ptr [si + 0x726], 0        ; 83 BC 26 07 00
        jge     L_05C8                          ; 7D 4D
        mov     ax, word ptr [si + 0xb0]        ; 8B 84 B0 00
        mov     word ptr [si + 0x726], ax       ; 89 84 26 07
        jmp     L_05C8                          ; EB 43
;   [loop start (also forward branch)] L_0585
L_0585:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0492                          ; E8 FE FE
        jmp     L_0617                          ; E9 80 00
        cmp     word ptr [0xae], 3              ; 83 3E AE 00 03
        jl      L_0585                          ; 7C E7
        cmp     word ptr [0xae], 5              ; 83 3E AE 00 05
        jg      L_0585                          ; 7F E0
        cmp     word ptr [bp + 6], 8            ; 83 7E 06 08
        jne     L_05B7                          ; 75 0C
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        inc     word ptr [bx + 0x726]           ; FF 87 26 07
        jmp     L_05C1                          ; EB 0A
;   [conditional branch target (if/else)] L_05B7
L_05B7:
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        dec     word ptr [bx + 0x726]           ; FF 8F 26 07
;   [unconditional branch target] L_05C1
L_05C1:
        push    word ptr [0xae]                 ; FF 36 AE 00
        call    L_069B                          ; E8 D3 00
;   [loop start (also forward branch)] L_05C8
L_05C8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0617                          ; EB 45
;   [unconditional branch target] L_05D2
L_05D2:
        cmp     word ptr [0xae], -1             ; 83 3E AE 00 FF
        je      L_0617                          ; 74 3E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xae]                 ; FF 36 AE 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0623                          ; E8 3E 00
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xae]             ; 8B 1E AE 00
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0xb70], 0xffff   ; C7 87 70 0B FF FF
        mov     word ptr [0xae], 0xffff         ; C7 06 AE 00 FF FF
        jmp     L_05C8                          ; EB C5
        mov     al, 4                           ; B0 04
        mov     al, 4                           ; B0 04
        mov     al, 4                           ; B0 04
        or      ax, word ptr [di]               ; 0B 05
        or      ax, word ptr [di]               ; 0B 05
        or      ax, word ptr [di]               ; 0B 05
        add     ax, 0x52e                       ; 2E 05 2E 05
        xchg    di, ax                          ; 97
        add     ax, 0x597                       ; 05 97 05
;   [branch target] L_0617
L_0617:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (1 use)

; Description (heuristic):
;   Mixed routine using: GETDLGITEM, SENDMESSAGE, SHOWWINDOW.

;-------------------------------------------------------------------------
; sub_0623   offset=0x0623  size=57 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_0777, L_07A6
;-------------------------------------------------------------------------
;   [sub-routine] L_0623
L_0623:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0658                          ; 7C 25
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jg      L_0658                          ; 7F 1F
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0777                          ; E8 39 01
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
        call    far USER.SENDMESSAGE            ; 9A 77 06 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x195                       ; B8 95 01
        jmp     L_0681                          ; EB 29
;   [conditional branch target (if/else)] L_0658
L_0658:
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        jl      L_0690                          ; 7C 32
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        jg      L_0690                          ; 7F 2C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07A6                          ; E8 3D 01
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
        call    far USER.SENDMESSAGE            ; 9A 32 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x19f                       ; B8 9F 01
;   [unconditional branch target] L_0681
L_0681:
        push    ax                              ; 50
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0690
L_0690:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (72 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_069B   offset=0x069B  size=72 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_069B
;-------------------------------------------------------------------------
;   [sub-routine] L_069B
L_069B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 3                           ; 3D 03 00
        je      L_06B6                          ; 74 10
        cmp     ax, 4                           ; 3D 04 00
        je      L_06DA                          ; 74 2F
        cmp     ax, 5                           ; 3D 05 00
        jne     L_06B3                          ; 75 03
        jmp     L_074F                          ; E9 9C 00
;   [conditional branch target (if/else)] L_06B3
L_06B3:
        jmp     L_0771                          ; E9 BB 00
;   [conditional branch target (if/else)] L_06B6
L_06B6:
        cmp     word ptr [0x72c], 0xc           ; 83 3E 2C 07 0C
        jle     L_06C3                          ; 7E 06
        mov     word ptr [0x72c], 1             ; C7 06 2C 07 01 00
;   [conditional branch target (if/else)] L_06C3
L_06C3:
        cmp     word ptr [0x72c], 1             ; 83 3E 2C 07 01
        jge     L_06D0                          ; 7D 06
        mov     word ptr [0x72c], 0xc           ; C7 06 2C 07 0C 00
;   [loop start (also forward branch)] L_06D0
L_06D0:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_069B                          ; E8 C4 FF
        jmp     L_0771                          ; E9 97 00
;   [conditional branch target (if/else)] L_06DA
L_06DA:
        mov     ax, word ptr [0x730]            ; A1 30 07
        cdq                                     ; 99
        mov     cx, 4                           ; B9 04 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_06F4                          ; 75 0D
        mov     ax, word ptr [0x730]            ; A1 30 07
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_0701                          ; 75 0D
;   [conditional branch target (if/else)] L_06F4
L_06F4:
        mov     ax, word ptr [0x730]            ; A1 30 07
        cdq                                     ; 99
        mov     cx, 0x190                       ; B9 90 01
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        jne     L_0724                          ; 75 23
;   [conditional branch target (if/else)] L_0701
L_0701:
        cmp     word ptr [0x72c], 2             ; 83 3E 2C 07 02
        jne     L_0724                          ; 75 1C
        cmp     word ptr [0x72e], 0x1d          ; 83 3E 2E 07 1D
        jle     L_0715                          ; 7E 06
        mov     word ptr [0x72e], 1             ; C7 06 2E 07 01 00
;   [conditional branch target (if/else)] L_0715
L_0715:
        cmp     word ptr [0x72e], 1             ; 83 3E 2E 07 01
        jge     L_0771                          ; 7D 55
        mov     word ptr [0x72e], 0x1d          ; C7 06 2E 07 1D 00
        jmp     L_0771                          ; EB 4D
;   [conditional branch target (if/else)] L_0724
L_0724:
        mov     bx, word ptr [0x72c]            ; 8B 1E 2C 07
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0x72e]            ; A1 2E 07
        cmp     word ptr [bx + 0x150], ax       ; 39 87 50 01
        jge     L_0739                          ; 7D 06
        mov     word ptr [0x72e], 1             ; C7 06 2E 07 01 00
;   [conditional branch target (if/else)] L_0739
L_0739:
        cmp     word ptr [0x72e], 1             ; 83 3E 2E 07 01
        jge     L_0771                          ; 7D 31
        mov     bx, word ptr [0x72c]            ; 8B 1E 2C 07
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x150]       ; 8B 87 50 01
        mov     word ptr [0x72e], ax            ; A3 2E 07
        jmp     L_0771                          ; EB 22
;   [unconditional branch target] L_074F
L_074F:
        cmp     word ptr [0x730], 0x833         ; 81 3E 30 07 33 08
        jle     L_075D                          ; 7E 06
        mov     word ptr [0x730], 0x7bc         ; C7 06 30 07 BC 07
;   [conditional branch target (if/else)] L_075D
L_075D:
        cmp     word ptr [0x730], 0x7bc         ; 81 3E 30 07 BC 07
        jl      L_0768                          ; 7C 03
        jmp     L_06D0                          ; E9 68 FF
;   [conditional branch target (if/else)] L_0768
L_0768:
        mov     word ptr [0x730], 0x833         ; C7 06 30 07 33 08
        jmp     L_06D0                          ; E9 5F FF
;   [error/early exit] L_0771
L_0771:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0777   offset=0x0777  size=22 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_0777
L_0777:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     byte ptr [0x5a1], 0x2d          ; C6 06 A1 05 2D
        mov     al, byte ptr [0x726]            ; A0 26 07
        mov     byte ptr [0x5a5], al            ; A2 A5 05
        mov     al, byte ptr [0x728]            ; A0 28 07
        mov     byte ptr [0x5a4], al            ; A2 A4 05
        mov     al, byte ptr [0x72a]            ; A0 2A 07
        mov     byte ptr [0x5a7], al            ; A2 A7 05
        call    far _entry_41                   ; 9A C8 07 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_07A6   offset=0x07A6  size=22 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_07A6
L_07A6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     byte ptr [0x5a1], 0x2b          ; C6 06 A1 05 2B
        mov     al, byte ptr [0x72c]            ; A0 2C 07
        mov     byte ptr [0x5a7], al            ; A2 A7 05
        mov     al, byte ptr [0x72e]            ; A0 2E 07
        mov     byte ptr [0x5a6], al            ; A2 A6 05
        mov     ax, word ptr [0x730]            ; A1 30 07
        mov     word ptr [0x5a4], ax            ; A3 A4 05
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

CONTROL_TEXT ENDS

        END
