; AUTO-GENERATED from original WRITE segment 77
; segment_size=777 bytes, flags=0xf130
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
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x322], 0xf           ; 83 3E 22 03 0F
        je      L_002F                          ; 74 19
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        lea     di, [bx + 0x22]                 ; 8D 7F 22
        mov     si, 0x1be2                      ; BE E2 1B
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
L_002F:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0038                          ; 7D 03
        jmp     L_0172                          ; E9 3A 01
L_0038:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x322], ax            ; A3 22 03
        mov     cx, 0x38                        ; B9 38 00
        imul    cx                              ; F7 E9
        mov     bx, ax                          ; 8B D8
        add     bx, 0x107e                      ; 81 C3 7E 10
        mov     word ptr [0x326], bx            ; 89 1E 26 03
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        mov     word ptr [0x12b4], ax           ; A3 B4 12
        mov     ax, word ptr [bx + 0x2c]        ; 8B 47 2C
        mov     word ptr [0x10f4], ax           ; A3 F4 10
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_007D                          ; 74 09
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_009D                          ; 75 20
L_007D:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        mov     word ptr [0x1bf0], ax           ; A3 F0 1B
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xed0], ax            ; A3 D0 0E
        mov     word ptr [0xece], ax            ; A3 CE 0E
        mov     word ptr [0xb6e], 0xffff        ; C7 06 6E 0B FF FF
        mov     word ptr [0xb70], 0x7fff        ; C7 06 70 0B FF 7F
        mov     word ptr [0x328], 0xffff        ; C7 06 28 03 FF FF
L_009D:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        or      byte ptr [bx], 0x20             ; 80 0F 20
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     di, 0x1be2                      ; BF E2 1B
        lea     si, [bx + 0x22]                 ; 8D 77 22
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, word ptr [0x324]            ; A1 24 03
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_00CB                          ; 75 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13e2], ax           ; A3 E2 13
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        push    word ptr [0xc20]                ; FF 36 20 0C
        jmp     L_012E                          ; EB 63
L_00CB:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_169                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx + 1], 1            ; F6 47 01 01
        je      L_00FB                          ; 74 1D
        mov     ax, word ptr [0x70a]            ; A1 0A 07
        mov     dx, word ptr [0x70c]            ; 8B 16 0C 07
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [0x70e]            ; A1 0E 07
        mov     dx, word ptr [0x710]            ; 8B 16 10 07
L_00F3:
        sub     ax, 2                           ; 2D 02 00
        sbb     dx, 0                           ; 83 DA 00
        jmp     L_0133                          ; EB 38
L_00FB:
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        test    byte ptr [bx + 1], 2            ; F6 47 01 02
        je      L_011C                          ; 74 17
        mov     ax, word ptr [0x712]            ; A1 12 07
        mov     dx, word ptr [0x714]            ; 8B 16 14 07
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [0x716]            ; A1 16 07
        mov     dx, word ptr [0x718]            ; 8B 16 18 07
        jmp     L_00F3                          ; EB D7
L_011C:
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        push    word ptr [0x12b4]               ; FF 36 B4 12
L_012E:
        call    far _entry_89                   ; 9A 76 02 00 00 [FIXUP]
L_0133:
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x13e2]               ; FF 36 E2 13
        push    word ptr [0x13e0]               ; FF 36 E0 13
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     word ptr [bx + 0x1a], dx        ; 89 57 1A
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bx + 0x1c], ax        ; 89 47 1C
        mov     word ptr [bx + 0x1e], dx        ; 89 57 1E
L_0172:
        mov     word ptr [0xed6], 0             ; C7 06 D6 0E 00 00
        cmp     word ptr [0x1be4], 0            ; 83 3E E4 1B 00
        jl      L_01DD                          ; 7C 5E
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_01A8                          ; 75 1C
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_01A8                          ; 75 16
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [0x12b4], ax           ; 39 06 B4 12
        je      L_01A8                          ; 74 0D
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_375                  ; 9A FF FF 00 00 [FIXUP]
L_01A8:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_01D8                          ; 74 18
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_01D8                          ; 75 0B
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jne     L_01D8                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01DA                          ; EB 02
L_01D8:
        sub     ax, ax                          ; 2B C0
L_01DA:
        mov     word ptr [0x13de], ax           ; A3 DE 13
L_01DD:
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [0x320], 2             ; 83 3E 20 03 02
        jl      L_0205                          ; 7C 06
L_01FF:
        mov     ax, 0xf                         ; B8 0F 00
        jmp     L_028D                          ; E9 88 00
L_0205:
        mov     ax, word ptr [0x320]            ; A1 20 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     cx, 0x38                        ; B9 38 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A 45 02 00 00 [FIXUP]
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [si + 5], al           ; 88 44 05
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x36], ax        ; 89 44 36
        inc     ax                              ; 40
        je      L_01FF                          ; 74 C7
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        push    word ptr [bx]                   ; FF 37
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, 0xa                         ; B0 0A
        mov     byte ptr [si + 4], al           ; 88 44 04
        mov     byte ptr [si + 3], al           ; 88 44 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        mov     word ptr [si + 0x30], ax        ; 89 44 30
        mov     word ptr [si + 0x2e], ax        ; 89 44 2E
        mov     byte ptr [si + 0x34], 0         ; C6 44 34 00
        mov     byte ptr [si + 0x35], 1         ; C6 44 35 01
        or      byte ptr [si], 1                ; 80 0C 01
        or      byte ptr [si], 0x20             ; 80 0C 20
        or      byte ptr [si + 0x2a], 1         ; 80 4C 2A 01
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     word ptr [si + 0x1e], dx        ; 89 54 1E
        mov     ax, word ptr [0x13a4]           ; A1 A4 13
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        inc     word ptr [0x320]                ; FF 06 20 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_028D:
        pop     si                              ; 5E
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_02FD                          ; 74 51
        mov     ax, 0x38                        ; B8 38 00
        imul    si                              ; F7 EE
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10b4]          ; FF B7 B4 10
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x324], si            ; 39 36 24 03
        jne     L_02C8                          ; 75 06
        mov     word ptr [0x324], 0xf           ; C7 06 24 03 0F 00
L_02C8:
        dec     word ptr [0x320]                ; FF 0E 20 03
        cmp     word ptr [0x320], si            ; 39 36 20 03
        jle     L_02FD                          ; 7E 2B
        mov     ax, 0x38                        ; B8 38 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        add     ax, 0x10b6                      ; 05 B6 10
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        add     ax, 0x107e                      ; 05 7E 10
        push    ax                              ; 50
        mov     ax, word ptr [0x320]            ; A1 20 03
        sub     ax, si                          ; 2B C6
        mov     cx, 0x38                        ; B9 38 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x324], si            ; 39 36 24 03
        jle     L_02FD                          ; 7E 04
        dec     word ptr [0x324]                ; FF 0E 24 03
L_02FD:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
