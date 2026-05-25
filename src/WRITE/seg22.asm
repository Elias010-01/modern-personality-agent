; AUTO-GENERATED from original WRITE segment 22
; segment_size=801 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 140 instr
; Dispatcher: tabla de decisiones cmp+jcc (140 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x6e                        ; 83 EC 6E
        push    si                              ; 56
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0023                          ; 75 03
        jmp     L_015E                          ; E9 3B 01
L_0023:
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ax                              ; 50
        call    far _entry_77                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        mov     cx, word ptr [0x1be2]           ; 8B 0E E2 1B
        mov     bx, word ptr [0x1be4]           ; 8B 1E E4 1B
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        mov     word ptr [bp - 0xc], bx         ; 89 5E F4
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp - 0x26], dx        ; 39 56 DA
        jl      L_00A8                          ; 7C 4B
        jg      L_0064                          ; 7F 05
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jbe     L_00A8                          ; 76 44
L_0064:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, 2                           ; 2D 02 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A CD 00 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00D1                          ; EB 29
L_00A8:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
L_00D1:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     dx, word ptr [bp - 0x26]        ; 8B 56 DA
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [bp - 0x6e], 0         ; C7 46 92 00 00
L_00F0:
        cmp     word ptr [bp - 0x6e], 2         ; 83 7E 92 02
        jg      L_0151                          ; 7F 5B
        mov     bx, word ptr [bp - 0x6e]        ; 8B 5E 92
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        je      L_013E                          ; 74 38
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        or      ax, ax                          ; 0B C0
        je      L_0119                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_0143                          ; 74 31
        cmp     ax, 2                           ; 3D 02 00
        je      L_014A                          ; 74 33
        jmp     L_011E                          ; EB 05
L_0119:
        mov     word ptr [bp - 0x6c], 1         ; C7 46 94 01 00
L_011E:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        lea     ax, [bp - 0x5f]                 ; 8D 46 A1
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0x6c]        ; 8A 46 94
        mov     byte ptr [bp - 0x60], al        ; 88 46 A0
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ax                              ; 50
        call    far _entry_76                   ; 9A FF FF 00 00 [FIXUP]
L_013E:
        inc     word ptr [bp - 0x6e]            ; FF 46 92
        jmp     L_00F0                          ; EB AD
L_0143:
        mov     word ptr [bp - 0x6c], 3         ; C7 46 94 03 00
        jmp     L_011E                          ; EB D4
L_014A:
        mov     word ptr [bp - 0x6c], 2         ; C7 46 94 02 00
        jmp     L_011E                          ; EB CD
L_0151:
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_75                   ; 9A FF FF 00 00 [FIXUP]
L_015E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_016A -- offset 0x016A -- 179 instr
; Dispatcher: tabla de decisiones cmp+jcc (179 instr).
; tags: dispatcher, far
; callers: sub_0054
; calls (intra): sub_01C7
;----------------------------------------------------------------------
L_016A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0xa6f        ; C7 46 FC 6F 0A
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [0xa6e], al            ; A2 6E 0A
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
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_01B6                          ; 75 03
        jmp     L_0247                          ; E9 91 00
L_01B6:
        cmp     ax, 9                           ; 3D 09 00
        je      L_0233                          ; 74 78
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_01C3                          ; 75 03
        jmp     L_0307                          ; E9 44 01
L_01C3:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_01D2                          ; 74 0A
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_01D0                          ; 75 03
        jmp     L_0264                          ; E9 94 00
L_01D0:
        jmp     L_0242                          ; EB 70
L_01D2:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ax                              ; 50
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
L_01E8:
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [bp - 0x1a]            ; F7 6E E6
        mov     si, ax                          ; 8B F0
        add     si, bp                          ; 03 F5
        cmp     byte ptr [si - 0x10], 0         ; 80 7C F0 00
        jne     L_0218                          ; 75 20
        push    word ptr [si - 0x12]            ; FF 74 EE
        push    word ptr [0x30e]                ; FF 36 0E 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 66 FF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
L_0218:
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        cmp     word ptr [bp - 0x1a], 3         ; 83 7E E6 03
        jl      L_01E8                          ; 7C C7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
L_022D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0316                          ; E9 E3 00
L_0233:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0242                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0242:
        sub     ax, ax                          ; 2B C0
        jmp     L_0316                          ; E9 CF 00
L_0247:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0253                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0253:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0242                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0242                          ; EB DE
L_0264:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0276                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0274                          ; 75 03
        jmp     L_0307                          ; E9 93 00
L_0274:
        jmp     L_0242                          ; EB CC
L_0276:
        mov     ax, 0x1038                      ; B8 38 10
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfb2]            ; A1 B2 0F
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x200b                      ; B8 0B 20
        push    ax                              ; 50
        call    far _entry_72                   ; 9A D4 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02A4                          ; 75 08
L_029C:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_022D                          ; EB 89
L_02A4:
        cmp     word ptr [0x1038], -1           ; 83 3E 38 10 FF
        jne     L_02B2                          ; 75 07
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_02BA                          ; EB 08
L_02B2:
        mov     ax, word ptr [0x1038]           ; A1 38 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_02BA:
        mov     ax, 0x103a                      ; B8 3A 10
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x200b                      ; B8 0B 20
        push    ax                              ; 50
        call    far _entry_72                   ; 9A F6 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_029C                          ; 74 C0
        mov     ax, 0x103c                      ; B8 3C 10
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x200b                      ; B8 0B 20
        push    ax                              ; 50
        call    far _entry_72                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_029C                          ; 74 9E
        mov     ax, 0x1038                      ; B8 38 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 F9 FC
L_0307:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_022D                          ; E9 17 FF
L_0316:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
