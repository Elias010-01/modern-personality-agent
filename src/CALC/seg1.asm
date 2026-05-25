; AUTO-GENERATED from original CALC segment 1
; segment_size=19583 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALC_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 171 instr
; Dispatcher: tabla de decisiones cmp+jcc (171 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_13C9
; calls (inter): GDI.PATBLT, GDI.TEXTOUT, KERNEL.LSTRLEN, USER.ENDDIALOG, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     byte ptr [0x604], 0x2d          ; 80 3E 04 06 2D
        jne     L_0020                          ; 75 05
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_0023                          ; EB 03
L_0020:
        mov     ax, 9                           ; B8 09 00
L_0023:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_13C9                          ; E8 97 13
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        je      L_003C                          ; 74 03
        inc     word ptr [bp - 8]               ; FF 46 F8
L_003C:
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 55 01 00 00 [FIXUP]
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        je      L_00B9                          ; 74 34
        push    si                              ; 56
        mov     ax, 0x11                        ; B8 11 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        imul    word ptr [0xb0c]                ; F7 2E 0C 0B
        sub     cx, ax                          ; 2B C8
        add     cx, word ptr [0xa86]            ; 03 0E 86 0A
        push    cx                              ; 51
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xb0c]                ; FF 36 0C 0B
        jmp     L_0105                          ; EB 4C
L_00B9:
        push    si                              ; 56
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_00C7                          ; 7D 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_00CA                          ; EB 03
L_00C7:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_00CA:
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x12                        ; B8 12 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_0101                          ; 7D 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0104                          ; EB 03
L_0101:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0104:
        push    ax                              ; 50
L_0105:
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_0159                          ; 74 48
        push    si                              ; 56
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     cx, ax                          ; 8B C8
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_0159:
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        push    si                              ; 56
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_018A                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_0185:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0193                          ; EB 09
L_018A:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_0185                          ; 74 F4
        sub     ax, ax                          ; 2B C0
L_0193:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_019E -- offset 0x019E -- 100 instr
; Dispatcher: tabla de decisiones cmp+jcc (100 instr).
; tags: dispatcher
; callers: sub_0D20
; calls (intra): sub_029F
;----------------------------------------------------------------------
L_019E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        sub     di, di                          ; 2B FF
        mov     si, 3                           ; BE 03 00
L_01B0:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0215                          ; 75 5F
        cmp     di, 6                           ; 83 FF 06
        jge     L_0215                          ; 7D 5A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        imul    di                              ; F7 EF
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     bx, 0xa                         ; BB 0A 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jle     L_0212                          ; 7E 18
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jge     L_020D                          ; 7D 07
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_01B0                          ; EB A3
L_020D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0299                          ; E9 87 00
L_0212:
        inc     di                              ; 47
        jmp     L_01B0                          ; EB 9B
L_0215:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_020D                          ; 74 F2
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0220:
        or      si, si                          ; 0B F6
        jl      L_027A                          ; 7C 56
        mov     ax, word ptr [0x876]            ; A1 76 08
        imul    si                              ; F7 EE
        shl     ax, 1                           ; D1 E0
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        sub     ax, cx                          ; 2B C1
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x17                        ; B8 17 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     bx, 0x64                        ; BB 64 00
        idiv    bx                              ; F7 FB
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     ax, cx                          ; 8B C1
        mov     cx, word ptr [0x876]            ; 8B 0E 76 08
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     ax, word ptr [bx + 2]           ; 3B 47 02
        jle     L_0273                          ; 7E 13
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        cmp     ax, word ptr [bx + 2]           ; 3B 47 02
        jge     L_020D                          ; 7D A1
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_0274                          ; EB 01
L_0273:
        dec     si                              ; 4E
L_0274:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0220                          ; 74 A6
L_027A:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_020D                          ; 74 8D
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], si               ; 89 37
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 2], di           ; 89 7F 02
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_029F                          ; E8 0C 00
        add     sp, 6                           ; 83 C4 06
        mov     ax, 1                           ; B8 01 00
L_0299:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_029F -- offset 0x029F -- 92 instr
; Funcion compleja: 92 instrucciones, 3 llamadas, 0 branches.
; tags: calls_gdi, complex
; callers: sub_019E, sub_08A2
; calls (inter): GDI.ROUNDRECT, GDI.SELECTOBJECT, GDI.SETROP2
;----------------------------------------------------------------------
L_029F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xb08]                ; FF 36 08 0B
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     si, ax                          ; 03 F0
        mov     ax, 0x3d1                       ; B8 D1 03
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [0x876]                ; F7 2E 76 08
        shl     ax, 1                           ; D1 E0
        sub     di, ax                          ; 2B F8
        push    word ptr [bp + 4]               ; FF 76 04
        add     si, word ptr [0xa86]            ; 03 36 86 0A
        push    si                              ; 56
        add     di, word ptr [0xa88]            ; 03 3E 88 0A
        push    di                              ; 57
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        call    far GDI.ROUNDRECT               ; 9A 72 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        call    far GDI.ROUNDRECT               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_037C -- offset 0x037C -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: calls_user, small
; callers: sub_08A2
; calls (intra): sub_217D
; calls (inter): USER.SETCURSOR
;----------------------------------------------------------------------
L_037C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_217D                          ; E8 FB 1D
        push    word ptr [0xad6]                ; FF 36 D6 0A
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_038F -- offset 0x038F -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: medium
; callers: sub_08A2
;----------------------------------------------------------------------
L_038F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     ax, 0x12                        ; B8 12 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        sub     si, ax                          ; 2B F0
        cmp     word ptr [0x63c], si            ; 39 36 3C 06
        jle     L_03B1                          ; 7E 05
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        jmp     L_03B3                          ; EB 02
L_03B1:
        mov     ax, si                          ; 8B C6
L_03B3:
        mov     word ptr [0xa86], ax            ; A3 86 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        sub     si, ax                          ; 2B F0
        cmp     word ptr [0x876], si            ; 39 36 76 08
        jle     L_03D4                          ; 7E 05
        mov     ax, word ptr [0x876]            ; A1 76 08
        jmp     L_03D6                          ; EB 02
L_03D4:
        mov     ax, si                          ; 8B C6
L_03D6:
        mov     word ptr [0xa88], ax            ; A3 88 0A
        mov     word ptr [0x61c], ax            ; A3 1C 06
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        mov     word ptr [0x620], ax            ; A3 20 06
        mov     ax, word ptr [0xa86]            ; A1 86 0A
        mov     word ptr [0x61a], ax            ; A3 1A 06
        mov     ax, 0x24                        ; B8 24 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        mov     word ptr [0x61e], ax            ; A3 1E 06
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0403 -- offset 0x0403 -- 352 instr
; Funcion compleja: 352 instrucciones, 16 llamadas, 1 branches.
; tags: calls_gdi, calls_user, complex
; callers: sub_08A2
; calls (intra): sub_0D7F
; calls (inter): GDI.CREATECOMPATIBLEDC, GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.LINETO, GDI.MOVETO, GDI.PATBLT (+9 mas)
;----------------------------------------------------------------------
L_0403:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x30                        ; 83 EC 30
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0xa86]            ; A1 86 0A
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [0xa86]            ; A1 86 0A
        add     ax, word ptr [0x63c]            ; 03 06 3C 06
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [0x876]            ; A1 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, 0x24                        ; B8 24 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [0xa88]            ; A1 88 0A
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [0x63c]            ; 03 06 3C 06
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, word ptr [0xa88]            ; A1 88 0A
        add     ax, word ptr [0x876]            ; 03 06 76 08
        push    ax                              ; 50
        mov     si, word ptr [bp - 0x30]        ; 8B 76 D0
        push    si                              ; 56
        mov     di, word ptr [bp - 0x2c]        ; 8B 7E D4
        push    di                              ; 57
        mov     ax, 0x42                        ; B8 42 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A E1 04 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 2A 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 30 05 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0xa86]            ; A1 86 0A
        add     ax, word ptr [0x63c]            ; 03 06 3C 06
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 15 06 00 00 [FIXUP]
        mov     ax, 0x24                        ; B8 24 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     si, ax                          ; 8B F0
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 4]               ; FF 76 04
        add     si, word ptr [0xa86]            ; 03 36 86 0A
        push    si                              ; 56
        add     di, word ptr [0xa88]            ; 03 3E 88 0A
        push    di                              ; 57
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A B7 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A AB 05 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far GDI.POLYGON                 ; 9A 52 05 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far GDI.POLYGON                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x856]                ; FF 36 56 08
        call    far GDI.UNREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x3d1                       ; B8 D1 03
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x856]                ; FF 36 56 08
        call    far GDI.SELECTOBJECT            ; 9A BD 05 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A F4 06 00 00 [FIXUP]
        mov     ax, word ptr [0xa86]            ; A1 86 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xa88]            ; A1 88 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     word ptr [bp - 2], di           ; 89 7E FE
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0xb08]                ; FF 36 08 0B
        call    far USER.FRAMERECT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa86]                ; FF 36 86 0A
        push    word ptr [0xa88]                ; FF 36 88 0A
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [0xa86]            ; 2B 06 86 0A
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [0xa88]            ; 2B 06 88 0A
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 7A 00 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0D7F                          ; E8 60 07
        add     sp, 2                           ; 83 C4 02
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 4]               ; FF 76 04
        add     si, word ptr [0xa86]            ; 03 36 86 0A
        push    si                              ; 56
        mov     ax, 0x13                        ; B8 13 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     di, word ptr [0xa88]            ; 03 3E 88 0A
        mov     cx, di                          ; 8B CF
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, 0x47                        ; B8 47 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 86 06 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        mov     ax, 0x27                        ; B8 27 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x4a                        ; B8 4A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A AA 06 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        mov     ax, 0x3b                        ; B8 3B 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x4d                        ; B8 4D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A CE 06 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        mov     ax, 0x4f                        ; B8 4F 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 06 01 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [0x602]            ; A1 02 06
        cdq                                     ; 99
        mov     cx, word ptr [0x600]            ; 8B 0E 00 06
        idiv    cx                              ; F7 F9
        cmp     ax, 1                           ; 3D 01 00
        jle     L_0735                          ; 7E 49
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [0xac0]                ; FF 36 C0 0A
        call    far GDI.SELECTOBJECT            ; 9A 3D 07 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa0                        ; B8 A0 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        push    word ptr [bp - 0x12]            ; FF 76 EE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        jmp     L_077C                          ; EB 47
L_0735:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [0x878]                ; FF 36 78 08
        call    far GDI.SELECTOBJECT            ; 9A AF 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa0                        ; B8 A0 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, 0x2b                        ; B8 2B 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        push    word ptr [bp - 0x12]            ; FF 76 EE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
L_077C:
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far GDI.DELETEDC                ; 9A F3 0A 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0799 -- offset 0x0799 -- 101 instr
; Funcion compleja: 101 instrucciones, 5 llamadas, 1 branches.
; tags: calls_gdi, complex
; callers: sub_0D7F
; calls (inter): GDI.BITBLT, GDI.PATBLT, GDI.ROUNDRECT, GDI.SELECTOBJECT, GDI.UNREALIZEOBJECT
;----------------------------------------------------------------------
L_0799:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0xaaa], 0             ; 83 3E AA 0A 00
        jne     L_07A6                          ; 75 03
        jmp     L_0831                          ; E9 8B 00
L_07A6:
        mov     word ptr [0xaaa], 0             ; C7 06 AA 0A 00 00
        push    word ptr [0x638]                ; FF 36 38 06
        push    word ptr [0x622]                ; FF 36 22 06
        call    far GDI.SELECTOBJECT            ; 9A CB 07 00 00 [FIXUP]
        push    word ptr [0x856]                ; FF 36 56 08
        call    far GDI.UNREALIZEOBJECT         ; 9A 28 0A 00 00 [FIXUP]
        push    word ptr [0x638]                ; FF 36 38 06
        push    word ptr [0x856]                ; FF 36 56 08
        call    far GDI.SELECTOBJECT            ; 9A F2 07 00 00 [FIXUP]
        push    word ptr [0x638]                ; FF 36 38 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A A8 04 00 00 [FIXUP]
        push    word ptr [0x638]                ; FF 36 38 06
        push    word ptr [0x854]                ; FF 36 54 08
        call    far GDI.SELECTOBJECT            ; 9A BA 04 00 00 [FIXUP]
        push    word ptr [0x638]                ; FF 36 38 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x876]                ; FF 36 76 08
        call    far GDI.ROUNDRECT               ; 9A 36 03 00 00 [FIXUP]
L_0831:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     bx, 0xa                         ; BB 0A 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa86]            ; 03 0E 86 0A
        push    cx                              ; 51
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [0x876]                ; F7 2E 76 08
        shl     ax, 1                           ; D1 E0
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x3d1                       ; B8 D1 03
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        mov     bx, 0x64                        ; BB 64 00
        idiv    bx                              ; F7 FB
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [0x638]                ; FF 36 38 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08A2 -- offset 0x08A2 -- 264 instr
; Dispatcher: tabla de decisiones cmp+jcc (264 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_0B8C, sub_1BCB
; calls (intra): sub_029F, sub_037C, sub_038F, sub_0403, sub_0D20, sub_1BCB (+2 mas)
; calls (inter): GDI.DELETEDC, GDI.DELETEOBJECT, GDI.UNREALIZEOBJECT, KERNEL.GETMODULEUSAGE, USER.BEGINPAINT, USER.CLOSECLIPBOARD (+16 mas)
;----------------------------------------------------------------------
L_08A2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     word ptr [bp - 8], 0x14         ; C7 46 F8 14 00
        cmp     word ptr [bp + 4], 0x6e         ; 83 7E 04 6E
        jne     L_08BE                          ; 75 07
        mov     al, byte ptr [0xa82]            ; A0 82 0A
        cwde                                    ; 98
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_08BE:
        mov     ax, 0x4d                        ; B8 4D 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_08F3                          ; 7D 28
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x2b                        ; 3D 2B 00
        je      L_0916                          ; 74 43
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_091D                          ; 74 45
        cmp     ax, 0x43                        ; 3D 43 00
        je      L_08EE                          ; 74 11
        cmp     ax, 0x52                        ; 3D 52 00
        je      L_090F                          ; 74 2D
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_08EE                          ; 74 07
        cmp     ax, 0x72                        ; 3D 72 00
        je      L_090F                          ; 74 23
        jmp     L_08F3                          ; EB 05
L_08EE:
        mov     word ptr [bp + 4], 4            ; C7 46 04 04 00
L_08F3:
        or      si, si                          ; 0B F6
        jne     L_0924                          ; 75 2D
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0924                          ; 74 25
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_08F3                          ; 75 E9
        mov     si, 1                           ; BE 01 00
        jmp     L_08F3                          ; EB E4
L_090F:
        mov     word ptr [bp + 4], 3            ; C7 46 04 03 00
        jmp     L_08F3                          ; EB DD
L_0916:
        mov     word ptr [bp + 4], 2            ; C7 46 04 02 00
        jmp     L_08F3                          ; EB D6
L_091D:
        mov     word ptr [bp + 4], 1            ; C7 46 04 01 00
        jmp     L_08F3                          ; EB CF
L_0924:
        or      si, si                          ; 0B F6
        je      L_0972                          ; 74 4A
        mov     al, byte ptr [0xb06]            ; A0 06 0B
        mov     byte ptr [0xa7e], al            ; A2 7E 0A
        mov     di, word ptr [bp - 8]           ; 8B 7E F8
        sub     di, 0x14                        ; 81 EF 14 00
        dec     di                              ; 4F
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        call    far USER.GETDC                  ; 9A 41 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 6                           ; B9 06 00
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_029F                          ; E8 48 F9
        add     sp, 6                           ; 83 C4 06
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.RELEASEDC              ; 9A 5F 01 00 00 [FIXUP]
        mov     al, byte ptr [di + 0x14]        ; 8A 85 14 00
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_1F51                          ; E8 E2 15
        add     sp, 2                           ; 83 C4 02
L_0972:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0992                          ; 75 03
        jmp     L_0BEF                          ; E9 5D 02
L_0992:
        jbe     L_0997                          ; 76 03
        jmp     L_0CB4                          ; E9 1D 03
L_0997:
        cmp     ax, 1                           ; 3D 01 00
        je      L_09E4                          ; 74 48
        cmp     ax, 2                           ; 3D 02 00
        jne     L_09A4                          ; 75 03
        jmp     L_0AEE                          ; E9 4A 01
L_09A4:
        cmp     ax, 5                           ; 3D 05 00
        je      L_09BE                          ; 74 15
        cmp     ax, 6                           ; 3D 06 00
        je      L_09D0                          ; 74 22
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_09B6                          ; 75 03
        jmp     L_0AC5                          ; E9 0F 01
L_09B6:
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0A16                          ; 74 5B
        jmp     L_0A91                          ; E9 D3 00
L_09BE:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_038F                          ; E8 C5 F9
L_09CA:
        add     sp, 6                           ; 83 C4 06
        jmp     L_0CF6                          ; E9 26 03
L_09D0:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_09D9                          ; 75 03
        jmp     L_0CF6                          ; E9 1D 03
L_09D9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 12 03
L_09E4:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_037C                          ; E8 92 F9
        add     sp, 2                           ; 83 C4 02
        jmp     L_0CF6                          ; E9 06 03
L_09F0:
        mov     ax, 0x61a                       ; B8 1A 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A10                          ; 74 0C
        push    word ptr [0xaa8]                ; FF 36 A8 0A
L_0A08:
        call    far USER.SETCURSOR              ; 9A 87 03 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 E6 02
L_0A10:
        push    word ptr [0xad6]                ; FF 36 D6 0A
        jmp     L_0A08                          ; EB F2
L_0A16:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x83e]                ; FF 36 3E 08
        call    far GDI.UNREALIZEOBJECT         ; 9A 5B 05 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x83e]                ; FF 36 3E 08
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 B6 02
L_0A40:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0A4A                          ; 74 03
        jmp     L_0CF6                          ; E9 AC 02
L_0A4A:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0D20                          ; E8 CA 02
        jmp     L_09CA                          ; E9 71 FF
L_0A59:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        je      L_0A63                          ; 74 03
        jmp     L_0CF6                          ; E9 93 02
L_0A63:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0A6D                          ; 74 03
        jmp     L_0CF6                          ; E9 89 02
L_0A6D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0A7D                          ; 74 08
        cmp     ax, 2                           ; 3D 02 00
        je      L_0A83                          ; 74 09
        jmp     L_0CF6                          ; E9 79 02
L_0A7D:
        call    L_1CAA                          ; E8 2A 12
        jmp     L_0CF6                          ; E9 73 02
L_0A83:
        call    L_1BCB                          ; E8 45 11
        jmp     L_0CF6                          ; E9 6D 02
L_0A89:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x3e7                       ; 3D E7 03
        je      L_0AA8                          ; 74 17
L_0A91:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 4E 02
L_0AA8:
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x87c]                ; FF 36 7C 08
        push    word ptr [0x87a]                ; FF 36 7A 08
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 31 02
L_0AC5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    L_0403                          ; E8 2B F9
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
L_0AE8:
        call    0                               ; E8 15 F5
        jmp     L_0CF6                          ; E9 08 02
L_0AEE:
        push    word ptr [0x638]                ; FF 36 38 06
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x622]                ; FF 36 22 06
        call    far GDI.DELETEOBJECT            ; 9A 13 0B 00 00 [FIXUP]
        push    word ptr [0x63a]                ; FF 36 3A 06
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0B32                          ; 75 24
        push    word ptr [0x856]                ; FF 36 56 08
        call    far GDI.DELETEOBJECT            ; 9A 1C 0B 00 00 [FIXUP]
        push    word ptr [0x83e]                ; FF 36 3E 08
        call    far GDI.DELETEOBJECT            ; 9A 25 0B 00 00 [FIXUP]
        push    word ptr [0x878]                ; FF 36 78 08
        call    far GDI.DELETEOBJECT            ; 9A 2E 0B 00 00 [FIXUP]
        push    word ptr [0xac0]                ; FF 36 C0 0A
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0B32:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 B9 01
L_0B3D:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0B5F                          ; 74 11
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ISCLIPBOARDFORMATAVAILABLE ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
L_0B5F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A 24 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0B79                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0B7C                          ; EB 03
L_0B79:
        mov     ax, 1                           ; B8 01 00
L_0B7C:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 95 0B 00 00 [FIXUP]
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_0B8C                          ; 75 03
        jmp     L_0CF6                          ; E9 6A 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B8C -- offset 0x0B8C -- 137 instr
; Dispatcher: tabla de decisiones cmp+jcc (137 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_08A2, sub_1BCB, sub_1CAA, sub_21B9
; calls (inter): KERNEL.LSTRCPY, USER.ENABLEMENUITEM, USER.GETMENU, USER.HILITEMENUITEM, USER.ISICONIC
;----------------------------------------------------------------------
L_0B8C:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A A5 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; E9 4A 01
L_0BAC:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0BB6                          ; 74 03
        jmp     L_0CF6                          ; E9 40 01
L_0BB6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.ISICONIC               ; 9A F3 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BC5                          ; 74 03
        jmp     L_0CF6                          ; E9 31 01
L_0BC5:
        cmp     word ptr [bp + 0xa], 0x41       ; 83 7E 0A 41
        jb      L_0BD8                          ; 72 0D
        cmp     word ptr [bp + 0xa], 0x5a       ; 83 7E 0A 5A
        ja      L_0BD8                          ; 77 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      al, 0x20                        ; 0C 20
        jmp     L_0BDB                          ; EB 03
L_0BD8:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
L_0BDB:
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        push    ax                              ; 50
        call    L_08A2                          ; E8 C0 FC
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0BEC                          ; 75 03
        jmp     L_0CF6                          ; E9 0A 01
L_0BEC:
        jmp     L_0AE8                          ; E9 F9 FE
L_0BEF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0BFE                          ; 74 03
        jmp     L_0CF6                          ; E9 F8 00
L_0BFE:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_0C13                          ; 74 0D
        cmp     ax, 0x48                        ; 3D 48 00
        je      L_0C8A                          ; 74 7F
        cmp     ax, 0x71                        ; 3D 71 00
        je      L_0C4A                          ; 74 3A
        jmp     L_0CF6                          ; E9 E3 00
L_0C13:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0C1D                          ; 74 03
        jmp     L_0CF6                          ; E9 D9 00
L_0C1D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A 40 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A 69 0C 00 00 [FIXUP]
        call    L_1BCB                          ; E8 92 0F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A 5B 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_0C7F                          ; EB 35
L_0C4A:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_0C54                          ; 74 03
        jmp     L_0CF6                          ; E9 A2 00
L_0C54:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A 77 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A 84 0C 00 00 [FIXUP]
        call    L_1CAA                          ; E8 3A 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_0C7F:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.HILITEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0CF6                          ; EB 6C
L_0C8A:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_0CF6                          ; 75 65
        call    L_21B9                          ; E8 25 15
        jmp     L_0CF6                          ; EB 60
L_0C96:
        cmp     word ptr [bp + 0xa], 0x48       ; 83 7E 0A 48
        jne     L_0CF6                          ; 75 5A
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x840                       ; B8 40 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0AE8                          ; E9 34 FE
L_0CB4:
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0CBC                          ; 75 03
        jmp     L_0A59                          ; E9 9D FD
L_0CBC:
        ja      L_0CD3                          ; 77 15
        cmp     ax, 0x101                       ; 3D 01 01
        je      L_0C96                          ; 74 D3
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_0CCB                          ; 75 03
        jmp     L_0BAC                          ; E9 E1 FE
L_0CCB:
        cmp     ax, 0x105                       ; 3D 05 01
        je      L_0C96                          ; 74 C6
        jmp     L_0A91                          ; E9 BE FD
L_0CD3:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_0CDB                          ; 75 03
        jmp     L_0A89                          ; E9 AE FD
L_0CDB:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_0CE3                          ; 75 03
        jmp     L_0B3D                          ; E9 5A FE
L_0CE3:
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0CEB                          ; 75 03
        jmp     L_09F0                          ; E9 05 FD
L_0CEB:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0CF3                          ; 75 03
        jmp     L_0A40                          ; E9 4D FD
L_0CF3:
        jmp     L_0A91                          ; E9 9B FD
L_0CF6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D01 -- offset 0x0D01 -- 15 instr
; Funcion hoja (no llama a otras, 15 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0D20
;----------------------------------------------------------------------
L_0D01:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp + 6]           ; 03 76 06
        mov     al, byte ptr [si + 0x14]        ; 8A 84 14 00
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        cwde                                    ; 98
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D20 -- offset 0x0D20 -- 42 instr
; Funcion mediana (42 instr, 6 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_08A2
; calls (intra): sub_019E, sub_0D01, sub_1F51
; calls (inter): GDI.DPTOLP, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_0D20:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 3B 09 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.DPTOLP                  ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [0xb06]            ; A0 06 0B
        mov     byte ptr [0xa7e], al            ; A2 7E 0A
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ax                              ; 50
        push    si                              ; 56
        call    L_019E                          ; E8 4F F4
        add     sp, 4                           ; 83 C4 04
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        call    far USER.RELEASEDC              ; 9A 62 09 00 00 [FIXUP]
        or      di, di                          ; 0B FF
        je      L_0D76                          ; 74 15
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0D01                          ; E8 97 FF
        add     sp, 4                           ; 83 C4 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_1F51                          ; E8 DE 11
        add     sp, 2                           ; 83 C4 02
L_0D76:
        call    0                               ; E8 87 F2
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D7F -- offset 0x0D7F -- 87 instr
; Funcion compleja: 87 instrucciones, 4 llamadas, 2 branches.
; tags: calls_gdi, complex
; callers: sub_0403
; calls (intra): sub_0799
; calls (inter): GDI.ROUNDRECT, GDI.SELECTOBJECT, GDI.TEXTOUT
;----------------------------------------------------------------------
L_0D7F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x854]                ; FF 36 54 08
        call    far GDI.SELECTOBJECT            ; 9A B5 07 00 00 [FIXUP]
        sub     si, si                          ; 2B F6
L_0D95:
        sub     di, di                          ; 2B FF
L_0D97:
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0799                          ; E8 FA F9
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        imul    di                              ; F7 EF
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x1c                        ; B8 1C 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        cdq                                     ; 99
        mov     bx, 0xa                         ; BB 0A 00
        idiv    bx                              ; F7 FB
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa86]            ; 03 0E 86 0A
        push    cx                              ; 51
        mov     ax, word ptr [0x876]            ; A1 76 08
        imul    si                              ; F7 EE
        shl     ax, 1                           ; D1 E0
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        sub     ax, cx                          ; 2B C1
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x13                        ; B8 13 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        cdq                                     ; 99
        idiv    bx                              ; F7 FB
        sub     cx, ax                          ; 2B C8
        add     cx, word ptr [0xa88]            ; 03 0E 88 0A
        push    cx                              ; 51
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        add     ax, di                          ; 03 C7
        add     ax, 0x2e                        ; 05 2E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 62 06 00 00 [FIXUP]
        inc     di                              ; 47
        cmp     di, 6                           ; 83 FF 06
        jl      L_0D97                          ; 7C 92
        inc     si                              ; 46
        cmp     si, 4                           ; 83 FE 04
        jl      L_0D95                          ; 7C 8A
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [0x876]                ; F7 2E 76 08
        add     ax, word ptr [0xa88]            ; 03 06 88 0A
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [0x63c]                ; F7 2E 3C 06
        add     ax, word ptr [0xa86]            ; 03 06 86 0A
        push    ax                              ; 50
        mov     ax, word ptr [0xa88]            ; A1 88 0A
        add     ax, word ptr [0x876]            ; 03 06 76 08
        push    ax                              ; 50
        mov     ax, word ptr [0x63c]            ; A1 3C 06
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [0x876]            ; A1 76 08
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    far GDI.ROUNDRECT               ; 9A 2D 08 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E51 -- offset 0x0E51 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_2230
; calls (intra): sub_108F, sub_1128
;----------------------------------------------------------------------
L_0E51:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x63a], ax            ; A3 3A 06
        call    L_1128                          ; E8 C6 02
        or      ax, ax                          ; 0B C0
        jne     L_0E6B                          ; 75 05
L_0E66:
        sub     ax, ax                          ; 2B C0
        jmp     L_1087                          ; E9 1C 02
L_0E6B:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0E83                          ; 75 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_108F                          ; E8 18 02
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0E81                          ; 74 03
        jmp     L_0FCB                          ; E9 4A 01
L_0E81:
        jmp     L_0E66                          ; EB E3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E83 -- offset 0x0E83 -- 215 instr
; Funcion compleja: 215 instrucciones, 12 llamadas, 1 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.GETINSTANCEDATA, KERNEL.LSTRLEN, KERNEL.MAKEPROCINSTANCE, USER.CHANGEMENU, USER.CREATEWINDOW, USER.DISPATCHMESSAGE (+6 mas)
;----------------------------------------------------------------------
L_0E83:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x876                       ; B8 76 08
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 9F 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x63c                       ; B8 3C 06
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A AF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xad8                       ; B8 D8 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A BF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x600                       ; B8 00 06
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A CF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x602                       ; B8 02 06
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A DF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x854                       ; B8 54 08
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A EF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xb08                       ; B8 08 0B
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x856                       ; B8 56 08
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 0F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x83e                       ; B8 3E 08
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 1F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xad6                       ; B8 D6 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xaa8                       ; B8 A8 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 3F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x878                       ; B8 78 08
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 4F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xac0                       ; B8 C0 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 5F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xac0                       ; B8 C0 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 6F 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa82                       ; B8 82 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 8F 0E 00 00 [FIXUP]
        mov     al, byte ptr [0xa82]            ; A0 82 0A
        mov     byte ptr [0x31], al             ; A2 31 00
        mov     byte ptr [0x17], al             ; A2 17 00
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xa8a                       ; B8 8A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A A4 0F 00 00 [FIXUP]
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A C7 0F 00 00 [FIXUP]
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 0D 00 00 00 [FIXUP]
        mov     word ptr [0xb0c], ax            ; A3 0C 0B
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0xaf0                       ; B8 F0 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
L_0FCB:
        mov     word ptr [0xaaa], 1             ; C7 06 AA 0A 01 00
        mov     al, 0x63                        ; B0 63
        mov     byte ptr [0xb06], al            ; A2 06 0B
        mov     byte ptr [0xa7e], al            ; A2 7E 0A
        mov     ax, OFFSET _entry_3             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_3             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x63a]                ; FF 36 3A 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x87a], ax            ; A3 7A 08
        mov     word ptr [0x87c], dx            ; 89 16 7C 08
        mov     ax, 0x53                        ; B8 53 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa8a                       ; B8 8A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     word ptr [0xb0a], si            ; 89 36 0A 0B
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 48 10 00 00 [FIXUP]
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xaf0                       ; B8 F0 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1071                          ; EB 14
L_105D:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_1071:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_105D                          ; 75 D9
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
L_1087:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_108F -- offset 0x108F -- 55 instr
; Funcion mediana (55 instr, 6 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_0E51
; calls (intra): sub_1176, sub_11EB
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_108F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        call    L_1176                          ; E8 DE 00
        or      ax, ax                          ; 0B C0
        jne     L_10A1                          ; 75 05
L_109C:
        sub     ax, ax                          ; 2B C0
        jmp     L_1124                          ; E9 83 00
L_10A1:
        call    L_11EB                          ; E8 47 01
        or      ax, ax                          ; 0B C0
        je      L_109C                          ; 74 F4
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, 0x58                        ; B8 58 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [0x83e]            ; A1 3E 08
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_109C                          ; 74 83
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_1124:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1128 -- offset 0x1128 -- 31 instr
; Funcion mediana (31 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_0E51
; calls (inter): GDI.CREATECOMPATIBLEBITMAP, GDI.CREATECOMPATIBLEDC, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_1128:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 81 11 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_1141                          ; 75 04
L_113D:
        sub     ax, ax                          ; 2B C0
        jmp     L_1172                          ; EB 31
L_1141:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.CREATECOMPATIBLEDC      ; 9A D6 06 00 00 [FIXUP]
        mov     word ptr [0x638], ax            ; A3 38 06
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEBITMAP  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x622], ax            ; A3 22 06
        cmp     word ptr [0x638], 0             ; 83 3E 38 06 00
        je      L_113D                          ; 74 DA
        or      ax, ax                          ; 0B C0
        je      L_113D                          ; 74 D6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A E2 11 00 00 [FIXUP]
L_1172:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1176 -- offset 0x1176 -- 48 instr
; Funcion mediana (48 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_108F
; calls (inter): GDI.GETDEVICECAPS, GDI.GETTEXTMETRICS, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_1176:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 2C 0D 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_118F                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_11E6                          ; EB 57
L_118F:
        push    si                              ; 56
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0x876], ax            ; A3 76 08
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x63c], ax            ; A3 3C 06
        push    si                              ; 56
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A C9 11 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jle     L_11BD                          ; 7E 08
        mov     word ptr [0xad8], 1             ; C7 06 D8 0A 01 00
        jmp     L_11C3                          ; EB 06
L_11BD:
        mov     word ptr [0xad8], 0             ; C7 06 D8 0A 00 00
L_11C3:
        push    si                              ; 56
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A D6 11 00 00 [FIXUP]
        mov     word ptr [0x600], ax            ; A3 00 06
        push    si                              ; 56
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x602], ax            ; A3 02 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        call    far USER.RELEASEDC              ; 9A 59 0D 00 00 [FIXUP]
L_11E6:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_11EB -- offset 0x11EB -- 150 instr
; Dispatcher: tabla de decisiones cmp+jcc (150 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_108F
; calls (inter): GDI.CREATEBITMAP, GDI.CREATEPATTERNBRUSH, GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT, GDI.GETSTOCKOBJECT, KERNEL.LSTRLEN (+3 mas)
;----------------------------------------------------------------------
L_11EB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 02 12 00 00 [FIXUP]
        mov     word ptr [0x854], ax            ; A3 54 08
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A B4 04 00 00 [FIXUP]
        mov     word ptr [0xb08], ax            ; A3 08 0B
        cmp     word ptr [0xad8], 0             ; 83 3E D8 0A 00
        je      L_1222                          ; 74 12
        mov     ax, 0x7f7f                      ; B8 7F 7F
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A 69 12 00 00 [FIXUP]
        mov     word ptr [0x856], ax            ; A3 56 08
        jmp     L_1247                          ; EB 25
L_1222:
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x5e                        ; B8 5E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x856], ax            ; A3 56 08
        push    si                              ; 56
        call    far GDI.DELETEOBJECT            ; 9A FC 0A 00 00 [FIXUP]
L_1247:
        cmp     word ptr [0x856], 0             ; 83 3E 56 08 00
        jne     L_1253                          ; 75 05
L_124E:
        sub     ax, ax                          ; 2B C0
        jmp     L_135A                          ; E9 07 01
L_1253:
        cmp     word ptr [0xad8], 0             ; 83 3E D8 0A 00
        je      L_1260                          ; 74 06
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        jmp     L_1266                          ; EB 06
L_1260:
        mov     ax, 0x8000                      ; B8 00 80
        mov     dx, 0x40                        ; BA 40 00
L_1266:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x83e], ax            ; A3 3E 08
        or      ax, ax                          ; 0B C0
        je      L_124E                          ; 74 DA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 90 12 00 00 [FIXUP]
        mov     word ptr [0xad6], ax            ; A3 D6 0A
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xaa8], ax            ; A3 A8 0A
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x878], ax            ; A3 78 08
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A A2 12 00 00 [FIXUP]
        mov     word ptr [0xac0], ax            ; A3 C0 0A
        cmp     word ptr [0xaa8], 0             ; 83 3E A8 0A 00
        je      L_124E                          ; 74 8C
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_124E                          ; 74 85
        or      ax, ax                          ; 0B C0
        je      L_124E                          ; 74 81
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xa8a                       ; B8 8A 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FC 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_12EA                          ; 75 03
        jmp     L_124E                          ; E9 64 FF
L_12EA:
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 19 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1307                          ; 75 03
        jmp     L_124E                          ; E9 47 FF
L_1307:
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0xaf0                       ; B8 F0 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 36 13 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1324                          ; 75 03
        jmp     L_124E                          ; E9 2A FF
L_1324:
        push    word ptr [0x63a]                ; FF 36 3A 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0xa82                       ; B8 82 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 8E 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1341                          ; 75 03
        jmp     L_124E                          ; E9 0D FF
L_1341:
        mov     al, byte ptr [0xa82]            ; A0 82 0A
        mov     byte ptr [0x31], al             ; A2 31 00
        mov     byte ptr [0x17], al             ; A2 17 00
        mov     ax, 0xadc                       ; B8 DC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A AE 0F 00 00 [FIXUP]
        mov     word ptr [0xb0c], ax            ; A3 0C 0B
        mov     ax, 1                           ; B8 01 00
L_135A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_135F -- offset 0x135F -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_kernel, small
; callers: sub_1400
; calls (inter): KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_135F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRLEN              ; 9A D7 13 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_1392                          ; EB 1A
L_1378:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        cwde                                    ; 98
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     si                              ; 46
L_1392:
        dec     di                              ; 4F
        cmp     si, di                          ; 3B F7
        jl      L_1378                          ; 7C E1
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_139D -- offset 0x139D -- 26 instr
; Iterador con instrucciones de string (movsb/scasb/...) (26 instr).
; tags: iterator, string_op
; callers: sub_165C, sub_19E8, sub_1D10, sub_1E3E, sub_2084
; calls (intra): sub_419E
;----------------------------------------------------------------------
L_139D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp + 4]                    ; 8D 76 04
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 0x6e                        ; B8 6E 00
        push    ax                              ; 50
        mov     ax, 0xac2                       ; B8 C2 0A
        push    ax                              ; 50
        call    L_419E                          ; E8 E3 2D
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, 0xac2                       ; B8 C2 0A
        mov     dx, ds                          ; 8C DA
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13C9 -- offset 0x13C9 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: calls_kernel, small
; callers: sub_0000, sub_1400, sub_15AC, sub_1614, sub_1B38
; calls (inter): KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_13C9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRLEN              ; 9A 50 13 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        jmp     L_13F2                          ; EB 13
L_13DF:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_13F2                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_13FB                          ; EB 09
L_13F2:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        or      ax, ax                          ; 0B C0
        jg      L_13DF                          ; 7F E6
        sub     ax, ax                          ; 2B C0
L_13FB:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1400 -- offset 0x1400 -- 133 instr
; Funcion compleja: 133 instrucciones, 13 llamadas, 7 branches.
; tags: calls_kernel, complex
; callers: sub_165C, sub_19E8, sub_1B38, sub_1D10, sub_1E3E, sub_2084 (+2 mas)
; calls (intra): sub_135F, sub_13C9, sub_240E, sub_245B, sub_2548, sub_25A0 (+4 mas)
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1400:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13C9                          ; E8 B4 FF
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        jne     L_142C                          ; 75 10
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x73                        ; B8 73 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 3B 16 00 00 [FIXUP]
L_142C:
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13C9                          ; E8 90 FF
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        je      L_1448                          ; 74 08
        mov     di, 1                           ; BF 01 00
        inc     word ptr [bp + 4]               ; FF 46 04
        jmp     L_144A                          ; EB 02
L_1448:
        sub     di, di                          ; 2B FF
L_144A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRLEN              ; 9A 7D 15 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 B0 0F
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_2548                          ; E8 E4 10
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 A3 0F
        lea     bx, [bp - 0x14]                 ; 8D 5E EC
        call    L_2548                          ; E8 D7 10
        jmp     L_14AB                          ; EB 38
L_1473:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        cmp     al, 0x2e                        ; 3C 2E
        je      L_14AF                          ; 74 2F
        cwde                                    ; 98
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        lea     bx, [bp - 0x1a]                 ; 8D 5E E6
        call    L_245B                          ; E8 D1 0F
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_240E                          ; E8 7E 0F
        lea     bx, [0x58a]                     ; 8D 1E 8A 05
        call    L_26D6                          ; E8 3F 12
        call    L_2756                          ; E8 BC 12
        lea     bx, [0x592]                     ; 8D 1E 92 05
        call    L_26A6                          ; E8 05 12
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_2548                          ; E8 A1 10
        inc     word ptr [bp + 4]               ; FF 46 04
        dec     si                              ; 4E
L_14AB:
        or      si, si                          ; 0B F6
        jg      L_1473                          ; 7F C4
L_14AF:
        inc     word ptr [bp + 4]               ; FF 46 04
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        je      L_151F                          ; 74 68
        mov     ax, 0x858                       ; B8 58 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRCPY              ; 9A 95 15 00 00 [FIXUP]
        mov     ax, 0x858                       ; B8 58 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_135F                          ; E8 90 FE
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [bp - 0xc], 0x858      ; C7 46 F4 58 08
        jmp     L_1509                          ; EB 30
L_14D9:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_245B                          ; E8 73 0F
        lea     bx, [bp - 0x14]                 ; 8D 5E EC
        call    L_240E                          ; E8 20 0F
        lea     bx, [0x59a]                     ; 8D 1E 9A 05
        call    L_26D6                          ; E8 E1 11
        call    L_2756                          ; E8 5E 12
        lea     bx, [0x592]                     ; 8D 1E 92 05
        call    L_26A6                          ; E8 A7 11
        lea     bx, [bp - 0x14]                 ; 8D 5E EC
        call    L_2548                          ; E8 43 10
        dec     si                              ; 4E
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_1509:
        or      si, si                          ; 0B F6
        jg      L_14D9                          ; 7F CC
        lea     bx, [0x59a]                     ; 8D 1E 9A 05
        call    L_240E                          ; E8 FA 0E
        lea     bx, [bp - 0x14]                 ; 8D 5E EC
        push    bx                              ; 53
        call    L_26D6                          ; E8 BB 11
        pop     bx                              ; 5B
        call    L_2548                          ; E8 29 10
L_151F:
        lea     bx, [bp - 0x14]                 ; 8D 5E EC
        call    L_240E                          ; E8 E9 0E
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        push    bx                              ; 53
        call    L_271E                          ; E8 F2 11
        pop     bx                              ; 5B
        call    L_2548                          ; E8 18 10
        or      di, di                          ; 0B FF
        je      L_1543                          ; 74 0F
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_240E                          ; E8 D4 0E
        call    L_25A0                          ; E8 63 10
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_2548                          ; E8 05 10
L_1543:
        lea     bx, [bp - 0xa]                  ; 8D 5E F6
        call    L_240E                          ; E8 C5 0E
        mov     bx, 0x330                       ; BB 30 03
        call    L_2548                          ; E8 F9 0F
        mov     ax, 0x330                       ; B8 30 03
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1558 -- offset 0x1558 -- 37 instr
; Funcion mediana (37 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_1614
; calls (inter): KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1558:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        cmp     byte ptr [0x604], 0x2d          ; 80 3E 04 06 2D
        jne     L_1570                          ; 75 0B
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x605                       ; B8 05 06
        push    ds                              ; 1E
        jmp     L_15A2                          ; EB 32
L_1570:
        cmp     byte ptr [0x604], 0x30          ; 80 3E 04 06 30
        jne     L_1586                          ; 75 0F
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A D9 15 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jle     L_15A8                          ; 7E 22
L_1586:
        mov     byte ptr [bp - 0x14], 0x2d      ; C6 46 EC 2D
        lea     ax, [bp - 0x13]                 ; 8D 46 ED
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A A4 15 00 00 [FIXUP]
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
L_15A2:
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A AD 0C 00 00 [FIXUP]
L_15A8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_15AC -- offset 0x15AC -- 46 instr
; Dispatcher: tabla de decisiones cmp+jcc (46 instr).
; tags: calls_kernel, dispatcher
; callers: sub_1614
; calls (intra): sub_13C9
; calls (inter): KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_15AC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     di, 9                           ; BF 09 00
        cmp     byte ptr [0x604], 0x2d          ; 80 3E 04 06 2D
        jne     L_15BF                          ; 75 01
        inc     di                              ; 47
L_15BF:
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_13C9                          ; E8 FE FD
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        je      L_15D3                          ; 74 01
        inc     di                              ; 47
L_15D3:
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 70 13 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     si, di                          ; 3B F7
        je      L_160E                          ; 74 2B
        cmp     si, 1                           ; 83 FE 01
        jne     L_15F0                          ; 75 08
        cmp     byte ptr [0x604], 0x30          ; 80 3E 04 06 30
        jne     L_15F0                          ; 75 01
        dec     si                              ; 4E
L_15F0:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [si + 0x604], al       ; 88 84 04 06
        lea     ax, [si + 1]                    ; 8D 44 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xb                         ; 3D 0B 00
        jge     L_1606                          ; 7D 04
        mov     bx, ax                          ; 8B D8
        jmp     L_1609                          ; EB 03
L_1606:
        mov     bx, 0xb                         ; BB 0B 00
L_1609:
        mov     byte ptr [bx + 0x604], 0        ; C6 87 04 06 00
L_160E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1614 -- offset 0x1614 -- 33 instr
; Funcion mediana (33 instr, 4 calls).
; tags: calls_kernel, medium
; callers: sub_1F51
; calls (intra): sub_13C9, sub_1558, sub_15AC
; calls (inter): KERNEL.LSTRCAT
;----------------------------------------------------------------------
L_1614:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     byte ptr [bp + 4], 0x2e         ; 80 7E 04 2E
        jne     L_1641                          ; 75 24
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_13C9                          ; E8 A0 FD
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        jne     L_1658                          ; 75 28
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x76                        ; B8 76 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1658                          ; EB 17
L_1641:
        cmp     byte ptr [bp + 4], 0xb1         ; 80 7E 04 B1
        jne     L_164C                          ; 75 05
        call    L_1558                          ; E8 0E FF
        jmp     L_1658                          ; EB 0C
L_164C:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_15AC                          ; E8 57 FF
        add     sp, 2                           ; 83 C4 02
L_1658:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_165C -- offset 0x165C -- 331 instr
; Iterador con instrucciones de string (movsb/scasb/...) (331 instr).
; tags: complex_iterator, string_op
; callers: sub_1AC0, sub_1F51
; calls (intra): sub_139D, sub_1400, sub_1B38, sub_240E, sub_2548, sub_25A0 (+8 mas)
;----------------------------------------------------------------------
L_165C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x28                        ; 83 EC 28
        push    di                              ; 57
        push    si                              ; 56
        cmp     byte ptr [0xa7e], 0x3d          ; 80 3E 7E 0A 3D
        jne     L_166E                          ; 75 03
        jmp     L_19E2                          ; E9 74 03
L_166E:
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 8A FD
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 8]                    ; 8D 7E F8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 74 FD
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x10]                 ; 8D 7E F0
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 0x624                       ; B8 24 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 5E FD
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     al, byte ptr [0x618]            ; A0 18 06
        cwde                                    ; 98
        cmp     ax, 0x2a                        ; 3D 2A 00
        jne     L_16BC                          ; 75 03
        jmp     L_18BA                          ; E9 FE 01
L_16BC:
        cmp     ax, 0x2b                        ; 3D 2B 00
        je      L_16D4                          ; 74 13
        cmp     ax, 0x2d                        ; 3D 2D 00
        jne     L_16C9                          ; 75 03
        jmp     L_176D                          ; E9 A4 00
L_16C9:
        cmp     ax, 0x2f                        ; 3D 2F 00
        jne     L_16D1                          ; 75 03
        jmp     L_1806                          ; E9 35 01
L_16D1:
        jmp     L_19AA                          ; E9 D6 02
L_16D4:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 34 0D
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 2D 0D
        call    L_275B                          ; E8 77 10
        jle     L_1712                          ; 7E 2C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 22 0D
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 1B 0D
        call    L_275B                          ; E8 65 10
        jle     L_1754                          ; 7E 5C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 10 0D
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_26BE                          ; E8 B9 0F
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 03 0D
        call    L_275B                          ; E8 4D 10
        jge     L_1754                          ; 7D 44
        jmp     L_174E                          ; EB 3C
L_1712:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 F6 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 EF 0C
        call    L_275B                          ; E8 39 10
        jge     L_1754                          ; 7D 30
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 E4 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 DD 0C
        call    L_275B                          ; E8 27 10
        jge     L_1754                          ; 7D 1E
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 D2 0C
        lea     bx, [0x5aa]                     ; 8D 1E AA 05
        call    L_26BE                          ; E8 7B 0F
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 C5 0C
        call    L_275B                          ; E8 0F 10
        jle     L_1754                          ; 7E 06
L_174E:
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_1754:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        je      L_175E                          ; 74 03
        jmp     L_19AA                          ; E9 4C 02
L_175E:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 AA 0C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_271E                          ; E8 B4 0F
        jmp     L_19A4                          ; E9 37 02
L_176D:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 9B 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 94 0C
        call    L_275B                          ; E8 DE 0F
        jge     L_17AB                          ; 7D 2C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 89 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 82 0C
        call    L_275B                          ; E8 CC 0F
        jle     L_17ED                          ; 7E 5C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 77 0C
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_271E                          ; E8 80 0F
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 6A 0C
        call    L_275B                          ; E8 B4 0F
        jge     L_17ED                          ; 7D 44
        jmp     L_17E7                          ; EB 3C
L_17AB:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 5D 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 56 0C
        call    L_275B                          ; E8 A0 0F
        jle     L_17ED                          ; 7E 30
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 4B 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 44 0C
        call    L_275B                          ; E8 8E 0F
        jge     L_17ED                          ; 7D 1E
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 39 0C
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_26A6                          ; E8 CA 0E
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 2C 0C
        call    L_275B                          ; E8 76 0F
        jle     L_17ED                          ; 7E 06
L_17E7:
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_17ED:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        je      L_17F7                          ; 74 03
        jmp     L_19AA                          ; E9 B3 01
L_17F7:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 11 0C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_26A6                          ; E8 A3 0E
        jmp     L_19A4                          ; E9 9E 01
L_1806:
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 02 0C
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 FB 0B
        call    L_275B                          ; E8 45 0F
        jne     L_181B                          ; 75 03
        jmp     L_189B                          ; E9 80 00
L_181B:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 ED 0B
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 E6 0B
        call    L_275B                          ; E8 30 0F
        jle     L_1865                          ; 7E 38
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 DB 0B
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 D4 0B
        call    L_275B                          ; E8 1E 0F
        jle     L_184B                          ; 7E 0C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 C9 0B
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        jmp     L_188D                          ; EB 42
L_184B:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 BD 0B
        lea     bx, [0x5aa]                     ; 8D 1E AA 05
L_1855:
        call    L_26EE                          ; E8 96 0E
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 B0 0B
        call    L_275B                          ; E8 FA 0E
        jge     L_18A1                          ; 7D 3E
        jmp     L_189B                          ; EB 36
L_1865:
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 A3 0B
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 9C 0B
        call    L_275B                          ; E8 E6 0E
        jge     L_1883                          ; 7D 0C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 91 0B
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        jmp     L_1855                          ; EB D2
L_1883:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 85 0B
        lea     bx, [0x5aa]                     ; 8D 1E AA 05
L_188D:
        call    L_26EE                          ; E8 5E 0E
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 78 0B
        call    L_275B                          ; E8 C2 0E
        jle     L_18A1                          ; 7E 06
L_189B:
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_18A1:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        je      L_18AB                          ; 74 03
        jmp     L_19AA                          ; E9 FF 00
L_18AB:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 5D 0B
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_26EE                          ; E8 37 0E
        jmp     L_19A4                          ; E9 EA 00
L_18BA:
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 4E 0B
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 47 0B
        call    L_275B                          ; E8 91 0E
        jne     L_18CF                          ; 75 03
        jmp     L_19E2                          ; E9 13 01
L_18CF:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 39 0B
        call    L_25A0                          ; E8 C8 0C
        lea     bx, [bp - 0x20]                 ; 8D 5E E0
        call    L_2548                          ; E8 6A 0C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 2A 0B
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 23 0B
        call    L_275B                          ; E8 6D 0E
        jl      L_18F5                          ; 7C 05
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        jmp     L_18F8                          ; EB 03
L_18F5:
        lea     bx, [bp - 0x20]                 ; 8D 5E E0
L_18F8:
        call    L_240E                          ; E8 13 0B
        lea     bx, [0x5b2]                     ; 8D 1E B2 05
        call    L_240E                          ; E8 0C 0B
        call    L_275B                          ; E8 56 0E
        jg      L_190A                          ; 7F 03
        jmp     L_1991                          ; E9 87 00
L_190A:
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 FE 0A
        call    L_25A0                          ; E8 8D 0C
        lea     bx, [bp - 0x28]                 ; 8D 5E D8
        call    L_2548                          ; E8 2F 0C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 EF 0A
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 E8 0A
        call    L_275B                          ; E8 32 0E
        jl      L_1930                          ; 7C 05
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        jmp     L_1933                          ; EB 03
L_1930:
        lea     bx, [bp - 0x28]                 ; 8D 5E D8
L_1933:
        call    L_240E                          ; E8 D8 0A
        lea     bx, [0x5b2]                     ; 8D 1E B2 05
        call    L_240E                          ; E8 D1 0A
        call    L_275B                          ; E8 1B 0E
        jle     L_1991                          ; 7E 4F
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_240E                          ; E8 C5 0A
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 BF 0A
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 B8 0A
        call    L_275B                          ; E8 02 0E
        jl      L_1960                          ; 7C 05
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        jmp     L_1963                          ; EB 03
L_1960:
        lea     bx, [bp - 0x20]                 ; 8D 5E E0
L_1963:
        call    L_240E                          ; E8 A8 0A
        call    L_274C                          ; E8 E3 0D
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 9F 0A
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 98 0A
        call    L_275B                          ; E8 E2 0D
        jl      L_1980                          ; 7C 05
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        jmp     L_1983                          ; EB 03
L_1980:
        lea     bx, [bp - 0x28]                 ; 8D 5E D8
L_1983:
        call    L_240E                          ; E8 88 0A
        call    L_275B                          ; E8 D2 0D
        jge     L_1991                          ; 7D 06
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_1991:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_19AA                          ; 75 12
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 70 0A
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_26D6                          ; E8 32 0D
L_19A4:
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_2548                          ; E8 9E 0B
L_19AA:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_19DF                          ; 75 2E
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_139D                          ; E8 DB F9
        add     sp, 8                           ; 83 C4 08
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        call    L_41F3                          ; E8 25 28
        add     sp, 6                           ; 83 C4 06
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        mov     ax, 0x624                       ; B8 24 06
        push    ax                              ; 50
        call    L_41F3                          ; E8 17 28
        add     sp, 4                           ; 83 C4 04
L_19DF:
        call    L_1B38                          ; E8 56 01
L_19E2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19E8 -- offset 0x19E8 -- 99 instr
; Iterador con instrucciones de string (movsb/scasb/...) (99 instr).
; tags: calls_kernel, complex_iterator, string_op
; callers: sub_1F51
; calls (intra): sub_139D, sub_1400, sub_1B38, sub_240E, sub_275B, sub_27CA (+1 mas)
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_19E8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 08 FA
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 8]                    ; 8D 7E F8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_240E                          ; E8 02 0A
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 FB 09
        call    L_275B                          ; E8 45 0D
        jge     L_1A21                          ; 7D 09
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
        jmp     L_1ABA                          ; E9 99 00
L_1A21:
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_240E                          ; E8 E7 09
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 E0 09
        call    L_275B                          ; E8 2A 0D
        jne     L_1A36                          ; 75 03
        jmp     L_1ABA                          ; E9 84 00
L_1A36:
        cmp     byte ptr [0xa7e], 0x71          ; 80 3E 7E 0A 71
        jne     L_1A4F                          ; 75 12
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_240E                          ; E8 CB 09
        lea     bx, [0x5b2]                     ; 8D 1E B2 05
        call    L_240E                          ; E8 C4 09
        call    L_275B                          ; E8 0E 0D
        je      L_1ABA                          ; 74 6B
L_1A4F:
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_27CA                          ; E8 6A 0D
        add     sp, 8                           ; 83 C4 08
        lea     di, [bp - 8]                    ; 8D 7E F8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_139D                          ; E8 20 F9
        add     sp, 8                           ; 83 C4 08
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        call    L_41F3                          ; E8 6A 27
        add     sp, 6                           ; 83 C4 06
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 6C F9
        add     sp, 4                           ; 83 C4 04
        mov     bx, ax                          ; 8B D8
        call    L_240E                          ; E8 72 09
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 6B 09
        call    L_275B                          ; E8 B5 0C
        jne     L_1AB7                          ; 75 0F
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x78                        ; B8 78 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A DB 1A 00 00 [FIXUP]
L_1AB7:
        call    L_1B38                          ; E8 7E 00
L_1ABA:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1AC0 -- offset 0x1AC0 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_kernel, small
; callers: sub_1F51
; calls (intra): sub_165C
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_1AC0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0xb04], 0             ; 83 3E 04 0B 00
        je      L_1AE1                          ; 74 17
        mov     word ptr [0xb04], 0             ; C7 06 04 0B 00 00
        mov     ax, 0x624                       ; B8 24 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 08 1B 00 00 [FIXUP]
        jmp     L_1AE4                          ; EB 03
L_1AE1:
        call    L_165C                          ; E8 78 FB
L_1AE4:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [0x618], al            ; A2 18 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1AEE -- offset 0x1AEE -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: calls_kernel, small
; callers: sub_1F51
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_1AEE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0xada], 0             ; C7 06 DA 0A 00 00
        mov     word ptr [0xb04], 1             ; C7 06 04 0B 01 00
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7b                        ; B8 7B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A C3 14 00 00 [FIXUP]
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_1B1A                          ; 75 07
        cmp     byte ptr [0xa7e], 0x63          ; 80 3E 7E 0A 63
        jne     L_1B2E                          ; 75 14
L_1B1A:
        mov     ax, 0x624                       ; B8 24 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 4D 1B 00 00 [FIXUP]
        mov     byte ptr [0x618], 0             ; C6 06 18 06 00
L_1B2E:
        mov     word ptr [0xa80], 0             ; C7 06 80 0A 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B38 -- offset 0x1B38 -- 66 instr
; Funcion mediana (66 instr, 6 calls).
; tags: calls_kernel, medium
; callers: sub_165C, sub_19E8, sub_1F51, sub_2084
; calls (intra): sub_13C9, sub_1400, sub_240E, sub_275B
; calls (inter): KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_1B38:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 83 1B 00 00 [FIXUP]
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1400                          ; E8 A7 F8
        add     sp, 4                           ; 83 C4 04
        mov     bx, ax                          ; 8B D8
        call    L_240E                          ; E8 AD 08
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 A6 08
        call    L_275B                          ; E8 F0 0B
        je      L_1B87                          ; 74 1A
L_1B6D:
        mov     bx, di                          ; 8B DF
        inc     di                              ; 47
        add     bx, bp                          ; 03 DD
        cmp     byte ptr [bx - 0x18], 0x30      ; 80 7F E8 30
        je      L_1B6D                          ; 74 F5
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp + di - 0x19]            ; 8D 43 E7
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F2 1C 00 00 [FIXUP]
L_1B87:
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_13C9                          ; E8 36 F8
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        je      L_1BC5                          ; 74 2B
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 51 14 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_1BA6:
        dec     si                              ; 4E
        cmp     byte ptr [si + 0x604], 0x30     ; 80 BC 04 06 30
        je      L_1BA6                          ; 74 F8
        lea     ax, [si + 1]                    ; 8D 44 01
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     ax, 0xb                         ; 3D 0B 00
        jge     L_1BBD                          ; 7D 04
        mov     bx, ax                          ; 8B D8
        jmp     L_1BC0                          ; EB 03
L_1BBD:
        mov     bx, 0xb                         ; BB 0B 00
L_1BC0:
        mov     byte ptr [bx + 0x604], 0        ; C6 87 04 06 00
L_1BC5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1BCB -- offset 0x1BCB -- 88 instr
; Dispatcher: tabla de decisiones cmp+jcc (88 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_08A2, sub_0B8C
; calls (intra): sub_08A2
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.CLOSECLIPBOARD, USER.GETCLIPBOARDDATA, USER.OPENCLIPBOARD
;----------------------------------------------------------------------
L_1BCB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        call    far USER.OPENCLIPBOARD          ; 9A B6 1C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1BE3                          ; 75 03
        jmp     L_1C92                          ; E9 AF 00
L_1BE3:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_1BF5                          ; 75 03
        jmp     L_1C92                          ; E9 9D 00
L_1BF5:
        push    si                              ; 56
        call    far KERNEL.GLOBALLOCK           ; 9A DA 1C 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
L_1C07:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        or      al, al                          ; 0A C0
        je      L_1C8C                          ; 74 78
        cmp     byte ptr es:[bx], 0x41          ; 26 80 3F 41
        jl      L_1C24                          ; 7C 0A
        cmp     byte ptr es:[bx], 0x5a          ; 26 80 3F 5A
        jg      L_1C24                          ; 7F 04
        add     al, 0x20                        ; 04 20
        jmp     L_1C27                          ; EB 03
L_1C24:
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
L_1C27:
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        cmp     al, 0x6d                        ; 3C 6D
        jne     L_1C67                          ; 75 39
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        cmp     al, 0x41                        ; 3C 41
        jl      L_1C47                          ; 7C 09
        cmp     al, 0x5a                        ; 3C 5A
        jg      L_1C47                          ; 7F 05
        lea     ax, [di + 0x20]                 ; 8D 45 20
        jmp     L_1C49                          ; EB 02
L_1C47:
        mov     ax, di                          ; 8B C7
L_1C49:
        cmp     ax, 0x2b                        ; 3D 2B 00
        je      L_1C7A                          ; 74 2C
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_1C63                          ; 74 10
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_1C86                          ; 74 2E
        cmp     ax, 0x72                        ; 3D 72 00
        je      L_1C80                          ; 74 23
        mov     byte ptr [bp - 2], 0x20         ; C6 46 FE 20
        jmp     L_1C67                          ; EB 04
L_1C63:
        mov     byte ptr [bp - 2], 1            ; C6 46 FE 01
L_1C67:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_08A2                          ; E8 30 EC
        add     sp, 2                           ; 83 C4 02
        call    0                               ; E8 88 E3
        jmp     L_1C07                          ; EB 8D
L_1C7A:
        mov     byte ptr [bp - 2], 2            ; C6 46 FE 02
        jmp     L_1C67                          ; EB E7
L_1C80:
        mov     byte ptr [bp - 2], 3            ; C6 46 FE 03
        jmp     L_1C67                          ; EB E1
L_1C86:
        mov     byte ptr [bp - 2], 4            ; C6 46 FE 04
        jmp     L_1C67                          ; EB DB
L_1C8C:
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A F8 1C 00 00 [FIXUP]
L_1C92:
        call    far USER.CLOSECLIPBOARD         ; 9A 07 1D 00 00 [FIXUP]
        mov     ax, 0x3d                        ; B8 3D 00
        push    ax                              ; 50
        call    L_08A2                          ; E8 04 EC
        add     sp, 2                           ; 83 C4 02
        call    0                               ; E8 5C E3
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1CAA -- offset 0x1CAA -- 42 instr
; Funcion mediana (42 instr, 8 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_08A2, sub_0B8C
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRCPY, USER.CLOSECLIPBOARD, USER.EMPTYCLIPBOARD (+2 mas)
;----------------------------------------------------------------------
L_1CAA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    word ptr [0xb0a]                ; FF 36 0A 0B
        call    far USER.OPENCLIPBOARD          ; 9A 46 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1D0B                          ; 74 4D
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_1D0B                          ; 74 33
        push    si                              ; 56
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_1D0B                          ; 74 23
        push    dx                              ; 52
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B3 1A 00 00 [FIXUP]
        push    si                              ; 56
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        call    far USER.CLOSECLIPBOARD         ; 9A 5B 0B 00 00 [FIXUP]
L_1D0B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D10 -- offset 0x1D10 -- 112 instr
; Iterador con instrucciones de string (movsb/scasb/...) (112 instr).
; tags: complex_iterator, string_op
; callers: sub_1F51
; calls (intra): sub_139D, sub_1400, sub_240E, sub_2548, sub_26BE, sub_271E (+2 mas)
;----------------------------------------------------------------------
L_1D10:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 E0 F6
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 CA F6
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x10]                 ; 8D 7E F0
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 C4 06
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 BD 06
        call    L_275B                          ; E8 07 0A
        jle     L_1D82                          ; 7E 2C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 B2 06
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 AB 06
        call    L_275B                          ; E8 F5 09
        jle     L_1DC4                          ; 7E 5C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 A0 06
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_26BE                          ; E8 49 09
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 93 06
        call    L_275B                          ; E8 DD 09
        jge     L_1DC4                          ; 7D 44
        jmp     L_1DBE                          ; EB 3C
L_1D82:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 86 06
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 7F 06
        call    L_275B                          ; E8 C9 09
        jge     L_1DC4                          ; 7D 30
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 74 06
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 6D 06
        call    L_275B                          ; E8 B7 09
        jge     L_1DC4                          ; 7D 1E
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 62 06
        lea     bx, [0x5aa]                     ; 8D 1E AA 05
        call    L_26BE                          ; E8 0B 09
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 55 06
        call    L_275B                          ; E8 9F 09
        jle     L_1DC4                          ; 7E 06
L_1DBE:
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_1DC4:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_1DFD                          ; 75 32
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 3D 06
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_271E                          ; E8 47 09
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_2548                          ; E8 6B 07
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_139D                          ; E8 AF F5
        add     sp, 8                           ; 83 C4 08
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ax                              ; 50
        call    L_41F3                          ; E8 F9 23
        add     sp, 6                           ; 83 C4 06
L_1DFD:
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_240E                          ; E8 0B 06
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 04 06
        call    L_275B                          ; E8 4E 09
        jne     L_1E17                          ; 75 08
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        jmp     L_1E1D                          ; EB 06
L_1E17:
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
L_1E1D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1E23 -- offset 0x1E23 -- 12 instr
; Wrapper que delega en sub_41F3.
; tags: wrapper
; callers: sub_1F51
; calls (intra): sub_41F3
;----------------------------------------------------------------------
L_1E23:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x81                        ; B8 81 00
        push    ax                              ; 50
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ax                              ; 50
        call    L_41F3                          ; E8 C2 23
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1E3E -- offset 0x1E3E -- 112 instr
; Iterador con instrucciones de string (movsb/scasb/...) (112 instr).
; tags: complex_iterator, string_op
; callers: sub_1F51
; calls (intra): sub_139D, sub_1400, sub_240E, sub_2548, sub_26A6, sub_271E (+2 mas)
;----------------------------------------------------------------------
L_1E3E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 B2 F5
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 9C F5
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x10]                 ; 8D 7E F0
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 96 05
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 8F 05
        call    L_275B                          ; E8 D9 08
        jge     L_1EB0                          ; 7D 2C
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 84 05
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 7D 05
        call    L_275B                          ; E8 C7 08
        jle     L_1EF2                          ; 7E 5C
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 72 05
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_271E                          ; E8 7B 08
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 65 05
        call    L_275B                          ; E8 AF 08
        jge     L_1EF2                          ; 7D 44
        jmp     L_1EEC                          ; EB 3C
L_1EB0:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 58 05
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 51 05
        call    L_275B                          ; E8 9B 08
        jle     L_1EF2                          ; 7E 30
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 46 05
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 3F 05
        call    L_275B                          ; E8 89 08
        jge     L_1EF2                          ; 7D 1E
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 34 05
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_26A6                          ; E8 C5 07
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 27 05
        call    L_275B                          ; E8 71 08
        jle     L_1EF2                          ; 7E 06
L_1EEC:
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_1EF2:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_1F2B                          ; 75 32
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 0F 05
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_26A6                          ; E8 A1 07
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_2548                          ; E8 3D 06
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_139D                          ; E8 81 F4
        add     sp, 8                           ; 83 C4 08
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ax                              ; 50
        call    L_41F3                          ; E8 CB 22
        add     sp, 6                           ; 83 C4 06
L_1F2B:
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_240E                          ; E8 DD 04
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 D6 04
        call    L_275B                          ; E8 20 08
        jne     L_1F45                          ; 75 08
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        jmp     L_1F4B                          ; EB 06
L_1F45:
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
L_1F4B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F51 -- offset 0x1F51 -- 117 instr
; Dispatcher: tabla de decisiones cmp+jcc (117 instr).
; tags: calls_kernel, dispatcher
; callers: sub_08A2, sub_0D20
; calls (intra): sub_1614, sub_165C, sub_19E8, sub_1AC0, sub_1AEE, sub_1B38 (+4 mas)
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_1F51:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [0xb06], al            ; A2 06 0B
        sub     ah, ah                          ; 2A E4
        cmp     ax, 0x2e                        ; 3D 2E 00
        je      L_1F83                          ; 74 22
        jbe     L_1F66                          ; 76 03
        jmp     L_203A                          ; E9 D4 00
L_1F66:
        cmp     ax, 3                           ; 3D 03 00
        je      L_1FE8                          ; 74 7D
        jbe     L_1F70                          ; 76 03
        jmp     L_201B                          ; E9 AB 00
L_1F70:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_1F78                          ; 75 03
        jmp     L_2007                          ; E9 8F 00
L_1F78:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1F80                          ; 75 03
        jmp     L_2002                          ; E9 82 00
L_1F80:
        jmp     L_2080                          ; E9 FD 00
L_1F83:
        cmp     word ptr [0xada], 0             ; 83 3E DA 0A 00
        jne     L_1F9F                          ; 75 15
        cmp     byte ptr [bp + 4], 0xb1         ; 80 7E 04 B1
        je      L_1F9F                          ; 74 0F
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x84                        ; B8 84 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F3 1F 00 00 [FIXUP]
L_1F9F:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_1614                          ; E8 6C F6
        add     sp, 2                           ; 83 C4 02
        cmp     byte ptr [bp + 4], 0xb1         ; 80 7E 04 B1
        jne     L_1FB4                          ; 75 03
        jmp     L_2080                          ; E9 CC 00
L_1FB4:
        mov     word ptr [0xada], 1             ; C7 06 DA 0A 01 00
        jmp     L_2080                          ; E9 C3 00
L_1FBD:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_1AC0                          ; E8 FA FA
        add     sp, 2                           ; 83 C4 02
L_1FC9:
        mov     word ptr [0xada], 0             ; C7 06 DA 0A 00 00
        jmp     L_2080                          ; E9 AE 00
L_1FD2:
        mov     word ptr [0xada], 0             ; C7 06 DA 0A 00 00
        call    L_165C                          ; E8 81 F6
        mov     byte ptr [0x618], 0             ; C6 06 18 06 00
        jmp     L_2080                          ; E9 9D 00
L_1FE3:
        call    L_19E8                          ; E8 02 FA
        jmp     L_1FC9                          ; EB E1
L_1FE8:
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 25 1B 00 00 [FIXUP]
L_1FF7:
        mov     word ptr [0xada], 0             ; C7 06 DA 0A 00 00
        call    L_1B38                          ; E8 38 FB
        jmp     L_2080                          ; EB 7E
L_2002:
        call    L_1D10                          ; E8 0B FD
        jmp     L_1FF7                          ; EB F0
L_2007:
        call    L_1E3E                          ; E8 34 FE
        jmp     L_1FF7                          ; EB EB
L_200C:
        call    L_1E23                          ; E8 14 FE
        jmp     L_2080                          ; EB 6F
L_2011:
        call    L_2084                          ; E8 70 00
        jmp     L_1FC9                          ; EB B3
L_2016:
        call    L_1AEE                          ; E8 D5 FA
        jmp     L_2080                          ; EB 65
L_201B:
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_2011                          ; 74 F1
        ja      L_2029                          ; 77 07
        cmp     ax, 4                           ; 3D 04 00
        je      L_200C                          ; 74 E5
        jmp     L_2080                          ; EB 57
L_2029:
        cmp     ax, 0x2a                        ; 3D 2A 00
        jb      L_2080                          ; 72 52
        cmp     ax, 0x2b                        ; 3D 2B 00
        jbe     L_1FBD                          ; 76 8A
        cmp     ax, 0x2d                        ; 3D 2D 00
        je      L_1FBD                          ; 74 85
        jmp     L_2080                          ; EB 46
L_203A:
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_2016                          ; 74 D7
        ja      L_2060                          ; 77 1F
        cmp     ax, 0x2f                        ; 3D 2F 00
        jne     L_2049                          ; 75 03
        jmp     L_1FBD                          ; E9 74 FF
L_2049:
        cmp     ax, 0x30                        ; 3D 30 00
        jb      L_2080                          ; 72 32
        cmp     ax, 0x39                        ; 3D 39 00
        ja      L_2056                          ; 77 03
        jmp     L_1F83                          ; E9 2D FF
L_2056:
        cmp     ax, 0x3d                        ; 3D 3D 00
        jne     L_205E                          ; 75 03
        jmp     L_1FD2                          ; E9 74 FF
L_205E:
        jmp     L_2080                          ; EB 20
L_2060:
        cmp     ax, 0x6e                        ; 3D 6E 00
        jne     L_2068                          ; 75 03
        jmp     L_1F83                          ; E9 1B FF
L_2068:
        cmp     ax, 0x70                        ; 3D 70 00
        jne     L_2070                          ; 75 03
        jmp     L_1FBD                          ; E9 4D FF
L_2070:
        cmp     ax, 0x71                        ; 3D 71 00
        jne     L_2078                          ; 75 03
        jmp     L_1FE3                          ; E9 6B FF
L_2078:
        cmp     ax, 0xb1                        ; 3D B1 00
        jne     L_2080                          ; 75 03
        jmp     L_1F83                          ; E9 03 FF
L_2080:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2084 -- offset 0x2084 -- 101 instr
; Iterador con instrucciones de string (movsb/scasb/...) (101 instr).
; tags: complex_iterator, string_op
; callers: sub_1F51
; calls (intra): sub_139D, sub_1400, sub_1B38, sub_240E, sub_2548, sub_25A0 (+4 mas)
;----------------------------------------------------------------------
L_2084:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 6C F3
        add     sp, 4                           ; 83 C4 04
        mov     bx, ax                          ; 8B D8
        call    L_240E                          ; E8 72 03
        lea     bx, [0x5ba]                     ; 8D 1E BA 05
        call    L_26EE                          ; E8 4B 06
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_2548                          ; E8 9F 04
        mov     ax, 0x624                       ; B8 24 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 4F F3
        add     sp, 4                           ; 83 C4 04
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 49 03
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 42 03
        call    L_275B                          ; E8 8C 06
        jl      L_20D9                          ; 7C 08
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 37 03
        jmp     L_20E2                          ; EB 09
L_20D9:
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 2F 03
        call    L_25A0                          ; E8 BE 04
L_20E2:
        lea     bx, [0x5b2]                     ; 8D 1E B2 05
        call    L_240E                          ; E8 25 03
        call    L_275B                          ; E8 6F 06
        jle     L_213B                          ; 7E 4D
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 1A 03
        lea     bx, [0x582]                     ; 8D 1E 82 05
        call    L_240E                          ; E8 13 03
        call    L_275B                          ; E8 5D 06
        jl      L_2108                          ; 7C 08
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 08 03
        jmp     L_2111                          ; EB 09
L_2108:
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 00 03
        call    L_25A0                          ; E8 8F 04
L_2111:
        lea     bx, [0x5b2]                     ; 8D 1E B2 05
        call    L_240E                          ; E8 F6 02
        call    L_275B                          ; E8 40 06
        jle     L_213B                          ; 7E 1E
        lea     bx, [0x5a2]                     ; 8D 1E A2 05
        call    L_240E                          ; E8 EA 02
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_26EE                          ; E8 C4 05
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_240E                          ; E8 DE 02
        call    L_275B                          ; E8 28 06
        jge     L_213B                          ; 7D 06
        mov     word ptr [0xa80], 1             ; C7 06 80 0A 01 00
L_213B:
        cmp     word ptr [0xa80], 0             ; 83 3E 80 0A 00
        jne     L_2174                          ; 75 32
        lea     bx, [bp - 0x18]                 ; 8D 5E E8
        call    L_240E                          ; E8 C6 02
        lea     bx, [bp - 0x10]                 ; 8D 5E F0
        call    L_26D6                          ; E8 88 05
        lea     bx, [bp - 8]                    ; 8D 5E F8
        call    L_2548                          ; E8 F4 03
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 8]                    ; 8D 76 F8
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_139D                          ; E8 38 F2
        add     sp, 8                           ; 83 C4 08
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        call    L_41F3                          ; E8 82 20
        add     sp, 6                           ; 83 C4 06
L_2174:
        call    L_1B38                          ; E8 C1 F9
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_217D -- offset 0x217D -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_kernel, small
; callers: sub_037C
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_217D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0xada], 0             ; C7 06 DA 0A 00 00
        mov     word ptr [0xa80], 0             ; C7 06 80 0A 00 00
        mov     word ptr [0xb04], 1             ; C7 06 04 0B 01 00
        mov     byte ptr [0x618], 0             ; C6 06 18 06 00
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x86                        ; B8 86 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B1 21 00 00 [FIXUP]
        mov     ax, 0xaac                       ; B8 AC 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x89                        ; B8 89 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A D0 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_21B9 -- offset 0x21B9 -- 51 instr
; Funcion mediana (51 instr, 5 calls).
; tags: calls_kernel, medium
; callers: sub_0B8C
; calls (intra): sub_1400, sub_240E, sub_2575, sub_419E
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_21B9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        mov     ax, 0x840                       ; B8 40 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 9B 1F 00 00 [FIXUP]
        mov     ax, 0x604                       ; B8 04 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1400                          ; E8 24 F2
        add     sp, 4                           ; 83 C4 04
        mov     bx, ax                          ; 8B D8
        call    L_240E                          ; E8 2A 02
        call    L_2575                          ; E8 8E 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x8c                        ; B8 8C 00
        push    ax                              ; 50
        mov     ax, 0x604                       ; B8 04 06
        push    ax                              ; 50
        call    L_419E                          ; E8 A4 1F
        add     sp, 8                           ; 83 C4 08
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_220B                          ; 7C 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        jmp     L_2218                          ; EB 0D
L_220B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
L_2218:
        cmp     dx, 1                           ; 83 FA 01
        jg      L_2226                          ; 7F 09
        jl      L_2223                          ; 7C 04
        or      ax, ax                          ; 0B C0
        jae     L_2226                          ; 73 03
L_2223:
        call    0                               ; E8 DA DD
L_2226:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2230 -- offset 0x2230 -- 40 instr
; Llama a servicios DOS via INT 21h (40 instr).
; tags: calls_kernel, calls_user, dos_caller, int_21
; callers: sub_4475, sub_4644, sub_4772, sub_47FE, sub_489E, sub_48EB (+6 mas)
; calls (intra): sub_0E51, sub_407B, sub_410D
; calls (inter): KERNEL.FATALEXIT, KERNEL.INITTASK, KERNEL.WAITEVENT, USER.INITAPP
;----------------------------------------------------------------------
L_2230:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_224D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_224D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_2249                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_2249:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_224D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2290                          ; 74 2B
        mov     word ptr [0x338], 0             ; C7 06 38 03 00 00
        mov     word ptr [0x90], cx             ; 89 0E 90 00
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_407B                          ; E8 04 1E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2290                          ; 74 07
        call    L_0E51                          ; E8 C5 EB
        push    ax                              ; 50
        call    L_410D                          ; E8 7D 1E
L_2290:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2295 -- offset 0x2295 -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_3FD7
;----------------------------------------------------------------------
L_2295:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_22A6 -- offset 0x22A6 -- 177 instr
; Iterador con instrucciones de string (movsb/scasb/...) (177 instr).
; tags: calls_kernel, complex_iterator, string_op
; callers: sub_430D
; calls (intra): sub_422F
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALCOMPACT, KERNEL.GLOBALFREE, KERNEL.GLOBALSIZE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE (+2 mas)
;----------------------------------------------------------------------
L_22A6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A C7 22 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FE 22 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A 0D 23 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A B1 10 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A 1D 11 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A 76 23 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A CE 1C 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2383                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2385                          ; EB 02
L_2383:
        sub     ax, ax                          ; 2B C0
L_2385:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_422F                          ; E8 95 1E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, 0xc                         ; 83 C3 0C
        mov     di, bx                          ; 8B FB
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ds, cx                          ; 8E D9
        mov     si, bx                          ; 8B F3
        jmp     L_23D6                          ; EB 16
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, 0xc                         ; 83 C3 0C
        mov     di, bx                          ; 8B FB
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     si, bx                          ; 8B F3
L_23D6:
        cmp     bx, 0x220                       ; 81 FB 20 02
        je      L_243A                          ; 74 5E
        mov     word ptr [0x228], bx            ; 89 1E 28 02
        mov     word ptr [bx - 4], si           ; 89 77 FC
        mov     byte ptr [bx - 2], 3            ; C6 47 FE 03
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, 0xc                         ; 83 C3 0C
        mov     di, bx                          ; 8B FB
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ds, cx                          ; 8E D9
        mov     si, bx                          ; 8B F3
        jmp     L_2426                          ; EB 18
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_240E -- offset 0x240E -- 36 instr
; Iterador con instrucciones de string (movsb/scasb/...) (36 instr).
; tags: iterator, string_op
; callers: sub_1400, sub_165C, sub_19E8, sub_1B38, sub_1D10, sub_1E3E (+3 mas)
;----------------------------------------------------------------------
L_240E:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     bx, 0xc                         ; 83 C3 0C
        mov     di, bx                          ; 8B FB
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     si, bx                          ; 8B F3
L_2426:
        cmp     bx, 0x220                       ; 81 FB 20 02
        je      L_243A                          ; 74 0E
        mov     word ptr [0x228], bx            ; 89 1E 28 02
        mov     byte ptr [bx - 2], 7            ; C6 47 FE 07
        mov     word ptr [bx - 4], si           ; 89 77 FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_243A:
        jmp     L_2831                          ; E9 F4 03
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        jmp     L_245E                          ; EB 14
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        jmp     L_245E                          ; EB 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        jmp     L_245E                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_245B -- offset 0x245B -- 75 instr
; Iterador con instrucciones de string (movsb/scasb/...) (75 instr).
; tags: complex_iterator, string_op
; callers: sub_1400
; calls (intra): sub_2E4E, sub_31B9
;----------------------------------------------------------------------
L_245B:
        mov     ax, word ptr [bx]               ; 8B 07
        cdq                                     ; 99
L_245E:
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, dx                          ; 8B DA
        mov     dx, ax                          ; 8B D0
        mov     al, bh                          ; 8A C7
        and     al, 0x80                        ; 24 80
        jns     L_2471                          ; 79 07
        neg     bx                              ; F7 DB
        neg     dx                              ; F7 DA
        sbb     bx, 0                           ; 83 DB 00
L_2471:
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        add     di, 0xc                         ; 83 C7 0C
        cmp     di, 0x220                       ; 81 FF 20 02
L_247C:
        je      L_243A                          ; 74 BC
        mov     word ptr [0x228], di            ; 89 3E 28 02
        mov     word ptr [di - 4], di           ; 89 7D FC
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cmp     bh, 0                           ; 80 FF 00
        jne     L_249A                          ; 75 0C
        mov     byte ptr [di - 2], 3            ; C6 45 FE 03
        mov     ah, 0x9e                        ; B4 9E
        call    L_2E4E                          ; E8 B7 09
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_249A:
        mov     byte ptr [di - 2], 7            ; C6 45 FE 07
        push    bp                              ; 55
        mov     bp, 0x8760                      ; BD 60 87
        mov     cx, bx                          ; 8B CB
        xor     bx, bx                          ; 33 DB
        mov     di, bx                          ; 8B FB
        call    L_31B9                          ; E8 0E 0D
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     si, word ptr [di - 4]           ; 8B 75 FC
        mov     al, byte ptr [di - 2]           ; 8A 45 FE
        add     di, 0xc                         ; 83 C7 0C
        cmp     di, 0x220                       ; 81 FF 20 02
        je      L_247C                          ; 74 B4
        mov     word ptr [0x228], di            ; 89 3E 28 02
        mov     word ptr [di - 4], di           ; 89 7D FC
        mov     byte ptr [di - 2], al           ; 88 45 FE
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        cmp     al, 3                           ; 3C 03
        je      L_24DB                          ; 74 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
L_24DB:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        mov     ax, ss                          ; 8C D0
        jmp     L_24E4                          ; EB 02
        mov     ax, ds                          ; 8C D8
L_24E4:
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     di, bx                          ; 8B FB
        cld                                     ; FC
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     word ptr [0x228], 0xc           ; 83 06 28 02 0C
        jmp     L_2507                          ; EB 11
        mov     ax, ss                          ; 8C D0
        jmp     L_24FC                          ; EB 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_24FA -- offset 0x24FA -- 16 instr
; Iterador con instrucciones de string (movsb/scasb/...) (16 instr).
; tags: iterator, string_op
; callers: sub_3867
;----------------------------------------------------------------------
L_24FA:
        mov     ax, ds                          ; 8C D8
L_24FC:
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     di, bx                          ; 8B FB
        cld                                     ; FC
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
L_2507:
        cmp     byte ptr [bx - 2], 3            ; 80 7F FE 03
        jne     L_251A                          ; 75 0D
        mov     si, word ptr [bx - 4]           ; 8B 77 FC
L_2510:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     word ptr [0x228], 0xc           ; 83 2E 28 02 0C
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_251A -- offset 0x251A -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: small
; calls (intra): sub_2926
;----------------------------------------------------------------------
L_251A:
        push    bp                              ; 55
        mov     word ptr [0xb4], sp             ; 89 26 B4 00
        mov     si, word ptr [bx - 4]           ; 8B 77 FC
        push    di                              ; 57
        call    L_2926                          ; E8 00 04
        pop     di                              ; 5F
        mov     bx, si                          ; 8B DE
        pop     bp                              ; 5D
        jmp     L_2510                          ; EB E4
        mov     ax, ss                          ; 8C D0
        jmp     L_2532                          ; EB 02
        mov     ax, ds                          ; 8C D8
L_2532:
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     di, bx                          ; 8B FB
        cld                                     ; FC
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
        add     word ptr [0x228], 0xc           ; 83 06 28 02 0C
        jmp     L_2555                          ; EB 11
        mov     ax, ss                          ; 8C D0
        jmp     L_254A                          ; EB 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2548 -- offset 0x2548 -- 23 instr
; Iterador con instrucciones de string (movsb/scasb/...) (23 instr).
; tags: iterator, string_op
; callers: sub_1400, sub_165C, sub_1D10, sub_1E3E, sub_2084
; calls (intra): sub_28A3
;----------------------------------------------------------------------
L_2548:
        mov     ax, ds                          ; 8C D8
L_254A:
        mov     es, ax                          ; 8E C0
        push    si                              ; 56
        push    di                              ; 57
        mov     di, bx                          ; 8B FB
        cld                                     ; FC
        mov     bx, word ptr [0x228]            ; 8B 1E 28 02
L_2555:
        cmp     byte ptr [bx - 2], 7            ; 80 7F FE 07
        jne     L_256A                          ; 75 0F
        mov     si, word ptr [bx - 4]           ; 8B 77 FC
L_255E:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     word ptr [0x228], 0xc           ; 83 2E 28 02 0C
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_256A:
        xchg    di, bx                          ; 87 DF
        call    L_28A3                          ; E8 34 03
        mov     si, di                          ; 8B F7
        xchg    di, bx                          ; 87 DF
        jmp     L_255E                          ; EB E9
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2575 -- offset 0x2575 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_21B9
; calls (intra): sub_2A4A, sub_2A4F
;----------------------------------------------------------------------
L_2575:
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        mov     word ptr [0xb4], sp             ; 89 26 B4 00
        push    bx                              ; 53
        push    cx                              ; 51
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        sub     si, 0xc                         ; 83 EE 0C
        mov     word ptr [0x228], si            ; 89 36 28 02
        cmp     byte ptr [si + 0xa], 3          ; 80 7C 0A 03
        mov     si, word ptr [si + 8]           ; 8B 74 08
        jne     L_2597                          ; 75 05
        call    L_2A4A                          ; E8 B5 04
        jmp     L_259A                          ; EB 03
L_2597:
        call    L_2A4F                          ; E8 B5 04
L_259A:
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_25A0 -- offset 0x25A0 -- 145 instr
; Iterador con instrucciones de string (movsb/scasb/...) (145 instr).
; tags: complex_iterator, string_op
; callers: sub_1400, sub_165C, sub_2084
; calls (intra): sub_2869, sub_287F, sub_28A6
;----------------------------------------------------------------------
L_25A0:
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     bl, byte ptr [di - 2]           ; 8A 5D FE
        mov     si, word ptr [di - 4]           ; 8B 75 FC
        cmp     si, di                          ; 3B F7
        jne     L_25B8                          ; 75 08
        xor     bh, bh                          ; 32 FF
        xor     byte ptr [bx + di], 0x80        ; 80 31 80
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_25B8:
        mov     word ptr [di - 4], di           ; 89 7D FC
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        cmp     bl, 3                           ; 80 FB 03
        jne     L_25CE                          ; 75 08
        lodsw   ax, word ptr [si]               ; AD
        xor     ah, 0x80                        ; 80 F4 80
        stosw   word ptr es:[di], ax            ; AB
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_25CE:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lodsw   ax, word ptr [si]               ; AD
        xor     ah, 0x80                        ; 80 F4 80
        stosw   word ptr es:[di], ax            ; AB
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_25E2                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_25E2:
        call    L_2869                          ; E8 84 02
        jmp     L_25EB                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_25EB:
        mov     ax, 8                           ; B8 08 00
        jmp     L_2666                          ; EB 76
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_25FA                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_25FA:
        call    L_2869                          ; E8 6C 02
        jmp     L_2603                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_2603:
        mov     ax, 4                           ; B8 04 00
        jmp     L_2666                          ; EB 5E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_2612                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_2612:
        call    L_2869                          ; E8 54 02
        jmp     L_261B                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_261B:
        mov     ax, 0xc                         ; B8 0C 00
        jmp     L_2666                          ; EB 46
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_262A                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_262A:
        call    L_2869                          ; E8 3C 02
        jmp     L_2633                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_2633:
        mov     ax, 0x14                        ; B8 14 00
        jmp     L_2666                          ; EB 2E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_2642                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_2642:
        call    L_2869                          ; E8 24 02
        jmp     L_264B                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_264B:
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_2666                          ; EB 16
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_265A                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_265A:
        call    L_2869                          ; E8 0C 02
        jmp     L_2663                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_2663:
        mov     ax, 0                           ; B8 00 00
L_2666:
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cmp     byte ptr [di - 2], 7            ; 80 7D FE 07
        je      L_2686                          ; 74 10
L_2676:
        xchg    word ptr [di - 4], di           ; 87 7D FC
        push    bp                              ; 55
        mov     word ptr [0xb4], sp             ; 89 26 B4 00
        call    word ptr [bx + 0x92]            ; FF 97 92 00
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_2686:
        add     bx, 2                           ; 83 C3 02
        mov     di, 0xb6                        ; BF B6 00
        call    L_28A6                          ; E8 17 02
        mov     si, di                          ; 8B F7
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        jmp     L_2676                          ; EB DF
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_26A1                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_26A1:
        call    L_287F                          ; E8 DB 01
        jmp     L_26AA                          ; EB 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_26A6 -- offset 0x26A6 -- 14 instr
; Wrapper que delega en sub_287F.
; tags: wrapper
; callers: sub_1400, sub_165C, sub_1E3E
; calls (intra): sub_287F
;----------------------------------------------------------------------
L_26A6:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_26AA:
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_2725                          ; EB 76
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_26B9                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_26B9:
        call    L_287F                          ; E8 C3 01
        jmp     L_26C2                          ; EB 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_26BE -- offset 0x26BE -- 14 instr
; Wrapper que delega en sub_287F.
; tags: wrapper
; callers: sub_165C, sub_1D10
; calls (intra): sub_287F
;----------------------------------------------------------------------
L_26BE:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_26C2:
        mov     ax, 6                           ; B8 06 00
        jmp     L_2725                          ; EB 5E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_26D1                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_26D1:
        call    L_287F                          ; E8 AB 01
        jmp     L_26DA                          ; EB 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_26D6 -- offset 0x26D6 -- 14 instr
; Wrapper que delega en sub_287F.
; tags: wrapper
; callers: sub_1400, sub_165C, sub_2084
; calls (intra): sub_287F
;----------------------------------------------------------------------
L_26D6:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_26DA:
        mov     ax, 0xe                         ; B8 0E 00
        jmp     L_2725                          ; EB 46
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_26E9                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_26E9:
        call    L_287F                          ; E8 93 01
        jmp     L_26F2                          ; EB 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_26EE -- offset 0x26EE -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: small
; callers: sub_165C, sub_2084
; calls (intra): sub_287F
;----------------------------------------------------------------------
L_26EE:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_26F2:
        mov     ax, 0x16                        ; B8 16 00
        jmp     L_2725                          ; EB 2E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_2701                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_2701:
        call    L_287F                          ; E8 7B 01
        jmp     L_270A                          ; EB 04
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_270A:
        mov     ax, 0x12                        ; B8 12 00
        jmp     L_2725                          ; EB 16
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        jmp     L_2719                          ; EB 02
        push    si                              ; 56
        push    di                              ; 57
L_2719:
        call    L_287F                          ; E8 63 01
        jmp     L_2722                          ; EB 04
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_271E -- offset 0x271E -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: small
; callers: sub_1400, sub_165C, sub_1D10, sub_1E3E
; calls (intra): sub_2897
;----------------------------------------------------------------------
L_271E:
        push    si                              ; 56
        push    di                              ; 57
        mov     si, bx                          ; 8B F3
L_2722:
        mov     ax, 2                           ; B8 02 00
L_2725:
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cmp     byte ptr [di - 2], 7            ; 80 7D FE 07
        je      L_273A                          ; 74 05
        push    si                              ; 56
        call    L_2897                          ; E8 5E 01
        pop     si                              ; 5E
L_273A:
        jmp     L_2676                          ; E9 39 FF
        mov     bx, 4                           ; BB 04 00
        jmp     L_275E                          ; EB 1C
        mov     bx, 8                           ; BB 08 00
        jmp     L_275E                          ; EB 17
        mov     bx, 0xc                         ; BB 0C 00
        jmp     L_275E                          ; EB 12
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_274C -- offset 0x274C -- 4 instr
; Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_165C
;----------------------------------------------------------------------
L_274C:
        mov     bx, 0x10                        ; BB 10 00
        jmp     L_275E                          ; EB 0D
        mov     bx, 0x14                        ; BB 14 00
        jmp     L_275E                          ; EB 08
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2756 -- offset 0x2756 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_1400
;----------------------------------------------------------------------
L_2756:
        mov     bx, 0                           ; BB 00 00
        jmp     L_275E                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_275B -- offset 0x275B -- 45 instr
; Dispatcher: tabla de decisiones cmp+jcc (45 instr).
; tags: dispatcher
; callers: sub_165C, sub_19E8, sub_1B38, sub_1D10, sub_1E3E, sub_2084 (+1 mas)
; calls (intra): sub_2897
;----------------------------------------------------------------------
L_275B:
        mov     bx, 0x18                        ; BB 18 00
L_275E:
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        cmp     byte ptr [di - 2], 7            ; 80 7D FE 07
        je      L_27B5                          ; 74 4B
        cmp     byte ptr [di - 0xe], 7          ; 80 7D F2 07
        je      L_27AD                          ; 74 3D
L_2770:
        sub     di, 0xc                         ; 83 EF 0C
        mov     word ptr [0x228], di            ; 89 3E 28 02
L_2777:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     si, word ptr [di - 4]           ; 8B 75 FC
L_277E:
        mov     word ptr [di - 4], di           ; 89 7D FC
        mov     di, word ptr [di + 8]           ; 8B 7D 08
        cmp     bx, 0x18                        ; 83 FB 18
        jae     L_2796                          ; 73 0D
        push    bp                              ; 55
        mov     word ptr [0xb4], sp             ; 89 26 B4 00
        call    word ptr [bx + 0x92]            ; FF 97 92 00
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_2796:
        sub     word ptr [0x228], 0xc           ; 83 2E 28 02 0C
        call    word ptr [bx + 0x92]            ; FF 97 92 00
        lahf                                    ; 9F
        and     ax, 0x4100                      ; 25 00 41
        shr     ax, 1                           ; D1 E8
        shl     ah, 1                           ; D0 E4
        or      ah, al                          ; 0A E0
        sahf                                    ; 9E
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_27AD:
        add     bx, 2                           ; 83 C3 02
        call    L_2897                          ; E8 E4 00
        jmp     L_2770                          ; EB BB
L_27B5:
        add     bx, 2                           ; 83 C3 02
        cmp     byte ptr [di - 0xe], 7          ; 80 7D F2 07
        je      L_2770                          ; 74 B2
        sub     di, 0xc                         ; 83 EF 0C
        mov     word ptr [0x228], di            ; 89 3E 28 02
        call    L_2897                          ; E8 CF 00
        jmp     L_2777                          ; EB AD
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_27CA -- offset 0x27CA -- 80 instr
; Llama a servicios DOS via INT 21h (80 instr).
; tags: complex_iterator, far, int_21, string_op
; callers: sub_19E8
; calls (intra): sub_3FD7
;----------------------------------------------------------------------
L_27CA:
        mov     bx, 0xaf                        ; BB AF 00
        mov     dx, 0x371c                      ; BA 1C 37
        jmp     L_363A                          ; E9 67 0E
        add     word ptr [bx], 0x6e49           ; 81 07 49 6E
        jbe     L_283A                          ; 76 61
        insb    byte ptr es:[di], dx            ; 6C
        imul    sp, word ptr [si - 0x7d], 0x440b ; 69 64 83 0B 44
        imul    si, word ptr [bp + 0x69], 0x6564 ; 69 76 69 64 65
        and     byte ptr [bp + si + 0x79], ah   ; 20 62 79
        and     byte ptr [bx + si], dh          ; 20 30
        test    byte ptr [bx + si], cl          ; 84 08
        dec     di                              ; 4F
        jbe     L_2853                          ; 76 65
        jb      L_2856                          ; 72 66
        insb    byte ptr es:[di], dx            ; 6C
        outsw   dx, word ptr [si]               ; 6F
        ja      L_277E                          ; 77 8A
        push    cs                              ; 0E
        push    bx                              ; 53
        je      L_2859                          ; 74 61
        arpl    word ptr [bp + di + 0x20], bp   ; 63 6B 20
        outsw   dx, word ptr [si]               ; 6F
        jbe     L_2863                          ; 76 65
        jb      L_2866                          ; 72 66
        insb    byte ptr es:[di], dx            ; 6C
        outsw   dx, word ptr [si]               ; 6F
        ja      L_2811                          ; 77 0D
        or      ah, byte ptr [di + 0x72]        ; 0A 65 72
        jb      L_2878                          ; 72 6F
        jb      L_282B                          ; 72 20
        xor     dh, byte ptr [bx + di]          ; 32 31
        xor     byte ptr [bx + si], dh          ; 30 30
        cmp     ah, byte ptr [bx + si]          ; 3A 20
L_2811:
        inc     si                              ; 46
        insb    byte ptr es:[di], dx            ; 6C
        outsw   dx, word ptr [si]               ; 6F
        popaw                                   ; 61
        je      L_2880                          ; 74 69
        outsb   dx, byte ptr [si]               ; 6E
        and     byte ptr [eax + 0x6f], dh       ; 67 20 70 6F
        imul    bp, word ptr [bp + 0x74], 0x6520 ; 69 6E 74 20 65
        jb      L_2895                          ; 72 72
        outsw   dx, word ptr [si]               ; 6F
        jb      L_2860                          ; 72 3A
        and     byte ptr [bp + 0x27e9], bh      ; 20 BE E9 27
        jmp     L_2839                          ; EB 0D
L_282C:
        mov     si, 0x27dc                      ; BE DC 27
        jmp     L_2839                          ; EB 08
L_2831:
        mov     si, 0x27f3                      ; BE F3 27
        jmp     L_2839                          ; EB 03
L_2836:
        mov     si, 0x27d3                      ; BE D3 27
L_2839:
        cld                                     ; FC
L_283A:
        push    ds                              ; 1E
        push    si                              ; 56
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     bx, 2                           ; BB 02 00
        mov     cx, 0x24                        ; B9 24 00
        mov     dx, 0x2803                      ; BA 03 28
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        inc     si                              ; 46
        lodsb   al, byte ptr [si]               ; AC
        cwde                                    ; 98
        xchg    cx, ax                          ; 91
        mov     dx, si                          ; 8B D6
        mov     ah, 0x40                        ; B4 40
L_2853:
        int     0x21                            ; CD 21
        mov     cx, bx                          ; 8B CB
        mov     dx, 0x2803                      ; BA 03 28
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        pop     si                              ; 5E
        lodsb   al, byte ptr [si]               ; AC
L_2860:
        pop     ds                              ; 1F
        xor     ah, ah                          ; 32 E4
L_2863:
        push    ax                              ; 50
        call    L_3FD7                          ; E8 70 17
        clc                                     ; F8
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2869 -- offset 0x2869 -- 12 instr
; Iterador con instrucciones de string (movsb/scasb/...) (12 instr).
; tags: iterator, string_op
; callers: sub_25A0
;----------------------------------------------------------------------
L_2869:
        mov     si, bx                          ; 8B F3
        mov     di, 0xb6                        ; BF B6 00
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
L_2878:
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ds, cx                          ; 8E D9
        mov     si, 0xb6                        ; BE B6 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_287F -- offset 0x287F -- 14 instr
; Iterador con instrucciones de string (movsb/scasb/...) (14 instr).
; tags: iterator, string_op
; callers: sub_25A0, sub_26A6, sub_26BE, sub_26D6, sub_26EE
;----------------------------------------------------------------------
L_287F:
        mov     si, bx                          ; 8B F3
        mov     di, 0xb6                        ; BF B6 00
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ds, cx                          ; 8E D9
        mov     si, 0xb6                        ; BE B6 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2897 -- offset 0x2897 -- 4 instr
; Funcion hoja (no llama a otras, 4 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_271E, sub_275B
;----------------------------------------------------------------------
L_2897:
        mov     si, word ptr [di - 4]           ; 8B 75 FC
        mov     word ptr [di - 4], di           ; 89 7D FC
        mov     byte ptr [di - 2], 7            ; C6 45 FE 07
        jmp     L_28A6                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_28A3 -- offset 0x28A3 -- 1 instr
; Stub trivial (1 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2548
;----------------------------------------------------------------------
L_28A3:
        mov     si, word ptr [di - 4]           ; 8B 75 FC
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_28A6 -- offset 0x28A6 -- 54 instr
; Funcion mediana (54 instr, 0 calls).
; tags: medium
; callers: sub_25A0
;----------------------------------------------------------------------
L_28A6:
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        mov     cx, word ptr [si]               ; 8B 0C
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        test    dx, 0x7f80                      ; F7 C2 80 7F
        je      L_28D9                          ; 74 25
        mov     word ptr [di], ax               ; 89 05
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     word ptr [di + 4], cx           ; 89 4D 04
        and     dh, 0x8f                        ; 80 E6 8F
        add     dx, 0x3800                      ; 81 C2 00 38
        mov     word ptr [di + 6], dx           ; 89 55 06
        ret                                     ; C3
L_28D9:
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     word ptr [di + 6], ax           ; 89 45 06
        ret                                     ; C3
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        cld                                     ; FC
        mov     cx, word ptr [si]               ; 8B 0C
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        xor     ax, ax                          ; 33 C0
        test    dx, 0x7f80                      ; F7 C2 80 7F
        je      L_2920                          ; 74 29
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        sar     dx, 1                           ; D1 FA
        rcr     cx, 1                           ; D1 D9
        rcr     ax, 1                           ; D1 D8
        and     dh, 0x8f                        ; 80 E6 8F
        add     dx, 0x3800                      ; 81 C2 00 38
L_2910:
        mov     word ptr [di], 0                ; C7 05 00 00
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     word ptr [di + 4], cx           ; 89 4D 04
        mov     word ptr [di + 6], dx           ; 89 55 06
        mov     si, di                          ; 8B F7
        ret                                     ; C3
L_2920:
        mov     cx, ax                          ; 8B C8
        mov     dl, al                          ; 8A D0
        jmp     L_2910                          ; EB EA
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2926 -- offset 0x2926 -- 131 instr
; Iterador con instrucciones de string (movsb/scasb/...) (131 instr).
; tags: complex_iterator, string_op
; callers: sub_251A
; calls (intra): sub_2A40, sub_2A45, sub_2A4A, sub_2A4F, sub_2A6F, sub_2A74 (+2 mas)
;----------------------------------------------------------------------
L_2926:
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        lodsw   ax, word ptr [si]               ; AD
        or      cl, al                          ; 0A C8
        mov     dl, ah                          ; 8A D4
        lodsw   ax, word ptr [si]               ; AD
        mov     dh, al                          ; 8A F0
        mov     bl, ah                          ; 8A DC
        lodsw   ax, word ptr [si]               ; AD
        mov     bh, al                          ; 8A F8
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        or      cl, ch                          ; 0A CD
        je      L_294E                          ; 74 03
        or      dl, 1                           ; 80 CA 01
L_294E:
        mov     cl, 0x80                        ; B1 80
        or      bh, cl                          ; 0A F9
        mov     ch, ah                          ; 8A EC
        and     ch, cl                          ; 22 E9
        and     ax, 0x7ff0                      ; 25 F0 7F
        cmp     ax, 0x47e0                      ; 3D E0 47
        ja      L_299B                          ; 77 3D
        sub     ax, 0x3800                      ; 2D 00 38
        jb      L_299E                          ; 72 3B
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cmp     dl, cl                          ; 3A D1
        ja      L_2974                          ; 77 07
        jb      L_2984                          ; 72 15
        test    dh, 1                           ; F6 C6 01
        je      L_2984                          ; 74 10
L_2974:
        add     dh, 1                           ; 80 C6 01
        adc     bx, 0                           ; 83 D3 00
        jae     L_2984                          ; 73 08
        add     ax, 0x80                        ; 05 80 00
        cmp     ax, 0x7f80                      ; 3D 80 7F
        je      L_299B                          ; 74 17
L_2984:
        or      ax, ax                          ; 0B C0
        je      L_299E                          ; 74 16
        and     bh, 0x7f                        ; 80 E7 7F
        or      al, bh                          ; 0A C7
        or      ah, ch                          ; 0A E5
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     ah, bl                          ; 8A E3
        mov     al, dh                          ; 8A C6
        mov     word ptr [di], ax               ; 89 05
        mov     si, di                          ; 8B F7
        ret                                     ; C3
L_299B:
        jmp     L_2827                          ; E9 89 FE
L_299E:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     si, di                          ; 8B F7
        ret                                     ; C3
        xor     dx, dx                          ; 33 D2
        mov     bx, dx                          ; 8B DA
        mov     dx, ax                          ; 8B D0
        mov     ax, bx                          ; 8B C3
        jmp     L_29CF                          ; EB 1D
        mov     dx, ax                          ; 8B D0
        xor     bx, bx                          ; 33 DB
        or      dx, dx                          ; 0B D2
        jns     L_29CF                          ; 79 15
        neg     dx                              ; F7 DA
        jmp     L_29CF                          ; EB 11
        mov     bx, dx                          ; 8B DA
        mov     dx, ax                          ; 8B D0
        mov     ax, bx                          ; 8B C3
        or      ax, ax                          ; 0B C0
        jns     L_29CF                          ; 79 07
        neg     bx                              ; F7 DB
        neg     dx                              ; F7 DA
        sbb     bx, 0                           ; 83 DB 00
L_29CF:
        mov     al, ah                          ; 8A C4
        and     al, 0x80                        ; 24 80
        mov     ah, 0x9e                        ; B4 9E
        jmp     L_2E4E                          ; E9 76 04
        xor     dx, dx                          ; 33 D2
        mov     bx, dx                          ; 8B DA
        mov     cx, ax                          ; 8B C8
        mov     ax, bx                          ; 8B C3
        jmp     L_29FF                          ; EB 1D
        mov     cx, ax                          ; 8B C8
        xor     bx, bx                          ; 33 DB
        or      cx, cx                          ; 0B C9
        jns     L_29FF                          ; 79 15
        neg     cx                              ; F7 D9
        jmp     L_29FF                          ; EB 11
        mov     bx, dx                          ; 8B DA
        mov     cx, ax                          ; 8B C8
        mov     ax, bx                          ; 8B C3
        or      ax, ax                          ; 0B C0
        jns     L_29FF                          ; 79 07
        neg     bx                              ; F7 DB
        neg     cx                              ; F7 D9
        sbb     bx, 0                           ; 83 DB 00
L_29FF:
        mov     al, ah                          ; 8A C4
        and     al, 0x80                        ; 24 80
        xor     di, di                          ; 33 FF
        xor     dx, dx                          ; 33 D2
        mov     bp, 0x8560                      ; BD 60 85
        jmp     L_31B9                          ; E9 AC 07
        call    L_2A4A                          ; E8 3A 00
        jmp     L_2A1F                          ; EB 0D
        call    L_2A40                          ; E8 2B 00
        jmp     L_2A1F                          ; EB 08
        call    L_2A4F                          ; E8 35 00
        jmp     L_2A1F                          ; EB 03
        call    L_2A45                          ; E8 26 00
L_2A1F:
        rol     ax, 1                           ; D1 C0
        adc     dx, 0                           ; 83 D2 00
        jne     L_2A8A                          ; 75 64
        ror     ax, 1                           ; D1 C8
        ret                                     ; C3
        call    L_2AC5                          ; E8 99 00
        jmp     L_2A3B                          ; EB 0D
        call    L_2A6F                          ; E8 3E 00
        jmp     L_2A3B                          ; EB 08
        call    L_2A90                          ; E8 5A 00
        jmp     L_2A3B                          ; EB 03
        call    L_2A74                          ; E8 39 00
L_2A3B:
        or      dx, dx                          ; 0B D2
        jne     L_2A8A                          ; 75 4B
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A40 -- offset 0x2A40 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2926
; calls (intra): sub_2A6F
;----------------------------------------------------------------------
L_2A40:
        call    L_2A6F                          ; E8 2C 00
        jmp     L_2A52                          ; EB 0D
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A45 -- offset 0x2A45 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2926
; calls (intra): sub_2A74
;----------------------------------------------------------------------
L_2A45:
        call    L_2A74                          ; E8 2C 00
        jmp     L_2A52                          ; EB 08
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A4A -- offset 0x2A4A -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2575, sub_2926
; calls (intra): sub_2AC5
;----------------------------------------------------------------------
L_2A4A:
        call    L_2AC5                          ; E8 78 00
        jmp     L_2A52                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A4F -- offset 0x2A4F -- 15 instr
; Wrapper que delega en sub_2A90.
; tags: wrapper
; callers: sub_2575, sub_2926
; calls (intra): sub_2A90
;----------------------------------------------------------------------
L_2A4F:
        call    L_2A90                          ; E8 3E 00
L_2A52:
        xor     cx, cx                          ; 33 C9
        or      di, di                          ; 0B FF
        jns     L_2A65                          ; 79 0D
        not     cx                              ; F7 D1
        not     dx                              ; F7 D2
        neg     ax                              ; F7 D8
        cmc                                     ; F5
        adc     dx, 0                           ; 83 D2 00
        adc     cx, 0                           ; 83 D1 00
L_2A65:
        rol     dx, 1                           ; D1 C2
        adc     cx, 0                           ; 83 D1 00
        jne     L_2A8A                          ; 75 1E
        ror     dx, 1                           ; D1 CA
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A6F -- offset 0x2A6F -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2926, sub_2A40
; calls (intra): sub_2AC5
;----------------------------------------------------------------------
L_2A6F:
        call    L_2AC5                          ; E8 53 00
        jmp     L_2A77                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A74 -- offset 0x2A74 -- 13 instr
; Wrapper que delega en sub_2A90.
; tags: wrapper
; callers: sub_2926, sub_2A45
; calls (intra): sub_2A90
;----------------------------------------------------------------------
L_2A74:
        call    L_2A90                          ; E8 19 00
L_2A77:
        xor     bx, bx                          ; 33 DB
        mov     ch, 1                           ; B5 01
        and     ch, bl                          ; 22 EB
        or      cl, ch                          ; 0A CD
        cmp     cl, 0x81                        ; 80 F9 81
        cmc                                     ; F5
        adc     bx, bx                          ; 13 DB
        adc     ax, bx                          ; 13 C3
        jb      L_2A8A                          ; 72 01
        ret                                     ; C3
L_2A8A:
        jmp     L_2827                          ; E9 9A FD
L_2A8D:
        jmp     L_2B35                          ; E9 A5 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2A90 -- offset 0x2A90 -- 27 instr
; Iterador con instrucciones de string (movsb/scasb/...) (27 instr).
; tags: iterator, string_op
; callers: sub_2926, sub_2A4F, sub_2A74
;----------------------------------------------------------------------
L_2A90:
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, ax                          ; 92
        or      dl, dh                          ; 0A D6
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        sub     si, 8                           ; 83 EE 08
        mov     di, cx                          ; 8B F9
        mov     dh, 0xf                         ; B6 0F
        and     dh, cl                          ; 22 F1
        or      dh, 0x10                        ; 80 CE 10
        and     ch, 0x7f                        ; 80 E5 7F
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        or      cx, cx                          ; 0B C9
        je      L_2A8D                          ; 74 D8
        sub     cx, 0x3fe                       ; 81 E9 FE 03
        jb      L_2B34                          ; 72 79
        cmp     cx, 0x20                        ; 83 F9 20
        jg      L_2A8A                          ; 7F CA
        sub     cx, 0x25                        ; 83 E9 25
        jmp     L_2AF5                          ; EB 30
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2AC5 -- offset 0x2AC5 -- 98 instr
; Iterador con instrucciones de string (movsb/scasb/...) (98 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_2926, sub_2A4A, sub_2A6F
; calls (intra): sub_2BAD, sub_2BF4, sub_2C7F
;----------------------------------------------------------------------
L_2AC5:
        xor     dx, dx                          ; 33 D2
        mov     bl, dl                          ; 8A DA
        lodsb   al, byte ptr [si]               ; AC
        mov     bh, al                          ; 8A F8
        lodsw   ax, word ptr [si]               ; AD
        mov     cl, al                          ; 8A C8
        lodsb   al, byte ptr [si]               ; AC
        xchg    cl, al                          ; 86 C1
        sub     si, 4                           ; 83 EE 04
        mov     ch, cl                          ; 8A E9
        mov     di, cx                          ; 8B F9
        and     cx, 0x7f                        ; 81 E1 7F 00
        shl     ah, 1                           ; D0 E4
        rcl     cl, 1                           ; D0 D1
        stc                                     ; F9
        rcr     ah, 1                           ; D0 DC
        or      cx, cx                          ; 0B C9
        je      L_2B35                          ; 74 4D
        sub     cl, 0x7e                        ; 80 E9 7E
        jb      L_2B34                          ; 72 47
        cmp     cx, 0x20                        ; 83 F9 20
        jg      L_2A8A                          ; 7F 98
        sub     cx, 0x20                        ; 83 E9 20
L_2AF5:
        neg     cx                              ; F7 D9
L_2AF7:
        cmp     cl, 8                           ; 80 F9 08
        jl      L_2B16                          ; 7C 1A
        cmp     dl, 1                           ; 80 FA 01
        cmc                                     ; F5
        rcl     dl, 1                           ; D0 D2
        and     dl, 1                           ; 80 E2 01
        or      dl, bl                          ; 0A D3
        mov     bl, bh                          ; 8A DF
        mov     bh, al                          ; 8A F8
        mov     al, ah                          ; 8A C4
        mov     ah, dh                          ; 8A E6
        xor     dh, dh                          ; 32 F6
        sub     cl, 8                           ; 80 E9 08
        jmp     L_2AF7                          ; EB E1
L_2B16:
        jcxz    L_2B2D                          ; E3 15
        cmp     dl, 1                           ; 80 FA 01
        mov     dl, 1                           ; B2 01
        sbb     dl, 0                           ; 80 DA 00
L_2B20:
        shr     dh, 1                           ; D0 EE
        rcr     ax, 1                           ; D1 D8
        rcr     bx, 1                           ; D1 DB
        rcr     dl, 1                           ; D0 DA
        adc     dl, 0                           ; 80 D2 00
        loop    L_2B20                          ; E2 F3
L_2B2D:
        mov     cl, dl                          ; 8A CA
        mov     dx, ax                          ; 8B D0
        mov     ax, bx                          ; 8B C3
        ret                                     ; C3
L_2B34:
        stc                                     ; F9
L_2B35:
        mov     cl, 0                           ; B1 00
        adc     cl, 0                           ; 80 D1 00
        xor     ax, ax                          ; 33 C0
        mov     dx, ax                          ; 8B D0
        ret                                     ; C3
L_2B3F:
        jmp     L_2827                          ; E9 E5 FC
        call    L_2BAD                          ; E8 68 00
        mov     al, 7                           ; B0 07
        call    L_2C7F                          ; E8 35 01
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        add     di, word ptr [si + 6]           ; 03 7C 06
        sub     di, 0x10                        ; 83 EF 10
        mov     dx, di                          ; 8B D7
        and     dh, 0x7f                        ; 80 E6 7F
        cmp     dx, 0x7ff0                      ; 81 FA F0 7F
        jae     L_2B3F                          ; 73 E0
        mov     word ptr [si + 6], di           ; 89 7C 06
        mov     di, si                          ; 8B FE
        ret                                     ; C3
L_2B65:
        jmp     L_2827                          ; E9 BF FC
        call    L_2BF4                          ; E8 89 00
        mov     al, 3                           ; B0 03
        call    L_2C7F                          ; E8 0F 01
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        add     di, word ptr [si + 2]           ; 03 7C 02
        sub     di, 0x80                        ; 81 EF 80 00
        mov     dx, di                          ; 8B D7
        and     dh, 0x7f                        ; 80 E6 7F
        cmp     dx, 0x7f80                      ; 81 FA 80 7F
        jae     L_2B65                          ; 73 DF
        mov     word ptr [si + 2], di           ; 89 7C 02
        mov     di, si                          ; 8B FE
        ret                                     ; C3
        call    L_2BAD                          ; E8 1E 00
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        sub     di, 0x10                        ; 83 EF 10
        add     word ptr [si + 6], di           ; 01 7C 06
        mov     di, si                          ; 8B FE
        ret                                     ; C3
        call    L_2BF4                          ; E8 55 00
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        sub     di, 0x80                        ; 81 EF 80 00
        add     word ptr [si + 2], di           ; 01 7C 02
        mov     di, si                          ; 8B FE
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2BAD -- offset 0x2BAD -- 30 instr
; Iterador con instrucciones de string (movsb/scasb/...) (30 instr).
; tags: iterator, string_op
; callers: sub_2AC5
;----------------------------------------------------------------------
L_2BAD:
        cld                                     ; FC
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     es, ax                          ; 8E C0
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     dx, 0x10                        ; BA 10 00
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        mov     di, cx                          ; 8B F9
        and     cx, 0xf                         ; 81 E1 0F 00
        or      cl, dl                          ; 0A CA
        mov     word ptr [si + 6], cx           ; 89 4C 06
        and     di, 0xfff0                      ; 81 E7 F0 FF
        mov     cx, di                          ; 8B CF
        and     ch, 0x7f                        ; 80 E5 7F
        mov     ax, 0x35                        ; B8 35 00
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        sub     cx, 0x433                       ; 81 E9 33 04
        jge     L_2BF1                          ; 7D 04
        neg     cx                              ; F7 D9
        jmp     L_2C32                          ; EB 41
L_2BF1:
        jmp     L_2C78                          ; E9 84 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2BF4 -- offset 0x2BF4 -- 61 instr
; Iterador con instrucciones de string (movsb/scasb/...) (61 instr).
; tags: complex_iterator, string_op
; callers: sub_2AC5
;----------------------------------------------------------------------
L_2BF4:
        cld                                     ; FC
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     ax, es                          ; 8C C0
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     es, ax                          ; 8E C0
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     dx, 0x80                        ; BA 80 00
        mov     cx, word ptr [si + 2]           ; 8B 4C 02
        mov     di, cx                          ; 8B F9
        and     cx, 0x7f                        ; 81 E1 7F 00
        or      cl, dl                          ; 0A CA
        mov     word ptr [si + 2], cx           ; 89 4C 02
        and     di, 0xff80                      ; 81 E7 80 FF
        mov     cx, di                          ; 8B CF
        and     ch, 0x7f                        ; 80 E5 7F
        mov     ax, 0x18                        ; B8 18 00
        shl     cx, 1                           ; D1 E1
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        sub     cx, 0x96                        ; 81 E9 96 00
        jge     L_2C78                          ; 7D 48
        neg     cx                              ; F7 D9
L_2C32:
        cmp     cx, ax                          ; 3B C8
        mov     bp, di                          ; 8B EF
        jl      L_2C4C                          ; 7C 14
        and     di, 0x8000                      ; 81 E7 00 80
        or      di, dx                          ; 0B FA
        cmp     cx, ax                          ; 3B C8
        je      L_2C4C                          ; 74 0A
        mov     cx, ax                          ; 8B C8
        mov     bp, di                          ; 8B EF
        and     bp, 0x8000                      ; 81 E5 00 80
        sub     bp, dx                          ; 2B EA
L_2C4C:
        xor     dx, dx                          ; 33 D2
L_2C4E:
        cmp     cl, 8                           ; 80 F9 08
        jl      L_2C67                          ; 7C 14
        cmp     dl, 1                           ; 80 FA 01
        cmc                                     ; F5
        mov     dl, 0                           ; B2 00
        adc     dl, 0                           ; 80 D2 00
        or      dl, byte ptr [si]               ; 0A 14
        mov     byte ptr [si], 0                ; C6 04 00
        sub     cl, 8                           ; 80 E9 08
        inc     si                              ; 46
        jmp     L_2C4E                          ; EB E7
L_2C67:
        mov     dh, byte ptr [si]               ; 8A 34
        jcxz    L_2C77                          ; E3 0C
        mov     bx, 0x22a                       ; BB 2A 02
        mov     al, cl                          ; 8A C1
        xlatb                                   ; D7
        mov     ch, dh                          ; 8A EE
        and     ch, al                          ; 22 E8
        mov     byte ptr [si], ch               ; 88 2C
L_2C77:
        ret                                     ; C3
L_2C78:
        xor     cx, cx                          ; 33 C9
        mov     dx, cx                          ; 8B D1
        mov     dh, byte ptr [si]               ; 8A 34
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2C7F -- offset 0x2C7F -- 208 instr
; Iterador con bucle (208 instr).
; tags: complex_iterator, loop
; callers: sub_2AC5
;----------------------------------------------------------------------
L_2C7F:
        mov     bx, 1                           ; BB 01 00
        mov     ch, bh                          ; 8A EF
        mov     ah, cl                          ; 8A E1
        jcxz    L_2C8E                          ; E3 06
L_2C88:
        shr     dx, 1                           ; D1 EA
        rcl     bh, 1                           ; D0 D7
        loop    L_2C88                          ; E2 FA
L_2C8E:
        or      dl, bh                          ; 0A D7
        and     bl, dh                          ; 22 DE
        or      dl, bl                          ; 0A D3
        cmp     dl, 0x81                        ; 80 FA 81
        mov     dl, 1                           ; B2 01
        sbb     dl, 0                           ; 80 DA 00
        je      L_2CA0                          ; 74 02
        mov     di, bp                          ; 8B FD
L_2CA0:
        mov     cl, ah                          ; 8A CC
        shl     dx, cl                          ; D3 E2
        mov     cx, word ptr [0x228]            ; 8B 0E 28 02
        cwde                                    ; 98
        add     cx, ax                          ; 03 C8
        sub     cx, si                          ; 2B CE
        add     dh, dl                          ; 02 F2
        mov     byte ptr [si], dh               ; 88 34
        jcxz    L_2CB9                          ; E3 06
L_2CB3:
        inc     si                              ; 46
        adc     byte ptr [si], 0                ; 80 14 00
        loop    L_2CB3                          ; E2 FA
L_2CB9:
        ret                                     ; C3
L_2CBA:
        test    bx, 0x7f80                      ; F7 C3 80 7F
        je      L_2D0C                          ; 74 4C
        rcl     bx, 1                           ; D1 D3
        cmc                                     ; F5
        ret                                     ; C3
L_2CC4:
        jmp     L_2836                          ; E9 6F FB
L_2CC7:
        or      ah, 0x7f                        ; 80 CC 7F
        shl     ah, 1                           ; D0 E4
        ret                                     ; C3
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     bx, word ptr es:[di + 2]        ; 26 8B 5D 02
        test    ax, 0x7f80                      ; A9 80 7F
        je      L_2CBA                          ; 74 E1
        not     ax                              ; F7 D0
        test    ax, 0x7f80                      ; A9 80 7F
        not     ax                              ; F7 D0
        je      L_2CC4                          ; 74 E2
        not     bx                              ; F7 D3
        test    bx, 0x7f80                      ; F7 C3 80 7F
        not     bx                              ; F7 D3
        je      L_2CC4                          ; 74 D8
        mov     ch, ah                          ; 8A EC
        xor     ch, bh                          ; 32 EF
        js      L_2CC7                          ; 78 D5
        shl     bx, 1                           ; D1 E3
        shl     ax, 1                           ; D1 E0
        jae     L_2D03                          ; 73 0B
        xchg    bx, ax                          ; 93
        xchg    di, si                          ; 87 F7
        mov     dx, es                          ; 8C C2
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, dx                          ; 8E DA
L_2D03:
        cmp     ax, bx                          ; 3B C3
        jne     L_2D0C                          ; 75 05
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, word ptr es:[di]            ; 26 3B 05
L_2D0C:
        ret                                     ; C3
L_2D0D:
        test    bx, 0x7ff0                      ; F7 C3 F0 7F
        je      L_2D71                          ; 74 5E
        rcl     bx, 1                           ; D1 D3
        cmc                                     ; F5
        ret                                     ; C3
L_2D17:
        jmp     L_2836                          ; E9 1C FB
L_2D1A:
        or      ah, 0x7f                        ; 80 CC 7F
        shl     ah, 1                           ; D0 E4
        ret                                     ; C3
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     bx, word ptr es:[di + 6]        ; 26 8B 5D 06
        test    ax, 0x7ff0                      ; A9 F0 7F
        je      L_2D0D                          ; 74 E1
        not     ax                              ; F7 D0
        test    ax, 0x7ff0                      ; A9 F0 7F
        not     ax                              ; F7 D0
        je      L_2D17                          ; 74 E2
        not     bx                              ; F7 D3
        test    bx, 0x7ff0                      ; F7 C3 F0 7F
        not     bx                              ; F7 D3
        je      L_2D17                          ; 74 D8
        mov     ch, ah                          ; 8A EC
        xor     ch, bh                          ; 32 EF
        js      L_2D1A                          ; 78 D5
        shl     bx, 1                           ; D1 E3
        shl     ax, 1                           ; D1 E0
        jae     L_2D56                          ; 73 0B
        xchg    bx, ax                          ; 93
        xchg    di, si                          ; 87 F7
        mov     dx, es                          ; 8C C2
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        mov     ds, dx                          ; 8E DA
L_2D56:
        cmp     ax, bx                          ; 3B C3
        jne     L_2D71                          ; 75 17
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cmp     ax, word ptr es:[di + 4]        ; 26 3B 45 04
        jne     L_2D71                          ; 75 0E
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     ax, word ptr es:[di + 2]        ; 26 3B 45 02
        jne     L_2D71                          ; 75 05
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, word ptr es:[di]            ; 26 3B 05
L_2D71:
        ret                                     ; C3
        xchg    di, si                          ; 87 F7
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        xor     ah, 0x80                        ; 80 F4 80
        jmp     L_2D7F                          ; EB 03
        mov     ax, word ptr [di + 2]           ; 8B 45 02
L_2D7F:
        mov     bx, word ptr [di + 1]           ; 8B 5D 01
        mov     dh, byte ptr [di]               ; 8A 35
        mov     dl, 0                           ; B2 00
        or      bh, 0x80                        ; 80 CF 80
        mov     cx, word ptr [si + 2]           ; 8B 4C 02
        mov     di, word ptr [si - 1]           ; 8B 7C FF
        mov     si, word ptr [si + 1]           ; 8B 74 01
        and     di, 0xff00                      ; 81 E7 00 FF
        or      si, 0x8000                      ; 81 CE 00 80
        rol     cx, 1                           ; D1 C1
        rol     ax, 1                           ; D1 C0
        or      ch, ch                          ; 0A ED
        je      L_2E07                          ; 74 65
        or      ah, ah                          ; 0A E4
        je      L_2E01                          ; 74 5B
        cmp     ch, ah                          ; 3A EC
        jae     L_2DAF                          ; 73 05
        xchg    bx, si                          ; 87 F3
        xchg    dx, di                          ; 87 FA
        xchg    cx, ax                          ; 91
L_2DAF:
        sub     ah, ch                          ; 2A E5
        neg     ah                              ; F6 DC
        cmp     ah, 0x18                        ; 80 FC 18
        ja      L_2E01                          ; 77 49
        ror     cl, 1                           ; D0 C9
        shr     al, 1                           ; D0 E8
        rcr     cl, 1                           ; D0 D9
        xchg    cx, ax                          ; 91
        mov     cl, ch                          ; 8A CD
        mov     ch, 0                           ; B5 00
        jcxz    L_2E1A                          ; E3 55
        cmp     cl, 0xe                         ; 80 F9 0E
        jl      L_2DDC                          ; 7C 12
        or      dx, dx                          ; 0B D2
        je      L_2DD1                          ; 74 03
        or      bl, 1                           ; 80 CB 01
L_2DD1:
        mov     dx, bx                          ; 8B D3
        xor     bx, bx                          ; 33 DB
        sub     cl, 0x10                        ; 80 E9 10
        jb      L_2DF7                          ; 72 1D
        je      L_2E1A                          ; 74 3E
L_2DDC:
        cmp     cl, 5                           ; 80 F9 05
        jle     L_2E0C                          ; 7E 2B
        or      dl, dl                          ; 0A D2
        je      L_2DE8                          ; 74 03
        or      dh, 1                           ; 80 CE 01
L_2DE8:
        mov     dl, dh                          ; 8A D6
        mov     dh, bl                          ; 8A F3
        mov     bl, bh                          ; 8A DF
        mov     bh, ch                          ; 8A FD
        sub     cl, 8                           ; 80 E9 08
        ja      L_2E0C                          ; 77 17
        je      L_2E1A                          ; 74 23
L_2DF7:
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        inc     cl                              ; FE C1
        jne     L_2DF7                          ; 75 F8
        jmp     L_2E1A                          ; EB 19
L_2E01:
        mov     bx, si                          ; 8B DE
        mov     dx, di                          ; 8B D7
        mov     ax, cx                          ; 8B C1
L_2E07:
        shr     al, 1                           ; D0 E8
        jmp     L_2EA3                          ; E9 97 00
L_2E0C:
        test    dl, 0x3f                        ; F6 C2 3F
        je      L_2E14                          ; 74 03
        or      dl, 0x20                        ; 80 CA 20
L_2E14:
        shr     bx, 1                           ; D1 EB
        rcr     dx, 1                           ; D1 DA
        loop    L_2E14                          ; E2 FA
L_2E1A:
        test    dl, 0x3f                        ; F6 C2 3F
        je      L_2E22                          ; 74 03
        or      dl, 0x20                        ; 80 CA 20
L_2E22:
        shl     al, 1                           ; D0 E0
        jo      L_2E3A                          ; 70 14
        add     dx, di                          ; 03 D7
        adc     bx, si                          ; 13 DE
        jae     L_2E7C                          ; 73 50
        rcr     bx, 1                           ; D1 DB
        rcr     dx, 1                           ; D1 DA
        inc     ah                              ; FE C4
        cmp     ah, 0xff                        ; 80 FC FF
        jne     L_2E7C                          ; 75 45
        jmp     L_2827                          ; E9 ED F9
L_2E3A:
        sub     di, dx                          ; 2B FA
        sbb     si, bx                          ; 1B F3
        mov     dx, di                          ; 8B D7
        mov     bx, si                          ; 8B DE
        jae     L_2E4E                          ; 73 0A
        not     bx                              ; F7 D3
        neg     dx                              ; F7 DA
        cmc                                     ; F5
        adc     bx, 0                           ; 83 D3 00
        not     al                              ; F6 D0
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E4E -- offset 0x2E4E -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: small
; callers: sub_245B, sub_2FD1
;----------------------------------------------------------------------
L_2E4E:
        or      bx, bx                          ; 0B DB
        jne     L_2E5D                          ; 75 0B
        sub     ah, 0x10                        ; 80 EC 10
        jbe     L_2EC1                          ; 76 6A
        xchg    dx, bx                          ; 87 DA
        or      bx, bx                          ; 0B DB
        je      L_2EC1                          ; 74 64
L_2E5D:
        or      bh, bh                          ; 0A FF
        jne     L_2E70                          ; 75 0F
        sub     ah, 8                           ; 80 EC 08
        jbe     L_2EC1                          ; 76 5B
        mov     bh, bl                          ; 8A FB
        mov     bl, dh                          ; 8A DE
        mov     dh, dl                          ; 8A F2
        xor     dl, dl                          ; 32 D2
        or      bh, bh                          ; 0A FF
L_2E70:
        js      L_2E7C                          ; 78 0A
L_2E72:
        dec     ah                              ; FE CC
        je      L_2EC1                          ; 74 4B
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        jno     L_2E72                          ; 71 F6
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2E7C -- offset 0x2E7C -- 147 instr
; Iterador con instrucciones de string (movsb/scasb/...) (147 instr).
; tags: complex_iterator, string_op
; callers: sub_2FD1
; calls (intra): sub_2FCD, sub_2FD1
;----------------------------------------------------------------------
L_2E7C:
        cmp     byte ptr [0x232], 0             ; 80 3E 32 02 00
        je      L_2E86                          ; 74 03
        jmp     L_2FFA                          ; E9 74 01
L_2E86:
        cmp     dl, 0x80                        ; 80 FA 80
        ja      L_2E92                          ; 77 07
        jb      L_2EA1                          ; 72 14
        test    dh, 1                           ; F6 C6 01
        je      L_2EA1                          ; 74 0F
L_2E92:
        add     dh, 1                           ; 80 C6 01
        adc     bx, 0                           ; 83 D3 00
        jae     L_2EA1                          ; 73 07
        inc     ah                              ; FE C4
        cmp     ah, 0xff                        ; 80 FC FF
        je      L_2EDB                          ; 74 3A
L_2EA1:
        shl     al, 1                           ; D0 E0
L_2EA3:
        rcr     ax, 1                           ; D1 D8
        test    ax, 0x7f80                      ; A9 80 7F
        je      L_2EC1                          ; 74 17
        and     al, 0x80                        ; 24 80
        and     bh, 0x7f                        ; 80 E7 7F
        or      al, bh                          ; 0A C7
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     ah, bl                          ; 8A E3
        mov     al, dh                          ; 8A C6
        mov     word ptr [di], ax               ; 89 05
        mov     si, di                          ; 8B F7
        ret                                     ; C3
L_2EC1:
        cmp     byte ptr [0x232], 0             ; 80 3E 32 02 00
        je      L_2ECB                          ; 74 03
        jmp     L_3041                          ; E9 76 01
L_2ECB:
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     word ptr [di], ax               ; 89 05
        mov     si, di                          ; 8B F7
        ret                                     ; C3
L_2ED9:
        jns     L_2EC1                          ; 79 E6
L_2EDB:
        jmp     L_2827                          ; E9 49 F9
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     si, word ptr [si]               ; 8B 34
        xchg    si, ax                          ; 96
        shl     ax, 1                           ; D1 E0
        rcr     al, 1                           ; D0 D8
        or      ah, ah                          ; 0A E4
        je      L_2EC1                          ; 74 D6
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        shl     cx, 1                           ; D1 E1
        rcr     cl, 1                           ; D0 D9
        or      ch, ch                          ; 0A ED
        je      L_2EC1                          ; 74 CB
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, ax                          ; 8B D8
        xor     al, cl                          ; 32 C1
        sub     ah, 0x80                        ; 80 EC 80
        sub     ch, 0x7f                        ; 80 ED 7F
        add     ah, ch                          ; 02 E5
L_2F04:
        jo      L_2ED9                          ; 70 D3
        add     ah, 0x80                        ; 80 C4 80
        cmp     ah, 0xff                        ; 80 FC FF
L_2F0C:
        je      L_2EDB                          ; 74 CD
        push    ax                              ; 50
        xor     bh, bh                          ; 32 FF
        mov     ch, bh                          ; 8A EF
        or      bl, 0x80                        ; 80 CB 80
        or      cl, 0x80                        ; 80 C9 80
        mov     bp, bx                          ; 8B EB
        mov     ax, si                          ; 8B C6
        mul     di                              ; F7 E7
        mov     bx, dx                          ; 8B DA
        or      ax, ax                          ; 0B C0
        mov     ax, bp                          ; 8B C5
        pushf                                   ; 9C
        mul     di                              ; F7 E7
        add     bx, ax                          ; 03 D8
        adc     dx, 0                           ; 83 D2 00
        mov     di, dx                          ; 8B FA
        mov     ax, cx                          ; 8B C1
        mul     si                              ; F7 E6
        add     bx, ax                          ; 03 D8
        adc     di, dx                          ; 13 FA
        popf                                    ; 9D
        je      L_2F3D                          ; 74 03
        or      bl, 1                           ; 80 CB 01
L_2F3D:
        mov     ax, bp                          ; 8B C5
        mul     cl                              ; F6 E1
        add     ax, di                          ; 03 C7
        mov     dx, bx                          ; 8B D3
        xchg    bx, ax                          ; 93
L_2F46:
        pop     ax                              ; 58
        or      bh, bh                          ; 0A FF
        js      L_2F56                          ; 78 0B
        shl     dx, 1                           ; D1 E2
        rcl     bx, 1                           ; D1 D3
        or      ah, ah                          ; 0A E4
        jne     L_2F5D                          ; 75 0A
L_2F53:
        jmp     L_2EC1                          ; E9 6B FF
L_2F56:
        inc     ah                              ; FE C4
        cmp     ah, 0xff                        ; 80 FC FF
        je      L_2F0C                          ; 74 AF
L_2F5D:
        jmp     L_2E7C                          ; E9 1C FF
        xchg    di, si                          ; 87 F7
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        shl     cx, 1                           ; D1 E1
        rcr     cl, 1                           ; D0 D9
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        shl     ax, 1                           ; D1 E0
        rcr     al, 1                           ; D0 D8
        or      ch, ch                          ; 0A ED
        je      L_2FCA                          ; 74 56
        or      ah, ah                          ; 0A E4
        je      L_2F53                          ; 74 DB
        xor     al, cl                          ; 32 C1
        sub     ah, 0x81                        ; 80 EC 81
        sub     ch, 0x7f                        ; 80 ED 7F
        sub     ah, ch                          ; 2A E5
        jo      L_2F04                          ; 70 80
        add     ah, 0x80                        ; 80 C4 80
        cmp     ah, 0xff                        ; 80 FC FF
        je      L_2F0C                          ; 74 80
        mov     bx, word ptr [di + 1]           ; 8B 5D 01
        mov     ch, byte ptr [di]               ; 8A 2D
        xor     cl, cl                          ; 32 C9
        or      bh, 0x80                        ; 80 CF 80
        cmp     byte ptr [0x232], 0             ; 80 3E 32 02 00
        je      L_2FA5                          ; 74 08
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        add     bh, byte ptr [0x232]            ; 02 3E 32 02
L_2FA5:
        push    ax                              ; 50
        mov     dx, word ptr [si + 1]           ; 8B 54 01
        mov     ah, byte ptr [si]               ; 8A 24
        xor     al, al                          ; 32 C0
        or      dh, 0x80                        ; 80 CE 80
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        call    L_2FD1                          ; E8 1A 00
        mov     bp, si                          ; 8B EE
        call    L_2FCD                          ; E8 11 00
        or      ax, dx                          ; 0B C2
        mov     dx, si                          ; 8B D6
        je      L_2FC5                          ; 74 03
        or      dl, 1                           ; 80 CA 01
L_2FC5:
        mov     bx, bp                          ; 8B DD
        jmp     L_2F46                          ; E9 7C FF
L_2FCA:
        jmp     L_282C                          ; E9 5F F8
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2FCD -- offset 0x2FCD -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_2E7C
;----------------------------------------------------------------------
L_2FCD:
        cmp     dx, bx                          ; 3B D3
        jae     L_2FEE                          ; 73 1D
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2FD1 -- offset 0x2FD1 -- 84 instr
; Iterador con instrucciones de string (movsb/scasb/...) (84 instr).
; tags: complex_iterator, string_op
; callers: sub_2E7C
; calls (intra): sub_2E4E, sub_2E7C
;----------------------------------------------------------------------
L_2FD1:
        div     bx                              ; F7 F3
        xchg    si, ax                          ; 96
        xor     ax, ax                          ; 33 C0
        jcxz    L_2FED                          ; E3 15
        mov     di, dx                          ; 8B FA
        mov     ax, si                          ; 8B C6
        mul     cx                              ; F7 E1
        neg     ax                              ; F7 D8
        sbb     di, dx                          ; 1B FA
        mov     dx, di                          ; 8B D7
        jae     L_2FED                          ; 73 07
L_2FE6:
        dec     si                              ; 4E
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        jae     L_2FE6                          ; 73 F9
L_2FED:
        ret                                     ; C3
L_2FEE:
        mov     si, 0xffff                      ; BE FF FF
        sub     ax, cx                          ; 2B C1
        add     dx, ax                          ; 03 D0
        mov     ax, cx                          ; 8B C1
        jae     L_2FE6                          ; 73 ED
        ret                                     ; C3
L_2FFA:
        mov     byte ptr [0x232], 0             ; C6 06 32 02 00
        mov     ch, byte ptr [0x234]            ; 8A 2E 34 02
        or      ch, ch                          ; 0A ED
        je      L_300E                          ; 74 07
        sub     ch, 0xe                         ; 80 ED 0E
        cmp     ch, ah                          ; 3A EC
        ja      L_304A                          ; 77 3C
L_300E:
        or      ah, ah                          ; 0A E4
        je      L_304A                          ; 74 38
        push    word ptr [0x228]                ; FF 36 28 02
        mov     word ptr [0x228], 0x235         ; C7 06 28 02 35 02
        push    ax                              ; 50
        push    bx                              ; 53
        push    dx                              ; 52
        xor     dx, dx                          ; 33 D2
        xor     bl, bl                          ; 32 DB
        call    L_2E7C                          ; E8 56 FE
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        pop     ax                              ; 58
        mov     word ptr [0x228], 0x239         ; C7 06 28 02 39 02
        push    ax                              ; 50
        push    bx                              ; 53
        push    dx                              ; 52
        xor     bh, bh                          ; 32 FF
        call    L_2E4E                          ; E8 17 FE
L_3037:
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        pop     ax                              ; 58
        pop     word ptr [0x228]                ; 8F 06 28 02
        jmp     L_2E7C                          ; E9 3B FE
L_3041:
        xor     ax, ax                          ; 33 C0
        xor     bx, bx                          ; 33 DB
        xor     dx, dx                          ; 33 D2
        mov     byte ptr [0x232], al            ; A2 32 02
L_304A:
        push    word ptr [0x228]                ; FF 36 28 02
        mov     word ptr [0x228], 0x239         ; C7 06 28 02 39 02
        push    ax                              ; 50
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_2E7C                          ; E8 22 FE
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x235], ax            ; A3 35 02
        mov     word ptr [0x237], ax            ; A3 37 02
        jmp     L_3037                          ; EB D3
        xchg    di, si                          ; 87 F7
L_3066:
        mov     bp, word ptr [di + 6]           ; 8B 6D 06
        xor     bp, 0x8000                      ; 81 F5 00 80
        jmp     L_308C                          ; EB 1D
L_306F:
        mov     si, di                          ; 8B F7
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        lodsw   ax, word ptr [si]               ; AD
        and     ah, 0x7f                        ; 80 E4 7F
        and     dh, 0x80                        ; 80 E6 80
        or      ah, dh                          ; 0A E6
        stosw   word ptr es:[di], ax            ; AB
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, si                          ; 8B FE
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3089 -- offset 0x3089 -- 142 instr
; Iterador con instrucciones de string (movsb/scasb/...) (142 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_36F5, sub_3B97
;----------------------------------------------------------------------
L_3089:
        mov     bp, word ptr [di + 6]           ; 8B 6D 06
L_308C:
        cld                                     ; FC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        shl     bp, 1                           ; D1 E5
        rcr     dh, 1                           ; D0 DE
        shl     ax, 1                           ; D1 E0
        rcr     dl, 1                           ; D0 DA
        and     ax, 0xffe0                      ; 25 E0 FF
        je      L_306F                          ; 74 D2
        and     bp, 0xffe0                      ; 81 E5 E0 FF
        cmp     bp, ax                          ; 3B E8
        ja      L_30AE                          ; 77 09
        xchg    di, si                          ; 87 F7
        xchg    bp, ax                          ; 95
        xchg    dh, dl                          ; 86 D6
        or      ax, ax                          ; 0B C0
        je      L_306F                          ; 74 C1
L_30AE:
        sub     ax, bp                          ; 2B C5
        neg     ax                              ; F7 D8
        cmp     ax, 0x6a0                       ; 3D A0 06
        ja      L_306F                          ; 77 B8
        shl     dh, 1                           ; D0 E6
        rcr     bp, 1                           ; D1 DD
        shl     dl, 1                           ; D0 E2
        rcr     bp, 1                           ; D1 DD
        push    di                              ; 57
        rol     ax, 1                           ; D1 C0
        rol     ax, 1                           ; D1 C0
        rol     ax, 1                           ; D1 C0
        xchg    al, ah                          ; 86 E0
        mov     di, ax                          ; 8B F8
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
        xor     al, al                          ; 32 C0
        xchg    dx, ax                          ; 92
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        and     ah, 0xf                         ; 80 E4 0F
        or      ah, 0x10                        ; 80 CC 10
        or      di, di                          ; 0B FF
        je      L_3142                          ; 74 63
L_30DF:
        cmp     di, 0xe                         ; 83 FF 0E
        jl      L_30FC                          ; 7C 18
        or      dx, dx                          ; 0B D2
        je      L_30EB                          ; 74 03
        or      cl, 1                           ; 80 C9 01
L_30EB:
        mov     dx, cx                          ; 8B D1
        mov     cx, bx                          ; 8B CB
        mov     bx, ax                          ; 8B D8
        xor     ax, ax                          ; 33 C0
        sub     di, 0x10                        ; 83 EF 10
        ja      L_30DF                          ; 77 E7
        je      L_3142                          ; 74 48
        jb      L_311F                          ; 72 23
L_30FC:
        cmp     di, 6                           ; 83 FF 06
        jl      L_312C                          ; 7C 2B
        or      dl, dl                          ; 0A D2
        je      L_3108                          ; 74 03
        or      dh, 1                           ; 80 CE 01
L_3108:
        mov     dl, dh                          ; 8A D6
        mov     dh, cl                          ; 8A F1
        mov     cl, ch                          ; 8A CD
        mov     ch, bl                          ; 8A EB
        mov     bl, bh                          ; 8A DF
        mov     bh, al                          ; 8A F8
        mov     al, ah                          ; 8A C4
        xor     ah, ah                          ; 32 E4
        sub     di, 8                           ; 83 EF 08
        ja      L_312C                          ; 77 0F
        je      L_3142                          ; 74 23
L_311F:
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
        inc     di                              ; 47
        jne     L_311F                          ; 75 F5
        jmp     L_3142                          ; EB 16
L_312C:
        xchg    di, cx                          ; 87 CF
        test    dl, 0x3f                        ; F6 C2 3F
        je      L_3136                          ; 74 03
        or      dl, 0x20                        ; 80 CA 20
L_3136:
        shr     ax, 1                           ; D1 E8
        rcr     bx, 1                           ; D1 DB
        rcr     di, 1                           ; D1 DF
        rcr     dx, 1                           ; D1 DA
        loop    L_3136                          ; E2 F6
        xchg    di, cx                          ; 87 CF
L_3142:
        pop     si                              ; 5E
        xchg    di, ax                          ; 97
        test    dl, 0x3f                        ; F6 C2 3F
        je      L_314C                          ; 74 03
        or      dl, 0x20                        ; 80 CA 20
L_314C:
        shl     bp, 1                           ; D1 E5
        jo      L_3187                          ; 70 37
        shl     bp, 1                           ; D1 E5
        rcr     al, 1                           ; D0 D8
        add     dh, byte ptr [si]               ; 02 34
        adc     cx, word ptr [si + 1]           ; 13 4C 01
        adc     bx, word ptr [si + 3]           ; 13 5C 03
        pushf                                   ; 9C
        mov     si, word ptr [si + 5]           ; 8B 74 05
        and     si, 0xfff                       ; 81 E6 FF 0F
        or      si, 0x1000                      ; 81 CE 00 10
        popf                                    ; 9D
        adc     di, si                          ; 13 FE
        test    di, 0x2000                      ; F7 C7 00 20
        je      L_3184                          ; 74 13
        rcr     di, 1                           ; D1 DF
        rcr     bx, 1                           ; D1 DB
        rcr     cx, 1                           ; D1 D9
        rcr     dx, 1                           ; D1 DA
        add     bp, 0x20                        ; 83 C5 20
        cmp     bp, -0x20                       ; 83 FD E0
        jne     L_3184                          ; 75 03
        jmp     L_2827                          ; E9 A3 F6
L_3184:
        jmp     L_320F                          ; E9 88 00
L_3187:
        shl     bp, 1                           ; D1 E5
        rcr     al, 1                           ; D0 D8
        not     al                              ; F6 D0
        sub     dh, byte ptr [si]               ; 2A 34
        sbb     cx, word ptr [si + 1]           ; 1B 4C 01
        sbb     bx, word ptr [si + 3]           ; 1B 5C 03
        mov     si, word ptr [si + 5]           ; 8B 74 05
        lahf                                    ; 9F
        and     si, 0xfff                       ; 81 E6 FF 0F
        or      si, 0x1000                      ; 81 CE 00 10
        sahf                                    ; 9E
        sbb     di, si                          ; 1B FE
        jae     L_31B9                          ; 73 13
        xor     si, si                          ; 33 F6
        not     al                              ; F6 D0
        not     di                              ; F7 D7
        not     bx                              ; F7 D3
        not     cx                              ; F7 D1
        neg     dx                              ; F7 DA
        cmc                                     ; F5
        adc     cx, si                          ; 13 CE
        adc     bx, si                          ; 13 DE
        adc     di, si                          ; 13 FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_31B9 -- offset 0x31B9 -- 40 instr
; Funcion mediana (40 instr, 0 calls).
; tags: medium
; callers: sub_245B, sub_3443
;----------------------------------------------------------------------
L_31B9:
        cld                                     ; FC
        mov     si, 4                           ; BE 04 00
L_31BD:
        or      di, di                          ; 0B FF
        jne     L_31D9                          ; 75 18
        test    bh, 0xe0                        ; F6 C7 E0
        jne     L_31D9                          ; 75 13
        sub     bp, 0x200                       ; 81 ED 00 02
        jbe     L_320C                          ; 76 40
        dec     si                              ; 4E
        je      L_320C                          ; 74 3D
        mov     di, bx                          ; 8B FB
        mov     bx, cx                          ; 8B D9
        mov     cx, dx                          ; 8B CA
        xor     dx, dx                          ; 33 D2
        jmp     L_31BD                          ; EB E4
L_31D9:
        test    di, 0x1fe0                      ; F7 C7 E0 1F
        jne     L_31F7                          ; 75 18
        sub     bp, 0x100                       ; 81 ED 00 01
        jbe     L_320C                          ; 76 27
        xchg    di, ax                          ; 97
        mov     ah, al                          ; 8A E0
        mov     al, bh                          ; 8A C7
        mov     bh, bl                          ; 8A FB
        mov     bl, ch                          ; 8A DD
        mov     ch, cl                          ; 8A E9
        mov     cl, dh                          ; 8A CE
        mov     dh, dl                          ; 8A F2
        mov     dl, 0                           ; B2 00
        xchg    di, ax                          ; 97
L_31F7:
        test    di, 0x1000                      ; F7 C7 00 10
        jne     L_320F                          ; 75 12
        sub     bp, 0x20                        ; 83 ED 20
        je      L_3273                          ; 74 71
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     di, 1                           ; D1 D7
        jmp     L_31F7                          ; EB EB
L_320C:
        jmp     L_3273                          ; EB 65
        nop                                     ; 90
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_320F -- offset 0x320F -- 55 instr
; Iterador con instrucciones de string (movsb/scasb/...) (55 instr).
; tags: complex_iterator, string_op
; callers: sub_3443
;----------------------------------------------------------------------
L_320F:
        cld                                     ; FC
        cmp     byte ptr [0x24a], 0             ; 80 3E 4A 02 00
        je      L_321A                          ; 74 03
        jmp     L_359F                          ; E9 85 03
L_321A:
        cmp     dl, 0x80                        ; 80 FA 80
        ja      L_3226                          ; 77 07
        jb      L_3240                          ; 72 1F
        test    dh, 1                           ; F6 C6 01
        je      L_3240                          ; 74 1A
L_3226:
        add     dh, 1                           ; 80 C6 01
        adc     cx, 0                           ; 83 D1 00
        adc     bx, 0                           ; 83 D3 00
        adc     di, 0                           ; 83 D7 00
        test    di, 0x2000                      ; F7 C7 00 20
        je      L_3240                          ; 74 08
        add     bp, 0x20                        ; 83 C5 20
        cmp     bp, -0x20                       ; 83 FD E0
        je      L_3270                          ; 74 30
L_3240:
        mov     si, di                          ; 8B F7
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        xchg    si, bx                          ; 87 DE
        and     al, 0x80                        ; 24 80
        and     bh, 0xf                         ; 80 E7 0F
        shr     bp, 1                           ; D1 ED
        je      L_3273                          ; 74 22
        xchg    al, ah                          ; 86 E0
        xor     al, al                          ; 32 C0
        or      ax, bp                          ; 0B C5
        or      al, bh                          ; 0A C7
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     byte ptr [di + 5], bl           ; 88 5D 05
        mov     al, dh                          ; 8A C6
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, si                          ; 8B C6
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 5                           ; 83 EF 05
        mov     si, di                          ; 8B F7
        ret                                     ; C3
L_326E:
        jns     L_3273                          ; 79 03
L_3270:
        jmp     L_2827                          ; E9 B4 F5
L_3273:
        cld                                     ; FC
        cmp     byte ptr [0x24a], 0             ; 80 3E 4A 02 00
        je      L_327E                          ; 74 03
        jmp     L_35F5                          ; E9 77 03
L_327E:
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     si, di                          ; 8B F7
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     di, si                          ; 8B FE
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_328D -- offset 0x328D -- 42 instr
; Funcion mediana (42 instr, 1 calls).
; tags: medium
; callers: sub_3B97
; calls (intra): sub_3443
;----------------------------------------------------------------------
L_328D:
        cld                                     ; FC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, ax                          ; 8B D0
        and     ax, 0x7ff0                      ; 25 F0 7F
        je      L_3273                          ; 74 DB
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        xor     dx, cx                          ; 33 D1
        and     cx, 0x7ff0                      ; 81 E1 F0 7F
L_32A1:
        je      L_3273                          ; 74 D0
        shl     ax, 1                           ; D1 E0
        shl     cx, 1                           ; D1 E1
        sub     ax, 0x8000                      ; 2D 00 80
        sub     cx, 0x7fe0                      ; 81 E9 E0 7F
        add     ax, cx                          ; 03 C1
L_32B0:
        jo      L_326E                          ; 70 BC
        add     ax, 0x8000                      ; 05 00 80
        cmp     ax, 0xffe0                      ; 3D E0 FF
L_32B8:
        je      L_3270                          ; 74 B6
        shl     dh, 1                           ; D0 E6
        rcr     ax, 1                           ; D1 D8
        push    ax                              ; 50
        call    L_3443                          ; E8 81 01
        je      L_32C7                          ; 74 03
        or      dl, 1                           ; 80 CA 01
L_32C7:
        pop     bp                              ; 5D
        shl     bp, 1                           ; D1 E5
        rcr     al, 1                           ; D0 D8
        test    di, 0x1000                      ; F7 C7 00 10
        jne     L_32E0                          ; 75 0E
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     di, 1                           ; D1 D7
        or      bp, bp                          ; 0B ED
        jne     L_32E8                          ; 75 0A
        jmp     L_3273                          ; EB 93
L_32E0:
        add     bp, 0x20                        ; 83 C5 20
        cmp     bp, -0x20                       ; 83 FD E0
        je      L_3270                          ; 74 88
L_32E8:
        jmp     L_320F                          ; E9 24 FF
L_32EB:
        jmp     L_282C                          ; E9 3E F5
        xchg    di, si                          ; 87 F7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_32F0 -- offset 0x32F0 -- 106 instr
; Iterador con instrucciones de string (movsb/scasb/...) (106 instr).
; tags: complex_iterator, string_op
; callers: sub_36F5
; calls (intra): sub_33BF
;----------------------------------------------------------------------
L_32F0:
        cld                                     ; FC
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        mov     dx, cx                          ; 8B D1
        and     cx, 0x7ff0                      ; 81 E1 F0 7F
        je      L_32EB                          ; 74 EF
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        xor     dx, ax                          ; 33 D0
        and     ax, 0x7ff0                      ; 25 F0 7F
        je      L_32A1                          ; 74 9B
        shl     ax, 1                           ; D1 E0
        shl     cx, 1                           ; D1 E1
        sub     ax, 0x8020                      ; 2D 20 80
        sub     cx, 0x7fe0                      ; 81 E9 E0 7F
        sub     ax, cx                          ; 2B C1
        jo      L_32B0                          ; 70 9B
        add     ax, 0x8000                      ; 05 00 80
        cmp     ax, 0xffe0                      ; 3D E0 FF
        je      L_32B8                          ; 74 9B
        shl     dh, 1                           ; D0 E6
        rcr     ax, 1                           ; D1 D8
        push    ax                              ; 50
        lodsb   al, byte ptr [si]               ; AC
        mov     ch, al                          ; 8A E8
        xor     cl, cl                          ; 32 C9
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, ax                          ; 92
        lodsw   ax, word ptr [si]               ; AD
        and     ah, 0xf                         ; 80 E4 0F
        or      ah, 0x10                        ; 80 CC 10
        xchg    dx, ax                          ; 92
        push    ax                              ; 50
        mov     si, di                          ; 8B F7
        add     si, 5                           ; 83 C6 05
        mov     di, 0x248                       ; BF 48 02
        std                                     ; FD
        lodsw   ax, word ptr [si]               ; AD
        and     ah, 0xf                         ; 80 E4 0F
        or      ah, 0x10                        ; 80 CC 10
        stosw   word ptr es:[di], ax            ; AB
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        inc     si                              ; 46
        inc     di                              ; 47
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        cld                                     ; FC
        mov     byte ptr [di], 0                ; C6 05 00
        cmp     byte ptr [0x24a], 0             ; 80 3E 4A 02 00
        je      L_3374                          ; 74 1F
        std                                     ; FD
        mov     di, 0x248                       ; BF 48 02
        mov     si, di                          ; 8B F7
        lodsw   ax, word ptr [si]               ; AD
        mov     bp, ax                          ; 8B E8
        shr     ax, 1                           ; D1 E8
        add     ah, byte ptr [0x24a]            ; 02 26 4A 02
        stosw   word ptr es:[di], ax            ; AB
        shr     bp, 1                           ; D1 ED
        lodsw   ax, word ptr [si]               ; AD
        rcr     ax, 1                           ; D1 D8
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        rcr     ax, 1                           ; D1 D8
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        rcr     ax, 1                           ; D1 D8
        stosw   word ptr es:[di], ax            ; AB
        cld                                     ; FC
L_3374:
        pop     ax                              ; 58
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        rcr     bx, 1                           ; D1 DB
        rcr     cx, 1                           ; D1 D9
        call    L_33BF                          ; E8 3F 00
        push    di                              ; 57
        call    L_33BF                          ; E8 3B 00
        push    di                              ; 57
        call    L_33BF                          ; E8 37 00
        push    di                              ; 57
        call    L_33BF                          ; E8 33 00
        or      ax, bx                          ; 0B C3
        or      ax, cx                          ; 0B C1
        or      ax, dx                          ; 0B C2
        mov     dx, di                          ; 8B D7
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     di                              ; 5F
        je      L_339C                          ; 74 03
        or      dl, 1                           ; 80 CA 01
L_339C:
        test    dl, 7                           ; F6 C2 07
        je      L_33A4                          ; 74 03
        or      dl, 8                           ; 80 CA 08
L_33A4:
        shr     di, 1                           ; D1 EF
        rcr     bx, 1                           ; D1 DB
        rcr     cx, 1                           ; D1 D9
        rcr     dx, 1                           ; D1 DA
        shr     di, 1                           ; D1 EF
        rcr     bx, 1                           ; D1 DB
        rcr     cx, 1                           ; D1 D9
        rcr     dx, 1                           ; D1 DA
        shr     di, 1                           ; D1 EF
        rcr     bx, 1                           ; D1 DB
        rcr     cx, 1                           ; D1 D9
        rcr     dx, 1                           ; D1 DA
        jmp     L_32C7                          ; E9 08 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_33BF -- offset 0x33BF -- 60 instr
; Funcion mediana (60 instr, 0 calls).
; tags: medium
; callers: sub_32F0
;----------------------------------------------------------------------
L_33BF:
        mov     si, word ptr [0x248]            ; 8B 36 48 02
        xor     di, di                          ; 33 FF
        cmp     dx, si                          ; 3B D6
        jae     L_3425                          ; 73 5C
        or      dx, dx                          ; 0B D2
        jne     L_33D1                          ; 75 04
        cmp     si, ax                          ; 3B F0
        ja      L_340C                          ; 77 3B
L_33D1:
        div     si                              ; F7 F6
        push    dx                              ; 52
        xchg    di, ax                          ; 97
        xor     bp, bp                          ; 33 ED
        mov     si, bp                          ; 8B F5
        mov     ax, word ptr [0x242]            ; A1 42 02
        or      ax, ax                          ; 0B C0
        je      L_33E4                          ; 74 04
        mul     di                              ; F7 E7
        mov     si, dx                          ; 8B F2
L_33E4:
        push    ax                              ; 50
        mov     ax, word ptr [0x244]            ; A1 44 02
        or      ax, ax                          ; 0B C0
        je      L_33F2                          ; 74 06
        mul     di                              ; F7 E7
        add     si, ax                          ; 03 F0
        adc     bp, dx                          ; 13 EA
L_33F2:
        mov     ax, word ptr [0x246]            ; A1 46 02
        or      ax, ax                          ; 0B C0
        je      L_3401                          ; 74 08
        mul     di                              ; F7 E7
        add     bp, ax                          ; 03 E8
        adc     dx, 0                           ; 83 D2 00
        xchg    dx, ax                          ; 92
L_3401:
        pop     dx                              ; 5A
        neg     dx                              ; F7 DA
        sbb     cx, si                          ; 1B CE
        sbb     bx, bp                          ; 1B DD
        pop     bp                              ; 5D
        sbb     bp, ax                          ; 1B E8
        xchg    bp, ax                          ; 95
L_340C:
        xchg    dx, ax                          ; 92
        xchg    cx, ax                          ; 91
        xchg    bx, ax                          ; 93
        jae     L_3424                          ; 73 13
L_3411:
        dec     di                              ; 4F
        add     cx, word ptr [0x242]            ; 03 0E 42 02
        adc     bx, word ptr [0x244]            ; 13 1E 44 02
        adc     ax, word ptr [0x246]            ; 13 06 46 02
        adc     dx, word ptr [0x248]            ; 13 16 48 02
        jae     L_3411                          ; 73 ED
L_3424:
        ret                                     ; C3
L_3425:
        dec     di                              ; 4F
        sub     cx, word ptr [0x242]            ; 2B 0E 42 02
        sbb     bx, word ptr [0x244]            ; 1B 1E 44 02
        sbb     ax, word ptr [0x246]            ; 1B 06 46 02
        add     cx, word ptr [0x244]            ; 03 0E 44 02
        adc     bx, word ptr [0x246]            ; 13 1E 46 02
        adc     ax, dx                          ; 13 C2
        mov     dx, word ptr [0x242]            ; 8B 16 42 02
        cmc                                     ; F5
        jmp     L_340C                          ; EB C9
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3443 -- offset 0x3443 -- 242 instr
; Iterador con instrucciones de string (movsb/scasb/...) (242 instr).
; tags: complex_iterator, string_op
; callers: sub_328D
; calls (intra): sub_31B9, sub_320F
;----------------------------------------------------------------------
L_3443:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        xor     ah, ah                          ; 32 E4
        and     al, 0xf                         ; 24 0F
        or      al, 0x10                        ; 0C 10
        mov     word ptr [0x23e], ax            ; A3 3E 02
        mov     al, byte ptr [di + 6]           ; 8A 45 06
        and     al, 0xf                         ; 24 0F
        or      al, 0x10                        ; 0C 10
        mov     word ptr [0x240], ax            ; A3 40 02
        xor     bx, bx                          ; 33 DB
        mov     bp, bx                          ; 8B EB
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_347B                          ; E3 1A
        xchg    cx, ax                          ; 91
        mov     cx, word ptr [di]               ; 8B 0D
        jcxz    L_346E                          ; E3 08
        mul     cx                              ; F7 E1
        mov     bp, ax                          ; 8B E8
        mov     cx, dx                          ; 8B CA
        mov     ax, word ptr [si]               ; 8B 04
L_346E:
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        or      dx, dx                          ; 0B D2
        je      L_347B                          ; 74 06
        mul     dx                              ; F7 E2
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
L_347B:
        push    bp                              ; 55
        xor     bp, bp                          ; 33 ED
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        or      ax, ax                          ; 0B C0
        je      L_3493                          ; 74 0E
        mov     dx, word ptr [di]               ; 8B 15
        or      dx, dx                          ; 0B D2
        je      L_3493                          ; 74 08
        mul     dx                              ; F7 E2
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
        rcl     bp, 1                           ; D1 D5
L_3493:
        pop     ax                              ; 58
        or      ax, cx                          ; 0B C1
        push    ax                              ; 50
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        or      ax, ax                          ; 0B C0
        je      L_34AB                          ; 74 0D
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        or      dx, dx                          ; 0B D2
        je      L_34AB                          ; 74 06
        mul     dx                              ; F7 E2
        add     bx, ax                          ; 03 D8
        adc     bp, dx                          ; 13 EA
L_34AB:
        xor     cx, cx                          ; 33 C9
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        je      L_34C2                          ; 74 0F
        mov     dx, word ptr [di + 4]           ; 8B 55 04
        or      dx, dx                          ; 0B D2
        je      L_34C2                          ; 74 08
        mul     dx                              ; F7 E2
        add     bx, ax                          ; 03 D8
        adc     bp, dx                          ; 13 EA
        rcl     cx, 1                           ; D1 D1
L_34C2:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        or      ax, ax                          ; 0B C0
        je      L_34D8                          ; 74 0F
        mov     dx, word ptr [di]               ; 8B 15
        or      dx, dx                          ; 0B D2
        je      L_34D8                          ; 74 09
        mul     dx                              ; F7 E2
        add     bx, ax                          ; 03 D8
        adc     bp, dx                          ; 13 EA
        adc     cx, 0                           ; 83 D1 00
L_34D8:
        pop     ax                              ; 58
        or      ax, bx                          ; 0B C3
        push    ax                              ; 50
        mov     ax, word ptr [si]               ; 8B 04
        or      ax, ax                          ; 0B C0
        je      L_34EA                          ; 74 08
        mul     word ptr [0x240]                ; F7 26 40 02
        add     bp, ax                          ; 03 E8
        adc     cx, dx                          ; 13 CA
L_34EA:
        mov     ax, word ptr [di]               ; 8B 05
        or      ax, ax                          ; 0B C0
        je      L_34F8                          ; 74 08
        mul     word ptr [0x23e]                ; F7 26 3E 02
        add     bp, ax                          ; 03 E8
        adc     cx, dx                          ; 13 CA
L_34F8:
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        or      ax, ax                          ; 0B C0
        je      L_3510                          ; 74 0F
        mov     dx, word ptr [di + 4]           ; 8B 55 04
        or      dx, dx                          ; 0B D2
        je      L_3510                          ; 74 08
        mul     dx                              ; F7 E2
        add     bp, ax                          ; 03 E8
        adc     cx, dx                          ; 13 CA
        rcl     bx, 1                           ; D1 D3
L_3510:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        or      ax, ax                          ; 0B C0
        je      L_3527                          ; 74 10
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        or      dx, dx                          ; 0B D2
        je      L_3527                          ; 74 09
        mul     dx                              ; F7 E2
        add     bp, ax                          ; 03 E8
        adc     cx, dx                          ; 13 CA
        adc     bx, 0                           ; 83 D3 00
L_3527:
        push    bp                              ; 55
        xor     bp, bp                          ; 33 ED
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        or      ax, ax                          ; 0B C0
        je      L_3539                          ; 74 08
        mul     word ptr [0x23e]                ; F7 26 3E 02
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
L_3539:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        or      ax, ax                          ; 0B C0
        je      L_3548                          ; 74 08
        mul     word ptr [0x240]                ; F7 26 40 02
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
L_3548:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        or      ax, ax                          ; 0B C0
        je      L_3569                          ; 74 1A
        mov     dx, word ptr [di + 4]           ; 8B 55 04
        or      dx, dx                          ; 0B D2
        je      L_3561                          ; 74 0B
        mul     dx                              ; F7 E2
        add     cx, ax                          ; 03 C8
        adc     bx, dx                          ; 13 DA
        rcl     bp, 1                           ; D1 D5
        mov     ax, word ptr [si + 4]           ; 8B 44 04
L_3561:
        mul     word ptr [0x240]                ; F7 26 40 02
        add     bx, ax                          ; 03 D8
        adc     bp, dx                          ; 13 EA
L_3569:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        or      ax, ax                          ; 0B C0
        je      L_3578                          ; 74 08
        mul     word ptr [0x23e]                ; F7 26 3E 02
        add     bx, ax                          ; 03 D8
        adc     bp, dx                          ; 13 EA
L_3578:
        mov     al, byte ptr [0x23e]            ; A0 3E 02
        mul     byte ptr [0x240]                ; F6 26 40 02
        add     ax, bp                          ; 03 C5
        xchg    di, ax                          ; 97
        pop     dx                              ; 5A
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     di, 1                           ; D1 D7
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     di, 1                           ; D1 D7
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     di, 1                           ; D1 D7
        pop     si                              ; 5E
        or      si, si                          ; 0B F6
        ret                                     ; C3
L_359F:
        mov     byte ptr [0x24a], 0             ; C6 06 4A 02 00
        mov     si, word ptr [0x24b]            ; 8B 36 4B 02
        or      si, si                          ; 0B F6
        je      L_35B4                          ; 74 08
        sub     si, 0x4c0                       ; 81 EE C0 04
        cmp     si, bp                          ; 3B F5
        ja      L_3604                          ; 77 50
L_35B4:
        or      bp, bp                          ; 0B ED
        je      L_3604                          ; 74 4C
        push    word ptr [0x228]                ; FF 36 28 02
        mov     word ptr [0x228], 0x24d         ; C7 06 28 02 4D 02
        push    ax                              ; 50
        push    cx                              ; 51
        push    dx                              ; 52
        push    bx                              ; 53
        push    bp                              ; 55
        push    di                              ; 57
        xor     bx, bx                          ; 33 DB
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        call    L_320F                          ; E8 3E FC
        pop     di                              ; 5F
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     ax                              ; 58
        mov     word ptr [0x228], 0x255         ; C7 06 28 02 55 02
        push    ax                              ; 50
        push    cx                              ; 51
        push    dx                              ; 52
        push    bx                              ; 53
        push    bp                              ; 55
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        call    L_31B9                          ; E8 D1 FB
L_35E8:
        pop     di                              ; 5F
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     ax                              ; 58
        pop     word ptr [0x228]                ; 8F 06 28 02
        jmp     L_320F                          ; E9 1A FC
L_35F5:
        xor     ax, ax                          ; 33 C0
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        xor     bx, bx                          ; 33 DB
        xor     bp, bp                          ; 33 ED
        xor     di, di                          ; 33 FF
        mov     byte ptr [0x24a], al            ; A2 4A 02
L_3604:
        push    word ptr [0x228]                ; FF 36 28 02
        mov     word ptr [0x228], 0x255         ; C7 06 28 02 55 02
        push    ax                              ; 50
        push    cx                              ; 51
        push    dx                              ; 52
        push    bx                              ; 53
        push    bp                              ; 55
        push    di                              ; 57
        call    L_320F                          ; E8 F8 FB
        mov     di, 0x24d                       ; BF 4D 02
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_35E8                          ; EB C6
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        push    ds                              ; 1E
        pop     es                              ; 07
        lea     si, [bp + 0xc]                  ; 8D 76 0C
        mov     di, 0x26a                       ; BF 6A 02
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        jmp     L_3642                          ; EB 08
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_363A -- offset 0x363A -- 87 instr
; Iterador con instrucciones de string (movsb/scasb/...) (87 instr).
; tags: complex_iterator, string_op
; calls (intra): sub_36F5, sub_3B97
;----------------------------------------------------------------------
L_363A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        push    ds                              ; 1E
        pop     es                              ; 07
L_3642:
        lea     si, [bp + 4]                    ; 8D 76 04
        mov     di, 0x262                       ; BF 62 02
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        mov     si, 0x262                       ; BE 62 02
        mov     di, 0x26a                       ; BF 6A 02
        push    word ptr [0x228]                ; FF 36 28 02
        mov     word ptr [0x228], 0x272         ; C7 06 28 02 72 02
        push    bx                              ; 53
        push    bp                              ; 55
        call    dx                              ; FF D2
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        pop     word ptr [0x228]                ; 8F 06 28 02
        jb      L_3675                          ; 72 09
L_366C:
        mov     ax, 0x272                       ; B8 72 02
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
L_3675:
        xor     cx, cx                          ; 33 C9
        mov     cl, al                          ; 8A C8
        mov     word ptr [0x260], bx            ; 89 1E 60 02
        mov     di, 0x272                       ; BF 72 02
        cmp     ah, 3                           ; 80 FC 03
        je      L_3697                          ; 74 12
        cmp     al, 7                           ; 3C 07
        je      L_3695                          ; 74 0C
        cmp     al, 3                           ; 3C 03
        je      L_36A5                          ; 74 18
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_36AC                          ; EB 17
L_3695:
        mov     cl, 3                           ; B1 03
L_3697:
        mov     si, 0x2ce                       ; BE CE 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        or      byte ptr [0x279], 0x80          ; 80 0E 79 02 80
        jmp     L_36AC                          ; EB 07
L_36A5:
        mov     si, 0x2ce                       ; BE CE 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
L_36AC:
        mov     word ptr [0x25e], cx            ; 89 0E 5E 02
        mov     si, cx                          ; 8B F1
        mov     ax, 0x25e                       ; B8 5E 02
        push    ax                              ; 50
        call    L_3B97                          ; E8 DE 04
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_366C                          ; 75 AC
        mov     al, 0x21                        ; B0 21
        cmp     word ptr [0x25e], 3             ; 83 3E 5E 02 03
        jb      L_36CB                          ; 72 02
        mov     al, 0x22                        ; B0 22
L_36CB:
        cwde                                    ; 98
        mov     word ptr [0x33a], ax            ; A3 3A 03
        shl     si, 1                           ; D1 E6
        mov     si, word ptr [si + 0x28a]       ; 8B B4 8A 02
        or      si, si                          ; 0B F6
        je      L_366C                          ; 74 93
        mov     bx, word ptr [0x260]            ; 8B 1E 60 02
        dec     bx                              ; 4B
        call    L_36F5                          ; E8 14 00
        mov     bx, 0x298                       ; BB 98 02
        call    L_36F5                          ; E8 0E 00
        mov     bx, si                          ; 8B DE
        call    L_36F5                          ; E8 09 00
        mov     bx, 0x29b                       ; BB 9B 02
        call    L_36F5                          ; E8 03 00
        jmp     L_366C                          ; E9 77 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_36F5 -- offset 0x36F5 -- 109 instr
; Funcion compleja: 109 instrucciones, 3 llamadas, 5 branches.
; tags: complex
; callers: sub_363A
; calls (intra): sub_3089, sub_32F0, sub_423A
;----------------------------------------------------------------------
L_36F5:
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        inc     bx                              ; 43
        push    bx                              ; 53
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_423A                          ; E8 38 0B
        add     sp, 6                           ; 83 C4 06
        ret                                     ; C3
L_3706:
        mov     ax, 0x501                       ; B8 01 05
        stc                                     ; F9
        ret                                     ; C3
L_370B:
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, si                          ; 8B FE
        xor     ax, ax                          ; 33 C0
        mov     cx, 4                           ; B9 04 00
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     di, si                          ; 8B FE
        clc                                     ; F8
        ret                                     ; C3
        cld                                     ; FC
        mov     di, 0x2ee                       ; BF EE 02
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     bh, al                          ; 8A F8
        test    ax, 0x7ff0                      ; A9 F0 7F
        je      L_370B                          ; 74 E1
        and     ax, 0xfff0                      ; 25 F0 FF
        js      L_3706                          ; 78 D7
        sub     ax, 0x3fe0                      ; 2D E0 3F
        mov     bl, byte ptr [si + 5]           ; 8A 5C 05
        mov     cx, word ptr [si + 3]           ; 8B 4C 03
        mov     dx, word ptr [si + 1]           ; 8B 54 01
        push    si                              ; 56
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        shl     dx, 1                           ; D1 E2
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        or      bh, 0x80                        ; 80 CF 80
        test    al, 0x10                        ; A8 10
        je      L_375E                          ; 74 09
        add     ax, 0x10                        ; 05 10 00
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        rcr     dx, 1                           ; D1 DA
L_375E:
        sar     ax, 1                           ; D1 F8
        add     ax, 0x3fe0                      ; 05 E0 3F
        mov     word ptr [di + 6], ax           ; 89 45 06
        cmp     bx, -2                          ; 83 FB FE
        jb      L_376E                          ; 72 03
        stc                                     ; F9
        jmp     L_37A4                          ; EB 36
L_376E:
        push    dx                              ; 52
        mov     ax, 0xafb1                      ; B8 B1 AF
        mul     bx                              ; F7 E3
        mov     bp, 0x57d8                      ; BD D8 57
        add     bp, dx                          ; 03 EA
        jae     L_377E                          ; 73 03
        mov     bp, 0xffff                      ; BD FF FF
L_377E:
        mov     dx, bx                          ; 8B D3
        xor     ax, ax                          ; 33 C0
        div     bp                              ; F7 F5
        add     bp, ax                          ; 03 E8
        rcr     bp, 1                           ; D1 DD
        mov     dx, bx                          ; 8B D3
        mov     ax, cx                          ; 8B C1
        div     bp                              ; F7 F5
        stc                                     ; F9
        adc     bp, ax                          ; 13 E8
        rcr     bp, 1                           ; D1 DD
        mov     dx, bx                          ; 8B D3
        mov     ax, cx                          ; 8B C1
        div     bp                              ; F7 F5
        mov     si, ax                          ; 8B F0
        pop     ax                              ; 58
        div     bp                              ; F7 F5
        mov     bx, bp                          ; 8B DD
        mov     cx, ax                          ; 8B C8
        add     bx, si                          ; 03 DE
L_37A4:
        xor     ax, ax                          ; 33 C0
        shl     cx, 1                           ; D1 E1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
        shl     cx, 1                           ; D1 E1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
        shl     cx, 1                           ; D1 E1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
        shl     cx, 1                           ; D1 E1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
        or      byte ptr [di + 6], al           ; 08 45 06
        mov     word ptr [di + 4], bx           ; 89 5D 04
        mov     word ptr [di + 2], cx           ; 89 4D 02
        mov     word ptr [di], 0                ; C7 05 00 00
        pop     si                              ; 5E
        push    di                              ; 57
        call    L_32F0                          ; E8 20 FB
        pop     di                              ; 5F
        call    L_3089                          ; E8 B5 F8
        sub     word ptr [di + 6], 0x10         ; 83 6D 06 10
        clc                                     ; F8
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_37DA -- offset 0x37DA -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: small
; callers: sub_47FE
;----------------------------------------------------------------------
L_37DA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
L_37E5:
        inc     si                              ; 46
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 0x37b], 4        ; F6 87 7B 03 04
        jne     L_37E5                          ; 75 F3
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        mov     byte ptr [si], 0x2e             ; C6 04 2E
        inc     si                              ; 46
L_37F9:
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, di                          ; 8B C7
        mov     byte ptr [si], al               ; 88 04
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_37F9                          ; 75 EC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3813 -- offset 0x3813 -- 44 instr
; Dispatcher: tabla de decisiones cmp+jcc (44 instr).
; tags: dispatcher
; callers: sub_47FE
;----------------------------------------------------------------------
L_3813:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_3826                          ; EB 06
L_3820:
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        je      L_382B                          ; 74 06
        inc     si                              ; 46
L_3826:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_3820                          ; 75 F5
L_382B:
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        je      L_3861                          ; 74 2F
        jmp     L_383F                          ; EB 0B
L_3834:
        cmp     byte ptr [si], 0x65             ; 80 3C 65
        je      L_3844                          ; 74 0B
        cmp     byte ptr [si], 0x45             ; 80 3C 45
        je      L_3844                          ; 74 06
        inc     si                              ; 46
L_383F:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_3834                          ; 75 F0
L_3844:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        mov     di, ax                          ; 8B F8
        jmp     L_384C                          ; EB 01
L_384B:
        dec     si                              ; 4E
L_384C:
        cmp     byte ptr [si], 0x30             ; 80 3C 30
        je      L_384B                          ; 74 FA
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_3857                          ; 75 01
        dec     si                              ; 4E
L_3857:
        inc     si                              ; 46
        mov     al, byte ptr [di]               ; 8A 05
        inc     di                              ; 47
        mov     byte ptr [si], al               ; 88 04
        or      al, al                          ; 0A C0
        jne     L_3857                          ; 75 F6
L_3861:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3867 -- offset 0x3867 -- 49 instr
; Iterador con instrucciones de string (movsb/scasb/...) (49 instr).
; tags: iterator, string_op
; callers: sub_47FE
; calls (intra): sub_1400, sub_240E, sub_24FA, sub_275B
;----------------------------------------------------------------------
L_3867:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        lea     bx, [bx]                        ; 8D 1F
        call    L_240E                          ; E8 9C EB
        lea     bx, [0x5c2]                     ; 8D 1E C2 05
        call    L_240E                          ; E8 95 EB
        call    L_275B                          ; E8 DF EE
        jl      L_3883                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_3885                          ; EB 02
L_3883:
        sub     ax, ax                          ; 2B C0
L_3885:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_38AE                          ; 74 1A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1400                          ; E8 66 DB
        add     sp, 2                           ; 83 C4 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, bx                          ; 8B FB
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        jmp     L_38C6                          ; EB 18
L_38AE:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1400                          ; E8 4C DB
        add     sp, 2                           ; 83 C4 02
        mov     bx, ax                          ; 8B D8
        call    L_240E                          ; E8 52 EB
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        lea     bx, [bx]                        ; 8D 1F
        call    L_24FA                          ; E8 34 EC
L_38C6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_38CC -- offset 0x38CC -- 114 instr
; Iterador con instrucciones de string (movsb/scasb/...) (114 instr).
; tags: complex_iterator, string_op
; callers: sub_3A84, sub_3AE4
; calls (intra): sub_3B53, sub_400D, sub_41F3
;----------------------------------------------------------------------
L_38CC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        mov     si, ax                          ; 8B F0
        mov     di, sp                          ; 8B FC
        add     di, 4                           ; 83 C7 04
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     di                              ; 5F
        pop     si                              ; 5E
        call    L_3B53                          ; E8 65 02
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_3905                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_3907                          ; EB 02
L_3905:
        sub     ax, ax                          ; 2B C0
L_3907:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bx], 0x2d             ; 83 3F 2D
        jne     L_3917                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_3919                          ; EB 02
L_3917:
        sub     ax, ax                          ; 2B C0
L_3919:
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    L_400D                          ; E8 EA 06
        add     sp, 6                           ; 83 C4 06
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx], 0x2d             ; 83 3F 2D
        jne     L_3935                          ; 75 04
        mov     byte ptr [si], 0x2d             ; C6 04 2D
        inc     si                              ; 46
L_3935:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_3944                          ; 7E 09
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        mov     byte ptr [si], 0x2e             ; C6 04 2E
L_3944:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        lea     ax, [bx + si + 1]               ; 8D 40 01
        push    ax                              ; 50
        call    L_41F3                          ; E8 A1 08
        add     sp, 4                           ; 83 C4 04
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_3960                          ; 74 03
        mov     byte ptr [si], 0x45             ; C6 04 45
L_3960:
        inc     si                              ; 46
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     bx, word ptr [bx + 6]           ; 8B 5F 06
        cmp     byte ptr [bx], 0x30             ; 80 3F 30
        je      L_39B3                          ; 74 47
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        dec     di                              ; 4F
        or      di, di                          ; 0B FF
        jge     L_3980                          ; 7D 09
        mov     ax, di                          ; 8B C7
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        mov     byte ptr [si], 0x2d             ; C6 04 2D
L_3980:
        inc     si                              ; 46
        cmp     di, 0x64                        ; 83 FF 64
        jl      L_3997                          ; 7C 11
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        add     byte ptr [si], al               ; 00 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     di, dx                          ; 8B FA
L_3997:
        inc     si                              ; 46
        cmp     di, 0xa                         ; 83 FF 0A
        jl      L_39AE                          ; 7C 11
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     byte ptr [si], al               ; 00 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     di, dx                          ; 8B FA
L_39AE:
        inc     si                              ; 46
        mov     ax, di                          ; 8B C7
        add     byte ptr [si], al               ; 00 04
L_39B3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_39BC -- offset 0x39BC -- 91 instr
; Iterador con instrucciones de string (movsb/scasb/...) (91 instr).
; tags: complex_iterator, string_op
; callers: sub_3A84, sub_3AE4
; calls (intra): sub_3B31, sub_3B53, sub_400D, sub_416F
;----------------------------------------------------------------------
L_39BC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, ax                          ; 8B F0
        mov     di, sp                          ; 8B FC
        add     di, 2                           ; 83 C7 02
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        call    L_3B53                          ; E8 77 01
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     ax, word ptr [bp + 8]           ; 03 46 08
        push    ax                              ; 50
        cmp     word ptr [bx], 0x2d             ; 83 3F 2D
        jne     L_39F6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_39F8                          ; EB 02
L_39F6:
        sub     ax, ax                          ; 2B C0
L_39F8:
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        call    L_400D                          ; E8 0E 06
        add     sp, 6                           ; 83 C4 06
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx], 0x2d             ; 83 3F 2D
        jne     L_3A11                          ; 75 04
        mov     byte ptr [si], 0x2d             ; C6 04 2D
        inc     si                              ; 46
L_3A11:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jg      L_3A2B                          ; 7F 11
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        call    L_3B31                          ; E8 0F 01
        add     sp, 4                           ; 83 C4 04
        mov     byte ptr [si], 0x30             ; C6 04 30
        inc     si                              ; 46
        jmp     L_3A31                          ; EB 06
L_3A2B:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     si, word ptr [bx + 2]           ; 03 77 02
L_3A31:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_3A7B                          ; 7E 44
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        call    L_3B31                          ; E8 F2 00
        add     sp, 4                           ; 83 C4 04
        mov     byte ptr [si], 0x2e             ; C6 04 2E
        inc     si                              ; 46
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jge     L_3A7B                          ; 7D 2C
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp + 8], di           ; 39 7E 08
        jge     L_3A60                          ; 7D 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_3A62                          ; EB 02
L_3A60:
        mov     ax, di                          ; 8B C7
L_3A62:
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    ax                              ; 50
        push    si                              ; 56
        call    L_3B31                          ; E8 C7 00
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        push    si                              ; 56
        call    L_416F                          ; E8 F7 06
        add     sp, 6                           ; 83 C4 06
L_3A7B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3A84 -- offset 0x3A84 -- 44 instr
; Iterador con instrucciones de string (movsb/scasb/...) (44 instr).
; tags: iterator, string_op
; callers: sub_3AE4
; calls (intra): sub_38CC, sub_39BC, sub_3B53
;----------------------------------------------------------------------
L_3A84:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     sp, 8                           ; 83 EC 08
        mov     si, ax                          ; 8B F0
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_3B53                          ; E8 B4 00
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0xfffc                      ; 3D FC FF
        jl      L_3ABB                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jle     L_3ACF                          ; 7E 14
L_3ABB:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_38CC                          ; E8 02 FE
        add     sp, 8                           ; 83 C4 08
        jmp     L_3ADE                          ; EB 0F
L_3ACF:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_39BC                          ; E8 E1 FE
        add     sp, 6                           ; 83 C4 06
L_3ADE:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3AE4 -- offset 0x3AE4 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: small
; callers: sub_47FE
; calls (intra): sub_38CC, sub_39BC, sub_3A84
;----------------------------------------------------------------------
L_3AE4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 8], 0x65         ; 83 7E 08 65
        je      L_3AF3                          ; 74 06
        cmp     word ptr [bp + 8], 0x45         ; 83 7E 08 45
        jne     L_3B04                          ; 75 11
L_3AF3:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_38CC                          ; E8 CA FD
        jmp     L_3B2A                          ; EB 26
L_3B04:
        cmp     word ptr [bp + 8], 0x66         ; 83 7E 08 66
        jne     L_3B1B                          ; 75 11
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_39BC                          ; E8 A6 FE
        add     sp, 6                           ; 83 C4 06
        jmp     L_3B2D                          ; EB 12
L_3B1B:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3A84                          ; E8 5A FF
L_3B2A:
        add     sp, 8                           ; 83 C4 08
L_3B2D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3B31 -- offset 0x3B31 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
; callers: sub_39BC
; calls (intra): sub_411D, sub_4216
;----------------------------------------------------------------------
L_3B31:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        call    L_4216                          ; E8 DA 06
        add     sp, 2                           ; 83 C4 02
        inc     ax                              ; 40
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, si                          ; 03 C6
        push    ax                              ; 50
        call    L_411D                          ; E8 D2 05
        add     sp, 6                           ; 83 C4 06
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3B53 -- offset 0x3B53 -- 36 instr
; Iterador con instrucciones de string (movsb/scasb/...) (36 instr).
; tags: iterator, string_op
; callers: sub_38CC, sub_39BC, sub_3A84
; calls (intra): sub_3D4D
;----------------------------------------------------------------------
L_3B53:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        lea     si, [bp + 4]                    ; 8D 76 04
        mov     di, 0x2b2                       ; BF B2 02
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        mov     si, 0x2b2                       ; BE B2 02
        push    bp                              ; 55
        call    L_3D4D                          ; E8 DB 01
        pop     bp                              ; 5D
        mov     di, 0x2ba                       ; BF BA 02
        lodsb   al, byte ptr [si]               ; AC
        cwde                                    ; 98
        xchg    cx, ax                          ; 91
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    cx, ax                          ; 91
        stosb   byte ptr es:[di], al            ; AA
        mov     di, 0x2aa                       ; BF AA 02
        xor     bh, bh                          ; 32 FF
        mov     word ptr [di], bx               ; 89 1D
        mov     word ptr [di + 2], dx           ; 89 55 02
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     word ptr [di + 6], 0x2ba        ; C7 45 06 BA 02
        mov     ax, di                          ; 8B C7
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3B97 -- offset 0x3B97 -- 141 instr
; Iterador con instrucciones de string (movsb/scasb/...) (141 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_363A
; calls (intra): sub_3089, sub_328D
;----------------------------------------------------------------------
L_3B97:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        xor     ax, ax                          ; 33 C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        jmp     L_3089                          ; E9 DF F4
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        jmp     L_3066                          ; E9 B2 F4
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        jmp     L_328D                          ; E9 CF F6
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        jmp     L_32F0                          ; E9 28 F7
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     si, 0x2ee                       ; BE EE 02
        jmp     L_3066                          ; E9 94 F4
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     si, 0x2ee                       ; BE EE 02
        jmp     L_32F0                          ; E9 14 F7
        push    ax                              ; 50
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        pop     di                              ; 5F
        pop     ax                              ; 58
        ret                                     ; C3
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        cmp     si, di                          ; 3B F7
        jne     L_3BFC                          ; 75 08
        ret                                     ; C3
        mov     si, 0x2ee                       ; BE EE 02
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
L_3BFC:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        ret                                     ; C3
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     si, 8                           ; 83 EE 08
        ret                                     ; C3
        mov     di, 0x2f6                       ; BF F6 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     si, 8                           ; 83 EE 08
        ret                                     ; C3
        mov     si, 0x2ee                       ; BE EE 02
        jmp     L_3C28                          ; EB 04
        mov     si, word ptr [0x228]            ; 8B 36 28 02
L_3C28:
        pop     ax                              ; 58
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        jmp     ax                              ; FF E0
        mov     si, 0x2ee                       ; BE EE 02
        jmp     L_3C3F                          ; EB 04
        mov     si, word ptr [0x228]            ; 8B 36 28 02
L_3C3F:
        pop     ax                              ; 58
        pop     word ptr [si]                   ; 8F 04
        pop     word ptr [si + 2]               ; 8F 44 02
        pop     word ptr [si + 4]               ; 8F 44 04
        pop     word ptr [si + 6]               ; 8F 44 06
        jmp     ax                              ; FF E0
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     si, bx                          ; 8B F3
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        or      cx, cx                          ; 0B C9
        jns     L_3C65                          ; 79 05
        xor     ch, ch                          ; 32 ED
        push    cx                              ; 51
        jmp     L_3C7C                          ; EB 17
L_3C65:
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        jcxz    L_3C8B                          ; E3 1C
L_3C6F:
        push    cx                              ; 51
        push    si                              ; 56
        mov     si, word ptr [0x228]            ; 8B 36 28 02
        mov     di, 0x2ee                       ; BF EE 02
        call    L_328D                          ; E8 12 F6
        pop     si                              ; 5E
L_3C7C:
        push    si                              ; 56
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        call    L_3089                          ; E8 05 F4
        pop     si                              ; 5E
        pop     cx                              ; 59
        add     si, 8                           ; 83 C6 08
        loop    L_3C6F                          ; E2 E4
L_3C8B:
        mov     di, word ptr [0x228]            ; 8B 3E 28 02
        mov     si, di                          ; 8B F7
        ret                                     ; C3
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     ch, al                          ; 8A E8
        and     ax, 0x7ff0                      ; 25 F0 7F
        je      L_3CC7                          ; 74 2B
        sub     ax, 0x3fc0                      ; 2D C0 3F
        cmp     ax, 0x370                       ; 3D 70 03
        ja      L_3CC7                          ; 77 23
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        mov     cl, al                          ; 8A C8
        and     cl, 7                           ; 80 E1 07
        inc     cx                              ; 41
        shr     al, 1                           ; D0 E8
        shr     al, 1                           ; D0 E8
        shr     al, 1                           ; D0 E8
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        neg     bx                              ; F7 DB
        or      ch, 0x10                        ; 80 CD 10
        xchg    byte ptr [si + 6], ch           ; 86 6C 06
        mov     al, byte ptr [bx + si + 6]      ; 8A 40 06
        shl     al, cl                          ; D2 E0
        mov     byte ptr [si + 6], ch           ; 88 6C 06
L_3CC7:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3CC8 -- offset 0x3CC8 -- 18 instr
; Iterador con bucle (18 instr).
; tags: iterator, loop
; callers: sub_3D4D
;----------------------------------------------------------------------
L_3CC8:
        push    bx                              ; 53
        push    si                              ; 56
        mov     ah, byte ptr [si + 9]           ; 8A 64 09
        mov     al, byte ptr cs:[bx + 9]        ; 2E 8A 47 09
        and     ax, 0x8080                      ; 25 80 80
        cmp     al, ah                          ; 3A C4
        jne     L_3CEE                          ; 75 16
        add     si, 0xa                         ; 83 C6 0A
        add     bx, 0xa                         ; 83 C3 0A
        mov     cx, 5                           ; B9 05 00
L_3CE1:
        sub     si, 2                           ; 83 EE 02
        sub     bx, 2                           ; 83 EB 02
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, word ptr cs:[bx]            ; 2E 3B 07
        loope   L_3CE1                          ; E1 F3
L_3CEE:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3CF1 -- offset 0x3CF1 -- 55 instr
; Iterador con instrucciones de string (movsb/scasb/...) (55 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_3D4D
;----------------------------------------------------------------------
L_3CF1:
        push    si                              ; 56
        lodsw   ax, word ptr [si]               ; AD
        xchg    bp, ax                          ; 95
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, ax                          ; 92
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        xor     di, di                          ; 33 FF
        mov     cx, 5                           ; B9 05 00
L_3CFE:
        shr     ax, 1                           ; D1 E8
        rcr     bx, 1                           ; D1 DB
        rcr     dx, 1                           ; D1 DA
        rcr     bp, 1                           ; D1 DD
        rcr     di, 1                           ; D1 DF
        loop    L_3CFE                          ; E2 F4
        shl     bx, 1                           ; D1 E3
        rcl     ax, 1                           ; D1 D0
        cmp     ax, 1                           ; 3D 01 00
        cmc                                     ; F5
        rcr     bx, 1                           ; D1 DB
        sub     ax, 0x3fe                       ; 2D FE 03
        pop     si                              ; 5E
        mov     word ptr [si], di               ; 89 3C
        mov     word ptr [si + 2], bp           ; 89 6C 02
        mov     word ptr [si + 4], dx           ; 89 54 04
        mov     word ptr [si + 6], bx           ; 89 5C 06
        mov     word ptr [si + 8], ax           ; 89 44 08
        ret                                     ; C3
        cld                                     ; 66 FC
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     ch, cl                          ; 00 CD
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        std                                     ; FD
        db      0ffh                            ; FF
L_3D3B:
        mov     si, 0x30a                       ; BE 0A 03
        mov     byte ptr [si], 1                ; C6 04 01
        mov     byte ptr [si + 1], 0x30         ; C6 44 01 30
        xor     ax, ax                          ; 33 C0
        mov     dx, ax                          ; 8B D0
        inc     ax                              ; 40
        pop     bx                              ; 5B
        pop     es                              ; 07
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3D4D -- offset 0x3D4D -- 136 instr
; Iterador con instrucciones de string (movsb/scasb/...) (136 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_3B53
; calls (intra): sub_3CC8, sub_3CF1, sub_3E4D
;----------------------------------------------------------------------
L_3D4D:
        push    es                              ; 06
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        mov     di, 0x2fe                       ; BF FE 02
        push    di                              ; 57
        mov     cx, 4                           ; B9 04 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        pop     si                              ; 5E
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     byte ptr [si + 7], 0x7f         ; 80 64 07 7F
        mov     bl, 0x20                        ; B3 20
        test    cx, 0x7ff0                      ; F7 C1 F0 7F
        je      L_3D72                          ; 74 06
        or      cx, cx                          ; 0B C9
        jns     L_3D72                          ; 79 02
        mov     bl, 0x2d                        ; B3 2D
L_3D72:
        push    bx                              ; 53
        call    L_3CF1                          ; E8 7B FF
        xor     di, di                          ; 33 FF
        mov     si, 0x305                       ; BE 05 03
        lodsb   al, byte ptr [si]               ; AC
        test    al, 0x80                        ; A8 80
        je      L_3D3B                          ; 74 BB
        mov     bh, al                          ; 8A F8
        lodsw   ax, word ptr [si]               ; AD
        add     ax, 0x3ffe                      ; 05 FE 3F
        mov     cx, ax                          ; 8B C8
        mov     dx, 0x4d10                      ; BA 10 4D
        mul     dx                              ; F7 E2
        xchg    cx, ax                          ; 91
        mov     al, 0x4d                        ; B0 4D
        mul     ah                              ; F6 E4
        add     cx, ax                          ; 03 C8
        adc     dx, di                          ; 13 D7
        mov     al, 0x9a                        ; B0 9A
        mul     bh                              ; F6 E7
        add     cx, ax                          ; 03 C8
        adc     di, dx                          ; 13 FA
        sub     cx, 0x12f4                      ; 81 E9 F4 12
        sbb     di, 0x1343                      ; 81 DF 43 13
        push    di                              ; 57
        neg     di                              ; F7 DF
        mov     si, 0x2fe                       ; BE FE 02
        call    L_3FB3                          ; E8 04 02
        mov     bx, 0x3d27                      ; BB 27 3D
        call    L_3CC8                          ; E8 13 FF
        pop     di                              ; 5F
        jb      L_3DC1                          ; 72 09
        inc     di                              ; 47
        push    di                              ; 57
        mov     bx, 0x3d31                      ; BB 31 3D
        call    L_3E4D                          ; E8 8D 00
        pop     di                              ; 5F
L_3DC1:
        push    di                              ; 57
        lodsw   ax, word ptr [si]               ; AD
        xchg    di, ax                          ; 97
        lodsw   ax, word ptr [si]               ; AD
        xchg    bp, ax                          ; 95
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, ax                          ; 92
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        neg     cx                              ; F7 D9
        mov     si, di                          ; 8B F7
        xor     ax, ax                          ; 33 C0
        jcxz    L_3DE0                          ; E3 0C
L_3DD4:
        shr     bx, 1                           ; D1 EB
        rcr     dx, 1                           ; D1 DA
        rcr     bp, 1                           ; D1 DD
        rcr     si, 1                           ; D1 DE
        rcr     ah, 1                           ; D0 DC
        loop    L_3DD4                          ; E2 F4
L_3DE0:
        add     ah, 0x56                        ; 80 C4 56
        adc     si, 0x39a                       ; 81 D6 9A 03
        adc     bp, cx                          ; 13 E9
        adc     dx, cx                          ; 13 D1
        adc     bx, cx                          ; 13 D9
        mov     di, 0x30b                       ; BF 0B 03
        mov     cx, 0x10                        ; B9 10 00
L_3DF3:
        xor     al, al                          ; 32 C0
        push    cx                              ; 51
        push    bx                              ; 53
        push    dx                              ; 52
        push    bp                              ; 55
        push    si                              ; 56
        push    ax                              ; 50
        shl     ah, 1                           ; D0 E4
        rcl     si, 1                           ; D1 D6
        rcl     bp, 1                           ; D1 D5
        rcl     dx, 1                           ; D1 D2
        rcl     bx, 1                           ; D1 D3
        rcl     al, 1                           ; D0 D0
        shl     ah, 1                           ; D0 E4
        rcl     si, 1                           ; D1 D6
        rcl     bp, 1                           ; D1 D5
        rcl     dx, 1                           ; D1 D2
        rcl     bx, 1                           ; D1 D3
        rcl     al, 1                           ; D0 D0
        pop     cx                              ; 59
        add     ah, ch                          ; 02 E5
        pop     cx                              ; 59
        adc     si, cx                          ; 13 F1
        pop     cx                              ; 59
        adc     bp, cx                          ; 13 E9
        pop     cx                              ; 59
        adc     dx, cx                          ; 13 D1
        pop     cx                              ; 59
        adc     bx, cx                          ; 13 D9
        adc     al, 0                           ; 14 00
        shl     ah, 1                           ; D0 E4
        rcl     si, 1                           ; D1 D6
        rcl     bp, 1                           ; D1 D5
        rcl     dx, 1                           ; D1 D2
        rcl     bx, 1                           ; D1 D3
        rcl     al, 1                           ; D0 D0
        add     al, 0x30                        ; 04 30
        stosb   byte ptr es:[di], al            ; AA
        pop     cx                              ; 59
        loop    L_3DF3                          ; E2 BD
        dec     di                              ; 4F
        dec     cx                              ; 49
        mov     al, 0x30                        ; B0 30
        std                                     ; FD
        repe scasb al, byte ptr es:[di]         ; F3 AE
        cld                                     ; FC
        add     cx, 0x12                        ; 83 C1 12
        mov     si, 0x30a                       ; BE 0A 03
        mov     byte ptr [si], cl               ; 88 0C
        mov     ax, 1                           ; B8 01 00
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        pop     es                              ; 07
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3E4D -- offset 0x3E4D -- 197 instr
; Iterador con instrucciones de string (movsb/scasb/...) (197 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_3D4D
;----------------------------------------------------------------------
L_3E4D:
        mov     bp, 0x31c                       ; BD 1C 03
        mov     cx, 8                           ; B9 08 00
        mov     di, bp                          ; 8B FD
        xor     ax, ax                          ; 33 C0
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     ax, word ptr cs:[bx + 8]        ; 2E 8B 47 08
        add     word ptr [si + 8], ax           ; 01 44 08
        mov     di, 7                           ; BF 07 00
L_3E63:
        mov     ax, 4                           ; B8 04 00
        sub     ax, di                          ; 2B C7
        and     ah, al                          ; 22 E0
        sub     al, ah                          ; 2A C4
        sub     al, ah                          ; 2A C4
        neg     al                              ; F6 D8
        add     al, 4                           ; 04 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        push    bx                              ; 53
        push    si                              ; 56
        sub     bx, cx                          ; 2B D9
        sub     bx, di                          ; 2B DF
        add     bx, 8                           ; 83 C3 08
        add     si, cx                          ; 03 F1
        sub     si, di                          ; 2B F7
        add     si, 6                           ; 83 C6 06
L_3E85:
        mov     ax, word ptr [si]               ; 8B 04
        mul     word ptr cs:[bx]                ; 2E F7 27
        add     word ptr ds:[bp], ax            ; 3E 01 46 00
        adc     word ptr ds:[bp + 2], dx        ; 3E 11 56 02
        adc     word ptr ds:[bp + 4], 0         ; 3E 83 56 04 00
        sub     si, 2                           ; 83 EE 02
        add     bx, 2                           ; 83 C3 02
        loop    L_3E85                          ; E2 E6
        pop     si                              ; 5E
        pop     bx                              ; 5B
        add     bp, 2                           ; 83 C5 02
        dec     di                              ; 4F
        jne     L_3E63                          ; 75 BC
        sub     bp, 0xe                         ; 83 ED 0E
        xchg    bp, si                          ; 87 F5
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        lodsw   ax, word ptr [si]               ; AD
        or      cx, ax                          ; 0B C8
        lodsw   ax, word ptr [si]               ; AD
        or      cx, ax                          ; 0B C8
        or      cl, ch                          ; 0A CD
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, ax                          ; 92
        or      dl, cl                          ; 0A D1
        lodsw   ax, word ptr [si]               ; AD
        xchg    di, ax                          ; 97
        lodsw   ax, word ptr [si]               ; AD
        xchg    cx, ax                          ; 91
        lodsw   ax, word ptr [si]               ; AD
        xchg    bx, ax                          ; 93
        lodsw   ax, word ptr [si]               ; AD
        mov     si, bp                          ; 8B F5
        or      ax, ax                          ; 0B C0
        js      L_3ED4                          ; 78 0D
        dec     word ptr [si + 8]               ; FF 4C 08
        shl     dx, 1                           ; D1 E2
        rcl     di, 1                           ; D1 D7
        rcl     cx, 1                           ; D1 D1
        rcl     bx, 1                           ; D1 D3
        rcl     ax, 1                           ; D1 D0
L_3ED4:
        mov     bp, 1                           ; BD 01 00
        and     bp, di                          ; 23 EF
        or      dx, bp                          ; 0B D5
        xor     bp, bp                          ; 33 ED
        cmp     dx, 0x8001                      ; 81 FA 01 80
        cmc                                     ; F5
        adc     di, bp                          ; 13 FD
        adc     cx, bp                          ; 13 CD
        adc     bx, bp                          ; 13 DD
        adc     ax, bp                          ; 13 C5
        rcl     bp, 1                           ; D1 D5
        add     word ptr [si + 8], bp           ; 01 6C 08
        ror     bp, 1                           ; D1 CD
        or      ax, bp                          ; 0B C5
        mov     word ptr [si], di               ; 89 3C
        mov     word ptr [si + 2], cx           ; 89 4C 02
        mov     word ptr [si + 4], bx           ; 89 5C 04
        mov     word ptr [si + 6], ax           ; 89 44 06
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
L_3F05:
        add     byte ptr [bx + si + 4], ah      ; 00 A0 04 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, cl                          ; 00 C8
        pop     es                              ; 07
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si - 0x64], al   ; 00 40 9C
        push    cs                              ; 0E
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        and     byte ptr [si + 0x1bbe], bh      ; 20 BC BE 1B
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, 0xbf                        ; 04 BF
        leave                                   ; C9
        sbb     cx, word ptr [bp + 0x36]        ; 1B 8E 36 00
        sahf                                    ; 9E
        mov     ch, 0x70                        ; B5 70
        sub     bp, word ptr [bx + si - 0x3a53] ; 2B A8 AD C5
        popf                                    ; 9D
        imul    ax, word ptr [bx + si], -0x2b   ; 6B 00 D5
        cmpsb   byte ptr [si], byte ptr es:[di] ; A6
        iret                                    ; CF
        dec     word ptr [bx + di + 0x1f]       ; FF 49 1F
        js      L_3F05                          ; 78 C2
        aad     0                               ; D5 00
        loopne  L_3ED3                          ; E0 8C
        jmp     L_08CA                          ; E9 80 C9
L_3F4A:
        inc     di                              ; 47
        mov     dx, 0xaa93                      ; BA 93 AA
        add     word ptr [bp - 0x622], cx       ; 01 8E DE F9
        popf                                    ; 9D
        sti                                     ; FB
        jmp     L_3FD4                          ; EB 7E
        stosb   byte ptr es:[di], al            ; AA
        push    bx                              ; 53
        add     cx, bp                          ; 03 CD
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        int3                                    ; CC
        std                                     ; FD
        dec     word ptr [bp + si]              ; FF 0A
        xlatb                                   ; D7
        mov     word ptr [0x3d70], ax           ; A3 70 3D
        or      dl, bh                          ; 0A D7
        mov     word ptr [0xfffa], ax           ; A3 FA FF
        sub     al, 0x65                        ; 2C 65
        sbb     dx, sp                          ; 19 E2
        pop     ax                              ; 58
        pop     ss                              ; 17
        mov     bh, 0xd1                        ; B7 D1
        db      0f3h                            ; F3
        db      0ffh                            ; FF
        std                                     ; FD
        into                                    ; CE
        popaw                                   ; 61
        test    byte ptr [bx + di], dl          ; 84 11
        ja      L_3F4A                          ; 77 CC
        stosw   word ptr es:[di], ax            ; AB
        out     0xff, al                        ; E6 FF
        pop     bx                              ; 5B
        loope   L_3FD1                          ; E1 4D
        les     di, ptr [bp - 0x6a6c]           ; C4 BE 94 95
        out     0xcb, al                        ; E6 CB
        db      0ffh                            ; FF
        mov     dx, 0x3994                      ; BA 94 39
        inc     bp                              ; 45
        lodsw   ax, word ptr [si]               ; AD
        push    ds                              ; 1E
        mov     cl, 0xcf                        ; B1 CF
        xchg    si, ax                          ; 96
        jmp     word ptr [di + 0x39e9]          ; FF A5 E9 39
        movsw   word ptr es:[di], word ptr [si] ; A5
        daa                                     ; 27
        ljmp    0xff2c:0xa87f                   ; EA 7F A8 2C FF
        mov     ax, word ptr [0xbce4]           ; A1 E4 BC
        jl      L_3FEB                          ; 64 7C 46
        rcr     ch, 1                           ; D0 DD
        push    di                              ; 57
        db      0feh                            ; FE
        cmp     bl, byte ptr [bx + di]          ; 3A 19
        jp      L_4010                          ; 7A 63
        and     ax, 0x3143                      ; 25 43 31
        shr     byte ptr [bp - 0x4404], 0xff    ; C0 AE FC BB FF
        or      di, di                          ; 3E 0B FF
        jns     L_3FBF                          ; 79 05
        mov     bx, 0x3f59                      ; BB 59 3F
        neg     di                              ; F7 DF
L_3FBF:
        sub     bx, 0xa                         ; 83 EB 0A
L_3FC2:
        add     bx, 0xa                         ; 83 C3 0A
        or      di, di                          ; 0B FF
        je      L_3FD6                          ; 74 0D
        shr     di, 1                           ; D1 EF
        jae     L_3FC2                          ; 73 F5
        push    bx                              ; 53
        push    di                              ; 57
        call    L_3E4D                          ; E8 7B FE
        pop     di                              ; 5F
        pop     bx                              ; 5B
L_3FD4:
        jmp     L_3FC2                          ; EB EC
L_3FD6:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_3FD7 -- offset 0x3FD7 -- 21 instr
; Llama a servicios DOS via INT 21h (21 instr).
; tags: dos_caller, int_21
; callers: sub_27CA, sub_410D
; calls (intra): sub_2295, sub_441B
;----------------------------------------------------------------------
L_3FD7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_441B                          ; E8 3E 04
        call    L_2295                          ; E8 B5 E2
        or      ah, ah                          ; 0A E4
        je      L_3FEE                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_3FEE                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
L_3FEE:
        push    ds                              ; 1E
        lds     dx, ptr [0x32c]                 ; C5 16 2C 03
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x56e]            ; 8B 0E 6E 05
        jcxz    L_4006                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x56c]                         ; FF 1E 6C 05
L_4006:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_400D -- offset 0x400D -- 50 instr
; Dispatcher: tabla de decisiones cmp+jcc (50 instr).
; tags: dispatcher
; callers: sub_38CC, sub_39BC
; calls (intra): sub_41F3
;----------------------------------------------------------------------
L_400D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
L_4010:
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
        mov     byte ptr [si], 0x30             ; C6 04 30
        inc     si                              ; 46
        jmp     L_4036                          ; EB 12
L_4024:
        cmp     byte ptr [di], 0                ; 80 3D 00
        je      L_402E                          ; 74 05
        mov     al, byte ptr [di]               ; 8A 05
        inc     di                              ; 47
        jmp     L_4030                          ; EB 02
L_402E:
        mov     al, 0x30                        ; B0 30
L_4030:
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
        dec     word ptr [bp + 6]               ; FF 4E 06
L_4036:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_4024                          ; 7F E8
        mov     byte ptr [si], 0                ; C6 04 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_4057                          ; 7C 12
        cmp     byte ptr [di], 0x35             ; 80 3D 35
        jl      L_4057                          ; 7C 0D
        jmp     L_404F                          ; EB 03
L_404C:
        mov     byte ptr [si], 0x30             ; C6 04 30
L_404F:
        dec     si                              ; 4E
        cmp     byte ptr [si], 0x39             ; 80 3C 39
        je      L_404C                          ; 74 F7
        inc     byte ptr [si]                   ; FE 04
L_4057:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     byte ptr [bx], 0x31             ; 80 3F 31
        jne     L_4067                          ; 75 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bx + 2]               ; FF 47 02
        jmp     L_4075                          ; EB 0E
L_4067:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_41F3                          ; E8 81 01
        add     sp, 4                           ; 83 C4 04
L_4075:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_407B -- offset 0x407B -- 59 instr
; Llama a servicios DOS via INT 21h (59 instr).
; tags: complex_iterator, int_21, loop
; callers: sub_2230
;----------------------------------------------------------------------
L_407B:
        mov     bx, 0x578                       ; BB 78 05
L_407E:
        cmp     bx, 0x57e                       ; 81 FB 7E 05
        jae     L_408C                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_407E                          ; EB F2
L_408C:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
L_4090:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_40A1                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_40A1                          ; 74 05
        or      byte ptr [bx + 0x35c], 0x40     ; 80 8F 5C 03 40
L_40A1:
        dec     bx                              ; 4B
        jns     L_4090                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x33e], ax            ; A3 3E 03
        ret                                     ; C3
        mov     es, word ptr [0x338]            ; 8E 06 38 03
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x32c], bx            ; 89 1E 2C 03
        mov     word ptr [0x32e], es            ; 8C 06 2E 03
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x2250                      ; BA 50 22
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x56e]         ; 36 8B 0E 6E 05
        jcxz    L_40F6                          ; E3 22
        lds     ax, ptr ss:[0x570]              ; 36 C5 06 70 05
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x56c]                      ; 36 FF 1E 6C 05
        jae     L_40E7                          ; 73 03
        jmp     L_2253                          ; E9 6C E1
L_40E7:
        lds     ax, ptr ss:[0x574]              ; 36 C5 06 74 05
        mov     dx, ds                          ; 8C DA
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x56c]                      ; 36 FF 1E 6C 05
L_40F6:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
L_40FE:
        test    byte ptr [bx + 0x35c], 1        ; F6 87 5C 03 01
        je      L_4109                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_4109:
        inc     bx                              ; 43
        loop    L_40FE                          ; E2 F2
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_410D -- offset 0x410D -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: small
; callers: sub_2230
; calls (intra): sub_3FD7, sub_4409
;----------------------------------------------------------------------
L_410D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_4409                          ; E8 F6 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_3FD7                          ; E8 BE FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_411D -- offset 0x411D -- 47 instr
; Iterador con instrucciones de string (movsb/scasb/...) (47 instr).
; tags: iterator, string_op
; callers: sub_3B31
;----------------------------------------------------------------------
L_411D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     dx, di                          ; 8B D7
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        or      cx, cx                          ; 0B C9
        je      L_4168                          ; 74 35
        cmp     di, si                          ; 3B FE
        jbe     L_414B                          ; 76 14
        mov     ax, si                          ; 8B C6
        add     ax, cx                          ; 03 C1
        cmp     di, ax                          ; 3B F8
        jae     L_414B                          ; 73 0C
        add     si, cx                          ; 03 F1
        add     di, cx                          ; 03 F9
        dec     si                              ; 4E
        dec     di                              ; 4F
        std                                     ; FD
L_4146:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cld                                     ; FC
        jmp     L_4168                          ; EB 1D
L_414B:
        mov     ax, di                          ; 8B C7
        or      ax, si                          ; 0B C6
        shr     ax, 1                           ; D1 E8
        jae     L_415D                          ; 73 0A
        mov     ax, di                          ; 8B C7
        xor     ax, si                          ; 33 C6
        shr     ax, 1                           ; D1 E8
        jb      L_4146                          ; 72 EB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        dec     cx                              ; 49
L_415D:
        shr     cx, 1                           ; D1 E9
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        jae     L_4168                          ; 73 05
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[di], al            ; 26 88 05
L_4168:
        mov     ax, dx                          ; 8B C2
        cld                                     ; FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_416F -- offset 0x416F -- 26 instr
; Iterador con instrucciones de string (movsb/scasb/...) (26 instr).
; tags: iterator, string_op
; callers: sub_39BC
;----------------------------------------------------------------------
L_416F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     bx, di                          ; 8B DF
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        jcxz    L_4199                          ; E3 1A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     ah, al                          ; 8A E0
        mov     dx, di                          ; 8B D7
        shr     dx, 1                           ; D1 EA
        jae     L_418C                          ; 73 02
        stosb   byte ptr es:[di], al            ; AA
        dec     cx                              ; 49
L_418C:
        mov     dx, cx                          ; 8B D1
        shr     cx, 1                           ; D1 E9
        rep stosw word ptr es:[di], ax          ; F3 AB
        shr     dx, 1                           ; D1 EA
        jae     L_4199                          ; 73 03
        mov     byte ptr es:[di], al            ; 26 88 05
L_4199:
        mov     ax, bx                          ; 8B C3
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_419E -- offset 0x419E -- 39 instr
; Funcion mediana (39 instr, 2 calls).
; tags: medium
; callers: sub_139D, sub_21B9
; calls (intra): sub_430D, sub_4475
;----------------------------------------------------------------------
L_419E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     di, bp                          ; 8B FD
        sub     di, 0xa                         ; 83 EF 0A
        mov     byte ptr [di + 6], 0x42         ; C6 45 06 42
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], 0x7fff       ; C7 45 02 FF 7F
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_4475                          ; E8 AE 02
        add     sp, 6                           ; 83 C4 06
        mov     si, ax                          ; 8B F0
        dec     word ptr [di + 2]               ; FF 4D 02
        cmp     word ptr [di + 2], 0            ; 83 7D 02 00
        jl      L_41E1                          ; 7C 0C
        xor     al, al                          ; 32 C0
        mov     bx, word ptr [di]               ; 8B 1D
        inc     word ptr [di]                   ; FF 05
        mov     byte ptr [bx], al               ; 88 07
        sub     ah, ah                          ; 2A E4
        jmp     L_41EB                          ; EB 0A
L_41E1:
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    L_430D                          ; E8 25 01
        add     sp, 4                           ; 83 C4 04
L_41EB:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_41F3 -- offset 0x41F3 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_165C, sub_19E8, sub_1D10, sub_1E23, sub_1E3E, sub_2084 (+2 mas)
;----------------------------------------------------------------------
L_41F3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     si, di                          ; 8B F7
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        inc     cx                              ; 41
        neg     cx                              ; F7 D9
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     dx, di                          ; 8B D7
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, dx                          ; 8B C2
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4216 -- offset 0x4216 -- 16 instr
; Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_3B31, sub_4644, sub_4772, sub_49BE
;----------------------------------------------------------------------
L_4216:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        mov     ax, cx                          ; 8B C1
        inc     ax                              ; 40
        inc     ax                              ; 40
        neg     ax                              ; F7 D8
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_422F -- offset 0x422F -- 6 instr
; Iterador con bucle (6 instr).
; tags: iterator, loop
; callers: sub_22A6
;----------------------------------------------------------------------
L_422F:
        xor     ch, ch                          ; 32 ED
        jcxz    L_4239                          ; E3 06
L_4233:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_4233                          ; E2 FA
L_4239:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_423A -- offset 0x423A -- 102 instr
; Llama a servicios DOS via INT 21h (102 instr).
; tags: dos_caller, int_21
; callers: sub_36F5, sub_430D, sub_4C1B
;----------------------------------------------------------------------
L_423A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        test    byte ptr [bx + 0x35c], 0x20     ; F6 87 5C 03 20
        je      L_4255                          ; 74 0E
        mov     ax, 0x4202                      ; B8 02 42
        xor     cx, cx                          ; 33 C9
        mov     dx, cx                          ; 8B D1
        int     0x21                            ; CD 21
        jae     L_4255                          ; 73 03
        jmp     L_4435                          ; E9 E0 01
L_4255:
        test    byte ptr [bx + 0x35c], 0x80     ; F6 87 5C 03 80
        jne     L_425F                          ; 75 03
        jmp     L_42E0                          ; E9 81 00
L_425F:
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        push    ds                              ; 1E
        pop     es                              ; 07
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, ax                          ; 8B F0
        mov     di, dx                          ; 8B FA
L_4270:
        jcxz    L_42D7                          ; E3 65
        mov     ax, 0x400a                      ; B8 0A 40
        repne scasb al, byte ptr es:[di]        ; F2 AE
        jne     L_42AB                          ; 75 32
        push    cx                              ; 51
        mov     cx, di                          ; 8B CF
        sub     cx, dx                          ; 2B CA
        dec     cx                              ; 49
        jcxz    L_4291                          ; E3 10
        int     0x21                            ; CD 21
        pushf                                   ; 9C
        add     si, ax                          ; 03 F0
        popf                                    ; 9D
        jae     L_428D                          ; 73 04
        mov     ah, 9                           ; B4 09
        jmp     L_42D6                          ; EB 49
L_428D:
        or      ax, ax                          ; 0B C0
        je      L_42C0                          ; 74 2F
L_4291:
        inc     si                              ; 46
        mov     cx, 2                           ; B9 02 00
        mov     dx, 0x47c                       ; BA 7C 04
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        jae     L_42A2                          ; 73 04
        mov     ah, 9                           ; B4 09
        jmp     L_42D6                          ; EB 34
L_42A2:
        or      ax, ax                          ; 0B C0
        je      L_42C0                          ; 74 1A
        pop     cx                              ; 59
        mov     dx, di                          ; 8B D7
        jmp     L_4270                          ; EB C5
L_42AB:
        push    cx                              ; 51
        mov     cx, di                          ; 8B CF
        sub     cx, dx                          ; 2B CA
        int     0x21                            ; CD 21
        pushf                                   ; 9C
        add     si, ax                          ; 03 F0
        popf                                    ; 9D
        jae     L_42BC                          ; 73 04
        mov     ah, 9                           ; B4 09
        jmp     L_42D6                          ; EB 1A
L_42BC:
        or      ax, ax                          ; 0B C0
        jne     L_42D6                          ; 75 16
L_42C0:
        test    byte ptr [bx + 0x35c], 0x40     ; F6 87 5C 03 40
        je      L_42D2                          ; 74 0B
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0x1a             ; 80 3F 1A
        jne     L_42D2                          ; 75 03
        clc                                     ; F8
        jmp     L_42D6                          ; EB 04
L_42D2:
        stc                                     ; F9
        mov     ax, 0x1c00                      ; B8 00 1C
L_42D6:
        pop     cx                              ; 59
L_42D7:
        jb      L_42DB                          ; 72 02
        mov     ax, si                          ; 8B C6
L_42DB:
        pop     si                              ; 5E
        pop     di                              ; 5F
L_42DD:
        jmp     L_4435                          ; E9 55 01
L_42E0:
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        jae     L_42F0                          ; 73 04
        mov     ah, 9                           ; B4 09
        jmp     L_42DD                          ; EB ED
L_42F0:
        jcxz    L_42DD                          ; E3 EB
        or      ax, ax                          ; 0B C0
        jne     L_42DD                          ; 75 E7
        test    byte ptr [bx + 0x35c], 0x40     ; F6 87 5C 03 40
        je      L_4307                          ; 74 0A
        mov     bx, dx                          ; 8B DA
        cmp     byte ptr [bx], 0x1a             ; 80 3F 1A
        jne     L_4307                          ; 75 03
        clc                                     ; F8
        jmp     L_42DD                          ; EB D6
L_4307:
        stc                                     ; F9
        mov     ax, 0x1c00                      ; B8 00 1C
        jmp     L_42DD                          ; EB D0
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_430D -- offset 0x430D -- 101 instr
; Funcion compleja: 101 instrucciones, 3 llamadas, 11 branches.
; tags: complex
; callers: sub_419E, sub_489E, sub_48EB, sub_4954
; calls (intra): sub_22A6, sub_423A, sub_4B62
;----------------------------------------------------------------------
L_430D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        test    ax, 0x83                        ; A9 83 00
        je      L_4327                          ; 74 06
        test    byte ptr [si + 6], 0x40         ; F6 44 06 40
        je      L_4331                          ; 74 0A
L_4327:
        or      byte ptr [si + 6], 0x20         ; 80 4C 06 20
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_4403                          ; E9 D2 00
L_4331:
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        jne     L_4327                          ; 75 F0
        or      byte ptr [si + 6], 2            ; 80 4C 06 02
        and     byte ptr [si + 6], 0xef         ; 80 64 06 EF
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 2], di           ; 89 7E FE
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_435E                          ; 75 0F
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        test    byte ptr [bx + 0x53e], 1        ; F6 87 3E 05 01
        je      L_438E                          ; 74 30
L_435E:
        mov     di, word ptr [si]               ; 8B 3C
        sub     di, word ptr [si + 4]           ; 2B 7C 04
        or      di, di                          ; 0B FF
        jle     L_4379                          ; 7E 12
        push    di                              ; 57
        push    word ptr [si + 4]               ; FF 74 04
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_423A                          ; E8 C7 FE
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_4379:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        inc     ax                              ; 40
        mov     word ptr [si], ax               ; 89 04
L_437F:
        mov     word ptr [si + 2], 0x1ff        ; C7 44 02 FF 01
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_43F6                          ; EB 68
L_438E:
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        jne     L_43E0                          ; 75 4C
        cmp     si, 0x4a6                       ; 81 FE A6 04
        jne     L_43C5                          ; 75 2B
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_4B62                          ; E8 C0 07
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_43DC                          ; 75 33
        inc     word ptr [0x568]                ; FF 06 68 05
        mov     word ptr [si + 4], 0x63e        ; C7 44 04 3E 06
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     byte ptr [bx + 0x53e], 1        ; C6 87 3E 05 01
        mov     word ptr [si], 0x63f            ; C7 04 3F 06
        jmp     L_437F                          ; EB BA
L_43C5:
        mov     ax, 0x200                       ; B8 00 02
        push    ax                              ; 50
        call    L_22A6                          ; E8 DA DE
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [si + 4], ax           ; 89 44 04
        or      ax, ax                          ; 0B C0
        je      L_43DC                          ; 74 06
        or      byte ptr [si + 6], 8            ; 80 4C 06 08
        jmp     L_4379                          ; EB 9D
L_43DC:
        or      byte ptr [si + 6], 4            ; 80 4C 06 04
L_43E0:
        mov     di, 1                           ; BF 01 00
        push    di                              ; 57
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ax                              ; 50
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_423A                          ; E8 4A FE
        add     sp, 6                           ; 83 C4 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_43F6:
        cmp     word ptr [bp - 2], di           ; 39 7E FE
        je      L_43FE                          ; 74 03
        jmp     L_4327                          ; E9 29 FF
L_43FE:
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
L_4403:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4409 -- offset 0x4409 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_410D
;----------------------------------------------------------------------
L_4409:
        mov     bx, 0x57e                       ; BB 7E 05
L_440C:
        cmp     bx, 0x580                       ; 81 FB 80 05
        jae     L_441A                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_440C                          ; EB F2
L_441A:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_441B -- offset 0x441B -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_3FD7
; calls (intra): sub_4447
;----------------------------------------------------------------------
L_441B:
        mov     bx, 0x580                       ; BB 80 05
L_441E:
        cmp     bx, 0x582                       ; 81 FB 82 05
        jae     L_442C                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_441E                          ; EB F2
L_442C:
        ret                                     ; C3
        jb      L_4437                          ; 72 08
        xor     ax, ax                          ; 33 C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
L_4435:
        jae     L_443D                          ; 73 06
L_4437:
        call    L_4447                          ; E8 0D 00
        mov     ax, 0xffff                      ; B8 FF FF
L_443D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        xor     ah, ah                          ; 32 E4
        call    L_4447                          ; E8 01 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4447 -- offset 0x4447 -- 22 instr
; Dispatcher: tabla de decisiones cmp+jcc (22 instr).
; tags: dispatcher
; callers: sub_441B
;----------------------------------------------------------------------
L_4447:
        mov     byte ptr [0x346], al            ; A2 46 03
        or      ah, ah                          ; 0A E4
        jne     L_4471                          ; 75 23
        cmp     byte ptr [0x33e], 3             ; 80 3E 3E 03 03
        jb      L_4462                          ; 72 0D
        cmp     al, 0x22                        ; 3C 22
        jae     L_4466                          ; 73 0D
        cmp     al, 0x20                        ; 3C 20
        jb      L_4462                          ; 72 05
        mov     al, 5                           ; B0 05
        jmp     L_4468                          ; EB 07
        nop                                     ; 90
L_4462:
        cmp     al, 0x13                        ; 3C 13
        jbe     L_4468                          ; 76 02
L_4466:
        mov     al, 0x13                        ; B0 13
L_4468:
        mov     bx, 0x47e                       ; BB 7E 04
        xlatb                                   ; D7
L_446C:
        cwde                                    ; 98
        mov     word ptr [0x33a], ax            ; A3 3A 03
        ret                                     ; C3
L_4471:
        mov     al, ah                          ; 8A C4
        jmp     L_446C                          ; EB F7
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4475 -- offset 0x4475 -- 182 instr
; Iterador con instrucciones de string (movsb/scasb/...) (182 instr).
; tags: complex_iterator, string_op
; callers: sub_419E
; calls (intra): sub_2230, sub_4644, sub_4772, sub_47FE, sub_4954, sub_4AD2 (+1 mas)
;----------------------------------------------------------------------
L_4475:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x162                       ; B8 62 01
        call    L_2230                          ; E8 B2 DD
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        mov     word ptr [0x5dc], ax            ; A3 DC 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x5d8], ax            ; A3 D8 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x5d4], ax            ; A3 D4 05
        mov     word ptr [0x5ea], 0             ; C7 06 EA 05 00 00
        mov     word ptr [0x5e8], 0             ; C7 06 E8 05 00 00
        jmp     L_461D                          ; E9 78 01
L_44A5:
        cmp     byte ptr [si], 0x25             ; 80 3C 25
        je      L_44AD                          ; 74 03
        jmp     L_45B7                          ; E9 0A 01
L_44AD:
        mov     word ptr [0x5e2], 1             ; C7 06 E2 05 01 00
        xor     ax, ax                          ; 33 C0
        mov     word ptr [0x5e0], ax            ; A3 E0 05
        mov     word ptr [0x5d0], ax            ; A3 D0 05
        mov     word ptr [0x5e4], ax            ; A3 E4 05
        mov     word ptr [0x5d6], ax            ; A3 D6 05
        mov     word ptr [0x5da], ax            ; A3 DA 05
        mov     word ptr [0x5d2], ax            ; A3 D2 05
        mov     word ptr [0x5ee], ax            ; A3 EE 05
        mov     word ptr [0x5f0], ax            ; A3 F0 05
        mov     word ptr [0x5de], 0x20          ; C7 06 DE 05 20 00
        jmp     L_4507                          ; EB 32
L_44D5:
        cmp     byte ptr [si], 0x2d             ; 80 3C 2D
        jne     L_44E0                          ; 75 06
        inc     word ptr [0x5f0]                ; FF 06 F0 05
        jmp     L_4507                          ; EB 27
L_44E0:
        cmp     byte ptr [si], 0x2b             ; 80 3C 2B
        jne     L_44F1                          ; 75 0C
        inc     word ptr [0x5e0]                ; FF 06 E0 05
        mov     word ptr [0x5d2], 0             ; C7 06 D2 05 00 00
        jmp     L_4507                          ; EB 16
L_44F1:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        jne     L_4503                          ; 75 0D
        cmp     word ptr [0x5e0], 0             ; 83 3E E0 05 00
        jne     L_4507                          ; 75 0A
        inc     word ptr [0x5d2]                ; FF 06 D2 05
        jmp     L_4507                          ; EB 04
L_4503:
        inc     word ptr [0x5ee]                ; FF 06 EE 05
L_4507:
        inc     si                              ; 46
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_4B3A                          ; E8 2B 06
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_44D5                          ; 75 BF
        push    si                              ; 56
        mov     ax, 0x5e6                       ; B8 E6 05
        push    ax                              ; 50
        call    L_4AD2                          ; E8 B4 05
        add     sp, 4                           ; 83 C4 04
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_453A                          ; 75 12
        inc     word ptr [0x5da]                ; FF 06 DA 05
        inc     si                              ; 46
        push    si                              ; 56
        mov     ax, 0x5e2                       ; B8 E2 05
        push    ax                              ; 50
        call    L_4AD2                          ; E8 9D 05
        add     sp, 4                           ; 83 C4 04
        mov     si, ax                          ; 8B F0
L_453A:
        cmp     byte ptr [si], 0x6c             ; 80 3C 6C
        jne     L_4546                          ; 75 07
        mov     word ptr [0x5d6], 2             ; C7 06 D6 05 02 00
        inc     si                              ; 46
L_4546:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_454E                          ; 75 03
        jmp     L_4625                          ; E9 D7 00
L_454E:
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        cmp     ax, 0x45                        ; 3D 45 00
        je      L_4564                          ; 74 0A
        cmp     ax, 0x47                        ; 3D 47 00
        je      L_4564                          ; 74 05
        cmp     ax, 0x58                        ; 3D 58 00
        jne     L_456D                          ; 75 09
L_4564:
        inc     word ptr [0x5d0]                ; FF 06 D0 05
        add     word ptr [bp - 0x162], 0x20     ; 83 86 9E FE 20
L_456D:
        mov     ax, word ptr [bp - 0x162]       ; 8B 86 9E FE
        sub     ax, 0x63                        ; 2D 63 00
        cmp     ax, 0x15                        ; 3D 15 00
        ja      L_45B7                          ; 77 3E
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x45bb]       ; 2E FF A7 BB 45
        inc     word ptr [0x5e4]                ; FF 06 E4 05
        mov     word ptr [0x5ee], 0             ; C7 06 EE 05 00 00
        mov     ax, 0xa                         ; B8 0A 00
L_458E:
        push    ax                              ; 50
        call    L_4644                          ; E8 B2 00
L_4592:
        add     sp, 2                           ; 83 C4 02
        jmp     L_45E7                          ; EB 50
        mov     ax, 8                           ; B8 08 00
        jmp     L_458E                          ; EB F2
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_458E                          ; EB ED
        xor     ax, ax                          ; 33 C0
L_45A3:
        push    ax                              ; 50
        call    L_4772                          ; E8 CB 01
        jmp     L_4592                          ; EB E9
        mov     ax, 1                           ; B8 01 00
        jmp     L_45A3                          ; EB F5
        push    word ptr [bp - 0x162]           ; FF B6 9E FE
        call    L_47FE                          ; E8 49 02
        jmp     L_4592                          ; EB DB
L_45B7:
        mov     di, si                          ; 8B FE
        jmp     L_4609                          ; EB 4E
        test    ax, 0x8545                      ; A9 45 85
        inc     bp                              ; 45
        scasb   al, byte ptr es:[di]            ; AE
        inc     bp                              ; 45
        scasb   al, byte ptr es:[di]            ; AE
        inc     bp                              ; 45
        scasb   al, byte ptr es:[di]            ; AE
        inc     bp                              ; 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        xchg    di, ax                          ; 97
        inc     bp                              ; 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     bh, 0x45                        ; B7 45
        mov     ax, word ptr [0xb745]           ; A1 45 B7
        inc     bp                              ; 45
        add     word ptr [di - 0x49], 0xb745    ; 81 45 B7 45 B7
        inc     bp                              ; 45
        pushf                                   ; 9C
        inc     bp                              ; 45
L_45E7:
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        je      L_4601                          ; 74 13
        cmp     word ptr [0x5e8], 0             ; 83 3E E8 05 00
        jne     L_463B                          ; 75 46
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        test    byte ptr [bx + 6], 0x20         ; F6 47 06 20
        jne     L_4636                          ; 75 37
        jmp     L_463B                          ; EB 3A
L_4601:
        inc     si                              ; 46
        jmp     L_461D                          ; EB 19
L_4604:
        cmp     byte ptr [di], 0x25             ; 80 3D 25
        je      L_460F                          ; 74 06
L_4609:
        inc     di                              ; 47
        cmp     byte ptr [di], 0                ; 80 3D 00
        jne     L_4604                          ; 75 F5
L_460F:
        mov     ax, di                          ; 8B C7
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        push    si                              ; 56
        call    L_4954                          ; E8 3C 03
        add     sp, 4                           ; 83 C4 04
        mov     si, di                          ; 8B F7
L_461D:
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_4625                          ; 74 03
        jmp     L_44A5                          ; E9 80 FE
L_4625:
        cmp     word ptr [0x5e8], 0             ; 83 3E E8 05 00
        jne     L_463B                          ; 75 0F
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        test    byte ptr [bx + 6], 0x20         ; F6 47 06 20
        je      L_463B                          ; 74 05
L_4636:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_463E                          ; EB 03
L_463B:
        mov     ax, word ptr [0x5e8]            ; A1 E8 05
L_463E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4644 -- offset 0x4644 -- 111 instr
; Dispatcher: tabla de decisiones cmp+jcc (111 instr).
; tags: dispatcher
; callers: sub_4475
; calls (intra): sub_2230, sub_4216, sub_49BE, sub_4B82
;----------------------------------------------------------------------
L_4644:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x18                        ; B8 18 00
        call    L_2230                          ; E8 E3 DB
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0xa          ; 83 7E 04 0A
        je      L_4659                          ; 74 04
        inc     word ptr [0x5e4]                ; FF 06 E4 05
L_4659:
        cmp     word ptr [0x5d6], 0             ; 83 3E D6 05 00
        je      L_4676                          ; 74 16
        mov     bx, word ptr [0x5d8]            ; 8B 1E D8 05
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        add     word ptr [0x5d8], 4             ; 83 06 D8 05 04
        jmp     L_469F                          ; EB 29
L_4676:
        cmp     word ptr [0x5e4], 0             ; 83 3E E4 05 00
        je      L_468D                          ; 74 10
        mov     bx, word ptr [0x5d8]            ; 8B 1E D8 05
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_469A                          ; EB 0D
L_468D:
        mov     bx, word ptr [0x5d8]            ; 8B 1E D8 05
        mov     ax, word ptr [bx]               ; 8B 07
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_469A:
        add     word ptr [0x5d8], 2             ; 83 06 D8 05 02
L_469F:
        cmp     word ptr [0x5ee], 0             ; 83 3E EE 05 00
        je      L_46B3                          ; 74 0D
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, word ptr [bp - 6]           ; 0B 46 FA
        je      L_46B3                          ; 74 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_46B5                          ; EB 02
L_46B3:
        xor     ax, ax                          ; 33 C0
L_46B5:
        mov     word ptr [0x5ec], ax            ; A3 EC 05
        mov     si, word ptr [0x5dc]            ; 8B 36 DC 05
        cmp     word ptr [0x5e4], 0             ; 83 3E E4 05 00
        jne     L_46ED                          ; 75 2A
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_46ED                          ; 7D 24
        cmp     word ptr [bp + 4], 0xa          ; 83 7E 04 0A
        jne     L_46E6                          ; 75 17
        mov     byte ptr [si], 0x2d             ; C6 04 2D
        inc     si                              ; 46
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_46E6:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_46F2                          ; EB 05
L_46ED:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_46F2:
        mov     di, bp                          ; 8B FD
        sub     di, 0x18                        ; 83 EF 18
        push    word ptr [bp + 4]               ; FF 76 04
        push    di                              ; 57
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_4B82                          ; E8 7E 04
        add     sp, 8                           ; 83 C4 08
        cmp     word ptr [0x5da], 0             ; 83 3E DA 05 00
        je      L_472E                          ; 74 20
        push    di                              ; 57
        call    L_4216                          ; E8 04 FB
        add     sp, 2                           ; 83 C4 02
        mov     cx, word ptr [0x5e2]            ; 8B 0E E2 05
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        jmp     L_4724                          ; EB 04
L_4720:
        mov     byte ptr [si], 0x30             ; C6 04 30
        inc     si                              ; 46
L_4724:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     word ptr [bp - 2]               ; FF 4E FE
        or      ax, ax                          ; 0B C0
        jg      L_4720                          ; 7F F2
L_472E:
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr [si], al               ; 88 04
        cmp     word ptr [0x5d0], 0             ; 83 3E D0 05 00
        je      L_4740                          ; 74 07
        cmp     al, 0x61                        ; 3C 61
        jl      L_4740                          ; 7C 03
        sub     byte ptr [si], 0x20             ; 80 2C 20
L_4740:
        inc     si                              ; 46
        inc     di                              ; 47
        cmp     byte ptr [di - 1], 0            ; 80 7D FF 00
        jne     L_472E                          ; 75 E6
        cmp     word ptr [0x5e4], 0             ; 83 3E E4 05 00
        jne     L_4763                          ; 75 14
        mov     ax, word ptr [0x5e0]            ; A1 E0 05
        or      ax, word ptr [0x5d2]            ; 0B 06 D2 05
        je      L_4763                          ; 74 0B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_4763                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_4765                          ; EB 02
L_4763:
        xor     ax, ax                          ; 33 C0
L_4765:
        push    ax                              ; 50
        call    L_49BE                          ; E8 55 02
        add     sp, 2                           ; 83 C4 02
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4772 -- offset 0x4772 -- 51 instr
; Dispatcher: tabla de decisiones cmp+jcc (51 instr).
; tags: dispatcher
; callers: sub_4475
; calls (intra): sub_2230, sub_4216, sub_48EB, sub_4954
;----------------------------------------------------------------------
L_4772:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 8                           ; B8 08 00
        call    L_2230                          ; E8 B5 DA
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [0x5de], 0x20          ; C7 06 DE 05 20 00
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4799                          ; 74 10
        mov     si, 1                           ; BE 01 00
        mov     ax, word ptr [0x5d8]            ; A1 D8 05
        add     word ptr [0x5d8], 2             ; 83 06 D8 05 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_47CC                          ; EB 33
L_4799:
        mov     bx, word ptr [0x5d8]            ; 8B 1E D8 05
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        add     word ptr [0x5d8], 2             ; 83 06 D8 05 02
        or      ax, ax                          ; 0B C0
        jne     L_47B0                          ; 75 05
        mov     word ptr [bp - 4], 0x492        ; C7 46 FC 92 04
L_47B0:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_4216                          ; E8 60 FA
        add     sp, 2                           ; 83 C4 02
        mov     si, ax                          ; 8B F0
        cmp     word ptr [0x5da], 0             ; 83 3E DA 05 00
        je      L_47CC                          ; 74 0A
        cmp     word ptr [0x5e2], ax            ; 39 06 E2 05
        jae     L_47CC                          ; 73 04
        mov     si, word ptr [0x5e2]            ; 8B 36 E2 05
L_47CC:
        mov     di, word ptr [0x5e6]            ; 8B 3E E6 05
        sub     di, si                          ; 2B FE
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        jne     L_47E0                          ; 75 07
        push    di                              ; 57
        call    L_48EB                          ; E8 0E 01
        add     sp, 2                           ; 83 C4 02
L_47E0:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_4954                          ; E8 6D 01
        add     sp, 4                           ; 83 C4 04
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        je      L_47F8                          ; 74 07
        push    di                              ; 57
        call    L_48EB                          ; E8 F6 00
        add     sp, 2                           ; 83 C4 02
L_47F8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_47FE -- offset 0x47FE -- 52 instr
; Dispatcher: tabla de decisiones cmp+jcc (52 instr).
; tags: dispatcher
; callers: sub_4475
; calls (intra): sub_2230, sub_37DA, sub_3813, sub_3867, sub_3AE4, sub_49BE
;----------------------------------------------------------------------
L_47FE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        call    L_2230                          ; E8 29 DA
        mov     ax, word ptr [0x5d8]            ; A1 D8 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x5da], 0             ; 83 3E DA 05 00
        jne     L_481A                          ; 75 06
        mov     word ptr [0x5e2], 6             ; C7 06 E2 05 06 00
L_481A:
        push    word ptr [0x5d0]                ; FF 36 D0 05
        push    word ptr [0x5e2]                ; FF 36 E2 05
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x5dc]                ; FF 36 DC 05
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3AE4                          ; E8 B5 F2
        add     sp, 0xa                         ; 83 C4 0A
        cmp     word ptr [bp + 4], 0x67         ; 83 7E 04 67
        je      L_483E                          ; 74 06
        cmp     word ptr [bp + 4], 0x47         ; 83 7E 04 47
        jne     L_4856                          ; 75 18
L_483E:
        cmp     word ptr [0x5ee], 0             ; 83 3E EE 05 00
        jne     L_4856                          ; 75 11
        cmp     word ptr [0x5e2], 0             ; 83 3E E2 05 00
        je      L_4856                          ; 74 0A
        push    word ptr [0x5dc]                ; FF 36 DC 05
        call    L_3813                          ; E8 C0 EF
        add     sp, 2                           ; 83 C4 02
L_4856:
        cmp     word ptr [0x5ee], 0             ; 83 3E EE 05 00
        je      L_486E                          ; 74 11
        cmp     word ptr [0x5e2], 0             ; 83 3E E2 05 00
        jne     L_486E                          ; 75 0A
        push    word ptr [0x5dc]                ; FF 36 DC 05
        call    L_37DA                          ; E8 6F EF
        add     sp, 2                           ; 83 C4 02
L_486E:
        add     word ptr [0x5d8], 8             ; 83 06 D8 05 08
        mov     word ptr [0x5ec], 0             ; C7 06 EC 05 00 00
        mov     ax, word ptr [0x5e0]            ; A1 E0 05
        or      ax, word ptr [0x5d2]            ; 0B 06 D2 05
        je      L_4894                          ; 74 12
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_3867                          ; E8 DF EF
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_4894                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_4896                          ; EB 02
L_4894:
        xor     ax, ax                          ; 33 C0
L_4896:
        push    ax                              ; 50
        call    L_49BE                          ; E8 24 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_489E -- offset 0x489E -- 31 instr
; Funcion mediana (31 instr, 2 calls).
; tags: medium
; callers: sub_49BE, sub_4A80, sub_4A9F
; calls (intra): sub_2230, sub_430D
;----------------------------------------------------------------------
L_489E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        xor     ax, ax                          ; 33 C0
        call    L_2230                          ; E8 8A D9
        push    si                              ; 56
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        jne     L_48E6                          ; 75 38
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        dec     word ptr [bx + 2]               ; FF 4F 02
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jl      L_48CC                          ; 7C 11
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        mov     si, word ptr [bx]               ; 8B 37
        inc     word ptr [bx]                   ; FF 07
        mov     byte ptr [si], al               ; 88 04
        sub     ah, ah                          ; 2A E4
        jmp     L_48D9                          ; EB 0D
L_48CC:
        push    word ptr [0x5d4]                ; FF 36 D4 05
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_430D                          ; E8 37 FA
        add     sp, 4                           ; 83 C4 04
L_48D9:
        inc     ax                              ; 40
        jne     L_48E2                          ; 75 06
        inc     word ptr [0x5ea]                ; FF 06 EA 05
        jmp     L_48E6                          ; EB 04
L_48E2:
        inc     word ptr [0x5e8]                ; FF 06 E8 05
L_48E6:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_48EB -- offset 0x48EB -- 43 instr
; Funcion mediana (43 instr, 2 calls).
; tags: medium
; callers: sub_4772, sub_49BE
; calls (intra): sub_2230, sub_430D
;----------------------------------------------------------------------
L_48EB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        call    L_2230                          ; E8 3C D9
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        jne     L_494E                          ; 75 51
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        or      si, si                          ; 0B F6
        jle     L_494E                          ; 7E 4A
        jmp     L_4939                          ; EB 33
L_4906:
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        dec     word ptr [bx + 2]               ; FF 4F 02
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jl      L_4924                          ; 7C 11
        mov     al, byte ptr [0x5de]            ; A0 DE 05
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        mov     di, word ptr [bx]               ; 8B 3F
        inc     word ptr [bx]                   ; FF 07
        mov     byte ptr [di], al               ; 88 05
        sub     ah, ah                          ; 2A E4
        jmp     L_4932                          ; EB 0E
L_4924:
        push    word ptr [0x5d4]                ; FF 36 D4 05
        push    word ptr [0x5de]                ; FF 36 DE 05
        call    L_430D                          ; E8 DE F9
        add     sp, 4                           ; 83 C4 04
L_4932:
        inc     ax                              ; 40
        jne     L_4939                          ; 75 04
        inc     word ptr [0x5ea]                ; FF 06 EA 05
L_4939:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        or      ax, ax                          ; 0B C0
        jg      L_4906                          ; 7F C6
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        jne     L_494E                          ; 75 07
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [0x5e8], ax            ; 01 06 E8 05
L_494E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4954 -- offset 0x4954 -- 46 instr
; Funcion mediana (46 instr, 2 calls).
; tags: medium
; callers: sub_4475, sub_4772, sub_49BE
; calls (intra): sub_2230, sub_430D
;----------------------------------------------------------------------
L_4954:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        call    L_2230                          ; E8 D3 D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        jne     L_49B8                          ; 75 4C
        jmp     L_49A3                          ; EB 35
L_496E:
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        dec     word ptr [bx + 2]               ; FF 4F 02
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jl      L_498D                          ; 7C 12
        mov     al, byte ptr [si]               ; 8A 04
        mov     bx, word ptr [0x5d4]            ; 8B 1E D4 05
        mov     cx, word ptr [bx]               ; 8B 0F
        inc     word ptr [bx]                   ; FF 07
        mov     bx, cx                          ; 8B D9
        mov     byte ptr [bx], al               ; 88 07
        sub     ah, ah                          ; 2A E4
        jmp     L_499B                          ; EB 0E
L_498D:
        push    word ptr [0x5d4]                ; FF 36 D4 05
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_430D                          ; E8 75 F9
        add     sp, 4                           ; 83 C4 04
L_499B:
        inc     ax                              ; 40
        jne     L_49A2                          ; 75 04
        inc     word ptr [0x5ea]                ; FF 06 EA 05
L_49A2:
        inc     si                              ; 46
L_49A3:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jne     L_496E                          ; 75 C4
        cmp     word ptr [0x5ea], 0             ; 83 3E EA 05 00
        jne     L_49B8                          ; 75 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [0x5e8], ax            ; 01 06 E8 05
L_49B8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_49BE -- offset 0x49BE -- 72 instr
; Iterador con instrucciones de string (movsb/scasb/...) (72 instr).
; tags: complex_iterator, string_op
; callers: sub_4644, sub_47FE
; calls (intra): sub_2230, sub_4216, sub_489E, sub_48EB, sub_4954, sub_4A80 (+1 mas)
;----------------------------------------------------------------------
L_49BE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xa                         ; B8 0A 00
        call    L_2230                          ; E8 69 D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x5dc]            ; 8B 36 DC 05
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     di, word ptr [0x5e6]            ; 8B 3E E6 05
        push    si                              ; 56
        call    L_4216                          ; E8 39 F8
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     di, ax                          ; 2B F8
        sub     di, word ptr [bp + 4]           ; 2B 7E 04
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        jne     L_4A04                          ; 75 15
        cmp     byte ptr [si], 0x2d             ; 80 3C 2D
        jne     L_4A04                          ; 75 10
        cmp     word ptr [0x5de], 0x30          ; 83 3E DE 05 30
        jne     L_4A04                          ; 75 09
        lodsb   al, byte ptr [si]               ; AC
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_489E                          ; E8 9D FE
        add     sp, 2                           ; 83 C4 02
L_4A04:
        cmp     word ptr [0x5de], 0x30          ; 83 3E DE 05 30
        je      L_4A16                          ; 74 0B
        or      di, di                          ; 0B FF
        jle     L_4A16                          ; 7E 07
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        je      L_4A2F                          ; 74 19
L_4A16:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4A22                          ; 74 06
        inc     word ptr [bp - 8]               ; FF 46 F8
        call    L_4A80                          ; E8 5E 00
L_4A22:
        cmp     word ptr [0x5ec], 0             ; 83 3E EC 05 00
        je      L_4A2F                          ; 74 06
        inc     word ptr [bp - 4]               ; FF 46 FC
        call    L_4A9F                          ; E8 70 00
L_4A2F:
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        jne     L_4A5C                          ; 75 26
        push    di                              ; 57
        call    L_48EB                          ; E8 B1 FE
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_4A4C                          ; 74 09
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_4A4C                          ; 75 03
        call    L_4A80                          ; E8 34 00
L_4A4C:
        cmp     word ptr [0x5ec], 0             ; 83 3E EC 05 00
        je      L_4A5C                          ; 74 09
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_4A5C                          ; 75 03
        call    L_4A9F                          ; E8 43 00
L_4A5C:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        call    L_4954                          ; E8 F1 FE
        add     sp, 4                           ; 83 C4 04
        cmp     word ptr [0x5f0], 0             ; 83 3E F0 05 00
        je      L_4A7A                          ; 74 0D
        mov     word ptr [0x5de], 0x20          ; C7 06 DE 05 20 00
        push    di                              ; 57
        call    L_48EB                          ; E8 74 FE
        add     sp, 2                           ; 83 C4 02
L_4A7A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4A80 -- offset 0x4A80 -- 14 instr
; Funcion sin clasificar definitiva (14 instr).
; tags: small
; callers: sub_49BE
; calls (intra): sub_2230, sub_489E
;----------------------------------------------------------------------
L_4A80:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        xor     ax, ax                          ; 33 C0
        call    L_2230                          ; E8 A8 D7
        cmp     word ptr [0x5e0], 0             ; 83 3E E0 05 00
        je      L_4A94                          ; 74 05
        mov     ax, 0x2b                        ; B8 2B 00
        jmp     L_4A97                          ; EB 03
L_4A94:
        mov     ax, 0x20                        ; B8 20 00
L_4A97:
        push    ax                              ; 50
        call    L_489E                          ; E8 03 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4A9F -- offset 0x4A9F -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_49BE
; calls (intra): sub_2230, sub_489E
;----------------------------------------------------------------------
L_4A9F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        xor     ax, ax                          ; 33 C0
        call    L_2230                          ; E8 89 D7
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_489E                          ; E8 F0 FD
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [0x5ec], 0x10          ; 83 3E EC 05 10
        jne     L_4ACE                          ; 75 16
        cmp     word ptr [0x5d0], 0             ; 83 3E D0 05 00
        je      L_4AC4                          ; 74 05
        mov     ax, 0x58                        ; B8 58 00
        jmp     L_4AC7                          ; EB 03
L_4AC4:
        mov     ax, 0x78                        ; B8 78 00
L_4AC7:
        push    ax                              ; 50
        call    L_489E                          ; E8 D3 FD
        add     sp, 2                           ; 83 C4 02
L_4ACE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4AD2 -- offset 0x4AD2 -- 46 instr
; Iterador con instrucciones de string (movsb/scasb/...) (46 instr).
; tags: iterator, string_op
; callers: sub_4475
; calls (intra): sub_2230
;----------------------------------------------------------------------
L_4AD2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        call    L_2230                          ; E8 55 D7
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     byte ptr [si], 0x2a             ; 80 3C 2A
        jne     L_4AF3                          ; 75 0E
        mov     bx, word ptr [0x5d8]            ; 8B 1E D8 05
        add     word ptr [0x5d8], 2             ; 83 06 D8 05 02
        mov     di, word ptr [bx]               ; 8B 3F
        inc     si                              ; 46
        jmp     L_4B2D                          ; EB 3A
L_4AF3:
        xor     di, di                          ; 33 FF
        cmp     byte ptr [si], 0x30             ; 80 3C 30
        jl      L_4B2D                          ; 7C 33
        cmp     byte ptr [si], 0x39             ; 80 3C 39
        jg      L_4B2D                          ; 7F 2E
        cmp     word ptr [0x5da], di            ; 39 3E DA 05
        jne     L_4B10                          ; 75 0B
        cmp     byte ptr [si], 0x30             ; 80 3C 30
        jne     L_4B10                          ; 75 06
        mov     word ptr [0x5de], 0x30          ; C7 06 DE 05 30 00
L_4B10:
        lodsb   al, byte ptr [si]               ; AC
        cwde                                    ; 98
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        add     cx, di                          ; 03 CF
        shl     cx, 1                           ; D1 E1
        add     cx, ax                          ; 03 C8
        sub     cx, 0x30                        ; 83 E9 30
        mov     di, cx                          ; 8B F9
        cmp     byte ptr [si], 0x30             ; 80 3C 30
        jl      L_4B2D                          ; 7C 05
        cmp     byte ptr [si], 0x39             ; 80 3C 39
        jle     L_4B10                          ; 7E E3
L_4B2D:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], di               ; 89 3F
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4B3A -- offset 0x4B3A -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: small
; callers: sub_4475
; calls (intra): sub_2230
;----------------------------------------------------------------------
L_4B3A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        call    L_2230                          ; E8 ED D6
        push    si                              ; 56
        mov     si, 0x499                       ; BE 99 04
        jmp     L_4B56                          ; EB 0D
L_4B49:
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bp + 4], al           ; 38 46 04
        jne     L_4B55                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_4B5D                          ; EB 08
L_4B55:
        inc     si                              ; 46
L_4B56:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_4B49                          ; 75 EE
        xor     ax, ax                          ; 33 C0
L_4B5D:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4B62 -- offset 0x4B62 -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_430D
;----------------------------------------------------------------------
L_4B62:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     bx, 0x14                        ; 83 FB 14
        jge     L_4B7E                          ; 7D 11
        cmp     bx, 0                           ; 83 FB 00
        jl      L_4B7E                          ; 7C 0C
        test    byte ptr [bx + 0x35c], 0x40     ; F6 87 5C 03 40
        je      L_4B7E                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_4B80                          ; EB 02
L_4B7E:
        xor     ax, ax                          ; 33 C0
L_4B80:
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4B82 -- offset 0x4B82 -- 84 instr
; Iterador con instrucciones de string (movsb/scasb/...) (84 instr).
; tags: complex_iterator, string_op
; callers: sub_4644
; calls (intra): sub_4C1B
;----------------------------------------------------------------------
L_4B82:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bl, 0                           ; B3 00
        jmp     L_4BBE                          ; E9 34 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, 0x49e                       ; BE 9E 04
        xor     di, di                          ; 33 FF
        jmp     L_4BB0                          ; EB 17
L_4B99:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        test    ax, 0x83                        ; A9 83 00
        je      L_4BAD                          ; 74 0B
        push    si                              ; 56
        call    L_4C1B                          ; E8 75 00
        add     sp, 2                           ; 83 C4 02
        inc     ax                              ; 40
        je      L_4BAD                          ; 74 01
        inc     di                              ; 47
L_4BAD:
        add     si, 8                           ; 83 C6 08
L_4BB0:
        cmp     word ptr [0x566], si            ; 39 36 66 05
        jae     L_4B99                          ; 73 E3
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
L_4BBE:
        push    di                              ; 57
        push    si                              ; 56
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        push    di                              ; 57
        push    ds                              ; 1E
        pop     es                              ; 07
        cld                                     ; FC
        xchg    bx, ax                          ; 93
        or      al, al                          ; 0A C0
        je      L_4BE8                          ; 74 13
        cmp     cx, 0xa                         ; 83 F9 0A
        jne     L_4BE8                          ; 75 0E
        or      dx, dx                          ; 0B D2
        jns     L_4BE8                          ; 79 0A
        mov     al, 0x2d                        ; B0 2D
        stosb   byte ptr es:[di], al            ; AA
        neg     bx                              ; F7 DB
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
L_4BE8:
        mov     si, di                          ; 8B F7
L_4BEA:
        xchg    dx, ax                          ; 92
        xor     dx, dx                          ; 33 D2
        or      ax, ax                          ; 0B C0
        je      L_4BF3                          ; 74 02
        div     cx                              ; F7 F1
L_4BF3:
        xchg    bx, ax                          ; 93
        div     cx                              ; F7 F1
        xchg    dx, ax                          ; 92
        xchg    bx, dx                          ; 87 D3
        add     al, 0x30                        ; 04 30
        cmp     al, 0x39                        ; 3C 39
        jbe     L_4C01                          ; 76 02
        add     al, 0x27                        ; 04 27
L_4C01:
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        or      ax, bx                          ; 0B C3
        jne     L_4BEA                          ; 75 E2
        mov     byte ptr [di], al               ; 88 05
        dec     di                              ; 4F
L_4C0B:
        lodsb   al, byte ptr [si]               ; AC
        xchg    byte ptr [di], al               ; 86 05
        mov     byte ptr [si - 1], al           ; 88 44 FF
        dec     di                              ; 4F
        cmp     si, di                          ; 3B F7
        jb      L_4C0B                          ; 72 F5
        pop     ax                              ; 58
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_4C1B -- offset 0x4C1B -- 44 instr
; Funcion mediana (44 instr, 1 calls).
; tags: medium
; callers: sub_4B82
; calls (intra): sub_423A
;----------------------------------------------------------------------
L_4C1B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        xor     di, di                          ; 33 FF
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        and     al, 3                           ; 24 03
        cmp     al, 2                           ; 3C 02
        jne     L_4C6D                          ; 75 3C
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_4C46                          ; 75 0F
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        test    byte ptr [bx + 0x53e], 1        ; F6 87 3E 05 01
        je      L_4C6D                          ; 74 27
L_4C46:
        mov     ax, word ptr [si]               ; 8B 04
        sub     ax, word ptr [si + 4]           ; 2B 44 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jle     L_4C6D                          ; 7E 1B
        push    ax                              ; 50
        push    word ptr [si + 4]               ; FF 74 04
        mov     al, byte ptr [si + 7]           ; 8A 44 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_423A                          ; E8 DC F5
        add     sp, 6                           ; 83 C4 06
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        je      L_4C6D                          ; 74 07
        or      byte ptr [si + 6], 0x20         ; 80 4C 06 20
        mov     di, 0xffff                      ; BF FF FF
L_4C6D:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], 0            ; C7 44 02 00 00
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

CALC_TEXT ENDS

        END
