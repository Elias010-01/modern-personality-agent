; AUTO-GENERATED from original WRITE segment 65
; segment_size=700 bytes, flags=0xf130
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
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_0032                          ; 72 1C
        cmp     ax, 0x101                       ; 3D 01 01
        ja      L_0032                          ; 77 17
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cmp     ax, 0x10                        ; 3D 10 00
        jb      L_0032                          ; 72 0F
        cmp     ax, 0x11                        ; 3D 11 00
        ja      L_0032                          ; 77 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0040                          ; E8 13 00
        mov     ax, 1                           ; B8 01 00
        jmp     L_0034                          ; EB 02
L_0032:
        sub     ax, ax                          ; 2B C0
L_0034:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0040 -- offset 0x0040 -- 253 instr
; Dispatcher: tabla de decisiones cmp+jcc (253 instr).
; tags: dispatcher, far
; callers: sub_0288
; calls (intra): sub_0288
;----------------------------------------------------------------------
L_0040:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A 66 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_005C                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_005E                          ; EB 02
L_005C:
        sub     ax, ax                          ; 2B C0
L_005E:
        mov     word ptr [0x2ca], ax            ; A3 CA 02
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0073                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0075                          ; EB 02
L_0073:
        sub     ax, ax                          ; 2B C0
L_0075:
        mov     word ptr [0x2cc], ax            ; A3 CC 02
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [0x10aa]           ; A1 AA 10
        cmp     word ptr [si], ax               ; 39 04
        je      L_009E                          ; 74 05
L_0099:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_00FF                          ; EB 61
L_009E:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_00B3                          ; 74 07
        cmp     ax, 0x102                       ; 3D 02 01
        je      L_00FC                          ; 74 4B
        jmp     L_0099                          ; EB E6
L_00B3:
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        je      L_00C5                          ; 74 0B
        cmp     word ptr [bp - 4], 0xd          ; 83 7E FC 0D
        jne     L_0099                          ; 75 D9
        mov     ax, 0x820d                      ; B8 0D 82
        jmp     L_00FF                          ; EB 3A
L_00C5:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     ax, 9                           ; 3D 09 00
        je      L_00E0                          ; 74 13
        jg      L_00E8                          ; 7F 19
        cmp     ax, 8                           ; 3D 08 00
        jne     L_00F7                          ; 75 23
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        je      L_00E0                          ; 74 05
        mov     ax, 0x802e                      ; B8 2E 80
        jmp     L_00FF                          ; EB 1F
L_00E0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ah, 0x80                        ; 80 CC 80
        jmp     L_00FF                          ; EB 17
L_00E8:
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_00E0                          ; 74 F3
        cmp     ax, 0x70                        ; 3D 70 00
        jl      L_00F7                          ; 7C 05
        cmp     ax, 0x79                        ; 3D 79 00
        jle     L_0099                          ; 7E A2
L_00F7:
        mov     ax, 0xfffc                      ; B8 FC FF
        jmp     L_00FF                          ; EB 03
L_00FC:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_00FF:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 2], 0x100        ; 81 7C 02 00 01
        jne     L_012A                          ; 75 07
        mov     ax, word ptr [0x10aa]           ; A1 AA 10
        cmp     word ptr [si], ax               ; 39 04
        je      L_012F                          ; 74 05
L_012A:
        sub     ax, ax                          ; 2B C0
        jmp     L_02B1                          ; E9 82 01
L_012F:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        or      ah, 0x80                        ; 80 CC 80
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        je      L_014D                          ; 74 0E
        cmp     ax, 0x8021                      ; 3D 21 80
        jl      L_012A                          ; 7C E6
        cmp     ax, 0x8028                      ; 3D 28 80
        jg      L_012A                          ; 7F E1
        add     byte ptr [bp - 3], 1            ; 80 46 FD 01
L_014D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     ax, 0x8028                      ; 3D 28 80
        je      L_0192                          ; 74 3D
        jle     L_015A                          ; 7E 03
        jmp     L_026E                          ; E9 14 01
L_015A:
        cmp     ax, 0x8022                      ; 3D 22 80
        jle     L_0162                          ; 7E 03
        jmp     L_024B                          ; E9 E9 00
L_0162:
        cmp     ax, 0x8021                      ; 3D 21 80
        jge     L_0192                          ; 7D 2B
        cmp     ax, 0x800c                      ; 3D 0C 80
        je      L_01A7                          ; 74 3B
        cmp     ax, 0x801b                      ; 3D 1B 80
        jne     L_0174                          ; 75 03
        jmp     L_0201                          ; E9 8D 00
L_0174:
        jmp     L_012A                          ; EB B4
L_0176:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 0D
        call    far _entry_102                  ; 9A 99 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_373                  ; 9A FF FF 00 00 [FIXUP]
L_0189:
        mov     word ptr [0x7c], 0              ; C7 06 7C 00 00 00
        jmp     L_023E                          ; E9 AC 00
L_0192:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 F1
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_372                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0189                          ; EB E2
L_01A7:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 DC
        mov     word ptr [0x7c], 1              ; C7 06 7C 00 01 00
        jmp     L_023E                          ; E9 88 00
L_01B6:
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        je      L_01CE                          ; 74 11
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_01C6                          ; 75 03
        jmp     L_012A                          ; E9 64 FF
L_01C6:
        call    far _entry_231                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_012A                          ; E9 5C FF
L_01CE:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 B5
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x1011                      ; B8 11 10
        push    ax                              ; 50
        mov     ax, OFFSET _entry_314           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_314           ; BA FF FF [FIXUP]
L_01E2:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_371                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0189                          ; EB 9E
L_01EB:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 98
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x1013                      ; B8 13 10
        push    ax                              ; 50
        mov     ax, OFFSET _entry_312           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_312           ; BA FF FF [FIXUP]
        jmp     L_01E2                          ; EB E1
L_0201:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0189                          ; 74 82
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        je      L_021E                          ; 74 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x1010                      ; B8 10 10
        push    ax                              ; 50
        mov     ax, OFFSET _entry_230           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_230           ; BA FF FF [FIXUP]
        jmp     L_01E2                          ; EB C4
L_021E:
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_022C                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0243                          ; 74 17
L_022C:
        push    word ptr [0xc2e]                ; FF 36 2E 0C
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_023E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02B1                          ; EB 6E
L_0243:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0189                          ; E9 3E FF
L_024B:
        cmp     ax, 0x8023                      ; 3D 23 80
        jge     L_0253                          ; 7D 03
        jmp     L_012A                          ; E9 D7 FE
L_0253:
        cmp     ax, 0x8025                      ; 3D 25 80
        jg      L_025B                          ; 7F 03
        jmp     L_0176                          ; E9 1B FF
L_025B:
        cmp     ax, 0x8026                      ; 3D 26 80
        jne     L_0263                          ; 75 03
        jmp     L_0192                          ; E9 2F FF
L_0263:
        cmp     ax, 0x8027                      ; 3D 27 80
        jne     L_026B                          ; 75 03
        jmp     L_0176                          ; E9 0B FF
L_026B:
        jmp     L_012A                          ; E9 BC FE
L_026E:
        cmp     ax, 0x8124                      ; 3D 24 81
        jg      L_028E                          ; 7F 1B
        cmp     ax, 0x8121                      ; 3D 21 81
        jl      L_027B                          ; 7C 03
        jmp     L_0192                          ; E9 17 FF
L_027B:
        cmp     ax, 0x802d                      ; 3D 2D 80
        jne     L_0283                          ; 75 03
        jmp     L_01EB                          ; E9 68 FF
L_0283:
        cmp     ax, 0x802e                      ; 3D 2E 80
        jne     L_028B                          ; 75 03
        jmp     L_01B6                          ; E9 2B FF
L_028B:
        jmp     L_012A                          ; E9 9C FE
L_028E:
        cmp     ax, 0x8125                      ; 3D 25 81
        jne     L_0296                          ; 75 03
        jmp     L_0176                          ; E9 E0 FE
L_0296:
        cmp     ax, 0x8126                      ; 3D 26 81
        jne     L_029E                          ; 75 03
        jmp     L_0192                          ; E9 F4 FE
L_029E:
        cmp     ax, 0x8127                      ; 3D 27 81
        jne     L_02A6                          ; 75 03
        jmp     L_0176                          ; E9 D0 FE
L_02A6:
        cmp     ax, 0x8128                      ; 3D 28 81
        jne     L_02AE                          ; 75 03
        jmp     L_0192                          ; E9 E4 FE
L_02AE:
        jmp     L_012A                          ; E9 79 FE
L_02B1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
