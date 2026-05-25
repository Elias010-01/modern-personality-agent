; AUTO-GENERATED from original GDI segment 12
; segment_size=2296 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 136 instr
; Dispatcher: tabla de decisiones cmp+jcc (136 instr).
; tags: dispatcher
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [si]               ; 8B 3C
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, di                          ; 3B C7
        jg      L_001A                          ; 7F 03
        jmp     L_0148                          ; E9 2E 01
L_001A:
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     ax, di                          ; 03 C7
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jl      L_0038                          ; 7C 03
        jmp     L_0148                          ; E9 10 01
L_0038:
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        cmp     ax, word ptr [bx + 0xa]         ; 3B 47 0A
        je      L_0052                          ; 74 03
        jmp     L_0148                          ; E9 F6 00
L_0052:
        cmp     word ptr [bx + 8], di           ; 39 7F 08
        jl      L_005C                          ; 7C 05
        sub     ax, ax                          ; 2B C0
        jmp     L_014D                          ; E9 F1 00
L_005C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0092                          ; EB 23
L_006F:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     dx, word ptr [bx + si + 0xa]    ; 8B 50 0A
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + si + 8], ax      ; 89 40 08
        mov     word ptr [bx + si + 0xa], dx    ; 89 50 0A
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0092:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + si + 8], ax      ; 39 40 08
        jg      L_006F                          ; 7F CE
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     ax, word ptr [bx + si + 8]      ; 03 40 08
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     ax                              ; 48
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0124                          ; EB 51
L_00D3:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jl      L_00FC                          ; 7C 23
        cmp     word ptr [bp - 0x12], di        ; 39 7E EE
        jne     L_00E6                          ; 75 08
L_00DE:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_0102                          ; EB 1C
L_00E6:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 0xa]    ; 8B 40 0A
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + si + 0xa], ax    ; 39 40 0A
        jg      L_00DE                          ; 7F E2
L_00FC:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        dec     word ptr [bp - 0x12]            ; FF 4E EE
L_0102:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     dx, word ptr [bx + si + 0xa]    ; 8B 50 0A
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        dec     word ptr [bp - 6]               ; FF 4E FA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + si + 8], ax      ; 89 40 08
        mov     word ptr [bx + si + 0xa], dx    ; 89 50 0A
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0124:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_00D3                          ; 7C A7
        mov     di, word ptr [bp - 6]           ; 8B 7E FA
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
L_0148:
        mov     word ptr [si], di               ; 89 3C
        mov     ax, 1                           ; B8 01 00
L_014D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0155 -- offset 0x0155 -- 91 instr
; Dispatcher: tabla de decisiones cmp+jcc (91 instr).
; tags: dispatcher
; callers: FLOODFILL
; calls (intra): sub_0649
;----------------------------------------------------------------------
L_0155:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [si]               ; 8B 3C
        jmp     L_0167                          ; EB 03
L_0164:
        inc     word ptr [bp + 4]               ; FF 46 04
L_0167:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0649                          ; E8 CF 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_0164                          ; 74 E2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0649                          ; E8 B6 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_01A3                          ; 7E 08
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_01D7                          ; EB 34
L_01A3:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        inc     ax                              ; 40
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0649                          ; E8 94 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0649                          ; E8 80 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_01DC                          ; 7D 0B
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_01D7:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0167                          ; EB 8B
L_01DC:
        cmp     di, 2                           ; 83 FF 02
        jle     L_021C                          ; 7E 3B
        dec     di                              ; 4F
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        dec     di                              ; 4F
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 8], 1            ; C7 47 08 01 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [si], di               ; 89 3C
        mov     ax, 1                           ; B8 01 00
        jmp     L_021E                          ; EB 02
L_021C:
        sub     ax, ax                          ; 2B C0
L_021E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0226 -- offset 0x0226 -- 279 instr
; Dispatcher: tabla de decisiones cmp+jcc (279 instr).
; tags: dispatcher
; callers: FLOODFILL
; calls (intra): sub_0649
;----------------------------------------------------------------------
L_0226:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        inc     di                              ; 47
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_025F:
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jge     L_0267                          ; 7D 03
        jmp     L_0380                          ; E9 19 01
L_0267:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0649                          ; E8 C7 03
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        cmp     ax, 2                           ; 3D 02 00
        jle     L_02C0                          ; 7E 30
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0649                          ; E8 A4 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_02C0                          ; 7E 10
L_02B0:
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, ax                          ; 2B C0
        add     ax, ax                          ; 03 C0
        adc     dx, 1                           ; 83 D2 01
        or      ax, word ptr [bp - 0x14]        ; 0B 46 EC
        jmp     L_04C0                          ; E9 00 02
L_02C0:
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 0xa]    ; 8B 40 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0649                          ; E8 6D 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jge     L_02EF                          ; 7D 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
L_02EF:
        cmp     ax, 1                           ; 3D 01 00
        jle     L_034E                          ; 7E 5A
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0649                          ; E8 43 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_0327                          ; 7D 16
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jle     L_02B0                          ; 7E 9A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     bx, di                          ; 8B DF
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + si + 0xc], ax    ; 39 40 0C
        jg      L_02B0                          ; 7F 8C
        inc     di                              ; 47
        jmp     L_02C0                          ; EB 99
L_0327:
        inc     di                              ; 47
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        jl      L_034E                          ; 7C 21
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jg      L_034D                          ; 7F 0B
        inc     ax                              ; 40
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jle     L_034B                          ; 7E 03
        jmp     L_02C0                          ; E9 75 FF
L_034B:
        jmp     L_0327                          ; EB DA
L_034D:
        dec     di                              ; 4F
L_034E:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_037A                          ; 7D 24
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        inc     di                              ; 47
        jmp     L_025F                          ; E9 E5 FE
L_037A:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_04BF                          ; E9 3F 01
L_0380:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        inc     ax                              ; 40
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        jmp     L_0480                          ; E9 EF 00
L_0391:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_03B3                          ; 7C 03
        jmp     L_0480                          ; E9 CD 00
L_03B3:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0649                          ; E8 86 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        dec     cx                              ; 49
        cmp     ax, cx                          ; 3B C1
        jge     L_03D2                          ; 7D 04
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_03D2:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0649                          ; E8 67 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        jle     L_03ED                          ; 7E 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
L_03ED:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_03F8                          ; 7C 03
        jmp     L_0480                          ; E9 88 00
L_03F8:
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0649                          ; E8 41 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_043E                          ; 7D 2B
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_041C                          ; 7F 03
        jmp     L_037A                          ; E9 5E FF
L_041C:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_0480                          ; EB 42
L_043E:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_0447                          ; 7F 03
        jmp     L_037A                          ; E9 33 FF
L_0447:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0649                          ; E8 D3 01
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_03ED                          ; E9 6D FF
L_0480:
        dec     word ptr [bp - 0x12]            ; FF 4E EE
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jl      L_048C                          ; 7C 03
        jmp     L_0391                          ; E9 05 FF
L_048C:
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        je      L_04B8                          ; 74 26
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_049B                          ; 7F 03
        jmp     L_037A                          ; E9 DF FE
L_049B:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
L_04B8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [si], ax               ; 89 04
        sub     ax, ax                          ; 2B C0
L_04BF:
        cdq                                     ; 99
L_04C0:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; FLOODFILL -- 123 instr
; Rellena area con brush actual.
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0155, sub_0226, sub_05F5, sub_0649
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; FLOODFILL  (offset 0x04C8, size 301 bytes)
;-----------------------------------------------------------------------
FLOODFILL PROC FAR
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
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jne     L_04E5                          ; 75 03
        jmp     L_05E5                          ; E9 00 01
L_04E5:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_04FC                          ; 7C 0C
        mov     ax, 0x419                       ; B8 19 04
        push    ax                              ; 50
        call    far _SEG1_36B8                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05E8                          ; E9 EC 00
L_04FC:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_3308                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x808                       ; B8 08 08
        push    ax                              ; 50
        call    far _SEG1_15EF                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_052B                          ; 75 03
        jmp     L_05E5                          ; E9 BA 00
L_052B:
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x200                       ; B8 00 02
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 2], 1            ; 83 7F 02 01
        je      L_0550                          ; 74 03
        jmp     L_05DA                          ; E9 8A 00
L_0550:
        test    byte ptr [bx + 0x26], 2         ; F6 47 26 02
        je      L_055C                          ; 74 06
        test    byte ptr [si + 8], 1            ; F6 44 08 01
        je      L_05DA                          ; 74 7E
L_055C:
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [di + 4]                    ; 8D 45 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 4]                        ; FF 5F 04
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0649                          ; E8 C7 00
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        je      L_05DA                          ; 74 53
L_0587:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0155                          ; E8 C3 FB
        or      ax, ax                          ; 0B C0
        je      L_05DA                          ; 74 44
L_0596:
        push    si                              ; 56
        push    di                              ; 57
        call    L_05F5                          ; E8 5A 00
        push    di                              ; 57
        call    0                               ; E8 61 FA
        or      ax, ax                          ; 0B C0
        je      L_05DA                          ; 74 37
        push    si                              ; 56
        push    di                              ; 57
        call    L_0226                          ; E8 7E FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     dx, -1                          ; 83 FA FF
        jne     L_05B8                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_05DA                          ; 74 22
L_05B8:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        or      ax, word ptr [bp - 0x12]        ; 0B 46 EE
        je      L_05CE                          ; 74 0E
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_0587                          ; EB B9
L_05CE:
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [di + 2], ax           ; 39 45 02
        jg      L_0596                          ; 7F C1
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
L_05DA:
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_05E5:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
L_05E8:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
FLOODFILL ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05F5 -- offset 0x05F5 -- 44 instr
; Funcion mediana (44 instr, 0 calls).
; tags: medium
; callers: FLOODFILL
;----------------------------------------------------------------------

L_05F5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        lea     ax, [bx + di + 8]               ; 8D 41 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
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
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0649 -- offset 0x0649 -- 132 instr
; Iterador con instrucciones de string (movsb/scasb/...) (132 instr).
; tags: complex_iterator, string_op
; callers: FLOODFILL, sub_0155, sub_0226
; calls (intra): sub_07A3, sub_0829
;----------------------------------------------------------------------
L_0649:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 0x2c]        ; 8B 47 2C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_06CF                          ; 74 5F
        mov     di, bx                          ; 8B FB
        add     di, 0x14                        ; 83 C7 14
        jmp     L_06C5                          ; EB 4E
L_0677:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [di + 2], ax           ; 39 45 02
        jg      L_06BC                          ; 7F 3D
        cmp     word ptr [di + 4], ax           ; 39 45 04
        jle     L_06BC                          ; 7E 38
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        mov     si, di                          ; 8B F7
        add     si, 6                           ; 83 C6 06
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0693:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        je      L_06C5                          ; 74 28
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jg      L_0693                          ; 7F E3
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jle     L_0693                          ; 7E DE
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_06CF                          ; EB 13
L_06BC:
        mov     ax, word ptr [di]               ; 8B 05
        shl     ax, 1                           ; D1 E0
        add     ax, 6                           ; 05 06 00
        add     di, ax                          ; 03 F8
L_06C5:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jne     L_0677                          ; 75 A8
L_06CF:
        test    byte ptr [bp + 4], 1            ; F6 46 04 01
        je      L_073A                          ; 74 65
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0735                          ; 74 5A
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x2c]                     ; FF 5F 2C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        test    byte ptr [bp + 4], 2            ; F6 46 04 02
        je      L_071C                          ; 74 14
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0716                          ; 7C 06
        cmp     word ptr [bp - 6], -1           ; 83 7E FA FF
        jne     L_0730                          ; 75 1A
L_0716:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     ax                              ; 48
        jmp     L_072D                          ; EB 11
L_071C:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_072A                          ; 7F 06
        cmp     word ptr [bp - 6], -1           ; 83 7E FA FF
        jne     L_0730                          ; 75 06
L_072A:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
L_072D:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0730:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_079B                          ; EB 66
L_0735:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_079B                          ; EB 61
L_073A:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_078D                          ; 74 4D
        jmp     L_077D                          ; EB 3B
L_0742:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x2c]                     ; FF 5F 2C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        je      L_078D                          ; 74 21
        push    word ptr [bp - 6]               ; FF 76 FA
        push    di                              ; 57
        call    L_0829                          ; E8 B6 00
        or      ax, ax                          ; 0B C0
        jne     L_0730                          ; 75 B9
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_077D:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 4]               ; FF 76 04
        push    di                              ; 57
        call    L_07A3                          ; E8 1C 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        inc     ax                              ; 40
        jne     L_0742                          ; 75 B5
L_078D:
        test    byte ptr [bp + 4], 2            ; F6 46 04 02
        je      L_0798                          ; 74 05
        mov     ax, 0x8000                      ; B8 00 80
        jmp     L_079B                          ; EB 03
L_0798:
        mov     ax, 0x7fff                      ; B8 FF 7F
L_079B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07A3 -- offset 0x07A3 -- 57 instr
; Dispatcher: tabla de decisiones cmp+jcc (57 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0000, sub_0649, sub_08E4
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_07A3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_07F8                          ; 74 3F
        cmp     ax, 2                           ; 3D 02 00
        jne     L_07C2                          ; 75 04
        mov     di, si                          ; 8B FE
        jmp     L_07CC                          ; EB 0A
L_07C2:
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        shl     di, 1                           ; D1 E7
        sub     di, 4                           ; 83 EF 04
        add     di, si                          ; 03 FE
L_07CC:
        add     di, 6                           ; 83 C7 06
L_07CF:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     word ptr [bp - 2]               ; FF 4E FE
        or      ax, ax                          ; 0B C0
        je      L_081E                          ; 74 45
        dec     word ptr [bp - 2]               ; FF 4E FE
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_07E7                          ; 7C 03
        dec     ax                              ; 48
        jmp     L_0821                          ; EB 3A
L_07E7:
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_07F3                          ; 7C 05
L_07EE:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0821                          ; EB 2E
L_07F3:
        sub     di, 4                           ; 83 EF 04
        jmp     L_07CF                          ; EB D7
L_07F8:
        mov     di, si                          ; 8B FE
        add     di, 6                           ; 83 C7 06
        jmp     L_0814                          ; EB 15
L_07FF:
        dec     word ptr [bp - 2]               ; FF 4E FE
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_0821                          ; 7C 18
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_07EE                          ; 7C DD
        add     di, 4                           ; 83 C7 04
L_0814:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     word ptr [bp - 2]               ; FF 4E FE
        or      ax, ax                          ; 0B C0
        jne     L_07FF                          ; 75 E1
L_081E:
        mov     ax, 0xffff                      ; B8 FF FF
L_0821:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0829 -- offset 0x0829 -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: medium
; callers: sub_0649
;----------------------------------------------------------------------
L_0829:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        add     si, 2                           ; 83 C6 02
        mov     di, word ptr [si - 2]           ; 8B 7C FE
        mov     ax, si                          ; 8B C6
        add     si, 2                           ; 83 C6 02
        mov     ax, si                          ; 8B C6
        add     si, 2                           ; 83 C6 02
        jmp     L_0866                          ; EB 1B
L_084B:
        dec     di                              ; 4F
        add     si, 2                           ; 83 C6 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si - 2], ax           ; 39 44 FE
        jg      L_0866                          ; 7F 0F
        add     si, 2                           ; 83 C6 02
        cmp     word ptr [si - 2], ax           ; 39 44 FE
        jle     L_0866                          ; 7E 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_086D                          ; EB 07
L_0866:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jne     L_084B                          ; 75 DE
L_086D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SCANLR -- 56 instr
; Iterador con instrucciones de string (movsb/scasb/...) (56 instr).
; tags: complex_iterator, far, string_op
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SCANLR  (offset 0x0878, size 126 bytes)
;-----------------------------------------------------------------------
SCANLR PROC FAR
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
        mov     di, word ptr [bp + 0x10]        ; 8B 7E 10
        or      di, di                          ; 0B FF
        mov     ax, 0xffff                      ; B8 FF FF
        je      L_08EC                          ; 74 5B
        mov     si, word ptr [di]               ; 8B 35
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 4                           ; 83 EF 04
        mov     cx, 1                           ; B9 01 00
        xor     bx, bx                          ; 33 DB
        call    far _SEG1_335C                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_1662                  ; 9A 2C 05 00 00 [FIXUP]
        pop     ax                              ; 58
        lea     bx, [bp - 6]                    ; 8D 5E FA
        mov     di, word ptr [si + 0x2a]        ; 8B 7C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ss                              ; 16
        push    bx                              ; 53
        lcall   [di + 4]                        ; FF 5D 04
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [di + 0x2c]                     ; FF 5D 2C
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A DB 05 00 00 [FIXUP]
        pop     ax                              ; 58
L_08EC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
SCANLR ENDP

        db      0cah                            ; CA
        db      00ch                            ; 0C

GDI_TEXT ENDS

        END
