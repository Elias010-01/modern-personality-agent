; ======================================================================
; WRITE / seg41.asm   (segment 41 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  619
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original WRITE segment 41
; segment_size=1723 bytes, flags=0xf130
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
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0016                          ; 75 03
        jmp     L_00AB                          ; E9 95 00
;   [conditional branch target (if/else)] L_0016
L_0016:
        test    byte ptr [bp + 6], 1            ; F6 46 06 01
        je      L_0091                          ; 74 75
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_0048
L_0048:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_00AB                          ; 7E 5D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00B6                          ; E8 4E 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx + 0x2e2]       ; 8A 87 E2 02
        sub     ah, ah                          ; 2A E4
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0086                          ; 75 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0576                          ; E8 F3 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_0086
L_0086:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        add     word ptr [bp - 4], ax           ; 01 46 FC
        jmp     L_0048                          ; EB B7
;   [conditional branch target (if/else)] L_0091
L_0091:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        shr     ax, 1                           ; D1 E8
        and     ax, 0x7f                        ; 25 7F 00
        push    ax                              ; 50
        lea     ax, [bp + 7]                    ; 8D 46 07
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00B6                          ; E8 0B 00
;   [branch target] L_00AB
L_00AB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (480 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00B6   offset=0x00B6  size=480 instr  segment=seg41.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_05A2, L_0658
;-------------------------------------------------------------------------
;   [sub-routine] L_00B6
L_00B6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        test    byte ptr [bx + 0x2e2], 0xc      ; F6 87 E2 02 0C
        jne     L_00DC                          ; 75 03
        jmp     L_0254                          ; E9 78 01
;   [conditional branch target (if/else)] L_00DC
L_00DC:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_00E5                          ; 75 03
        jmp     L_0569                          ; E9 84 04
;   [conditional branch target (if/else)] L_00E5
L_00E5:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        and     byte ptr [bx], 0xfe             ; 80 27 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 4                           ; 3D 04 00
        je      L_0133                          ; 74 40
        jle     L_00F8                          ; 7E 03
        jmp     L_022C                          ; E9 34 01
;   [conditional branch target (if/else)] L_00F8
L_00F8:
        cmp     ax, 1                           ; 3D 01 00
        je      L_010A                          ; 74 0D
        cmp     ax, 2                           ; 3D 02 00
        je      L_0123                          ; 74 21
        cmp     ax, 3                           ; 3D 03 00
        je      L_012B                          ; 74 24
        jmp     L_0569                          ; E9 5F 04
;   [conditional branch target (if/else)] L_010A
L_010A:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 6                           ; 05 06 00
;   [loop start] L_0110
L_0110:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A F8 01 00 00 [FIXUP]
        jmp     L_0569                          ; E9 46 04
;   [conditional branch target (if/else)] L_0123
L_0123:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 4                           ; 05 04 00
        jmp     L_0110                          ; EB E5
;   [conditional branch target (if/else)] L_012B
L_012B:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 8                           ; 05 08 00
        jmp     L_0110                          ; EB DD
;   [conditional branch target (if/else)] L_0133
L_0133:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     ax, 3                           ; 25 03 00
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 0xfc                        ; 80 E5 FC
;   [loop start] L_0147
L_0147:
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_0569                          ; E9 1B 04
;   [loop start] L_014E
L_014E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xa                         ; 05 0A 00
        jmp     L_0110                          ; EB BA
;   [loop start] L_0156
L_0156:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        and     al, 0xf0                        ; 24 F0
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
;   [loop start] L_0169
L_0169:
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        jmp     L_0569                          ; E9 FA 03
;   [loop start] L_016F
L_016F:
        inc     word ptr [bp + 6]               ; FF 46 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     ax, word ptr [bx]               ; 2B 07
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 9D 01 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx + 6], ax           ; 89 47 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
;   [loop start] L_01A4
L_01A4:
        mov     word ptr [bx + 4], ax           ; 89 47 04
        jmp     L_0569                          ; E9 BF 03
;   [loop start] L_01AA
L_01AA:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        and     ax, 0xf                         ; 25 0F 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x13cc]               ; FF 36 CC 13
        push    bx                              ; 53
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01FC                          ; EB 29
;   [loop start] L_01D3
L_01D3:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        and     ax, 0xf                         ; 25 0F 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        push    bx                              ; 53
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_45                   ; 9A C5 03 00 00 [FIXUP]
;   [unconditional branch target] L_01FC
L_01FC:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        and     al, 0xf0                        ; 24 F0
        mov     cx, word ptr [bp - 0xc]         ; 8B 4E F4
        and     cx, 0xf                         ; 81 E1 0F 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        and     al, 0xef                        ; 24 EF
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        and     dx, 1                           ; 81 E2 01 00
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        or      ax, dx                          ; 0B C2
        jmp     L_0169                          ; E9 3D FF
;   [unconditional branch target] L_022C
L_022C:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0234                          ; 75 03
        jmp     L_01AA                          ; E9 76 FF
;   [conditional branch target (if/else)] L_0234
L_0234:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_023C                          ; 75 03
        jmp     L_0156                          ; E9 1A FF
;   [conditional branch target (if/else)] L_023C
L_023C:
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_01D3                          ; 74 92
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0249                          ; 75 03
        jmp     L_014E                          ; E9 05 FF
;   [conditional branch target (if/else)] L_0249
L_0249:
        cmp     ax, 0x28                        ; 3D 28 00
        jne     L_0251                          ; 75 03
        jmp     L_016F                          ; E9 1E FF
;   [conditional branch target (if/else)] L_0251
L_0251:
        jmp     L_0569                          ; E9 15 03
;   [unconditional branch target] L_0254
L_0254:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_025D                          ; 75 03
        jmp     L_0569                          ; E9 0C 03
;   [conditional branch target (if/else)] L_025D
L_025D:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        and     byte ptr [bx], 0xfe             ; 80 27 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 0x14                        ; 2D 14 00
        cmp     ax, 0x13                        ; 3D 13 00
        jbe     L_0271                          ; 76 03
        jmp     L_0569                          ; E9 F8 02
;   [conditional branch target (if/else)] L_0271
L_0271:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x541]        ; 2E FF A7 41 05
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     ax, 1                           ; 25 01 00
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 0xfe                        ; 80 E5 FE
        jmp     L_0147                          ; E9 B7 FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     ax, 1                           ; 25 01 00
        mov     cl, 9                           ; B1 09
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 0xfd                        ; 80 E5 FD
        jmp     L_0147                          ; E9 A0 FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     ah, 0xfe                        ; 80 E4 FE
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        and     dx, 1                           ; 81 E2 01 00
        mov     cl, 8                           ; B1 08
;   [loop start] L_02BB
L_02BB:
        shl     dx, cl                          ; D3 E2
        or      ax, dx                          ; 0B C2
;   [loop start] L_02BF
L_02BF:
        mov     word ptr [bx + 2], ax           ; 89 47 02
        jmp     L_0569                          ; E9 A4 02
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        test    word ptr [bx + 4], 0xff00       ; F7 47 04 00 FF
        jne     L_02F1                          ; 75 22
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_02F1                          ; 74 1C
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05A2                          ; E8 BE 02
        sub     ah, ah                          ; 2A E4
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     cx, word ptr [bx + 2]           ; 8B 4F 02
        and     cl, 0                           ; 80 E1 00
        jmp     L_031B                          ; EB 2A
;   [conditional branch target (if/else)] L_02F1
L_02F1:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        test    word ptr [bx + 4], 0xff00       ; F7 47 04 00 FF
        je      L_0320                          ; 74 25
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0320                          ; 75 1F
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05A2                          ; E8 92 02
        sub     ah, ah                          ; 2A E4
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     cx, word ptr [bx + 2]           ; 8B 4F 02
        and     cl, 0                           ; 80 E1 00
;   [unconditional branch target] L_031B
L_031B:
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [conditional branch target (if/else)] L_0320
L_0320:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        sub     ah, ah                          ; 2A E4
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     ch, 0                           ; 80 E5 00
;   [loop start] L_0334
L_0334:
        or      ax, cx                          ; 0B C1
        jmp     L_01A4                          ; E9 6B FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     ax, 0x3f                        ; 25 3F 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        and     al, 0xc0                        ; 24 C0
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     ax, 7                           ; 25 07 00
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cl, 0xf8                        ; 80 E1 F8
        jmp     L_0334                          ; EB CA
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     al, 0                           ; 24 00
        mov     cl, byte ptr [bp - 6]           ; 8A 4E FA
;   [loop start] L_0377
L_0377:
        sub     ch, ch                          ; 2A ED
;   [loop start] L_0379
L_0379:
        or      ax, cx                          ; 0B C1
        jmp     L_02BF                          ; E9 41 FF
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0x80         ; 81 7E FA 80 00
        jl      L_0396                          ; 7C 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, 0x100                       ; 2D 00 01
        jmp     L_0399                          ; EB 03
;   [conditional branch target (if/else)] L_0396
L_0396:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0399
L_0399:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05A2                          ; E8 03 02
        sub     ah, ah                          ; 2A E4
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     cx, word ptr [bx + 2]           ; 8B 4F 02
        and     cl, 0                           ; 80 E1 00
        jmp     L_0379                          ; EB CD
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 6]               ; FF 76 06
        push    bx                              ; 53
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     ah, 0xbf                        ; 80 E4 BF
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        and     dx, 1                           ; 81 E2 01 00
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        jmp     L_02BB                          ; E9 DB FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        shr     ax, cl                          ; D3 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        and     ax, 7                           ; 25 07 00
        mov     cl, 6                           ; B1 06
        shl     ax, cl                          ; D3 E0
        mov     dx, word ptr [bx]               ; 8B 17
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dx, 0x3f                        ; 81 E2 3F 00
        or      ax, dx                          ; 0B C2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        test    word ptr [bx + 4], 0xff00       ; F7 47 04 00 FF
        je      L_0425                          ; 74 0D
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05A2                          ; E8 80 01
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [conditional branch target (if/else)] L_0425
L_0425:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A CD 01 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     ah, 0xbf                        ; 80 E4 BF
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        and     dx, 1                           ; 81 E2 01 00
        ; constant WM_GETTEXTLENGTH
        mov     cl, 0xe                         ; B1 0E
        shl     dx, cl                          ; D3 E2
        or      ax, dx                          ; 0B C2
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        and     ax, 0x3f                        ; 25 3F 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        and     al, 0xc0                        ; 24 C0
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     ax, 7                           ; 25 07 00
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cl, 0xf8                        ; 80 E1 F8
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     al, 0                           ; 24 00
        mov     cl, byte ptr [bp - 0xe]         ; 8A 4E F2
        jmp     L_0377                          ; E9 E3 FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        and     ax, 7                           ; 25 07 00
        mov     cl, 6                           ; B1 06
        shl     ax, cl                          ; D3 E0
        mov     dx, si                          ; 8B D6
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dx, 0x3f                        ; 81 E2 3F 00
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + di + 1]      ; 8A 41 01
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        and     ax, 0x3f                        ; 25 3F 00
        shl     ax, cl                          ; D3 E0
        mov     cx, si                          ; 8B CE
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        and     al, 0xc0                        ; 24 C0
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     ax, 7                           ; 25 07 00
        mov     di, bx                          ; 8B FB
        mov     cx, word ptr [di + 4]           ; 8B 4D 04
        and     cl, 0xf8                        ; 80 E1 F8
        jmp     L_0334                          ; E9 4A FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        and     ax, 7                           ; 25 07 00
        mov     cl, 6                           ; B1 06
        shl     ax, cl                          ; D3 E0
        mov     dx, word ptr [bx]               ; 8B 17
        mov     cl, 0xa                         ; B1 0A
        shr     dx, cl                          ; D3 EA
        and     dx, 0x3f                        ; 81 E2 3F 00
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0658                          ; E8 49 01
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        and     ax, 0x3f                        ; 25 3F 00
        mov     cl, 0xa                         ; B1 0A
        shl     ax, cl                          ; D3 E0
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si]               ; 8B 0C
        and     ch, 3                           ; 80 E5 03
        or      ax, cx                          ; 0B C1
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        and     al, 0xc0                        ; 24 C0
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     ax, 7                           ; 25 07 00
        mov     si, bx                          ; 8B F3
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cl, 0xf8                        ; 80 E1 F8
        jmp     L_0334                          ; E9 F3 FD
        jns     L_0545                          ; 79 02
        nop                                     ; 90
        add     ah, byte ptr [bx - 0x3afe]      ; 02 A7 02 C5
        add     bh, byte ptr [bx + di]          ; 02 39
        add     bp, word ptr [bp + si + 3]      ; 03 6A 03
        lodsb   al, byte ptr [si]               ; AC
        add     di, word ptr [bx + di]          ; 03 39
        add     di, word ptr [bp + 3]           ; 03 7E 03
        loopne  L_0558                          ; E0 03
        imul    ax, word ptr [di], 0x569        ; 69 05 69 05
        imul    ax, word ptr [di], 0x569        ; 69 05 69 05
        imul    ax, word ptr [di], 0x569        ; 69 05 69 05
        imul    ax, word ptr [di], 0x569        ; 69 05 69 05
        xchg    sp, ax                          ; 94
        add     al, 0xea                        ; 04 EA
        add     al, 0x5e                        ; 04 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0576   offset=0x0576  size=24 instr  segment=seg41.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0576
L_0576:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0x1a             ; 80 3F 1A
        jne     L_058D                          ; 75 05
        mov     ax, 0xb                         ; B8 0B 00
        jmp     L_0597                          ; EB 0A
;   [conditional branch target (if/else)] L_058D
L_058D:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        inc     ax                              ; 40
;   [unconditional branch target] L_0597
L_0597:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05A2   offset=0x05A2  size=74 instr  segment=seg41.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_05A2
L_05A2:
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
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_05B9                          ; 75 03
        jmp     L_0649                          ; E9 90 00
;   [conditional branch target (if/else)] L_05B9
L_05B9:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_060B                          ; 7E 4C
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_05C4
L_05C4:
        cmp     word ptr [bp - 4], 9            ; 83 7E FC 09
        jge     L_05D8                          ; 7D 0E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x746], ax       ; 39 87 46 07
        jle     L_05E9                          ; 7E 11
;   [conditional branch target (if/else)] L_05D8
L_05D8:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        add     si, word ptr [bp + 6]           ; 03 76 06
        dec     si                              ; 4E
        cmp     si, 9                           ; 83 FE 09
        jle     L_05EE                          ; 7E 0A
        mov     ax, 9                           ; B8 09 00
        jmp     L_05F0                          ; EB 07
;   [conditional branch target (if/else)] L_05E9
L_05E9:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_05C4                          ; EB D6
;   [conditional branch target (if/else)] L_05EE
L_05EE:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_05F0
L_05F0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x746], ax       ; 39 87 46 07
        jl      L_0649                          ; 7C 49
;   [loop start] L_0600
L_0600:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x746]       ; 8B 87 46 07
        jmp     L_064C                          ; EB 41
;   [conditional branch target (if/else)] L_060B
L_060B:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0610
L_0610:
        cmp     word ptr [bp - 4], 0xa          ; 83 7E FC 0A
        jge     L_0624                          ; 7D 0E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x746], ax       ; 39 87 46 07
        jl      L_0632                          ; 7C 0E
;   [conditional branch target (if/else)] L_0624
L_0624:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        add     si, word ptr [bp + 6]           ; 03 76 06
        or      si, si                          ; 0B F6
        jge     L_0637                          ; 7D 09
        sub     ax, ax                          ; 2B C0
        jmp     L_0639                          ; EB 07
;   [conditional branch target (if/else)] L_0632
L_0632:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0610                          ; EB D9
;   [conditional branch target (if/else)] L_0637
L_0637:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_0639
L_0639:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x746], ax       ; 39 87 46 07
        jle     L_0600                          ; 7E B7
;   [branch target] L_0649
L_0649:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
;   [unconditional branch target] L_064C
L_064C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  WORD      (1 use)

; Description (heuristic):
;   Pure computation / dispatcher (41 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0658   offset=0x0658  size=41 instr  segment=seg41.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_0658
L_0658:
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
        cmp     word ptr [bp + 8], 8            ; 83 7E 08 08
        jne     L_0673                          ; 75 07
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
        jmp     L_06A5                          ; EB 32
;   [conditional branch target (if/else)] L_0673
L_0673:
        cmp     word ptr [bp + 8], 0x10         ; 83 7E 08 10
        jge     L_0680                          ; 7D 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_06A5                          ; EB 25
;   [conditional branch target (if/else)] L_0680
L_0680:
        cmp     word ptr [bp + 8], 0x20         ; 83 7E 08 20
        jge     L_068D                          ; 7D 07
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_06A5                          ; EB 18
;   [conditional branch target (if/else)] L_068D
L_068D:
        cmp     word ptr [bp + 8], 0x28         ; 83 7E 08 28
        jge     L_069A                          ; 7D 07
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_06A5                          ; EB 0B
;   [conditional branch target (if/else)] L_069A
L_069A:
        cmp     word ptr [bp + 8], 0x30         ; 83 7E 08 30
        jge     L_06A5                          ; 7D 05
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
;   [branch target] L_06A5
L_06A5:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 1]      ; 8A 40 01
        sub     ah, ah                          ; 2A E4
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
