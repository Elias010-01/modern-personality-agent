; AUTO-GENERATED from original GDI segment 21
; segment_size=660 bytes, flags=0xf130
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
; LINEDDA -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LINEDDA  (offset 0x0000, size 3 bytes)
;-----------------------------------------------------------------------
LINEDDA PROC FAR
        xor     dx, dx                          ; 33 D2
        mov     bx, 0x1b2                       ; BB B2 01
LINEDDA ENDP

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     cx, 1                           ; B9 01 00
        sub     ax, bx                          ; 2B C3
        jge     L_0025                          ; 7D 04
        neg     ax                              ; F7 D8
        neg     cx                              ; F7 D9
L_0025:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     cx, 1                           ; B9 01 00
        sub     ax, bx                          ; 2B C3
        jge     L_003F                          ; 7D 07
        neg     ax                              ; F7 D8
        neg     cx                              ; F7 D9
        jmp     L_00C5                          ; E9 86 00
L_003F:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     ax, bx                          ; 3B C3
        jl      L_008A                          ; 7C 3B
        mov     di, dx                          ; 8B FA
        mov     dx, ax                          ; 8B D0
        or      di, di                          ; 0B FF
        je      L_005B                          ; 74 04
        add     dx, dx                          ; 03 D2
        sub     dx, bx                          ; 2B D3
L_005B:
        sar     dx, 1                           ; D1 FA
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        jcxz    L_0087                          ; E3 1F
L_0068:
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     dx                              ; 5A
        pop     cx                              ; 59
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        sub     dx, word ptr [bp - 4]           ; 2B 56 FC
        jge     L_0085                          ; 7D 06
        add     dx, word ptr [bp - 8]           ; 03 56 F8
        add     si, word ptr [bp - 6]           ; 03 76 FA
L_0085:
        loop    L_0068                          ; E2 E1
L_0087:
        jmp     L_014A                          ; E9 C0 00
L_008A:
        mov     di, dx                          ; 8B FA
        mov     dx, bx                          ; 8B D3
        or      di, di                          ; 0B FF
        je      L_0096                          ; 74 04
        add     dx, dx                          ; 03 D2
        sub     dx, ax                          ; 2B D0
L_0096:
        sar     dx, 1                           ; D1 FA
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        jcxz    L_00C2                          ; E3 1F
L_00A3:
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     dx                              ; 5A
        pop     cx                              ; 59
        add     si, word ptr [bp - 6]           ; 03 76 FA
        sub     dx, word ptr [bp - 8]           ; 2B 56 F8
        jge     L_00C0                          ; 7D 06
        add     dx, word ptr [bp - 4]           ; 03 56 FC
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
L_00C0:
        loop    L_00A3                          ; E2 E1
L_00C2:
        jmp     L_014A                          ; E9 85 00
L_00C5:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     ax, bx                          ; 3B C3
        jl      L_0111                          ; 7C 3C
        mov     di, dx                          ; 8B FA
        mov     dx, ax                          ; 8B D0
        or      di, di                          ; 0B FF
        je      L_00E1                          ; 74 04
        add     dx, dx                          ; 03 D2
        sub     dx, bx                          ; 2B D3
L_00E1:
        inc     dx                              ; 42
        sar     dx, 1                           ; D1 FA
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        jcxz    L_010E                          ; E3 1F
L_00EF:
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     dx                              ; 5A
        pop     cx                              ; 59
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
        sub     dx, word ptr [bp - 4]           ; 2B 56 FC
        jg      L_010C                          ; 7F 06
        add     dx, word ptr [bp - 8]           ; 03 56 F8
        add     si, word ptr [bp - 6]           ; 03 76 FA
L_010C:
        loop    L_00EF                          ; E2 E1
L_010E:
        jmp     L_014A                          ; EB 3A
        nop                                     ; 90
L_0111:
        mov     di, dx                          ; 8B FA
        mov     dx, bx                          ; 8B D3
        or      di, di                          ; 0B FF
        je      L_011D                          ; 74 04
        add     dx, dx                          ; 03 D2
        sub     dx, ax                          ; 2B D0
L_011D:
        inc     dx                              ; 42
        sar     dx, 1                           ; D1 FA
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        jcxz    L_014A                          ; E3 1F
L_012B:
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     dx                              ; 5A
        pop     cx                              ; 59
        add     si, word ptr [bp - 6]           ; 03 76 FA
        sub     dx, word ptr [bp - 8]           ; 2B 56 F8
        jg      L_0148                          ; 7F 06
        add     dx, word ptr [bp - 4]           ; 03 56 FC
        add     di, word ptr [bp - 0xa]         ; 03 7E F6
L_0148:
        loop    L_012B                          ; E2 E1
L_014A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETPIXEL -- 78 instr
; Pone pixel de color en (x,y).
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SETPIXEL  (offset 0x0157, size 174 bytes)
;-----------------------------------------------------------------------
SETPIXEL PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0178                          ; 7C 07
        call    far _SEG1_3794                  ; 9A FF FF 00 00 [FIXUP]
        pop     ds                              ; 1F
        add     al, 0x8b                        ; 04 8B
        jle     L_0189                          ; 7E 0E
        or      di, di                          ; 0B FF
        je      L_01F7                          ; 74 78
        mov     si, word ptr [di]               ; 8B 35
        cld                                     ; FC
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
L_0189:
        mov     dx, di                          ; 8B D7
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     di, dx                          ; 8B FA
        mov     cx, 1                           ; B9 01 00
        xor     bx, bx                          ; 33 DB
        call    far _SEG1_335C                  ; 9A FF FF 00 00 [FIXUP]
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        push    word ptr [si + 0x2c]            ; FF 74 2C
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_1D0A                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01F7                          ; 74 47
        lea     cx, [bp - 6]                    ; 8D 4E FA
        push    ax                              ; 50
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     di, word ptr [si + 0x2a]        ; 8B 7C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ss                              ; 16
        push    cx                              ; 51
        lcall   [di + 4]                        ; FF 5D 04
        lea     cx, [si + 0x3c]                 ; 8D 4C 3C
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ds                              ; 1E
        push    cx                              ; 51
        lcall   [di + 0x20]                     ; FF 5D 20
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_01FB                          ; EB 04
L_01F7:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
L_01FB:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
SETPIXEL ENDP

        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETPIXEL -- 65 instr
; Lee color de pixel en (x,y).
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; GETPIXEL  (offset 0x0208, size 136 bytes)
;-----------------------------------------------------------------------
GETPIXEL PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        or      di, di                          ; 0B FF
        je      L_0284                          ; 74 66
        mov     si, word ptr [di]               ; 8B 35
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 6]                    ; 8D 7E FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        lea     di, [bp - 6]                    ; 8D 7E FA
        mov     cx, 1                           ; B9 01 00
        xor     bx, bx                          ; 33 DB
        call    far _SEG1_335C                  ; 9A 9B 01 00 00 [FIXUP]
        lea     di, [bp - 6]                    ; 8D 7E FA
        push    word ptr [si + 0x2c]            ; FF 74 2C
        push    ss                              ; 16
        push    di                              ; 57
        call    far _SEG1_1D0A                  ; 9A A8 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0284                          ; 74 37
        push    ax                              ; 50
        call    far _SEG1_1662                  ; 9A B5 01 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     di, word ptr [si + 0x2a]        ; 8B 7C 2A
        xor     dx, dx                          ; 33 D2
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    dx                              ; 52
        push    dx                              ; 52
        push    dx                              ; 52
        push    dx                              ; 52
        lcall   [di + 0x20]                     ; FF 5D 20
        xor     cx, cx                          ; 33 C9
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    dx                              ; 52
        push    ax                              ; 50
        push    cx                              ; 51
        push    cx                              ; 51
        lcall   [di + 4]                        ; FF 5D 04
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A EA 01 00 00 [FIXUP]
        pop     ax                              ; 58
        jmp     L_0288                          ; EB 04
L_0284:
        mov     ax, 0xffff                      ; B8 FF FF
        cdq                                     ; 99
L_0288:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
GETPIXEL ENDP

        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

GDI_TEXT ENDS

        END
