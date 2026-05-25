; AUTO-GENERATED from original WRITE segment 64
; segment_size=1146 bytes, flags=0xf130
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        jne     L_0018                          ; 75 03
        jmp     L_00D1                          ; E9 B9 00
L_0018:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10aa]          ; FF B7 AA 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 4F 00 00 00 [FIXUP]
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10aa]          ; FF B7 AA 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x12ae]               ; FF 36 AE 12
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A EF 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_00C2                          ; 74 5D
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp - 6]                ; C4 76 FA
        mov     ax, word ptr es:[si]            ; 26 8B 04
        mov     word ptr [bx + 0x10b0], ax      ; 89 87 B0 10
        push    word ptr [0x324]                ; FF 36 24 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A B6 00 00 00 [FIXUP]
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        add     ax, 0x107e                      ; 05 7E 10
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_300                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x324]                ; FF 36 24 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 8B 02 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A CB 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A 7E 01 00 00 [FIXUP]
L_00C2:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 0x10b0], 0       ; C7 87 B0 10 00 00
L_00D1:
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_0100                          ; 75 03
        jmp     L_0182                          ; E9 82 00
L_0100:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jg      L_0124                          ; 7F 12
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        je      L_017A                          ; 74 61
        push    word ptr [0x324]                ; FF 36 24 03
        call    far _entry_236                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_017A                          ; EB 56
L_0124:
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        jne     L_013F                          ; 75 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_370                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x324], ax            ; A3 24 03
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_017A                          ; 74 3B
L_013F:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0x10aa], ax      ; 89 84 AA 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [si + 0x1088], ax      ; 89 84 88 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [si + 0x1084], ax      ; 89 84 84 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [si + 0x108c], ax      ; 89 84 8C 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [si + 0x108a], ax      ; 89 84 8A 10
L_017A:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_0182:
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
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0x10aa], ax      ; 39 87 AA 10
        je      L_01AE                          ; 74 03
        jmp     L_029E                          ; E9 F0 00
L_01AE:
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        jne     L_01B8                          ; 75 03
        jmp     L_029E                          ; E9 E6 00
L_01B8:
        call    L_03D4                          ; E8 19 02
        or      ax, ax                          ; 0B C0
        jne     L_01C2                          ; 75 03
        jmp     L_029E                          ; E9 DC 00
L_01C2:
        push    word ptr [0x324]                ; FF 36 24 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A 97 02 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jne     L_01D9                          ; 75 03
        jmp     L_0261                          ; E9 88 00
L_01D9:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_01E1                          ; 75 03
        jmp     L_026C                          ; E9 8B 00
L_01E1:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_01E9                          ; 75 03
        jmp     L_0277                          ; E9 8E 00
L_01E9:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_01F1                          ; 75 03
        jmp     L_027E                          ; E9 8D 00
L_01F1:
        cmp     ax, 4                           ; 3D 04 00
        je      L_01F9                          ; 74 03
        jmp     L_0283                          ; E9 8A 00
L_01F9:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     si, ax                          ; 8B F0
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [si + 0x1096]      ; 2B 84 96 10
        sbb     dx, word ptr [si + 0x1098]      ; 1B 94 98 10
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_115                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [si + 0x1096]      ; 03 84 96 10
        adc     dx, word ptr [si + 0x1098]      ; 13 94 98 10
        mov     word ptr [si + 0x1092], ax      ; 89 84 92 10
        mov     word ptr [si + 0x1094], dx      ; 89 94 94 10
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     si, ax                          ; 8B F0
        mov     word ptr [si + 0x1086], 0       ; C7 84 86 10 00 00
        or      byte ptr [si + 0x107e], 2       ; 80 8C 7E 10 02
        push    word ptr [0x324]                ; FF 36 24 03
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0283                          ; EB 22
L_0261:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0283                          ; EB 17
L_026C:
        mov     ax, 1                           ; B8 01 00
L_026F:
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0283                          ; EB 0C
L_0277:
        call    far _entry_153                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0283                          ; EB 05
L_027E:
        mov     ax, 0x64                        ; B8 64 00
        jmp     L_026F                          ; EB EC
L_0283:
        push    word ptr [0x324]                ; FF 36 24 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 63 03 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A E6 02 00 00 [FIXUP]
        call    L_044C                          ; E8 AE 01
L_029E:
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
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 0x10aa], ax      ; 39 87 AA 10
        je      L_02C9                          ; 74 03
        jmp     L_0376                          ; E9 AD 00
L_02C9:
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        jne     L_02D3                          ; 75 03
        jmp     L_0376                          ; E9 A3 00
L_02D3:
        call    L_03D4                          ; E8 FE 00
        or      ax, ax                          ; 0B C0
        jne     L_02DD                          ; 75 03
        jmp     L_0376                          ; E9 99 00
L_02DD:
        push    word ptr [0x324]                ; FF 36 24 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A 6F 03 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        je      L_0307                          ; 74 16
        cmp     ax, 1                           ; 3D 01 00
        je      L_0312                          ; 74 1C
        cmp     ax, 2                           ; 3D 02 00
        je      L_031D                          ; 74 22
        cmp     ax, 3                           ; 3D 03 00
        je      L_0331                          ; 74 31
        cmp     ax, 4                           ; 3D 04 00
        je      L_0345                          ; 74 40
        jmp     L_035B                          ; EB 54
L_0307:
        push    word ptr [0x1286]               ; FF 36 86 12
L_030B:
        call    far _entry_151                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035B                          ; EB 49
L_0312:
        push    word ptr [0x1286]               ; FF 36 86 12
L_0316:
        call    far _entry_150                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035B                          ; EB 3E
L_031D:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x1084]      ; 8B 87 84 10
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        jmp     L_030B                          ; EB DA
L_0331:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x1084]      ; 8B 87 84 10
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        jmp     L_0316                          ; EB D1
L_0345:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bx + 0x1088]      ; 2B 87 88 10
        push    ax                              ; 50
        call    far _entry_149                  ; 9A FF FF 00 00 [FIXUP]
L_035B:
        push    word ptr [0x324]                ; FF 36 24 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A FF FF 00 00 [FIXUP]
        call    L_044C                          ; E8 D6 00
L_0376:
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
        push    si                              ; 56
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_03C8                          ; 75 32
        mov     ax, 0x17a                       ; B8 7A 01
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_03B5                          ; 7E 0E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     bx                              ; 4B
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        les     si, ptr [bp + 8]                ; C4 76 08
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
L_03B5:
        mov     ax, 0x17a                       ; B8 7A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
L_03C8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03D4 -- offset 0x03D4 -- 40 instr
; Funcion mediana (40 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; calls (inter): GDI.SELECTOBJECT, GDI.SETBKCOLOR, GDI.SETTEXTCOLOR, USER.GETDC
;----------------------------------------------------------------------
L_03D4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     si, ax                          ; 8B F0
        push    word ptr [si + 0x10aa]          ; FF B4 AA 10
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x10b0], ax      ; 89 84 B0 10
        or      ax, ax                          ; 0B C0
        je      L_040C                          ; 74 1A
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10b0]          ; FF B7 B0 10
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0410                          ; 75 04
L_040C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0447                          ; EB 37
L_0410:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10b0]          ; FF B7 B0 10
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 0x10b0]          ; FF B7 B0 10
        push    word ptr [0x78a]                ; FF 36 8A 07
        push    word ptr [0x788]                ; FF 36 88 07
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0447:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_044C -- offset 0x044C -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_user, small
; calls (inter): USER.RELEASEDC
;----------------------------------------------------------------------
L_044C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     si, ax                          ; 8B F0
        push    word ptr [si + 0x10aa]          ; FF B4 AA 10
        push    word ptr [si + 0x10b0]          ; FF B4 B0 10
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [0x324]                ; F7 2E 24 03
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 0x10b0], 0       ; C7 87 B0 10 00 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

WRITE_TEXT ENDS

        END
