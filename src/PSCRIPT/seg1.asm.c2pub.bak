; ======================================================================
; PSCRIPT / seg1.asm   (segment 1 of PSCRIPT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        41
; Total instructions:                 3259
; 
; Classification (pass8):
;   C-origin (high+medium):             39
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     19 (13 unique)
;   Top:
;        3  FINDRESOURCE
;        2  FREERESOURCE
;        2  GLOBALUNLOCK
;        2  LOADRESOURCE
;        2  LOCKRESOURCE
;        1  SETRECTEMPTY
;        1  SIZEOFRESOURCE
;        1  GETPROFILESTRING
; ======================================================================
; AUTO-GENERATED from original PSCRIPT segment 1
; segment_size=17452 bytes, flags=0x1d70
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PSCRIPT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 7                           ; 3D 07 00
        jg      L_0085                          ; 7F 70
        cmp     ax, 6                           ; 3D 06 00
        jge     L_0021                          ; 7D 07
        cmp     ax, 4                           ; 3D 04 00
        je      L_0071                          ; 74 52
        jmp     L_0030                          ; EB 0F
;   [loop start (also forward branch)] L_0021
L_0021:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
;   [loop start] L_002D
L_002D:
        call    L_2252                          ; E8 22 22
;   [loop start (also forward branch)] L_0030
L_0030:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        jne     L_003B                          ; 75 03
        jmp     L_00D0                          ; E9 95 00
;   [conditional branch target (if/else)] L_003B
L_003B:
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        jne     L_00B1                          ; 75 70
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr es:[bx + 6], 1         ; 26 C7 47 06 01 00
        mov     word ptr es:[bx + 8], 1         ; 26 C7 47 08 01 00
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    es                              ; 06
        push    bx                              ; 53
        cmp     word ptr [bp + 0x1c], 6         ; 83 7E 1C 06
        je      L_0096                          ; 74 2A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0098                          ; EB 27
;   [loop start (also forward branch)] L_0071
L_0071:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 4], 1         ; 26 83 7F 04 01
        je      L_0030                          ; 74 B5
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    es                              ; 06
        push    bx                              ; 53
        jmp     L_002D                          ; EB A8
;   [conditional branch target (if/else)] L_0085
L_0085:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0071                          ; 74 E7
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_0071                          ; 74 E2
        cmp     ax, 0x17                        ; 3D 17 00
        je      L_0021                          ; 74 8D
        jmp     L_0030                          ; EB 9A
;   [conditional branch target (if/else)] L_0096
L_0096:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0098
L_0098:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_237B                          ; E8 DD 22
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_00D0                          ; EB 1F
;   [conditional branch target (if/else)] L_00B1
L_00B1:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        cmp     word ptr [bp + 0x1c], 6         ; 83 7E 1C 06
        je      L_00C8                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_00CA                          ; EB 02
;   [conditional branch target (if/else)] L_00C8
L_00C8:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00CA
L_00CA:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_237B                          ; E8 AB 22
;   [unconditional branch target] L_00D0
L_00D0:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED0                          ; E8 EF 0D
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        sub     ax, 3                           ; 2D 03 00
        cmp     ax, 0x14                        ; 3D 14 00
        jbe     L_00EF                          ; 76 03
        jmp     L_01DE                          ; E9 EF 00
;   [conditional branch target (if/else)] L_00EF
L_00EF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1b4]        ; 2E FF A7 B4 01
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1E10                          ; E8 02 1D
        jmp     L_01DE                          ; E9 CD 00
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F84                          ; E8 5F 1E
        jmp     L_01DE                          ; E9 B6 00
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F12                          ; E8 D6 1D
        jmp     L_01DE                          ; E9 9F 00
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_015B                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_015D                          ; EB 02
;   [conditional branch target (if/else)] L_015B
L_015B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_015D
L_015D:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1FCA                          ; E8 67 1E
        jmp     L_01DE                          ; EB 79
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2046                          ; E8 CD 1E
        jmp     L_01DE                          ; EB 63
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 4], 1         ; 26 83 7F 04 01
        jne     L_019B                          ; 75 16
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CA5                          ; E8 0C 1B
        jmp     L_01DE                          ; EB 43
;   [conditional branch target (if/else)] L_019B
L_019B:
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D22                          ; E8 70 1B
        jmp     L_01DE                          ; EB 2A
        test    word ptr [bx + si], 0x13f       ; F7 00 3F 01
        fiadd   word ptr [bx + di]              ; DE 01
        add     word ptr gs:[bx + si], bp       ; 65 01 28
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     si, bx                          ; 01 DE
        add     word ptr [di - 0x21ff], ax      ; 01 85 01 DE
        add     word ptr [bp + di + 1], di      ; 01 7B 01
        fiadd   word ptr [bx + di]              ; DE 01
        jnp     L_01DD                          ; 7B 01
        adc     word ptr [bx + di], ax          ; 11 01
;   [unconditional branch target] L_01DE
L_01DE:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED0                          ; E8 E3 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_025D                          ; 74 4D
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1978                          ; E8 59 17
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_197F                          ; E8 51 17
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CA5                          ; E8 4A 1A
        jmp     L_0265                          ; EB 08
;   [conditional branch target (if/else)] L_025D
L_025D:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
;   [unconditional branch target] L_0265
L_0265:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_02B0                          ; 74 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
;   [conditional branch target (if/else)] L_02B0
L_02B0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
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
        sub     sp, 0x1e                        ; 83 EC 1E
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 1                           ; 3D 01 00
        je      L_02EB                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        je      L_033F                          ; 74 5F
;   [loop start] L_02E0
L_02E0:
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
;   [loop start] L_02E5
L_02E5:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_03E9                          ; E9 FE 00
;   [conditional branch target (if/else)] L_02EB
L_02EB:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_02FF
L_02FF:
        cmp     word ptr [bp - 0xc], 5          ; 83 7E F4 05
        jae     L_02E0                          ; 73 DB
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_030A
L_030A:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x10]        ; 8B 87 10 00
        mov     dx, word ptr [bx + 0x12]        ; 8B 97 12 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        or      ax, ax                          ; 0B C0
        je      L_02E5                          ; 74 B4
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 2         ; 83 7E F0 02
        jl      L_030A                          ; 7C D0
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_02FF                          ; EB C0
;   [conditional branch target (if/else)] L_033F
L_033F:
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        or      ax, ax                          ; 0B C0
        jne     L_036A                          ; 75 03
        jmp     L_02E5                          ; E9 7B FF
;   [conditional branch target (if/else)] L_036A
L_036A:
        mov     word ptr [bp - 0x1e], 2         ; C7 46 E2 02 00
        mov     word ptr [bp - 0x1c], 0xffff    ; C7 46 E4 FF FF
        mov     word ptr [bp - 0x1a], 0xffff    ; C7 46 E6 FF FF
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_039E                          ; EB 18
;   [loop start] L_0386
L_0386:
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        or      ax, ax                          ; 0B C0
        jne     L_039B                          ; 75 03
        jmp     L_02E5                          ; E9 4A FF
;   [conditional branch target (if/else)] L_039B
L_039B:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
;   [unconditional branch target] L_039E
L_039E:
        cmp     word ptr [bp - 0x18], 5         ; 83 7E E8 05
        jb      L_0386                          ; 72 E2
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_03AE
L_03AE:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x10]        ; 8B 87 10 00
        mov     dx, word ptr [bx + 0x12]        ; 8B 97 12 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        or      ax, ax                          ; 0B C0
        jne     L_03D8                          ; 75 03
        jmp     L_02E5                          ; E9 0D FF
;   [conditional branch target (if/else)] L_03D8
L_03D8:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 2         ; 83 7E F0 02
        jl      L_03AE                          ; 7C CD
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        jmp     L_02E0                          ; E9 F7 FE
;   [unconditional branch target] L_03E9
L_03E9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        je      L_0415                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0432                          ; 74 24
        cmp     ax, 3                           ; 3D 03 00
        je      L_0449                          ; 74 36
        jmp     L_042D                          ; EB 18
;   [conditional branch target (if/else)] L_0415
L_0415:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_14F7                          ; E8 CD 10
;   [loop start] L_042A
L_042A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_042D
L_042D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0468                          ; EB 36
;   [conditional branch target (if/else)] L_0432
L_0432:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_153E                          ; E8 F7 10
        jmp     L_042A                          ; EB E1
;   [conditional branch target (if/else)] L_0449
L_0449:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A2D                          ; E8 C7 05
        jmp     L_042A                          ; EB C2
;   [unconditional branch target] L_0468
L_0468:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Mixed routine using: SETRECTEMPTY.

;-------------------------------------------------------------------------
; sub_0473   offset=0x0473  size=192 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=1)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   SETRECTEMPTY
;
; Near calls (internal): L_0473, L_1986, L_1AE0, L_1B81, L_2448, L_2512, L_2551
;-------------------------------------------------------------------------
;   [sub-routine] L_0473
L_0473:
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
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_048F                          ; 76 03
        jmp     L_0621                          ; E9 92 01
;   [conditional branch target (if/else)] L_048F
L_048F:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x625]        ; 2E FF A7 25 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_04F6                          ; 7C 4A
        cmp     word ptr es:[bx + 0x4c], 0      ; 26 83 7F 4C 00
        jne     L_04D7                          ; 75 24
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x40]     ; 26 8B 47 40
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x4c], 1      ; 26 C7 47 4C 01 00
        jmp     L_04F1                          ; EB 1A
;   [conditional branch target (if/else)] L_04D7
L_04D7:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x4c], 0      ; 26 C7 47 4C 00 00
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0473                          ; E8 82 FF
;   [loop start (also forward branch)] L_04F1
L_04F1:
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        jmp     L_054F                          ; EB 59
;   [conditional branch target (if/else)] L_04F6
L_04F6:
        mov     si, 0xffff                      ; BE FF FF
        jmp     L_054F                          ; EB 54
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_1B81                          ; E8 7D 16
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jle     L_0513                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0516                          ; EB 03
;   [conditional branch target (if/else)] L_0513
L_0513:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_0516
L_0516:
        mov     si, ax                          ; 8B F0
        jmp     L_054F                          ; EB 35
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_052B                          ; 76 03
        jmp     L_0621                          ; E9 F6 00
;   [conditional branch target (if/else)] L_052B
L_052B:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x533]        ; 2E FF A7 33 05
        dec     di                              ; 4F
        add     ax, 0x54f                       ; 05 4F 05
        dec     di                              ; 4F
        add     ax, 0x621                       ; 05 21 06
        and     word ptr [0x54f], ax            ; 21 06 4F 05
        and     word ptr [0x54f], ax            ; 21 06 4F 05
        and     word ptr [0x54f], ax            ; 21 06 4F 05
        dec     di                              ; 4F
        add     ax, 0x54f                       ; 05 4F 05
        dec     di                              ; 4F
        add     ax, 0x621                       ; 05 21 06
;   [loop start (also forward branch)] L_054F
L_054F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0644                          ; E9 EF 00
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_2551                          ; E8 F3 1F
        jmp     L_054F                          ; EB EF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_057B                          ; 7C 11
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0473                          ; E8 F8 FE
;   [conditional branch target (if/else)] L_057B
L_057B:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2448                          ; E8 BE 1E
        or      ax, ax                          ; 0B C0
        jge     L_0591                          ; 7D 03
        mov     si, 0xffff                      ; BE FF FF
;   [conditional branch target (if/else)] L_0591
L_0591:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_1986                          ; E8 EC 13
        jmp     L_04F1                          ; E9 54 FF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x26], 0      ; 26 83 7F 26 00
        je      L_05B8                          ; 74 11
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0473                          ; E8 BB FE
;   [conditional branch target (if/else)] L_05B8
L_05B8:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_1AE0                          ; E8 1F 15
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_2512                          ; E8 48 1F
        jmp     L_04F1                          ; E9 24 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], ax     ; 26 89 47 28
        jmp     L_04F1                          ; E9 14 FF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x40]     ; 26 8B 47 40
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        jmp     L_0607                          ; EB 14
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x48]     ; 26 8B 47 48
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x4a]     ; 26 8B 47 4A
;   [unconditional branch target] L_0607
L_0607:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_054F                          ; E9 3E FF
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, 2                           ; B8 02 00
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_054F                          ; E9 2E FF
;   [unconditional branch target] L_0621
L_0621:
        sub     ax, ax                          ; 2B C0
        jmp     L_0644                          ; EB 1F
        sti                                     ; FB
        add     al, 0xb8                        ; 04 B8
        add     ax, 0x497                       ; 05 97 04
        and     word ptr [0x621], ax            ; 21 06 21 06
        push    bp                              ; 55
        add     ax, 0x621                       ; 05 21 06
        sbb     al, byte ptr [di]               ; 1A 05
        int     5                               ; CD 05
        pushaw                                  ; 60
        add     ax, 0x59d                       ; 05 9D 05
        fld     qword ptr [di]                  ; DD 05
        add     ax, 0x611                       ; F3 05 11 06
        jmp     L_054F                          ; E9 0B FF
;   [unconditional branch target] L_0644
L_0644:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0655   offset=0x0655  size=74 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Near calls (internal): L_1816
;-------------------------------------------------------------------------
;   [sub-routine] L_0655
L_0655:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0665                          ; 75 03
        jmp     L_06F8                          ; E9 93 00
;   [conditional branch target (if/else)] L_0665
L_0665:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_0689                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0689
L_0689:
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jge     L_06A1                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_06A1
L_06A1:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 66 11
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     cx, 0x3e8                       ; B9 E8 03
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 55 11
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 41 11
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     cx, 0x3e8                       ; B9 E8 03
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 30 11
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [unconditional branch target] L_06F8
L_06F8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: FINDRESOURCE, FREERESOURCE, GLOBALUNLOCK (+2 more).

;-------------------------------------------------------------------------
; sub_0703   offset=0x0703  size=298 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   FINDRESOURCE
;   FREERESOURCE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADRESOURCE
;   LOCKRESOURCE
;
; Near calls (internal): L_0CA8, L_1364, L_18AC, L_1913
;-------------------------------------------------------------------------
;   [sub-routine] L_0703
L_0703:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        cdq                                     ; 99
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A AC 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_0730                          ; 75 06
;   [loop start] L_072A
L_072A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0882                          ; E9 52 01
;   [conditional branch target (if/else)] L_0730
L_0730:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOADRESOURCE         ; 9A C8 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        je      L_072A                          ; 74 E4
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A D6 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        les     bx, ptr [bp - 4]                ; C4 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_0864                          ; E9 EE 00
;   [loop start] L_0776
L_0776:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 E9 10
        or      ax, ax                          ; 0B C0
        jne     L_07CB                          ; 75 04
        add     word ptr [bp - 0x14], 0x20      ; 83 46 EC 20
;   [conditional branch target (if/else)] L_07CB
L_07CB:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        jne     L_07E8                          ; 75 13
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_07F9                          ; 75 17
        add     word ptr [bp - 0x14], 0x10      ; 83 46 EC 10
        jmp     L_07F9                          ; EB 11
;   [conditional branch target (if/else)] L_07E8
L_07E8:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 3                           ; 24 03
        cmp     al, 2                           ; 3C 02
        jne     L_07F9                          ; 75 04
        add     word ptr [bp - 0x14], 8         ; 83 46 EC 08
;   [branch target] L_07F9
L_07F9:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xfe                        ; 24 FE
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     cl, byte ptr es:[bx + 0x18]     ; 26 8A 4F 18
        and     cl, 0xfe                        ; 80 E1 FE
        cmp     al, cl                          ; 3A C1
        jne     L_0814                          ; 75 04
        add     word ptr [bp - 0x14], 4         ; 83 46 EC 04
;   [conditional branch target (if/else)] L_0814
L_0814:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x2bc     ; 26 81 7F 08 BC 02
        jl      L_082E                          ; 7C 0F
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     word ptr es:[bx + 0x11], 0x2bc  ; 26 81 7F 11 BC 02
        jl      L_082E                          ; 7C 04
        add     word ptr [bp - 0x14], 2         ; 83 46 EC 02
;   [conditional branch target (if/else)] L_082E
L_082E:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        test    byte ptr es:[bx + 0xa], 1       ; 26 F6 47 0A 01
        je      L_0845                          ; 74 0D
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        test    byte ptr es:[bx + 0xe], 1       ; 26 F6 47 0E 01
        je      L_0845                          ; 74 03
        inc     word ptr [bp - 0x14]            ; FF 46 EC
;   [conditional branch target (if/else)] L_0845
L_0845:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_085B                          ; 74 0E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_0861                          ; 7E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
;   [conditional branch target (if/else)] L_085B
L_085B:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [conditional branch target (if/else)] L_0861
L_0861:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [unconditional branch target] L_0864
L_0864:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_086F                          ; 7D 03
        jmp     L_0776                          ; E9 07 FF
;   [conditional branch target (if/else)] L_086F
L_086F:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
;   [fall-through exit] L_0882
L_0882:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa6                        ; 81 EC A6 00
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        cdq                                     ; 99
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        or      ax, ax                          ; 0B C0
        jne     L_08BD                          ; 75 06
;   [loop start] L_08B7
L_08B7:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A22                          ; E9 65 01
;   [conditional branch target (if/else)] L_08BD
L_08BD:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr [bp - 0x7a]            ; FF 76 86
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        or      ax, ax                          ; 0B C0
        je      L_08B7                          ; 74 E3
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        les     bx, ptr [bp - 6]                ; C4 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        mov     word ptr [bp - 0xa6], 0         ; C7 86 5A FF 00 00
;   [loop start] L_08F8
L_08F8:
        mov     ax, word ptr [bp - 0x78]        ; 8B 46 88
        cmp     word ptr [bp - 0xa6], ax        ; 39 86 5A FF
        jl      L_0904                          ; 7C 03
        jmp     L_0A04                          ; E9 00 01
;   [conditional branch target (if/else)] L_0904
L_0904:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x40], dx        ; 89 56 C0
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_094D                          ; 74 1D
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 66 0F
        or      ax, ax                          ; 0B C0
        je      L_094D                          ; 74 03
        jmp     L_0A1B                          ; E9 CE 00
;   [conditional branch target (if/else)] L_094D
L_094D:
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    word ptr [bp - 0x42]            ; FF 76 BE
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 B2 0F
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1364                          ; E8 F0 09
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0CA8                          ; E8 23 03
        les     bx, ptr [bp - 0x42]             ; C4 5E BE
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        mov     word ptr [bp - 0xa0], dx        ; 89 96 60 FF
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ss           ; 8C 56 F8
        mov     word ptr [bp - 0x9c], 0x1f      ; C7 86 64 FF 1F 00
;   [loop start] L_09A7
L_09A7:
        les     bx, ptr [bp - 0xa2]             ; C4 9E 5E FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_09CC                          ; 74 1B
        inc     word ptr [bp - 0xa2]            ; FF 86 5E FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        dec     word ptr [bp - 0x9c]            ; FF 8E 64 FF
        cmp     word ptr [bp - 0x9c], 0         ; 83 BE 64 FF 00
        jg      L_09A7                          ; 7F DB
;   [conditional branch target (if/else)] L_09CC
L_09CC:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        lea     ax, [bp - 0x76]                 ; 8D 46 8A
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0CA8                          ; E8 C3 02
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0A1B                          ; 75 17
;   [unconditional branch target] L_0A04
L_0A04:
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A CF 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        call    far KERNEL.FREERESOURCE         ; 9A D7 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_0A22                          ; EB 07
;   [branch target] L_0A1B
L_0A1B:
        inc     word ptr [bp - 0xa6]            ; FF 86 5A FF
        jmp     L_08F8                          ; E9 D6 FE
;   [unconditional branch target] L_0A22
L_0A22:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; Description (heuristic):
;   Mixed routine using: FINDRESOURCE, FREERESOURCE, GLOBALUNLOCK (+3 more).

;-------------------------------------------------------------------------
; sub_0A2D   offset=0x0A2D  size=229 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   FINDRESOURCE
;   FREERESOURCE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADRESOURCE
;   LOCKRESOURCE
;   SIZEOFRESOURCE
;
; Near calls (internal): L_0703, L_0CA8, L_1364, L_1816, L_1913
;-------------------------------------------------------------------------
;   [sub-routine] L_0A2D
L_0A2D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0703                          ; E8 BA FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 1F 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0A6D                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0C9D                          ; E9 30 02
;   [conditional branch target (if/else)] L_0A6D
L_0A6D:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        add     ax, 0x60                        ; 05 60 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_0A8D                          ; 75 03
        jmp     L_0C9A                          ; E9 0D 02
;   [conditional branch target (if/else)] L_0A8D
L_0A8D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_0A9E
L_0A9E:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     word ptr [bp - 0xe], 0x94       ; 81 7E F2 94 00
        jl      L_0A9E                          ; 7C EC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.LOADRESOURCE         ; 9A 3B 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_0AD8                          ; 75 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C9D                          ; E9 C5 01
;   [conditional branch target (if/else)] L_0AD8
L_0AD8:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far KERNEL.LOCKRESOURCE         ; 9A 48 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 1C 0E
        add     word ptr [bp - 0x16], 0x34      ; 83 46 EA 34
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x82                        ; 05 82 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 FF 0D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x82                        ; 05 82 00
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        cdq                                     ; 99
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x23], ax     ; 26 89 47 23
        mov     word ptr es:[bx + 0x25], dx     ; 26 89 57 25
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x62                        ; 05 62 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, bx                          ; 8B C3
        add     ax, 0x62                        ; 05 62 00
        sub     ax, bx                          ; 2B C3
        cdq                                     ; 99
        mov     word ptr es:[bx + 0x27], ax     ; 26 89 47 27
        mov     word ptr es:[bx + 0x29], dx     ; 26 89 57 29
;   [loop start] L_0B49
L_0B49:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_0B49                          ; 75 EA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x42                        ; 05 42 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [loop start] L_0B6E
L_0B6E:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_0B6E                          ; 75 EA
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0BCB                          ; 74 3D
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x92                        ; 05 92 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0BBD                          ; EB 17
;   [loop start] L_0BA6
L_0BA6:
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        add     word ptr [bp - 0x16], 2         ; 83 46 EA 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     word ptr [bp - 0xe]             ; FF 46 F2
;   [unconditional branch target] L_0BBD
L_0BBD:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jae     L_0BA6                          ; 73 DB
;   [conditional branch target (if/else)] L_0BCB
L_0BCB:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 73 08 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far KERNEL.FREERESOURCE         ; 9A 7B 08 00 00 [FIXUP]
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1364                          ; E8 6C 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0C48                          ; 74 46
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x92                        ; 05 92 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        sub     ah, ah                          ; 2A E4
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        sub     ax, cx                          ; 2B C1
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0C43                          ; EB 20
;   [loop start] L_0C23
L_0C23:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        push    word ptr es:[bx]                ; 26 FF 37
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 DD 0B
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     word ptr es:[bx], ax            ; 26 89 07
        add     word ptr [bp - 0x12], 2         ; 83 46 EE 02
;   [unconditional branch target] L_0C43
L_0C43:
        dec     word ptr [bp - 4]               ; FF 4E FC
        jns     L_0C23                          ; 79 DB
;   [conditional branch target (if/else)] L_0C48
L_0C48:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x3a], 0      ; 26 C7 47 3A 00 00
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        add     word ptr [0x24], 1              ; 83 06 24 00 01
        adc     word ptr [0x26], 0              ; 83 16 26 00 00
        mov     ax, word ptr [0x24]             ; A1 24 00
        mov     dx, word ptr [0x26]             ; 8B 16 26 00
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + 0xf], al      ; 26 88 47 0F
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        push    es                              ; 06
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0CA8                          ; E8 0E 00
;   [unconditional branch target] L_0C9A
L_0C9A:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
;   [unconditional branch target] L_0C9D
L_0C9D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; Description (heuristic):
;   Pure computation / dispatcher (154 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0CA8   offset=0x0CA8  size=154 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0CA8
L_0CA8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jne     L_0CB5                          ; 75 03
        jmp     L_0D59                          ; E9 A4 00
;   [conditional branch target (if/else)] L_0CB5
L_0CB5:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0CBD                          ; 75 03
        jmp     L_0DD1                          ; E9 14 01
;   [conditional branch target (if/else)] L_0CBD
L_0CBD:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0CC5                          ; 74 03
        jmp     L_0ECA                          ; E9 05 02
;   [conditional branch target (if/else)] L_0CC5
L_0CC5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x13]     ; 26 8A 47 13
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xd], al      ; 26 88 47 0D
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 2      ; 26 C6 47 10 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        inc     al                              ; FE C0
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        jmp     L_0ECA                          ; E9 71 01
;   [unconditional branch target] L_0D59
L_0D59:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 0       ; 26 C7 47 0F 00 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_0ECA                          ; E9 F9 00
;   [unconditional branch target] L_0DD1
L_0DD1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x1b]     ; 26 8B 47 1B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x13], al     ; 26 88 47 13
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x14], al     ; 26 88 47 14
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x15], al     ; 26 88 47 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x16], al     ; 26 88 47 16
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x13]     ; 26 8A 47 13
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x18], al     ; 26 88 47 18
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x5a0  ; 26 C7 47 1B A0 05
        mov     word ptr es:[bx + 0x1d], 0x5a0  ; 26 C7 47 1D A0 05
;   [fall-through exit] L_0ECA
L_0ECA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (59 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0ED0   offset=0x0ED0  size=59 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_0ED0
L_0ED0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0F3C                          ; 74 5A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jg      L_0F0F                          ; 7F 24
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jg      L_0F0F                          ; 7F 1D
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x44], ax     ; 26 39 47 44
        jg      L_0F0F                          ; 7F 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        jle     L_0F5C                          ; 7E 4D
;   [conditional branch target (if/else)] L_0F0F
L_0F0F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x28                        ; B8 28 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 6B 16
        add     sp, 0x10                        ; 83 C4 10
        mov     word ptr [0x4e], 1              ; C7 06 4E 00 01 00
        jmp     L_0F5C                          ; EB 20
;   [conditional branch target (if/else)] L_0F3C
L_0F3C:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0F5C                          ; 74 19
        mov     ax, 0x43                        ; B8 43 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 49 16
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [0x4e], 0              ; C7 06 4E 00 00 00
;   [branch target] L_0F5C
L_0F5C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (58 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F67   offset=0x0F67  size=58 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F67
L_0F67:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_0F7C                          ; 7D 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
;   [conditional branch target (if/else)] L_0F7C
L_0F7C:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0FA0                          ; 74 0D
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x92                        ; 05 92 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [conditional branch target (if/else)] L_0FA0
L_0FA0:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0FF9                          ; EB 4D
;   [loop start] L_0FAC
L_0FAC:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        inc     word ptr [bp + 0xe]             ; FF 46 0E
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        ja      L_0FF6                          ; 77 30
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jb      L_0FF6                          ; 72 27
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0FEC                          ; 74 16
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     al, byte ptr es:[si + 0x1d]     ; 26 8A 44 1D
        sub     bx, ax                          ; 2B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        jmp     L_0FF3                          ; EB 07
;   [conditional branch target (if/else)] L_0FEC
L_0FEC:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
;   [unconditional branch target] L_0FF3
L_0FF3:
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
;   [conditional branch target (if/else)] L_0FF6
L_0FF6:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0FF9
L_0FF9:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0FAC                          ; 7C AB
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
; Description (heuristic):
;   Pure computation / dispatcher (325 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_100B   offset=0x100B  size=325 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0655, L_0ED0, L_0F67, L_100B, L_1816, L_1BB6, L_259C, L_40B5
;-------------------------------------------------------------------------
;   [sub-routine] L_100B
L_100B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_1024                          ; 75 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1156                          ; E9 32 01
;   [conditional branch target (if/else)] L_1024
L_1024:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_102F                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1031                          ; EB 02
;   [conditional branch target (if/else)] L_102F
L_102F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1031
L_1031:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_104C                          ; 74 14
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        jmp     L_1054                          ; EB 08
;   [conditional branch target (if/else)] L_104C
L_104C:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
;   [unconditional branch target] L_1054
L_1054:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0F67                          ; E8 FB FE
        cdq                                     ; 99
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_10E7                          ; 74 53
        or      ax, ax                          ; 0B C0
        je      L_10E7                          ; 74 4F
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_10E2                          ; EB 3A
;   [loop start] L_10A8
L_10A8:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0x20], al     ; 26 38 47 20
        jne     L_10E2                          ; 75 28
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_10E2                          ; 74 22
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_10E2                          ; 7F 09
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
;   [branch target] L_10E2
L_10E2:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
        jns     L_10A8                          ; 79 C1
;   [conditional branch target (if/else)] L_10E7
L_10E7:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_1140                          ; 74 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1BB6                          ; E8 BA 0A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_111B                          ; 74 19
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x50                        ; B8 50 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 84 14
        add     sp, 0xc                         ; 83 C4 0C
;   [conditional branch target (if/else)] L_111B
L_111B:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        mov     ax, 0x62                        ; B8 62 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 5F 14
        add     sp, 0x14                        ; 83 C4 14
;   [conditional branch target (if/else)] L_1140
L_1140:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
        adc     word ptr [bp - 0x1c], dx        ; 11 56 E4
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
;   [unconditional branch target] L_1156
L_1156:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1a                            ; CA 1A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_118D                          ; 74 16
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     dx, word ptr es:[bx + 0xa]      ; 26 8B 57 0A
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        mov     word ptr es:[bx + 0x3c], dx     ; 26 89 57 3C
;   [conditional branch target (if/else)] L_118D
L_118D:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        jne     L_11AB                          ; 75 14
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 6E 06
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
;   [conditional branch target (if/else)] L_11AB
L_11AB:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jl      L_11BE                          ; 7C 0D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        cmp     al, 0x50                        ; 3C 50
        jne     L_11ED                          ; 75 2F
;   [conditional branch target (if/else)] L_11BE
L_11BE:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_100B                          ; E8 21 FE
        jmp     L_1343                          ; E9 56 01
;   [conditional branch target (if/else)] L_11ED
L_11ED:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1BB6                          ; E8 BA 09
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED0                          ; E8 BE FC
;   [loop start] L_1212
L_1212:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_12ED                          ; E9 C7 00
;   [loop start] L_1226
L_1226:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        call    L_40B5                          ; E8 7D 2E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        or      ax, dx                          ; 0B C2
        jne     L_1245                          ; 75 03
        jmp     L_12EA                          ; E9 A5 00
;   [conditional branch target (if/else)] L_1245
L_1245:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_1263                          ; 74 14
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        sub     ah, ah                          ; 2A E4
        sub     si, ax                          ; 2B F0
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr es:[bx + si + 0x92] ; 26 8B 80 92 00
        jmp     L_126A                          ; EB 07
;   [conditional branch target (if/else)] L_1263
L_1263:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
;   [unconditional branch target] L_126A
L_126A:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lcall   [bp - 0x12]                     ; FF 5E EE
        or      ax, ax                          ; 0B C0
        je      L_12EA                          ; 74 5F
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_100B                          ; E8 50 FD
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lcall   [bp - 0x12]                     ; FF 5E EE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        jmp     L_1212                          ; E9 28 FF
;   [branch target] L_12EA
L_12EA:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_12ED
L_12ED:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
        js      L_12F5                          ; 78 03
        jmp     L_1226                          ; E9 31 FF
;   [conditional branch target (if/else)] L_12F5
L_12F5:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x14]        ; 03 46 EC
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_100B                          ; E8 E6 FC
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ED0                          ; E8 99 FB
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
;   [unconditional branch target] L_1343
L_1343:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0655                          ; E8 00 F3
        add     sp, 6                           ; 83 C4 06
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; Description (heuristic):
;   Pure computation / dispatcher (38 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1364   offset=0x1364  size=38 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_1816
;-------------------------------------------------------------------------
;   [sub-routine] L_1364
L_1364:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_1375                          ; 7C 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_137A                          ; EB 05
;   [conditional branch target (if/else)] L_1375
L_1375:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_137A
L_137A:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_1388                          ; 7C 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_138D                          ; EB 05
;   [conditional branch target (if/else)] L_1388
L_1388:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_138D
L_138D:
        mov     word ptr [bp + 8], ax           ; 89 46 08
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_13AD                          ; 75 17
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 6C 04
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [conditional branch target (if/else)] L_13AD
L_13AD:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_13C7                          ; 74 09
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_1424                          ; 75 60
        push    ax                              ; 50
        jmp     L_1414                          ; EB 4D
; Description (heuristic):
;   Internal helper (19 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_13C7   offset=0x13C7  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_1816
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_13C7
L_13C7:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x2d0                       ; B8 D0 02
        push    ax                              ; 50
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 3C 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0x62                        ; 3D 62 00
        jl      L_13F7                          ; 7C 15
        cmp     ax, 0x66                        ; 3D 66 00
        jg      L_13F7                          ; 7F 10
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        mov     ax, 0x48                        ; B8 48 00
        jmp     L_1401                          ; EB 0A
; Description (heuristic):
;   Pure computation / dispatcher (99 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13F7   offset=0x13F7  size=99 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1631, L_1816
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_13F7
L_13F7:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x7d                        ; B8 7D 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
;   [unconditional branch target] L_1401
L_1401:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 0F 04
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_1424                          ; 75 14
        push    ax                              ; 50
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
;   [unconditional branch target] L_1414
L_1414:
        push    word ptr es:[bx + 0x1b]         ; 26 FF 77 1B
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 F5 03
        mov     word ptr [bp + 8], ax           ; 89 46 08
;   [conditional branch target (if/else)] L_1424
L_1424:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr es:[bx + 0x1b]         ; 26 FF 77 1B
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 D8 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 C9 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 B3 03
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 80 03
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        call    L_1631                          ; E8 85 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 57 03
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        push    word ptr es:[bx + 0x1b]         ; 26 FF 77 1B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 40 03
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x1b], ax     ; 26 89 47 1B
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_14F1                          ; 74 0E
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
;   [error/early exit] L_14F1
L_14F1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_14F7   offset=0x14F7  size=28 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1913
;-------------------------------------------------------------------------
;   [sub-routine] L_14F7
L_14F7:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_1535                          ; 74 33
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [0x76], 1              ; 83 06 76 00 01
        adc     word ptr [0x78], 0              ; 83 16 78 00 00
        mov     ax, word ptr [0x76]             ; A1 76 00
        mov     dx, word ptr [0x78]             ; 8B 16 78 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 DE 03
;   [error/early exit] L_1535
L_1535:
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (86 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_153E   offset=0x153E  size=86 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1913
;-------------------------------------------------------------------------
;   [sub-routine] L_153E
L_153E:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        jne     L_1550                          ; 75 03
        jmp     L_1627                          ; E9 D7 00
;   [conditional branch target (if/else)] L_1550
L_1550:
        add     word ptr [0x7a], 1              ; 83 06 7A 00 01
        adc     word ptr [0x7c], 0              ; 83 16 7C 00 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0x7a]             ; A1 7A 00
        mov     dx, word ptr [0x7c]             ; 8B 16 7C 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 90 03
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx], 3             ; 26 83 3F 03
        je      L_158F                          ; 74 03
        jmp     L_1627                          ; E9 98 00
;   [conditional branch target (if/else)] L_158F
L_158F:
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     dx, word ptr es:[bx + 4]        ; 26 8B 57 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     byte ptr [bp - 0xc], 1          ; C6 46 F4 01
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_15B7
L_15B7:
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jge     L_1627                          ; 7D 6A
        mov     byte ptr [bp - 2], 0            ; C6 46 FE 00
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_15DF
L_15DF:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     word ptr [bp - 0x10], ax        ; 29 46 F0
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cwde                                    ; 98
        sar     ax, 1                           ; D1 F8
        and     al, 0x7f                        ; 24 7F
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        cwde                                    ; 98
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        test    cx, ax                          ; 85 C1
        je      L_1609                          ; 74 04
        or      byte ptr [bp - 2], 0x80         ; 80 4E FE 80
;   [conditional branch target (if/else)] L_1609
L_1609:
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jl      L_15DF                          ; 7C CD
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si + 0x10], al ; 26 88 40 10
        shl     byte ptr [bp - 0xc], 1          ; D0 66 F4
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_15B7                          ; EB 90
;   [error/early exit] L_1627
L_1627:
        mov     ax, 0x18                        ; B8 18 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1631   offset=0x1631  size=34 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Near calls (internal): L_1816
;-------------------------------------------------------------------------
;   [sub-routine] L_1631
L_1631:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 D0 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_166C                          ; 74 12
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_1666                          ; 74 07
        cmp     ax, 0x30                        ; 3D 30 00
        je      L_1687                          ; 74 23
        jmp     L_168E                          ; EB 28
;   [conditional branch target (if/else)] L_1666
L_1666:
        cmp     word ptr [bp - 4], 0xc          ; 83 7E FC 0C
        jg      L_1673                          ; 7F 07
;   [conditional branch target (if/else)] L_166C
L_166C:
        mov     word ptr [bp - 2], 2            ; C7 46 FE 02 00
        jmp     L_16A1                          ; EB 2E
;   [conditional branch target (if/else)] L_1673
L_1673:
        cmp     word ptr [bp - 4], 0xe          ; 83 7E FC 0E
        jge     L_1680                          ; 7D 07
        mov     word ptr [bp - 2], 3            ; C7 46 FE 03 00
        jmp     L_16A1                          ; EB 21
;   [conditional branch target (if/else)] L_1680
L_1680:
        mov     word ptr [bp - 2], 4            ; C7 46 FE 04 00
        jmp     L_16A1                          ; EB 1A
;   [conditional branch target (if/else)] L_1687
L_1687:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_16A1                          ; EB 13
; Description (heuristic):
;   Pure computation / dispatcher (79 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_168E   offset=0x168E  size=79 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1816, L_4247, L_42EA, L_4316
;-------------------------------------------------------------------------
;   [unconditional branch target] L_168E
L_168E:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 78 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_16A1
L_16A1:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 66 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
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
        call    L_42EA                          ; E8 0E 2C
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
        call    L_4247                          ; E8 47 2B
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
        call    L_4316                          ; E8 F2 2B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: GETPROFILESTRING.

;-------------------------------------------------------------------------
; sub_172F   offset=0x172F  size=95 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   GETPROFILESTRING
;-------------------------------------------------------------------------
;   [sub-routine] L_172F
L_172F:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_1771                          ; 74 2F
        jmp     L_1761                          ; EB 1D
;   [loop start] L_1744
L_1744:
        cmp     byte ptr [bp - 2], 0x3a         ; 80 7E FE 3A
        je      L_1771                          ; 74 27
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1761                          ; 74 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [branch target] L_1761
L_1761:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        or      al, al                          ; 0A C0
        jne     L_1744                          ; 75 D3
;   [conditional branch target (if/else)] L_1771
L_1771:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1783                          ; 74 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [error/early exit] L_1783
L_1783:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_178C
L_178C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, 0x88                        ; B8 88 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7f                        ; B8 7F 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1800                          ; 74 41
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ss           ; 8C 56 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_17F3                          ; EB 20
;   [loop start] L_17D3
L_17D3:
        cmp     byte ptr [bp - 0x10], 0x39      ; 80 7E F0 39
        jg      L_1800                          ; 7F 27
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        add     cx, ax                          ; 03 C8
        sub     cx, 0x30                        ; 83 E9 30
        mov     word ptr [bp - 4], cx           ; 89 4E FC
;   [unconditional branch target] L_17F3
L_17F3:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        cmp     al, 0x30                        ; 3C 30
        jge     L_17D3                          ; 7D D3
;   [conditional branch target (if/else)] L_1800
L_1800:
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_180B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_180D                          ; EB 02
;   [conditional branch target (if/else)] L_180B
L_180B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_180D
L_180D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (70 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1816   offset=0x1816  size=70 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=1)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_42EA, L_43C7
;-------------------------------------------------------------------------
;   [sub-routine] L_1816
L_1816:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_42EA                          ; E8 98 2A
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        and     ch, 0x7f                        ; 80 E5 7F
        sub     bx, bx                          ; 2B DB
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_43C7                          ; E8 5D 2B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
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
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_1892                          ; EB 03
;   [loop start] L_188F
L_188F:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_1892
L_1892:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_188F                          ; 75 F1
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_18AC   offset=0x18AC  size=50 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_18AC
L_18AC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
;   [loop start] L_18B9
L_18B9:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     al, byte ptr es:[bx]            ; 26 3A 07
        je      L_18D5                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_18DD                          ; EB 08
;   [conditional branch target (if/else)] L_18D5
L_18D5:
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        jne     L_18B9                          ; 75 DE
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_18DD
L_18DD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_18E8
L_18E8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
;   [loop start] L_18F2
L_18F2:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_18F2                          ; 75 EA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1913   offset=0x1913  size=50 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1913
L_1913:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        jmp     L_1931                          ; EB 12
;   [loop start] L_191F
L_191F:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1931
L_1931:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jns     L_191F                          ; 79 E9
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_1941
L_1941:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        jmp     L_1965                          ; EB 18
;   [loop start] L_194D
L_194D:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        cmp     byte ptr es:[bx], al            ; 26 38 07
        je      L_1965                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_196D                          ; EB 08
;   [branch target] L_1965
L_1965:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jns     L_194D                          ; 79 E3
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_196D
L_196D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_1978   offset=0x1978  size=4 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1978
L_1978:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_197F   offset=0x197F  size=4 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_197F
L_197F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Reads from file handle.

;-------------------------------------------------------------------------
; sub_1986   offset=0x1986  size=130 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ACCESSRESOURCE
;   FINDRESOURCE
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
;
; Near calls (internal): L_24BE, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1986
L_1986:
        ;   = cProc <138> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x8a                        ; 81 EC 8A 00
        mov     word ptr [0xe2], 0xffff         ; C7 06 E2 00 FF FF
        mov     word ptr [0xe4], 0xffff         ; C7 06 E4 00 FF FF
        mov     word ptr [0xe8], 0xffff         ; C7 06 E8 00 FF FF
        mov     word ptr [0xea], 0xffff         ; C7 06 EA 00 FF FF
        mov     word ptr [0xec], 0xffff         ; C7 06 EC 00 FF FF
        mov     word ptr [0xee], 0xffff         ; C7 06 EE 00 FF FF
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x103                       ; B8 03 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 5D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_19D3                          ; 75 03
        jmp     L_1ADA                          ; E9 07 01
;   [conditional branch target (if/else)] L_19D3
L_19D3:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    ax                              ; 50
        call    far KERNEL.ACCESSRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        or      ax, ax                          ; 0B C0
        jge     L_19EB                          ; 7D 03
        jmp     L_1A6B                          ; E9 80 00
;   [conditional branch target (if/else)] L_19EB
L_19EB:
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8e                        ; B8 8E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 9D 0B
        add     sp, 0xa                         ; 83 C4 0A
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        ;   ^ arg hFile
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A 3E 1A 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1A62                          ; 75 48
        jmp     L_1A5B                          ; EB 3F
;   [loop start] L_1A1C
L_1A1C:
        cmp     word ptr [bp - 0x8a], 0x80      ; 81 BE 76 FF 80 00
        jle     L_1A29                          ; 7E 05
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        jmp     L_1A2D                          ; EB 04
;   [conditional branch target (if/else)] L_1A29
L_1A29:
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
;   [unconditional branch target] L_1A2D
L_1A2D:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        ;   ^ arg hFile
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg wBytes
        ; --> _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_24BE                          ; E8 6A 0A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     word ptr [bp - 0x8a], ax        ; 29 86 76 FF
;   [unconditional branch target] L_1A5B
L_1A5B:
        cmp     word ptr [bp - 0x8a], 0         ; 83 BE 76 FF 00
        jg      L_1A1C                          ; 7F BA
;   [conditional branch target (if/else)] L_1A62
L_1A62:
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1A6B
L_1A6B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_1A83                          ; 74 0C
        cmp     ax, 0x15                        ; 3D 15 00
        je      L_1A98                          ; 74 1C
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_1A9D                          ; 74 1C
        jmp     L_1AA2                          ; EB 1F
;   [conditional branch target (if/else)] L_1A83
L_1A83:
        mov     ax, 0x91                        ; B8 91 00
;   [loop start] L_1A86
L_1A86:
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 09 0B
        add     sp, 8                           ; 83 C4 08
        jmp     L_1AA2                          ; EB 0A
;   [conditional branch target (if/else)] L_1A98
L_1A98:
        mov     ax, 0x99                        ; B8 99 00
        jmp     L_1A86                          ; EB E9
;   [conditional branch target (if/else)] L_1A9D
L_1A9D:
        mov     ax, 0xa0                        ; B8 A0 00
        jmp     L_1A86                          ; EB E4
;   [unconditional branch target] L_1AA2
L_1AA2:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        sub     ax, 0x14                        ; 2D 14 00
        push    ax                              ; 50
        mov     ax, 0xa8                        ; B8 A8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 DB 0A
        add     sp, 0xe                         ; 83 C4 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        mov     ax, 0xbd                        ; B8 BD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 C5 0A
        add     sp, 0xa                         ; 83 C4 0A
;   [fall-through exit] L_1ADA
L_1ADA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1AE0   offset=0x1AE0  size=24 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1AE0
L_1AE0:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xf6                        ; B8 F6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 A9 0A
        add     sp, 8                           ; 83 C4 08
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0xfb                        ; B8 FB 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 92 0A
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (46 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B10   offset=0x1B10  size=46 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1B10
L_1B10:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_1B7B                          ; 74 5D
        jmp     L_1B75                          ; EB 55
;   [loop start] L_1B20
L_1B20:
        cmp     word ptr [bp + 4], 8            ; 83 7E 04 08
        jge     L_1B2B                          ; 7D 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_1B2E                          ; EB 03
;   [conditional branch target (if/else)] L_1B2B
L_1B2B:
        mov     ax, 8                           ; B8 08 00
;   [unconditional branch target] L_1B2E
L_1B2E:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     word ptr [bp + 4], ax           ; 29 46 04
        jmp     L_1B57                          ; EB 21
;   [loop start] L_1B36
L_1B36:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0xfe                        ; B8 FE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 4C 0A
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 6], 4            ; 83 46 06 04
;   [unconditional branch target] L_1B57
L_1B57:
        dec     word ptr [bp - 2]               ; FF 4E FE
        jns     L_1B36                          ; 79 DA
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_1B75                          ; 7E 13
        mov     ax, 0x105                       ; B8 05 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 2A 0A
        add     sp, 8                           ; 83 C4 08
;   [branch target] L_1B75
L_1B75:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_1B20                          ; 7F A5
;   [error/early exit] L_1B7B
L_1B7B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1B81   offset=0x1B81  size=21 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2133, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1B81
L_1B81:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0xf4], 0              ; 83 3E F4 00 00
        je      L_1B94                          ; 74 09
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_2133                          ; E8 9F 05
;   [conditional branch target (if/else)] L_1B94
L_1B94:
        mov     ax, 0x107                       ; B8 07 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 F8 09
        add     sp, 8                           ; 83 C4 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x26], 0      ; 26 C7 47 26 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (92 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1BB6   offset=0x1BB6  size=92 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_20B0, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1BB6
L_1BB6:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xec]             ; A1 EC 00
        mov     dx, word ptr [0xee]             ; 8B 16 EE 00
        cmp     word ptr es:[bx + 0x40], dx     ; 26 39 57 40
        jne     L_1BE6                          ; 75 1A
        cmp     word ptr es:[bx + 0x3e], ax     ; 26 39 47 3E
        jne     L_1BE6                          ; 75 14
        cmp     word ptr es:[bx + 0x40], -1     ; 26 83 7F 40 FF
        je      L_1BDC                          ; 74 03
        jmp     L_1C9F                          ; E9 C3 00
;   [conditional branch target (if/else)] L_1BDC
L_1BDC:
        cmp     word ptr es:[bx + 0x3e], -1     ; 26 83 7F 3E FF
        je      L_1BE6                          ; 74 03
        jmp     L_1C9F                          ; E9 B9 00
;   [conditional branch target (if/else)] L_1BE6
L_1BE6:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        mov     dx, word ptr es:[bx + 0x40]     ; 26 8B 57 40
        mov     word ptr [0xec], ax             ; A3 EC 00
        mov     word ptr [0xee], dx             ; 89 16 EE 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        push    word ptr es:[bx + 0x3a]         ; 26 FF 77 3A
        call    L_20B0                          ; E8 AA 04
        cmp     ax, 0x1f4                       ; 3D F4 01
        jge     L_1C10                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1C12                          ; EB 02
;   [conditional branch target (if/else)] L_1C10
L_1C10:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1C12
L_1C12:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        push    ax                              ; 50
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        push    word ptr es:[bx + 0x3a]         ; 26 FF 77 3A
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        push    ax                              ; 50
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 52 09
        add     sp, 0x18                        ; 83 C4 18
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x42                        ; 05 42 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x127                       ; B8 27 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 34 09
        add     sp, 0xc                         ; 83 C4 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x34], 0xd    ; 26 83 7F 34 0D
        je      L_1C8C                          ; 74 17
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0x12c                       ; B8 2C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 13 09
        add     sp, 0xa                         ; 83 C4 0A
;   [conditional branch target (if/else)] L_1C8C
L_1C8C:
        mov     ax, 0x13e                       ; B8 3E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 00 09
        add     sp, 8                           ; 83 C4 08
;   [fall-through exit] L_1C9F
L_1C9F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (54 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1CA5   offset=0x1CA5  size=54 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1B10, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1CA5
L_1CA5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1D17                          ; 74 5D
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_1D17                          ; 7E 57
        jmp     L_1D11                          ; EB 4F
;   [loop start] L_1CC2
L_1CC2:
        cmp     word ptr [bp + 6], 0x32         ; 83 7E 06 32
        jle     L_1CCD                          ; 7E 05
        mov     ax, 0x32                        ; B8 32 00
        jmp     L_1CD0                          ; EB 03
;   [conditional branch target (if/else)] L_1CCD
L_1CCD:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [unconditional branch target] L_1CD0
L_1CD0:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    L_1B10                          ; E8 2D FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x144                       ; B8 44 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 A6 08
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_1D04                          ; 7E 03
        dec     word ptr [bp - 4]               ; FF 4E FC
;   [conditional branch target (if/else)] L_1D04
L_1D04:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     word ptr [bp + 6], ax           ; 29 46 06
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 8], ax           ; 01 46 08
;   [unconditional branch target] L_1D11
L_1D11:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_1CC2                          ; 7F AB
;   [conditional branch target (if/else)] L_1D17
L_1D17:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (100 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1D22   offset=0x1D22  size=100 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1D22
L_1D22:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        jne     L_1D3A                          ; 75 03
        jmp     L_1E05                          ; E9 CB 00
;   [conditional branch target (if/else)] L_1D3A
L_1D3A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_1D43                          ; 7F 03
        jmp     L_1E05                          ; E9 C2 00
;   [conditional branch target (if/else)] L_1D43
L_1D43:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x154                       ; B8 54 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 3F 08
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 8], 4            ; 83 46 08 04
        dec     word ptr [bp + 6]               ; FF 4E 06
        jmp     L_1DDE                          ; EB 75
;   [loop start] L_1D69
L_1D69:
        cmp     word ptr [bp + 6], 0x32         ; 83 7E 06 32
        jle     L_1D74                          ; 7E 05
        mov     ax, 0x32                        ; B8 32 00
        jmp     L_1D77                          ; EB 03
;   [conditional branch target (if/else)] L_1D74
L_1D74:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [unconditional branch target] L_1D77
L_1D77:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_1DB5                          ; EB 24
;   [loop start] L_1D91
L_1D91:
        sub     word ptr [bp - 6], 4            ; 83 6E FA 04
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x165                       ; B8 65 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 ED 07
        add     sp, 0xc                         ; 83 C4 0C
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_1DB5
L_1DB5:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_1D91                          ; 7C D4
        push    ax                              ; 50
        mov     ax, 0x16c                       ; B8 6C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 CE 07
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     word ptr [bp + 6], ax           ; 29 46 06
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp + 8], ax           ; 01 46 08
;   [unconditional branch target] L_1DDE
L_1DDE:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_1D69                          ; 7F 85
        cmp     word ptr [bp + 0x10], 0x16      ; 83 7E 10 16
        jne     L_1DEF                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1DF1                          ; EB 02
;   [conditional branch target (if/else)] L_1DEF
L_1DEF:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1DF1
L_1DF1:
        push    ax                              ; 50
        mov     ax, 0x17b                       ; B8 7B 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 9A 07
        add     sp, 0xa                         ; 83 C4 0A
;   [unconditional branch target] L_1E05
L_1E05:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (108 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1E10   offset=0x1E10  size=108 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1E10
L_1E10:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_1E28                          ; 75 03
        jmp     L_1F07                          ; E9 DF 00
;   [conditional branch target (if/else)] L_1E28
L_1E28:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_1E51                          ; 74 21
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jl      L_1E43                          ; 7C 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_1E4A                          ; EB 07
;   [conditional branch target (if/else)] L_1E43
L_1E43:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
;   [unconditional branch target] L_1E4A
L_1E4A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jg      L_1E56                          ; 7F 05
;   [conditional branch target (if/else)] L_1E51
L_1E51:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_1E56
L_1E56:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        mov     ax, 0x187                       ; B8 87 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 16 07
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 ED 06
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x195                       ; B8 95 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 CC 06
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x19c                       ; B8 9C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 AB 06
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, 0x1a3                       ; B8 A3 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 98 06
        add     sp, 8                           ; 83 C4 08
;   [unconditional branch target] L_1F07
L_1F07:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1F12   offset=0x1F12  size=55 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1F12
L_1F12:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1F79                          ; 74 55
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x1ab                       ; B8 AB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 5E 06
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 8], 4            ; 83 46 08 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x1b2                       ; B8 B2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 39 06
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, 0x1b9                       ; B8 B9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 26 06
        add     sp, 8                           ; 83 C4 08
;   [conditional branch target (if/else)] L_1F79
L_1F79:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1F84   offset=0x1F84  size=34 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1B10, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1F84
L_1F84:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1FBF                          ; 74 26
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_1B10                          ; E8 64 FB
        mov     ax, 0x1c5                       ; B8 C5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 E0 05
        add     sp, 8                           ; 83 C4 08
;   [conditional branch target (if/else)] L_1FBF
L_1FBF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (53 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1FCA   offset=0x1FCA  size=53 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_1FCA
L_1FCA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        dec     word ptr [bp + 8]               ; FF 4E 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_203B                          ; 7E 5B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_2019                          ; EB 24
;   [loop start] L_1FF5
L_1FF5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x1cd                       ; B8 CD 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 8D 05
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 0xa], 4          ; 83 46 0A 04
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_2019
L_2019:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_1FF5                          ; 7C D4
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x1d4                       ; B8 D4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 64 05
        add     sp, 0xe                         ; 83 C4 0E
;   [conditional branch target (if/else)] L_203B
L_203B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (52 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2046   offset=0x2046  size=52 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_2046
L_2046:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        mov     ax, 0x1ea                       ; B8 EA 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 32 05
        add     sp, 0xc                         ; 83 C4 0C
        add     word ptr [bp + 8], 4            ; 83 46 08 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x1f1                       ; B8 F1 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 0D 05
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, 0x1f8                       ; B8 F8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 FA 04
        add     sp, 8                           ; 83 C4 08
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_20B0   offset=0x20B0  size=69 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_4247, L_42EA, L_43BC
;-------------------------------------------------------------------------
;   [sub-routine] L_20B0
L_20B0:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_42EA                          ; E8 1C 22
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_4247                          ; E8 74 21
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     cl, 8                           ; B1 08
        call    L_43BC                          ; E8 CF 22
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_42EA                          ; E8 F4 21
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_4247                          ; E8 4C 21
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_42EA                          ; E8 D4 21
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_4247                          ; E8 2C 21
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_2133   offset=0x2133  size=19 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_2133
L_2133:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        ; constant WM_LBUTTONDOWN
        mov     ax, 0x201                       ; B8 01 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 56 04
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [0xe8], 0xffff         ; C7 06 E8 00 FF FF
        mov     word ptr [0xea], 0xffff         ; C7 06 EA 00 FF FF
        mov     word ptr [0xec], 0xffff         ; C7 06 EC 00 FF FF
        mov     word ptr [0xee], 0xffff         ; C7 06 EE 00 FF FF
        mov     word ptr [0xf4], 0              ; C7 06 F4 00 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (89 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_216D   offset=0x216D  size=89 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2133, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_216D
L_216D:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [0xf4]             ; A1 F4 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_219E                          ; 74 20
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_2183
L_2183:
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jge     L_219E                          ; 7D 15
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + 0x480]       ; 8A 87 80 04
        les     si, ptr [bp + 4]                ; C4 76 04
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_21AA                          ; 74 12
        mov     word ptr [0xf4], 0              ; C7 06 F4 00 00 00
;   [conditional branch target (if/else)] L_219E
L_219E:
        cmp     word ptr [0xf4], 0              ; 83 3E F4 00 00
        je      L_21AF                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        jmp     L_224B                          ; E9 A1 00
;   [conditional branch target (if/else)] L_21AA
L_21AA:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_2183                          ; EB D4
;   [conditional branch target (if/else)] L_21AF
L_21AF:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_21BE                          ; 74 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2133                          ; E8 75 FF
;   [conditional branch target (if/else)] L_21BE
L_21BE:
        mov     ax, 0x210                       ; B8 10 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 CE 03
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_21D6
L_21D6:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bx + 0x480], al       ; 88 87 80 04
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_21D6                          ; 7C EA
        mov     word ptr [0xf4], 1              ; C7 06 F4 00 01 00
        mov     ax, 0x221                       ; B8 21 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 9A 03
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_220A
L_220A:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 0x223                       ; B8 23 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 76 03
        add     sp, 0xa                         ; 83 C4 0A
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_220A                          ; 7C D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x228                       ; B8 28 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 57 03
        add     sp, 0xa                         ; 83 C4 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_224B
L_224B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (115 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2252   offset=0x2252  size=115 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_20B0, L_2133, L_216D, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_2252
L_2252:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        jne     L_2263                          ; 75 03
        jmp     L_2375                          ; E9 12 01
;   [conditional branch target (if/else)] L_2263
L_2263:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xe2]             ; A1 E2 00
        mov     dx, word ptr [0xe4]             ; 8B 16 E4 00
        cmp     word ptr es:[bx + 2], dx        ; 26 39 57 02
        jne     L_2282                          ; 75 0F
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_2282                          ; 75 0A
        cmp     word ptr es:[bx + 4], 3         ; 26 83 7F 04 03
        je      L_2282                          ; 74 03
        jmp     L_2375                          ; E9 F3 00
;   [conditional branch target (if/else)] L_2282
L_2282:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0xe2], ax             ; A3 E2 00
        mov     word ptr [0xe4], dx             ; 89 16 E4 00
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        or      ax, ax                          ; 0B C0
        je      L_22B0                          ; 74 15
        cmp     ax, 1                           ; 3D 01 00
        je      L_22F5                          ; 74 55
        cmp     ax, 2                           ; 3D 02 00
        je      L_22FE                          ; 74 59
        cmp     ax, 3                           ; 3D 03 00
        jne     L_22AD                          ; 75 03
        jmp     L_2330                          ; E9 83 00
;   [conditional branch target (if/else)] L_22AD
L_22AD:
        jmp     L_236B                          ; E9 BB 00
;   [conditional branch target (if/else)] L_22B0
L_22B0:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    L_20B0                          ; E8 F2 FD
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xf4], 0              ; 83 3E F4 00 00
        je      L_22DA                          ; 74 12
        or      ax, ax                          ; 0B C0
        je      L_22DA                          ; 74 0E
        cmp     ax, 0x3e8                       ; 3D E8 03
        je      L_22DA                          ; 74 09
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_2133                          ; E8 59 FE
;   [conditional branch target (if/else)] L_22DA
L_22DA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x239                       ; B8 39 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 AC 02
        add     sp, 0xc                         ; 83 C4 0C
        jmp     L_236B                          ; EB 76
;   [conditional branch target (if/else)] L_22F5
L_22F5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x249                       ; B8 49 02
        jmp     L_235B                          ; EB 5D
;   [conditional branch target (if/else)] L_22FE
L_22FE:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x270                       ; 05 70 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_216D                          ; E8 56 FE
        or      ax, ax                          ; 0B C0
        jne     L_2327                          ; 75 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xe6]             ; A1 E6 00
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        je      L_236B                          ; 74 44
;   [conditional branch target (if/else)] L_2327
L_2327:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x256                       ; B8 56 02
        jmp     L_235B                          ; EB 2B
;   [unconditional branch target] L_2330
L_2330:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x10                        ; 05 10 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_216D                          ; E8 29 FE
        or      ax, ax                          ; 0B C0
        jne     L_2354                          ; 75 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xe6]             ; A1 E6 00
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        je      L_236B                          ; 74 17
;   [conditional branch target (if/else)] L_2354
L_2354:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x263                       ; B8 63 02
;   [unconditional branch target] L_235B
L_235B:
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 34 02
        add     sp, 0xa                         ; 83 C4 0A
;   [branch target] L_236B
L_236B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [0xe6], ax             ; A3 E6 00
;   [fall-through exit] L_2375
L_2375:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (76 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_237B   offset=0x237B  size=76 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_20B0, L_259C
;-------------------------------------------------------------------------
;   [sub-routine] L_237B
L_237B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        jne     L_2393                          ; 75 03
        jmp     L_243D                          ; E9 AA 00
;   [conditional branch target (if/else)] L_2393
L_2393:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jle     L_23A6                          ; 7E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_23AD                          ; EB 07
;   [conditional branch target (if/else)] L_23A6
L_23A6:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
;   [unconditional branch target] L_23AD
L_23AD:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_23B9                          ; 75 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_23B9
L_23B9:
        mov     ax, word ptr [0xf0]             ; A1 F0 00
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_23DE                          ; 75 1D
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [0xe8]             ; A1 E8 00
        mov     dx, word ptr [0xea]             ; 8B 16 EA 00
        cmp     word ptr es:[bx + 2], dx        ; 26 39 57 02
        jne     L_23DE                          ; 75 0D
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_23DE                          ; 75 08
        mov     ax, word ptr [0xf2]             ; A1 F2 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_243D                          ; 74 5F
;   [conditional branch target (if/else)] L_23DE
L_23DE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [0xe8], ax             ; A3 E8 00
        mov     word ptr [0xea], dx             ; 89 16 EA 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0xf0], ax             ; A3 F0 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xf2], ax             ; A3 F2 00
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        call    L_20B0                          ; E8 AA FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x1f4                       ; 3D F4 01
        jge     L_2415                          ; 7D 07
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_241A                          ; EB 05
;   [conditional branch target (if/else)] L_2415
L_2415:
        mov     word ptr [bp - 6], 0x3e8        ; C7 46 FA E8 03
;   [unconditional branch target] L_241A
L_241A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 62 01
        add     sp, 0x10                        ; 83 C4 10
;   [branch target] L_243D
L_243D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: OPENJOB, STARTSPOOLPAGE.

;-------------------------------------------------------------------------
; sub_2448   offset=0x2448  size=37 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   OPENJOB
;   STARTSPOOLPAGE
;-------------------------------------------------------------------------
;   [sub-routine] L_2448
L_2448:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x22], 0      ; 26 83 7F 22 00
        je      L_2460                          ; 74 08
        mov     word ptr es:[bx + 0x2c], 0xffff ; 26 C7 47 2C FF FF
        jmp     L_24A5                          ; EB 45
;   [conditional branch target (if/else)] L_2460
L_2460:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        add     bx, 0x54e                       ; 81 C3 4E 05
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     word ptr [bp - 2], es           ; 8C 46 FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_247C                          ; 75 09
        mov     ax, 0x2b4                       ; B8 B4 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
;   [conditional branch target (if/else)] L_247C
L_247C:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x28]         ; 26 FF 77 28
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        or      ax, ax                          ; 0B C0
        jl      L_24A5                          ; 7C 06
        push    ax                              ; 50
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_24A5
L_24A5:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
        mov     word ptr es:[bx + 0x26], 0      ; 26 C7 47 26 00 00
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (30 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_24BE   offset=0x24BE  size=30 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2551
;-------------------------------------------------------------------------
;   [sub-routine] L_24BE
L_24BE:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_250B                          ; 7C 3F
        mov     word ptr es:[bx + 0x26], 1      ; 26 C7 47 26 01 00
        jmp     L_2506                          ; EB 32
;   [loop start] L_24D4
L_24D4:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x2e], 0x100  ; 26 81 7F 2E 00 01
        jb      L_24EE                          ; 72 0F
        push    es                              ; 06
        push    bx                              ; 53
        call    L_2551                          ; E8 6D 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_250B                          ; 7C 1D
;   [conditional branch target (if/else)] L_24EE
L_24EE:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x2e]     ; 26 8B 77 2E
        mov     byte ptr es:[bx + si + 0x4e], al ; 26 88 40 4E
        inc     word ptr es:[bx + 0x2e]         ; 26 FF 47 2E
;   [unconditional branch target] L_2506
L_2506:
        dec     word ptr [bp + 4]               ; FF 4E 04
        jns     L_24D4                          ; 79 C9
;   [error/early exit] L_250B
L_250B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_2512   offset=0x2512  size=10 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: unknown
;
; Near calls (internal): L_2551
;-------------------------------------------------------------------------
;   [sub-routine] L_2512
L_2512:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_254B                          ; 7C 2C
        push    es                              ; 06
        push    bx                              ; 53
        call    L_2551                          ; E8 2D 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x2c], 0xffff ; 26 C7 47 2C FF FF
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
;   [error/early exit] L_254B
L_254B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_2551
L_2551:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x2c], 0      ; 26 83 7F 2C 00
        jl      L_2596                          ; 7C 38
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        jbe     L_2596                          ; 76 31
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x4e                        ; 05 4E 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jg      L_258D                          ; 7F 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
        push    es                              ; 06
        push    bx                              ; 53
        call    L_2512                          ; E8 85 FF
;   [conditional branch target (if/else)] L_258D
L_258D:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
;   [error/early exit] L_2596
L_2596:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_259C
L_259C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ss           ; 8C 56 FA
        jmp     L_26B0                          ; E9 FB 00
;   [loop start] L_25B5
L_25B5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x25                        ; 3C 25
        je      L_25C8                          ; 74 03
        jmp     L_267E                          ; E9 B6 00
;   [conditional branch target (if/else)] L_25C8
L_25C8:
        push    es                              ; 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2873                          ; E8 9F 02
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_2665                          ; 74 77
        cmp     ax, 0x64                        ; 3D 64 00
        je      L_2612                          ; 74 1F
        cmp     ax, 0x6c                        ; 3D 6C 00
        je      L_260A                          ; 74 12
        cmp     ax, 0x71                        ; 3D 71 00
        je      L_264E                          ; 74 51
        cmp     ax, 0x73                        ; 3D 73 00
        je      L_263D                          ; 74 3B
        cmp     ax, 0x78                        ; 3D 78 00
        je      L_2626                          ; 74 1F
        jmp     L_26BC                          ; E9 B2 00
;   [conditional branch target (if/else)] L_260A
L_260A:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_26B0                          ; E9 9E 00
;   [conditional branch target (if/else)] L_2612
L_2612:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_26C5                          ; E8 A1 00
        jmp     L_265D                          ; EB 37
;   [conditional branch target (if/else)] L_2626
L_2626:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_27AC                          ; E8 74 01
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_265D                          ; EB 20
;   [conditional branch target (if/else)] L_263D
L_263D:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_28CC                          ; E8 80 02
        jmp     L_265D                          ; EB 0F
;   [conditional branch target (if/else)] L_264E
L_264E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_2917                          ; E8 BA 02
;   [unconditional branch target] L_265D
L_265D:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_26B0                          ; EB 4B
;   [conditional branch target (if/else)] L_2665
L_2665:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 46 FE
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        jmp     L_26B0                          ; EB 32
;   [unconditional branch target] L_267E
L_267E:
        cmp     byte ptr [bp - 4], 0xa          ; 80 7E FC 0A
        jne     L_269E                          ; 75 1A
        mov     byte ptr [bp - 4], 0xd          ; C6 46 FC 0D
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 24 FE
        mov     byte ptr [bp - 4], 0xa          ; C6 46 FC 0A
;   [conditional branch target (if/else)] L_269E
L_269E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 0E FE
;   [unconditional branch target] L_26B0
L_26B0:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_26BC                          ; 74 03
        jmp     L_25B5                          ; E9 F9 FE
;   [branch target] L_26BC
L_26BC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;   [sub-routine] L_26C5
L_26C5:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        lea     ax, [bp - 0xb]                  ; 8D 46 F5
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_26F4                          ; 74 10
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [bp + 4], 4            ; 83 46 04 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        jmp     L_26FF                          ; EB 0B
;   [conditional branch target (if/else)] L_26F4
L_26F4:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [bp + 4], 2            ; 83 46 04 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
;   [unconditional branch target] L_26FF
L_26FF:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      dx, dx                          ; 0B D2
        jge     L_270E                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2710                          ; EB 02
;   [conditional branch target (if/else)] L_270E
L_270E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2710
L_2710:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_272A                          ; 74 13
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
;   [loop start (also forward branch)] L_272A
L_272A:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        je      L_275C                          ; 74 2A
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_4316                          ; E8 D5 1B
        add     al, 0x30                        ; 04 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_4221                          ; E8 C7 1A
        jmp     L_272A                          ; EB CE
;   [conditional branch target (if/else)] L_275C
L_275C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_276F                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_276F
L_276F:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_2797                          ; 74 22
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0x2d          ; 26 C6 07 2D
        jmp     L_2797                          ; EB 16
;   [loop start] L_2781
L_2781:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 27 FD
;   [branch target] L_2797
L_2797:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2781                          ; 75 E1
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [sub-routine] L_27AC
L_27AC:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        cmp     word ptr [bp + 0xc], 5          ; 83 7E 0C 05
        jl      L_27BD                          ; 7C 05
        mov     word ptr [bp + 0xc], 4          ; C7 46 0C 04 00
;   [conditional branch target (if/else)] L_27BD
L_27BD:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        add     word ptr [bp + 8], 2            ; 83 46 08 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lea     ax, [bp - 9]                    ; 8D 46 F7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ss           ; 8C 56 FE
        dec     word ptr [bp - 4]               ; FF 4E FC
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_2815                          ; EB 30
;   [loop start] L_27E5
L_27E5:
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
        js      L_281B                          ; 78 31
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        and     al, 0xf                         ; 24 0F
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 9                           ; 3C 09
        jle     L_27FA                          ; 7E 04
        add     al, 0x57                        ; 04 57
        jmp     L_27FF                          ; EB 05
;   [conditional branch target (if/else)] L_27FA
L_27FA:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        add     al, 0x30                        ; 04 30
;   [unconditional branch target] L_27FF
L_27FF:
        dec     word ptr [bp - 4]               ; FF 4E FC
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        and     ah, 0xf                         ; 80 E4 0F
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
;   [unconditional branch target] L_2815
L_2815:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_27E5                          ; 75 CA
;   [conditional branch target (if/else)] L_281B
L_281B:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_2831                          ; 75 0D
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
;   [conditional branch target (if/else)] L_2831
L_2831:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_2860                          ; 74 29
        jmp     L_2843                          ; EB 0A
;   [loop start] L_2839
L_2839:
        dec     word ptr [bp - 4]               ; FF 4E FC
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [unconditional branch target] L_2843
L_2843:
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
        jns     L_2839                          ; 79 F1
        jmp     L_2860                          ; EB 16
;   [loop start] L_284A
L_284A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 5E FC
;   [branch target] L_2860
L_2860:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_284A                          ; 75 E1
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
;   [sub-routine] L_2873
L_2873:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_28C0                          ; 74 37
;   [loop start] L_2889
L_2889:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        je      L_28C0                          ; 74 2A
        cmp     al, 0x30                        ; 3C 30
        jl      L_28C0                          ; 7C 26
        cmp     al, 0x39                        ; 3C 39
        jg      L_28C0                          ; 7F 22
        mov     ax, 0xa                         ; B8 0A 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        imul    word ptr es:[bx]                ; 26 F7 2F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        add     cx, ax                          ; 03 C8
        sub     cx, 0x30                        ; 83 E9 30
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], cx            ; 26 89 0F
        jmp     L_2889                          ; EB C9
;   [error/early exit] L_28C0
L_28C0:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_28CC
L_28CC:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [bp + 4], 4            ; 83 46 04 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_290B                          ; 74 21
        jmp     L_2902                          ; EB 16
;   [loop start] L_28EC
L_28EC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 BC FB
;   [unconditional branch target] L_2902
L_2902:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_28EC                          ; 75 E1
;   [error/early exit] L_290B
L_290B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2917
L_2917:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [bp + 4], 4            ; 83 46 04 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        add     word ptr [bp + 4], 2            ; 83 46 04 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x2b9                       ; B8 B9 02
        push    ds                              ; 1E
;   [loop start] L_2948
L_2948:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 6E FB
        jmp     L_29EA                          ; E9 97 00
;   [loop start] L_2953
L_2953:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0x20                        ; 3D 20 00
        jge     L_2969                          ; 7D 03
        jmp     L_29EA                          ; E9 81 00
;   [conditional branch target (if/else)] L_2969
L_2969:
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cwde                                    ; 98
        cmp     ax, 0x28                        ; 3D 28 00
        jl      L_297F                          ; 7C 0A
        cmp     ax, 0x29                        ; 3D 29 00
        jle     L_2991                          ; 7E 17
        cmp     ax, 0x5c                        ; 3D 5C 00
        je      L_2991                          ; 74 12
;   [conditional branch target (if/else)] L_297F
L_297F:
        cmp     word ptr [bp - 2], 0x7f         ; 83 7E FE 7F
        jge     L_29A5                          ; 7D 20
;   [loop start] L_2985
L_2985:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        jmp     L_2948                          ; EB B7
;   [conditional branch target (if/else)] L_2991
L_2991:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x2bb                       ; B8 BB 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 1B FB
        jmp     L_2985                          ; EB E0
;   [conditional branch target (if/else)] L_29A5
L_29A5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x2bd                       ; B8 BD 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 07 FB
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_29BC
L_29BC:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cl, 6                           ; B1 06
        sar     ax, cl                          ; D3 F8
        and     al, 7                           ; 24 07
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     word ptr [bp - 2], cl           ; D3 66 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 DD FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 3            ; 83 7E FA 03
        jl      L_29BC                          ; 7C D2
;   [unconditional branch target] L_29EA
L_29EA:
        dec     word ptr [bp - 8]               ; FF 4E F8
        js      L_29F2                          ; 78 03
        jmp     L_2953                          ; E9 61 FF
;   [conditional branch target (if/else)] L_29F2
L_29F2:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x2bf                       ; B8 BF 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_24BE                          ; E8 BA FA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2A10
L_2A10:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     cx, 2                           ; B9 02 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_2A27                          ; EB 03
;   [loop start] L_2A24
L_2A24:
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [unconditional branch target] L_2A27
L_2A27:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jg      L_2A24                          ; 7F F5
        jmp     L_2A51                          ; EB 20
;   [loop start] L_2A31
L_2A31:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1941                          ; E8 F7 EE
        or      ax, ax                          ; 0B C0
        jne     L_2A57                          ; 75 09
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [unconditional branch target] L_2A51
L_2A51:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_2A31                          ; 7F DA
;   [conditional branch target (if/else)] L_2A57
L_2A57:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_2AA3                          ; EB 45
;   [loop start] L_2A5E
L_2A5E:
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_2A69
L_2A69:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_2A8E                          ; 7F 1D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1941                          ; E8 B7 EE
        or      ax, ax                          ; 0B C0
        jne     L_2A98                          ; 75 0A
;   [conditional branch target (if/else)] L_2A8E
L_2A8E:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_2AA0                          ; 75 0A
        jmp     L_2AAB                          ; EB 13
;   [conditional branch target (if/else)] L_2A98
L_2A98:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_2A69                          ; EB C9
;   [conditional branch target (if/else)] L_2AA0
L_2AA0:
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_2AA3
L_2AA3:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_2A5E                          ; 7C B3
;   [fall-through exit] L_2AAB
L_2AAB:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2AB4
L_2AB4:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_2ACB
L_2ACB:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_2AE9                          ; 7C 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1941                          ; E8 5C EE
        or      ax, ax                          ; 0B C0
        jne     L_2AEE                          ; 75 05
;   [conditional branch target (if/else)] L_2AE9
L_2AE9:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_2AFC                          ; EB 0E
;   [conditional branch target (if/else)] L_2AEE
L_2AEE:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [bp + 6], ax           ; 29 46 06
        add     word ptr [bp + 8], ax           ; 01 46 08
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_2ACB                          ; EB CF
;   [fall-through exit] L_2AFC
L_2AFC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2B02
L_2B02:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_2B1C                          ; 7E 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_2B27                          ; EB 0B
;   [conditional branch target (if/else)] L_2B1C
L_2B1C:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [unconditional branch target] L_2B27
L_2B27:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cl, 8                           ; B1 08
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        mov     ax, 0x2c2                       ; B8 C2 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 57 FA
        add     sp, 0xe                         ; 83 C4 0E
        jmp     L_2B92                          ; EB 48
;   [loop start] L_2B4A
L_2B4A:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_2B4F
L_2B4F:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_2B7F                          ; 7E 2A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        mov     ax, 0x2cf                       ; B8 CF 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 2C FA
        add     sp, 0xa                         ; 83 C4 0A
        dec     word ptr [bp + 8]               ; FF 4E 08
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 0x20         ; 83 7E FA 20
        jl      L_2B4F                          ; 7C D0
;   [conditional branch target (if/else)] L_2B7F
L_2B7F:
        mov     ax, 0x2d4                       ; B8 D4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 0D FA
        add     sp, 8                           ; 83 C4 08
;   [unconditional branch target] L_2B92
L_2B92:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jg      L_2B4A                          ; 7F B2
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_2B9E
L_2B9E:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_2C4B                          ; E9 93 00
;   [loop start] L_2BB8
L_2BB8:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_2A10                          ; E8 49 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    L_2AB4                          ; E8 DD FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 1                           ; 3D 01 00
        jne     L_2BE4                          ; 75 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_2BEA                          ; EB 06
;   [conditional branch target (if/else)] L_2BE4
L_2BE4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [bp - 0xc]             ; F7 6E F4
;   [unconditional branch target] L_2BEA
L_2BEA:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_2BFD                          ; 7D 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        jmp     L_2C42                          ; EB 45
;   [conditional branch target (if/else)] L_2BFD
L_2BFD:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_2C1E                          ; 74 1B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_2B02                          ; E8 E9 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [conditional branch target (if/else)] L_2C1E
L_2C1E:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2B02                          ; E8 CF FE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [unconditional branch target] L_2C42
L_2C42:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp + 0xa], ax         ; 01 46 0A
        sub     word ptr [bp + 8], ax           ; 29 46 08
;   [unconditional branch target] L_2C4B
L_2C4B:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_2C54                          ; 7E 03
        jmp     L_2BB8                          ; E9 64 FF
;   [conditional branch target (if/else)] L_2C54
L_2C54:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_2C70                          ; 74 16
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_2B02                          ; E8 92 FE
;   [error/early exit] L_2C70
L_2C70:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
;   [sub-routine] L_2C76
L_2C76:
        ;   = cProc <16> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        and     ah, 0x1f                        ; 80 E4 1F
        add     ax, word ptr [bp + 4]           ; 03 46 04
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 7                           ; 81 E6 07 00
        mov     al, byte ptr [si + 0x2e6]       ; 8A 84 E6 02
        or      byte ptr es:[bx], al            ; 26 08 07
;   [loop start] L_2CBD
L_2CBD:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_2CD6                          ; 77 0E
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 0xff          ; 26 80 3F FF
        jne     L_2CD6                          ; 75 05
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_2CBD                          ; EB E7
;   [loop start (also forward branch)] L_2CD6
L_2CD6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_2CEF                          ; 72 0E
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0xff          ; 26 80 3F FF
        jne     L_2CEF                          ; 75 05
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_2CD6                          ; EB E7
;   [conditional branch target (if/else)] L_2CEF
L_2CEF:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_2D58                          ; 77 5E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        shl     ax, cl                          ; D3 E0
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x2d6                       ; B8 D6 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 70 F8
        add     sp, 0xe                         ; 83 C4 0E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_2B9E                          ; E8 46 FE
;   [conditional branch target (if/else)] L_2D58
L_2D58:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        or      ax, word ptr [bp + 0x1c]        ; 0B 46 1C
        jne     L_2DCF                          ; 75 52
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_2DCF                          ; 74 4A
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        jle     L_2DCF                          ; 7E 44
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_2DCF                          ; 7E 3E
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2252                          ; E8 B2 F4
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x2ee                       ; B8 EE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 D6 F7
        add     sp, 0x10                        ; 83 C4 10
;   [loop start] L_2DC9
L_2DC9:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2ED4                          ; E9 05 01
;   [conditional branch target (if/else)] L_2DCF
L_2DCF:
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_2DDD                          ; 74 05
;   [loop start] L_2DD8
L_2DD8:
        sub     ax, ax                          ; 2B C0
        jmp     L_2ED4                          ; E9 F7 00
;   [conditional branch target (if/else)] L_2DDD
L_2DDD:
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_2E1D                          ; 75 37
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMBITBLT                ; 9A 7E 2E 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2DC9                          ; 75 AE
        jmp     L_2DD8                          ; EB BB
;   [loop start (also forward branch)] L_2E1D
L_2E1D:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_2DC9                          ; 7E A6
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x14e                       ; 05 4E 01
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jae     L_2E44                          ; 73 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_2E47                          ; EB 03
;   [conditional branch target (if/else)] L_2E44
L_2E44:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
;   [unconditional branch target] L_2E47
L_2E47:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        mov     dx, word ptr [bp + 0x24]        ; 8B 56 24
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2E89                          ; 75 03
        jmp     L_2DD8                          ; E9 4F FF
;   [conditional branch target (if/else)] L_2E89
L_2E89:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     word ptr [bp + 0x12], ax        ; 29 46 12
        add     word ptr [bp + 0x16], ax        ; 01 46 16
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x14e                       ; 05 4E 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
;   [loop start] L_2EA9
L_2EA9:
        dec     word ptr [bp - 6]               ; FF 4E FA
        jns     L_2EB1                          ; 79 03
        jmp     L_2E1D                          ; E9 6C FF
;   [conditional branch target (if/else)] L_2EB1
L_2EB1:
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_2C76                          ; E8 AD FD
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp + 0x1e]            ; FF 46 1E
        jmp     L_2EA9                          ; EB D5
;   [unconditional branch target] L_2ED4
L_2ED4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
;   [sub-routine] L_2EDF
L_2EDF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x300                       ; B8 00 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 1C EA
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 06 E9
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 EE E8
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        neg     ax                              ; F7 D8
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr es:[bx + 0x4e], ax     ; 26 89 47 4E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x54], ax     ; 26 89 47 54
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr es:[bx + 0x56], ax     ; 26 89 47 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x58], ax     ; 26 89 47 58
        mov     word ptr es:[bx + 0x5a], ax     ; 26 89 47 5A
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
        sub     sp, 0x2a                        ; 83 EC 2A
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_2FB2                          ; 74 07
        mov     word ptr [bp - 0x1e], 0x4e      ; C7 46 E2 4E 00
        jmp     L_2FC5                          ; EB 13
;   [conditional branch target (if/else)] L_2FB2
L_2FB2:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_172F                          ; E8 70 E7
        add     ax, 0x557                       ; 05 57 05
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
;   [unconditional branch target] L_2FC5
L_2FC5:
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     ax, 0x368                       ; B8 68 03
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], ds        ; 8C 5E DE
        mov     word ptr [bp - 6], 0x64         ; C7 46 FA 64 00
        mov     word ptr [bp - 0x20], 1         ; C7 46 E0 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_3001                          ; 75 1C
        mov     ax, 0x3a0                       ; B8 A0 03
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A 4B 32 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_33E9                          ; E8 F6 03
        mov     ax, 0x4d0                       ; B8 D0 04
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], ds           ; 8C 5E 08
        mov     byte ptr [0x4da], 0             ; C6 06 DA 04 00
;   [conditional branch target (if/else)] L_3001
L_3001:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_305E                          ; 74 55
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 8D E8
        or      ax, ax                          ; 0B C0
        je      L_302D                          ; 74 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        jne     L_305E                          ; 75 31
;   [conditional branch target (if/else)] L_302D
L_302D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_3049
L_3049:
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        jge     L_305E                          ; 7D 0F
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jne     L_3099                          ; 75 3B
;   [conditional branch target (if/else)] L_305E
L_305E:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_30A2                          ; 74 3E
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_30B6                          ; EB 1D
;   [conditional branch target (if/else)] L_3099
L_3099:
        add     word ptr [bp - 0x24], 0xe       ; 83 46 DC 0E
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_3049                          ; EB A7
;   [conditional branch target (if/else)] L_30A2
L_30A2:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 5D E8
;   [unconditional branch target] L_30B6
L_30B6:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 51 E7
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 3F E7
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 2D E7
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 1B E7
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 09 E7
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 F7 E6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_3149                          ; 74 21
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_2EDF                          ; E8 A6 FD
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_3272                          ; E9 29 01
;   [conditional branch target (if/else)] L_3149
L_3149:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        jmp     L_3161                          ; EB 0A
;   [loop start] L_3157
L_3157:
        les     bx, ptr [bp - 0x2a]             ; C4 5E D6
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [unconditional branch target] L_3161
L_3161:
        dec     word ptr [bp - 0x1e]            ; FF 4E E2
        jns     L_3157                          ; 79 F1
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x3e                        ; 05 3E 00
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1913                          ; E8 85 E7
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        mov     word ptr es:[bx + 0x4c], 0      ; 26 C7 47 4C 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        cmp     ax, 0x400                       ; 3D 00 04
        jbe     L_31D5                          ; 76 06
        mov     word ptr es:[bx + 8], 0x400     ; 26 C7 47 08 00 04
;   [conditional branch target (if/else)] L_31D5
L_31D5:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 0x400                       ; B8 00 04
        cdq                                     ; 99
        div     word ptr es:[bx + 8]            ; 26 F7 77 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     byte ptr es:[bx + 0xa], 1       ; 26 C6 47 0A 01
        mov     byte ptr es:[bx + 0xb], 1       ; 26 C6 47 0B 01
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x14e                       ; 05 4E 01
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mul     word ptr es:[bx + 6]            ; 26 F7 67 06
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_3231                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3233                          ; EB 02
;   [conditional branch target (if/else)] L_3231
L_3231:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3233
L_3233:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     word ptr es:[bx + 0x2c], 0xffff ; 26 C7 47 2C FF FF
        mov     word ptr es:[bx], 0xffff        ; 26 C7 07 FF FF
        mov     ax, 0x3a8                       ; B8 A8 03
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_326F                          ; 75 12
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x54e                       ; 05 4E 05
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_172F                          ; E8 C0 E4
;   [conditional branch target (if/else)] L_326F
L_326F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_3272
L_3272:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_3295
L_3295:
        ;   = cProc <72> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x48                        ; 83 EC 48
        mov     ax, word ptr [0x4d0]            ; A1 D0 04
        add     ax, 0x28                        ; 05 28 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 48 33 00 00 [FIXUP]
        mov     ax, 0x3b7                       ; B8 B7 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3b0                       ; B8 B0 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 2D 33 00 00 [FIXUP]
        mov     ax, word ptr [0x4d6]            ; A1 D6 04
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_3303                          ; EB 1E
;   [loop start] L_32E5
L_32E5:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
;   [unconditional branch target] L_3303
L_3303:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_32E5                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_331C                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
;   [conditional branch target (if/else)] L_331C
L_331C:
        mov     ax, 0x3cd                       ; B8 CD 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3c2                       ; B8 C2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 5C 33 00 00 [FIXUP]
        mov     ax, word ptr [0x4d4]            ; A1 D4 04
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 7C 33 00 00 [FIXUP]
        mov     ax, 0x3de                       ; B8 DE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3d8                       ; B8 D8 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;   [sub-routine] L_3366
L_3366:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg wID
        mov     ax, 0x4a8                       ; B8 A8 04
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A B6 33 00 00 [FIXUP]
        mov     ax, 0x3e9                       ; B8 E9 03
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x4a8                       ; B8 A8 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x488                       ; B8 88 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A B7 17 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_33D5                          ; EB 2F
;   [loop start] L_33A6
L_33A6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg wID
        mov     ax, 0x4a8                       ; B8 A8 04
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A D5 35 00 00 [FIXUP]
        mov     ax, 0x4a8                       ; B8 A8 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x488                       ; B8 88 04
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 E3 E4
        or      ax, ax                          ; 0B C0
        jne     L_33D2                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_33E0                          ; EB 0E
;   [conditional branch target (if/else)] L_33D2
L_33D2:
        inc     word ptr [bp - 2]               ; FF 46 FE
;   [unconditional branch target] L_33D5
L_33D5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_33A6                          ; 7E C9
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_33E0
L_33E0:
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_33E9
L_33E9:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x3f4                       ; B8 F4 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        mov     ax, 0x29                        ; B8 29 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_3366                          ; E8 63 FF
        mov     word ptr [0x4d0], ax            ; A3 D0 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_178C                          ; E8 81 E3
        or      ax, ax                          ; 0B C0
        je      L_3416                          ; 74 07
        mov     word ptr [bp - 2], 0x2a         ; C7 46 FE 2A 00
        jmp     L_341B                          ; EB 05
;   [conditional branch target (if/else)] L_3416
L_3416:
        mov     word ptr [bp - 2], 0x2c         ; C7 46 FE 2C 00
;   [unconditional branch target] L_341B
L_341B:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x3fb                       ; B8 FB 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3366                          ; E8 35 FF
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x4d4], ax            ; A3 D4 04
        mov     ax, 0x40c                       ; B8 0C 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x4d6], ax            ; A3 D6 04
        mov     byte ptr [0x4da], 0             ; C6 06 DA 04 00
        mov     word ptr [0x4d8], 1             ; C7 06 D8 04 01 00
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
        cmp     word ptr [0x41e], 0             ; 83 3E 1E 04 00
        je      L_3474                          ; 74 05
;   [loop start] L_346F
L_346F:
        sub     ax, ax                          ; 2B C0
        jmp     L_352A                          ; E9 B6 00
;   [conditional branch target (if/else)] L_3474
L_3474:
        mov     word ptr [0x41e], 1             ; C7 06 1E 04 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4d0                       ; B8 D0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b                        ; B8 2B 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3497                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3499                          ; EB 02
;   [conditional branch target (if/else)] L_3497
L_3497:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_3499
L_3499:
        or      ax, ax                          ; 0B C0
        jne     L_34B1                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x4da                       ; B8 DA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 FF E3
        or      ax, ax                          ; 0B C0
        je      L_34C7                          ; 74 16
;   [conditional branch target (if/else)] L_34B1
L_34B1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_33E9                          ; E8 32 FF
        mov     ax, 0x4da                       ; B8 DA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18E8                          ; E8 21 E4
;   [conditional branch target (if/else)] L_34C7
L_34C7:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x4fc], ax            ; A3 FC 04
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x417                       ; B8 17 04
        push    ds                              ; 1E
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hWndOwner
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, 0                           ; BA 00 00 [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpDialogFunc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_34F1                          ; 75 09
        mov     word ptr [0x41e], 0             ; C7 06 1E 04 00 00
        jmp     L_346F                          ; E9 7E FF
;   [conditional branch target (if/else)] L_34F1
L_34F1:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4d0                       ; B8 D0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b                        ; B8 2B 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_3295                          ; E8 8A FD
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x41e], 0             ; C7 06 1E 04 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_352A
L_352A:
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
        sub     sp, 0x34                        ; 83 EC 34
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_3555                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_3552                          ; 75 03
        jmp     L_3639                          ; E9 E7 00
;   [conditional branch target (if/else)] L_3552
L_3552:
        jmp     L_3634                          ; E9 DF 00
;   [conditional branch target (if/else)] L_3555
L_3555:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A EE 35 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        push    word ptr [0x4d6]                ; FF 36 D6 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 8F 35 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        push    word ptr [0x4d8]                ; FF 36 D8 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [0x4d2], 0             ; 83 3E D2 04 00
        je      L_35A2                          ; 74 05
        mov     ax, 0xb                         ; B8 0B 00
        jmp     L_35A5                          ; EB 03
;   [conditional branch target (if/else)] L_35A2
L_35A2:
        mov     ax, 0xa                         ; B8 0A 00
;   [unconditional branch target] L_35A5
L_35A5:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A BB 35 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4d4]                ; FF 36 D4 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0x28         ; C7 46 FA 28 00
;   [loop start] L_35C4
L_35C4:
        push    word ptr [0x4fc]                ; FF 36 FC 04
        ;   ^ arg hInstance
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg wID
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg wParam
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 0F 36 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 0x29         ; 83 7E FA 29
        jle     L_35C4                          ; 7E C9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x407                       ; B8 07 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [0x4d0]                ; FF 36 D0 04
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        cmp     word ptr [0x4d2], 0             ; 83 3E D2 04 00
        je      L_3622                          ; 74 05
        mov     ax, 0xb                         ; B8 0B 00
        jmp     L_3625                          ; EB 03
;   [conditional branch target (if/else)] L_3622
L_3622:
        mov     ax, 0xa                         ; B8 0A 00
;   [unconditional branch target] L_3625
L_3625:
        push    ax                              ; 50
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_3634
L_3634:
        sub     ax, ax                          ; 2B C0
        jmp     L_3751                          ; E9 18 01
;   [unconditional branch target] L_3639
L_3639:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_3644                          ; 75 03
        jmp     L_371E                          ; E9 DA 00
;   [conditional branch target (if/else)] L_3644
L_3644:
        jbe     L_3649                          ; 76 03
        jmp     L_372B                          ; E9 E2 00
;   [conditional branch target (if/else)] L_3649
L_3649:
        cmp     ax, 1                           ; 3D 01 00
        je      L_3688                          ; 74 3A
        jmp     L_3634                          ; EB E4
;   [loop start] L_3650
L_3650:
        cmp     word ptr [bp + 0xa], 0xb        ; 83 7E 0A 0B
        jne     L_365B                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_365D                          ; EB 02
;   [conditional branch target (if/else)] L_365B
L_365B:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_365D
L_365D:
        mov     word ptr [0x4d2], ax            ; A3 D2 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
;   [loop start] L_366A
L_366A:
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_374E                          ; E9 D8 00
;   [loop start] L_3676
L_3676:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4d4], ax            ; A3 D4 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        jmp     L_366A                          ; EB E2
;   [conditional branch target (if/else)] L_3688
L_3688:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A B8 36 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_36A8                          ; 75 03
        jmp     L_374E                          ; E9 A6 00
;   [conditional branch target (if/else)] L_36A8
L_36A8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_36C8                          ; 75 03
        jmp     L_374E                          ; E9 86 00
;   [conditional branch target (if/else)] L_36C8
L_36C8:
        cmp     word ptr [bp - 8], 0x48         ; 83 7E F8 48
        jge     L_36D5                          ; 7D 07
        mov     word ptr [bp - 8], 0x48         ; C7 46 F8 48 00
        jmp     L_36E1                          ; EB 0C
;   [conditional branch target (if/else)] L_36D5
L_36D5:
        cmp     word ptr [bp - 8], 0x9c4        ; 81 7E F8 C4 09
        jle     L_36E1                          ; 7E 05
        mov     word ptr [bp - 8], 0x9c4        ; C7 46 F8 C4 09
;   [branch target] L_36E1
L_36E1:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_36EE                          ; 7F 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_36FA                          ; EB 0C
;   [conditional branch target (if/else)] L_36EE
L_36EE:
        cmp     word ptr [bp - 4], 0xc8         ; 81 7E FC C8 00
        jle     L_36FA                          ; 7E 05
        mov     word ptr [bp - 4], 0xc8         ; C7 46 FC C8 00
;   [branch target] L_36FA
L_36FA:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
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
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 69 35 00 00 [FIXUP]
        mov     word ptr [0x4d0], ax            ; A3 D0 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x4d8], ax            ; A3 D8 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x4d6], ax            ; A3 D6 04
;   [unconditional branch target] L_371E
L_371E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_374E                          ; EB 23
;   [unconditional branch target] L_372B
L_372B:
        cmp     ax, 0xa                         ; 3D 0A 00
        jae     L_3733                          ; 73 03
        jmp     L_3634                          ; E9 01 FF
;   [conditional branch target (if/else)] L_3733
L_3733:
        cmp     ax, 0xb                         ; 3D 0B 00
        ja      L_373B                          ; 77 03
        jmp     L_3650                          ; E9 15 FF
;   [conditional branch target (if/else)] L_373B
L_373B:
        cmp     ax, 0x14                        ; 3D 14 00
        jae     L_3743                          ; 73 03
        jmp     L_3634                          ; E9 F1 FE
;   [conditional branch target (if/else)] L_3743
L_3743:
        cmp     ax, 0x16                        ; 3D 16 00
        ja      L_374B                          ; 77 03
        jmp     L_3676                          ; E9 2B FF
;   [conditional branch target (if/else)] L_374B
L_374B:
        jmp     L_3634                          ; E9 E6 FE
;   [unconditional branch target] L_374E
L_374E:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_3751
L_3751:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_375C
L_375C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x420                       ; B8 20 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 0B EE
        add     sp, 0x14                        ; 83 C4 14
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_379F
L_379F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0xec], 0xffff         ; C7 06 EC 00 FF FF
        mov     word ptr [0xee], 0xffff         ; C7 06 EE 00 FF FF
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        push    word ptr es:[bx + 0x3a]         ; 26 FF 77 3A
        call    L_20B0                          ; E8 F4 E8
        cmp     ax, 0x1f4                       ; 3D F4 01
        jge     L_37C6                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_37C8                          ; EB 02
;   [conditional branch target (if/else)] L_37C6
L_37C6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_37C8
L_37C8:
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        push    ax                              ; 50
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        push    word ptr es:[bx + 0x3a]         ; 26 FF 77 3A
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        push    ax                              ; 50
        mov     ax, 0x434                       ; B8 34 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 9F ED
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3803
L_3803:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        jne     L_3816                          ; 75 03
        jmp     L_3A4F                          ; E9 39 02
;   [conditional branch target (if/else)] L_3816
L_3816:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        mov     dx, word ptr es:[bx + 0x40]     ; 26 8B 57 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr es:[bx + 0x3e], 0xffff ; 26 C7 47 3E FF FF
        mov     word ptr es:[bx + 0x40], 0xffff ; 26 C7 47 40 FF FF
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        jne     L_384B                          ; 75 03
        jmp     L_396A                          ; E9 1F 01
;   [conditional branch target (if/else)] L_384B
L_384B:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 BB DF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 A8 DF
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 29 E3
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        sub     ah, ah                          ; 2A E4
        sub     di, ax                          ; 2B F8
        shl     di, 1                           ; D1 E7
        push    word ptr es:[bx + di + 0x92]    ; 26 FF B1 92 00
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 62 DF
        mov     word ptr [bp + 4], ax           ; 89 46 04
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 92 FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 D0 E2
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 1D DF
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 0F DF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x45a                       ; B8 5A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 7F EC
        add     sp, 0xa                         ; 83 C4 0A
        mov     ax, 0x468                       ; B8 68 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 6C EC
        add     sp, 8                           ; 83 C4 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 67 E2
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        cwde                                    ; 98
        push    ax                              ; 50
        mov     ax, 0x475                       ; B8 75 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_259C                          ; E8 38 EC
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_3A25                          ; E9 BB 00
;   [unconditional branch target] L_396A
L_396A:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 1A E2
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        cwde                                    ; 98
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 A1 FD
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        cwde                                    ; 98
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 79 FD
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 A9 E1
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xbc                        ; B8 BC 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 37 FD
;   [unconditional branch target] L_3A25
L_3A25:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 67 E1
;   [fall-through exit] L_3A4F
L_3A4F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x12                            ; C2 12 00
;   [sub-routine] L_3A57
L_3A57:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        mov     dx, word ptr es:[bx + 0x40]     ; 26 8B 57 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr es:[bx + 0x3e], 0xffff ; 26 C7 47 3E FF FF
        mov     word ptr es:[bx + 0x40], 0xffff ; 26 C7 47 40 FF FF
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 04 E1
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 93 FC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 C3 E0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        cmp     al, 0x30                        ; 3C 30
        je      L_3B20                          ; 74 03
        jmp     L_3BF0                          ; E9 D0 00
;   [conditional branch target (if/else)] L_3B20
L_3B20:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        jne     L_3B2B                          ; 75 03
        jmp     L_3BEB                          ; E9 C0 00
;   [conditional branch target (if/else)] L_3B2B
L_3B2B:
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        mov     dx, word ptr es:[bx + 0x40]     ; 26 8B 57 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 BF DC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 A8 DC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 91 DC
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x41                        ; B8 41 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 BC FB
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x45                        ; B8 45 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 9B FB
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 CB DF
;   [unconditional branch target] L_3BEB
L_3BEB:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [unconditional branch target] L_3BF0
L_3BF0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        cmp     al, 0x30                        ; 3C 30
        je      L_3C20                          ; 74 03
        jmp     L_3CF0                          ; E9 D0 00
;   [conditional branch target (if/else)] L_3C20
L_3C20:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        jne     L_3C2B                          ; 75 03
        jmp     L_3CEB                          ; E9 C0 00
;   [conditional branch target (if/else)] L_3C2B
L_3C2B:
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x3e]     ; 26 8B 47 3E
        mov     dx, word ptr es:[bx + 0x40]     ; 26 8B 57 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 BF DB
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 A8 DB
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1816                          ; E8 91 DB
        mov     word ptr [bp + 6], ax           ; 89 46 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 BC FA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x65                        ; B8 65 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 9B FA
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x40], dx     ; 26 89 57 40
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    es                              ; 06
        push    bx                              ; 53
        call    L_1BB6                          ; E8 CB DE
;   [unconditional branch target] L_3CEB
L_3CEB:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [unconditional branch target] L_3CF0
L_3CF0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3D49                          ; 74 36
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 7D FA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x6d                        ; B8 6D 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 22 FA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 6D DE
;   [conditional branch target (if/else)] L_3D49
L_3D49:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3DBA                          ; 74 4E
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        cmp     al, 0x10                        ; 3C 10
        jne     L_3D80                          ; 75 07
        mov     word ptr [bp - 4], 0xd3         ; C7 46 FC D3 00
        jmp     L_3D85                          ; EB 05
;   [conditional branch target (if/else)] L_3D80
L_3D80:
        mov     word ptr [bp - 4], 0xe3         ; C7 46 FC E3 00
;   [unconditional branch target] L_3D85
L_3D85:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 0B FA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 B1 F9
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 FC DD
;   [conditional branch target (if/else)] L_3DBA
L_3DBA:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3E2B                          ; 74 4E
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        cmp     al, 0x10                        ; 3C 10
        jne     L_3DF1                          ; 75 07
        mov     word ptr [bp - 4], 0xd2         ; C7 46 FC D2 00
        jmp     L_3DF6                          ; EB 05
;   [conditional branch target (if/else)] L_3DF1
L_3DF1:
        mov     word ptr [bp - 4], 0xe2         ; C7 46 FC E2 00
;   [unconditional branch target] L_3DF6
L_3DF6:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 9A F9
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 40 F9
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 8B DD
;   [conditional branch target (if/else)] L_3E2B
L_3E2B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3E6B                          ; 74 20
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x31                        ; B8 31 00
        push    ax                              ; 50
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3803                          ; E8 98 F9
;   [conditional branch target (if/else)] L_3E6B
L_3E6B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3EAB                          ; 74 20
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x31                        ; B8 31 00
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3803                          ; E8 58 F9
;   [conditional branch target (if/else)] L_3EAB
L_3EAB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3EEB                          ; 74 20
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3803                          ; E8 18 F9
;   [conditional branch target (if/else)] L_3EEB
L_3EEB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3F41                          ; 74 36
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 85 F8
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xb6                        ; B8 B6 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 2A F8
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 75 DC
;   [conditional branch target (if/else)] L_3F41
L_3F41:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3F7F                          ; 74 1E
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x31                        ; B8 31 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A57                          ; E8 D8 FA
;   [conditional branch target (if/else)] L_3F7F
L_3F7F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3FBD                          ; 74 1E
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A57                          ; E8 9A FA
;   [conditional branch target (if/else)] L_3FBD
L_3FBD:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_3FFB                          ; 74 1E
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A57                          ; E8 5C FA
;   [conditional branch target (if/else)] L_3FFB
L_3FFB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_4051                          ; 74 36
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 75 F7
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xb1                        ; B8 B1 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 1A F7
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 65 DB
;   [conditional branch target (if/else)] L_4051
L_4051:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_40A7                          ; 74 36
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_379F                          ; E8 1F F7
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xd8                        ; B8 D8 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_375C                          ; E8 C4 F6
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1BB6                          ; E8 0F DB
;   [conditional branch target (if/else)] L_40A7
L_40A7:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_40B5
L_40B5:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0xb5                        ; 3D B5 00
        jne     L_40D0                          ; 75 03
        jmp     L_41A1                          ; E9 D1 00
;   [conditional branch target (if/else)] L_40D0
L_40D0:
        jle     L_40D5                          ; 7E 03
        jmp     L_41AE                          ; E9 D9 00
;   [conditional branch target (if/else)] L_40D5
L_40D5:
        cmp     ax, 0xa9                        ; 3D A9 00
        je      L_411A                          ; 74 40
        cmp     ax, 0xac                        ; 3D AC 00
        jne     L_40E2                          ; 75 03
        jmp     L_4194                          ; E9 B2 00
;   [conditional branch target (if/else)] L_40E2
L_40E2:
        cmp     ax, 0xae                        ; 3D AE 00
        je      L_4126                          ; 74 3F
        cmp     ax, 0xb1                        ; 3D B1 00
        je      L_4162                          ; 74 76
        cmp     ax, 0xb2                        ; 3D B2 00
        je      L_416E                          ; 74 7D
        cmp     ax, 0xb3                        ; 3D B3 00
        jne     L_40F9                          ; 75 03
        jmp     L_417A                          ; E9 81 00
;   [conditional branch target (if/else)] L_40F9
L_40F9:
        jmp     L_4105                          ; EB 0A
;   [loop start] L_40FB
L_40FB:
        mov     word ptr [bp - 4], OFFSET _entry_116 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
;   [loop start (also forward branch)] L_4105
L_4105:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        jmp     L_41E8                          ; E9 DA 00
;   [loop start] L_410E
L_410E:
        mov     word ptr [bp - 4], OFFSET _entry_115 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB EB
;   [conditional branch target (if/else)] L_411A
L_411A:
        mov     word ptr [bp - 4], OFFSET _entry_114 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB DF
;   [conditional branch target (if/else)] L_4126
L_4126:
        mov     word ptr [bp - 4], OFFSET _entry_113 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB D3
;   [loop start] L_4132
L_4132:
        mov     word ptr [bp - 4], OFFSET _entry_112 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB C7
;   [loop start] L_413E
L_413E:
        mov     word ptr [bp - 4], OFFSET _entry_111 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB BB
;   [loop start] L_414A
L_414A:
        mov     word ptr [bp - 4], OFFSET _entry_110 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB AF
;   [loop start] L_4156
L_4156:
        mov     word ptr [bp - 4], OFFSET _entry_109 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB A3
;   [conditional branch target (if/else)] L_4162
L_4162:
        mov     word ptr [bp - 4], OFFSET _entry_108 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB 97
;   [conditional branch target (if/else)] L_416E
L_416E:
        mov     word ptr [bp - 4], OFFSET _entry_107 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; EB 8B
;   [unconditional branch target] L_417A
L_417A:
        mov     word ptr [bp - 4], OFFSET _entry_106 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; E9 7E FF
;   [loop start] L_4187
L_4187:
        mov     word ptr [bp - 4], OFFSET _entry_105 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; E9 71 FF
;   [unconditional branch target] L_4194
L_4194:
        mov     word ptr [bp - 4], OFFSET _entry_104 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; E9 64 FF
;   [unconditional branch target] L_41A1
L_41A1:
        mov     word ptr [bp - 4], OFFSET _entry_103 ; C7 46 FC FF FF [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00 [FIXUP]
        jmp     L_4105                          ; E9 57 FF
;   [unconditional branch target] L_41AE
L_41AE:
        cmp     ax, 0xbd                        ; 3D BD 00
        je      L_413E                          ; 74 8B
        jg      L_41C5                          ; 7F 10
        cmp     ax, 0xb9                        ; 3D B9 00
        je      L_4187                          ; 74 CD
        cmp     ax, 0xbc                        ; 3D BC 00
        jne     L_41C2                          ; 75 03
        jmp     L_4132                          ; E9 70 FF
;   [conditional branch target (if/else)] L_41C2
L_41C2:
        jmp     L_4105                          ; E9 40 FF
;   [conditional branch target (if/else)] L_41C5
L_41C5:
        cmp     ax, 0xbe                        ; 3D BE 00
        jne     L_41CD                          ; 75 03
        jmp     L_414A                          ; E9 7D FF
;   [conditional branch target (if/else)] L_41CD
L_41CD:
        cmp     ax, 0xc6                        ; 3D C6 00
        jne     L_41D5                          ; 75 03
        jmp     L_40FB                          ; E9 26 FF
;   [conditional branch target (if/else)] L_41D5
L_41D5:
        cmp     ax, 0xe6                        ; 3D E6 00
        jne     L_41DD                          ; 75 03
        jmp     L_410E                          ; E9 31 FF
;   [conditional branch target (if/else)] L_41DD
L_41DD:
        cmp     ax, 0xf0                        ; 3D F0 00
        jne     L_41E5                          ; 75 03
        jmp     L_4156                          ; E9 71 FF
;   [conditional branch target (if/else)] L_41E5
L_41E5:
        jmp     L_4105                          ; E9 1D FF
;   [fall-through exit] L_41E8
L_41E8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_420D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_420D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_4209                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_4209
L_4209:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_420D
L_420D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        ret     2                               ; C2 02 00
;   [sub-routine] L_4221
L_4221:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_4247                          ; E8 10 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_4247
L_4247:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_4268                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_4268
L_4268:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_4281                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_4281
L_4281:
        or      ax, ax                          ; 0B C0
        jne     L_429B                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_42D6                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_429B
L_429B:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_42A6
L_42A6:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_42A6                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_42EA                          ; E8 27 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_42CF                          ; 77 07
        jb      L_42D2                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_42D2                          ; 76 03
;   [conditional branch target (if/else)] L_42CF
L_42CF:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_42D2
L_42D2:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_42D6
L_42D6:
        or      di, di                          ; 0B FF
        je      L_42E1                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [conditional branch target (if/else)] L_42E1
L_42E1:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_42EA
L_42EA:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      di, ax                          ; 0B F8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        je      L_4309                          ; 74 0B
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, bx                          ; 8B C3
        mul     word ptr [bp + 6]               ; F7 66 06
        add     di, ax                          ; 03 F8
;   [conditional branch target (if/else)] L_4309
L_4309:
        mov     ax, bx                          ; 8B C3
        mul     cx                              ; F7 E1
        add     dx, di                          ; 03 D7
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_4316
L_4316:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_4336                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_4336
L_4336:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_434D                          ; 7D 10
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_434D
L_434D:
        or      ax, ax                          ; 0B C0
        jne     L_436B                          ; 75 1A
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     ax, dx                          ; 8B C2
        xor     dx, dx                          ; 33 D2
        or      di, di                          ; 0B FF
        jne     L_43AD                          ; 75 45
        jmp     L_43B4                          ; EB 4A
        nop                                     ; 90
;   [conditional branch target (if/else)] L_436B
L_436B:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_4376
L_4376:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_4376                          ; 75 F4
        div     cx                              ; F7 F1
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_42EA                          ; E8 59 FF
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_439D                          ; 77 07
        jb      L_43A3                          ; 72 0B
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_43A3                          ; 76 06
;   [conditional branch target (if/else)] L_439D
L_439D:
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        sbb     dx, word ptr [bp + 0xa]         ; 1B 56 0A
;   [conditional branch target (if/else)] L_43A3
L_43A3:
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        sbb     dx, word ptr [bp + 6]           ; 1B 56 06
        or      di, di                          ; 0B FF
        jne     L_43B4                          ; 75 07
;   [conditional branch target (if/else)] L_43AD
L_43AD:
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_43B4
L_43B4:
        pop     di                              ; 5F
        pop     bx                              ; 5B
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_43BC
L_43BC:
        xor     ch, ch                          ; 32 ED
        jcxz    L_43C6                          ; E3 06
;   [loop iteration target] L_43C0
L_43C0:
        sar     dx, 1                           ; D1 FA
        rcr     ax, 1                           ; D1 D8
        loop    L_43C0                          ; E2 FA
;   [error/early exit] L_43C6
L_43C6:
        ret                                     ; C3
;   [sub-routine] L_43C7
L_43C7:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_43E9                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_4424                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_43E9
L_43E9:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_43F4
L_43F4:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_43F4                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_42EA                          ; E8 D9 FE
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_441D                          ; 77 07
        jb      L_4420                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_4420                          ; 76 03
;   [conditional branch target (if/else)] L_441D
L_441D:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_4420
L_4420:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_4424
L_4424:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00

PSCRIPT_TEXT ENDS

        END
