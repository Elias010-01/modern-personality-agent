; AUTO-GENERATED from original GDI segment 8
; segment_size=1739 bytes, flags=0xf130
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
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [0x12e], 0xfd          ; 81 3E 2E 01 FD 00
        jb      L_001B                          ; 72 06
L_0015:
        mov     ax, 0xfe                        ; B8 FE 00
        jmp     L_0107                          ; E9 EC 00
L_001B:
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        inc     ax                              ; 40
        cmp     ax, word ptr [0x134]            ; 3B 06 34 01
        jbe     L_004D                          ; 76 28
        add     word ptr [0x134], 2             ; 83 06 34 01 02
        push    word ptr [0x3f4]                ; FF 36 F4 03
        mov     ax, 0x2d                        ; B8 2D 00
        mul     word ptr [0x134]                ; F7 26 34 01
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        push    word ptr [0x21e]                ; FF 36 1E 02
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_004D                          ; 75 07
        sub     word ptr [0x134], 2             ; 83 2E 34 01 02
        jmp     L_0015                          ; EB C8
L_004D:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A 29 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, 0x2d                        ; B8 2D 00
        mul     word ptr [bp + 0xa]             ; F7 66 0A
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        inc     word ptr [0x12e]                ; FF 06 2E 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x2d                        ; B8 2D 00
        mul     word ptr [bp - 0xc]             ; F7 66 F4
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x1a], 0x2d      ; C7 46 E6 2D 00
        jmp     L_00BB                          ; EB 12
L_00A9:
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
L_00BB:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
        or      ax, ax                          ; 0B C0
        jne     L_00A9                          ; 75 E4
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xc                         ; 05 0C 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_048E                          ; E8 9C 03
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A A9 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_0107:
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
        sub     sp, 0x36                        ; 83 EC 36
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     al, 0x2d                        ; B0 2D
        mul     byte ptr [bp + 0xa]             ; F6 66 0A
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, 0x2d                        ; B8 2D 00
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mul     word ptr es:[bx + 2]            ; 26 F7 67 02
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        cdq                                     ; 99
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     cx, word ptr es:[bx + 0x22]     ; 26 8B 4F 22
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        cdq                                     ; 99
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     cx, word ptr es:[bx + 0x25]     ; 26 8B 4F 25
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        inc     word ptr es:[bx + 0xa]          ; 26 FF 47 0A
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_01B2                          ; 75 2B
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_395                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01B2                          ; 75 15
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        dec     word ptr es:[bx + 0xa]          ; 26 FF 4F 0A
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0483                          ; E9 D1 02
L_01B2:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.LOCKRESOURCE         ; 9A 4A 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_01C4:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x21]     ; 26 8B 47 21
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 01 02 00 00 [FIXUP]
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 08 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        add     word ptr [bp - 0x1e], ax        ; 01 46 E2
        adc     word ptr [bp - 0x1c], dx        ; 11 56 E4
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        ja      L_0224                          ; 77 06
        cmp     word ptr [bp - 0x1e], -1        ; 83 7E E2 FF
        jbe     L_0232                          ; 76 0E
L_0224:
        cmp     word ptr [bp - 0x28], 1         ; 83 7E D8 01
        jg      L_022D                          ; 7F 03
        jmp     L_02CC                          ; E9 9F 00
L_022D:
        dec     word ptr [bp - 0x28]            ; FF 4E D8
        jmp     L_01C4                          ; EB 92
L_0232:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        or      ax, ax                          ; 0B C0
        je      L_0224                          ; 74 DC
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        imul    word ptr [bp - 0x16]            ; F7 6E EA
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        imul    word ptr [bp - 0x28]            ; F7 6E D8
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        mov     word ptr es:[bx + 0x25], ax     ; 26 89 47 25
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     dx, word ptr [bp - 0x34]        ; 8B 56 CC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0x2e], 0x34      ; C7 46 D2 34 00
L_02AE:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        dec     word ptr [bp - 0x2e]            ; FF 4E D2
        or      ax, ax                          ; 0B C0
        je      L_02DF                          ; 74 27
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        jmp     L_02AE                          ; EB E2
L_02CC:
        cmp     word ptr [bp - 0x16], 1         ; 83 7E EA 01
        jle     L_02D8                          ; 7E 06
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        jmp     L_01C4                          ; E9 EC FE
L_02D8:
        dec     word ptr [0x12e]                ; FF 0E 2E 01
        jmp     L_043B                          ; E9 5C 01
L_02DF:
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_048E                          ; E8 9A 01
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        imul    word ptr es:[bx + 0x21]         ; 26 F7 6F 21
        mov     word ptr es:[bx + 0x21], ax     ; 26 89 47 21
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_035E                          ; 74 55
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x33                        ; 05 33 00
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x33                        ; 05 33 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        sub     ah, ah                          ; 2A E4
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        sub     ax, cx                          ; 2B C1
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        jmp     L_0354                          ; EB 17
L_033D:
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        add     word ptr [bp - 0x26], 2         ; 83 46 DA 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mul     word ptr [bp - 0x28]            ; F7 66 D8
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        add     word ptr [bp - 0xc], 2          ; 83 46 F4 02
        mov     word ptr es:[bx], ax            ; 26 89 07
L_0354:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        dec     word ptr [bp - 0x2e]            ; FF 4E D2
        or      ax, ax                          ; 0B C0
        jne     L_033D                          ; 75 DF
L_035E:
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr es:[bx + 0x2b], ax     ; 26 89 47 2B
        mov     word ptr es:[bx + 0x2d], dx     ; 26 89 57 2D
        mov     word ptr es:[bx + 0x23], ax     ; 26 89 47 23
        mov     word ptr es:[bx + 0x25], dx     ; 26 89 57 25
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x2f]     ; 26 8B 47 2F
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     ax, word ptr es:[bx + 0x2f]     ; 26 8B 47 2F
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 0x21]         ; 26 FF 77 21
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_053F                          ; E8 8D 01
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        mov     dx, word ptr es:[bx + 0x29]     ; 26 8B 57 29
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     word ptr es:[bx + 0x27], ax     ; 26 89 47 27
        mov     word ptr es:[bx + 0x29], dx     ; 26 89 57 29
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x2f]     ; 26 8B 47 2F
        mov     dx, word ptr es:[bx + 0x31]     ; 26 8B 57 31
        cmp     word ptr es:[bx + 0x29], dx     ; 26 39 57 29
        jb      L_03F2                          ; 72 19
        ja      L_03E1                          ; 77 06
        cmp     word ptr es:[bx + 0x27], ax     ; 26 39 47 27
        jbe     L_03F2                          ; 76 11
L_03E1:
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     dx, word ptr [bp - 0x30]        ; 8B 56 D0
        add     word ptr es:[bx + 0x27], ax     ; 26 01 47 27
        adc     word ptr es:[bx + 0x29], dx     ; 26 11 57 29
L_03F2:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
L_0414:
        les     bx, ptr [bp - 0x2c]             ; C4 5E D4
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_0414                          ; 75 EA
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.GLOBALUNLOCK         ; 9A 43 04 00 00 [FIXUP]
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_043B:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.GLOBALUNLOCK         ; 9A 7C 04 00 00 [FIXUP]
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        dec     word ptr es:[bx + 0xa]          ; 26 FF 4F 0A
        cmp     word ptr es:[bx + 0xa], 0       ; 26 83 7F 0A 00
        jg      L_0477                          ; 7F 22
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        je      L_046E                          ; 74 10
L_045E:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_045E                          ; 75 F0
L_046E:
        les     bx, ptr [bp - 0x22]             ; C4 5E DE
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
L_0477:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A 00 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0483:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_048E -- offset 0x048E -- 54 instr
; Funcion mediana (54 instr, 0 calls).
; tags: medium
; callers: ENUMFONTS
;----------------------------------------------------------------------
L_048E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x18]     ; 26 8B 47 18
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        imul    word ptr [bp + 4]               ; F7 6E 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x1b], ax     ; 26 89 47 1B
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_053F -- offset 0x053F -- 201 instr
; Iterador con instrucciones de string (movsb/scasb/...) (201 instr).
; tags: complex_iterator, loop, string_op
;----------------------------------------------------------------------
L_053F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        mov     word ptr [bp - 2], ds           ; 8C 5E FE
        mov     word ptr [bp - 6], es           ; 8C 46 FA
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, bx                          ; 8B C3
        mul     word ptr [bp + 8]               ; F7 66 08
        add     si, ax                          ; 03 F0
        mul     word ptr [bp + 6]               ; F7 66 06
        mul     word ptr [bp + 4]               ; F7 66 04
        add     di, ax                          ; 03 F8
        dec     si                              ; 4E
        dec     di                              ; 4F
        std                                     ; FD
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mul     bx                              ; F7 E3
        mov     dx, ax                          ; 8B D0
L_0570:
        dec     word ptr [bp + 8]               ; FF 4E 08
        jl      L_05B0                          ; 7C 3B
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     cx, bx                          ; 8B CB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     al, 2                           ; 3C 02
        je      L_05BE                          ; 74 3D
        cmp     al, 3                           ; 3C 03
        je      L_05E7                          ; 74 62
        cmp     al, 1                           ; 3C 01
        je      L_05BA                          ; 74 31
        cmp     al, 4                           ; 3C 04
        je      L_0590                          ; 74 03
        jmp     L_066E                          ; E9 DE 00
L_0590:
        jmp     L_0622                          ; E9 8F 00
L_0593:
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        dec     cx                              ; 49
        jle     L_0570                          ; 7E D4
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        lds     si, ptr [bp - 8]                ; C5 76 F8
L_05A2:
        mov     cx, dx                          ; 8B CA
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        jg      L_05A2                          ; 7F F7
        lds     si, ptr [bp - 4]                ; C5 76 FC
        jmp     L_0570                          ; EB C0
L_05B0:
        cld                                     ; FC
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x10                            ; C2 10 00
L_05BA:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        jmp     L_0593                          ; EB D5
L_05BE:
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        loop    L_05BE                          ; E2 D9
        jmp     L_0593                          ; EB AC
L_05E7:
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        loop    L_05E7                          ; E2 C8
        jmp     L_0593                          ; E9 71 FF
L_0622:
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0622                          ; E2 B7
        jmp     L_0593                          ; E9 25 FF
L_066E:
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        shr     ax, 1                           ; D1 E8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        sar     al, 1                           ; D0 F8
        stosb   byte ptr es:[di], al            ; AA
        loop    L_066E                          ; E2 A6
        jmp     L_0593                          ; E9 C8 FE

GDI_TEXT ENDS

        END
