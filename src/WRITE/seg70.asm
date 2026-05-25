; AUTO-GENERATED from original WRITE segment 70
; segment_size=534 bytes, flags=0xf130
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
        mov     bx, word ptr [0x13b6]           ; 8B 1E B6 13
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0029                          ; E8 0C 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0029 -- offset 0x0029 -- 168 instr
; Dispatcher: tabla de decisiones cmp+jcc (168 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (intra): sub_01B7
; calls (inter): GDI.DELETEOBJECT, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0029:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx + 6], -1           ; 83 7F 06 FF
        jne     L_0045                          ; 75 06
        cmp     word ptr [bx + 4], -1           ; 83 7F 04 FF
        je      L_009E                          ; 74 59
L_0045:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xe10]            ; A1 10 0E
        cmp     bx, ax                          ; 3B D8
        jne     L_0059                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0064                          ; EB 0B
L_0059:
        mov     ax, word ptr [0x1078]           ; A1 78 10
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_006A                          ; 75 09
        mov     ax, 1                           ; B8 01 00
L_0064:
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
L_006A:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0080                          ; 74 10
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 0x1c], 0         ; C7 47 1C 00 00
L_0080:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        je      L_0091                          ; 74 08
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0091:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 4], 0xffff       ; C7 47 04 FF FF
        mov     word ptr [bx + 6], 0xffff       ; C7 47 06 FF FF
L_009E:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_00FF                          ; EB 42
L_00BD:
        mov     ax, 0x7e                        ; B8 7E 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        test    word ptr [bx + 0x13ec], 0x8000  ; F7 87 EC 13 00 80
        je      L_00D2                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00D4                          ; EB 02
L_00D2:
        sub     ax, ax                          ; 2B C0
L_00D4:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_00E1                          ; 74 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_00ED                          ; 75 0C
L_00E1:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_00FC                          ; 75 15
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00FC                          ; 74 0F
L_00ED:
        mov     ax, 0x7e                        ; B8 7E 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, 0x13e6                      ; 05 E6 13
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0029                          ; E8 2D FF
L_00FC:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_00FF:
        mov     ax, word ptr [0x7b4]            ; A1 B4 07
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_00BD                          ; 7C B6
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
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01B7                          ; E8 8F 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     si, word ptr [0x13b6]           ; 8B 36 B6 13
L_012F:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_01A1                          ; 74 68
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01A1                          ; 75 51
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        sub     ah, ah                          ; 2A E4
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     cx, word ptr [bx]               ; 8B 0F
        and     cl, 0                           ; 80 E1 00
        cmp     ax, cx                          ; 3B C1
        jne     L_01A1                          ; 75 3C
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        and     al, 0xf0                        ; 24 F0
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     cl, 4                           ; B1 04
        shr     dx, cl                          ; D3 EA
        and     dh, 0xf                         ; 80 E6 0F
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jne     L_01A1                          ; 75 27
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        and     ax, 0xf                         ; 25 0F 00
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xf0                        ; 80 E1 F0
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cl, 0                           ; 80 E1 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, si                          ; 8B C6
        jmp     L_01AB                          ; EB 0A
L_01A1:
        mov     si, word ptr [si]               ; 8B 34
        cmp     word ptr [0x13b6], si           ; 39 36 B6 13
        jne     L_012F                          ; 75 86
        sub     ax, ax                          ; 2B C0
L_01AB:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B7 -- offset 0x01B7 -- 44 instr
; Funcion mediana (44 instr, 0 calls).
; tags: medium
; callers: sub_0029
;----------------------------------------------------------------------
L_01B7:
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        and     ax, 0xf                         ; 25 0F 00
        mov     cx, 0x16                        ; B9 16 00
        mul     cx                              ; F7 E1
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        ja      L_01FE                          ; 77 05
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_01FE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
