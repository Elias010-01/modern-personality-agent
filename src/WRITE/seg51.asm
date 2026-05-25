; AUTO-GENERATED from original WRITE segment 51
; segment_size=930 bytes, flags=0xf130
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_00C2                          ; E9 92 00
L_0030:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x31c5                      ; B8 C5 31
        push    ax                              ; 50
        lcall   [0x13c6]                        ; FF 1E C6 13
        or      ax, ax                          ; 0B C0
        je      L_0090                          ; 74 51
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jle     L_00BF                          ; 7E 67
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        jge     L_00BF                          ; 7D 5F
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jle     L_00BF                          ; 7E 57
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bx], ax               ; 39 07
        jge     L_00BF                          ; 7D 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0094                          ; 74 04
L_0090:
        sub     ax, ax                          ; 2B C0
        jmp     L_00D0                          ; EB 3C
L_0094:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        cmp     byte ptr [0x348], 0             ; 80 3E 48 03 00
        je      L_00B6                          ; 74 0D
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 8]               ; FF 74 08
        call    far _entry_332                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00BF                          ; EB 09
L_00B6:
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 8]               ; FF 74 08
        call    L_00DC                          ; E8 1D 00
L_00BF:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_00C2:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_00CD                          ; 7D 03
        jmp     L_0030                          ; E9 63 FF
L_00CD:
        mov     ax, 1                           ; B8 01 00
L_00D0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DC -- offset 0x00DC -- 259 instr
; Iterador con instrucciones de string (movsb/scasb/...) (259 instr).
; tags: calls_gdi, complex_iterator, string_op
; calls (inter): GDI.SETTEXTJUSTIFICATION, GDI.TEXTOUT
;----------------------------------------------------------------------
L_00DC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x356], 0             ; 83 3E 56 03 00
        jl      L_00F0                          ; 7C 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00F2                          ; EB 02
L_00F0:
        sub     ax, ax                          ; 2B C0
L_00F2:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [0x1072]           ; 8B 1E 72 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0108                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_010B                          ; EB 03
L_0108:
        mov     ax, word ptr [0x34a]            ; A1 4A 03
L_010B:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_0113:
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_011E                          ; 7C 03
        jmp     L_039B                          ; E9 7D 02
L_011E:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx + 8]           ; 8A 47 08
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     al, byte ptr [bx + 9]           ; 8A 47 09
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        mov     ax, word ptr [0x33c]            ; A1 3C 03
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jle     L_013D                          ; 7E 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_013D:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        shl     si, 1                           ; D1 E6
        add     si, 0x35a                       ; 81 C6 5A 03
        jmp     L_015C                          ; EB 04
L_0158:
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 8], ax           ; 01 46 F8
L_015C:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jg      L_0158                          ; 7F F5
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jg      L_016C                          ; 7F 03
        jmp     L_02FC                          ; E9 90 01
L_016C:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, 0x558                       ; 05 58 05
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [0x33e]                ; FF 36 3E 03
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_253                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        test    word ptr [bx + 4], 0xff00       ; F7 47 04 00 FF
        je      L_01A6                          ; 74 17
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        cmp     al, 0x80                        ; 3C 80
        jae     L_019F                          ; 73 05
        mov     ax, word ptr [0x1bec]           ; A1 EC 1B
        jmp     L_01A8                          ; EB 09
L_019F:
        mov     ax, word ptr [0x1bec]           ; A1 EC 1B
        neg     ax                              ; F7 D8
        jmp     L_01A8                          ; EB 02
L_01A6:
        sub     ax, ax                          ; 2B C0
L_01A8:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        sub     cx, ax                          ; 2B C8
        add     cx, word ptr [0x34c]            ; 03 0E 4C 03
        sub     cx, word ptr [0x352]            ; 2B 0E 52 03
        sub     cx, word ptr [0x1230]           ; 2B 0E 30 12
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A 20 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_02F1                          ; E9 1D 01
L_01D4:
        test    word ptr [0x348], 0xff00        ; F7 06 48 03 00 FF
        jne     L_01DF                          ; 75 03
        jmp     L_0261                          ; E9 82 00
L_01DF:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [0x33a]            ; 8B 0E 3A 03
        and     cl, 0                           ; 80 E1 00
        cmp     ax, cx                          ; 3B C1
        jbe     L_0261                          ; 76 6D
        mov     al, byte ptr [0x33b]            ; A0 3B 03
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        ja      L_0261                          ; 77 5A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     di, si                          ; 3B FE
        jne     L_0232                          ; 75 21
        push    word ptr [0x79e]                ; FF 36 9E 07
        inc     word ptr [bp - 4]               ; FF 46 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A B3 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        jmp     L_023D                          ; EB 0B
L_0232:
        mov     al, byte ptr [0x33b]            ; A0 3B 03
        sub     ah, ah                          ; 2A E4
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_023D:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     di, word ptr [bp - 0x1a]        ; 8B 7E E6
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        add     si, word ptr [bp - 0x1c]        ; 03 76 E4
        shl     si, 1                           ; D1 E6
        add     si, 0x35a                       ; 81 C6 5A 03
L_0254:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jle     L_026A                          ; 7E 0F
        lodsw   ax, word ptr [si]               ; AD
        add     word ptr [bp - 8], ax           ; 01 46 F8
        jmp     L_0254                          ; EB F3
L_0261:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
L_026A:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jle     L_02CE                          ; 7E 5E
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        cmp     ax, 1                           ; 3D 01 00
        jne     L_027F                          ; 75 03
        jmp     L_0303                          ; E9 84 00
L_027F:
        cmp     ax, 5                           ; 3D 05 00
        je      L_0303                          ; 74 7F
        cmp     ax, 9                           ; 3D 09 00
        jne     L_02CE                          ; 75 45
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        add     word ptr [bp + 6], ax           ; 01 46 06
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_02BC                          ; 74 21
        mov     ax, word ptr [0x356]            ; A1 56 03
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_02BC                          ; 7C 19
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, word ptr [0x34a]            ; A1 4A 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETTEXTJUSTIFICATION    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_02BC:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
L_02CE:
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far GDI.TEXTOUT                 ; 9A 73 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
L_02F1:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_02FC                          ; 7D 03
        jmp     L_01D4                          ; E9 D8 FE
L_02FC:
        add     word ptr [bp - 0xc], 0xa        ; 83 46 F4 0A
        jmp     L_0113                          ; E9 10 FE
L_0303:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        test    word ptr [bx + 2], 0x4000       ; F7 47 02 00 40
        je      L_02CE                          ; 74 C1
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        cmp     byte ptr [bx], 1                ; 80 3F 01
        jne     L_0349                          ; 75 34
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cdq                                     ; 99
        add     ax, word ptr [0x32a]            ; 03 06 2A 03
        adc     dx, word ptr [0x32c]            ; 13 16 2C 03
        cmp     dx, word ptr [0x71c]            ; 3B 16 1C 07
        jg      L_0349                          ; 7F 22
        jl      L_032F                          ; 7C 06
        cmp     ax, word ptr [0x71a]            ; 3B 06 1A 07
        jae     L_0349                          ; 73 1A
L_032F:
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        push    word ptr [0xeea]                ; FF 36 EA 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_257                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_035A                          ; EB 11
L_0349:
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _entry_256                  ; 9A FF FF 00 00 [FIXUP]
L_035A:
        mov     byte ptr [0xa6e], al            ; A2 6E 0A
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xa6e]            ; A0 6E 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x35a]       ; 8B 87 5A 03
        add     word ptr [bp + 6], ax           ; 01 46 06
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
        jmp     L_026A                          ; E9 CF FE
L_039B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
