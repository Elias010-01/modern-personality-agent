; AUTO-GENERATED from original WRITE segment 57
; segment_size=1223 bytes, flags=0xf130
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
        push    si                              ; 56
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_32                   ; 9A D3 01 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_002E                          ; 74 0A
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        jmp     L_017C                          ; E9 4E 01
L_002E:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A C0 00 00 00 [FIXUP]
        sub     bx, bx                          ; 2B DB
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 17 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 8], 0xd          ; 83 7E F8 0D
        jne     L_0073                          ; 75 10
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        add     ax, 2                           ; 05 02 00
L_006D:
        adc     dx, 0                           ; 83 D2 00
        jmp     L_017C                          ; E9 09 01
L_0073:
        cmp     word ptr [bp - 8], 0xa          ; 83 7E F8 0A
        je      L_008B                          ; 74 12
        cmp     word ptr [bp - 8], 0xc          ; 83 7E F8 0C
        je      L_008B                          ; 74 0C
        cmp     word ptr [bp - 8], 0xb          ; 83 7E F8 0B
        je      L_008B                          ; 74 06
        cmp     word ptr [bp - 8], 9            ; 83 7E F8 09
        jne     L_0097                          ; 75 0C
L_008B:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        add     ax, 1                           ; 05 01 00
        jmp     L_006D                          ; EB D6
L_0097:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_00DD                          ; 75 40
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        jne     L_00DD                          ; 75 3A
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A F7 00 00 00 [FIXUP]
        sub     bx, bx                          ; 2B DB
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 97 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_00DD:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0113                          ; 7C 2B
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0x10fc], dx           ; 39 16 FC 10
        jne     L_010E                          ; 75 06
        cmp     word ptr [0x10fa], ax           ; 39 06 FA 10
        je      L_017C                          ; 74 6E
L_010E:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0113:
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        jne     L_0135                          ; 75 1C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_012B                          ; 74 0A
        cmp     ax, 0x2e                        ; 3D 2E 00
        je      L_012B                          ; 74 05
        cmp     ax, 0x3f                        ; 3D 3F 00
        jne     L_0135                          ; 75 0A
L_012B:
        mov     word ptr [bp + 6], 2            ; C7 46 06 02 00
        mov     word ptr [bp - 0xa], 2          ; C7 46 F6 02 00
L_0135:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 9                           ; 3D 09 00
        jl      L_014D                          ; 7C 05
        cmp     ax, 0xd                         ; 3D 0D 00
        jle     L_0170                          ; 7E 23
L_014D:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_00DD                          ; 75 8A
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 16 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_0166                          ; 75 03
        jmp     L_00DD                          ; E9 77 FF
L_0166:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0170                          ; 75 03
        jmp     L_00DD                          ; E9 6D FF
L_0170:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
L_017C:
        pop     si                              ; 5E
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
        sub     sp, 0x7a                        ; 83 EC 7A
        push    si                              ; 56
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0xa], dx         ; 39 56 0A
        jl      L_01B8                          ; 7C 16
        jg      L_01A9                          ; 7F 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jb      L_01B8                          ; 72 0F
L_01A9:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
        jmp     L_01C6                          ; EB 0E
L_01B8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     word ptr [bp + 8], 1            ; 83 46 08 01
        adc     word ptr [bp + 0xa], 0          ; 83 56 0A 00
L_01C6:
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        mov     word ptr [bp - 0x78], dx        ; 89 56 88
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 6E 03 00 00 [FIXUP]
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp - 0x78], dx        ; 39 56 88
        jne     L_01E8                          ; 75 05
        cmp     word ptr [bp - 0x7a], ax        ; 39 46 86
        je      L_01EF                          ; 74 07
L_01E8:
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_01F9                          ; 74 0A
L_01EF:
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        jmp     L_0465                          ; E9 6C 02
L_01F9:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_0204                          ; 75 05
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_0207                          ; EB 03
L_0204:
        mov     ax, 0x64                        ; B8 64 00
L_0207:
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        cdq                                     ; 99
        cmp     dx, word ptr [bp + 0xa]         ; 3B 56 0A
        jg      L_022B                          ; 7F 1B
        jl      L_0217                          ; 7C 05
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jae     L_022B                          ; 73 14
L_0217:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        jmp     L_022E                          ; EB 03
L_022B:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
L_022E:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x6c], dx        ; 89 56 94
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    word ptr [bp - 0x6e]            ; FF 76 92
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x6a]            ; FF 76 96
        call    far _entry_301                  ; 9A 4C 03 00 00 [FIXUP]
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bp + si - 0x68]   ; 8A 42 98
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 0B 02
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        or      ax, dx                          ; 0B C2
        jne     L_027D                          ; 75 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0465                          ; E9 E8 01
L_027D:
        cmp     word ptr [bp - 0x74], 0xa       ; 83 7E 8C 0A
        jne     L_029E                          ; 75 1B
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        cmp     byte ptr [bp + si - 0x69], 0xd  ; 80 7A 97 0D
        jne     L_029E                          ; 75 12
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        jmp     L_0465                          ; E9 C7 01
L_029E:
        cmp     word ptr [bp - 0x74], 0xa       ; 83 7E 8C 0A
        je      L_02BC                          ; 74 18
        cmp     word ptr [bp - 0x74], 0xd       ; 83 7E 8C 0D
        je      L_02BC                          ; 74 12
        cmp     word ptr [bp - 0x74], 0xc       ; 83 7E 8C 0C
        je      L_02BC                          ; 74 0C
        cmp     word ptr [bp - 0x74], 0xb       ; 83 7E 8C 0B
        je      L_02BC                          ; 74 06
        cmp     word ptr [bp - 0x74], 9         ; 83 7E 8C 09
        jne     L_02C9                          ; 75 0D
L_02BC:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        jmp     L_0465                          ; E9 9C 01
L_02C9:
        cmp     word ptr [bp - 0x76], 1         ; 83 7E 8A 01
        jne     L_02E1                          ; 75 12
L_02CF:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        mov     word ptr [bp - 0x70], dx        ; 89 56 90
        jmp     L_02EB                          ; EB 0A
L_02E1:
        mov     word ptr [bp - 0x72], 0xffff    ; C7 46 8E FF FF
        mov     word ptr [bp - 0x70], 0xffff    ; C7 46 90 FF FF
L_02EB:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0350                          ; 75 5F
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0x6c], dx        ; 39 56 94
        jne     L_0305                          ; 75 08
        cmp     word ptr [bp - 0x6e], ax        ; 39 46 92
        jne     L_0305                          ; 75 03
        jmp     L_0465                          ; E9 60 01
L_0305:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cdq                                     ; 99
        cmp     dx, word ptr [bp - 0x6c]        ; 3B 56 94
        jg      L_0329                          ; 7F 1B
        jl      L_0315                          ; 7C 05
        cmp     ax, word ptr [bp - 0x6e]        ; 3B 46 92
        jae     L_0329                          ; 73 14
L_0315:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        mov     dx, word ptr [bp - 0x6c]        ; 8B 56 94
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        jmp     L_032C                          ; EB 03
L_0329:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
L_032C:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x6c], dx        ; 89 56 94
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    word ptr [bp - 0x6e]            ; FF 76 92
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x6a]            ; FF 76 96
        call    far _entry_301                  ; 9A FF FF 00 00 [FIXUP]
L_0350:
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bp + si - 0x68]   ; 8A 42 98
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x74], 0xa       ; 83 7E 8C 0A
        je      L_0391                          ; 74 19
        cmp     word ptr [bp - 0x74], 0xc       ; 83 7E 8C 0C
        je      L_0391                          ; 74 13
        cmp     word ptr [bp - 0x74], 0xb       ; 83 7E 8C 0B
        je      L_0391                          ; 74 0D
        cmp     word ptr [bp - 0x74], 9         ; 83 7E 8C 09
        je      L_0391                          ; 74 07
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_03A4                          ; 74 13
L_0391:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        jmp     L_0465                          ; E9 C1 00
L_03A4:
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_03D0                          ; 75 26
        cmp     word ptr [bp - 0x76], 0         ; 83 7E 8A 00
        je      L_03C2                          ; 74 12
        push    word ptr [bp - 0x74]            ; FF 76 8C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 B9 00
        cmp     ax, word ptr [bp - 0x76]        ; 3B 46 8A
        jne     L_03C0                          ; 75 03
        jmp     L_02EB                          ; E9 2B FF
L_03C0:
        jmp     L_0391                          ; EB CF
L_03C2:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 A7 00
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        jmp     L_02EB                          ; E9 1B FF
L_03D0:
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_03FB                          ; 74 23
        cmp     ax, 0x2e                        ; 3D 2E 00
        je      L_03FB                          ; 74 1E
        cmp     ax, 0x3f                        ; 3D 3F 00
        je      L_03FB                          ; 74 19
L_03E2:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0471                          ; E8 87 00
        or      ax, ax                          ; 0B C0
        je      L_0441                          ; 74 53
        cmp     ax, 1                           ; 3D 01 00
        je      L_040F                          ; 74 1C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0427                          ; 74 2F
        jmp     L_02EB                          ; E9 F0 FE
L_03FB:
        cmp     word ptr [bp - 0x70], -1        ; 83 7E 90 FF
        jne     L_0407                          ; 75 06
        cmp     word ptr [bp - 0x72], -1        ; 83 7E 8E FF
        je      L_03E2                          ; 74 DB
L_0407:
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
        mov     dx, word ptr [bp - 0x70]        ; 8B 56 90
        jmp     L_0465                          ; EB 56
L_040F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        mov     word ptr [bp - 0x70], dx        ; 89 56 90
        mov     word ptr [bp - 0x76], 1         ; C7 46 8A 01 00
        jmp     L_02EB                          ; E9 C4 FE
L_0427:
        mov     ax, word ptr [bp - 0x76]        ; 8B 46 8A
        or      ax, ax                          ; 0B C0
        je      L_0439                          ; 74 0B
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0436                          ; 75 03
        jmp     L_02CF                          ; E9 99 FE
L_0436:
        jmp     L_02EB                          ; E9 B2 FE
L_0439:
        mov     word ptr [bp - 0x76], 2         ; C7 46 8A 02 00
        jmp     L_02EB                          ; E9 AA FE
L_0441:
        cmp     word ptr [bp - 0x76], 2         ; 83 7E 8A 02
        jne     L_045D                          ; 75 16
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 0x6e]        ; 03 46 92
        adc     dx, word ptr [bp - 0x6c]        ; 13 56 94
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        mov     word ptr [bp - 0x70], dx        ; 89 56 90
L_045D:
        mov     word ptr [bp - 0x76], 0         ; C7 46 8A 00 00
        jmp     L_02EB                          ; E9 86 FE
L_0465:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0471 -- offset 0x0471 -- 40 instr
; Dispatcher: tabla de decisiones cmp+jcc (40 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_0471:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x1f                        ; 3D 1F 00
        je      L_04BA                          ; 74 37
        jg      L_0498                          ; 7F 13
        cmp     ax, 9                           ; 3D 09 00
        jl      L_04A2                          ; 7C 18
        cmp     ax, 0xd                         ; 3D 0D 00
        jg      L_04A2                          ; 7F 13
L_048F:
        sub     ax, ax                          ; 2B C0
        jmp     L_04BD                          ; EB 2A
L_0493:
        mov     ax, 2                           ; B8 02 00
        jmp     L_04BD                          ; EB 25
L_0498:
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_048F                          ; 74 F2
        cmp     ax, 0xa0                        ; 3D A0 00
        je      L_048F                          ; 74 ED
L_04A2:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_276                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04BA                          ; 75 0C
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0493                          ; 74 D9
L_04BA:
        mov     ax, 1                           ; B8 01 00
L_04BD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
