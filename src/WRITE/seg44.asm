; AUTO-GENERATED from original WRITE segment 44
; segment_size=3930 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x6e                        ; 83 EC 6E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     ax, word ptr [0x33e]            ; A1 3E 03
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_0049                          ; 75 24
        mov     ax, word ptr [0x32a]            ; A1 2A 03
        mov     dx, word ptr [0x32c]            ; 8B 16 2C 03
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jne     L_0049                          ; 75 18
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_0049                          ; 75 13
        mov     ax, word ptr [0x32e]            ; A1 2E 03
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_0049                          ; 75 0B
        mov     ax, word ptr [0x358]            ; A1 58 03
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0049                          ; 75 03
        jmp     L_0C7C                          ; E9 33 0C
L_0049:
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, 0x32a                       ; BF 2A 03
        mov     ax, 0                           ; B8 00 00
        mov     cx, 0x16                        ; B9 16 00
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     word ptr [0x354], 0             ; C7 06 54 03 00 00
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [0x33e], ax            ; A3 3E 03
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x358], ax            ; A3 58 03
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [0x32a], ax            ; A3 2A 03
        mov     word ptr [0x32c], dx            ; 89 16 2C 03
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        mov     word ptr [0x32e], cx            ; 89 0E 2E 03
        cmp     dx, word ptr [bp + 0xa]         ; 3B 56 0A
        jl      L_00B1                          ; 7C 2B
        jg      L_008D                          ; 7F 05
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jbe     L_00B1                          ; 76 24
L_008D:
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     word ptr [0x35a], 0             ; C7 06 5A 03 00 00
        mov     ax, word ptr [0xe9a]            ; A1 9A 0E
        mov     word ptr [0x34c], ax            ; A3 4C 03
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     word ptr [0x352], ax            ; A3 52 03
        jmp     L_0C7C                          ; E9 CB 0B
L_00B1:
        mov     word ptr [0x75a], 0             ; C7 06 5A 07 00 00
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0xe18        ; C7 46 F8 18 0E
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], 0xb72     ; C7 46 EA 72 0B
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        test    word ptr [bx + 0x10], 0x10      ; F7 47 10 10 00
        je      L_0104                          ; 74 1D
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_278                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C7C                          ; E9 78 0B
L_0104:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EDE                          ; E8 D5 0D
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        je      L_0117                          ; 74 07
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_011F                          ; 75 08
L_0117:
        call    far _entry_254                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C7C                          ; E9 5D 0B
L_011F:
        lea     dx, [bp - 0x38]                 ; 8D 56 C8
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, dx                          ; 8B FA
        mov     ax, 0                           ; B8 00 00
        mov     cx, 0x10                        ; B9 10 00
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     word ptr [bp - 0x1c], 4         ; C7 46 E4 04 00
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0160                          ; 74 1D
        mov     ax, word ptr [0xa5a]            ; A1 5A 0A
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, word ptr [0xa6c]            ; A1 6C 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x10ee]           ; A1 EE 10
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0x10fe]           ; A1 FE 10
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0x1bec]           ; A1 EC 1B
        jmp     L_0178                          ; EB 18
L_0160:
        mov     ax, 0x5a0                       ; B8 A0 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, word ptr [0xe0e]            ; A1 0E 0E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0xe16]            ; A1 16 0E
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0xa56]            ; A1 56 0A
L_0178:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jne     L_019B                          ; 75 0B
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_019B                          ; 75 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     word ptr [bp - 0x3e], ax        ; 01 46 C2
L_019B:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     cx, 0x7bc0                      ; B9 C0 7B
        cmp     ax, cx                          ; 3B C1
        jbe     L_01B1                          ; 76 03
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
L_01B1:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        cmp     ax, cx                          ; 3B C1
        jbe     L_01BB                          ; 76 03
        mov     word ptr [bp - 0x3e], cx        ; 89 4E C2
L_01BB:
        cmp     ax, 0                           ; 3D 00 00
        jge     L_01C5                          ; 7D 05
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
L_01C5:
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_01CE                          ; 73 04
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_01CE:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [0x340], ax            ; A3 40 03
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A D8 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    far _entry_94                   ; 9A F1 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [0x346], ax            ; A3 46 03
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A 02 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0233                          ; 74 05
        mov     ax, word ptr [0x79e]            ; A1 9E 07
        jmp     L_0236                          ; EB 03
L_0233:
        mov     ax, word ptr [0x798]            ; A1 98 07
L_0236:
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x2a], 0xffff    ; C7 46 D6 FF FF
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        jmp     L_0264                          ; EB 09
L_025B:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
L_0264:
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], 0         ; C7 46 AC 00 00
        mov     ax, word ptr [0xe0c]            ; A1 0C 0E
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        or      ax, ax                          ; 0B C0
        je      L_025B                          ; 74 DF
        mov     ax, word ptr [0x1022]           ; A1 22 10
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jg      L_02D9                          ; 7F 4B
        jl      L_02A3                          ; 7C 13
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_02A3                          ; 76 0E
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_02D9                          ; 75 3E
        mov     bx, word ptr [bp - 0x4c]        ; 8B 5E B4
        cmp     byte ptr [bx], 0xc              ; 80 3F 0C
        jne     L_02D9                          ; 75 36
L_02A3:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, 0xe7e                       ; BE 7E 0E
        mov     di, 0xbf8                       ; BF F8 0B
        mov     cx, 5                           ; B9 05 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        cmp     si, di                          ; 3B F7
        jae     L_02C5                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
L_02C5:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        and     byte ptr [0xbf9], 3             ; 80 26 F9 0B 03
        and     byte ptr [0xbfc], 0xf8          ; 80 26 FC 0B F8
        mov     byte ptr [0xbfa], 0x14          ; C6 06 FA 0B 14
L_02D9:
        lea     dx, [bp - 0x70]                 ; 8D 56 90
        push    si                              ; 56
        push    di                              ; 57
        mov     si, 0xbf8                       ; BE F8 0B
        mov     di, dx                          ; 8B FA
        mov     cx, 5                           ; B9 05 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        cmp     si, di                          ; 3B F7
        jae     L_02FD                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
L_02FD:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0327                          ; 74 1F
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_253                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x122c]           ; A1 2C 12
        add     ax, word ptr [0x1232]           ; 03 06 32 12
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0x122e]           ; A1 2E 12
        jmp     L_0344                          ; EB 1D
L_0327:
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_253                  ; 9A 14 03 00 00 [FIXUP]
        mov     ax, word ptr [0xec2]            ; A1 C2 0E
        add     ax, word ptr [0xec8]            ; 03 06 C8 0E
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [0xec4]            ; A1 C4 0E
L_0344:
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0351                          ; 74 03
        jmp     L_071E                          ; E9 CD 03
L_0351:
        test    byte ptr [bp - 0x6b], 0xff      ; F6 46 95 FF
        je      L_036C                          ; 74 15
        mov     al, byte ptr [bp - 0x6b]        ; 8A 46 95
        cmp     al, 0x80                        ; 3C 80
        jae     L_0366                          ; 73 08
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0x18], ax        ; 01 46 E8
        jmp     L_036C                          ; EB 06
L_0366:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0x44], ax        ; 01 46 BC
L_036C:
        mov     word ptr [bp - 0x58], 0         ; C7 46 A8 00 00
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        cmp     word ptr [bp - 0x40], ax        ; 39 46 C0
        jge     L_0381                          ; 7D 08
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x58], 1         ; C7 46 A8 01 00
L_0381:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_0391                          ; 7D 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x58], 1         ; C7 46 A8 01 00
L_0391:
        cmp     word ptr [bp - 0x58], 0         ; 83 7E A8 00
        je      L_03CC                          ; 74 35
        mov     si, word ptr [bp - 0x40]        ; 8B 76 C0
        add     si, word ptr [bp - 0xc]         ; 03 76 F4
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cmp     ax, 0xf0                        ; 3D F0 00
        jle     L_03C4                          ; 7E 1C
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_94                   ; 9A 18 02 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     si, di                          ; 3B F7
        jle     L_03C9                          ; 7E 05
L_03C4:
        mov     word ptr [bp - 0x24], si        ; 89 76 DC
        jmp     L_03CC                          ; EB 03
L_03C9:
        mov     word ptr [bp - 0x24], di        ; 89 7E DC
L_03CC:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        sub     ax, word ptr [0x32a]            ; 2B 06 2A 03
        cmp     ax, 0xff                        ; 3D FF 00
        jl      L_03DB                          ; 7C 03
        mov     ax, 0xfe                        ; B8 FE 00
L_03DB:
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     word ptr [0x75a], 0             ; 83 3E 5A 07 00
        jle     L_0421                          ; 7E 36
        or      ax, ax                          ; 0B C0
        jg      L_0421                          ; 7F 32
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x75a]                ; F7 2E 5A 07
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        add     ax, word ptr [bx]               ; 03 07
        sub     ax, 0xa                         ; 2D 0A 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0421                          ; 75 10
        mov     bx, word ptr [bp - 0x4c]        ; 8B 5E B4
        cmp     byte ptr [bx], 9                ; 80 3F 09
        je      L_0421                          ; 74 08
        cmp     byte ptr [bx], 0x1f             ; 80 3F 1F
        je      L_0421                          ; 74 03
        jmp     L_04DC                          ; E9 BB 00
L_0421:
        mov     ax, word ptr [0xee0]            ; A1 E0 0E
        cmp     word ptr [0x75a], ax            ; 39 06 5A 07
        jne     L_0434                          ; 75 0A
        call    L_0DE6                          ; E8 B9 09
        or      ax, ax                          ; 0B C0
        jne     L_0434                          ; 75 03
        jmp     L_04DC                          ; E9 A8 00
L_0434:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x75a]                ; F7 2E 5A 07
        mov     si, ax                          ; 8B F0
        sub     si, 0xa                         ; 83 EE 0A
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        add     si, word ptr [bx]               ; 03 37
        cmp     word ptr [0x75a], 0             ; 83 3E 5A 07 00
        jle     L_045C                          ; 7E 0F
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     byte ptr [si + 9], al           ; 88 44 09
        mov     al, byte ptr [bp - 0x28]        ; 8A 46 D8
        mov     byte ptr [si + 8], al           ; 88 44 08
L_045C:
        add     si, 0xa                         ; 83 C6 0A
        mov     dx, si                          ; 8B D6
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    si                              ; 56
        push    di                              ; 57
        mov     si, ax                          ; 8B F0
        mov     di, dx                          ; 8B FA
        mov     cx, 5                           ; B9 05 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        cmp     si, di                          ; 3B F7
        jae     L_0484                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
L_0484:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        or      byte ptr [si + 9], 0xff         ; 80 4C 09 FF
        cmp     word ptr [bp - 0x56], 0         ; 83 7E AA 00
        jg      L_0498                          ; 7F 05
        mov     al, byte ptr [bp - 0x2c]        ; 8A 46 D4
        jmp     L_04CF                          ; EB 37
L_0498:
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        shl     dx, 1                           ; D1 E2
        add     dx, 0x35a                       ; 81 C2 5A 03
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, dx                          ; 8B FA
        mov     ax, 0                           ; B8 00 00
        mov     cx, word ptr [bp - 0x56]        ; 8B 4E AA
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        add     dx, 0x558                       ; 81 C2 58 05
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, dx                          ; 8B FA
        mov     al, 0                           ; B0 00
        mov     cx, word ptr [bp - 0x56]        ; 8B 4E AA
        cld                                     ; FC
        rep stosb byte ptr es:[di], al          ; F3 AA
        pop     di                              ; 5F
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
L_04CF:
        mov     byte ptr [si + 8], al           ; 88 44 08
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        inc     word ptr [0x75a]                ; FF 06 5A 07
L_04DC:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jle     L_04EB                          ; 7E 03
        jmp     L_057A                          ; E9 8F 00
L_04EB:
        jl      L_04F5                          ; 7C 08
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jbe     L_04F5                          ; 76 03
        jmp     L_057A                          ; E9 85 00
L_04F5:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0505                          ; 74 0A
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jne     L_0514                          ; 75 14
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_0514                          ; 75 0F
L_0505:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [0x344], ax            ; A3 44 03
L_0514:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0546                          ; 75 2C
        mov     ax, word ptr [0x700]            ; A1 00 07
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        je      L_0546                          ; 74 24
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     byte ptr [bx + 0x558], 0xa4     ; C6 87 58 05 A4
        mov     ax, 0xa4                        ; B8 A4 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 DF 08
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x35a], ax       ; 89 87 5A 03
        add     word ptr [0x344], ax            ; 01 06 44 03
L_0546:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0x352], ax            ; A3 52 03
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     word ptr [0x336], ax            ; A3 36 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        jmp     L_0BB9                          ; E9 3F 06
L_057A:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        add     ax, word ptr [bp - 0x4a]        ; 03 46 B6
        cmp     ax, 0xff                        ; 3D FF 00
        jle     L_0593                          ; 7E 0E
        mov     ax, 0xff                        ; B8 FF 00
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
L_0593:
        mov     word ptr [bp - 0x26], 0         ; C7 46 DA 00 00
        test    byte ptr [bp - 0x6d], 0x40      ; F6 46 93 40
        jne     L_05A1                          ; 75 03
        jmp     L_077C                          ; E9 DB 01
L_05A1:
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0xe18]            ; A1 18 0E
        mov     cl, 0xb                         ; B1 0B
        shr     ax, cl                          ; D3 E8
        and     ax, 7                           ; 25 07 00
        push    ax                              ; 50
        call    far _entry_279                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05BF                          ; 74 03
        jmp     L_077C                          ; E9 BD 01
L_05BF:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_05C8                          ; 75 03
        jmp     L_0727                          ; E9 5F 01
L_05C8:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        sub     ax, word ptr [0x330]            ; 2B 06 30 03
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        mov     word ptr [0x338], ax            ; A3 38 03
L_05D6:
        cmp     word ptr [bp - 0x1e], 0x1f      ; 83 7E E2 1F
        je      L_05DF                          ; 74 03
        jmp     L_0632                          ; EB 54
        nop                                     ; 90
L_05DF:
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 2A 08
        mov     bx, word ptr [0x33c]            ; 8B 1E 3C 03
        mov     word ptr [0x336], bx            ; 89 1E 36 03
        dec     bx                              ; 4B
        mov     byte ptr [bx + 0x558], 0x2d     ; C6 87 58 05 2D
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x35a], ax       ; 89 87 5A 03
        add     word ptr [bp - 0x32], ax        ; 01 46 CE
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [0x344], ax            ; A3 44 03
        mov     word ptr [0x342], ax            ; A3 42 03
        mov     ax, word ptr [0x75a]            ; A1 5A 07
        dec     ax                              ; 48
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0632                          ; 7D 1E
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        add     di, word ptr [bx]               ; 03 3F
        inc     byte ptr [di + 9]               ; FE 45 09
        mov     dx, word ptr [0x336]            ; 8B 16 36 03
        cmp     byte ptr [di + 8], dl           ; 38 55 08
        jb      L_0632                          ; 72 04
        dec     dx                              ; 4A
        mov     byte ptr [di + 8], dl           ; 88 55 08
L_0632:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_063E                          ; 74 06
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        mov     word ptr [0x336], ax            ; A3 36 03
L_063E:
        cmp     word ptr [bp - 0x1c], 4         ; 83 7E E4 04
        jne     L_0647                          ; 75 03
        jmp     L_0C36                          ; E9 EF 05
L_0647:
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        jmp     L_0C4D                          ; E9 FC 05
L_0651:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        mov     di, word ptr [bp - 0x4c]        ; 8B 7E B4
        mov     al, byte ptr [bx + di]          ; 8A 01
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
L_0660:
        cmp     si, 0x20                        ; 83 FE 20
        jne     L_0699                          ; 75 34
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0670                          ; 74 05
        mov     ax, word ptr [0x1228]           ; A1 28 12
        jmp     L_0673                          ; EB 03
L_0670:
        mov     ax, word ptr [0xebe]            ; A1 BE 0E
L_0673:
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x35a], ax       ; 89 87 5A 03
        add     word ptr [bp - 0x38], ax        ; 01 46 C8
        mov     ax, word ptr [0x1228]           ; A1 28 12
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        add     word ptr [bp - 0x30], ax        ; 01 46 D0
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     byte ptr [bx + 0x558], 0x20     ; C6 87 58 05 20
        jmp     L_0AF1                          ; E9 58 04
L_0699:
        cmp     si, 0x20                        ; 83 FE 20
        jl      L_06B4                          ; 7C 16
        cmp     si, 0x80                        ; 81 FE 80 00
        jge     L_06B4                          ; 7D 10
        mov     bx, word ptr [0x1226]           ; 8B 1E 26 12
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_06C1                          ; 75 0D
L_06B4:
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 57 07
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
L_06C1:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_06CC                          ; 74 05
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        jmp     L_06F0                          ; EB 24
L_06CC:
        cmp     si, 0x20                        ; 83 FE 20
        jl      L_06E7                          ; 7C 16
        cmp     si, 0x80                        ; 81 FE 80 00
        jge     L_06E7                          ; 7D 10
        mov     bx, word ptr [0xebc]            ; 8B 1E BC 0E
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_06F3                          ; 75 0C
L_06E7:
        push    si                              ; 56
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 25 07
L_06F0:
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_06F3:
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x35a], ax       ; 89 87 5A 03
        add     word ptr [bp - 0x38], ax        ; 01 46 C8
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        add     word ptr [bp - 0x30], ax        ; 01 46 D0
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     ax, si                          ; 8B C6
        mov     byte ptr [bx + 0x558], al       ; 88 87 58 05
        cmp     si, 0x2d                        ; 83 FE 2D
        jle     L_0747                          ; 7E 31
L_0716:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jle     L_0740                          ; 7E 22
L_071E:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0727                          ; 74 03
        jmp     L_05C8                          ; E9 A1 FE
L_0727:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_0EC1                          ; E8 92 07
        or      ax, ax                          ; 0B C0
        jne     L_0736                          ; 75 03
        jmp     L_0BEC                          ; E9 B6 04
L_0736:
        cmp     word ptr [bp - 0x2c], 0xff      ; 81 7E D4 FF 00
        jl      L_0740                          ; 7C 03
        jmp     L_0BEC                          ; E9 AC 04
L_0740:
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        jmp     L_077C                          ; EB 35
L_0747:
        mov     ax, si                          ; 8B C6
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0751                          ; 75 03
        jmp     L_07F4                          ; E9 A3 00
L_0751:
        jle     L_0756                          ; 7E 03
        jmp     L_0C61                          ; E9 0B 05
L_0756:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_075E                          ; 75 03
        jmp     L_0919                          ; E9 BB 01
L_075E:
        cmp     ax, 0xa                         ; 3D 0A 00
        jl      L_0716                          ; 7C B3
        cmp     ax, 0xb                         ; 3D 0B 00
        jg      L_076B                          ; 7F 03
        jmp     L_0AFB                          ; E9 90 03
L_076B:
        jmp     L_0716                          ; EB A9
L_076D:
        dec     word ptr [bp - 0x2c]            ; FF 4E D4
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        sub     word ptr [bp - 0x38], ax        ; 29 46 C8
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     word ptr [bp - 0x30], ax        ; 29 46 D0
L_077C:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        je      L_0787                          ; 74 03
        jmp     L_0651                          ; E9 CA FE
L_0787:
        cmp     word ptr [bp - 0x2c], 0xff      ; 81 7E D4 FF 00
        jge     L_071E                          ; 7D 90
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_0797                          ; 75 03
        jmp     L_025B                          ; E9 C4 FA
L_0797:
        add     word ptr [bp - 0x54], ax        ; 01 46 AC
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        add     ax, word ptr [0x1022]           ; 03 06 22 10
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [0xe0c]            ; A1 0C 0E
        sub     ax, word ptr [bp - 0x54]        ; 2B 46 AC
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        jmp     L_03CC                          ; E9 17 FC
L_07B5:
        dec     word ptr [bp - 0x2c]            ; FF 4E D4
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        sub     word ptr [bp - 0x38], ax        ; 29 46 C8
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     word ptr [bp - 0x30], ax        ; 29 46 D0
        mov     ax, word ptr [0x75a]            ; A1 5A 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 3D 06
        add     ax, word ptr [bp - 0x30]        ; 03 46 D0
        cmp     ax, word ptr [bp - 0x2e]        ; 3B 46 D2
        jle     L_07E3                          ; 7E 03
        jmp     L_071E                          ; E9 3B FF
L_07E3:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     byte ptr [bx + 0x558], 9        ; C6 87 58 05 09
        jmp     L_0A12                          ; E9 1E 02
L_07F4:
        dec     word ptr [bp - 0x2c]            ; FF 4E D4
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        sub     word ptr [bp - 0x38], ax        ; 29 46 C8
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     word ptr [bp - 0x30], ax        ; 29 46 D0
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0x352], ax            ; A3 52 03
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [0x34c], ax            ; A3 4C 03
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    L_0EC1                          ; E8 96 06
        or      ax, ax                          ; 0B C0
        jne     L_0832                          ; 75 03
        jmp     L_08D6                          ; E9 A4 00
L_0832:
        mov     ax, word ptr [0x33a]            ; A1 3A 03
        mov     al, 1                           ; B0 01
        mov     word ptr [0x33a], ax            ; A3 3A 03
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0843                          ; 74 03
        jmp     L_08CD                          ; E9 8A 00
L_0843:
        mov     word ptr [bp - 0x5a], 0x2e      ; C7 46 A6 2E 00
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 C2 05
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     ax, 0x11                        ; B8 11 00
        imul    word ptr [0xe0e]                ; F7 2E 0E 0E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x5e]        ; 8B 4E A2
        idiv    cx                              ; F7 F9
        cmp     ax, 0xdf                        ; 3D DF 00
        jge     L_086F                          ; 7D 02
        jmp     L_0872                          ; EB 03
L_086F:
        mov     ax, 0xdf                        ; B8 DF 00
L_0872:
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        add     dx, 0x558                       ; 81 C2 58 05
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [bp - 0x5a]        ; 8A 46 A6
        mov     cx, word ptr [bp - 0x5c]        ; 8B 4E A4
        cld                                     ; FC
        rep stosb byte ptr es:[di], al          ; F3 AA
        pop     di                              ; 5F
        mov     dx, word ptr [bp - 0x2c]        ; 8B 56 D4
        shl     dx, 1                           ; D1 E2
        add     dx, 0x35a                       ; 81 C2 5A 03
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, dx                          ; 8B FA
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        mov     cx, word ptr [bp - 0x5c]        ; 8B 4E A4
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        add     ax, word ptr [bp - 0x5c]        ; 03 46 A4
        mov     word ptr [0x336], ax            ; A3 36 03
        push    word ptr [0x798]                ; FF 36 98 07
        mov     ax, 0x558                       ; B8 58 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x344], ax            ; A3 44 03
        mov     word ptr [0x340], 0             ; C7 06 40 03 00 00
        jmp     L_0C59                          ; E9 8C 03
L_08CD:
        mov     word ptr [0x336], 0             ; C7 06 36 03 00 00
        jmp     L_0C59                          ; E9 83 03
L_08D6:
        mov     word ptr [0x354], 1             ; C7 06 54 03 01 00
        mov     ax, word ptr [bp - 0x54]        ; 8B 46 AC
        dec     ax                              ; 48
        cdq                                     ; 99
        add     word ptr [0x330], ax            ; 01 06 30 03
        adc     word ptr [0x332], dx            ; 11 16 32 03
        mov     word ptr [0x338], 1             ; C7 06 38 03 01 00
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_090A                          ; 75 15
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [0x344], ax            ; A3 44 03
L_090A:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x336], ax            ; A3 36 03
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        jmp     L_05D6                          ; E9 BD FC
L_0919:
        dec     word ptr [bp - 0x2c]            ; FF 4E D4
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        sub     word ptr [bp - 0x38], ax        ; 29 46 C8
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     word ptr [bp - 0x30], ax        ; 29 46 D0
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jl      L_0933                          ; 7C 03
        jmp     L_0AE0                          ; E9 AD 01
L_0933:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_094B                          ; 75 12
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
L_094B:
        cmp     word ptr [bp - 0x1c], 4         ; 83 7E E4 04
        je      L_095E                          ; 74 0D
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C87                          ; E8 29 03
L_095E:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A B0 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        jmp     L_09A4                          ; EB 2B
L_0979:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x60], ax        ; 39 46 A0
        jb      L_0984                          ; 72 03
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
L_0984:
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        cmp     word ptr [bp - 0x60], ax        ; 39 46 A0
        jb      L_09A0                          ; 72 14
        add     word ptr [bp - 0x42], 4         ; 83 46 BE 04
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        and     ax, 7                           ; 25 07 00
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        jmp     L_09C7                          ; EB 27
L_09A0:
        add     word ptr [bp - 0x42], 4         ; 83 46 BE 04
L_09A4:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        or      ax, ax                          ; 0B C0
        jne     L_0979                          ; 75 C9
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        sub     dx, dx                          ; 2B D2
        mov     cx, word ptr [0x2a]             ; 8B 0E 2A 00
        div     cx                              ; F7 F1
        mul     cx                              ; F7 E1
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     word ptr [bp - 0x1c], 4         ; C7 46 E4 04 00
L_09C7:
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    far _entry_94                   ; 9A 70 09 00 00 [FIXUP]
        cmp     word ptr [bp - 0x38], ax        ; 39 46 C8
        jle     L_09DD                          ; 7E 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
L_09DD:
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        cmp     word ptr [bp - 0x1c], 4         ; 83 7E E4 04
        jne     L_09FC                          ; 75 16
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A D1 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
L_09FC:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
L_0A12:
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x336], ax            ; A3 36 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [0x344], ax            ; A3 44 03
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0x352], ax            ; A3 52 03
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 0x40]        ; 03 46 C0
        mov     word ptr [0x350], ax            ; A3 50 03
        cmp     word ptr [bp - 0x26], 1         ; 83 7E DA 01
        je      L_0AA7                          ; 74 69
        mov     ax, word ptr [0xee0]            ; A1 E0 0E
        cmp     word ptr [0x75a], ax            ; 39 06 5A 07
        jne     L_0A4E                          ; 75 07
        call    L_0DE6                          ; E8 9C 03
        or      ax, ax                          ; 0B C0
        je      L_0AA7                          ; 74 59
L_0A4E:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x75a]                ; F7 2E 5A 07
        mov     di, ax                          ; 8B F8
        sub     di, 0xa                         ; 83 EF 0A
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        add     di, word ptr [bx]               ; 03 3F
        cmp     word ptr [0x75a], 0             ; 83 3E 5A 07 00
        jle     L_0A76                          ; 7E 0F
        mov     al, byte ptr [bp - 0x28]        ; 8A 46 D8
        mov     byte ptr [di + 8], al           ; 88 45 08
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     byte ptr [di + 9], al           ; 88 45 09
L_0A76:
        add     di, 0xa                         ; 83 C7 0A
        lea     ax, [bp - 0x70]                 ; 8D 46 90
        push    si                              ; 56
        push    di                              ; 57
        mov     si, ax                          ; 8B F0
        mov     di, di                          ; 8B FF
        mov     cx, 5                           ; B9 05 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        cmp     si, di                          ; 3B F7
        jae     L_0A9C                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
L_0A9C:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        inc     word ptr [0x75a]                ; FF 06 5A 07
        jmp     L_0AB9                          ; EB 12
L_0AA7:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x75a]                ; F7 2E 5A 07
        mov     di, ax                          ; 8B F8
        sub     di, 0xa                         ; 83 EF 0A
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        add     di, word ptr [bx]               ; 03 3F
L_0AB9:
        mov     al, byte ptr [bp - 0x2c]        ; 8A 46 D4
        mov     byte ptr [di + 8], al           ; 88 45 08
        or      byte ptr [di + 9], 0xff         ; 80 4D 09 FF
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     word ptr [bp - 0x28], bx        ; 89 5E D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        sub     ax, word ptr [bp - 0x4e]        ; 2B 46 B2
        mov     word ptr [bx + 0x35a], ax       ; 89 87 5A 03
        cmp     si, 9                           ; 83 FE 09
        jne     L_0AF1                          ; 75 14
        jmp     L_077C                          ; E9 9C FC
L_0AE0:
        mov     si, 0xa0                        ; BE A0 00
        jmp     L_0660                          ; E9 7A FB
L_0AE6:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jle     L_0AF1                          ; 7E 03
        jmp     L_071E                          ; E9 2D FC
L_0AF1:
        cmp     word ptr [bp - 0x2c], 0xff      ; 81 7E D4 FF 00
        jl      L_0AFB                          ; 7C 03
        jmp     L_0727                          ; E9 2C FC
L_0AFB:
        mov     word ptr [bp - 0x1e], si        ; 89 76 E2
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     ax, word ptr [bp - 0x54]        ; 03 46 AC
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [0x344], ax            ; A3 44 03
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x336], ax            ; A3 36 03
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0x352], ax            ; A3 52 03
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [0x350], ax            ; A3 50 03
        cmp     si, 0x2d                        ; 83 FE 2D
        je      L_0B3C                          ; 74 05
        cmp     si, 0x1f                        ; 83 FE 1F
        jne     L_0B54                          ; 75 18
L_0B3C:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [0x344], ax            ; A3 44 03
        jmp     L_077C                          ; E9 28 FC
L_0B54:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_0B73                          ; 75 19
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        dec     ax                              ; 48
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [0x344], ax            ; A3 44 03
        sub     ax, word ptr [bp - 0x48]        ; 2B 46 B8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
L_0B73:
        cmp     si, 0xa                         ; 83 FE 0A
        je      L_0B7D                          ; 74 05
        cmp     si, 0xb                         ; 83 FE 0B
        jne     L_0BE1                          ; 75 64
L_0B7D:
        mov     word ptr [bp - 0x64], 0x20      ; C7 46 9C 20 00
        push    word ptr [bp - 0x64]            ; FF 76 9C
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E15                          ; E8 88 02
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     dl, byte ptr [bp - 0x64]        ; 8A 56 9C
        mov     byte ptr [bx + 0x557], dl       ; 88 97 57 05
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x358], ax       ; 89 87 58 03
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_0BB1                          ; 75 0E
        sub     ax, word ptr [bp - 0x48]        ; 2B 46 B8
        add     word ptr [0x344], ax            ; 01 06 44 03
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        dec     ax                              ; 48
        mov     word ptr [0x33c], ax            ; A3 3C 03
L_0BB1:
        cmp     si, 0xa                         ; 83 FE 0A
        je      L_0BB9                          ; 74 03
        jmp     L_05D6                          ; E9 1D FA
L_0BB9:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0BC5                          ; 74 06
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        mov     word ptr [0x336], ax            ; A3 36 03
L_0BC5:
        cmp     word ptr [bp - 0x1c], 4         ; 83 7E E4 04
        je      L_0BCE                          ; 74 03
        jmp     L_0647                          ; E9 79 FA
L_0BCE:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     ax, 3                           ; 3D 03 00
        je      L_0C53                          ; 74 74
        jmp     L_0C42                          ; EB 61
L_0BE1:
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
        jmp     L_077C                          ; E9 90 FB
L_0BEC:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     ax, word ptr [bp - 0x54]        ; 03 46 AC
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        dec     ax                              ; 48
        mov     word ptr [0x336], ax            ; A3 36 03
        mov     word ptr [0x33c], ax            ; A3 3C 03
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [0x352], ax            ; A3 52 03
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     word ptr [0x338], 1             ; C7 06 38 03 01 00
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        sub     ax, word ptr [bp - 0x48]        ; 2B 46 B8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [0x344], ax            ; A3 44 03
L_0C36:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
L_0C42:
        or      ax, ax                          ; 0B C0
        je      L_0C53                          ; 74 0D
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp - 0x34]            ; FF 76 CC
L_0C4D:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C87                          ; E8 34 00
L_0C53:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr [0x342], ax            ; A3 42 03
L_0C59:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     word ptr [0x356], ax            ; A3 56 03
        jmp     L_0C7C                          ; EB 1B
L_0C61:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_0C69                          ; 75 03
        jmp     L_076D                          ; E9 04 FB
L_0C69:
        cmp     ax, 0x1f                        ; 3D 1F 00
        jne     L_0C71                          ; 75 03
        jmp     L_07B5                          ; E9 44 FB
L_0C71:
        cmp     ax, 0x2d                        ; 3D 2D 00
        jne     L_0C79                          ; 75 03
        jmp     L_0AE6                          ; E9 6D FE
L_0C79:
        jmp     L_0716                          ; E9 9A FA
L_0C7C:
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     sp, [bp - 2]                    ; 8D 66 FE
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C87 -- offset 0x0C87 -- 147 instr
; Dispatcher: tabla de decisiones cmp+jcc (147 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0C87:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        cmp     ax, 3                           ; 3D 03 00
        je      L_0CEF                          ; 74 55
        cmp     ax, 1                           ; 3D 01 00
        je      L_0CCD                          ; 74 2E
        cmp     ax, 2                           ; 3D 02 00
        je      L_0CE7                          ; 74 43
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0CDC                          ; 75 33
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     dx, word ptr [bx + 2]           ; 2B 57 02
        mov     si, word ptr [bx + 0xe]         ; 8B 77 0E
        inc     si                              ; 46
L_0CB3:
        cmp     si, word ptr [0x33c]            ; 3B 36 3C 03
        jge     L_0CDC                          ; 7D 23
        mov     al, byte ptr [0x28]             ; A0 28 00
        cmp     byte ptr [si + 0x558], al       ; 38 84 58 05
        je      L_0CDC                          ; 74 1A
        shl     si, 1                           ; D1 E6
        sub     dx, word ptr [si + 0x35a]       ; 2B 94 5A 03
        shr     si, 1                           ; D1 EE
        inc     si                              ; 46
        jmp     L_0CB3                          ; EB E6
L_0CCD:
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     dx, word ptr [bx + 6]           ; 2B 57 06
        or      dx, dx                          ; 0B D2
        jg      L_0CDA                          ; 7F 03
        jmp     L_0DDD                          ; E9 03 01
L_0CDA:
        sar     dx, 1                           ; D1 FA
L_0CDC:
        cmp     dx, 0                           ; 83 FA 00
        jle     L_0CE4                          ; 7E 03
        jmp     L_0D95                          ; E9 B1 00
L_0CE4:
        jmp     L_0DDD                          ; E9 F6 00
L_0CE7:
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     dx, word ptr [bx + 6]           ; 2B 57 06
        jmp     L_0CDC                          ; EB ED
L_0CEF:
        cmp     word ptr [bx + 0x18], 0         ; 83 7F 18 00
        jne     L_0CF8                          ; 75 03
        jmp     L_0DDD                          ; E9 E5 00
L_0CF8:
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     dx, word ptr [bx + 6]           ; 2B 57 06
        or      dx, dx                          ; 0B D2
        jg      L_0D05                          ; 7F 03
        jmp     L_0DDD                          ; E9 D8 00
L_0D05:
        add     word ptr [bx], dx               ; 01 17
        add     word ptr [0x344], dx            ; 01 16 44 03
        mov     di, word ptr [0x33c]            ; 8B 3E 3C 03
        mov     si, di                          ; 8B F7
        add     di, 0x558                       ; 81 C7 58 05
        shl     si, 1                           ; D1 E6
        add     si, 0x35a                       ; 81 C6 5A 03
        push    dx                              ; 52
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, word ptr [bx + 0x18]        ; 8B 4F 18
        idiv    cx                              ; F7 F9
        mov     word ptr [0x34a], ax            ; A3 4A 03
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        pop     dx                              ; 5A
        mov     byte ptr [0x349], 1             ; C6 06 49 03 01
        dec     di                              ; 4F
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        std                                     ; FD
L_0D3A:
        mov     cx, 0xffff                      ; B9 FF FF
        mov     al, 0x20                        ; B0 20
        repne scasb al, byte ptr es:[di]        ; F2 AE
        inc     cx                              ; 41
        shl     cx, 1                           ; D1 E1
        add     si, cx                          ; 03 F1
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     word ptr [bp - 2]               ; FF 4E FE
        or      ax, ax                          ; 0B C0
        jne     L_0D68                          ; 75 18
        dec     word ptr [bp - 4]               ; FF 4E FC
        push    si                              ; 56
        cld                                     ; FC
L_0D55:
        inc     si                              ; 46
        inc     si                              ; 46
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0D55                          ; 74 F9
        mov     ax, si                          ; 8B C6
        sub     ax, 0x35a                       ; 2D 5A 03
        shr     ax, 1                           ; D1 E8
        std                                     ; FD
        pop     si                              ; 5E
        mov     byte ptr [0x33b], al            ; A2 3B 03
L_0D68:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [si], ax               ; 01 04
        sub     dx, ax                          ; 2B D0
        cmp     dx, 0                           ; 83 FA 00
        jg      L_0D90                          ; 7F 1C
        cmp     word ptr [bx + 0x18], 1         ; 83 7F 18 01
        jle     L_0DDD                          ; 7E 63
        push    si                              ; 56
        cld                                     ; FC
L_0D7C:
        inc     si                              ; 46
        inc     si                              ; 46
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0D7C                          ; 74 F9
        mov     ax, si                          ; 8B C6
        sub     ax, 0x35a                       ; 2D 5A 03
        shr     ax, 1                           ; D1 E8
        pop     si                              ; 5E
        mov     byte ptr [0x33b], al            ; A2 3B 03
        jmp     L_0DDD                          ; EB 4D
L_0D90:
        dec     word ptr [bx + 0x18]            ; FF 4F 18
        jmp     L_0D3A                          ; EB A5
L_0D95:
        add     word ptr [bx], dx               ; 01 17
        mov     ax, dx                          ; 8B C2
        test    word ptr [bp + 4], 1            ; F7 46 04 01 00
        jne     L_0DC1                          ; 75 21
        push    dx                              ; 52
        push    dx                              ; 52
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        call    far _entry_94                   ; 9A F5 09 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A AB 0D 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        pop     dx                              ; 5A
L_0DC1:
        add     word ptr [bx + 8], ax           ; 01 47 08
        cmp     word ptr [bx + 0xe], 0          ; 83 7F 0E 00
        jge     L_0DD0                          ; 7D 06
        add     word ptr [0x340], dx            ; 01 16 40 03
        jmp     L_0DD9                          ; EB 09
L_0DD0:
        mov     bx, word ptr [bx + 0xe]         ; 8B 5F 0E
        shl     bx, 1                           ; D1 E3
        add     word ptr [bx + 0x35a], dx       ; 01 97 5A 03
L_0DD9:
        add     word ptr [0x344], dx            ; 01 16 44 03
L_0DDD:
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DE6 -- offset 0x0DE6 -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: small
; callers: sub_053B
;----------------------------------------------------------------------
L_0DE6:
        mov     ax, word ptr [0xee0]            ; A1 E0 0E
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        inc     ax                              ; 40
        mov     si, ax                          ; 8B F0
        push    word ptr [0x1072]               ; FF 36 72 10
        add     ax, word ptr [0xee0]            ; 03 06 E0 0E
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E0D                          ; 75 04
        xor     ax, ax                          ; 33 C0
        jmp     L_0E14                          ; EB 07
L_0E0D:
        add     word ptr [0xee0], si            ; 01 36 E0 0E
        mov     ax, 1                           ; B8 01 00
L_0E14:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E15 -- offset 0x0E15 -- 69 instr
; Dispatcher: tabla de decisiones cmp+jcc (69 instr).
; tags: calls_gdi, dispatcher, far
; calls (inter): GDI.GETTEXTEXTENT
;----------------------------------------------------------------------
L_0E15:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [bp + 8], 0x20         ; 83 7E 08 20
        jg      L_0E4A                          ; 7F 22
        cmp     word ptr [bp + 8], 0x1f         ; 83 7E 08 1F
        jge     L_0E3A                          ; 7D 0C
        cmp     word ptr [bp + 8], 9            ; 83 7E 08 09
        jl      L_0E51                          ; 7C 1D
        cmp     word ptr [bp + 8], 0xd          ; 83 7E 08 0D
        jg      L_0E51                          ; 7F 17
L_0E3A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0E45                          ; 74 05
        mov     bx, 0x1228                      ; BB 28 12
        jmp     L_0E6C                          ; EB 27
L_0E45:
        mov     bx, 0xebe                       ; BB BE 0E
        jmp     L_0E6C                          ; EB 22
L_0E4A:
        cmp     word ptr [bp + 8], 0x80         ; 81 7E 08 80 00
        jl      L_0E59                          ; 7C 08
L_0E51:
        lea     bx, [bp - 4]                    ; 8D 5E FC
        mov     byte ptr [bx], 0xff             ; C6 07 FF
        jmp     L_0E6C                          ; EB 13
L_0E59:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0E65                          ; 74 06
        mov     bx, word ptr [0x1226]           ; 8B 1E 26 12
        jmp     L_0E69                          ; EB 04
L_0E65:
        mov     bx, word ptr [0xebc]            ; 8B 1E BC 0E
L_0E69:
        add     bx, word ptr [bp + 8]           ; 03 5E 08
L_0E6C:
        cmp     byte ptr [bx], 0xff             ; 80 3F FF
        jne     L_0EB4                          ; 75 43
        push    bx                              ; 53
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0E90                          ; 74 18
        push    word ptr [0x79e]                ; FF 36 9E 07
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A BD 08 00 00 [FIXUP]
        sub     ax, word ptr [0x122a]           ; 2B 06 2A 12
        jmp     L_0EA6                          ; EB 16
L_0E90:
        push    word ptr [0x798]                ; FF 36 98 07
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A 86 0E 00 00 [FIXUP]
        sub     ax, word ptr [0xec0]            ; 2B 06 C0 0E
L_0EA6:
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        jl      L_0EB2                          ; 7C 07
        cmp     ax, 0xff                        ; 3D FF 00
        jge     L_0EB2                          ; 7D 02
        mov     byte ptr [bx], al               ; 88 07
L_0EB2:
        jmp     L_0EB8                          ; EB 04
L_0EB4:
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
L_0EB8:
        lea     sp, [bp - 2]                    ; 8D 66 FE
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EC1 -- offset 0x0EC1 -- 16 instr
; Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_1400
;----------------------------------------------------------------------
L_0EC1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, 0x35a                       ; BF 5A 03
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        repe scasw ax, word ptr es:[di]         ; F3 AF
        jne     L_0ED7                          ; 75 01
        inc     ax                              ; 40
L_0ED7:
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EDE -- offset 0x0EDE -- 47 instr
; Dispatcher: tabla de decisiones cmp+jcc (47 instr).
; tags: calls_gdi, dispatcher, far
; calls (inter): GDI.CREATECOMPATIBLEDC, GDI.GETDEVICECAPS, GDI.SETBKMODE, GDI.SETTEXTCOLOR
;----------------------------------------------------------------------
L_0EDE:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0F56                          ; 75 67
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        jne     L_0F47                          ; 75 51
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x32]            ; FF 77 32
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x798], ax            ; A3 98 07
        or      ax, ax                          ; 0B C0
        je      L_0F47                          ; 74 3E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0x32]            ; FF 77 32
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0F2D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F2F                          ; EB 02
L_0F2D:
        xor     ax, ax                          ; 33 C0
L_0F2F:
        mov     word ptr [0x792], ax            ; A3 92 07
        or      ax, ax                          ; 0B C0
        je      L_0F47                          ; 74 11
        push    word ptr [0x798]                ; FF 36 98 07
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
L_0F47:
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_0F56                          ; 75 08
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
L_0F56:
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
