; AUTO-GENERATED from original GDI segment 30
; segment_size=918 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 132 instr
; Dispatcher: tabla de decisiones cmp+jcc (132 instr).
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        sub     di, di                          ; 2B FF
        cmp     word ptr [bp + 6], 4            ; 83 7E 06 04
        jne     L_004F                          ; 75 30
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 D7 FF
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0032                          ; 75 03
        jmp     L_0125                          ; E9 F3 00
L_0032:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
L_0035:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 C5 FF
        mov     word ptr [di], ax               ; 89 05
        or      ax, ax                          ; 0B C0
        je      L_0044                          ; 74 03
        jmp     L_0125                          ; E9 E1 00
L_0044:
        push    di                              ; 57
        call    far KERNEL.LOCALFREE            ; 9A 86 03 00 00 [FIXUP]
        sub     di, di                          ; 2B FF
        jmp     L_0125                          ; E9 D6 00
L_004F:
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        jne     L_006E                          ; 75 19
        push    si                              ; 56
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 A1 FF
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0068                          ; 75 03
        jmp     L_0125                          ; E9 BD 00
L_0068:
        push    si                              ; 56
        mov     ax, 3                           ; B8 03 00
        jmp     L_0035                          ; EB C7
L_006E:
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [si + 8]               ; F7 6C 08
        cdq                                     ; 99
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [si + 0xa]             ; F7 6C 0A
        cdq                                     ; 99
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00B5                          ; 74 23
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jle     L_00A3                          ; 7E 0B
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cdq                                     ; 99
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        idiv    cx                              ; F7 F9
        jmp     L_00A5                          ; EB 02
L_00A3:
        sub     ax, ax                          ; 2B C0
L_00A5:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cdq                                     ; 99
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
L_00B5:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        add     ax, 0x12                        ; 05 12 00
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_0125                          ; 74 5C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [di + 8], ax           ; 89 45 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_00E0                          ; 75 05
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        jmp     L_00E2                          ; EB 02
L_00E0:
        sub     ax, ax                          ; 2B C0
L_00E2:
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
        mov     word ptr [di + 2], 0xfffe       ; C7 45 02 FE FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [di + 0xe], ax         ; 89 45 0E
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0125                          ; 74 2F
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     ax                              ; 48
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x118]       ; 8B 87 18 01
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_011D                          ; EB 0D
L_0110:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + di + 0x10], 0xffff ; C7 41 10 FF FF
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_011D:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0110                          ; 7C EB
L_0125:
        mov     ax, di                          ; 8B C7
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
; sub_0134 -- offset 0x0134 -- 156 instr
; Dispatcher: tabla de decisiones cmp+jcc (156 instr).
; tags: dispatcher, far
; calls (intra): sub_02BA
;----------------------------------------------------------------------
L_0134:
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
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [di + 0xe], 0          ; 83 7D 0E 00
        jne     L_01B6                          ; 75 3B
        cdq                                     ; 99
        mov     cx, word ptr [di + 0xa]         ; 8B 4D 0A
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_0188                          ; 74 03
        jmp     L_02AD                          ; E9 25 01
L_0188:
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [si + 0x2e]        ; 8B 44 2E
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x1c]                     ; FF 5F 1C
        jmp     L_02AD                          ; E9 F7 00
L_01B6:
        dec     word ptr [bp + 8]               ; FF 4E 08
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        je      L_01E5                          ; 74 21
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_01DD                          ; EB 12
L_01CB:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    L_02BA                          ; E8 E0 00
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_01DD:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_01CB                          ; 7C E6
L_01E5:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [di + 2], ax           ; 89 45 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        dec     word ptr [bp + 8]               ; FF 4E 08
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0289                          ; EB 7A
L_020F:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [di + 8]               ; F7 6D 08
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [di + 6]               ; F7 6D 06
        add     cx, ax                          ; 03 C8
        sub     cx, word ptr [di + 0xc]         ; 2B 4D 0C
        mov     word ptr [bp - 0x12], cx        ; 89 4E EE
        jmp     L_024A                          ; EB 23
L_0227:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_0252                          ; 7E 25
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bp + 0xa], 2          ; 83 46 0A 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        dec     word ptr [bp + 8]               ; FF 4E 08
L_024A:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_0227                          ; 7D D5
L_0252:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jl      L_027B                          ; 7C 21
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_027B                          ; 7D 19
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        lea     ax, [bx + di + 0x10]            ; 8D 41 10
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx], -1               ; 83 3F FF
        jne     L_0286                          ; 75 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_0286                          ; EB 0B
L_027B:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_02BA                          ; E8 34 00
L_0286:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0289:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_0294                          ; 7D 03
        jmp     L_020F                          ; E9 7B FF
L_0294:
        cmp     word ptr [di], 0                ; 83 3D 00
        je      L_02AD                          ; 74 14
        push    si                              ; 56
        push    word ptr [di]                   ; FF 35
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0134                          ; E8 87 FE
L_02AD:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02BA -- offset 0x02BA -- 61 instr
; Funcion mediana (61 instr, 0 calls).
; tags: medium
; callers: sub_0134, sub_0347
;----------------------------------------------------------------------
L_02BA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + di + 0x10]   ; 8B 41 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jl      L_033F                          ; 7C 68
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [di + 8]               ; F7 6D 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [di + 6]               ; F7 6D 06
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [di + 6]               ; F7 6D 06
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x2e]        ; 8B 44 2E
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x1c]                     ; FF 5F 1C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + di + 0x10], 0xffff ; C7 41 10 FF FF
L_033F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0347 -- offset 0x0347 -- 43 instr
; Funcion mediana (43 instr, 2 calls).
; tags: calls_kernel, medium
; calls (intra): sub_02BA
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0347:
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        sub     di, di                          ; 2B FF
        jmp     L_036D                          ; EB 10
L_035D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    L_02BA                          ; E8 4E FF
        inc     di                              ; 47
L_036D:
        cmp     word ptr [si + 4], di           ; 39 7C 04
        jg      L_035D                          ; 7F EB
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0384                          ; 74 0D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0347                          ; E8 C3 FF
L_0384:
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

GDI_TEXT ENDS

        END
