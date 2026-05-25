; AUTO-GENERATED from original WRITE segment 30
; segment_size=2849 bytes, flags=0xf130
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
        sub     sp, 0x98                        ; 81 EC 98 00
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0022                          ; 75 0C
        cmp     word ptr [0x56], 0              ; 83 3E 56 00 00
        je      L_0022                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0024                          ; EB 02
L_0022:
        sub     ax, ax                          ; 2B C0
L_0024:
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0031                          ; 74 03
        jmp     L_09BE                          ; E9 8D 09
L_0031:
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [0x6c], ax             ; A3 6C 00
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        mov     word ptr [0x1234], ax           ; A3 34 12
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_0060                          ; 74 07
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00B2                          ; EB 52
L_0060:
        push    word ptr [0x782]                ; FF 36 82 07
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_006F                          ; 74 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_0072                          ; EB 03
L_006F:
        mov     ax, 8                           ; B8 08 00
L_0072:
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0xe14]                ; FF 36 14 0E
        push    word ptr [0xe12]                ; FF 36 12 0E
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a8], ax            ; A3 A8 07
        or      ax, ax                          ; 0B C0
        jne     L_00A0                          ; 75 12
L_008E:
        mov     ax, 0x2013                      ; B8 13 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 6A 02 00 00 [FIXUP]
        mov     word ptr [0x6c], 1              ; C7 06 6C 00 01 00
        jmp     L_0960                          ; E9 C0 08
L_00A0:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_00B2                          ; 75 03
        jmp     L_0960                          ; E9 AE 08
L_00B2:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00CD                          ; 74 15
        call    far _entry_160                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_008E                          ; 74 C1
L_00CD:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_00E5                          ; 75 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_00E5                          ; 75 03
        jmp     L_0960                          ; E9 7B 08
L_00E5:
        mov     ax, 0x19                        ; B8 19 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 77 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        inc     ax                              ; 40
        je      L_008E                          ; 74 93
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0xe20]            ; A1 20 0E
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A 4D 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xe20]            ; A1 20 0E
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        add     ax, word ptr [0xe22]            ; 03 06 22 0E
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A 65 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [0xe24]            ; A1 24 0E
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        push    ax                              ; 50
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x1bf0], 0xffff       ; C7 06 F0 1B FF FF
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        inc     ax                              ; 40
        jne     L_018C                          ; 75 0B
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_008E                          ; E9 02 FF
L_018C:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + 2], 0xa          ; C7 47 02 0A 00
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx], 1                ; C7 07 01 00
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     dx, word ptr [bp - 0x56]        ; 8B 56 AA
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx + 4], dx           ; 89 57 04
        mov     ax, word ptr [0xe1e]            ; A1 1E 0E
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_01C8                          ; 75 05
        mov     word ptr [bp - 0x5a], 1         ; C7 46 A6 01 00
L_01C8:
        mov     bx, word ptr [bp - 0x5c]        ; 8B 5E A4
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [bx], ax               ; 89 07
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0x51]        ; 8A 46 AF
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x51], al        ; 88 46 AF
        mov     di, word ptr [bp - 0x52]        ; 8B 7E AE
        and     di, 0xff                        ; 81 E7 FF 00
        mov     byte ptr [bp + di - 0x51], 0x20 ; C6 43 AF 20
        lea     ax, [bp - 0x51]                 ; 8D 46 AF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        inc     byte ptr [bp - 0x52]            ; FE 46 AE
        mov     al, byte ptr [bp - 0x52]        ; 8A 46 AE
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13e2], ax           ; A3 E2 13
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jne     L_0243                          ; 75 10
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_0243                          ; 75 03
        jmp     L_0646                          ; E9 03 04
L_0243:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_024C                          ; 75 03
        jmp     L_0337                          ; E9 EB 00
L_024C:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        call    far _entry_159                  ; 9A 81 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0271                          ; 75 0C
L_0265:
        mov     ax, 0x2013                      ; B8 13 20
L_0268:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0646                          ; E9 D5 03
L_0271:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_159                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0265                          ; 74 DC
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x13c8]               ; FF 36 C8 13
        push    word ptr [0x13c6]               ; FF 36 C6 13
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A C3 02 00 00 [FIXUP]
        cmp     word ptr [0x54], 0              ; 83 3E 54 00 00
        je      L_02C7                          ; 74 1A
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x54                        ; B8 54 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A F6 02 00 00 [FIXUP]
L_02C7:
        push    word ptr [0x780]                ; FF 36 80 07
        lea     ax, [bp - 0x7d]                 ; 8D 46 83
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        inc     al                              ; FE C0
        mov     byte ptr [bp - 0x7e], al        ; 88 46 82
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x7e]        ; 8A 46 82
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        lea     ax, [bp - 0x7d]                 ; 8D 46 83
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jge     L_0337                          ; 7D 36
L_0301:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, 0xfffb                      ; 2D FB FF
        cmp     ax, 4                           ; 3D 04 00
        ja      L_0314                          ; 77 08
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x32a]        ; 2E FF A7 2A 03
L_0314:
        test    word ptr [bp - 0x2a], 0x4000    ; F7 46 D6 00 40
        jne     L_031E                          ; 75 03
        jmp     L_0646                          ; E9 28 03
L_031E:
        mov     ax, 0x2022                      ; B8 22 20
        jmp     L_0268                          ; E9 44 FF
        mov     ax, 0x2025                      ; B8 25 20
        jmp     L_0268                          ; E9 3E FF
        add     ah, byte ptr gs:[si]            ; 65 02 24
        add     ax, word ptr [bp + 6]           ; 03 46 06
        inc     si                              ; 46
        push    es                              ; 06
        push    ds                              ; 1E
        add     bp, cx                          ; 03 E9
        lsl     ax, word ptr [bp + di - 0x2f82] ; 0F 03 83 7E D0
        add     byte ptr [di + 0x12], dh        ; 00 75 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_034F                          ; 75 03
        jmp     L_062C                          ; E9 DD 02
L_034F:
        mov     word ptr [bp - 0x32], 0         ; C7 46 CE 00 00
L_0354:
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     dx, word ptr [bp - 0x56]        ; 8B 56 AA
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x26], 0         ; C7 46 DA 00 00
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [0xeea], ax            ; A3 EA 0E
L_036B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp - 0x20], dx        ; 39 56 E0
        jle     L_0379                          ; 7E 03
        jmp     L_0834                          ; E9 BB 04
L_0379:
        jl      L_0383                          ; 7C 08
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jb      L_0383                          ; 72 03
        jmp     L_0834                          ; E9 B1 04
L_0383:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        mov     word ptr [bp - 0x84], 0         ; C7 86 7C FF 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03A8                          ; 74 13
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        je      L_03A8                          ; 74 0C
        mov     ax, word ptr [0x1bf6]           ; A1 F6 1B
        cmp     word ptr [0xeea], ax            ; 39 06 EA 0E
        jle     L_03A8                          ; 7E 03
        jmp     L_0834                          ; E9 8C 04
L_03A8:
        mov     al, byte ptr [bp - 0x52]        ; 8A 46 AE
        sub     ah, ah                          ; 2A E4
        add     ax, 0x80                        ; 05 80 00
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        push    word ptr [0xeea]                ; FF 36 EA 0E
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x86]        ; 8B 9E 7A FF
        mov     byte ptr [bx], 0                ; C6 07 00
        call    far _entry_158                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
L_03D3:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp - 0x20], dx        ; 39 56 E0
        jle     L_03E1                          ; 7E 03
        jmp     L_070E                          ; E9 2D 03
L_03E1:
        jl      L_03EB                          ; 7C 08
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jb      L_03EB                          ; 72 03
        jmp     L_070E                          ; E9 23 03
L_03EB:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_0403                          ; 75 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_0403                          ; 75 03
        jmp     L_062C                          ; E9 29 02
L_0403:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jl      L_0429                          ; 7C 1E
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        add     word ptr [bp - 0xe], 0xa        ; 83 46 F2 0A
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A 1B 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0429                          ; 75 03
        jmp     L_062C                          ; E9 03 02
L_0429:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_044E                          ; 74 03
        jmp     L_062C                          ; E9 DE 01
L_044E:
        mov     al, byte ptr [0x33a]            ; A0 3A 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_045D                          ; 75 03
        jmp     L_04FF                          ; E9 A2 00
L_045D:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     word ptr [bp - 0x88], dx        ; 89 96 78 FF
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [0x334]            ; A1 34 03
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_04CF                          ; 74 44
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far _entry_162                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04C2                          ; 74 26
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_04CF                          ; 74 2D
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        mov     dx, word ptr [bp - 0x88]        ; 8B 96 78 FF
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        sub     word ptr [bp - 0xa], 1          ; 83 6E F6 01
        sbb     word ptr [bp - 8], 0            ; 83 5E F8 00
        jmp     L_0429                          ; E9 67 FF
L_04C2:
        cmp     word ptr [0x6c], 0              ; 83 3E 6C 00 00
        jne     L_04CC                          ; 75 03
        jmp     L_0858                          ; E9 8C 03
L_04CC:
        jmp     L_062C                          ; E9 5D 01
L_04CF:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [si + 4], ax           ; 89 44 04
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si + 6], ax           ; 89 44 06
        jmp     L_05E8                          ; E9 E9 00
L_04FF:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x340]            ; 03 06 40 03
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x344]            ; 03 06 44 03
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        add     ax, word ptr [0x34c]            ; 03 06 4C 03
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp - 0x20], dx        ; 39 56 E0
        jne     L_0571                          ; 75 23
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jne     L_0571                          ; 75 1E
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        jne     L_0571                          ; 75 18
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x332], dx            ; 39 16 32 03
        jne     L_056C                          ; 75 06
        cmp     word ptr [0x330], ax            ; 39 06 30 03
        je      L_0571                          ; 74 05
L_056C:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0573                          ; EB 02
L_0571:
        sub     ax, ax                          ; 2B C0
L_0573:
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        add     ax, word ptr [0x34c]            ; 03 06 4C 03
        cmp     ax, word ptr [bp - 0x28]        ; 3B 46 D8
        jg      L_0585                          ; 7F 03
        jmp     L_0748                          ; E9 C3 01
L_0585:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jg      L_058E                          ; 7F 03
        jmp     L_0748                          ; E9 BA 01
L_058E:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x332], dx            ; 39 16 32 03
        jne     L_05C7                          ; 75 2C
        cmp     word ptr [0x330], ax            ; 39 06 30 03
        jne     L_05C7                          ; 75 26
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp - 0x20], dx        ; 39 56 E0
        jne     L_05B8                          ; 75 0B
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jne     L_05B8                          ; 75 06
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_05C7                          ; 74 0F
L_05B8:
        cmp     word ptr [bp - 0x1a], 1         ; 83 7E E6 01
        jle     L_05C7                          ; 7E 09
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
        mov     word ptr [bp - 0x84], 1         ; C7 86 7C FF 01 00
L_05C7:
        cmp     word ptr [bp - 0x1a], 1         ; 83 7E E6 01
        jle     L_05E8                          ; 7E 1B
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bp - 0x1a]        ; 8B 7E E6
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        cmp     word ptr [bx + di - 2], 0       ; 83 79 FE 00
        je      L_05E8                          ; 74 09
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
        mov     word ptr [bp - 0x84], 1         ; C7 86 7C FF 01 00
L_05E8:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_05F1                          ; 74 03
        jmp     L_06A5                          ; E9 B4 00
L_05F1:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     di, word ptr [bx]               ; 8B 3F
        add     di, 2                           ; 83 C7 02
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        inc     word ptr [bx]                   ; FF 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        inc     ax                              ; 40
        cmp     ax, word ptr [di]               ; 3B 05
        jl      L_066B                          ; 7C 64
        push    word ptr [bp - 0x16]            ; FF 76 EA
        add     word ptr [di], 0xa              ; 83 05 0A
        mov     ax, word ptr [di]               ; 8B 05
        mov     cx, 3                           ; B9 03 00
        imul    cx                              ; F7 E9
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_066B                          ; 75 48
        mov     ax, 0x2013                      ; B8 13 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 93 00 00 00 [FIXUP]
L_062C:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0646                          ; 74 14
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 7B 07 00 00 [FIXUP]
L_0646:
        mov     word ptr [0x6c], 1              ; C7 06 6C 00 01 00
L_064C:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr [bx + si + 0x10], ax   ; 89 40 10
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far KERNEL.LOCALFREE            ; 9A 85 01 00 00 [FIXUP]
        jmp     L_08D8                          ; E9 6D 02
L_066B:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        add     ax, word ptr [bx]               ; 03 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bp - 0x1a]        ; 8B 7E E6
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     dx, word ptr [bx + di + 2]      ; 8B 51 02
        mov     bx, word ptr [bp - 0x5c]        ; 8B 5E A4
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx + 4], dx           ; 89 57 04
        mov     bx, word ptr [bp - 0x5c]        ; 8B 5E A4
        mov     ax, word ptr [0xeea]            ; A1 EA 0E
        inc     ax                              ; 40
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [0x1bf0], 0xffff       ; C7 06 F0 1B FF FF
L_06A5:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_06E8                          ; 74 3D
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_06DC                          ; 75 2B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        call    far _entry_161                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06C3                          ; 75 03
        jmp     L_04C2                          ; E9 FF FD
L_06C3:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        je      L_06DC                          ; 74 11
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        add     word ptr [bp - 0xa], 1          ; 83 46 F6 01
        adc     word ptr [bp - 8], 0            ; 83 56 F8 00
        mov     word ptr [bp - 0x84], 1         ; C7 86 7C FF 01 00
L_06DC:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
L_06E8:
        cmp     word ptr [bp - 0x84], 0         ; 83 BE 7C FF 00
        je      L_070E                          ; 74 1F
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
L_070E:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0717                          ; 75 03
        jmp     L_07A6                          ; E9 8F 00
L_0717:
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        je      L_0730                          ; 74 12
        mov     ax, word ptr [0xe0a]            ; A1 0A 0E
        cmp     word ptr [0xeea], ax            ; 39 06 EA 0E
        jl      L_07A6                          ; 7C 7F
        mov     ax, word ptr [0x1bf6]           ; A1 F6 1B
        cmp     word ptr [0xeea], ax            ; 39 06 EA 0E
        jg      L_07A6                          ; 7F 76
L_0730:
        mov     word ptr [bp - 0x8e], 1         ; C7 86 72 FF 01 00
L_0736:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        jne     L_0767                          ; 75 22
        jmp     L_062C                          ; E9 E4 FE
L_0748:
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     dx, word ptr [0x332]            ; 8B 16 32 03
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [0x334]            ; A1 34 03
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        add     word ptr [bp - 0x80], ax        ; 01 46 80
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        jmp     L_03D3                          ; E9 6C FC
L_0767:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A A2 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jge     L_0789                          ; 7D 03
        jmp     L_0301                          ; E9 78 FB
L_0789:
        mov     ax, word ptr [bp - 0x90]        ; 8B 86 70 FF
        cmp     word ptr [bp - 0x94], ax        ; 39 86 6C FF
        jge     L_079D                          ; 7D 0A
        mov     ax, word ptr [bp - 0x92]        ; 8B 86 6E FF
        cmp     word ptr [bp - 0x96], ax        ; 39 86 6A FF
        jl      L_07AD                          ; 7C 10
L_079D:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
L_07A6:
        inc     word ptr [0xeea]                ; FF 06 EA 0E
        jmp     L_036B                          ; E9 BE FB
L_07AD:
        cmp     word ptr [bp - 0x8e], 0         ; 83 BE 72 FF 00
        je      L_07D0                          ; 74 1C
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_143                  ; 9A 6B 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
L_07D0:
        mov     ax, word ptr [0xeea]            ; A1 EA 0E
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_07F2                          ; 77 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x24]            ; FF 76 DC
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ax                              ; 50
        call    far _entry_163                  ; 9A 01 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07F2                          ; 75 03
        jmp     L_062C                          ; E9 3A FE
L_07F2:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ax                              ; 50
        call    far _entry_163                  ; 9A 26 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_080C                          ; 75 03
        jmp     L_062C                          ; E9 20 FE
L_080C:
        mov     ax, word ptr [0xeea]            ; A1 EA 0E
        cmp     word ptr [bp - 0x2e], ax        ; 39 46 D2
        jbe     L_0817                          ; 76 03
        jmp     L_0736                          ; E9 1F FF
L_0817:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        push    word ptr [bp - 0x54]            ; FF 76 AC
        lea     ax, [bp - 0x96]                 ; 8D 86 6A FF
        push    ax                              ; 50
        call    far _entry_163                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0831                          ; 74 03
        jmp     L_0736                          ; E9 05 FF
L_0831:
        jmp     L_062C                          ; E9 F8 FD
L_0834:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0848                          ; 74 0E
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     ax, word ptr [0x6a]             ; A1 6A 00
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        jge     L_0848                          ; 7D 03
        jmp     L_0354                          ; E9 0C FB
L_0848:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0858                          ; 74 0A
        cmp     word ptr [0x68], 0              ; 83 3E 68 00 00
        je      L_0858                          ; 74 03
        jmp     L_064C                          ; E9 F4 FD
L_0858:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        add     si, 6                           ; 83 C6 06
        test    byte ptr [si], 2                ; F6 04 02
        jne     L_08BF                          ; 75 51
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        je      L_08AA                          ; 74 36
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bp - 0x34]        ; 8B 7E CC
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bx], ax               ; 39 07
        jne     L_08AA                          ; 75 26
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     bx, word ptr [bx]               ; 8B 1F
        imul    word ptr [bx]                   ; F7 2F
        push    ax                              ; 50
        call    far _entry_66                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08AF                          ; 75 05
L_08AA:
        mov     ax, 1                           ; B8 01 00
        jmp     L_08B1                          ; EB 02
L_08AF:
        sub     ax, ax                          ; 2B C0
L_08B1:
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si]               ; 8B 0C
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [si], ax               ; 89 04
L_08BF:
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        je      L_08CD                          ; 74 08
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    far KERNEL.LOCALFREE            ; 9A DC 08 00 00 [FIXUP]
L_08CD:
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_08D8                          ; 75 05
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
L_08D8:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.LOCALFREE            ; 9A F6 08 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0945                          ; 74 5F
        mov     word ptr [bp - 0x98], 0         ; C7 86 68 FF 00 00
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        je      L_08FA                          ; 74 08
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far KERNEL.LOCALFREE            ; 9A 04 09 00 00 [FIXUP]
L_08FA:
        cmp     word ptr [bp - 0x5e], 0         ; 83 7E A2 00
        je      L_0908                          ; 74 08
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        call    far KERNEL.LOCALFREE            ; 9A 64 06 00 00 [FIXUP]
L_0908:
        cmp     word ptr [0x6c], 0              ; 83 3E 6C 00 00
        jne     L_0923                          ; 75 14
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 41 09 00 00 [FIXUP]
L_0923:
        cmp     word ptr [0x54], 0              ; 83 3E 54 00 00
        je      L_0945                          ; 74 1B
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 42 06 00 00 [FIXUP]
L_0945:
        mov     ax, word ptr [bp - 0x58]        ; 8B 46 A8
        mov     dx, word ptr [bp - 0x56]        ; 8B 56 AA
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x1bf0], ax           ; A3 F0 1B
        mov     word ptr [0x30], ax             ; A3 30 00
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
L_0960:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_097C                          ; 74 16
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_143                  ; 9A A2 07 00 00 [FIXUP]
        call    far _entry_160                  ; 9A B9 00 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A C2 00 00 00 [FIXUP]
L_097C:
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 39 00 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 41 00 00 00 [FIXUP]
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        je      L_09A3                          ; 74 0B
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_09BE                          ; EB 1B
L_09A3:
        cmp     word ptr [0x7a8], 0             ; 83 3E A8 07 00
        je      L_09BE                          ; 74 14
        push    word ptr [0x7a8]                ; FF 36 A8 07
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7a8], 0             ; C7 06 A8 07 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0ADE                          ; E8 20 01
L_09BE:
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
        sub     sp, 0x16                        ; 83 EC 16
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x6c], 0              ; 83 3E 6C 00 00
        je      L_09E8                          ; 74 03
        jmp     L_0A6E                          ; E9 86 00
L_09E8:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0A6E                          ; 75 7F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_0A6E                          ; 7C 79
        cmp     word ptr [bp + 6], 0x31c5       ; 81 7E 06 C5 31
        je      L_0A42                          ; 74 46
        jmp     L_0A69                          ; EB 6B
L_09FE:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0A4B                          ; 75 46
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A4B                          ; 74 2F
        push    word ptr [0x7a8]                ; FF 36 A8 07
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A42                          ; 75 14
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A 0D 0B 00 00 [FIXUP]
L_0A42:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        je      L_09FE                          ; 74 B3
L_0A4B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_0A5B                          ; 75 07
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0A60                          ; 74 05
L_0A5B:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A62                          ; EB 02
L_0A60:
        sub     ax, ax                          ; 2B C0
L_0A62:
        mov     word ptr [0x6c], ax             ; A3 6C 00
        or      ax, ax                          ; 0B C0
        jne     L_0A6E                          ; 75 05
L_0A69:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A70                          ; EB 02
L_0A6E:
        sub     ax, ax                          ; 2B C0
L_0A70:
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
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0AA1                          ; 75 0C
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        je      L_0AA7                          ; 74 0C
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_0AA7                          ; 74 06
L_0AA1:
        cmp     word ptr [bp + 0xc], 0x10       ; 83 7E 0C 10
        jne     L_0AB4                          ; 75 0D
L_0AA7:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xa], 1          ; C7 47 0A 01 00
L_0AAF:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AD3                          ; EB 1F
L_0AB4:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_0AAF                          ; 74 F4
        cmp     word ptr [bp + 0xc], 6          ; 83 7E 0C 06
        jne     L_0AD1                          ; 75 10
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0ACB                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0ACE                          ; EB 03
L_0ACB:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
L_0ACE:
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0AD1:
        sub     ax, ax                          ; 2B C0
L_0AD3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0ADE -- offset 0x0ADE -- 35 instr
; Funcion mediana (35 instr, 2 calls).
; tags: calls_user, far, medium
; calls (inter): USER.DISPATCHMESSAGE, USER.PEEKMESSAGE
;----------------------------------------------------------------------
L_0ADE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_0B11                          ; EB 24
L_0AED:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B18                          ; 74 11
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0B11:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0AED                          ; 74 D5
L_0B18:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
