; AUTO-GENERATED from original USER segment 9
; segment_size=3131 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 67 instr
; Funcion mediana (67 instr, 3 calls).
; tags: far, medium
; calls (intra): sub_009E, sub_00D7, sub_04EB
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
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 0xc], 0x202      ; 81 7E 0C 02 02
        jne     L_0093                          ; 75 7F
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x626], 0             ; C7 06 26 06 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     cx, word ptr [0x46c]            ; 8B 0E 6C 04
        sar     cx, 1                           ; D1 F9
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        cmp     ax, word ptr [bx + 0x28]        ; 3B 47 28
        jl      L_004D                          ; 7C 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04EB                          ; E8 A9 04
        push    ax                              ; 50
L_0043:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00D7                          ; E8 8C 00
        jmp     L_0093                          ; EB 46
L_004D:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_009E                          ; E8 4C 00
        or      ax, ax                          ; 0B C0
        jne     L_005C                          ; 75 06
        push    word ptr [0x524]                ; FF 36 24 05
        jmp     L_0043                          ; EB E7
L_005C:
        mov     bx, word ptr [0x524]            ; 8B 1E 24 05
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x552]       ; 8B 87 52 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far _entry_401                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x62]             ; A1 62 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_0093                          ; 74 16
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_253F                  ; 9A C5 00 00 00 [FIXUP]
L_0093:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_009E -- offset 0x009E -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: far, medium
; callers: ICONWNDPROC, sub_0000
;----------------------------------------------------------------------
L_009E:
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
        mov     bx, word ptr [0x524]            ; 8B 1E 24 05
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x552]       ; 8B B7 52 05
        or      si, si                          ; 0B F6
        je      L_00CB                          ; 74 11
        push    si                              ; 56
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 98 01 00 00 [FIXUP]
        jmp     L_00CD                          ; EB 02
L_00CB:
        sub     ax, ax                          ; 2B C0
L_00CD:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00D7 -- offset 0x00D7 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: far, small
; callers: sub_0000, sub_058D
; calls (intra): sub_00F9
;----------------------------------------------------------------------
L_00D7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_00F9                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00F9 -- offset 0x00F9 -- 81 instr
; Dispatcher: tabla de decisiones cmp+jcc (81 instr).
; tags: dispatcher
; callers: SBWNDPROC, sub_0048, sub_00D7, sub_0838
; calls (intra): sub_07AD
;----------------------------------------------------------------------
L_00F9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     di, 0x552                       ; BF 52 05
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_010F                          ; 74 05
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        jmp     L_0131                          ; EB 22
L_010F:
        mov     ax, word ptr [0x524]            ; A1 24 05
        shl     ax, 1                           ; D1 E0
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + di], 0           ; 83 39 00
        je      L_0131                          ; 74 06
        mov     ax, word ptr [0x524]            ; A1 24 05
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_0131:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + di], si          ; 89 31
        push    si                              ; 56
        call    far _SEG1_385B                  ; 9A BC 01 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0443                          ; E8 FE 02
        push    si                              ; 56
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        sub     ax, word ptr [si + 0x26]        ; 2B 44 26
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     ax, word ptr [si + 0x28]        ; 2B 44 28
        push    ax                              ; 50
        call    far _SEG1_1D8C                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [si + 0x26]                 ; 8D 44 26
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x1e]                 ; 8D 44 1E
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_3B69                  ; 9A D1 01 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_019C                          ; 74 24
        push    si                              ; 56
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     ax, word ptr [si + 0x20]        ; 2B 44 20
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     cx, word ptr [si + 0x22]        ; 8B 4C 22
        sub     cx, word ptr [si + 0x1e]        ; 2B 4C 1E
        mov     ax, cx                          ; 8B C1
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
L_019C:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_01AB                          ; 74 09
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07AD                          ; E8 02 06
L_01AB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B3 -- offset 0x01B3 -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: small
; callers: ICONWNDPROC, sub_0996
;----------------------------------------------------------------------
L_01B3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        call    far _SEG1_385B                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        mov     word ptr [si + 0x2a], ax        ; 89 44 2A
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_3B69                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ICONWNDPROC -- 310 instr
; Dispatcher: tabla de decisiones cmp+jcc (310 instr).
; tags: calls_gdi, dispatcher, far
; calls (intra): sub_009E, sub_01B3, sub_07AD, sub_0806, sub_0918, sub_0996 (+1 mas)
; calls (inter): GDI.SETBRUSHORG
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ICONWNDPROC  (offset 0x01DC, size 783 bytes)
;-----------------------------------------------------------------------
ICONWNDPROC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_01FE                          ; 75 03
        jmp     L_0284                          ; E9 86 00
L_01FE:
        jbe     L_0203                          ; 76 03
        jmp     L_040E                          ; E9 0B 02
L_0203:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0260                          ; 74 58
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0227                          ; 74 1A
        cmp     ax, 0x1f                        ; 3D 1F 00
        je      L_0235                          ; 74 23
L_0212:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0436                          ; E9 0F 02
L_0227:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0212                          ; EB DD
L_0235:
        cmp     word ptr [0x626], 0             ; 83 3E 26 06 00
        je      L_0253                          ; 74 17
        push    word ptr [0x626]                ; FF 36 26 06
        mov     ax, 0x202                       ; B8 02 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_329D                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 AD FD
L_0253:
        call    far _SEG1_63EC                  ; 9A EC 02 00 00 [FIXUP]
        call    far _SEG1_3273                  ; 9A E7 02 00 00 [FIXUP]
        jmp     L_0433                          ; E9 D3 01
L_0260:
        push    si                              ; 56
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    L_0806                          ; E8 95 05
        push    si                              ; 56
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0433                          ; E9 B4 01
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0284:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x52e], ax            ; A3 2E 05
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09EF                          ; E8 5A 07
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_029E                          ; 75 03
        jmp     L_0433                          ; E9 95 01
L_029E:
        test    byte ptr [di + 0x33], 8         ; F6 45 33 08
        je      L_02B9                          ; 74 15
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_02AD                          ; 75 03
        jmp     L_0433                          ; E9 86 01
L_02AD:
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_637F                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0433                          ; E9 7A 01
L_02B9:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_032C                          ; 74 6B
        cmp     ax, 0x203                       ; 3D 03 02
        je      L_02C9                          ; 74 03
        jmp     L_0433                          ; E9 6A 01
L_02C9:
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_2F79                  ; 9A 32 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02DA                          ; 75 03
        jmp     L_0433                          ; E9 59 01
L_02DA:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_009E                          ; E8 BF FD
        or      ax, ax                          ; 0B C0
        jne     L_02E6                          ; 75 03
        jmp     L_0433                          ; E9 4D 01
L_02E6:
        call    far _SEG1_3273                  ; 9A 51 03 00 00 [FIXUP]
        call    far _SEG1_63EC                  ; 9A 3E 03 00 00 [FIXUP]
        test    byte ptr [bp + 0xa], 4          ; F6 46 0A 04
        je      L_0308                          ; 74 12
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0918                          ; E8 1C 06
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_339                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_030E                          ; EB 06
L_0308:
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0996                          ; E8 88 06
L_030E:
        cmp     word ptr [0x62], di             ; 39 3E 62 00
        jne     L_0317                          ; 75 03
        jmp     L_0433                          ; E9 1C 01
L_0317:
        push    di                              ; 57
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_253F                  ; 9A 8F 00 00 00 [FIXUP]
        jmp     L_0433                          ; E9 07 01
L_032C:
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_2F79                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_033D                          ; 75 03
        jmp     L_0433                          ; E9 F6 00
L_033D:
        call    far _SEG1_63EC                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    L_01B3                          ; E8 6D FE
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07AD                          ; E8 5D 04
        call    far _SEG1_3273                  ; 9A 15 00 00 00 [FIXUP]
        call    far _SEG1_3781                  ; 9A FF FF 00 00 [FIXUP]
        mov     es, word ptr [0x316]            ; 8E 06 16 03
        mov     ax, word ptr es:[0x5aa5]        ; 26 A1 A5 5A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     es, word ptr [0x318]            ; 8E 06 18 03
        sub     ax, word ptr es:[0x5aa9]        ; 26 2B 06 A9 5A
        add     ax, word ptr [di + 0x26]        ; 03 45 26
        mov     cx, word ptr [0x46a]            ; 8B 0E 6A 04
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     es, word ptr [0x316]            ; 8E 06 16 03
        mov     ax, word ptr es:[0x5aa7]        ; 26 A1 A7 5A
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     es, word ptr [0x318]            ; 8E 06 18 03
        sub     ax, word ptr es:[0x5aab]        ; 26 2B 06 AB 5A
        add     ax, word ptr [di + 0x28]        ; 03 45 28
        mov     cx, word ptr [0x46c]            ; 8B 0E 6C 04
        sar     cx, 1                           ; D1 F9
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x3d2                       ; B8 D2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0x3c]        ; 2B 46 C4
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_3470                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [di + 4]           ; 8B 5D 04
        mov     ax, word ptr [bx + 0x16]        ; 8B 47 16
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_03D4                          ; 75 06
        mov     ax, word ptr [0x62c]            ; A1 2C 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_03D4:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0x3da]                ; FF 36 DA 03
        call    far _SEG1_3737                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_376A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x626], di            ; 89 3E 26 06
        push    si                              ; 56
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, OFFSET _entry_406           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_406           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_2840                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0433                          ; EB 25
L_040E:
        sub     ax, 0x201                       ; 2D 01 02
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_0419                          ; 76 03
        jmp     L_0212                          ; E9 F9 FD
L_0419:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x421]        ; 2E FF A7 21 04
        jg      L_0425                          ; 7F 02
        test    byte ptr [bp + si], al          ; 84 02
L_0425:
        jg      L_0429                          ; 7F 02
        jg      L_042B                          ; 7F 02
L_0429:
        adc     al, byte ptr [bp + si]          ; 12 02
L_042B:
        jg      L_042F                          ; 7F 02
        jg      L_0431                          ; 7F 02
L_042F:
        adc     al, byte ptr [bp + si]          ; 12 02
L_0431:
        jg      L_0435                          ; 7F 02
L_0433:
        sub     ax, ax                          ; 2B C0
L_0435:
        cdq                                     ; 99
L_0436:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_0443:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    di                              ; 57
        call    L_049A                          ; E8 40 00
        mov     ax, word ptr [0x468]            ; A1 68 04
        sub     ax, word ptr [0x46c]            ; 2B 06 6C 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        mov     ax, word ptr [0x466]            ; A1 66 04
        sub     ax, word ptr [0x46a]            ; 2B 06 6A 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [si + 0x1e], ax        ; 89 44 1E
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        add     ax, word ptr [0x46c]            ; 03 06 6C 04
        mov     word ptr [si + 0x24], ax        ; 89 44 24
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        add     ax, word ptr [0x46a]            ; 03 06 6A 04
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_049A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, word ptr [0x52a]            ; 8B 0E 2A 05
        idiv    cx                              ; F7 F9
        imul    word ptr [0x468]                ; F7 2E 68 04
        mov     cx, word ptr [0x54c]            ; 8B 0E 4C 05
        sub     cx, ax                          ; 2B C8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], cx        ; 26 89 4F 06
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     cx, word ptr [0x52a]            ; 8B 0E 2A 05
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        imul    word ptr [0x466]                ; F7 2E 66 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [0x468]            ; 2B 06 68 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        add     ax, word ptr [0x466]            ; 03 06 66 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
ICONWNDPROC ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04EB -- offset 0x04EB -- 74 instr
; Funcion mediana (74 instr, 1 calls).
; tags: far, medium
; callers: sub_0000, sub_0918, sub_09EF
; calls (intra): sub_058D
;----------------------------------------------------------------------

L_04EB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        cmp     word ptr [bx + 0x20], di        ; 39 7F 20
        jg      L_054B                          ; 7F 3D
        mov     ax, word ptr [0x466]            ; A1 66 04
        imul    word ptr [0x52a]                ; F7 2E 2A 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, si                          ; 3B C6
        jg      L_051F                          ; 7F 03
        mov     si, ax                          ; 8B F0
        dec     si                              ; 4E
L_051F:
        mov     ax, di                          ; 8B C7
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        sub     ax, word ptr [bx + 0x20]        ; 2B 47 20
        cdq                                     ; 99
        mov     cx, word ptr [0x468]            ; 8B 0E 68 04
        idiv    cx                              ; F7 F9
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x528]            ; A1 28 05
        sub     ax, cx                          ; 2B C1
        dec     ax                              ; 48
        imul    word ptr [0x52a]                ; F7 2E 2A 05
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        mov     bx, word ptr [0x466]            ; 8B 1E 66 04
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 4], cx           ; 89 4E FC
L_054B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        inc     word ptr [0x520]                ; FF 06 20 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        cmp     word ptr [0x520], ax            ; 39 06 20 05
        jle     L_0584                          ; 7E 12
        inc     word ptr [0x528]                ; FF 06 28 05
        mov     ax, word ptr [0x52a]            ; A1 2A 05
        add     word ptr [0x52c], ax            ; 01 06 2C 05
        push    word ptr [0x468]                ; FF 36 68 04
        call    L_058D                          ; E8 09 00
L_0584:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_058D -- offset 0x058D -- 151 instr
; Dispatcher: tabla de decisiones cmp+jcc (151 instr).
; tags: dispatcher, far
; callers: sub_04EB
; calls (intra): sub_00D7
;----------------------------------------------------------------------
L_058D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        sub     word ptr [bx + 0x28], si        ; 29 77 28
        sub     word ptr [bx + 0x20], si        ; 29 77 20
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _entry_404                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x526], 1             ; C7 06 26 05 01 00
        call    far _SEG1_3889                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x52c]            ; 8B 36 2C 05
        mov     ax, word ptr [0x52a]            ; A1 2A 05
        sub     si, ax                          ; 2B F0
        dec     word ptr [0x520]                ; FF 0E 20 05
        mov     ax, word ptr [0x520]            ; A1 20 05
        cmp     si, ax                          ; 3B F0
        jne     L_0631                          ; 75 54
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x52c], si            ; 89 36 2C 05
        sub     di, di                          ; 2B FF
        jmp     L_061E                          ; EB 33
L_05EB:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x552], 0        ; 83 BF 52 05 00
        jne     L_061D                          ; 75 27
        jmp     L_05FE                          ; EB 06
L_05F8:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        je      L_0609                          ; 74 0C
        inc     si                              ; 46
L_05FE:
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x552], 0        ; 83 BF 52 05 00
        je      L_05F8                          ; 74 EF
L_0609:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        je      L_0624                          ; 74 16
        mov     ax, si                          ; 8B C6
        inc     si                              ; 46
        mov     word ptr [0x524], ax            ; A3 24 05
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00D7                          ; E8 BA FA
L_061D:
        inc     di                              ; 47
L_061E:
        cmp     word ptr [0x52c], di            ; 39 3E 2C 05
        jg      L_05EB                          ; 7F C7
L_0624:
        dec     word ptr [0x528]                ; FF 0E 28 05
        mov     ax, word ptr [0x468]            ; A1 68 04
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    L_058D                          ; E8 5C FF
L_0631:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        push    word ptr [0x634]                ; FF 36 34 06
        call    far _SEG1_380A                  ; 9A D4 07 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    word ptr [0x634]                ; FF 36 34 06
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x468]            ; 03 06 68 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x3be]                ; FF 36 BE 03
        call    far _SEG1_665A                  ; 9A 1E 07 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_38E1                  ; 9A E8 07 00 00 [FIXUP]
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [0x526]            ; 8B 36 26 05
        mov     word ptr [0x526], 0             ; C7 06 26 05 00 00
        mov     ax, si                          ; 8B C6
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
        mov     ax, word ptr [0x528]            ; A1 28 05
        imul    word ptr [0x468]                ; F7 2E 68 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06CA -- offset 0x06CA -- 90 instr
; Funcion compleja: 90 instrucciones, 5 llamadas, 6 branches.
; tags: calls_gdi, complex
; callers: sub_07AD, sub_0806
; calls (inter): GDI.INTERSECTVISRECT, GDI.RECTVISIBLE, GDI.RESTOREVISRGN, GDI.SAVEVISRGN, GDI.SETDCORG
;----------------------------------------------------------------------
L_06CA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_049A                          ; E8 B7 FD
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        push    di                              ; 57
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.RECTVISIBLE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0702                          ; 75 03
        jmp     L_07A5                          ; E9 A3 00
L_0702:
        push    di                              ; 57
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        test    byte ptr [si + 0x2e], 0x40      ; F6 44 2E 40
        je      L_0719                          ; 74 0B
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0719                          ; 75 05
        mov     ax, word ptr [0x636]            ; A1 36 06
        jmp     L_071C                          ; EB 03
L_0719:
        mov     ax, word ptr [0x3be]            ; A1 BE 03
L_071C:
        push    ax                              ; 50
        call    far _SEG1_665A                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_07A5                          ; 75 7D
        push    di                              ; 57
        call    far GDI.SAVEVISRGN              ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [si + 0x28]            ; FF 74 28
        call    far GDI.SETDCORG                ; 9A 9B 07 00 00 [FIXUP]
        push    di                              ; 57
        push    word ptr [si + 0x1e]            ; FF 74 1E
        push    word ptr [si + 0x20]            ; FF 74 20
        push    word ptr [si + 0x22]            ; FF 74 22
        push    word ptr [si + 0x24]            ; FF 74 24
        call    far GDI.INTERSECTVISRECT        ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     ax, word ptr [bx + 0x16]        ; 8B 47 16
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0768                          ; 74 0F
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _SEG1_35C9                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_077D                          ; EB 15
L_0768:
        push    si                              ; 56
        push    di                              ; 57
        call    far _SEG1_1B6D                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_14B8                  ; 9A FF FF 00 00 [FIXUP]
L_077D:
        test    byte ptr [si + 0x2e], 0x80      ; F6 44 2E 80
        je      L_078F                          ; 74 0C
        and     byte ptr [si + 0x2e], 0x7f      ; 80 64 2E 7F
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        or      byte ptr [bx + 0x2e], 0x80      ; 80 4F 2E 80
L_078F:
        push    di                              ; 57
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        push    word ptr [bx + 0x1e]            ; FF 77 1E
        push    word ptr [bx + 0x20]            ; FF 77 20
        call    far GDI.SETDCORG                ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far GDI.RESTOREVISRGN           ; 9A FF FF 00 00 [FIXUP]
L_07A5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07AD -- offset 0x07AD -- 41 instr
; Funcion mediana (41 instr, 1 calls).
; tags: far, medium
; callers: ICONWNDPROC, sub_00F9, sub_0918
; calls (intra): sub_06CA
;----------------------------------------------------------------------
L_07AD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        sub     di, di                          ; 2B FF
        mov     word ptr [bp - 8], 0x552        ; C7 46 F8 52 05
        jmp     L_07F3                          ; EB 2B
L_07C8:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     word ptr [bx], si               ; 39 37
        jne     L_07EE                          ; 75 1F
        push    word ptr [0x634]                ; FF 36 34 06
        call    far _SEG1_380A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_06CA                          ; E8 E6 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07F9                          ; EB 0B
L_07EE:
        inc     di                              ; 47
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
L_07F3:
        cmp     word ptr [0x52c], di            ; 39 3E 2C 05
        jg      L_07C8                          ; 7F CF
L_07F9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0806 -- offset 0x0806 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: small
; callers: ICONWNDPROC
; calls (intra): sub_06CA
;----------------------------------------------------------------------
L_0806:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     di, 0x552                       ; BF 52 05
        jmp     L_082A                          ; EB 15
L_0815:
        cmp     word ptr [di], 0                ; 83 3D 00
        je      L_0826                          ; 74 0C
        push    word ptr [di]                   ; FF 35
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_06CA                          ; E8 A4 FE
L_0826:
        inc     si                              ; 46
        add     di, 2                           ; 83 C7 02
L_082A:
        cmp     word ptr [0x52c], si            ; 39 36 2C 05
        jg      L_0815                          ; 7F E5
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0838 -- offset 0x0838 -- 98 instr
; Dispatcher: tabla de decisiones cmp+jcc (98 instr).
; tags: calls_gdi, dispatcher, far
; calls (intra): sub_00F9
; calls (inter): GDI.DELETEOBJECT
;----------------------------------------------------------------------
L_0838:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 0xe], 1          ; 83 7C 0E 01
        jbe     L_085D                          ; 76 0D
        push    word ptr [si + 0xe]             ; FF 74 0E
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xe], 0          ; C7 44 0E 00 00
L_085D:
        push    si                              ; 56
        push    word ptr [0x5d2]                ; FF 36 D2 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_1164                  ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [si + 0x38]        ; 8A 44 38
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        mov     byte ptr [si + 0x38], 0xff      ; C6 44 38 FF
        or      byte ptr [si + 0x33], 0x20      ; 80 4C 33 20
        and     byte ptr [si + 0x2e], 0x7f      ; 80 64 2E 7F
        mov     al, byte ptr [si + 0x39]        ; 8A 44 39
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_08A4                          ; 7D 18
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x552], 0        ; 83 BF 52 05 00
        jne     L_08A4                          ; 75 0C
L_0898:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_00F9                          ; E8 57 F8
        jmp     L_08E7                          ; EB 43
L_08A4:
        mov     al, 0xe                         ; B0 0E
        imul    byte ptr [bp - 8]               ; F6 6E F8
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [0x4dc]            ; 03 1E DC 04
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [0x466]            ; 03 06 66 04
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x466]            ; 8B 0E 66 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     di, di                          ; 2B FF
L_08C2:
        cmp     word ptr [0x52c], di            ; 39 3E 2C 05
        jle     L_08E7                          ; 7E 1F
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_08D5                          ; 75 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_08D5:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x552], 0        ; 83 BF 52 05 00
        je      L_0898                          ; 74 B7
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     di                              ; 47
        jmp     L_08C2                          ; EB DB
L_08E7:
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
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0838                          ; E8 2C FF
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0918 -- offset 0x0918 -- 63 instr
; Funcion mediana (63 instr, 2 calls).
; tags: far, medium
; callers: ICONWNDPROC, sub_0996
; calls (intra): sub_04EB, sub_07AD
;----------------------------------------------------------------------
L_0918:
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [0x5b2], si            ; 39 36 B2 05
        jne     L_0935                          ; 75 05
        call    far _SEG1_63EC                  ; 9A 54 02 00 00 [FIXUP]
L_0935:
        push    si                              ; 56
        push    word ptr [0x5d2]                ; FF 36 D2 05
        call    far _SEG1_11AD                  ; 9A FF FF 00 00 [FIXUP]
        and     byte ptr [si + 0x33], 0xdf      ; 80 64 33 DF
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07AD                          ; E8 60 FE
        push    word ptr [si + 0x1e]            ; FF 74 1E
        push    word ptr [si + 0x20]            ; FF 74 20
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04EB                          ; E8 93 FB
        mov     di, ax                          ; 8B F8
        mov     byte ptr [si + 0x39], al        ; 88 44 39
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x552], 0        ; C7 87 52 05 00 00
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x552]       ; 8B 87 52 05
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0996 -- offset 0x0996 -- 45 instr
; Funcion mediana (45 instr, 2 calls).
; tags: far, medium
; callers: ICONWNDPROC
; calls (intra): sub_01B3, sub_0918
;----------------------------------------------------------------------
L_0996:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    L_01B3                          ; E8 07 F8
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0918                          ; E8 66 FF
        mov     ax, word ptr [0x4dc]            ; A1 DC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     di, di                          ; 2B FF
        jmp     L_09CB                          ; EB 0F
L_09BC:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 0xe          ; 83 46 FC 0E
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jg      L_09D4                          ; 7F 09
L_09CB:
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        cmp     ax, word ptr [0x51c]            ; 3B 06 1C 05
        jl      L_09BC                          ; 7C E8
L_09D4:
        push    si                              ; 56
        lea     ax, [di - 1]                    ; 8D 45 FF
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_0D32                  ; 9A FF FF 00 00 [FIXUP]
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
; sub_09EF -- offset 0x09EF -- 65 instr
; Dispatcher: tabla de decisiones cmp+jcc (65 instr).
; tags: dispatcher, far
; callers: ICONWNDPROC
; calls (intra): sub_04EB, sub_0A8D
;----------------------------------------------------------------------
L_09EF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        mov     si, di                          ; 8B F7
        cmp     word ptr [0x4a8], si            ; 39 36 A8 04
        jne     L_0A7E                          ; 75 76
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        mov     ax, word ptr [bx + 0x28]        ; 8B 47 28
        add     ax, word ptr [bp + 8]           ; 03 46 08
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04EB                          ; E8 D0 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0A38                          ; 74 15
        mov     bx, ax                          ; 8B D8
        mov     word ptr [0x524], bx            ; 89 1E 24 05
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bx + 0x552]       ; 8B B7 52 05
        cmp     byte ptr [0x92], 0              ; 80 3E 92 00 00
        jge     L_0A38                          ; 7D 02
        mov     di, si                          ; 8B FE
L_0A38:
        cmp     word ptr [0x5b2], di            ; 39 3E B2 05
        je      L_0A7E                          ; 74 40
        cmp     word ptr [0x658], 0             ; 83 3E 58 06 00
        je      L_0A4F                          ; 74 0A
        call    far _SEG1_63EC                  ; 9A 31 09 00 00 [FIXUP]
        call    far _SEG1_3273                  ; 9A 59 02 00 00 [FIXUP]
L_0A4F:
        or      di, di                          ; 0B FF
        je      L_0A7E                          ; 74 2B
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A8D                          ; E8 34 00
        push    word ptr [0x658]                ; FF 36 58 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x658]                ; FF 36 58 06
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x634]            ; A1 34 06
        cmp     word ptr [0x6a], ax             ; 39 06 6A 00
        je      L_0A7E                          ; 74 06
        push    ax                              ; 50
        call    far _SEG1_325A                  ; 9A FF FF 00 00 [FIXUP]
L_0A7E:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A8D -- offset 0x0A8D -- 98 instr
; Funcion compleja: 98 instrucciones, 1 llamadas, 3 branches.
; tags: complex, far
; callers: sub_09EF
; calls (intra): sub_0BEC
;----------------------------------------------------------------------
L_0A8D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x50                        ; 83 EC 50
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0BEC                          ; E8 45 01
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        push    word ptr [0x634]                ; FF 36 34 06
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        push    ax                              ; 50
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        call    far _SEG1_52BE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     word ptr [bp - 0x44], dx        ; 89 56 BC
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        call    far _SEG1_38E1                  ; 9A 7E 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
        sub     cx, ax                          ; 2B C8
        mov     ax, word ptr [0x466]            ; A1 66 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0x50], cx        ; 89 4E B0
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        mov     ax, cx                          ; 8B C1
        cmp     word ptr [bx + 0x1e], ax        ; 39 47 1E
        jle     L_0B0C                          ; 7E 06
        mov     ax, word ptr [bx + 0x1e]        ; 8B 47 1E
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
L_0B0C:
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        add     ax, word ptr [bp - 0x48]        ; 03 46 B8
        mov     bx, word ptr [0x634]            ; 8B 1E 34 06
        cmp     ax, word ptr [bx + 0x22]        ; 3B 47 22
        jle     L_0B24                          ; 7E 09
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        sub     ax, word ptr [bp - 0x48]        ; 2B 46 B8
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
L_0B24:
        mov     ax, 0x8004                      ; B8 04 80
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x8888                      ; BA 88 88
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x50]            ; FF 76 B0
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     ax, word ptr [bp - 0x4c]        ; 2B 46 B4
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        push    word ptr [bp - 0x48]            ; FF 76 B8
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x3a0]                ; FF 36 A0 03
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_0232                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x658], ax            ; A3 58 06
        or      ax, ax                          ; 0B C0
        je      L_0B65                          ; 74 04
        mov     word ptr [0x5b2], si            ; 89 36 B2 05
L_0B65:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ICONNAMEWNDPROC -- 83 instr
; Funcion compleja: 83 instrucciones, 3 llamadas, 2 branches.
; tags: calls_kernel, complex, far
; calls (intra): sub_0BEC
; calls (inter): KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ICONNAMEWNDPROC  (offset 0x0B71, size 202 bytes)
;-----------------------------------------------------------------------
ICONNAMEWNDPROC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x66                        ; 83 EC 66
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0BCD                          ; 75 47
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A 67 02 00 00 [FIXUP]
        push    word ptr [0x5b2]                ; FF 36 B2 05
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0BEC                          ; E8 4D 00
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        push    word ptr [bp - 0x66]            ; FF 76 9A
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    far _SEG1_52E5                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A 78 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        jmp     L_0BE1                          ; EB 14
L_0BCD:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A 20 02 00 00 [FIXUP]
L_0BE1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_0BEC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x3f                        ; B8 3F 00
        push    ax                              ; 50
        call    far _SEG1_61DC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0C33                          ; 75 28
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     al, byte ptr [0x60a]            ; A0 0A 06
        sub     ah, ah                          ; 2A E4
        add     ax, word ptr [0x4aa]            ; 03 06 AA 04
        mov     dx, word ptr [0x4ac]            ; 8B 16 AC 04
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0C33:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06
ICONNAMEWNDPROC ENDP


USER_TEXT ENDS

        END
