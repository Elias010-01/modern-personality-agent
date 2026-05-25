; AUTO-GENERATED from original WRITE segment 42
; segment_size=5415 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 90 instr
; Dispatcher: tabla de decisiones cmp+jcc (90 instr).
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
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0014                          ; 74 03
        jmp     L_00D3                          ; E9 BF 00
L_0014:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0024                          ; 74 09
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        jmp     L_00D3                          ; E9 AF 00
L_0024:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_0069                          ; 74 3D
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BD2                          ; E8 85 0B
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        adc     dx, word ptr [bp + 0x12]        ; 13 56 12
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D97                          ; E8 2E 0D
L_0069:
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0358                          ; E8 CC 02
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_00D3                          ; 75 40
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_053B                          ; E8 8E 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_00BD                          ; 75 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_00D3                          ; 74 16
L_00BD:
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DE                          ; E8 0B 00
L_00D3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x14                            ; CA 14 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DE -- offset 0x00DE -- 43 instr
; Dispatcher: tabla de decisiones cmp+jcc (43 instr).
; tags: dispatcher, far
; callers: sub_0000, sub_0917
;----------------------------------------------------------------------
L_00DE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + si + 4], dx      ; 39 50 04
        jne     L_0107                          ; 75 05
        cmp     word ptr [bx + si + 2], ax      ; 39 40 02
        je      L_013B                          ; 74 34
L_0107:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_013B                          ; 74 1F
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_012D                          ; 75 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_013B                          ; 74 0E
L_012D:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
L_013B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0147 -- offset 0x0147 -- 83 instr
; Funcion compleja: 83 instrucciones, 1 llamadas, 2 branches.
; tags: complex, far
; callers: sub_0358, sub_03AF, sub_0917
; calls (intra): sub_020B
;----------------------------------------------------------------------
L_0147:
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_211                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, 0xc                         ; B9 0C 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     si, word ptr [bx]               ; 03 37
        add     si, 4                           ; 83 C6 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, word ptr [si]               ; 2B 04
        sbb     dx, word ptr [si + 2]           ; 1B 54 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_01EC                          ; 74 63
        push    bx                              ; 53
        lea     ax, [si + 0xc]                  ; 8D 44 0C
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_020B                          ; E8 74 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_01A2                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01FF                          ; EB 5D
L_01A2:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [si - 8]           ; 8B 44 F8
        shr     ax, 1                           ; D1 E8
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     dx, word ptr [si - 4]           ; 8B 54 FC
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        adc     dx, word ptr [bp - 4]           ; 13 56 FC
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], dx           ; 89 54 08
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        and     al, 0xfe                        ; 24 FE
        mov     cx, word ptr [si - 8]           ; 8B 4C F8
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 4], ax           ; 89 44 04
L_01EC:
        mov     ax, si                          ; 8B C6
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bx]               ; 8B 0F
        add     cx, 4                           ; 83 C1 04
        sub     ax, cx                          ; 2B C1
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xc                         ; B9 0C 00
        div     cx                              ; F7 F1
L_01FF:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_020B -- offset 0x020B -- 136 instr
; Dispatcher: tabla de decisiones cmp+jcc (136 instr).
; tags: dispatcher, far
; callers: sub_0147, sub_03AF, sub_04AA, sub_0917
;----------------------------------------------------------------------
L_020B:
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        lea     cx, [si + 4]                    ; 8D 4C 04
        sub     ax, cx                          ; 2B C1
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xc                         ; B9 0C 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [si + 2]           ; 03 44 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_0247                          ; 7F 03
        jmp     L_02D1                          ; E9 8A 00
L_0247:
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_02A8                          ; 7E 5C
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A 35 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0290                          ; 75 0E
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_034C                          ; E9 BC 00
L_0290:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     bx, ax                          ; 8B D8
        lea     ax, [bx + si + 4]               ; 8D 40 04
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si], ax               ; 89 04
L_02A8:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [si + 2], ax           ; 89 44 02
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    far _entry_62                   ; 9A F9 02 00 00 [FIXUP]
        jmp     L_0349                          ; EB 78
L_02D1:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0349                          ; 7D 72
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     cx, 6                           ; B9 06 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 5            ; 83 7E FC 05
        jle     L_0349                          ; 7E 46
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jge     L_0349                          ; 7D 3C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, 5                           ; B9 05 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        call    far _entry_264                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si], ax               ; 89 04
        mov     cx, 6                           ; B9 06 00
        mul     cx                              ; F7 E1
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     ax, word ptr [bx]               ; 03 07
        add     ax, 4                           ; 05 04 00
        jmp     L_034C                          ; EB 03
L_0349:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_034C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0358 -- offset 0x0358 -- 37 instr
; Funcion mediana (37 instr, 1 calls).
; tags: medium
; callers: sub_0000
; calls (intra): sub_0147
;----------------------------------------------------------------------
L_0358:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, word ptr [bp + 0x10]        ; 2B 46 10
        sbb     dx, word ptr [bp + 0x12]        ; 1B 56 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x18]            ; F7 6E 18
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0xf92]            ; 8B 3E 92 0F
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0147                          ; E8 AA FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        jne     L_03AF                          ; 75 07
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_03CB                          ; EB 1C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03AF -- offset 0x03AF -- 96 instr
; Dispatcher: tabla de decisiones cmp+jcc (96 instr).
; tags: dispatcher
; calls (intra): sub_0147, sub_020B
;----------------------------------------------------------------------
L_03AF:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        adc     dx, word ptr [bp + 0x12]        ; 13 56 12
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0147                          ; E8 82 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_03CB:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_03D5                          ; 74 03
        jmp     L_052E                          ; E9 59 01
L_03D5:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bp - 0x12]        ; 03 7E EE
        sub     di, 8                           ; 83 EF 08
        mov     word ptr [bp - 4], di           ; 89 7E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0467                          ; 74 71
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_042C                          ; 7E 30
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [di + 4]           ; 8B 4D 04
        and     cl, 0xfe                        ; 80 E1 FE
        cmp     ax, cx                          ; 3B C1
        jne     L_042C                          ; 75 21
        cmp     word ptr [di + 0xa], 0          ; 83 7D 0A 00
        jne     L_042C                          ; 75 1B
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     dx, word ptr [di + 8]           ; 8B 55 08
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        adc     dx, word ptr [bp + 0x16]        ; 13 56 16
        sub     ax, word ptr [di]               ; 2B 05
        sbb     dx, word ptr [di + 2]           ; 1B 55 02
        cmp     dx, word ptr [bp + 0xc]         ; 3B 56 0C
        jne     L_042C                          ; 75 05
        cmp     ax, word ptr [bp + 0xa]         ; 3B 46 0A
        je      L_0467                          ; 74 3B
L_042C:
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        add     bx, 0xc                         ; 83 C3 0C
        mov     word ptr [bp - 0x10], bx        ; 89 5E F0
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        and     al, 0xfe                        ; 24 FE
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        shl     cx, 1                           ; D1 E1
        cmp     ax, cx                          ; 3B C1
        jne     L_04AA                          ; 75 5F
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_04AA                          ; 75 59
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        cmp     dx, word ptr [bx + 8]           ; 3B 57 08
        jne     L_04AA                          ; 75 48
        cmp     ax, word ptr [bx + 6]           ; 3B 47 06
        jne     L_04AA                          ; 75 43
L_0467:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_020B                          ; E8 8F FD
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0485                          ; 75 03
        jmp     L_052E                          ; E9 A9 00
L_0485:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_04FD                          ; 74 70
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_04A4                          ; 74 11
        mov     bx, si                          ; 8B DE
        add     si, 0xc                         ; 83 C6 0C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 8], dx           ; 89 57 08
L_04A4:
        and     byte ptr [si - 8], 0xfe         ; 80 64 F8 FE
        jmp     L_04FD                          ; EB 53
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04AA -- offset 0x04AA -- 57 instr
; Funcion mediana (57 instr, 1 calls).
; tags: far, medium
; calls (intra): sub_020B
;----------------------------------------------------------------------
L_04AA:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_020B                          ; E8 4B FD
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_052E                          ; 74 68
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        and     ah, 0x7f                        ; 80 E4 7F
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [si + 8], dx           ; 89 54 08
        mov     word ptr [si + 0xa], 0          ; C7 44 0A 00 00
        and     byte ptr [si + 4], 0xfe         ; 80 64 04 FE
        add     si, 0xc                         ; 83 C6 0C
L_04FD:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [di + 2]               ; F7 65 02
        mov     bx, ax                          ; 8B D8
        lea     ax, [bx + di + 4]               ; 8D 41 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        or      ax, word ptr [bp - 0x14]        ; 0B 46 EC
        je      L_052E                          ; 74 16
        jmp     L_0529                          ; EB 0F
L_051A:
        add     si, 0xc                         ; 83 C6 0C
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        add     word ptr [si - 0xc], ax         ; 01 44 F4
        adc     word ptr [si - 0xa], dx         ; 11 54 F6
L_0529:
        cmp     word ptr [bp - 0xa], si         ; 39 76 F6
        ja      L_051A                          ; 77 EC
L_052E:
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
; sub_053B -- offset 0x053B -- 365 instr
; Dispatcher: tabla de decisiones cmp+jcc (365 instr).
; tags: dispatcher, far
; callers: sub_0000, sub_0917, sub_0C6B
; calls (intra): sub_0DE6
;----------------------------------------------------------------------
L_053B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        adc     dx, word ptr [bp + 0xc]         ; 13 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sbb     dx, word ptr [bp + 0xc]         ; 1B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x12]            ; F7 6E 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [si + 2], ax           ; 01 44 02
        adc     word ptr [si + 4], dx           ; 11 54 04
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_05B1                          ; 75 21
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jg      L_05B1                          ; 7F 15
        jl      L_05A3                          ; 7C 05
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        ja      L_05B1                          ; 77 0E
L_05A3:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [0x13a6], ax           ; 01 06 A6 13
        adc     word ptr [0x13a8], dx           ; 11 16 A8 13
L_05B1:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        or      ax, word ptr [bp - 0xa]         ; 0B 46 F6
        je      L_0605                          ; 74 4C
        test    word ptr [si + 6], 0xc00        ; F7 44 06 00 0C
        jne     L_0605                          ; 75 45
        cmp     word ptr [si + 0x10], 0         ; 83 7C 10 00
        je      L_0605                          ; 74 3F
        mov     bx, word ptr [si + 0x10]        ; 8B 5C 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0x12]            ; F7 6E EE
        add     ax, bx                          ; 03 C3
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0DE6                          ; E8 E1 07
L_0605:
        mov     ax, word ptr [0x2de]            ; A1 DE 02
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_064F                          ; 75 42
        mov     ax, word ptr [0xbde]            ; A1 DE 0B
        mov     dx, word ptr [0xbe0]            ; 8B 16 E0 0B
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jg      L_064F                          ; 7F 36
        jl      L_0620                          ; 7C 05
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        ja      L_064F                          ; 77 2F
L_0620:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        adc     dx, word ptr [bp + 0xc]         ; 13 56 0C
        cmp     dx, word ptr [0xbe0]            ; 3B 16 E0 0B
        jl      L_0641                          ; 7C 0F
        jg      L_063A                          ; 7F 06
        cmp     ax, word ptr [0xbde]            ; 3B 06 DE 0B
        jbe     L_0641                          ; 76 07
L_063A:
        call    far _entry_219                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_064F                          ; EB 0E
L_0641:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [0xbde], ax            ; 01 06 DE 0B
        adc     word ptr [0xbe0], dx            ; 11 16 E0 0B
L_064F:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0654:
        mov     ax, word ptr [0x320]            ; A1 20 03
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_065F                          ; 7C 03
        jmp     L_0902                          ; E9 A3 02
L_065F:
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        je      L_0678                          ; 74 03
        jmp     L_083B                          ; E9 C3 01
L_0678:
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [0x322]            ; A1 22 03
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_069C                          ; 75 05
        mov     ax, 0x1be2                      ; B8 E2 1B
        jmp     L_069F                          ; EB 03
L_069C:
        lea     ax, [si + 0x22]                 ; 8D 44 22
L_069F:
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [si + 0x1e], dx        ; 39 54 1E
        jl      L_0705                          ; 7C 58
        jg      L_06B4                          ; 7F 05
        cmp     word ptr [si + 0x1c], ax        ; 39 44 1C
        jb      L_0705                          ; 72 51
L_06B4:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [si + 0x1c], ax        ; 01 44 1C
        adc     word ptr [si + 0x1e], dx        ; 11 54 1E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [si + 0x1a], dx        ; 39 54 1A
        jg      L_06E4                          ; 7F 19
        jl      L_06D2                          ; 7C 05
        cmp     word ptr [si + 0x18], ax        ; 39 44 18
        ja      L_06E4                          ; 77 12
L_06D2:
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     dx, word ptr [si + 0x1a]        ; 8B 54 1A
        cmp     word ptr [si + 0x1e], dx        ; 39 54 1E
        jg      L_0705                          ; 7F 28
        jl      L_06E4                          ; 7C 05
        cmp     word ptr [si + 0x1c], ax        ; 39 44 1C
        jae     L_0705                          ; 73 21
L_06E4:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [si + 0x18], ax        ; 01 44 18
        adc     word ptr [si + 0x1a], dx        ; 11 54 1A
        mov     ax, word ptr [0x322]            ; A1 22 03
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_0705                          ; 75 0D
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     dx, word ptr [si + 0x1a]        ; 8B 54 1A
        mov     word ptr [0x13e0], ax           ; A3 E0 13
        mov     word ptr [0x13e2], dx           ; 89 16 E2 13
L_0705:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        or      ax, word ptr [bp - 0xa]         ; 0B 46 F6
        jne     L_0710                          ; 75 03
        jmp     L_07A3                          ; E9 93 00
L_0710:
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        cmp     word ptr [bx + 6], dx           ; 39 57 06
        jge     L_0721                          ; 7D 03
        jmp     L_07A3                          ; E9 82 00
L_0721:
        jg      L_0728                          ; 7F 05
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jb      L_07A3                          ; 72 7B
L_0728:
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jl      L_075B                          ; 7C 25
        jg      L_073C                          ; 7F 04
        cmp     word ptr [bx], ax               ; 39 07
        jb      L_075B                          ; 72 1F
L_073C:
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [bx], ax               ; 01 07
        adc     word ptr [bx + 2], dx           ; 11 57 02
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [bx + 4], ax           ; 01 47 04
        adc     word ptr [bx + 6], dx           ; 11 57 06
        jmp     L_07A3                          ; EB 48
L_075B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0774                          ; 75 11
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0780                          ; EB 0C
L_0774:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
L_0780:
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        mov     dx, word ptr [bp - 0x26]        ; 8B 56 DA
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
L_07A3:
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0x22]        ; 03 46 DE
        sub     ax, 0x10                        ; 2D 10 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     di, ax                          ; 8B F8
        jmp     L_07E0                          ; EB 21
L_07BF:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [di + 8], dx           ; 39 55 08
        jl      L_0831                          ; 7C 67
        jg      L_07D1                          ; 7F 05
        cmp     word ptr [di + 6], ax           ; 39 45 06
        jbe     L_0831                          ; 76 60
L_07D1:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     word ptr [di + 6], ax           ; 01 45 06
        adc     word ptr [di + 8], dx           ; 11 55 08
        sub     di, 0x10                        ; 83 EF 10
L_07E0:
        cmp     word ptr [bp - 0x22], di        ; 39 7E DE
        jbe     L_07BF                          ; 76 DA
        jmp     L_0831                          ; EB 4A
L_07E7:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cdq                                     ; 99
        add     ax, word ptr [di + 6]           ; 03 45 06
        adc     dx, word ptr [di + 8]           ; 13 55 08
        cmp     dx, word ptr [bp + 0x10]        ; 3B 56 10
        jg      L_0817                          ; 7F 21
        jl      L_07FD                          ; 7C 05
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        ja      L_0817                          ; 77 1A
L_07FD:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cdq                                     ; 99
        add     ax, word ptr [di + 6]           ; 03 45 06
        adc     dx, word ptr [di + 8]           ; 13 55 08
        cmp     dx, word ptr [bp + 0x10]        ; 3B 56 10
        jne     L_0836                          ; 75 2A
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        jne     L_0836                          ; 75 25
        test    byte ptr [di + 2], 8            ; F6 45 02 08
        je      L_0836                          ; 74 1F
L_0817:
        cmp     word ptr [0x30c], 0             ; 83 3E 0C 03 00
        je      L_0822                          ; 74 04
        and     byte ptr [di + 2], 0xfe         ; 80 65 02 FE
L_0822:
        mov     ax, word ptr [0x322]            ; A1 22 03
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_082E                          ; 75 04
        mov     word ptr [0x13ae], di           ; 89 3E AE 13
L_082E:
        sub     di, 0x10                        ; 83 EF 10
L_0831:
        cmp     word ptr [bp - 0x22], di        ; 39 7E DE
        jbe     L_07E7                          ; 76 B1
L_0836:
        cmp     word ptr [bp - 0x16], di        ; 39 7E EA
        jne     L_0841                          ; 75 06
L_083B:
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_0654                          ; E9 13 FE
L_0841:
        cmp     word ptr [0x30c], 0             ; 83 3E 0C 03 00
        je      L_084B                          ; 74 03
        or      byte ptr [si], 1                ; 80 0C 01
L_084B:
        cmp     word ptr [bp - 0x22], di        ; 39 7E DE
        jbe     L_08C9                          ; 76 79
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp - 0x18], dx        ; 39 56 E8
        jl      L_0876                          ; 7C 1B
        jg      L_0862                          ; 7F 05
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jbe     L_0876                          ; 76 14
L_0862:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        adc     dx, word ptr [bp - 0xa]         ; 13 56 F6
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     word ptr [si + 0x16], dx        ; 89 54 16
        jmp     L_08B8                          ; EB 42
L_0876:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        sub     ah, ah                          ; 2A E4
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        adc     dx, word ptr [bp - 0x18]        ; 13 56 E8
        cmp     dx, word ptr [bp + 0x10]        ; 3B 56 10
        jb      L_083B                          ; 72 B3
        ja      L_088F                          ; 77 05
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        jbe     L_083B                          ; 76 AC
L_088F:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        cmp     dx, word ptr [bp - 0x18]        ; 3B 56 E8
        jg      L_08B8                          ; 7F 18
        jl      L_08A7                          ; 7C 05
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        jae     L_08B8                          ; 73 11
L_08A7:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     word ptr [si + 0x16], dx        ; 89 54 16
        mov     word ptr [si + 8], 0            ; C7 44 08 00 00
L_08B8:
        or      byte ptr [si], 2                ; 80 0C 02
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_123                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_083B                          ; E9 72 FF
L_08C9:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cdq                                     ; 99
        add     ax, word ptr [di + 6]           ; 03 45 06
        adc     dx, word ptr [di + 8]           ; 13 55 08
        mov     cl, byte ptr [di]               ; 8A 0D
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        adc     dx, 0                           ; 83 D2 00
        cmp     dx, word ptr [bp + 0x10]        ; 3B 56 10
        jae     L_08E4                          ; 73 03
        jmp     L_083B                          ; E9 57 FF
L_08E4:
        ja      L_08EE                          ; 77 08
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        ja      L_08EE                          ; 77 03
        jmp     L_083B                          ; E9 4D FF
L_08EE:
        and     byte ptr [di + 2], 0xfe         ; 80 65 02 FE
        or      byte ptr [si], 1                ; 80 0C 01
        mov     ax, di                          ; 8B C7
        sub     di, 0x10                        ; 83 EF 10
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jb      L_08C9                          ; 72 CA
        jmp     L_083B                          ; E9 39 FF
L_0902:
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far _entry_262                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0917 -- offset 0x0917 -- 282 instr
; Dispatcher: tabla de decisiones cmp+jcc (282 instr).
; tags: dispatcher, far
; callers: sub_0EE4, sub_12BB
; calls (intra): sub_00DE, sub_0147, sub_020B, sub_053B, sub_0BD2, sub_0D97 (+1 mas)
;----------------------------------------------------------------------
L_0917:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0930                          ; 74 03
        jmp     L_0BC5                          ; E9 95 02
L_0930:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0959                          ; 75 21
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 AA F6
        jmp     L_0BC5                          ; E9 6C 02
L_0959:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x18]            ; F7 6E 18
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_211                  ; 9A AC 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_211                  ; 9A 61 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_09C3                          ; 74 09
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        jmp     L_0BC5                          ; E9 02 02
L_09C3:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        je      L_0A0B                          ; 74 3D
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BD2                          ; E8 E3 01
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        adc     dx, word ptr [bp + 0x12]        ; 13 56 12
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0D97                          ; E8 8C 03
L_0A0B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0A33                          ; 74 20
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BD2                          ; E8 9F 01
L_0A33:
        push    si                              ; 56
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0147                          ; E8 08 F7
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        or      ax, word ptr [bp + 0x12]        ; 0B 46 12
        jne     L_0A4F                          ; 75 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0A63                          ; EB 14
L_0A4F:
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        adc     dx, word ptr [bp + 0x12]        ; 13 56 12
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0147                          ; E8 E4 F6
L_0A63:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0A70                          ; 74 03
        jmp     L_0BC5                          ; E9 55 01
L_0A70:
        push    si                              ; 56
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [si]               ; 03 04
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_020B                          ; E8 7B F7
        mov     di, ax                          ; 8B F8
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     ax, word ptr [bx]               ; 03 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0AAD                          ; 74 03
        jmp     L_0BC5                          ; E9 18 01
L_0AAD:
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 1B 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], dx           ; 89 55 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        sub     ax, word ptr [bx]               ; 2B 07
        sbb     dx, word ptr [bx + 2]           ; 1B 57 02
        add     word ptr [di + 6], ax           ; 01 45 06
        adc     word ptr [di + 8], dx           ; 11 55 08
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sbb     dx, word ptr [bp + 0xc]         ; 1B 56 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, word ptr [bp + 0x10]        ; 2B 46 10
        sbb     dx, word ptr [bp + 0x12]        ; 1B 56 12
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_0B39                          ; 74 31
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        lea     ax, [di + 0xc]                  ; 8D 45 0C
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0x10]            ; F7 6E F0
        push    ax                              ; 50
        call    far _entry_62                   ; 9A CB 02 00 00 [FIXUP]
        jmp     L_0B2F                          ; EB 0E
L_0B21:
        add     di, 0xc                         ; 83 C7 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     word ptr [di], ax               ; 01 05
        adc     word ptr [di + 2], dx           ; 11 55 02
L_0B2F:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        jne     L_0B21                          ; 75 E8
L_0B39:
        mov     ax, 0xc                         ; B8 0C 00
        mov     bx, word ptr [si]               ; 8B 1C
        mul     word ptr [bx + 2]               ; F7 67 02
        add     ax, bx                          ; 03 C3
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        jmp     L_0B56                          ; EB 0B
L_0B4B:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        add     word ptr [di], ax               ; 01 05
        adc     word ptr [di + 2], dx           ; 11 55 02
L_0B56:
        add     di, 0xc                         ; 83 C7 0C
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        ja      L_0B4B                          ; 77 ED
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_053B                          ; E8 C3 F9
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_0B88                          ; 75 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0B9E                          ; 74 16
L_0B88:
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DE                          ; E8 40 F5
L_0B9E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0BC5                          ; 74 1F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, word ptr [bp + 6]           ; 03 46 06
        adc     dx, word ptr [bp + 8]           ; 13 56 08
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1452                          ; E8 8D 08
L_0BC5:
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
; sub_0BD2 -- offset 0x0BD2 -- 59 instr
; Dispatcher: tabla de decisiones cmp+jcc (59 instr).
; tags: dispatcher
; callers: sub_0000, sub_0917
;----------------------------------------------------------------------
L_0BD2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, word ptr [bp + 8]           ; 03 46 08
        adc     dx, word ptr [bp + 0xa]         ; 13 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_32                   ; 9A 53 0C 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jge     L_0C0F                          ; 7D 03
        jmp     L_0D09                          ; E9 FA 00
L_0C0F:
        jg      L_0C19                          ; 7F 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_0C19                          ; 73 03
        jmp     L_0D09                          ; E9 F0 00
L_0C19:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x16]            ; F7 6E 16
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        cmp     word ptr [bp + 0x14], dx        ; 39 56 14
        jne     L_0C6B                          ; 75 33
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_0C6B                          ; 75 2E
        or      ax, dx                          ; 0B C2
        je      L_0C6B                          ; 74 2A
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 7D 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        jmp     L_0C81                          ; EB 16
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C6B -- offset 0x0C6B -- 123 instr
; Dispatcher: tabla de decisiones cmp+jcc (123 instr).
; tags: dispatcher, far
; callers: sub_0A66, sub_0DF5
; calls (intra): sub_053B
;----------------------------------------------------------------------
L_0C6B:
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A BC 0C 00 00 [FIXUP]
L_0C81:
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0CA0                          ; 75 0C
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_0CA0:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jg      L_0CD3                          ; 7F 28
        jl      L_0CB2                          ; 7C 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_0CD3                          ; 77 21
L_0CB2:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_32                   ; 9A 11 01 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 0x1c], dx        ; 39 56 E4
        jg      L_0CE5                          ; 7F 19
        jl      L_0CD3                          ; 7C 05
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jae     L_0CE5                          ; 73 12
L_0CD3:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
L_0CE5:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        sbb     dx, word ptr [bp - 0x14]        ; 1B 56 EC
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_053B                          ; E8 32 F8
L_0D09:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0D28:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jae     L_0D88                          ; 73 57
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mul     word ptr [bp + 0xa]             ; F7 66 0A
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp + 8]           ; 03 5E 08
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     dx, word ptr [bp + 0x10]        ; 3B 56 10
        jg      L_0D68                          ; 7F 10
        jl      L_0D5F                          ; 7C 05
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        jae     L_0D68                          ; 73 09
L_0D5F:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0D28                          ; EB C0
L_0D68:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jl      L_0D83                          ; 7C 10
        jg      L_0D7A                          ; 7F 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jbe     L_0D83                          ; 76 09
L_0D7A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0D28                          ; EB A5
L_0D83:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0D8B                          ; EB 03
L_0D88:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0D8B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D97 -- offset 0x0D97 -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
; callers: sub_0000, sub_0917
;----------------------------------------------------------------------
L_0D97:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        test    word ptr [bx + 6], 0xc00        ; F7 47 06 00 0C
        jne     L_0DDB                          ; 75 1F
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0DDB                          ; 74 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    far _entry_265                  ; 9A FF FF 00 00 [FIXUP]
L_0DDB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DE6 -- offset 0x0DE6 -- 35 instr
; Funcion mediana (35 instr, 0 calls).
; tags: far, medium
; callers: sub_053B
;----------------------------------------------------------------------
L_0DE6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        add     si, word ptr [bp + 0x10]        ; 03 76 10
        jmp     L_0E18                          ; EB 1F
L_0DF9:
        sub     si, word ptr [bp + 0x12]        ; 2B 76 12
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        cmp     word ptr [si + 2], dx           ; 39 54 02
        jl      L_0E22                          ; 7C 1B
        jg      L_0E0D                          ; 7F 04
        cmp     word ptr [si], ax               ; 39 04
        jb      L_0E22                          ; 72 15
L_0E0D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     word ptr [si], ax               ; 01 04
        adc     word ptr [si + 2], dx           ; 11 54 02
L_0E18:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        dec     word ptr [bp + 0xe]             ; FF 4E 0E
        or      ax, ax                          ; 0B C0
        jne     L_0DF9                          ; 75 D7
L_0E22:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E2E -- offset 0x0E2E -- 66 instr
; Funcion mediana (66 instr, 1 calls).
; tags: far, medium
; callers: sub_1400
; calls (intra): sub_0EE4
;----------------------------------------------------------------------
L_0E2E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        sbb     dx, word ptr [bp - 8]           ; 1B 56 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EE4                          ; E8 57 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 54 F1
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        mov     word ptr [0x13de], 0            ; C7 06 DE 13 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EC1 -- offset 0x0EC1 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: far, leaf
; callers: sub_1400
;----------------------------------------------------------------------
L_0EC1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_0ED7                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0ED9                          ; EB 02
L_0ED7:
        sub     ax, ax                          ; 2B C0
L_0ED9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EE4 -- offset 0x0EE4 -- 350 instr
; Dispatcher: tabla de decisiones cmp+jcc (350 instr).
; tags: dispatcher, far
; callers: sub_0E2E
; calls (intra): sub_0917, sub_12BB, sub_1385
;----------------------------------------------------------------------
L_0EE4:
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
        cmp     word ptr [bp + 0x1c], 3         ; 83 7E 1C 03
        je      L_0EFC                          ; 74 03
        jmp     L_0FD0                          ; E9 D4 00
L_0EFC:
        mov     ax, word ptr [0xcae]            ; A1 AE 0C
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        je      L_0F07                          ; 74 03
        jmp     L_0FD0                          ; E9 C9 00
L_0F07:
        cmp     word ptr [0xcac], 3             ; 83 3E AC 0C 03
        je      L_0F18                          ; 74 0A
        cmp     word ptr [0xcac], 2             ; 83 3E AC 0C 02
        je      L_0F18                          ; 74 03
        jmp     L_0FD0                          ; E9 B8 00
L_0F18:
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        cmp     word ptr [bp + 0x18], dx        ; 39 56 18
        jne     L_0F3A                          ; 75 16
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jne     L_0F3A                          ; 75 11
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_0F5A                          ; EB 20
L_0F3A:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        adc     dx, word ptr [bp + 0x14]        ; 13 56 14
        cmp     dx, word ptr [0xcb2]            ; 3B 16 B2 0C
        jne     L_0FA5                          ; 75 59
        cmp     ax, word ptr [0xcb0]            ; 3B 06 B0 0C
        jne     L_0FA5                          ; 75 53
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0F5A:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0917                          ; E8 9B F9
        cmp     word ptr [0xcac], 3             ; 83 3E AC 0C 03
        jne     L_0F94                          ; 75 11
L_0F83:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     word ptr [0xcb4], ax            ; 01 06 B4 0C
        adc     word ptr [0xcb6], dx            ; 11 16 B6 0C
        jmp     L_12A2                          ; E9 0E 03
L_0F94:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     word ptr [0xcbe], ax            ; 01 06 BE 0C
        adc     word ptr [0xcc0], dx            ; 11 16 C0 0C
        jmp     L_12A2                          ; E9 FD 02
L_0FA5:
        cmp     word ptr [0xcac], 2             ; 83 3E AC 0C 02
        jne     L_0FD0                          ; 75 24
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        add     ax, word ptr [0xcb4]            ; 03 06 B4 0C
        adc     dx, word ptr [0xcb6]            ; 13 16 B6 0C
        cmp     dx, word ptr [bp + 0x18]        ; 3B 56 18
        jne     L_0FD0                          ; 75 10
        cmp     ax, word ptr [bp + 0x16]        ; 3B 46 16
        jne     L_0FD0                          ; 75 0B
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        jne     L_0FD0                          ; 75 03
        jmp     L_12AE                          ; E9 DE 02
L_0FD0:
        cmp     word ptr [bp + 0x1c], 1         ; 83 7E 1C 01
        jne     L_102B                          ; 75 55
        mov     ax, word ptr [0xcae]            ; A1 AE 0C
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jne     L_102B                          ; 75 4D
        cmp     word ptr [0xcac], 1             ; 83 3E AC 0C 01
        je      L_0FEC                          ; 74 07
        cmp     word ptr [0xcac], 2             ; 83 3E AC 0C 02
        jne     L_1008                          ; 75 1C
L_0FEC:
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        add     ax, word ptr [0xcb4]            ; 03 06 B4 0C
        adc     dx, word ptr [0xcb6]            ; 13 16 B6 0C
        cmp     dx, word ptr [bp + 0x18]        ; 3B 56 18
        jne     L_102B                          ; 75 2B
        cmp     ax, word ptr [bp + 0x16]        ; 3B 46 16
        jne     L_102B                          ; 75 26
        jmp     L_0F83                          ; E9 7B FF
L_1008:
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        cmp     word ptr [bp + 0x18], dx        ; 39 56 18
        jne     L_102B                          ; 75 17
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jne     L_102B                          ; 75 12
        mov     ax, word ptr [0xcac]            ; A1 AC 0C
        cmp     ax, 3                           ; 3D 03 00
        je      L_1078                          ; 74 57
        cmp     ax, 5                           ; 3D 05 00
        je      L_1096                          ; 74 70
        cmp     ax, 9                           ; 3D 09 00
        je      L_108E                          ; 74 63
L_102B:
        cmp     word ptr [bp + 0x1c], 0x29      ; 83 7E 1C 29
        je      L_1034                          ; 74 03
        jmp     L_10B5                          ; E9 81 00
L_1034:
        cmp     word ptr [0xcac], 0x29          ; 83 3E AC 0C 29
        jne     L_10B5                          ; 75 7A
        mov     ax, word ptr [0xcae]            ; A1 AE 0C
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jne     L_10B5                          ; 75 72
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        cmp     word ptr [bp + 0x18], dx        ; 39 56 18
        jne     L_10B5                          ; 75 66
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jne     L_10B5                          ; 75 61
        cmp     word ptr [0xcc2], 0             ; 83 3E C2 0C 00
        jne     L_10B5                          ; 75 5A
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
        jmp     L_12A2                          ; E9 2A 02
L_1078:
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        mov     word ptr [0xcbe], ax            ; A3 BE 0C
        mov     word ptr [0xcc0], dx            ; 89 16 C0 0C
        mov     word ptr [0xcac], 2             ; C7 06 AC 0C 02 00
        jmp     L_109C                          ; EB 0E
L_108E:
        mov     word ptr [0xcac], 0xb           ; C7 06 AC 0C 0B 00
        jmp     L_109C                          ; EB 06
L_1096:
        mov     word ptr [0xcac], 7             ; C7 06 AC 0C 07 00
L_109C:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 42 12 00 00 [FIXUP]
        jmp     L_12A2                          ; E9 ED 01
L_10B5:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr [0xcae], ax            ; A3 AE 0C
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        mov     word ptr [0xcb0], ax            ; A3 B0 0C
        mov     word ptr [0xcb2], dx            ; 89 16 B2 0C
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [0xcb8], ax            ; A3 B8 0C
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [0xcba], ax            ; A3 BA 0C
        mov     word ptr [0xcbc], dx            ; 89 16 BC 0C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [0xcbe], ax            ; A3 BE 0C
        mov     word ptr [0xcc0], dx            ; 89 16 C0 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xcc2], ax            ; A3 C2 0C
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        mov     word ptr [0xcac], ax            ; A3 AC 0C
        cmp     ax, 0x15                        ; 3D 15 00
        jle     L_1109                          ; 7E 03
        jmp     L_121B                          ; E9 12 01
L_1109:
        cmp     ax, 0x14                        ; 3D 14 00
        jl      L_1111                          ; 7C 03
        jmp     L_1216                          ; E9 05 01
L_1111:
        cmp     ax, 2                           ; 3D 02 00
        je      L_1172                          ; 74 5C
        cmp     ax, 3                           ; 3D 03 00
        je      L_115D                          ; 74 42
        cmp     ax, 5                           ; 3D 05 00
        je      L_1128                          ; 74 08
        cmp     ax, 7                           ; 3D 07 00
        je      L_1128                          ; 74 03
        jmp     L_123D                          ; E9 15 01
L_1128:
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        je      L_1147                          ; 74 18
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 2E 0F 00 00 [FIXUP]
        push    dx                              ; 52
        jmp     L_1154                          ; EB 0D
L_1147:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
L_1154:
        push    ax                              ; 50
L_1155:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12BB                          ; E8 61 01
        jmp     L_123D                          ; E9 E0 00
L_115D:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        jmp     L_1155                          ; EB E3
L_1172:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        jmp     L_1155                          ; EB CE
L_1187:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12BB                          ; E8 1C 01
L_119F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1240                          ; E9 9B 00
L_11A5:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12BB                          ; E8 FE 00
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x1a]            ; F7 6E 1A
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bx + si + 0x10]   ; 8B 78 10
        or      di, di                          ; 0B FF
        je      L_119F                          ; 74 CD
        mov     ax, 3                           ; B8 03 00
        mov     bx, word ptr [di]               ; 8B 1D
        imul    word ptr [bx + 2]               ; F7 6F 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0xf92]                ; FF 36 92 0F
        mov     ax, si                          ; 8B C6
        add     ax, 0x10                        ; 05 10 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        add     ax, 0x10                        ; 05 10 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1385                          ; E8 89 01
        jmp     L_119F                          ; EB A1
L_11FE:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12BB                          ; E8 A5 00
L_1216:
        mov     ax, 3                           ; B8 03 00
        jmp     L_1240                          ; EB 25
L_121B:
        cmp     ax, 0x1a                        ; 3D 1A 00
        je      L_11A5                          ; 74 85
        cmp     ax, 0x22                        ; 3D 22 00
        jne     L_1228                          ; 75 03
        jmp     L_1187                          ; E9 5F FF
L_1228:
        cmp     ax, 0x25                        ; 3D 25 00
        jne     L_1230                          ; 75 03
        jmp     L_115D                          ; E9 2D FF
L_1230:
        cmp     ax, 0x29                        ; 3D 29 00
        je      L_11FE                          ; 74 C9
        cmp     ax, 0x2a                        ; 3D 2A 00
        jne     L_123D                          ; 75 03
        jmp     L_11A5                          ; E9 68 FF
L_123D:
        mov     ax, 2                           ; B8 02 00
L_1240:
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0x1a], -1        ; 83 7E 1A FF
        je      L_12A2                          ; 74 56
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x1a]            ; F7 6E 1A
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bx]               ; 03 37
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfe                        ; 80 E1 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        cmp     word ptr [bp + 0x1c], 7         ; 83 7E 1C 07
        je      L_12A2                          ; 74 07
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        or      byte ptr [bx + 6], 2            ; 80 4F 06 02
L_12A2:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_12AE                          ; 74 05
        call    far _entry_39                   ; 9A 56 0E 00 00 [FIXUP]
L_12AE:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x18                            ; CA 18 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12BB -- offset 0x12BB -- 88 instr
; Funcion compleja: 88 instrucciones, 3 llamadas, 2 branches.
; tags: complex, far
; callers: sub_0EE4
; calls (intra): sub_0917, sub_1385, sub_1400
;----------------------------------------------------------------------
L_12BB:
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
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     si, ax                          ; 8B F0
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + si + 0x12], 0    ; C7 40 12 00 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _entry_263                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1400                          ; E8 F7 00
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bx + si + 4]          ; FF 70 04
        push    word ptr [bx + si + 2]          ; FF 70 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0917                          ; E8 E7 F5
        push    word ptr [0xf92]                ; FF 36 92 0F
        cmp     word ptr [bp + 0xe], -1         ; 83 7E 0E FF
        jne     L_133F                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1344                          ; EB 05
L_133F:
        mov     ax, di                          ; 8B C7
        add     ax, 0xc                         ; 05 0C 00
L_1344:
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1385                          ; E8 31 00
        push    word ptr [0xf92]                ; FF 36 92 0F
        cmp     word ptr [bp + 0xe], -1         ; 83 7E 0E FF
        jne     L_1363                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1368                          ; EB 05
L_1363:
        mov     ax, di                          ; 8B C7
        add     ax, 0x14                        ; 05 14 00
L_1368:
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        add     ax, 0x14                        ; 05 14 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1385                          ; E8 0D 00
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
; sub_1385 -- offset 0x1385 -- 55 instr
; Funcion mediana (55 instr, 1 calls).
; tags: calls_kernel, far, medium
; callers: sub_0EE4, sub_12BB
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_1385:
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_13B7                          ; 74 0F
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + di], 0           ; C7 01 00 00
L_13B7:
        or      si, si                          ; 0B F6
        jl      L_13F3                          ; 7C 38
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + si], 0           ; 83 38 00
        je      L_13F3                          ; 74 2E
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_13F3                          ; 74 20
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     bx, word ptr [bx + si]          ; 8B 18
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_62                   ; 9A B4 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + di], ax          ; 89 01
L_13F3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1400 -- offset 0x1400 -- 46 instr
; Funcion mediana (46 instr, 2 calls).
; tags: far, medium
; callers: sub_12BB
; calls (intra): sub_0E2E, sub_0EC1
;----------------------------------------------------------------------
L_1400:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
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
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EC1                          ; E8 96 FA
        or      ax, ax                          ; 0B C0
        je      L_1449                          ; 74 1A
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jg      L_1449                          ; 7F 0D
        jl      L_1444                          ; 7C 06
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jae     L_1449                          ; 73 05
L_1444:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E2E                          ; E8 E5 F9
L_1449:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1452 -- offset 0x1452 -- 80 instr
; Dispatcher: tabla de decisiones cmp+jcc (80 instr).
; tags: dispatcher
; callers: sub_0917
;----------------------------------------------------------------------
L_1452:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x130                       ; 81 EC 30 01
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jne     L_147C                          ; 75 03
        jmp     L_151C                          ; E9 A0 00
L_147C:
        mov     word ptr [bp - 0x12c], 0        ; C7 86 D4 FE 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_14DD                          ; EB 54
L_1489:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + si + 2]      ; 8B 58 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x12e], ax       ; 89 86 D2 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ax                              ; 50
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ax                              ; 50
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x130], ax       ; 89 86 D0 FE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x130], ax       ; 39 86 D0 FE
        je      L_14C7                          ; 74 04
        inc     word ptr [bp - 0x12c]           ; FF 86 D4 FE
L_14C7:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     al, byte ptr [bp - 0x130]       ; 8A 86 D0 FE
        mov     byte ptr [bp + si - 0x128], al  ; 88 82 D8 FE
        cmp     word ptr [bp - 0x130], 0xff     ; 81 BE D0 FE FF 00
        je      L_151C                          ; 74 42
        inc     word ptr [bp - 4]               ; FF 46 FC
L_14DD:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        ja      L_1489                          ; 77 9D
        cmp     word ptr [bp - 0x12c], 0        ; 83 BE D4 FE 00
        je      L_151C                          ; 74 29
        mov     byte ptr [bp - 0x12a], 0x26     ; C6 86 D6 FE 26
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x129], al       ; 88 86 D7 FE
        lea     ax, [bp - 0x12a]                ; 8D 86 D6 FE
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_224                  ; 9A FF FF 00 00 [FIXUP]
L_151C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ch                            ; 0C

WRITE_TEXT ENDS

        END
