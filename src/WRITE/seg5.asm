; AUTO-GENERATED from original WRITE segment 5
; segment_size=2280 bytes, flags=0xf170
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
        push    si                              ; 56
        mov     word ptr [0xecc], 0             ; C7 06 CC 0E 00 00
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_002F                          ; 74 05
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        jmp     L_0031                          ; EB 02
L_002F:
        mov     ax, si                          ; 8B C6
L_0031:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 77 00 00 00 [FIXUP]
        mov     word ptr [0x1bce], ax           ; A3 CE 1B
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0059                          ; 74 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        jmp     L_0060                          ; EB 07
L_0059:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
L_0060:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07FF                          ; E8 9A 07
        or      ax, ax                          ; 0B C0
        jne     L_006E                          ; 75 05
L_0069:
        sub     ax, ax                          ; 2B C0
        jmp     L_00F5                          ; E9 87 00
L_006E:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1bce], ax           ; A3 CE 1B
        or      ax, ax                          ; 0B C0
        je      L_0069                          ; 74 E7
        mov     ax, 0x195                       ; B8 95 01
        push    ax                              ; 50
        call    far _entry_64                   ; 9A E5 00 00 00 [FIXUP]
        mov     word ptr [0x1218], ax           ; A3 18 12
        inc     ax                              ; 40
        je      L_0069                          ; 74 D8
        mov     word ptr [0xc18], 5             ; C7 06 18 0C 05 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_00BA                          ; EB 1C
L_009E:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        add     si, 5                           ; 83 C6 05
        mov     al, byte ptr [si]               ; 8A 04
        and     al, 0x80                        ; 24 80
        or      al, 0xb                         ; 0C 0B
        mov     byte ptr [si], al               ; 88 04
        inc     word ptr [bp - 4]               ; FF 46 FC
L_00BA:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_009E                          ; 7C DC
        call    far _entry_378                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0069                          ; 74 9E
        call    L_0302                          ; E8 34 02
        or      ax, ax                          ; 0B C0
        je      L_0069                          ; 74 97
        call    L_03CC                          ; E8 F7 02
        or      ax, ax                          ; 0B C0
        je      L_0069                          ; 74 90
        call    L_0647                          ; E8 6B 05
        or      ax, ax                          ; 0B C0
        je      L_0069                          ; 74 89
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 15 03 00 00 [FIXUP]
        mov     word ptr [0x1012], ax           ; A3 12 10
        inc     ax                              ; 40
        jne     L_00F2                          ; 75 03
        jmp     L_0069                          ; E9 77 FF
L_00F2:
        mov     ax, 1                           ; B8 01 00
L_00F5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5e                        ; 83 EC 5E
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x5e], 1         ; C7 46 A2 01 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     si, word ptr [bp + 6]           ; 8B 76 06
L_011B:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bp - 0x5a], al        ; 88 46 A6
        or      al, al                          ; 0A C0
        je      L_0137                          ; 74 13
        cmp     al, 0x20                        ; 3C 20
        jne     L_012B                          ; 75 03
        jmp     L_01B6                          ; E9 8B 00
L_012B:
        cmp     al, 9                           ; 3C 09
        jne     L_0132                          ; 75 03
        jmp     L_01B6                          ; E9 84 00
L_0132:
        mov     word ptr [bp - 0x5e], 0         ; C7 46 A2 00 00
L_0137:
        cmp     word ptr [bp - 0x5e], 0         ; 83 7E A2 00
        jne     L_0194                          ; 75 57
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp + 6]           ; 03 76 06
L_014E:
        dec     si                              ; 4E
        cmp     word ptr [bp + 6], si           ; 39 76 06
        ja      L_0159                          ; 77 05
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_01BA                          ; 74 61
L_0159:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x58]            ; FF 76 A8
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        call    far _entry_195                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_017F                          ; 74 13
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01C2                          ; 75 43
L_017F:
        mov     word ptr [0x38], 0              ; C7 06 38 00 00 00
        mov     ax, 0x2019                      ; B8 19 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x38], 1              ; C7 06 38 00 01 00
L_0194:
        mov     word ptr [bp - 0x56], 0x7fff    ; C7 46 AA FF 7F
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     byte ptr [bp - 0x52], 0         ; C6 46 AE 00
L_01A3:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_01B1                          ; 75 07
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        je      L_022B                          ; 74 7A
L_01B1:
        sub     ax, ax                          ; 2B C0
        jmp     L_02F5                          ; E9 3F 01
L_01B6:
        inc     si                              ; 46
        jmp     L_011B                          ; E9 61 FF
L_01BA:
        mov     byte ptr [si], 0                ; C6 04 00
        dec     word ptr [bp - 0x58]            ; FF 4E A8
        jmp     L_014E                          ; EB 8C
L_01C2:
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A E1 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FE                          ; 75 25
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3a                        ; B8 3A 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A F1 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FE                          ; 75 15
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x5c                        ; B8 5C 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FE                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0200                          ; EB 02
L_01FE:
        sub     ax, ax                          ; 2B C0
L_0200:
        push    ax                              ; 50
        call    far _entry_194                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_0194                          ; 74 86
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_377                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_0220                          ; 75 03
        jmp     L_0194                          ; E9 74 FF
L_0220:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_193                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01A3                          ; E9 78 FF
L_022B:
        cmp     word ptr [bp - 0x56], 0x7fff    ; 81 7E AA FF 7F
        je      L_0252                          ; 74 20
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x56]            ; F7 6E AA
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bx + di + 0x1e]   ; 8B 59 1E
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_0252:
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 51 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        jne     L_0264                          ; 75 03
        jmp     L_01B1                          ; E9 4D FF
L_0264:
        push    word ptr [bp - 0x56]            ; FF 76 AA
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_192                  ; 9A 5B 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        inc     ax                              ; 40
        jne     L_027B                          ; 75 03
        jmp     L_01B1                          ; E9 36 FF
L_027B:
        push    word ptr [bp - 0x54]            ; FF 76 AC
        push    word ptr [0x1c06]               ; FF 36 06 1C
        push    word ptr [0x1138]               ; FF 36 38 11
        call    far _entry_376                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0293                          ; 75 03
        jmp     L_01B1                          ; E9 1E FF
L_0293:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_242                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x56], 0x7fff    ; 81 7E AA FF 7F
        je      L_02B7                          ; 74 11
        mov     word ptr [0x70], 1              ; C7 06 70 00 01 00
        call    far _entry_188                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x70], 0              ; C7 06 70 00 00 00
L_02B7:
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [0x1be2], ax           ; A3 E2 1B
        mov     word ptr [0x1be4], dx           ; 89 16 E4 1B
        mov     word ptr [0x1be6], ax           ; A3 E6 1B
        mov     word ptr [0x1be8], dx           ; 89 16 E8 1B
        mov     word ptr [0x1092], ax           ; A3 92 10
        mov     word ptr [0x1094], dx           ; 89 16 94 10
        or      byte ptr [0x1bea], 1            ; 80 0E EA 1B 01
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_375                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        jne     L_02EA                          ; 75 05
        call    far _entry_374                  ; 9A FF FF 00 00 [FIXUP]
L_02EA:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_191                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_02F5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0302 -- offset 0x0302 -- 73 instr
; Funcion mediana (73 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_0302:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 4                           ; B8 04 00
        mov     word ptr [0xf9e], ax            ; A3 9E 0F
        mov     cx, 0xb                         ; B9 0B 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xf92], ax            ; A3 92 0F
        inc     ax                              ; 40
        jne     L_0324                          ; 75 05
L_031F:
        sub     ax, ax                          ; 2B C0
        jmp     L_03C8                          ; E9 A4 00
L_0324:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     ax, 0x58                        ; 05 58 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0340                          ; EB 0B
L_0335:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        add     word ptr [bp - 2], 0x16         ; 83 46 FE 16
        mov     word ptr [bx], 0                ; C7 07 00 00
L_0340:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jb      L_0335                          ; 72 ED
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 0x800                       ; B8 00 08
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 6B 03 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_192                  ; 9A 75 03 00 00 [FIXUP]
        mov     word ptr [0xc20], ax            ; A3 20 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 0x801                       ; B8 01 08
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 8C 03 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_192                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1bfc], ax           ; A3 FC 1B
        mov     word ptr [0x12b4], 0xffff       ; C7 06 B4 12 FF FF
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x802                       ; B8 02 08
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 98 03 00 00 [FIXUP]
        mov     word ptr [0x1bee], ax           ; A3 EE 1B
        mov     ax, 0x803                       ; B8 03 08
        push    ax                              ; 50
        call    far _entry_167                  ; 9A A4 03 00 00 [FIXUP]
        mov     word ptr [0x1110], ax           ; A3 10 11
        mov     ax, 0x804                       ; B8 04 08
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xfa0], ax            ; A3 A0 0F
        cmp     word ptr [0xc20], -1            ; 83 3E 20 0C FF
        jne     L_03B5                          ; 75 03
        jmp     L_031F                          ; E9 6A FF
L_03B5:
        cmp     word ptr [0x1bfc], -1           ; 83 3E FC 1B FF
        jne     L_03BF                          ; 75 03
        jmp     L_031F                          ; E9 60 FF
L_03BF:
        inc     ax                              ; 40
        jne     L_03C5                          ; 75 03
        jmp     L_031F                          ; E9 5A FF
L_03C5:
        mov     ax, 1                           ; B8 01 00
L_03C8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03CC -- offset 0x03CC -- 211 instr
; Funcion compleja: 211 instrucciones, 2 llamadas, 6 branches.
; tags: calls_gdi, complex
; calls (inter): GDI.ESCAPE, GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_03CC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [0xe80]            ; A1 80 0E
        and     al, 0                           ; 24 00
        or      al, 0x18                        ; 0C 18
        mov     word ptr [0xe80], ax            ; A3 80 0E
        and     byte ptr [0xe7f], 3             ; 80 26 7F 0E 03
        and     byte ptr [0xe82], 0xf8          ; 80 26 82 0E F8
        or      byte ptr [0xe7e], 1             ; 80 0E 7E 0E 01
        mov     word ptr [0x13cc], 0x7e6        ; C7 06 CC 13 E6 07
        mov     ax, word ptr [0x7e8]            ; A1 E8 07
        and     al, 0x80                        ; 24 80
        or      al, 0x1e                        ; 0C 1E
        mov     word ptr [0x7e8], ax            ; A3 E8 07
        or      byte ptr [0x7e6], 1             ; 80 0E E6 07 01
        mov     ax, word ptr [0x7e6]            ; A1 E6 07
        and     al, 1                           ; 24 01
        or      al, 0x3c                        ; 0C 3C
        mov     word ptr [0x7e6], ax            ; A3 E6 07
        mov     word ptr [0x7f0], 0xf0          ; C7 06 F0 07 F0 00
        mov     ax, word ptr [0xfa4]            ; A1 A4 0F
        and     ah, 0xf8                        ; 80 E4 F8
        or      ah, 2                           ; 80 CC 02
        mov     word ptr [0xfa4], ax            ; A3 A4 0F
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        jne     L_0426                          ; 75 03
        jmp     L_0543                          ; E9 1D 01
L_0426:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A CE 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0461                          ; 74 20
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A 78 04 00 00 [FIXUP]
        mov     word ptr [0xfa8], ax            ; A3 A8 0F
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        jmp     L_0495                          ; EB 34
L_0461:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 88 04 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x3840                      ; B8 40 38
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 96 04 00 00 [FIXUP]
        mov     word ptr [0xfa8], ax            ; A3 A8 0F
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x3840                      ; B8 40 38
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
L_0495:
        call    far _entry_94                   ; 9A E2 04 00 00 [FIXUP]
        mov     word ptr [0xfa6], ax            ; A3 A6 0F
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        cmp     word ptr [0xa5a], ax            ; 39 06 5A 0A
        jbe     L_04AC                          ; 76 06
        mov     ax, word ptr [0xa5a]            ; A1 5A 0A
        mov     word ptr [0xfa8], ax            ; A3 A8 0F
L_04AC:
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        cmp     word ptr [0xa6c], ax            ; 39 06 6C 0A
        jbe     L_04BB                          ; 76 06
        mov     ax, word ptr [0xa6c]            ; A1 6C 0A
        mov     word ptr [0xfa6], ax            ; A3 A6 0F
L_04BB:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04FB                          ; 74 25
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A F5 04 00 00 [FIXUP]
        mov     word ptr [0x107c], ax           ; A3 7C 10
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0510                          ; EB 15
L_04FB:
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        shr     ax, 1                           ; D1 E8
        mov     word ptr [0x107c], ax           ; A3 7C 10
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        shr     ax, 1                           ; D1 E8
L_0510:
        mov     word ptr [0x10f6], ax           ; A3 F6 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 3A 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_055D                          ; EB 1A
L_0543:
        mov     word ptr [0xfa8], 0x2fd0        ; C7 06 A8 0F D0 2F
        mov     word ptr [0xfa6], 0x3de0        ; C7 06 A6 0F E0 3D
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x10f6], ax           ; A3 F6 10
        mov     word ptr [0x107c], ax           ; A3 7C 10
L_055D:
        mov     ax, 0x708                       ; B8 08 07
        push    ax                              ; 50
        push    word ptr [0x107c]               ; FF 36 7C 10
        call    far _entry_264                  ; 9A 75 05 00 00 [FIXUP]
        mov     word ptr [0xfb0], ax            ; A3 B0 0F
        mov     ax, 0x708                       ; B8 08 07
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_264                  ; 9A 90 05 00 00 [FIXUP]
        mov     cx, word ptr [0xfa8]            ; 8B 0E A8 0F
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xfb0]            ; 2B 0E B0 0F
        mov     word ptr [0xfb2], cx            ; 89 0E B2 0F
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0x10f6]               ; FF 36 F6 10
        call    far _entry_264                  ; 9A 9F 05 00 00 [FIXUP]
        mov     word ptr [0xfac], ax            ; A3 AC 0F
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_264                  ; 9A BA 05 00 00 [FIXUP]
        mov     cx, word ptr [0xfa6]            ; 8B 0E A6 0F
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xfac]            ; 2B 0E AC 0F
        mov     word ptr [0xfae], cx            ; 89 0E AE 0F
        mov     ax, 0x438                       ; B8 38 04
        push    ax                              ; 50
        push    word ptr [0x10f6]               ; FF 36 F6 10
        call    far _entry_264                  ; 9A C9 05 00 00 [FIXUP]
        mov     word ptr [0xfb6], ax            ; A3 B6 0F
        mov     ax, 0x438                       ; B8 38 04
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_264                  ; 9A DF 05 00 00 [FIXUP]
        mov     cx, word ptr [0xfa6]            ; 8B 0E A6 0F
        sub     cx, ax                          ; 2B C8
        mov     word ptr [0xfb8], cx            ; 89 0E B8 0F
        mov     ax, 0x708                       ; B8 08 07
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_264                  ; 9A F6 05 00 00 [FIXUP]
        mov     cx, word ptr [0xfa8]            ; 8B 0E A8 0F
        sub     cx, ax                          ; 2B C8
        mov     word ptr [0xfc0], cx            ; 89 0E C0 0F
        mov     ax, 0x438                       ; B8 38 04
        push    ax                              ; 50
        push    word ptr [0x10f6]               ; FF 36 F6 10
        call    far _entry_264                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xfbe], ax            ; A3 BE 0F
        mov     word ptr [0xfaa], 0xffff        ; C7 06 AA 0F FF FF
        mov     ax, word ptr [0xfb4]            ; A1 B4 0F
        and     ah, 0                           ; 80 E4 00
        or      ah, 1                           ; 80 CC 01
        mov     word ptr [0xfb4], ax            ; A3 B4 0F
        mov     word ptr [0xfba], 0x2d0         ; C7 06 BA 0F D0 02
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        mov     word ptr [0x13c2], ax           ; A3 C2 13
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        mov     word ptr [0x13d2], ax           ; A3 D2 13
        mov     word ptr [0x33e], 0xffff        ; C7 06 3E 03 FF FF
        mov     word ptr [0xee0], 0xa           ; C7 06 E0 0E 0A 00
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 0C 07 00 00 [FIXUP]
        mov     word ptr [0x1072], ax           ; A3 72 10
        inc     ax                              ; 40
        jne     L_0640                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0643                          ; EB 03
L_0640:
        mov     ax, 1                           ; B8 01 00
L_0643:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0647 -- offset 0x0647 -- 115 instr
; Funcion compleja: 115 instrucciones, 1 llamadas, 3 branches.
; tags: complex
; calls (intra): sub_0773
;----------------------------------------------------------------------
L_0647:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x4c                        ; 83 EC 4C
        mov     word ptr [0x128a], 9            ; C7 06 8A 12 09 00
        call    far _entry_379                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc3e], ax            ; A3 3E 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0773                          ; E8 13 01
        mov     byte ptr [bp - 0x4a], 0         ; C6 46 B6 00
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_207                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0684                          ; 75 05
L_067F:
        sub     ax, ax                          ; 2B C0
        jmp     L_076F                          ; E9 EB 00
L_0684:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        or      byte ptr [bx + 4], 2            ; 80 4F 04 02
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x12b8], ax           ; A3 B8 12
        mov     word ptr [0x121c], ax           ; A3 1C 12
        mov     ax, 0x7b                        ; B8 7B 00
        mov     word ptr [0x12ba], ax           ; A3 BA 12
        mov     word ptr [0x121e], ax           ; A3 1E 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_293                  ; 9A E3 06 00 00 [FIXUP]
        mov     word ptr [0x1220], ax           ; A3 20 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1220]               ; FF 36 20 12
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FA 06 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        push    ax                              ; 50
        call    far _entry_293                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12bc], ax           ; A3 BC 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x12bc]               ; FF 36 BC 12
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 18 07 00 00 [FIXUP]
        mov     word ptr [0x1222], ax           ; A3 22 12
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 87 00 00 00 [FIXUP]
        mov     word ptr [0x12be], ax           ; A3 BE 12
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x12c0], ax           ; A3 C0 12
        mov     word ptr [0x1224], ax           ; A3 24 12
        mov     ax, word ptr [0x1222]           ; A1 22 12
        inc     ax                              ; 40
        jne     L_0730                          ; 75 03
        jmp     L_067F                          ; E9 4F FF
L_0730:
        mov     ax, word ptr [0x12be]           ; A1 BE 12
        inc     ax                              ; 40
        jne     L_0739                          ; 75 03
        jmp     L_067F                          ; E9 46 FF
L_0739:
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 57 07 00 00 [FIXUP]
        mov     ax, 0xe7e                       ; B8 7E 0E
        push    ax                              ; 50
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 68 07 00 00 [FIXUP]
        push    word ptr [0x13cc]               ; FF 36 CC 13
        mov     ax, 0x1142                      ; B8 42 11
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_076F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0773 -- offset 0x0773 -- 53 instr
; Funcion mediana (53 instr, 0 calls).
; tags: far, medium
; callers: sub_0647
;----------------------------------------------------------------------
L_0773:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     si, 0xeec                       ; BE EC 0E
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_079C                          ; EB 11
L_078B:
        mov     word ptr [si + 2], 0x7fff       ; C7 44 02 FF 7F
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 4], ax           ; 89 44 04
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     si, 6                           ; 83 C6 06
L_079C:
        mov     ax, word ptr [0x128a]           ; A1 8A 12
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_078B                          ; 7C E7
        mov     word ptr [0x1bcc], ax           ; A3 CC 1B
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_07BB                          ; EB 0D
L_07AE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [0x1bfe]           ; 8B 36 FE 1B
        mov     byte ptr [bx + si], 0xff        ; C6 00 FF
        inc     word ptr [bp - 4]               ; FF 46 FC
L_07BB:
        mov     ax, word ptr [0x1070]           ; A1 70 10
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_07AE                          ; 7C EB
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_07E7                          ; EB 19
L_07CE:
        mov     word ptr [si + 2], 0x7fff       ; C7 44 02 FF 7F
        and     byte ptr [si + 6], 0xfe         ; 80 64 06 FE
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     byte ptr [si + 8], 0xff         ; C6 44 08 FF
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        add     si, 9                           ; 83 C6 09
L_07E7:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_07CE                          ; 7C DF
        add     ax, 6                           ; 05 06 00
        mov     word ptr [0x1bf4], ax           ; A3 F4 1B
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07FF -- offset 0x07FF -- 90 instr
; Funcion compleja: 90 instrucciones, 2 llamadas, 5 branches.
; tags: calls_kernel, complex, far
; calls (inter): KERNEL.GLOBALCOMPACT, KERNEL.LOCALALLOC
;----------------------------------------------------------------------
L_07FF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [0x1bd2], 0x1e         ; C7 06 D2 1B 1E 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     dx, 3                           ; 83 FA 03
        jl      L_0839                          ; 7C 13
        jg      L_082D                          ; 7F 05
        cmp     ax, 0xd40                       ; 3D 40 0D
        jbe     L_0839                          ; 76 0C
L_082D:
        mov     word ptr [0x1bd2], 0x3c         ; C7 06 D2 1B 3C 00
        mov     word ptr [0x40], 1              ; C7 06 40 00 01 00
L_0839:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        mov     word ptr [0x1070], ax           ; A3 70 10
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     dx, word ptr [0x1bd2]           ; 8B 16 D2 1B
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        inc     dx                              ; 42
        and     dl, 0xfe                        ; 80 E2 FE
        add     ax, dx                          ; 03 C2
        mov     cx, word ptr [0x1070]           ; 8B 0E 70 10
        inc     cx                              ; 41
        and     cl, 0xfe                        ; 80 E1 FE
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.LOCALALLOC           ; 9A 9A 08 00 00 [FIXUP]
        mov     word ptr [0xc02], ax            ; A3 02 0C
        or      ax, ax                          ; 0B C0
        jne     L_08A1                          ; 75 27
        mov     word ptr [0x1bd2], 0x1e         ; C7 06 D2 1B 1E 00
        mov     word ptr [0x1070], 0x3d         ; C7 06 70 10 3D 00
        mov     ax, word ptr [0x1070]           ; A1 70 10
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        add     ax, 0x100e                      ; 05 0E 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.LOCALALLOC           ; 9A 3A 00 00 00 [FIXUP]
        mov     word ptr [0xc02], ax            ; A3 02 0C
L_08A1:
        cmp     word ptr [0xc02], 0             ; 83 3E 02 0C 00
        jne     L_08AC                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_08DF                          ; EB 33
L_08AC:
        mov     ax, word ptr [0xc02]            ; A1 02 0C
        mov     word ptr [0xa58], ax            ; A3 58 0A
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xc02]            ; 03 06 02 0C
        mov     word ptr [0xc02], ax            ; A3 02 0C
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [0xc02], ax            ; A3 02 0C
        mov     word ptr [0x1bfe], ax           ; A3 FE 1B
        mov     ax, word ptr [0x1070]           ; A1 70 10
        add     ax, word ptr [0xc02]            ; 03 06 02 0C
        mov     word ptr [0xc02], ax            ; A3 02 0C
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [0xc02], ax            ; A3 02 0C
        mov     word ptr [0x123e], ax           ; A3 3E 12
        mov     ax, 1                           ; B8 01 00
L_08DF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
