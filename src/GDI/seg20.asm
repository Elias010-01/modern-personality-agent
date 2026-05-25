; AUTO-GENERATED from original GDI segment 20
; segment_size=623 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx], 1             ; 26 C7 07 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        lea     ax, [si + 0xa]                  ; 8D 44 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     di, di                          ; 2B FF
L_0044:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     ax                              ; 48
        cmp     ax, di                          ; 3B C7
        jle     L_0057                          ; 7E 0B
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jl      L_007A                          ; 7C 23
L_0057:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0060                          ; 75 03
        jmp     L_0112                          ; E9 B2 00
L_0060:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xa], di      ; 26 89 7F 0A
        mov     word ptr es:[bx + 0x16], 2      ; 26 C7 47 16 02 00
        jmp     L_0125                          ; E9 AB 00
L_007A:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jle     L_00C5                          ; 7E 40
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_00BE                          ; 74 33
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr es:[bx]                ; 26 FF 07
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xa], di      ; 26 89 7F 0A
        mov     word ptr es:[bx + 0x16], 2      ; 26 C7 47 16 02 00
        push    es                              ; 06
        push    bx                              ; 53
        push    si                              ; 56
        call    L_013C                          ; E8 8E 00
        add     word ptr [bp - 0xe], 0x18       ; 83 46 F2 18
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 0xa], di      ; 26 89 7F 0A
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_00BE:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_010A                          ; EB 45
L_00C5:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jge     L_010A                          ; 7D 3A
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0105                          ; 74 2F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr es:[bx]                ; 26 FF 07
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr es:[bx + 0xa]      ; 26 2B 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0x16], 1      ; 26 C7 47 16 01 00
        push    es                              ; 06
        push    bx                              ; 53
        push    si                              ; 56
        call    L_013C                          ; E8 47 00
        add     word ptr [bp - 0xe], 0x18       ; 83 46 F2 18
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 0xa], di      ; 26 89 7F 0A
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_0105:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_010A:
        inc     di                              ; 47
        add     word ptr [bp - 4], 4            ; 83 46 FC 04
        jmp     L_0044                          ; E9 32 FF
L_0112:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr es:[bx + 0xa]      ; 26 2B 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0x16], 1      ; 26 C7 47 16 01 00
L_0125:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    si                              ; 56
        call    L_013C                          ; E8 0D 00
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
; sub_013C -- offset 0x013C -- 113 instr
; Funcion compleja: 113 instrucciones, 0 llamadas, 3 branches.
; tags: complex
;----------------------------------------------------------------------
L_013C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0xa]      ; 26 8B 77 0A
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_0156                          ; 7C 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0159                          ; EB 03
L_0156:
        mov     ax, 1                           ; B8 01 00
L_0159:
        sub     si, ax                          ; 2B F0
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xe], si      ; 26 89 77 0E
        mov     bx, word ptr es:[bx + 0xa]      ; 26 8B 5F 0A
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 4]           ; 03 5E 04
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     bx, word ptr es:[bx + 0xa]      ; 26 8B 5F 0A
        add     bx, ax                          ; 03 D8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp + 4]           ; 03 5E 04
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [di + 0xc]         ; 8B 45 0C
        cdq                                     ; 99
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [di + 0x10]        ; 8B 45 10
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_01DB                          ; 7C 08
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_0218                          ; EB 3D
L_01DB:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0xe]      ; 26 8B 77 0E
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + si + 0xe]    ; 8B 40 0E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
L_0218:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        je      L_0268                          ; 74 30
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_3D67                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_3E8A                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
L_0268:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

GDI_TEXT ENDS

        END
