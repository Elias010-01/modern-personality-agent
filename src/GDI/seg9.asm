; AUTO-GENERATED from original GDI segment 9
; segment_size=1662 bytes, flags=0xf130
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
; SETTEXTCHARACTEREXTRA -- 49 instr
; Setter: cambia textcharacterextra.
; tags: far, iterator, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETTEXTCHARACTEREXTRA  (offset 0x0000, size 113 bytes)
;-----------------------------------------------------------------------
SETTEXTCHARACTEREXTRA PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0021                          ; 7C 07
        call    far _SEG1_3718                  ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [bx + di], al          ; 08 01
L_0021:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        or      si, si                          ; 0B F6
        je      L_0071                          ; 74 46
        mov     si, word ptr [si]               ; 8B 34
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [si + 0x52]            ; FF 74 52
        call    far _entry_376                  ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        mov     cx, 2                           ; B9 02 00
        mov     bx, 1                           ; BB 01 00
        call    far _SEG1_335C                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [si + 0x52], ax        ; 89 44 52
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
SETTEXTCHARACTEREXTRA ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0071 -- offset 0x0071 -- 8 instr
; Funcion hoja (no llama a otras, 8 instr): probable helper aritmetico/conversion.
; tags: far, leaf
;----------------------------------------------------------------------

L_0071:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETTEXTCHARACTEREXTRA -- 24 instr
; Getter: devuelve textcharacterextra.
; tags: far, small
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; GETTEXTCHARACTEREXTRA  (offset 0x007E, size 49 bytes)
;-----------------------------------------------------------------------
GETTEXTCHARACTEREXTRA PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xffff                      ; B8 FF FF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, bx                          ; 0B DB
        je      L_00A4                          ; 74 12
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bx + 0x52]            ; FF 77 52
        call    far _entry_376                  ; 9A 34 00 00 00 [FIXUP]
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
L_00A4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETTEXTCHARACTEREXTRA ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETTEXTJUSTIFICATION -- 61 instr
; Setter: cambia textjustification.
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETTEXTJUSTIFICATION  (offset 0x00AF, size 127 bytes)
;-----------------------------------------------------------------------
SETTEXTJUSTIFICATION PROC FAR
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_00D0                          ; 7C 07
        call    far _SEG1_3718                  ; 9A 1B 00 00 00 [FIXUP]
        or      al, byte ptr [bp + si]          ; 0A 02
L_00D0:
        xor     ax, ax                          ; 33 C0
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        or      si, si                          ; 0B F6
        je      L_013C                          ; 74 63
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_012D                          ; 74 4A
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        mov     cx, 2                           ; B9 02 00
        mov     bx, 1                           ; BB 01 00
        call    far _SEG1_335C                  ; 9A 5C 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        lea     di, [si + 0x48]                 ; 8D 7C 48
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        stosw   word ptr es:[di], ax            ; AB
        cdq                                     ; 99
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        idiv    cx                              ; F7 F9
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0139                          ; EB 0C
L_012D:
        mov     cx, ds                          ; 8C D9
SETTEXTJUSTIFICATION ENDP

        mov     es, cx                          ; 8E C1
        lea     di, [si + 0x48]                 ; 8D 7C 48
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
L_0139:
        mov     ax, 1                           ; B8 01 00
L_013C:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETMAPPERFLAGS -- 15 instr
; Setter: cambia mapperflags.
; tags: far, leaf
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SETMAPPERFLAGS  (offset 0x0149, size 24 bytes)
;-----------------------------------------------------------------------
SETMAPPERFLAGS PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETMAPPERFLAGS ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x46                        ; 83 EC 46
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, word ptr [bx]               ; 8B 37
        test    word ptr [bp + 0xa], 0x200      ; F7 46 0A 00 02
        je      L_018B                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_018D                          ; EB 02
L_018B:
        sub     ax, ax                          ; 2B C0
L_018D:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        test    word ptr [bp + 0xa], 0x400      ; F7 46 0A 00 04
        je      L_019C                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_019E                          ; EB 02
L_019C:
        sub     ax, ax                          ; 2B C0
L_019E:
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        test    word ptr [bp + 0xa], 0x800      ; F7 46 0A 00 08
        je      L_01AD                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01AF                          ; EB 02
L_01AD:
        sub     ax, ax                          ; 2B C0
L_01AF:
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        test    word ptr [bp + 0xa], 0x1000     ; F7 46 0A 00 10
        je      L_01BE                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01C0                          ; EB 02
L_01BE:
        sub     ax, ax                          ; 2B C0
L_01C0:
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_01CC                          ; 74 03
        inc     word ptr [si + 0x52]            ; FF 44 52
L_01CC:
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_286C                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     cl, byte ptr [si + 0x9c]        ; 8A 8C 9C 00
        sar     ax, cl                          ; D3 F8
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, dx                          ; 8B C2
        mov     cl, byte ptr [si + 0x9e]        ; 8A 8C 9E 00
        sar     ax, cl                          ; D3 F8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cmp     word ptr es:[bx + 0xc], ax      ; 26 39 47 0C
        jne     L_0215                          ; 75 0B
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0215                          ; 74 05
        mov     word ptr [bp - 0x2c], 0         ; C7 46 D4 00 00
L_0215:
        mov     ax, word ptr [si + 0x3e]        ; 8B 44 3E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_0231                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0231                          ; 75 0B
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        je      L_0231                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0233                          ; EB 02
L_0231:
        sub     ax, ax                          ; 2B C0
L_0233:
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        jne     L_0246                          ; 75 0C
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        jne     L_0246                          ; 75 06
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_0251                          ; 74 0B
L_0246:
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        je      L_0251                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0253                          ; EB 02
L_0251:
        sub     ax, ax                          ; 2B C0
L_0253:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_029B                          ; 74 41
        cmp     word ptr [bp - 0x44], 0         ; 83 7E BC 00
        je      L_028C                          ; 74 2C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [si + 0x56]            ; FF 74 56
        push    word ptr [si + 0x54]            ; FF 74 54
        call    far _SEG1_0894                  ; 9A 8F 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        jne     L_0279                          ; 75 03
        jmp     L_0666                          ; E9 ED 03
L_0279:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A 44 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        jne     L_028C                          ; 75 03
        jmp     L_065E                          ; E9 D2 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_028C -- offset 0x028C -- 384 instr
; Dispatcher: tabla de decisiones cmp+jcc (384 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_028C:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _SEG1_3115                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
L_029B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        jmp     L_042E                          ; E9 79 01
L_02B5:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        je      L_02C2                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02C4                          ; EB 02
L_02C2:
        sub     ax, ax                          ; 2B C0
L_02C4:
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        or      ax, ax                          ; 0B C0
        je      L_02D0                          ; 74 05
        mov     word ptr [si + 0x3e], 1         ; C7 44 3E 01 00
L_02D0:
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        je      L_02E7                          ; 74 11
        cmp     word ptr [bp - 0xc], 2          ; 83 7E F4 02
        jne     L_02E7                          ; 75 0B
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        je      L_02E7                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02E9                          ; EB 02
L_02E7:
        sub     ax, ax                          ; 2B C0
L_02E9:
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_02F5                          ; 75 03
        jmp     L_03B1                          ; E9 BC 00
L_02F5:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_02FA:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0305                          ; 7C 03
        jmp     L_041F                          ; E9 1A 01
L_0305:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_0354                          ; 74 49
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jle     L_0322                          ; 7E 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0325                          ; EB 03
L_0322:
        mov     ax, 1                           ; B8 01 00
L_0325:
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A D9 03 00 00 [FIXUP]
L_0354:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [si + 0x2c]        ; 8B 5C 2C
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        add     ax, word ptr [bp - 0x2a]        ; 03 46 D6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        push    word ptr [si + 0x2c]            ; FF 74 2C
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _SEG1_2631           ; B8 0E 04 [FIXUP]
        mov     dx, OFFSET _SEG1_2631           ; BA 11 04 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        push    es                              ; 06
        push    bx                              ; 53
        push    si                              ; 56
        call    far _SEG1_1E37                  ; 9A 1B 04 00 00 [FIXUP]
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        jmp     L_02FA                          ; E9 49 FF
L_03B1:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_03DD                          ; 74 26
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        add     ax, word ptr [bp - 0x34]        ; 03 46 CC
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
L_03DD:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, word ptr [si + 0x2c]        ; 8B 5C 2C
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        add     ax, word ptr [bp - 0x2a]        ; 03 46 D6
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        push    word ptr [si + 0x2c]            ; FF 74 2C
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _SEG1_2631           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_2631           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        push    es                              ; 06
        push    bx                              ; 53
        push    si                              ; 56
        call    far _SEG1_1E37                  ; 9A FF FF 00 00 [FIXUP]
L_041F:
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        je      L_042B                          ; 74 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [si + 0x3e], ax        ; 89 44 3E
L_042B:
        dec     word ptr [bp - 0x2a]            ; FF 4E D6
L_042E:
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        jl      L_0437                          ; 7C 03
        jmp     L_02B5                          ; E9 7E FE
L_0437:
        cmp     word ptr [bp - 0x36], 0         ; 83 7E CA 00
        je      L_0455                          ; 74 18
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far _SEG1_12B6                  ; 9A A2 04 00 00 [FIXUP]
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
L_0455:
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        jne     L_0464                          ; 75 09
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jne     L_0464                          ; 75 03
        jmp     L_063C                          ; E9 D8 01
L_0464:
        cmp     word ptr [bp - 0x2c], 0         ; 83 7E D4 00
        jne     L_046D                          ; 75 03
        jmp     L_063C                          ; E9 CF 01
L_046D:
        cmp     word ptr [bp - 0x34], 0xc       ; 83 7E CC 0C
        jle     L_047E                          ; 7E 0B
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        cdq                                     ; 99
        mov     cx, 0xc                         ; B9 0C 00
        idiv    cx                              ; F7 F9
        jmp     L_0481                          ; EB 03
L_047E:
        mov     ax, 1                           ; B8 01 00
L_0481:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [si + 0x5a]            ; FF 74 5A
        push    word ptr [si + 0x58]            ; FF 74 58
        call    far _SEG1_0894                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        jne     L_049D                          ; 75 03
        jmp     L_0666                          ; E9 C9 01
L_049D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        jne     L_04B0                          ; 75 03
        jmp     L_065E                          ; E9 AE 01
L_04B0:
        les     bx, ptr [si + 0x34]             ; C4 5C 34
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     bx, word ptr [si + 0x32]        ; 8B 5C 32
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [si + 0x34]        ; 8B 5C 34
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     cl, byte ptr [si + 0x9e]        ; 8A 8C 9E 00
        sar     ax, cl                          ; D3 F8
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        cmp     word ptr [bp - 0x46], 0         ; 83 7E BA 00
        jne     L_04DD                          ; 75 03
        jmp     L_0582                          ; E9 A5 00
L_04DD:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 0x34]        ; 3B 46 CC
        jg      L_04FB                          ; 7F 08
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        add     ax, di                          ; 03 C7
        inc     ax                              ; 40
        jmp     L_050B                          ; EB 10
L_04FB:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, cx                          ; 2B C1
L_050B:
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        sub     ax, di                          ; 2B C7
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0519:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jle     L_0582                          ; 7E 55
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_0545                          ; 75 02
        sub     ax, ax                          ; 2B C0
L_0545:
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_0555                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_0557                          ; EB 02
L_0555:
        sub     ax, ax                          ; 2B C0
L_0557:
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        add     ax, word ptr [bp - 0x2c]        ; 03 46 D4
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A 33 06 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0519                          ; EB 97
L_0582:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jne     L_058B                          ; 75 03
        jmp     L_063C                          ; E9 B1 00
L_058B:
        les     bx, ptr [si + 0x34]             ; C4 5C 34
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        mov     bx, word ptr [si + 0x32]        ; 8B 5C 32
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [si + 0x34]        ; 8B 5C 34
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        call    far _SEG1_2D82                  ; 9A C4 04 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     cl, byte ptr [si + 0x9e]        ; 8A 8C 9E 00
        sar     ax, cl                          ; D3 F8
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0x42]        ; 8B 4E BE
        sub     cx, ax                          ; 2B C8
        add     cx, word ptr [bp - 0x3a]        ; 03 4E C6
        mov     word ptr [bp - 6], cx           ; 89 4E FA
L_05D3:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jle     L_063C                          ; 7E 55
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_05FF                          ; 75 02
        sub     ax, ax                          ; 2B C0
L_05FF:
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_060F                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_0611                          ; EB 02
L_060F:
        sub     ax, ax                          ; 2B C0
L_0611:
        add     ax, word ptr [bp - 0x3e]        ; 03 46 C2
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        add     ax, word ptr [bp - 0x2c]        ; 03 46 D4
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A 50 03 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_05D3                          ; EB 97
L_063C:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0666                          ; 74 24
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x28]            ; FF 76 D8
        call    far _SEG1_3115                  ; 9A 94 02 00 00 [FIXUP]
        cmp     word ptr [bp - 0x36], 0         ; 83 7E CA 00
        je      L_0666                          ; 74 13
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far _SEG1_12B6                  ; 9A 7E 02 00 00 [FIXUP]
L_065E:
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    far _SEG1_1212                  ; 9A 4C 04 00 00 [FIXUP]
L_0666:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_066F                          ; 74 03
        dec     word ptr [si + 0x52]            ; FF 4C 52
L_066F:
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

GDI_TEXT ENDS

        END
