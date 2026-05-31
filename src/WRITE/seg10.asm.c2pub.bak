; ======================================================================
; WRITE / seg10.asm   (segment 10 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        12
; Total instructions:                 1207
; 
; Classification (pass8):
;   C-origin (high+medium):             10
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     3 (3 unique)
;   Top:
;        1  SETSCROLLPOS
;        1  LOCALFREE
;        1  SETWINDOWTEXT
; ======================================================================
; AUTO-GENERATED from original WRITE segment 10
; segment_size=3409 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x320]                ; F7 2E 20 03
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        cdq                                     ; 99
        mov     cx, word ptr [0x1068]           ; 8B 0E 68 10
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A 79 00 00 00 [FIXUP]
        push    word ptr [0x1012]               ; FF 36 12 10
        mov     ax, 0x32                        ; B8 32 00
        imul    word ptr [0x320]                ; F7 2E 20 03
        add     ax, 0x80                        ; 05 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0068                          ; 74 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x36], ax        ; 89 44 36
        inc     ax                              ; 40
        jne     L_006D                          ; 75 05
;   [loop start (also forward branch)] L_0068
L_0068:
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        jmp     L_00E3                          ; EB 76
;   [conditional branch target (if/else)] L_006D
L_006D:
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        push    word ptr [bx]                   ; FF 37
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [si + 4], al           ; 88 44 04
        mov     byte ptr [si + 3], al           ; 88 44 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     ax, 0x14e                       ; B8 4E 01
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x740                       ; B8 40 07
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5400                      ; BA 00 54
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
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [0x780]                ; FF 36 80 07
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x782]                ; FF 36 82 07
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        or      ax, ax                          ; 0B C0
        je      L_0068                          ; 74 AA
        or      byte ptr [si + 0x2a], 1         ; 80 4C 2A 01
        or      byte ptr [si], 1                ; 80 0C 01
        or      byte ptr [si], 0x20             ; 80 0C 20
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_89                   ; 9A 60 01 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     word ptr [si + 0x1e], dx        ; 89 54 1E
        mov     ax, word ptr [0x13a4]           ; A1 A4 13
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     ax, word ptr [0x320]            ; A1 20 03
        inc     word ptr [0x320]                ; FF 06 20 03
;   [unconditional branch target] L_00E3
L_00E3:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Mixed routine using: SETSCROLLPOS.

;-------------------------------------------------------------------------
; sub_00EF   offset=0x00EF  size=188 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETSCROLLPOS
;
; Near calls (internal): L_07C3, L_0AED, L_0B62
;-------------------------------------------------------------------------
;   [sub-routine] L_00EF
L_00EF:
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
        mov     si, 0x107e                      ; BE 7E 10
        or      byte ptr [si], 1                ; 80 0C 01
        push    word ptr [0x12b4]               ; FF 36 B4 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B62                          ; E8 56 0A
        mov     al, byte ptr [0x12b4]           ; A0 B4 12
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     byte ptr [si + 0x20], 0         ; C6 44 20 00
        mov     word ptr [si + 8], 0            ; C7 44 08 00 00
        mov     byte ptr [si + 2], 0            ; C6 44 02 00
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     word ptr [si + 0x16], dx        ; 89 54 16
        mov     word ptr [si + 0x18], ax        ; 89 44 18
        mov     word ptr [si + 0x1a], dx        ; 89 54 1A
        or      byte ptr [0x1bea], 1            ; 80 0E EA 1B 01
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x78], ax             ; A3 78 00
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [0x1bea]           ; 8B 0E EA 1B
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [0x1bea], ax           ; A3 EA 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     word ptr [si + 0x1e], dx        ; 89 54 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 0x30]            ; FF 74 30
        mov     al, byte ptr [si + 0x35]        ; 8A 44 35
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     al, al                          ; 2A C0
        mov     byte ptr [si + 0x20], al        ; 88 44 20
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 9E 01 00 00 [FIXUP]
        push    word ptr [si + 0x2e]            ; FF 74 2E
        mov     al, byte ptr [si + 0x34]        ; 8A 44 34
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x68], 0              ; C7 06 68 00 00 00
        test    byte ptr [si], 0x80             ; F6 04 80
        je      L_01C3                          ; 74 05
        call    far _entry_241                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01C3
L_01C3:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AED                          ; E8 22 09
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
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
        sub     sp, 0xca                        ; 81 EC CA 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 7A 02 00 00 [FIXUP]
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07C3                          ; E8 B1 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0220                          ; 75 06
;   [loop start] L_021A
L_021A:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_02EC                          ; E9 CC 00
;   [conditional branch target (if/else)] L_0220
L_0220:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        and     byte ptr [bx + 4], 0x87         ; 80 67 04 87
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 6], 0            ; C7 47 06 00 00
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 8], 2            ; C7 47 08 02 00
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_240                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_021A                          ; 74 C5
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0x1e]        ; 8B 5F 1E
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], -1         ; 83 7E 0A FF
        jne     L_0293                          ; 75 0F
        cmp     word ptr [bp + 8], -1           ; 83 7E 08 FF
        jne     L_0293                          ; 75 09
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        jmp     L_02E9                          ; EB 56
;   [conditional branch target (if/else)] L_0293
L_0293:
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        mov     word ptr [bp - 0xca], 0xbe31    ; C7 86 36 FF 31 BE
        mov     word ptr [bp - 0xc8], 0         ; C7 86 38 FF 00 00
        mov     word ptr [bp - 0xc6], 0xab00    ; C7 86 3A FF 00 AB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x80                        ; 05 80 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
        mov     word ptr [bp - 0xba], dx        ; 89 96 46 FF
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_239                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_02E9
L_02E9:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_02EC
L_02EC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_02F7   offset=0x02F7  size=238 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_057F, L_0603, L_067C, L_08A3
;-------------------------------------------------------------------------
;   [sub-routine] L_02F7
L_02F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 0xa], 0x7fff     ; 81 7E 0A FF 7F
        je      L_033A                          ; 74 14
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        test    byte ptr [bx + si + 4], 1       ; F6 40 04 01
        je      L_033F                          ; 74 05
;   [conditional branch target (if/else)] L_033A
L_033A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0341                          ; EB 02
;   [conditional branch target (if/else)] L_033F
L_033F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0341
L_0341:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0603                          ; E8 B5 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        je      L_0363                          ; 74 0F
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_067C                          ; E8 1D 03
        or      ax, ax                          ; 0B C0
        jne     L_0369                          ; 75 06
;   [loop start (also forward branch)] L_0363
L_0363:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0572                          ; E9 09 02
;   [conditional branch target (if/else)] L_0369
L_0369:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        cmp     word ptr [bp + 0xa], 0x7fff     ; 81 7E 0A FF 7F
        je      L_039A                          ; 74 19
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bx + di + 8], 0       ; 83 79 08 00
        jne     L_039A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_039C                          ; EB 02
;   [conditional branch target (if/else)] L_039A
L_039A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_039C
L_039C:
        and     ax, 1                           ; 25 01 00
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xef                        ; 80 E1 EF
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        and     ah, 0xf                         ; 80 E4 0F
        or      ah, 0x10                        ; 80 CC 10
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfe                        ; 80 E1 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 3                           ; 25 03 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     ch, 0xf3                        ; 80 E5 F3
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        and     byte ptr [si + 6], 0xf7         ; 80 64 06 F7
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jne     L_03EB                          ; 75 03
        jmp     L_04CE                          ; E9 E3 00
;   [conditional branch target (if/else)] L_03EB
L_03EB:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_03F3                          ; 75 03
        jmp     L_052B                          ; E9 38 01
;   [conditional branch target (if/else)] L_03F3
L_03F3:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_03FB                          ; 75 03
        jmp     L_0523                          ; E9 28 01
;   [conditional branch target (if/else)] L_03FB
L_03FB:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0403                          ; 75 03
        jmp     L_04A9                          ; E9 A6 00
;   [loop start (also forward branch)] L_0403
L_0403:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     word ptr [bx + 0xe], 0xffff     ; C7 47 0E FF FF
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jne     L_0458                          ; 75 03
        jmp     L_0557                          ; E9 FF 00
;   [conditional branch target (if/else)] L_0458
L_0458:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_246                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0467                          ; 74 03
        jmp     L_0557                          ; E9 F0 00
;   [conditional branch target (if/else)] L_0467
L_0467:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_046F
L_046F:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 7B 04 00 00 [FIXUP]
;   [loop start] L_0477
L_0477:
        push    word ptr [bp - 0x12]            ; FF 76 EE
;   [loop start] L_047A
L_047A:
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 90 04 00 00 [FIXUP]
;   [loop start] L_047F
L_047F:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        mov     si, word ptr [si]               ; 8B 34
        push    word ptr [bx + si]              ; FF 30
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0xf92]            ; 8B 36 92 0F
        mov     si, word ptr [si]               ; 8B 34
        mov     word ptr [bx + si], 0           ; C7 00 00 00
        jmp     L_0363                          ; E9 BA FE
;   [unconditional branch target] L_04A9
L_04A9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_245                  ; 9A ED 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        inc     ax                              ; 40
        je      L_0477                          ; 74 C0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08A3                          ; E8 E0 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        inc     ax                              ; 40
        je      L_04CC                          ; 74 03
        jmp     L_0403                          ; E9 37 FF
;   [conditional branch target (if/else)] L_04CC
L_04CC:
        jmp     L_0477                          ; EB A9
;   [unconditional branch target] L_04CE
L_04CE:
        cmp     word ptr [bp + 0xa], 0x7fff     ; 81 7E 0A FF 7F
        je      L_050B                          ; 74 36
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_050B                          ; 74 30
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_244                  ; 9A 36 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        je      L_047F                          ; 74 96
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_245                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        inc     ax                              ; 40
        jne     L_04FA                          ; 75 03
        jmp     L_0477                          ; E9 7D FF
;   [conditional branch target (if/else)] L_04FA
L_04FA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_243                  ; 9A 47 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        inc     ax                              ; 40
        jne     L_050B                          ; 75 03
        jmp     L_0477                          ; E9 6C FF
;   [conditional branch target (if/else)] L_050B
L_050B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08A3                          ; E8 8C 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        inc     ax                              ; 40
        je      L_0520                          ; 74 03
        jmp     L_0403                          ; E9 E3 FE
;   [conditional branch target (if/else)] L_0520
L_0520:
        jmp     L_046F                          ; E9 4C FF
;   [loop start (also forward branch)] L_0523
L_0523:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_0403                          ; E9 D8 FE
;   [unconditional branch target] L_052B
L_052B:
        cmp     word ptr [bp + 0xa], 0x7fff     ; 81 7E 0A FF 7F
        je      L_0523                          ; 74 F1
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_244                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_0543                          ; 75 03
        jmp     L_047F                          ; E9 3C FF
;   [conditional branch target (if/else)] L_0543
L_0543:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_243                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        inc     ax                              ; 40
        jne     L_0523                          ; 75 D2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        jmp     L_047A                          ; E9 23 FF
;   [unconditional branch target] L_0557
L_0557:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_057F                          ; E8 20 00
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_056A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_056C                          ; EB 02
;   [conditional branch target (if/else)] L_056A
L_056A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_056C
L_056C:
        mov     word ptr [0x4c], ax             ; A3 4C 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [unconditional branch target] L_0572
L_0572:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (56 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_057F   offset=0x057F  size=56 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0B62
;-------------------------------------------------------------------------
;   [sub-routine] L_057F
L_057F:
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
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B62                          ; E8 CD 05
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        or      ax, word ptr [0x71c]            ; 0B 06 1C 07
        je      L_05F7                          ; 74 59
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0xc]    ; 8B 40 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_05BB                          ; 75 05
        mov     ax, 0xfa4                       ; B8 A4 0F
        jmp     L_05C0                          ; EB 05
;   [conditional branch target (if/else)] L_05BB
L_05BB:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx]               ; 8B 07
;   [unconditional branch target] L_05C0
L_05C0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     byte ptr [bp - 0xc], 0x28       ; C6 46 F4 28
        mov     byte ptr [bp - 0xb], 4          ; C6 46 F5 04
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x71c]                ; FF 36 1C 07
        push    word ptr [0x71a]                ; FF 36 1A 07
        call    far _entry_224                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05F7
L_05F7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0603   offset=0x0603  size=50 instr  segment=seg10.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_0603
L_0603:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xf9e]                ; F7 2E 9E 0F
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0641                          ; EB 14
;   [loop start] L_062D
L_062D:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_063A                          ; 75 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0673                          ; EB 39
;   [conditional branch target (if/else)] L_063A
L_063A:
        add     word ptr [bp - 8], 0x16         ; 83 46 F8 16
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0641
L_0641:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jb      L_062D                          ; 72 E4
        push    word ptr [0xf92]                ; FF 36 92 0F
        inc     word ptr [0xf9e]                ; FF 06 9E 0F
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        mov     cx, 0xb                         ; B9 0B 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A 52 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_066F                          ; 75 09
        dec     word ptr [0xf9e]                ; FF 0E 9E 0F
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0673                          ; EB 04
;   [conditional branch target (if/else)] L_066F
L_066F:
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        dec     ax                              ; 48
;   [unconditional branch target] L_0673
L_0673:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (122 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_067C   offset=0x067C  size=122 instr  segment=seg10.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_067C
L_067C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 5E 00 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_069E                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_07B7                          ; E9 19 01
;   [conditional branch target (if/else)] L_069E
L_069E:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     word ptr [bx], si               ; 89 37
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [bp + 6], 0x7fff       ; 81 7E 06 FF 7F
        je      L_06DF                          ; 74 19
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        test    byte ptr [bx + si + 4], 1       ; F6 40 04 01
        je      L_06DF                          ; 74 05
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        jmp     L_06E1                          ; EB 02
;   [conditional branch target (if/else)] L_06DF
L_06DF:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_06E1
L_06E1:
        sub     dx, dx                          ; 2B D2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     word ptr [bp + 6], 0x7fff       ; 81 7E 06 FF 7F
        jne     L_06F5                          ; 75 05
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_070E                          ; EB 19
;   [conditional branch target (if/else)] L_06F5
L_06F5:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        sbb     dx, word ptr [bp - 0xa]         ; 1B 56 F6
;   [unconditional branch target] L_070E
L_070E:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     word ptr [bx], 5                ; C7 07 05 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        or      ax, word ptr [bp - 4]           ; 0B 46 FC
        jne     L_0728                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_072B                          ; EB 03
;   [conditional branch target (if/else)] L_0728
L_0728:
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_072B
L_072B:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx + 4], dx           ; 89 57 04
        or      ax, dx                          ; 0B C2
        je      L_0796                          ; 74 48
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     ch, 0x7f                        ; 80 E5 7F
        shl     cx, 1                           ; D1 E1
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 8], dx           ; 89 57 08
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     word ptr [bx + 0xa], 0          ; C7 47 0A 00 00
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        and     byte ptr [bx + 4], 0xfe         ; 80 67 04 FE
        add     word ptr [bp - 0xe], 0xc        ; 83 46 F2 0C
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
;   [conditional branch target (if/else)] L_0796
L_0796:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        or      word ptr [bx + 4], 0xfffe       ; 81 4F 04 FE FF
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     word ptr [bx + 0xa], 0          ; C7 47 0A 00 00
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        and     byte ptr [bx + 6], 0xfd         ; 80 67 06 FD
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_07B7
L_07B7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (101 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_07C3   offset=0x07C3  size=101 instr  segment=seg10.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Near calls (internal): L_00EF, L_02F7
;-------------------------------------------------------------------------
;   [sub-routine] L_07C3
L_07C3:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_07F2                          ; EB 1A
;   [loop start] L_07D8
L_07D8:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + si + 5]      ; 8A 40 05
        and     al, 0x7f                        ; 24 7F
        cmp     al, 0xb                         ; 3C 0B
        je      L_0824                          ; 74 35
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_07F2
L_07F2:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_07D8                          ; 7C DE
        push    word ptr [0x1218]               ; FF 36 18 12
        mov     ax, 0x51                        ; B8 51 00
        imul    word ptr [0xc18]                ; F7 2E 18 0C
        add     ax, 0x51                        ; 05 51 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A 5E 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_081A                          ; 75 05
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_0852                          ; EB 38
;   [conditional branch target (if/else)] L_081A
L_081A:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        inc     word ptr [0xc18]                ; FF 06 18 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0824
L_0824:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A 3B 00 00 00 [FIXUP]
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     si, bx                          ; 8B F3
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        and     al, 0x80                        ; 24 80
        or      al, 0xb                         ; 0C 0B
        mov     byte ptr [bx + 5], al           ; 88 47 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_0852
L_0852:
        pop     si                              ; 5E
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
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_089A                          ; 74 2B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_190                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 0x741                       ; B8 41 07
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02F7                          ; E8 69 FA
        mov     word ptr [0x12b4], ax           ; A3 B4 12
        mov     ax, 0x742                       ; B8 42 07
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EF                          ; E8 55 F8
;   [conditional branch target (if/else)] L_089A
L_089A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (68 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_08A3   offset=0x08A3  size=68 instr  segment=seg10.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_09C8
;-------------------------------------------------------------------------
;   [sub-routine] L_08A3
L_08A3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        call    far _entry_120                  ; 9A D6 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        jne     L_08C1                          ; 75 06
;   [loop start] L_08BB
L_08BB:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_09BD                          ; E9 FC 00
;   [conditional branch target (if/else)] L_08C1
L_08C1:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x16]        ; 8B 47 16
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 8], 0x7fff       ; 81 7E 08 FF 7F
        je      L_08E5                          ; 74 06
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        jne     L_08F2                          ; 75 0D
;   [conditional branch target (if/else)] L_08E5
L_08E5:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09C8                          ; E8 DB 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_08BB                          ; EB C9
;   [conditional branch target (if/else)] L_08F2
L_08F2:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 0x18]        ; 8B 47 18
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jne     L_0903                          ; 75 03
        jmp     L_09A7                          ; E9 A4 00
;   [conditional branch target (if/else)] L_0903
L_0903:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 97 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0x80       ; 81 7E F2 80 00
        jne     L_0964                          ; 75 45
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        add     word ptr [bp - 0x10], 2         ; 83 46 F0 02
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_092F
L_092F:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_093E                          ; 75 03
        jmp     L_08BB                          ; E9 7D FF
;   [conditional branch target (if/else)] L_093E
L_093E:
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0951                          ; 75 0E
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jb      L_0989                          ; 72 3B
        jmp     L_08BB                          ; E9 6A FF
; Description (heuristic):
;   Pure computation / dispatcher (48 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0951   offset=0x0951  size=48 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_09C8
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0951
L_0951:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_248                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_0971                          ; 75 0D
;   [loop start (also forward branch)] L_0964
L_0964:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_119                  ; 9A 76 0A 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_09BD                          ; EB 4C
;   [conditional branch target (if/else)] L_0971
L_0971:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_097F                          ; 7C 03
        jmp     L_08BB                          ; E9 3C FF
;   [conditional branch target (if/else)] L_097F
L_097F:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        jmp     L_092F                          ; EB A6
;   [conditional branch target (if/else)] L_0989
L_0989:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0x80       ; 81 7E F2 80 00
        je      L_092F                          ; 74 8A
        jmp     L_0964                          ; EB BD
;   [unconditional branch target] L_09A7
L_09A7:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09C8                          ; E8 18 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 1                ; C7 07 01 00
        jmp     L_08BB                          ; E9 FE FE
;   [unconditional branch target] L_09BD
L_09BD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (76 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_09C8   offset=0x09C8  size=76 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_09C8
L_09C8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        call    far _entry_120                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_09E6                          ; 75 06
;   [loop start] L_09E0
L_09E0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0A82                          ; E9 9C 00
;   [conditional branch target (if/else)] L_09E6
L_09E6:
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 09 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A 0F 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 77
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_09E0                          ; 74 DF
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 1F 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A 25 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 5B
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 35 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A 3B 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 45
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 4B 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A 51 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 2F
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 61 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A 67 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 19
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_121                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A72                          ; 74 03
        jmp     L_09E0                          ; E9 6E FF
;   [conditional branch target (if/else)] L_0A72
L_0A72:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_119                  ; 9A 6B 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        jmp     L_09E0                          ; E9 5E FF
;   [unconditional branch target] L_0A82
L_0A82:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (44 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A8D   offset=0x0A8D  size=44 instr  segment=seg10.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0A8D
L_0A8D:
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
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_0AAD
L_0AAD:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jb      L_0AC5                          ; 72 10
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0AC5                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_0ACB                          ; 75 06
;   [conditional branch target (if/else)] L_0AC5
L_0AC5:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        jmp     L_0AE2                          ; EB 17
;   [conditional branch target (if/else)] L_0ACB
L_0ACB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr [bx], al               ; 88 07
        dec     word ptr [bp - 4]               ; FF 4E FC
        jmp     L_0AAD                          ; EB CB
;   [unconditional branch target] L_0AE2
L_0AE2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: SETWINDOWTEXT.

;-------------------------------------------------------------------------
; sub_0AED   offset=0x0AED  size=49 instr  segment=seg10.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0A8D
;-------------------------------------------------------------------------
;   [sub-routine] L_0AED
L_0AED:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x46                        ; 83 EC 46
        mov     word ptr [bp - 4], 0xa6e        ; C7 46 FC 6E 0A
        mov     ax, 0x10a                       ; B8 0A 01
        push    ax                              ; 50
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 17 0B 00 00 [FIXUP]
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, 0x11c                       ; B8 1C 01
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_180                  ; 9A 33 0B 00 00 [FIXUP]
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0B2B                          ; 75 05
        ; constant WM_INITDIALOG
        mov     ax, 0x110                       ; B8 10 01
        jmp     L_0B40                          ; EB 15
;   [conditional branch target (if/else)] L_0B2B
L_0B2B:
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 45 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A8D                          ; E8 4D FF
;   [unconditional branch target] L_0B40
L_0B40:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_180                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        ;   ^ arg hWnd
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ds                              ; 1E
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
; Description (heuristic):
;   Pure computation / dispatcher (167 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0B62   offset=0x0B62  size=167 instr  segment=seg10.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_0B62
L_0B62:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        jne     L_0BAA                          ; 75 03
        jmp     L_0D46                          ; E9 9C 01
;   [conditional branch target (if/else)] L_0BAA
L_0BAA:
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0BB5                          ; 75 03
        jmp     L_0D46                          ; E9 91 01
;   [conditional branch target (if/else)] L_0BB5
L_0BB5:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13e2], ax           ; A3 E2 13
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [0x70e], ax            ; A3 0E 07
        mov     word ptr [0x710], dx            ; 89 16 10 07
        mov     word ptr [0x70a], ax            ; A3 0A 07
        mov     word ptr [0x70c], dx            ; 89 16 0C 07
        mov     word ptr [0x716], ax            ; A3 16 07
        mov     word ptr [0x718], dx            ; 89 16 18 07
        mov     word ptr [0x712], ax            ; A3 12 07
        mov     word ptr [0x714], dx            ; 89 16 14 07
        mov     word ptr [0x71a], ax            ; A3 1A 07
        mov     word ptr [0x71c], dx            ; 89 16 1C 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [loop start] L_0C04
L_0C04:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jle     L_0C13                          ; 7E 03
        jmp     L_0CE2                          ; E9 CF 00
;   [conditional branch target (if/else)] L_0C13
L_0C13:
        jl      L_0C1D                          ; 7C 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jb      L_0C1D                          ; 72 03
        jmp     L_0CE2                          ; E9 C5 00
;   [conditional branch target (if/else)] L_0C1D
L_0C1D:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0xf           ; F6 06 82 0B 0F
        jne     L_0C35                          ; 75 03
        jmp     L_0CE2                          ; E9 AD 00
;   [conditional branch target (if/else)] L_0C35
L_0C35:
        mov     ax, word ptr [0xb82]            ; A1 82 0B
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        je      L_0C8B                          ; 74 49
        cmp     word ptr [bp - 0xe], 1          ; 83 7E F2 01
        jne     L_0C4D                          ; 75 05
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [conditional branch target (if/else)] L_0C4D
L_0C4D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0C57                          ; 75 03
        jmp     L_0D46                          ; E9 EF 00
;   [conditional branch target (if/else)] L_0C57
L_0C57:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0C74                          ; 74 18
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0CD2                          ; 75 71
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [0x712], ax            ; A3 12 07
        mov     word ptr [0x714], dx            ; 89 16 14 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_0C74
L_0C74:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [0x71a], ax            ; A3 1A 07
        mov     word ptr [0x71c], dx            ; 89 16 1C 07
        mov     word ptr [0x716], ax            ; A3 16 07
        mov     word ptr [0x718], dx            ; 89 16 18 07
        jmp     L_0CD2                          ; EB 47
;   [conditional branch target (if/else)] L_0C8B
L_0C8B:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_0C96                          ; 75 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_0C96
L_0C96:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0CA0                          ; 75 03
        jmp     L_0D46                          ; E9 A6 00
;   [conditional branch target (if/else)] L_0CA0
L_0CA0:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0CBD                          ; 74 18
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0CD2                          ; 75 28
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [0x70a], ax            ; A3 0A 07
        mov     word ptr [0x70c], dx            ; 89 16 0C 07
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
;   [conditional branch target (if/else)] L_0CBD
L_0CBD:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [0x71a], ax            ; A3 1A 07
        mov     word ptr [0x71c], dx            ; 89 16 1C 07
        mov     word ptr [0x70e], ax            ; A3 0E 07
        mov     word ptr [0x710], dx            ; 89 16 10 07
;   [branch target] L_0CD2
L_0CD2:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_0C04                          ; E9 22 FF
;   [unconditional branch target] L_0CE2
L_0CE2:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0D0A                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0D46                          ; 74 3C
;   [conditional branch target (if/else)] L_0D0A
L_0D0A:
        mov     al, byte ptr [0x1083]           ; A0 83 10
        sub     ah, ah                          ; 2A E4
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0D46                          ; 75 32
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        sbb     dx, word ptr [bp - 0x10]        ; 1B 56 F0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        or      ax, dx                          ; 0B C2
        je      L_0D46                          ; 74 1B
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     word ptr [0xc34], ax            ; 01 06 34 0C
        adc     word ptr [0xc36], dx            ; 11 16 36 0C
        add     word ptr [0xc38], ax            ; 01 06 38 0C
        adc     word ptr [0xc3a], dx            ; 11 16 3A 0C
        add     word ptr [0x13aa], ax           ; 01 06 AA 13
        adc     word ptr [0x13ac], dx           ; 11 16 AC 13
;   [branch target] L_0D46
L_0D46:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
