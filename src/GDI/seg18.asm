; AUTO-GENERATED from original GDI segment 18
; segment_size=6847 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 53 instr
; Funcion mediana (53 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [si]               ; 8B 04
        cmp     word ptr [si + 4], ax           ; 39 44 04
        jge     L_002C                          ; 7D 0A
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 4], di           ; 89 7C 04
L_002C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     word ptr [si], ax               ; 29 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr [si + 4], ax           ; 01 44 04
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr [si + 2], ax           ; 39 44 02
        jle     L_0053                          ; 7E 09
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     word ptr [si + 6], di           ; 89 7C 06
L_0053:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     word ptr [si + 2], ax           ; 29 44 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr [si + 6], ax           ; 01 44 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0072 -- offset 0x0072 -- 47 instr
; Dispatcher: tabla de decisiones cmp+jcc (47 instr).
; tags: dispatcher
; callers: sub_0399
;----------------------------------------------------------------------
L_0072:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0093                          ; 75 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jge     L_008E                          ; 7D 05
        mov     ax, 0x8001                      ; B8 01 80
        jmp     L_00AD                          ; EB 1F
L_008E:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_00AD                          ; EB 1A
L_0093:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A FF 00 00 00 [FIXUP]
L_00AD:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jle     L_00CC                          ; 7E 16
        mov     ax, 0x7fff                      ; B8 FF 7F
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jg      L_00C8                          ; 7F 05
L_00C3:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_00D9                          ; EB 11
L_00C8:
        mov     ax, si                          ; 8B C6
        jmp     L_00D9                          ; EB 0D
L_00CC:
        mov     ax, 0x8001                      ; B8 01 80
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jg      L_00C3                          ; 7F EA
L_00D9:
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00E6 -- offset 0x00E6 -- 31 instr
; Funcion mediana (31 instr, 0 calls).
; tags: medium
; callers: sub_0399
;----------------------------------------------------------------------
L_00E6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     ax, 0x8000                      ; 3D 00 80
        jne     L_010B                          ; 75 01
        inc     si                              ; 46
L_010B:
        or      si, si                          ; 0B F6
        jge     L_0115                          ; 7D 06
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
L_0115:
        cmp     si, 0x7bff                      ; 81 FE FF 7B
        jg      L_011F                          ; 7F 04
        mov     ax, si                          ; 8B C6
        jmp     L_0122                          ; EB 03
L_011F:
        mov     ax, 0x7bff                      ; B8 FF 7B
L_0122:
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_012C -- offset 0x012C -- 38 instr
; Funcion mediana (38 instr, 0 calls).
; tags: medium
; callers: sub_0399
;----------------------------------------------------------------------
L_012C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr [bp + 0xe], ax         ; 01 46 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        inc     ax                              ; 40
        sub     word ptr [bp + 8], ax           ; 29 46 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_016F                          ; 74 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_0174                          ; 75 05
L_016F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0176                          ; EB 02
L_0174:
        sub     ax, ax                          ; 2B C0
L_0176:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_017C -- offset 0x017C -- 137 instr
; Dispatcher: tabla de decisiones cmp+jcc (137 instr).
; tags: dispatcher
; callers: sub_0399
;----------------------------------------------------------------------
L_017C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     word ptr [bp + 0x1a], ax        ; 01 46 1A
        inc     ax                              ; 40
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        add     word ptr [bp + 0x18], ax        ; 01 46 18
        inc     ax                              ; 40
        sub     word ptr [bp + 0x14], ax        ; 29 46 14
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        je      L_01B9                          ; 74 03
        jmp     L_023C                          ; E9 83 00
L_01B9:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        je      L_01C7                          ; 74 06
        mov     word ptr [bp + 0x12], si        ; 89 76 12
        mov     word ptr [bp + 0x10], di        ; 89 7E 10
L_01C7:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        je      L_01D5                          ; 74 06
        mov     word ptr [bp + 0xe], si         ; 89 76 0E
        mov     word ptr [bp + 0xc], di         ; 89 7E 0C
L_01D5:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_01E2                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_01E5                          ; EB 03
L_01E2:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
L_01E5:
        cmp     ax, word ptr [bp + 0x1a]        ; 3B 46 1A
        jge     L_01EF                          ; 7D 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_01FF                          ; EB 10
L_01EF:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_01FC                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_01FF                          ; EB 03
L_01FC:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
L_01FF:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_0215                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_0218                          ; EB 03
L_0215:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
L_0218:
        cmp     ax, word ptr [bp + 0x16]        ; 3B 46 16
        jl      L_0222                          ; 7C 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0232                          ; EB 10
L_0222:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_022F                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_0232                          ; EB 03
L_022F:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
L_0232:
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_02BC                          ; E9 80 00
L_023C:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        je      L_024A                          ; 74 06
        mov     word ptr [bp + 0x12], si        ; 89 76 12
        mov     word ptr [bp + 0x10], di        ; 89 7E 10
L_024A:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        je      L_0258                          ; 74 06
        mov     word ptr [bp + 0xe], si         ; 89 76 0E
        mov     word ptr [bp + 0xc], di         ; 89 7E 0C
L_0258:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_026B                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_026E                          ; EB 03
L_026B:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_026E:
        cmp     ax, word ptr [bp + 0x18]        ; 3B 46 18
        jge     L_0278                          ; 7D 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_0288                          ; EB 10
L_0278:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_0285                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_0288                          ; EB 03
L_0285:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_0288:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_029E                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_02A1                          ; EB 03
L_029E:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_02A1:
        cmp     ax, word ptr [bp + 0x14]        ; 3B 46 14
        jl      L_02AB                          ; 7C 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_02BB                          ; EB 10
L_02AB:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_02B8                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_02BB                          ; EB 03
L_02B8:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
L_02BB:
        inc     ax                              ; 40
L_02BC:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x1a                            ; C2 1A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D8 -- offset 0x02D8 -- 73 instr
; Funcion mediana (73 instr, 0 calls).
; tags: medium
; callers: sub_0399
;----------------------------------------------------------------------
L_02D8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_02F0                          ; 7C 06
        inc     word ptr es:[bx + 0xe]          ; 26 FF 47 0E
        jmp     L_02F7                          ; EB 07
L_02F0:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        dec     word ptr es:[bx + 0xe]          ; 26 FF 4F 0E
L_02F7:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 4]           ; 03 46 04
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     si, ax                          ; 2B F0
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        sub     di, word ptr [bx + 2]           ; 2B 7F 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_034A                          ; 7C 15
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_036E                          ; EB 24
L_034A:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        mov     ax, di                          ; 8B C7
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
L_036E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], di        ; 26 89 7F 08
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        or      di, di                          ; 0B FF
        je      L_0391                          ; 74 12
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        idiv    di                              ; F7 FF
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        idiv    di                              ; F7 FF
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
L_0391:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0399 -- offset 0x0399 -- 1038 instr
; Iterador con instrucciones de string (movsb/scasb/...) (1038 instr).
; tags: calls_kernel, complex_iterator, far, string_op
; calls (intra): sub_0072, sub_00E6, sub_012C, sub_017C, sub_02D8, sub_0EA9 (+1 mas)
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0399:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     word ptr es:[bx], ax            ; 26 01 07
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        add     word ptr es:[bx + 6], ax        ; 26 01 47 06
        or      ax, ax                          ; 0B C0
        jl      L_03C5                          ; 7C 13
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jl      L_03DF                          ; 7C 23
        sub     word ptr es:[bx + 6], ax        ; 26 29 47 06
        inc     word ptr es:[bx]                ; 26 FF 07
        jmp     L_03DF                          ; EB 1A
L_03C5:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        neg     ax                              ; F7 D8
        cmp     ax, word ptr es:[bx + 6]        ; 26 3B 47 06
        jl      L_03DF                          ; 7C 0B
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     word ptr es:[bx + 6], ax        ; 26 01 47 06
        dec     word ptr es:[bx]                ; 26 FF 0F
L_03DF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc2                        ; 81 EC C2 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        je      L_0405                          ; 74 08
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jne     L_040B                          ; 75 06
L_0405:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E9C                          ; E9 91 0A
L_040B:
        mov     word ptr [bp - 0x72], 0         ; C7 46 8E 00 00
        sub     di, di                          ; 2B FF
        mov     word ptr [bp - 0xa6], di        ; 89 BE 5A FF
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        mov     si, word ptr [bx]               ; 8B 37
        mov     word ptr [bp - 0xe], 0xa6       ; C7 46 F2 A6 00
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, 0xa6                        ; B8 A6 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
        or      ax, ax                          ; 0B C0
        jne     L_044D                          ; 75 03
        jmp     L_0E93                          ; E9 46 0A
L_044D:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x98], ax        ; 89 86 68 FF
        add     ax, 0x1c                        ; 05 1C 00
        mov     word ptr [bp - 0x96], ax        ; 89 86 6A FF
        add     ax, 0x28                        ; 05 28 00
        mov     word ptr [bp - 0x94], ax        ; 89 86 6C FF
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        add     ax, 0x30                        ; 05 30 00
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        test    byte ptr [si + 8], 0x20         ; F6 44 08 20
        je      L_0486                          ; 74 08
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    far _SEG1_1A12                  ; 9A FF FF 00 00 [FIXUP]
L_0486:
        mov     bx, word ptr [si + 0x12]        ; 8B 5C 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        cmp     ax, 5                           ; 3D 05 00
        jne     L_04A5                          ; 75 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        jmp     L_04CF                          ; EB 2A
L_04A5:
        cmp     word ptr [si + 0x80], 1         ; 83 BC 80 00 01
        jle     L_04B2                          ; 7E 06
        mov     ax, word ptr [si + 0x80]        ; 8B 84 80 00
        jmp     L_04B5                          ; EB 03
L_04B2:
        mov     ax, 1                           ; B8 01 00
L_04B5:
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        cmp     word ptr [si + 0x82], 1         ; 83 BC 82 00 01
        jle     L_04C5                          ; 7E 06
        mov     ax, word ptr [si + 0x82]        ; 8B 84 82 00
        jmp     L_04C8                          ; EB 03
L_04C5:
        mov     ax, 1                           ; B8 01 00
L_04C8:
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        or      di, 0x10                        ; 81 CF 10 00
L_04CF:
        mov     bx, word ptr [si + 0x14]        ; 8B 5C 14
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, 1                           ; 3D 01 00
        je      L_0505                          ; 74 21
        or      di, 0x20                        ; 81 CF 20 00
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jne     L_0505                          ; 75 14
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0505                          ; 75 0F
        mov     word ptr [bp - 0xa6], 1         ; C7 86 5A FF 01 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_0505:
        mov     bx, word ptr [bp - 0x98]        ; 8B 9E 68 FF
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3D67                  ; 9A 81 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x98]        ; 8B 9E 68 FF
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3D67                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x98]        ; 8B 9E 68 FF
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    bx                              ; 53
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x70]            ; FF 76 90
        call    0                               ; E8 67 FA
        mov     bx, word ptr [bp - 0x98]        ; 8B 9E 68 FF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp + 0x14], ax        ; 89 46 14
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    si                              ; 56
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_408                  ; 9A FF FF 00 00 [FIXUP]
        or      di, ax                          ; 0B F8
        mov     word ptr [bp - 0x20], 2         ; C7 46 E0 02 00
        test    di, 0x20                        ; F7 C7 20 00
        je      L_0601                          ; 74 0A
        cmp     word ptr [bp + 0x18], 0         ; 83 7E 18 00
        je      L_0601                          ; 74 04
        or      byte ptr [bp - 0x20], 0x80      ; 80 4E E0 80
L_0601:
        test    di, 0x10                        ; F7 C7 10 00
        je      L_0621                          ; 74 1A
        cmp     word ptr [bp - 0x4c], 1         ; 83 7E B4 01
        jle     L_0611                          ; 7E 04
        or      byte ptr [bp - 0x20], 0x10      ; 80 4E E0 10
L_0611:
        cmp     word ptr [bp - 0x68], 5         ; 83 7E 98 05
        je      L_0621                          ; 74 0A
        cmp     word ptr [bp - 0x68], 0         ; 83 7E 98 00
        je      L_0621                          ; 74 04
        or      byte ptr [bp - 0x20], 0x20      ; 80 4E E0 20
L_0621:
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        and     ax, word ptr [bp - 0x20]        ; 23 46 E0
        cmp     ax, word ptr [bp - 0x20]        ; 3B 46 E0
        jne     L_066A                          ; 75 3B
        test    di, 2                           ; F7 C7 02 00
        je      L_066A                          ; 74 35
        mov     bx, word ptr [bp - 0x98]        ; 8B 9E 68 FF
        mov     word ptr [bx + 0x10], 0         ; C7 47 10 00 00
        mov     word ptr [bx + 0x12], 0         ; C7 47 12 00 00
        call    far _SEG1_1662                  ; 9A 15 07 00 00 [FIXUP]
        push    si                              ; 56
        cmp     word ptr [bp + 0x18], 0         ; 83 7E 18 00
        je      L_0654                          ; 74 05
        mov     ax, 0x17                        ; B8 17 00
        jmp     L_0657                          ; EB 03
L_0654:
        mov     ax, 3                           ; B8 03 00
L_0657:
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x98]        ; 8B 86 68 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_407                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E7D                          ; E9 13 08
L_066A:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x70]            ; FF 76 90
        call    L_012C                          ; E8 AD FA
        or      ax, ax                          ; 0B C0
        je      L_06B3                          ; 74 30
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x70]            ; FF 76 90
        call    L_017C                          ; E8 CF FA
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        jmp     L_0E87                          ; E9 D4 07
L_06B3:
        cmp     word ptr [bp - 0xa6], 0         ; 83 BE 5A FF 00
        je      L_0714                          ; 74 5A
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    far _entry_415                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        or      ax, ax                          ; 0B C0
        jne     L_06CF                          ; 75 03
        jmp     L_0E87                          ; E9 B8 07
L_06CF:
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_401                  ; 9A F3 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        jne     L_06EC                          ; 75 0B
        push    word ptr [bp - 0x38]            ; FF 76 C8
L_06E4:
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E87                          ; E9 9B 07
L_06EC:
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_401                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0710                          ; 75 12
        push    si                              ; 56
        push    word ptr [bp - 0x36]            ; FF 76 CA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        jmp     L_06E4                          ; EB D4
L_0710:
        or      di, 0x40                        ; 81 CF 40 00
L_0714:
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_0740                          ; 7E 1F
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        jmp     L_0745                          ; EB 05
L_0740:
        mov     word ptr [bp - 0x2a], 1         ; C7 46 D6 01 00
L_0745:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_076C                          ; 7E 1F
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        jmp     L_0771                          ; EB 05
L_076C:
        mov     word ptr [bp - 0x34], 1         ; C7 46 CC 01 00
L_0771:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0072                          ; E8 EF F8
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0072                          ; E8 D9 F8
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        push    ax                              ; 50
        call    L_0EA9                          ; E8 FF 06
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x70]            ; FF 76 90
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0xa2], ax        ; 39 86 5E FF
        jg      L_07C2                          ; 7F 06
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        jmp     L_07C5                          ; EB 03
L_07C2:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_07C5:
        push    ax                              ; 50
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_00E6                          ; E8 14 F9
        mov     word ptr [bp - 0xa0], ax        ; 89 86 60 FF
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x70]            ; FF 76 90
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0xa2], ax        ; 39 86 5E FF
        jle     L_07EB                          ; 7E 06
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        jmp     L_07EE                          ; EB 03
L_07EB:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_07EE:
        push    ax                              ; 50
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_00E6                          ; E8 EB F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp - 0x3e]        ; 8B 5E C2
        mov     word ptr [bx], 4                ; C7 07 04 00
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        push    bx                              ; 53
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_417                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0x14]        ; 2B 46 14
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0x12]        ; 2B 46 12
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        sub     ax, word ptr [bp - 0x4c]        ; 2B 46 B4
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        sub     ax, word ptr [bp - 0x70]        ; 2B 46 90
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp - 0x26]        ; 03 46 DA
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp - 0x26]        ; 2B 46 DA
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A BD 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A E8 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A F8 08 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x44]                 ; 8D 7E BC
        lea     si, [bp - 0x58]                 ; 8D 76 A8
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A 15 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 4F 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        mov     word ptr [bp - 0x76], dx        ; 89 56 8A
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A 41 09 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x52]                 ; 8D 7E AE
        lea     si, [bp - 0x78]                 ; 8D 76 88
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A 82 09 00 00 [FIXUP]
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x76]            ; FF 76 8A
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_17F3                  ; 9A D6 09 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xb6], ax        ; 89 86 4A FF
        mov     word ptr [bp - 0xb8], ax        ; 89 86 48 FF
        lea     ax, [bp - 0xb8]                 ; 8D 86 48 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A 62 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 90 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xb2], ax        ; 89 86 4E FF
        mov     word ptr [bp - 0xb0], dx        ; 89 96 50 FF
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A A0 09 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x90]                 ; 8D BE 70 FF
        lea     si, [bp - 0xb2]                 ; 8D B6 4E FF
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A BF 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_174F                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0xac]                 ; 8D BE 54 FF
        lea     si, [bp - 0x1a]                 ; 8D 76 E6
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17D0                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x80]        ; 8B 46 80
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_17F3                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
        jmp     L_0E30                          ; E9 4E 04
L_09E2:
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A FC 09 00 00 [FIXUP]
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A 41 0A 00 00 [FIXUP]
        jmp     L_0A27                          ; EB 25
L_0A02:
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A 1C 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A 64 0A 00 00 [FIXUP]
        dec     word ptr [bp - 0x4a]            ; FF 4E B6
        inc     word ptr [bp - 0x86]            ; FF 86 7A FF
L_0A27:
        cmp     word ptr [bp - 0x5a], 0         ; 83 7E A6 00
        jl      L_0A02                          ; 7C D5
        mov     ax, word ptr [bp - 0x70]        ; 8B 46 90
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jl      L_0A86                          ; 7C 51
        lea     ax, [bp - 0xb8]                 ; 8D 86 48 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A 51 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_17A0                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A7F                          ; EB 28
L_0A57:
        lea     ax, [bp - 0xb8]                 ; 8D 86 48 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A 75 0A 00 00 [FIXUP]
        lea     ax, [bp - 0xb2]                 ; 8D 86 4E FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1770                  ; 9A FF FF 00 00 [FIXUP]
        dec     word ptr [bp - 0x32]            ; FF 4E CE
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
L_0A7F:
        cmp     word ptr [bp - 0xb4], 0         ; 83 BE 4C FF 00
        jl      L_0A57                          ; 7C D1
L_0A86:
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        jle     L_0A9B                          ; 7E 0D
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
L_0A9B:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        inc     ax                              ; 40
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        jle     L_0AB2                          ; 7E 06
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        jmp     L_0AB5                          ; EB 03
L_0AB2:
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
L_0AB5:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        dec     ax                              ; 48
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        cmp     word ptr [bp - 0xbc], ax        ; 39 86 44 FF
        jge     L_0ACF                          ; 7D 04
        mov     ax, word ptr [bp - 0xbc]        ; 8B 86 44 FF
L_0ACF:
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     ax, word ptr [bp - 0x28]        ; 03 46 D8
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        dec     ax                              ; 48
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        mov     word ptr [bp - 0x9c], 0         ; C7 86 64 FF 00 00
        jmp     L_0B43                          ; EB 49
L_0AFA:
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        cmp     word ptr [bx + 0x10], ax        ; 39 47 10
        jg      L_0B3B                          ; 7F 35
        cmp     word ptr [bx + 0x12], ax        ; 39 47 12
        jle     L_0B3B                          ; 7E 30
        jmp     L_0B17                          ; EB 0A
L_0B0D:
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        call    L_02D8                          ; E8 C1 F7
L_0B17:
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bp - 0xa4]        ; 8B 86 5C FF
        cmp     word ptr [bx + 0x14], ax        ; 39 47 14
        jle     L_0B0D                          ; 7E EA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x3a]        ; 8B 5E C6
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0x94]        ; 03 9E 6C FF
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x66]        ; 8B 46 9A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_0399                          ; E8 5E F8
L_0B3B:
        add     word ptr [bp - 0x66], 0x18      ; 83 46 9A 18
        inc     word ptr [bp - 0x9c]            ; FF 86 64 FF
L_0B43:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jl      L_0AFA                          ; 7C AE
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jge     L_0B6F                          ; 7D 14
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        mov     word ptr [bx], ax               ; 89 07
L_0B6F:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, word ptr [bp - 0xba]        ; 2B 86 46 FF
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0xa0]        ; 8B 86 60 FF
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x7c], ax        ; 89 46 84
        mov     ax, word ptr [bp - 0xa0]        ; 8B 86 60 FF
        cdq                                     ; 99
        mov     cx, 2                           ; B9 02 00
        idiv    cx                              ; F7 F9
        add     dx, word ptr [bp - 0x7c]        ; 03 56 84
        mov     word ptr [bp - 0x84], dx        ; 89 96 7C FF
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     dx, word ptr [bp - 0x88]        ; 03 96 78 FF
        mov     word ptr [bp - 0x9a], dx        ; 89 96 66 FF
        mov     ax, word ptr [bp - 0x7c]        ; 8B 46 84
        sub     ax, 0x7fff                      ; 2D FF 7F
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        jle     L_0BE8                          ; 7E 06
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        jmp     L_0BEC                          ; EB 04
L_0BE8:
        mov     ax, word ptr [bp - 0xbc]        ; 8B 86 44 FF
L_0BEC:
        sub     ax, word ptr [bp - 0x7c]        ; 2B 46 84
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, 0x7fff                      ; B8 FF 7F
        sub     ax, word ptr [bp - 0x84]        ; 2B 86 7C FF
        mov     word ptr [bp - 0xbe], ax        ; 89 86 42 FF
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        jg      L_0C0A                          ; 7F 06
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        jmp     L_0C0E                          ; EB 04
L_0C0A:
        mov     ax, word ptr [bp - 0xbe]        ; 8B 86 42 FF
L_0C0E:
        add     ax, word ptr [bp - 0x84]        ; 03 86 7C FF
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        sub     ax, 0x7fff                      ; 2D FF 7F
        mov     word ptr [bp - 0xc0], ax        ; 89 86 40 FF
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_0C2F                          ; 7E 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_0C33                          ; EB 04
L_0C2F:
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
L_0C33:
        sub     ax, word ptr [bp - 0x88]        ; 2B 86 78 FF
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0x7fff                      ; B8 FF 7F
        sub     ax, word ptr [bp - 0x9a]        ; 2B 86 66 FF
        mov     word ptr [bp - 0xc2], ax        ; 89 86 3E FF
        mov     bx, word ptr [bp - 0x94]        ; 8B 9E 6C FF
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jg      L_0C53                          ; 7F 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_0C57                          ; EB 04
L_0C53:
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
L_0C57:
        add     ax, word ptr [bp - 0x9a]        ; 03 86 66 FF
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     word ptr [bp - 0x70], 4         ; 83 7E 90 04
        jge     L_0CB2                          ; 7D 4E
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 0x28]        ; 3B 46 D8
        jne     L_0CB2                          ; 75 45
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jge     L_0C8B                          ; 7D 15
        cmp     word ptr [bp - 0x9e], ax        ; 39 86 62 FF
        jle     L_0C82                          ; 7E 06
        mov     ax, word ptr [bp - 0x9e]        ; 8B 86 62 FF
        jmp     L_0C85                          ; EB 03
L_0C82:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_0C85:
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        jmp     L_0C92                          ; EB 07
L_0C8B:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
L_0C92:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jle     L_0CAC                          ; 7E 12
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0CA4                          ; 7D 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_0CA7                          ; EB 03
L_0CA4:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_0CA7:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0CB2                          ; EB 06
L_0CAC:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
L_0CB2:
        push    si                              ; 56
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x6e]            ; FF 76 92
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    L_0F13                          ; E8 2A 02
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        cmp     word ptr [bp - 0xa4], ax        ; 39 86 5C FF
        jne     L_0CF8                          ; 75 03
        jmp     L_0E1F                          ; E9 27 01
L_0CF8:
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xba], ax        ; 89 86 46 FF
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        sub     ax, 0x7fff                      ; 2D FF 7F
        mov     word ptr [bp - 0xbc], ax        ; 89 86 44 FF
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        jle     L_0D18                          ; 7E 06
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        jmp     L_0D1C                          ; EB 04
L_0D18:
        mov     ax, word ptr [bp - 0xbc]        ; 8B 86 44 FF
L_0D1C:
        sub     ax, word ptr [bp - 0x88]        ; 2B 86 78 FF
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, 0x7fff                      ; B8 FF 7F
        sub     ax, word ptr [bp - 0x9a]        ; 2B 86 66 FF
        mov     word ptr [bp - 0xbe], ax        ; 89 86 42 FF
        cmp     word ptr [bp - 0xba], ax        ; 39 86 46 FF
        jg      L_0D3B                          ; 7F 06
        mov     ax, word ptr [bp - 0xba]        ; 8B 86 46 FF
        jmp     L_0D3F                          ; EB 04
L_0D3B:
        mov     ax, word ptr [bp - 0xbe]        ; 8B 86 42 FF
L_0D3F:
        add     ax, word ptr [bp - 0x9a]        ; 03 86 66 FF
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     ax, word ptr [bp - 0x7c]        ; 8B 46 84
        sub     ax, 0x7fff                      ; 2D FF 7F
        mov     word ptr [bp - 0xc0], ax        ; 89 86 40 FF
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jle     L_0D5E                          ; 7E 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_0D62                          ; EB 04
L_0D5E:
        mov     ax, word ptr [bp - 0xc0]        ; 8B 86 40 FF
L_0D62:
        sub     ax, word ptr [bp - 0x7c]        ; 2B 46 84
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0x7fff                      ; B8 FF 7F
        sub     ax, word ptr [bp - 0x84]        ; 2B 86 7C FF
        mov     word ptr [bp - 0xc2], ax        ; 89 86 3E FF
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jg      L_0D80                          ; 7F 05
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_0D84                          ; EB 04
L_0D80:
        mov     ax, word ptr [bp - 0xc2]        ; 8B 86 3E FF
L_0D84:
        add     ax, word ptr [bp - 0x84]        ; 03 86 7C FF
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     word ptr [bp - 0x70], 4         ; 83 7E 90 04
        jge     L_0DE2                          ; 7D 51
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        sub     ax, word ptr [bp - 0xa4]        ; 2B 86 5C FF
        cmp     ax, 2                           ; 3D 02 00
        jg      L_0DE2                          ; 7F 45
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jge     L_0DBB                          ; 7D 15
        cmp     word ptr [bp - 0x9e], ax        ; 39 86 62 FF
        jle     L_0DB2                          ; 7E 06
        mov     ax, word ptr [bp - 0x9e]        ; 8B 86 62 FF
        jmp     L_0DB5                          ; EB 03
L_0DB2:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_0DB5:
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        jmp     L_0DC2                          ; EB 07
L_0DBB:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
L_0DC2:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jle     L_0DDC                          ; 7E 12
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0DD4                          ; 7D 05
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_0DD7                          ; EB 03
L_0DD4:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_0DD7:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0DE2                          ; EB 06
L_0DDC:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
L_0DE2:
        push    si                              ; 56
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp - 0x7e]            ; FF 76 82
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x6e]            ; FF 76 92
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        or      al, 0x80                        ; 0C 80
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0F13                          ; E8 F7 00
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
L_0E1F:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        mov     ax, word ptr [bp - 0x86]        ; 8B 86 7A FF
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        inc     word ptr [bp - 0x28]            ; FF 46 D8
L_0E30:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jge     L_0E3B                          ; 7D 03
        jmp     L_09E2                          ; E9 A7 FB
L_0E3B:
        cmp     word ptr [bp - 0xa6], 0         ; 83 BE 5A FF 00
        je      L_0E7D                          ; 74 3B
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far _SEG1_12B6                  ; 9A 71 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        push    word ptr [bp - 0x36]            ; FF 76 CA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A 66 0E 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far _entry_402                  ; 9A 07 07 00 00 [FIXUP]
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far _SEG1_1212                  ; 9A E5 06 00 00 [FIXUP]
L_0E7D:
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x72], 1         ; C7 46 8E 01 00
L_0E87:
        mov     bx, word ptr [bp - 0x64]        ; 8B 5E 9C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0E93:
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
L_0E9C:
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
; sub_0EA9 -- offset 0x0EA9 -- 47 instr
; Funcion mediana (47 instr, 0 calls).
; tags: medium
; callers: sub_0399
;----------------------------------------------------------------------
L_0EA9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0EC1                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0EC3                          ; EB 02
L_0EC1:
        sub     ax, ax                          ; 2B C0
L_0EC3:
        mov     di, ax                          ; 8B F8
        or      si, si                          ; 0B F6
        je      L_0EEB                          ; 74 22
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0EDD                          ; 74 0E
        or      di, di                          ; 0B FF
        je      L_0ED8                          ; 74 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0F0B                          ; EB 33
L_0ED8:
        mov     ax, 7                           ; B8 07 00
        jmp     L_0F0B                          ; EB 2E
L_0EDD:
        or      di, di                          ; 0B FF
        je      L_0EE6                          ; 74 05
        mov     ax, 0xe                         ; B8 0E 00
        jmp     L_0F0B                          ; EB 25
L_0EE6:
        mov     ax, 4                           ; B8 04 00
        jmp     L_0F0B                          ; EB 20
L_0EEB:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0EFF                          ; 74 0E
        or      di, di                          ; 0B FF
        je      L_0EFA                          ; 74 05
        mov     ax, 0xb                         ; B8 0B 00
        jmp     L_0F0B                          ; EB 11
L_0EFA:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F0B                          ; EB 0C
L_0EFF:
        or      di, di                          ; 0B FF
        je      L_0F08                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0F0B                          ; EB 03
L_0F08:
        mov     ax, 0xd                         ; B8 0D 00
L_0F0B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F13 -- offset 0x0F13 -- 558 instr
; Dispatcher: tabla de decisiones cmp+jcc (558 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0399
; calls (intra): sub_14CA
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0F13:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 0x24]        ; 8B 76 24
        cmp     word ptr [bp + 0x22], 7         ; 83 7E 22 07
        jle     L_0F5A                          ; 7E 37
        push    si                              ; 56
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
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
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_14CA                          ; E8 73 05
        jmp     L_14C3                          ; E9 69 05
L_0F5A:
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 3F 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0F6F                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_14C3                          ; E9 54 05
L_0F6F:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x10                        ; 25 10 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x20                        ; 25 20 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        cmp     ax, 1                           ; 3D 01 00
        je      L_0FB2                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0F9F                          ; 75 03
        jmp     L_1133                          ; E9 94 01
L_0F9F:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0FA7                          ; 75 03
        jmp     L_1194                          ; E9 ED 01
L_0FA7:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0FAF                          ; 75 03
        jmp     L_12FA                          ; E9 4B 03
L_0FAF:
        jmp     L_1121                          ; E9 6F 01
L_0FB2:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_1016                          ; 74 5E
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_0FC5                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0FC8                          ; EB 03
L_0FC5:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_0FC8:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_0FD2                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_0FE2                          ; EB 10
L_0FD2:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_0FDF                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0FE2                          ; EB 03
L_0FDF:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_0FE2:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1016                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A A3 10 00 00 [FIXUP]
L_1016:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_101F                          ; 75 03
        jmp     L_10A7                          ; E9 88 00
L_101F:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_102C                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_102F                          ; EB 03
L_102C:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_102F:
        cmp     ax, word ptr [bp + 0x14]        ; 3B 46 14
        jge     L_1039                          ; 7D 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_1049                          ; EB 10
L_1039:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_1046                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_1049                          ; EB 03
L_1046:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1049:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_105B                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_105E                          ; EB 03
L_105B:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_105E:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_1068                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1078                          ; EB 10
L_1068:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_1075                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_1078                          ; EB 03
L_1075:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1078:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_10A7                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 1D 11 00 00 [FIXUP]
L_10A7:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_10B4                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_10B7                          ; EB 03
L_10B4:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_10B7:
        cmp     ax, word ptr [bp + 0x1c]        ; 3B 46 1C
        jle     L_10CE                          ; 7E 12
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_10C9                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_10D1                          ; EB 08
L_10C9:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_10D1                          ; EB 03
L_10CE:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_10D1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_10E9                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_10EC                          ; EB 03
L_10E9:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_10EC:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1121                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
L_110C:
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 89 11 00 00 [FIXUP]
L_1121:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A 8F 0E 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        jmp     L_14C3                          ; E9 90 03
L_1133:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_118D                          ; 74 54
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_1146                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1149                          ; EB 03
L_1146:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_1149:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_115B                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_115E                          ; EB 03
L_115B:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_115E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_118D                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A F7 11 00 00 [FIXUP]
L_118D:
        mov     word ptr [bp + 0x22], 8         ; C7 46 22 08 00
        jmp     L_1121                          ; EB 8D
L_1194:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_11FB                          ; 74 61
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_11AF                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_11B2                          ; EB 03
L_11AF:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_11B2:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_11BC                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_11CC                          ; EB 10
L_11BC:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_11C9                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_11CC                          ; EB 03
L_11C9:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_11CC:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_11FB                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 74 12 00 00 [FIXUP]
L_11FB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_1210                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1213                          ; EB 03
L_1210:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1213:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_122C                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_122F                          ; EB 03
L_122C:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_122F:
        cmp     ax, word ptr [bp + 0x16]        ; 3B 46 16
        jg      L_1246                          ; 7F 12
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_1241                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_1249                          ; EB 08
L_1241:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_1249                          ; EB 03
L_1246:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1249:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1278                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 5F 13 00 00 [FIXUP]
L_1278:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_1281                          ; 75 03
        jmp     L_1121                          ; E9 A0 FE
L_1281:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_128E                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_1291                          ; EB 03
L_128E:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_1291:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_129B                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_12AB                          ; EB 10
L_129B:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_12A8                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_12AB                          ; EB 03
L_12A8:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_12AB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_12BD                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_12C0                          ; EB 03
L_12BD:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_12C0:
        cmp     ax, word ptr [bp + 0xe]         ; 3B 46 0E
        jl      L_12CA                          ; 7C 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_12DA                          ; EB 10
L_12CA:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_12D7                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_12DA                          ; EB 03
L_12D7:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_12DA:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_12E9                          ; 75 03
        jmp     L_1121                          ; E9 38 FE
L_12E9:
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_110C                          ; E9 12 FE
L_12FA:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_1363                          ; 74 63
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_1315                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1318                          ; EB 03
L_1315:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1318:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_132B                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_132E                          ; EB 03
L_132B:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_132E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1363                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A FF FF 00 00 [FIXUP]
L_1363:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_136C                          ; 75 03
        jmp     L_1420                          ; E9 B4 00
L_136C:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_1379                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_137C                          ; EB 03
L_1379:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_137C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_138E                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_1391                          ; EB 03
L_138E:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1391:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_139B                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_13AB                          ; EB 10
L_139B:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_13A8                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_13AB                          ; EB 03
L_13A8:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_13AB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_13BE                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_13C1                          ; EB 03
L_13BE:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_13C1:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_13CB                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_13DB                          ; EB 10
L_13CB:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_13D8                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_13DB                          ; EB 03
L_13D8:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_13DB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_13EE                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_13F1                          ; EB 03
L_13EE:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_13F1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1420                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A B7 14 00 00 [FIXUP]
L_1420:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_1435                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1438                          ; EB 03
L_1435:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1438:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_144B                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_144E                          ; EB 03
L_144B:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_144E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_146D                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_1470                          ; EB 03
L_146D:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1470:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_1483                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1486                          ; EB 03
L_1483:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_1486:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_14BB                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 83 15 00 00 [FIXUP]
L_14BB:
        mov     word ptr [bp + 0x22], 0xd       ; C7 46 22 0D 00
        jmp     L_1121                          ; E9 5E FC
L_14C3:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x22                            ; C2 22 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_14CA -- offset 0x14CA -- 594 instr
; Dispatcher: tabla de decisiones cmp+jcc (594 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0F13
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_14CA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x24]        ; 8B 76 24
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 5F 0F 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_14EA                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_1AB8                          ; E9 CE 05
L_14EA:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x10                        ; 25 10 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 0x20                        ; 25 20 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        cmp     ax, 8                           ; 3D 08 00
        je      L_152D                          ; 74 1B
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_151A                          ; 75 03
        jmp     L_16F5                          ; E9 DB 01
L_151A:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_1522                          ; 75 03
        jmp     L_1860                          ; E9 3E 03
L_1522:
        cmp     ax, 0xe                         ; 3D 0E 00
        jne     L_152A                          ; 75 03
        jmp     L_1974                          ; E9 4A 04
L_152A:
        jmp     L_16E3                          ; E9 B6 01
L_152D:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_1587                          ; 74 54
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_1540                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1543                          ; EB 03
L_1540:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1543:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_1555                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1558                          ; EB 03
L_1555:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_1558:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1587                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 5A 16 00 00 [FIXUP]
L_1587:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_1590                          ; 75 03
        jmp     L_165E                          ; E9 CE 00
L_1590:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_159D                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_15A0                          ; EB 03
L_159D:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_15A0:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_15AA                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_15BA                          ; EB 10
L_15AA:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_15B7                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_15BA                          ; EB 03
L_15B7:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_15BA:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_15CC                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_15CF                          ; EB 03
L_15CC:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_15CF:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_15D9                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_15E9                          ; EB 10
L_15D9:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_15E6                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_15E9                          ; EB 03
L_15E6:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_15E9:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jle     L_15FC                          ; 7E 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_15FF                          ; EB 03
L_15FC:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_15FF:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_1609                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1619                          ; EB 10
L_1609:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jle     L_1616                          ; 7E 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_1619                          ; EB 03
L_1616:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_1619:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_162C                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_162F                          ; EB 03
L_162C:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_162F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_165E                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A DA 16 00 00 [FIXUP]
L_165E:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_166B                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_166E                          ; EB 03
L_166B:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_166E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_1680                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1683                          ; EB 03
L_1680:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1683:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_1696                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1699                          ; EB 03
L_1696:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1699:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_16AC                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_16AF                          ; EB 03
L_16AC:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_16AF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_16DE                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 12 10 00 00 [FIXUP]
L_16DE:
        mov     word ptr [bp + 0x22], 2         ; C7 46 22 02 00
L_16E3:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        call    far KERNEL.LOCALFREE            ; 9A 29 11 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        jmp     L_1AB8                          ; E9 C3 03
L_16F5:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_1759                          ; 74 5E
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_1708                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_170B                          ; EB 03
L_1708:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_170B:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_1715                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1725                          ; EB 10
L_1715:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_1722                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_1725                          ; EB 03
L_1722:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1725:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_1759                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A C5 17 00 00 [FIXUP]
L_1759:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_1766                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_1769                          ; EB 03
L_1766:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1769:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_177B                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_177E                          ; EB 03
L_177B:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_177E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jle     L_1791                          ; 7E 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1794                          ; EB 03
L_1791:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1794:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_17C9                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 59 18 00 00 [FIXUP]
L_17C9:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_17D2                          ; 75 03
        jmp     L_16E3                          ; E9 11 FF
L_17D2:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_17DF                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_17E2                          ; EB 03
L_17DF:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_17E2:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_17EC                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_17FC                          ; EB 10
L_17EC:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x1c], ax        ; 39 46 1C
        jg      L_17F9                          ; 7F 05
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        jmp     L_17FC                          ; EB 03
L_17F9:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_17FC:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_180E                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_1811                          ; EB 03
L_180E:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1811:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_181B                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_182B                          ; EB 10
L_181B:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x1a], ax        ; 39 46 1A
        jg      L_1828                          ; 7F 05
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        jmp     L_182B                          ; EB 03
L_1828:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_182B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_183A                          ; 75 03
        jmp     L_16E3                          ; E9 A9 FE
L_183A:
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
L_1840:
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A C5 18 00 00 [FIXUP]
        jmp     L_16E3                          ; E9 83 FE
L_1860:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_18C9                          ; 74 63
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x10], ax        ; 39 46 10
        jg      L_187B                          ; 7F 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_187E                          ; EB 03
L_187B:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_187E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jle     L_1891                          ; 7E 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1894                          ; EB 03
L_1891:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1894:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_18C9                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 68 19 00 00 [FIXUP]
L_18C9:
        sub     di, di                          ; 2B FF
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx], ax               ; 89 07
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_1927                          ; 74 38
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        cmp     word ptr [bp + 0x14], ax        ; 39 46 14
        jle     L_18FC                          ; 7E 05
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        jmp     L_18FF                          ; EB 03
L_18FC:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
L_18FF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     cx, di                          ; 8B CF
        inc     di                              ; 47
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_1918                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_191B                          ; EB 03
L_1918:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_191B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     cx, di                          ; 8B CF
        inc     di                              ; 47
        shl     cx, 1                           ; D1 E1
        add     bx, cx                          ; 03 D9
        mov     word ptr [bx], ax               ; 89 07
L_1927:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bx], ax               ; 89 07
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_196C                          ; 74 21
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A D7 19 00 00 [FIXUP]
L_196C:
        mov     word ptr [bp + 0x22], 7         ; C7 46 22 07 00
        jmp     L_16E3                          ; E9 6F FD
L_1974:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_19DB                          ; 74 61
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_198F                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_1992                          ; EB 03
L_198F:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1992:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_199C                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_19AC                          ; EB 10
L_199C:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_19A9                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_19AC                          ; EB 03
L_19A9:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_19AC:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_19DB                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 8                           ; 0C 08
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 3A 1A 00 00 [FIXUP]
L_19DB:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0x12], ax        ; 39 46 12
        jg      L_19F0                          ; 7F 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_19F3                          ; EB 03
L_19F0:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_19F3:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jg      L_1A0C                          ; 7F 05
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        jmp     L_1A0F                          ; EB 03
L_1A0C:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
L_1A0F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 6], ax           ; 89 47 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1A3E                          ; 74 23
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_409                  ; 9A 1C 14 00 00 [FIXUP]
L_1A3E:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        jne     L_1A47                          ; 75 03
        jmp     L_16E3                          ; E9 9C FC
L_1A47:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_1A54                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_1A57                          ; EB 03
L_1A54:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1A57:
        cmp     ax, word ptr [bp + 0x12]        ; 3B 46 12
        jge     L_1A61                          ; 7D 05
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_1A71                          ; EB 10
L_1A61:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jle     L_1A6E                          ; 7E 05
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        jmp     L_1A71                          ; EB 03
L_1A6E:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
L_1A71:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_1A83                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_1A86                          ; EB 03
L_1A83:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1A86:
        cmp     ax, word ptr [bp + 0x10]        ; 3B 46 10
        jl      L_1A90                          ; 7C 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        jmp     L_1AA0                          ; EB 10
L_1A90:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp + 0x16], ax        ; 39 46 16
        jle     L_1A9D                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_1AA0                          ; EB 03
L_1A9D:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
L_1AA0:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_1AAF                          ; 75 03
        jmp     L_16E3                          ; E9 34 FC
L_1AAF:
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      al, 4                           ; 0C 04
        jmp     L_1840                          ; E9 88 FD
L_1AB8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      022h                            ; 22

GDI_TEXT ENDS

        END
