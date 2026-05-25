; AUTO-GENERATED from original GDI segment 15
; segment_size=692 bytes, flags=0xf130
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
; POLYGON -- 45 instr
; Dibuja poligono.
; tags: far, medium
; calls (intra): sub_0054
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; POLYGON  (offset 0x0000, size 84 bytes)
;-----------------------------------------------------------------------
POLYGON PROC FAR
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      si, si                          ; 0B F6
        jne     L_001A                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0047                          ; EB 2D
L_001A:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_002F                          ; 7C 0B
        mov     ax, 0x324                       ; B8 24 03
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A 7B 01 00 00 [FIXUP]
        jmp     L_0047                          ; EB 18
L_002F:
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        push    si                              ; 56
        call    far _SEG1_3027                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0054                          ; E8 0D 00
L_0047:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
POLYGON ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0054 -- offset 0x0054 -- 104 instr
; Dispatcher: tabla de decisiones cmp+jcc (104 instr).
; tags: calls_kernel, dispatcher, far
; callers: POLYGON
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------

L_0054:
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        cmp     si, 2                           ; 83 FE 02
        jge     L_0071                          ; 7D 06
        mov     ax, 1                           ; B8 01 00
        jmp     L_0149                          ; E9 D8 00
L_0071:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x12                        ; 05 12 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_0091                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0149                          ; E9 B8 00
L_0091:
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     cx, si                          ; 8B CE
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        cmp     word ptr es:[bx - 4], ax        ; 26 39 47 FC
        jne     L_00D8                          ; 75 16
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     cx, si                          ; 8B CE
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        cmp     word ptr es:[bx - 2], ax        ; 26 39 47 FE
        jne     L_00D8                          ; 75 01
        dec     si                              ; 4E
L_00D8:
        sub     di, di                          ; 2B FF
        jmp     L_0103                          ; EB 27
L_00DC:
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        add     word ptr [bp - 0x1e], 2         ; 83 46 E2 02
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        add     word ptr [bp - 0x1e], 2         ; 83 46 E2 02
        mov     word ptr [bx], ax               ; 89 07
        inc     di                              ; 47
L_0103:
        cmp     di, si                          ; 3B FE
        jl      L_00DC                          ; 7C D5
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0120                          ; 75 11
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, 0xa                         ; 05 0A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    si                              ; 56
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
L_0120:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     word ptr [bx], si               ; 89 37
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    bx                              ; 53
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_389                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
L_0149:
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
; ELLIPSE -- 44 instr
; Dibuja elipse.
; tags: far, medium
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ELLIPSE  (offset 0x0156, size 91 bytes)
;-----------------------------------------------------------------------
ELLIPSE PROC FAR
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
        or      si, si                          ; 0B F6
        jne     L_016C                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01A5                          ; EB 39
L_016C:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_0181                          ; 7C 0B
        mov     ax, 0x418                       ; B8 18 04
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A D6 01 00 00 [FIXUP]
        jmp     L_01A5                          ; EB 24
L_0181:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_406                  ; 9A F4 01 00 00 [FIXUP]
L_01A5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
ELLIPSE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ROUNDRECT -- 40 instr
; Funcion mediana (40 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ROUNDRECT  (offset 0x01B1, size 83 bytes)
;-----------------------------------------------------------------------
ROUNDRECT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0x12]        ; 8B 76 12
        or      si, si                          ; 0B F6
        jne     L_01C7                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01F8                          ; EB 31
L_01C7:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_01DC                          ; 7C 0B
        mov     ax, 0x61c                       ; B8 1C 06
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A 29 02 00 00 [FIXUP]
        jmp     L_01F8                          ; EB 1C
L_01DC:
        push    si                              ; 56
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_406                  ; 9A FF FF 00 00 [FIXUP]
L_01F8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
ROUNDRECT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; PIE -- 41 instr
; Dibuja sector circular.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; PIE  (offset 0x0204, size 89 bytes)
;-----------------------------------------------------------------------
PIE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0x16]        ; 8B 76 16
        or      si, si                          ; 0B F6
        jne     L_021A                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0251                          ; EB 37
L_021A:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_022F                          ; 7C 0B
        mov     ax, 0x81a                       ; B8 1A 08
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A 82 02 00 00 [FIXUP]
        jmp     L_0251                          ; EB 22
L_022F:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_405                  ; 9A A5 02 00 00 [FIXUP]
L_0251:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
PIE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ARC -- 42 instr
; Dibuja arco.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ARC  (offset 0x025D, size 87 bytes)
;-----------------------------------------------------------------------
ARC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 0x16]        ; 8B 76 16
        or      si, si                          ; 0B F6
        jne     L_0273                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02A9                          ; EB 36
L_0273:
        mov     bx, si                          ; 8B DE
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_0288                          ; 7C 0B
        mov     ax, 0x817                       ; B8 17 08
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02A9                          ; EB 21
L_0288:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_405                  ; 9A FF FF 00 00 [FIXUP]
L_02A9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      012h                            ; 12
ARC ENDP


GDI_TEXT ENDS

        END
