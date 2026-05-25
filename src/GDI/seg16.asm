; AUTO-GENERATED from original GDI segment 16
; segment_size=3094 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 38 instr
; Dispatcher: tabla de decisiones cmp+jcc (38 instr).
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
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [si + 0x2c]        ; 8B 7C 2C
        cmp     word ptr [di + 8], 0x1e         ; 83 7D 08 1E
        jne     L_0040                          ; 75 25
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [di + 0xc], ax         ; 39 45 0C
        jg      L_0040                          ; 7F 1D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [di + 0xe], ax         ; 39 45 0E
        jg      L_0040                          ; 7F 15
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [di + 0x10], ax        ; 39 45 10
        jle     L_0040                          ; 7E 0D
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [di + 0x12], ax        ; 39 45 12
        jle     L_0040                          ; 7E 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0043                          ; EB 03
L_0040:
        mov     ax, 1                           ; B8 01 00
L_0043:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0050 -- offset 0x0050 -- 49 instr
; Funcion mediana (49 instr, 0 calls).
; tags: far, medium
; callers: RECTANGLE
;----------------------------------------------------------------------
L_0050:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0x14]        ; 8B 5F 14
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     dx, word ptr [bx + 0xc]         ; 8B 57 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_0894                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0093                          ; 75 04
L_008F:
        sub     ax, ax                          ; 2B C0
        jmp     L_00BA                          ; EB 27
L_0093:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _SEG1_12B6                  ; 9A B6 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_00AF                          ; 75 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _SEG1_1212                  ; 9A C4 03 00 00 [FIXUP]
        jmp     L_008F                          ; EB E0
L_00AF:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
L_00BA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00C5 -- offset 0x00C5 -- 40 instr
; Funcion mediana (40 instr, 0 calls).
; tags: far, medium
; callers: RECTANGLE
;----------------------------------------------------------------------
L_00C5:
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
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [si + 0x2e]        ; 8B 44 2E
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x1c]                     ; FF 5F 1C
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; RECTANGLE -- 528 instr
; Dibuja rectangulo con pen y brush actuales.
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0050, sub_00C5, sub_0806, sub_097A
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; RECTANGLE  (offset 0x010D, size 1376 bytes)
;-----------------------------------------------------------------------
RECTANGLE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x40                        ; 83 EC 40
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        or      si, si                          ; 0B F6
        jne     L_0128                          ; 75 05
L_0123:
        sub     ax, ax                          ; 2B C0
        jmp     L_0660                          ; E9 38 05
L_0128:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_013E                          ; 7C 0C
        mov     ax, 0x41b                       ; B8 1B 04
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0660                          ; E9 22 05
L_013E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        je      L_014E                          ; 74 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0154                          ; 75 06
L_014E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0660                          ; E9 0C 05
L_0154:
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 8], 0x42         ; C7 46 F8 42 00
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        je      L_0123                          ; 74 9E
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        add     ax, 0x1a                        ; 05 1A 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     bx, si                          ; 8B DE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 8], 0x20         ; F6 47 08 20
        je      L_01AD                          ; 74 06
        push    si                              ; 56
        call    far _SEG1_1A12                  ; 9A FF FF 00 00 [FIXUP]
L_01AD:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 6], ax           ; 89 47 06
        push    si                              ; 56
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jge     L_01E5                          ; 7D 03
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
L_01E5:
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jl      L_01F6                          ; 7C 03
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
L_01F6:
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jg      L_0209                          ; 7F 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_020F                          ; EB 06
L_0209:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
L_020F:
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_0222                          ; 7E 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_0228                          ; EB 06
L_0222:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
L_0228:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     bx, word ptr [bx + 0x12]        ; 8B 5F 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0264                          ; 75 0D
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        jmp     L_029F                          ; EB 3B
L_0264:
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        cmp     word ptr [bx + 0x80], 1         ; 83 BF 80 00 01
        jle     L_0274                          ; 7E 06
        mov     ax, word ptr [bx + 0x80]        ; 8B 87 80 00
        jmp     L_0277                          ; EB 03
L_0274:
        mov     ax, 1                           ; B8 01 00
L_0277:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0284                          ; 7D 05
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
L_0284:
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        cmp     word ptr [bx + 0x82], 1         ; 83 BF 82 00 01
        jle     L_0294                          ; 7E 06
        mov     ax, word ptr [bx + 0x82]        ; 8B 87 82 00
        jmp     L_0297                          ; EB 03
L_0294:
        mov     ax, 1                           ; B8 01 00
L_0297:
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
L_029F:
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     bx, word ptr [bx + 0x14]        ; 8B 5F 14
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 1                           ; 3D 01 00
        jne     L_02BE                          ; 75 07
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_02E0                          ; EB 22
L_02BE:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jne     L_02E0                          ; 75 14
        cmp     word ptr [bp - 6], 2            ; 83 7E FA 02
        jne     L_02E0                          ; 75 0E
        mov     word ptr [bp - 0x3c], 1         ; C7 46 C4 01 00
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_02E0:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        sar     ax, 1                           ; D1 F8
        sub     word ptr [bp + 0xc], ax         ; 29 46 0C
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        dec     ax                              ; 48
        sar     ax, 1                           ; D1 F8
        add     word ptr [bp + 8], ax           ; 01 46 08
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sar     ax, 1                           ; D1 F8
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        dec     ax                              ; 48
        sar     ax, 1                           ; D1 F8
        add     word ptr [bp + 6], ax           ; 01 46 06
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 EA FC
        or      word ptr [bp - 0x34], ax        ; 09 46 CC
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0328                          ; 74 04
        or      byte ptr [bp - 0xe], 0x80       ; 80 4E F2 80
L_0328:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_0348                          ; 74 1A
        cmp     word ptr [bp - 0x20], 1         ; 83 7E E0 01
        jle     L_0338                          ; 7E 04
        or      byte ptr [bp - 0xe], 0x10       ; 80 4E F2 10
L_0338:
        cmp     word ptr [bp - 0x26], 5         ; 83 7E DA 05
        je      L_0348                          ; 74 0A
        cmp     word ptr [bp - 0x26], 0         ; 83 7E DA 00
        je      L_0348                          ; 74 04
        or      byte ptr [bp - 0xe], 0x20       ; 80 4E F2 20
L_0348:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        and     ax, word ptr [bp - 0xe]         ; 23 46 F2
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jne     L_0393                          ; 75 3D
        test    byte ptr [bp - 0x34], 2         ; F6 46 CC 02
        je      L_0393                          ; 74 37
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 6], ax           ; 89 47 06
        call    far _SEG1_1662                  ; 9A CF 03 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00C5                          ; E8 35 FD
        jmp     L_063E                          ; E9 AB 02
L_0393:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_03CE                          ; 74 35
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0050                          ; E8 B1 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_03AE                          ; 75 08
L_03A6:
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        jmp     L_0648                          ; E9 9A 02
L_03AE:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far _entry_401                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_03CA                          ; 75 0A
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03A6                          ; EB DC
L_03CA:
        or      byte ptr [bp - 0x34], 0x40      ; 80 4E CC 40
L_03CE:
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_03DC                          ; 75 03
        jmp     L_04CA                          ; E9 EE 00
L_03DC:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        test    byte ptr [bx + 0x26], 1         ; F6 47 26 01
        je      L_0447                          ; 74 62
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        cmp     word ptr [bx + 0x3e], 1         ; 83 7F 3E 01
        je      L_0447                          ; 74 59
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_0447                          ; 75 53
        test    byte ptr [bp - 0x34], 2         ; F6 46 CC 02
        je      L_0447                          ; 74 4D
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 0x2c]        ; 03 46 D4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_0429                          ; 7C 03
        jmp     L_04CA                          ; E9 A1 00
L_0429:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_0434                          ; 7C 03
        jmp     L_04CA                          ; E9 96 00
L_0434:
        push    bx                              ; 53
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0806                          ; E8 C2 03
        jmp     L_04CA                          ; E9 83 00
L_0447:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bx]               ; 8B 07
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_0498                          ; 7E 36
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        add     di, word ptr [bp - 0x2c]        ; 03 7E D4
        jmp     L_048E                          ; EB 24
L_046A:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_097A                          ; E8 ED 04
        inc     di                              ; 47
L_048E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        cmp     ax, di                          ; 3B C7
        jg      L_046A                          ; 7F D2
L_0498:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_04CA                          ; 74 2C
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _SEG1_12B6                  ; 9A BE 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_12B6                  ; 9A 9A 00 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _SEG1_1212                  ; 9A A9 00 00 00 [FIXUP]
L_04CA:
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jne     L_04D3                          ; 75 03
        jmp     L_063E                          ; E9 6B 01
L_04D3:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_052A                          ; 74 51
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        dec     ax                              ; 48
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        push    si                              ; 56
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_063E                          ; E9 14 01
L_052A:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx], ax               ; 89 07
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0x3e], ax        ; 39 46 C2
        jg      L_0545                          ; 7F 05
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        jmp     L_0548                          ; EB 03
L_0545:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_0548:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0x40], ax        ; 39 46 C0
        jle     L_0564                          ; 7E 05
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        jmp     L_0567                          ; EB 03
L_0564:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_0567:
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        add     di, word ptr [bp - 0x2c]        ; 03 7E D4
        jmp     L_059D                          ; EB 22
L_057B:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_097A                          ; E8 DE 03
        inc     di                              ; 47
L_059D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        cmp     ax, di                          ; 3B C7
        jg      L_057B                          ; 7F D4
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 0x2c]        ; 03 46 D4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        cmp     word ptr [bp - 0x40], ax        ; 39 46 C0
        jg      L_05CD                          ; 7F 05
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        jmp     L_05D0                          ; EB 03
L_05CD:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
L_05D0:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        jmp     L_05FA                          ; EB 22
L_05D8:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_097A                          ; E8 81 03
        inc     di                              ; 47
L_05FA:
        cmp     word ptr [bp - 0x2a], di        ; 39 7E D6
        jg      L_05D8                          ; 7F D9
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        cmp     word ptr [bp - 0x3e], ax        ; 39 46 C2
        jl      L_0613                          ; 7C 03
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
L_0613:
        mov     di, ax                          ; 8B F8
        jmp     L_0639                          ; EB 22
L_0617:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_097A                          ; E8 42 03
        inc     di                              ; 47
L_0639:
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        jg      L_0617                          ; 7F D9
L_063E:
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], 1         ; C7 46 D0 01 00
L_0648:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
L_0660:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
RECTANGLE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_066D -- offset 0x066D -- 144 instr
; Dispatcher: tabla de decisiones cmp+jcc (144 instr).
; tags: dispatcher
; callers: sub_097A
;----------------------------------------------------------------------

L_066D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_068A                          ; 75 05
L_0685:
        sub     ax, ax                          ; 2B C0
        jmp     L_07FE                          ; E9 74 01
L_068A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [si + 0xe], ax         ; 39 44 0E
        jg      L_0685                          ; 7F F3
        cmp     word ptr [si + 0x12], ax        ; 39 44 12
        jle     L_0685                          ; 7E EE
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        lea     ax, [si + 0x14]                 ; 8D 44 14
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_06A2:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     word ptr [bp - 2]               ; FF 4E FE
        or      ax, ax                          ; 0B C0
        je      L_06D1                          ; 74 25
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bx], ax               ; 39 07
        jg      L_0685                          ; 7F BF
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        cmp     word ptr [bx], ax               ; 39 07
        jle     L_073A                          ; 7E 69
L_06D1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0703:
        or      di, di                          ; 0B FF
        jne     L_070A                          ; 75 03
        jmp     L_07FB                          ; E9 F1 00
L_070A:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_0713                          ; 75 03
        jmp     L_07FB                          ; E9 E8 00
L_0713:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jg      L_0745                          ; 7F 2A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     di, 2                           ; 83 EF 02
        jmp     L_0703                          ; EB C9
L_073A:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 4], ax           ; 01 46 FC
        jmp     L_06A2                          ; E9 5D FF
L_0745:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jg      L_076B                          ; 7F 1E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        sub     word ptr [bp - 0x12], 2         ; 83 6E EE 02
        jmp     L_0703                          ; EB 98
L_076B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_0778                          ; 7E 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_077B                          ; EB 03
L_0778:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_077B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jg      L_0792                          ; 7F 05
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_0795                          ; EB 03
L_0792:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_0795:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr [bp + 6], 2            ; 83 46 06 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        add     word ptr [bp - 0xc], 2          ; 83 46 F4 02
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jg      L_07CE                          ; 7F 1D
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        sub     di, 2                           ; 83 EF 02
L_07CE:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_07F2                          ; 7C 1C
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        sub     word ptr [bp - 0x12], 2         ; 83 6E EE 02
L_07F2:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0703                          ; E9 08 FF
L_07FB:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_07FE:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0806 -- offset 0x0806 -- 86 instr
; Funcion compleja: 86 instrucciones, 0 llamadas, 0 branches.
; tags: complex, far
; callers: RECTANGLE
;----------------------------------------------------------------------
L_0806:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x3c]        ; 8B 5C 3C
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x24c]           ; FF B7 4C 02
        push    word ptr [bx + 0x24a]           ; FF B7 4A 02
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx]                            ; FF 1F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
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
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        call    far _SEG1_3024                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x24c]           ; FF B7 4C 02
        push    word ptr [bx + 0x24a]           ; FF B7 4A 02
        call    far _SEG1_2308                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08AD -- offset 0x08AD -- 83 instr
; Dispatcher: tabla de decisiones cmp+jcc (83 instr).
; tags: dispatcher
; callers: sub_097A
;----------------------------------------------------------------------
L_08AD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     cx, 2                           ; B9 02 00
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        sub     di, di                          ; 2B FF
        jmp     L_0966                          ; E9 9A 00
L_08CC:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        mov     cx, word ptr es:[bx]            ; 26 8B 0F
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        cmp     ax, cx                          ; 3B C1
        jle     L_0965                          ; 7E 72
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0907                          ; 75 0E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     ax, cx                          ; 8B C1
        jmp     L_094E                          ; EB 47
L_0907:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, 2                           ; 2D 02 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0965                          ; 7D 37
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_093E                          ; 7C 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_0965                          ; EB 27
L_093E:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     es, word ptr [bp + 8]           ; 8E 46 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_094E:
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_0965:
        inc     di                              ; 47
L_0966:
        cmp     di, si                          ; 3B FE
        jge     L_096D                          ; 7D 03
        jmp     L_08CC                          ; E9 5F FF
L_096D:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_097A -- offset 0x097A -- 150 instr
; Funcion compleja: 150 instrucciones, 3 llamadas, 10 branches.
; tags: complex, far
; callers: RECTANGLE
; calls (intra): sub_066D, sub_08AD, sub_0AF5
;----------------------------------------------------------------------
L_097A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x18]        ; 8B 76 18
        mov     di, word ptr [bp + 0x10]        ; 8B 7E 10
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    di                              ; 57
        call    L_08AD                          ; E8 14 FF
        mov     di, ax                          ; 8B F8
        test    word ptr [bp + 0x16], 0x100     ; F7 46 16 00 01
        je      L_09B8                          ; 74 16
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    di                              ; 57
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0AF5                          ; E8 40 01
        jmp     L_0AE8                          ; E9 30 01
L_09B8:
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], ds        ; 8C 5E F0
        test    byte ptr [bp + 0x16], 4         ; F6 46 16 04
        je      L_09D7                          ; 74 10
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr es:[bx + 2], 2         ; 26 C7 47 02 02 00
L_09D7:
        test    byte ptr [bp + 0x16], 1         ; F6 46 16 01
        je      L_0A13                          ; 74 36
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [si + 0x2c]            ; FF 74 2C
        push    di                              ; 57
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_066D                          ; E8 5E FC
        mov     di, ax                          ; 8B F8
        jmp     L_0A31                          ; EB 1E
L_0A13:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        sub     ax, 4                           ; 2D 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_0A31:
        cmp     di, 1                           ; 83 FF 01
        jg      L_0A39                          ; 7F 03
        jmp     L_0AD8                          ; E9 9F 00
L_0A39:
        test    byte ptr [bp + 0x16], 0x40      ; F6 46 16 40
        je      L_0A8B                          ; 74 4C
        test    byte ptr [bp + 0x16], 8         ; F6 46 16 08
        je      L_0A8B                          ; 74 46
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_12B6                  ; 9A 85 0A 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [di + 2]                    ; 8D 45 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        test    byte ptr [bp + 0x16], 0x80      ; F6 46 16 80
        je      L_0A75                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0A78                          ; EB 03
L_0A75:
        mov     ax, 1                           ; B8 01 00
L_0A78:
        push    ax                              ; 50
        call    far _entry_404                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_12B6                  ; 9A A3 04 00 00 [FIXUP]
        jmp     L_0AD8                          ; EB 4D
L_0A8B:
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [di + 2]                    ; 8D 45 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        test    byte ptr [bp + 0x16], 4         ; F6 46 16 04
        je      L_0AB1                          ; 74 07
        mov     ax, word ptr [si + 0x2e]        ; 8B 44 2E
        mov     dx, ds                          ; 8C DA
        jmp     L_0AB4                          ; EB 03
L_0AB1:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
L_0AB4:
        push    dx                              ; 52
        push    ax                              ; 50
        test    byte ptr [bp + 0x16], 4         ; F6 46 16 04
        je      L_0AC1                          ; 74 05
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0AC6                          ; EB 05
L_0AC1:
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        mov     dx, ds                          ; 8C DA
L_0AC6:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x1c]                     ; FF 5F 1C
L_0AD8:
        test    byte ptr [bp + 0x16], 4         ; F6 46 16 04
        je      L_0AE8                          ; 74 0A
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
L_0AE8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x14                            ; CA 14 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0AF5 -- offset 0x0AF5 -- 53 instr
; Funcion mediana (53 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_097A
; calls (intra): sub_0B82
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0AF5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0B1D                          ; 75 13
        call    far _SEG1_3C63                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        or      ax, ax                          ; 0B C0
        jne     L_0B1D                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0B7B                          ; EB 5E
L_0B1D:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0B70                          ; EB 4C
L_0B24:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        push    si                              ; 56
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B82                          ; E8 2F 00
        or      ax, ax                          ; 0B C0
        jne     L_0B6C                          ; 75 15
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A 50 06 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0B78                          ; EB 0C
L_0B6C:
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
L_0B70:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0B24                          ; 7C AC
L_0B78:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_0B7B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B82 -- offset 0x0B82 -- 59 instr
; Funcion mediana (59 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_0AF5
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0B82:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jne     L_0B9E                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0C0C                          ; EB 6E
L_0B9E:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_0C0C                          ; 7E 66
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0C0C                          ; 7E 5E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_3C7F                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0C09                          ; 74 45
        call    far _SEG1_3C63                  ; 9A 0B 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0C01                          ; 74 31
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_3A8C                  ; 9A F2 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BF9                          ; 74 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _SEG1_3A8C                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0BF9:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALFREE            ; 9A 05 0C 00 00 [FIXUP]
L_0C01:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A 59 0B 00 00 [FIXUP]
L_0C09:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0C0C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

GDI_TEXT ENDS

        END
