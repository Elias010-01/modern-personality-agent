; AUTO-GENERATED from original WRITE segment 60
; segment_size=726 bytes, flags=0xf130
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
        sub     sp, 0x9c                        ; 81 EC 9C 00
        push    si                              ; 56
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x13e2], ax           ; A3 E2 13
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_005D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jle     L_006B                          ; 7E 03
        jmp     L_0173                          ; E9 08 01
L_006B:
        jl      L_0075                          ; 7C 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jb      L_0075                          ; 72 03
        jmp     L_0173                          ; E9 FE 00
L_0075:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_00EA                          ; 74 53
L_0097:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_005D                          ; EB B8
L_00A5:
        push    word ptr [0x1022]               ; FF 36 22 10
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     bx, ax                          ; 8B D8
        mov     byte ptr [bx], 0                ; C6 07 00
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x9a]                 ; 8D 86 66 FF
        push    ax                              ; 50
L_00D8:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_239                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cdq                                     ; 99
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        adc     word ptr [bp - 8], dx           ; 11 56 F8
L_00EA:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jg      L_0162                          ; 7F 6D
        jl      L_00FC                          ; 7C 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_0162                          ; 73 66
L_00FC:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jg      L_0162                          ; 7F 5A
        jl      L_010F                          ; 7C 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_0162                          ; 73 53
L_010F:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0162                          ; 75 4C
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_0162                          ; 75 45
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xe8e]            ; A1 8E 0E
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [0x7e], 1              ; 83 3E 7E 00 01
        jne     L_0158                          ; 75 03
        jmp     L_00A5                          ; E9 4D FF
L_0158:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x1022]               ; FF 36 22 10
        jmp     L_00D8                          ; E9 76 FF
L_0162:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0173                          ; 75 0A
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_0173                          ; 75 03
        jmp     L_0097                          ; E9 24 FF
L_0173:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [0x13a6], ax           ; A3 A6 13
        mov     word ptr [0x13a8], dx           ; 89 16 A8 13
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_01CE                          ; EB 07
L_01C7:
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 0xc], 0x16       ; 83 46 F4 16
L_01CE:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_01C7                          ; 74 F1
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, 0xa2                        ; 05 A2 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_02BA                          ; E9 C9 00
L_01F1:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        and     al, 0x7f                        ; 24 7F
        cmp     al, 0xb                         ; 3C 0B
        jne     L_0200                          ; 75 03
        jmp     L_02AB                          ; E9 AB 00
L_0200:
        test    byte ptr [bx + 4], 2            ; F6 47 04 02
        jne     L_0209                          ; 75 03
        jmp     L_02AB                          ; E9 A2 00
L_0209:
        test    byte ptr [bx + 4], 4            ; F6 47 04 04
        je      L_0212                          ; 74 03
        jmp     L_02AB                          ; E9 99 00
L_0212:
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_024C                          ; 7D 32
L_021A:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0288                          ; 75 5B
L_022D:
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0244                          ; 7D 0C
        add     word ptr [bp - 0xc], 0x16       ; 83 46 F4 16
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_022D                          ; 74 E9
L_0244:
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0279                          ; 7C 2D
L_024C:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_234                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_02B2                          ; EB 39
L_0279:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_021A                          ; EB 92
L_0288:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_02B2                          ; 74 22
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jle     L_02A4                          ; 7E 0F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x10]            ; F7 6E F0
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        or      byte ptr [bx + si + 4], 4       ; 80 48 04 04
L_02A4:
        add     word ptr [bp - 0xa], 0xc        ; 83 46 F6 0C
        jmp     L_0212                          ; E9 67 FF
L_02AB:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        and     byte ptr [bx + 4], 0xfb         ; 80 67 04 FB
L_02B2:
        inc     word ptr [bp - 6]               ; FF 46 FA
        add     word ptr [bp - 8], 0xa2         ; 81 46 F8 A2 00
L_02BA:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_02C5                          ; 7D 03
        jmp     L_01F1                          ; E9 2C FF
L_02C5:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
