; AUTO-GENERATED from original GDI segment 17
; segment_size=3153 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xb8                        ; 81 EC B8 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        cmp     ax, word ptr [bp + 0xc]         ; 3B 46 0C
        jne     L_002D                          ; 75 12
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        jne     L_002D                          ; 75 07
        mov     word ptr [bp - 0x7a], 1         ; C7 46 86 01 00
        jmp     L_0032                          ; EB 05
L_002D:
        mov     word ptr [bp - 0x7a], 0         ; C7 46 86 00 00
L_0032:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        je      L_0042                          ; 74 08
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_0048                          ; 75 06
L_0042:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B6A                          ; E9 22 0B
L_0048:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0051                          ; 75 03
        inc     word ptr [bp + 0xc]             ; FF 46 0C
L_0051:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_005A                          ; 75 03
        inc     word ptr [bp + 0xa]             ; FF 46 0A
L_005A:
        mov     word ptr [bp - 0x7c], 0         ; C7 46 84 00 00
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
        mov     word ptr [bp - 0x46], 0         ; C7 46 BA 00 00
        mov     word ptr [bp - 0xa0], 0         ; C7 86 60 FF 00 00
        mov     word ptr [bp - 0x78], 0         ; C7 46 88 00 00
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     word ptr [bp - 0xe], 0x46       ; C7 46 F2 46 00
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [di + 0xc]         ; 8B 5D 0C
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, 0x46                        ; B8 46 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A D8 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        or      ax, ax                          ; 0B C0
        jne     L_00B2                          ; 75 03
        jmp     L_0B61                          ; E9 AF 0A
L_00B2:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        add     ax, 0xe                         ; 05 0E 00
        mov     word ptr [bp - 0x9a], ax        ; 89 86 66 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00F9                          ; 74 27
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     word ptr [bp - 0x78], 1         ; C7 46 88 01 00
        or      byte ptr [bp - 0x8d], 1         ; 80 8E 73 FF 01
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        jmp     L_01F1                          ; E9 F8 00
L_00F9:
        test    byte ptr [di + 8], 0x20         ; F6 45 08 20
        je      L_0107                          ; 74 08
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    far _SEG1_1A12                  ; 9A FF FF 00 00 [FIXUP]
L_0107:
        mov     bx, word ptr [di + 0x12]        ; 8B 5D 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        cmp     ax, 5                           ; 3D 05 00
        jne     L_012A                          ; 75 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        jmp     L_0160                          ; EB 36
L_012A:
        cmp     word ptr [di + 0x80], 1         ; 83 BD 80 00 01
        jle     L_0137                          ; 7E 06
        mov     ax, word ptr [di + 0x80]        ; 8B 85 80 00
        jmp     L_013A                          ; EB 03
L_0137:
        mov     ax, 1                           ; B8 01 00
L_013A:
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0147                          ; 75 05
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
L_0147:
        cmp     word ptr [di + 0x82], 1         ; 83 BD 82 00 01
        jle     L_0154                          ; 7E 06
        mov     ax, word ptr [di + 0x82]        ; 8B 85 82 00
        jmp     L_0157                          ; EB 03
L_0154:
        mov     ax, 1                           ; B8 01 00
L_0157:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x8a], 1         ; C7 86 76 FF 01 00
L_0160:
        mov     bx, word ptr [di + 0x14]        ; 8B 5D 14
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, 1                           ; 3D 01 00
        jne     L_017C                          ; 75 07
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        jmp     L_019F                          ; EB 23
L_017C:
        mov     word ptr [bp - 0x20], 1         ; C7 46 E0 01 00
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jne     L_019F                          ; 75 15
        cmp     word ptr [bp - 0xa], 2          ; 83 7E F6 02
        jne     L_019F                          ; 75 0F
        mov     word ptr [bp - 0xa0], 1         ; C7 86 60 FF 01 00
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
L_019F:
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        sub     ax, word ptr [bx]               ; 2B 07
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_01F1:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_01FE                          ; 7D 07
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        jmp     L_0201                          ; EB 03
L_01FE:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_0201:
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_0211                          ; 7D 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        neg     ax                              ; F7 D8
        jmp     L_0214                          ; EB 03
L_0211:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
L_0214:
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        cmp     word ptr [bp - 0x78], 0         ; 83 7E 88 00
        je      L_0245                          ; 74 28
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_022E                          ; 7E 09
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        mov     word ptr [bp + 0x14], ax        ; 89 46 14
        mov     word ptr [bp + 0x10], si        ; 89 76 10
L_022E:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_0239                          ; 7F 03
        jmp     L_02D5                          ; E9 9C 00
L_0239:
        mov     si, word ptr [bp + 0x12]        ; 8B 76 12
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        mov     word ptr [bp + 0xe], si         ; 89 76 0E
        jmp     L_02D5                          ; E9 90 00
L_0245:
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jge     L_0257                          ; 7D 03
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
L_0257:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp + 0x14], cx        ; 89 4E 14
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jl      L_0276                          ; 7C 03
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
L_0276:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp + 0x10], cx        ; 89 4E 10
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jg      L_0297                          ; 7F 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_029E                          ; EB 07
L_0297:
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
L_029E:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp + 0x12], cx        ; 89 4E 12
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_02BE                          ; 7E 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_02C5                          ; EB 07
L_02BE:
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
L_02C5:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp + 0xe], cx         ; 89 4E 0E
L_02D5:
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        add     word ptr [bp + 0xa], ax         ; 01 46 0A
        cmp     word ptr [bp - 0x78], 0         ; 83 7E 88 00
        jne     L_02FD                          ; 75 16
        push    di                              ; 57
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_408                  ; 9A FF FF 00 00 [FIXUP]
        or      word ptr [bp - 0x8e], ax        ; 09 86 72 FF
L_02FD:
        cmp     word ptr [bp - 0x78], 0         ; 83 7E 88 00
        je      L_0306                          ; 74 03
        jmp     L_039B                          ; E9 95 00
L_0306:
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        jne     L_030F                          ; 75 03
        jmp     L_039B                          ; E9 8C 00
L_030F:
        test    byte ptr [bp - 0x8e], 2         ; F6 86 72 FF 02
        jne     L_0319                          ; 75 03
        jmp     L_039B                          ; E9 82 00
L_0319:
        mov     word ptr [bp - 0xc], 8          ; C7 46 F4 08 00
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0328                          ; 74 04
        or      byte ptr [bp - 0xc], 0x80       ; 80 4E F4 80
L_0328:
        cmp     word ptr [bp - 0x8a], 0         ; 83 BE 76 FF 00
        je      L_0349                          ; 74 1A
        cmp     word ptr [bp - 0x4c], 1         ; 83 7E B4 01
        jle     L_0339                          ; 7E 04
        or      byte ptr [bp - 0xc], 0x10       ; 80 4E F4 10
L_0339:
        cmp     word ptr [bp - 0x60], 5         ; 83 7E A0 05
        je      L_0349                          ; 74 0A
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_0349                          ; 74 04
        or      byte ptr [bp - 0xc], 0x20       ; 80 4E F4 20
L_0349:
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        je      L_039B                          ; 74 4C
        mov     bx, word ptr [bp - 0x40]        ; 8B 5E C0
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        and     ax, word ptr [bp - 0xc]         ; 23 46 F4
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_039B                          ; 75 3E
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 6], ax           ; 89 47 06
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_407                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], 1         ; C7 46 BA 01 00
L_039B:
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        je      L_03A4                          ; 74 03
        jmp     L_0B4F                          ; E9 AB 07
L_03A4:
        cmp     word ptr [bp - 0x8a], 0         ; 83 BE 76 FF 00
        je      L_0422                          ; 74 77
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_0422                          ; 74 71
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        mov     cl, 5                           ; B1 05
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        or      ax, ax                          ; 0B C0
        jne     L_03E6                          ; 75 03
        jmp     L_0B54                          ; E9 6E 07
L_03E6:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x84], ax        ; 89 86 7C FF
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        add     ax, word ptr [bp - 0x84]        ; 03 86 7C FF
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        add     ax, word ptr [bp - 0x76]        ; 03 46 8A
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
L_0422:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0xb8], ax        ; 39 86 48 FF
        jge     L_043C                          ; 7D 07
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
L_043C:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 0xb8], ax        ; 39 86 48 FF
        jge     L_0456                          ; 7D 07
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_0456:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 0x4c]        ; 2B 46 B4
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, word ptr [bp - 0x6e]        ; 2B 46 92
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        cmp     word ptr [bp - 0xa0], 0         ; 83 BE 60 FF 00
        je      L_053D                          ; 74 64
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    far _entry_415                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jne     L_04F3                          ; 75 08
L_04EB:
        mov     word ptr [bp - 0x7c], 0         ; C7 46 84 00 00
        jmp     L_0B54                          ; E9 61 06
L_04F3:
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far _entry_401                  ; 9A 16 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jne     L_050F                          ; 75 0A
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _SEG1_1212                  ; 9A 25 05 00 00 [FIXUP]
        jmp     L_04EB                          ; EB DC
L_050F:
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far _entry_401                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0538                          ; 75 17
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04EB                          ; EB B3
L_0538:
        or      byte ptr [bp - 0x8e], 0x40      ; 80 8E 72 FF 40
L_053D:
        call    far _SEG1_1662                  ; 9A 79 03 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A 6E 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 99 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A A9 05 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x3e]                 ; 8D 7E C2
        lea     si, [bp - 0x58]                 ; 8D 76 A8
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A C6 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 00 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        mov     word ptr [bp - 0x72], dx        ; 89 56 8E
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A F2 05 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x52]                 ; 8D 7E AE
        lea     si, [bp - 0x74]                 ; 8D 76 8C
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A 33 06 00 00 [FIXUP]
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x72]            ; FF 76 8E
        push    word ptr [bp - 0x74]            ; FF 76 8C
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_17F3                  ; 9A 87 06 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xb4], ax        ; 89 86 4C FF
        mov     word ptr [bp - 0xb6], ax        ; 89 86 4A FF
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A 13 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 41 06 00 00 [FIXUP]
        mov     word ptr [bp - 0xb0], ax        ; 89 86 50 FF
        mov     word ptr [bp - 0xae], dx        ; 89 96 52 FF
        lea     ax, [bp - 0xb0]                 ; 8D 86 50 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A 51 06 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x98]                 ; 8D BE 68 FF
        lea     si, [bp - 0xb0]                 ; 8D B6 50 FF
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A 70 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x68]        ; 8B 46 98
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0xaa]                 ; 8D BE 56 FF
        lea     si, [bp - 0x16]                 ; 8D 76 EA
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_17F3                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        sub     si, si                          ; 2B F6
        jmp     L_0A1D                          ; E9 80 03
L_069D:
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A B7 06 00 00 [FIXUP]
        lea     ax, [bp - 0x74]                 ; 8D 46 8C
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A F9 06 00 00 [FIXUP]
        jmp     L_06E2                          ; EB 25
L_06BD:
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A D7 06 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A 1C 07 00 00 [FIXUP]
        dec     word ptr [bp - 0x4a]            ; FF 4E B6
        inc     word ptr [bp - 0x8c]            ; FF 86 74 FF
L_06E2:
        cmp     word ptr [bp - 0x5a], 0         ; 83 7E A6 00
        jl      L_06BD                          ; 7C D5
        cmp     word ptr [bp - 0x6e], si        ; 39 76 92
        jg      L_073E                          ; 7F 51
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A 09 07 00 00 [FIXUP]
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xaa]                 ; 8D 86 56 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0737                          ; EB 28
L_070F:
        lea     ax, [bp - 0xb6]                 ; 8D 86 4A FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xb0]                 ; 8D 86 50 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A 2D 07 00 00 [FIXUP]
        lea     ax, [bp - 0xb0]                 ; 8D 86 50 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A FF FF 00 00 [FIXUP]
        dec     word ptr [bp - 0x26]            ; FF 4E DA
        inc     word ptr [bp - 0x36]            ; FF 46 CA
L_0737:
        cmp     word ptr [bp - 0xb2], 0         ; 83 BE 4E FF 00
        jl      L_070F                          ; 7C D1
L_073E:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jle     L_0753                          ; 7E 0D
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
L_0753:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp - 0xa4]        ; 03 86 5C FF
        sub     ax, si                          ; 2B C6
        dec     ax                              ; 48
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        cmp     word ptr [bp - 0x78], 0         ; 83 7E 88 00
        je      L_07BB                          ; 74 4C
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_409                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 0x88                        ; 0C 88
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        jmp     L_09ED                          ; E9 32 02
L_07BB:
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_082D                          ; 74 6C
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cmp     word ptr [bp - 0x82], ax        ; 39 86 7E FF
        jle     L_082D                          ; 7E 63
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_409                  ; 9A 29 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        cmp     word ptr [bp - 0x7e], ax        ; 39 46 82
        je      L_082D                          ; 74 25
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 0x88                        ; 0C 88
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0x7e]            ; FF 76 82
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_409                  ; 9A D0 09 00 00 [FIXUP]
L_082D:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cmp     word ptr [bp - 0x82], ax        ; 39 86 7E FF
        jle     L_085E                          ; 7E 20
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bp - 0x6c], 4         ; C7 46 94 04 00
        jmp     L_0871                          ; EB 13
L_085E:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bp - 0x6c], 2         ; C7 46 94 02 00
L_0871:
        cmp     word ptr [bp - 0x8a], 0         ; 83 BE 76 FF 00
        jne     L_087B                          ; 75 03
        jmp     L_0A01                          ; E9 86 01
L_087B:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jne     L_0884                          ; 75 03
        jmp     L_09AF                          ; E9 2B 01
L_0884:
        cmp     word ptr [bp - 0x6c], 2         ; 83 7E 94 02
        je      L_088D                          ; 74 03
        jmp     L_092E                          ; E9 A1 00
L_088D:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x9e]        ; 8B 9E 62 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x84]        ; 03 9E 7C FF
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x9e]        ; 8B 9E 62 FF
        inc     word ptr [bp - 0x9e]            ; FF 86 62 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x84]        ; 03 9E 7C FF
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        dec     ax                              ; 48
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x2e]        ; 03 5E D2
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        inc     word ptr [bp - 0x44]            ; FF 46 BC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x2e]        ; 03 5E D2
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x18]        ; 03 5E E8
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x18]        ; 03 5E E8
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        dec     ax                              ; 48
L_0909:
        mov     bx, word ptr [bp - 0x90]        ; 8B 9E 70 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x76]        ; 03 5E 8A
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x90]        ; 8B 9E 70 FF
        inc     word ptr [bp - 0x90]            ; FF 86 70 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x76]        ; 03 5E 8A
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     word ptr [bx + 2], ax           ; 89 47 02
        jmp     L_0A01                          ; E9 D3 00
L_092E:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        dec     ax                              ; 48
        mov     bx, word ptr [bp - 0x9e]        ; 8B 9E 62 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x84]        ; 03 9E 7C FF
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x9e]        ; 8B 9E 62 FF
        inc     word ptr [bp - 0x9e]            ; FF 86 62 FF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x84]        ; 03 9E 7C FF
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x2e]        ; 03 5E D2
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        inc     word ptr [bp - 0x44]            ; FF 46 BC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x2e]        ; 03 5E D2
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        dec     ax                              ; 48
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x18]        ; 03 5E E8
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x18]        ; 03 5E E8
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        jmp     L_0909                          ; E9 5A FF
L_09AF:
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x6c]            ; FF 76 94
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_409                  ; 9A FD 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        cmp     word ptr [bp - 0x7e], ax        ; 39 46 82
        je      L_0A01                          ; 74 24
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x6c]            ; FF 76 94
L_09ED:
        push    word ptr [bp - 0x7e]            ; FF 76 82
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_409                  ; 9A 62 0A 00 00 [FIXUP]
L_0A01:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        inc     si                              ; 46
L_0A1D:
        cmp     word ptr [bp - 0x24], si        ; 39 76 DC
        jle     L_0A25                          ; 7E 03
        jmp     L_069D                          ; E9 78 FC
L_0A25:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0A6C                          ; 74 2F
        mov     si, word ptr [bp - 0xa2]        ; 8B B6 5E FF
        jmp     L_0A66                          ; EB 23
L_0A43:
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_409                  ; 9A 40 0B 00 00 [FIXUP]
L_0A66:
        inc     si                              ; 46
        cmp     word ptr [bp - 0x7e], si        ; 39 76 82
        jg      L_0A43                          ; 7F D7
L_0A6C:
        cmp     word ptr [bp - 0xa0], 0         ; 83 BE 60 FF 00
        je      L_0AAE                          ; 74 3B
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _SEG1_12B6                  ; 9A A2 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    di                              ; 57
        push    word ptr [bp - 0x28]            ; FF 76 D8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A 97 0A 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far _entry_402                  ; 9A 32 05 00 00 [FIXUP]
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _SEG1_1212                  ; 9A 09 05 00 00 [FIXUP]
L_0AAE:
        cmp     word ptr [bp - 0x8a], 0         ; 83 BE 76 FF 00
        jne     L_0AB8                          ; 75 03
        jmp     L_0B4A                          ; E9 92 00
L_0AB8:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_0AF8                          ; 74 3A
        push    word ptr [bp - 0x84]            ; FF B6 7C FF
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x76]            ; FF 76 8A
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    L_0B77                          ; E8 A2 00
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A 5D 0B 00 00 [FIXUP]
        jmp     L_0B4A                          ; EB 52
L_0AF8:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        add     ax, word ptr [bp - 0x92]        ; 03 86 6E FF
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     si, word ptr [bp - 0xa2]        ; 8B B6 5E FF
        jmp     L_0B44                          ; EB 23
L_0B21:
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        call    far _entry_409                  ; 9A A3 07 00 00 [FIXUP]
L_0B44:
        inc     si                              ; 46
        cmp     word ptr [bp - 0x7e], si        ; 39 76 82
        jg      L_0B21                          ; 7F D7
L_0B4A:
        call    far _SEG1_1694                  ; 9A 92 03 00 00 [FIXUP]
L_0B4F:
        mov     word ptr [bp - 0x7c], 1         ; C7 46 84 01 00
L_0B54:
        mov     bx, word ptr [bp - 0x88]        ; 8B 9E 78 FF
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0B61:
        mov     bx, word ptr [di + 0xc]         ; 8B 5D 0C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        mov     ax, word ptr [bp - 0x7c]        ; 8B 46 84
L_0B6A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B77 -- offset 0x0B77 -- 86 instr
; Dispatcher: tabla de decisiones cmp+jcc (86 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0B77:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, di                          ; 8B DF
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0BB7                          ; EB 19
L_0B9E:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     word ptr [bp + 0xe], 4          ; 83 46 0E 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, di                          ; 8B DF
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0BB7:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0B9E                          ; 7C E2
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        sub     ax, 4                           ; 2D 04 00
        add     word ptr [bp + 0xa], ax         ; 01 46 0A
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0BE8                          ; EB 19
L_0BCF:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [di], ax               ; 89 05
        sub     word ptr [bp + 0xa], 4          ; 83 6E 0A 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, di                          ; 8B DF
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0BE8:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0BCF                          ; 7C E2
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0C0D                          ; EB 19
L_0BF4:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [di], ax               ; 89 05
        add     word ptr [bp + 8], 4            ; 83 46 08 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, di                          ; 8B DF
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0C0D:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0BF4                          ; 7C E2
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        sub     ax, 4                           ; 2D 04 00
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0C3E                          ; EB 19
L_0C25:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [di], ax               ; 89 05
        sub     word ptr [bp + 0xc], 4          ; 83 6E 0C 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, di                          ; 8B DF
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0C3E:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0C25                          ; 7C E2
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ch                            ; 0C

GDI_TEXT ENDS

        END
