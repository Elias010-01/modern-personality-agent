; AUTO-GENERATED from original WRITE segment 76
; segment_size=1571 bytes, flags=0xf130
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
        sub     sp, 0x78                        ; 83 EC 78
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0xa54], 4             ; 83 3E 54 0A 04
        je      L_001D                          ; 74 07
        cmp     word ptr [0xa54], 5             ; 83 3E 54 0A 05
        jne     L_0071                          ; 75 54
L_001D:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ax                              ; 50
        mov     al, 0xb                         ; B0 0B
        mov     byte ptr [bp - 0x6b], al        ; 88 46 95
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x6c], 0xa       ; C6 46 94 0A
        push    word ptr [0x1bd8]               ; FF 36 D8 1B
        push    word ptr [0x1bd6]               ; FF 36 D6 1B
        push    word ptr [0x1bdc]               ; FF 36 DC 1B
        push    word ptr [0x1bda]               ; FF 36 DA 1B
        call    far _entry_97                   ; 9A B9 00 00 00 [FIXUP]
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FB 00 00 00 [FIXUP]
        mov     word ptr [0xcac], 0x20          ; C7 06 AC 0C 20 00
        jmp     L_0105                          ; E9 94 00
L_0071:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_168                  ; 9A FF FF 00 00 [FIXUP]
        lea     di, [bp - 0x78]                 ; 8D 7E 88
        mov     si, 0x1014                      ; BE 14 10
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1bd8]               ; FF 36 D8 1B
        push    word ptr [0x1bd6]               ; FF 36 D6 1B
        push    word ptr [0x1bdc]               ; FF 36 DC 1B
        push    word ptr [0x1bda]               ; FF 36 DA 1B
        call    far _entry_97                   ; 9A 54 02 00 00 [FIXUP]
        mov     di, 0xa5e                       ; BF 5E 0A
        lea     si, [bp - 0x78]                 ; 8D 76 88
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, word ptr [0x1bda]           ; A1 DA 1B
        mov     dx, word ptr [0x1bdc]           ; 8B 16 DC 1B
        cmp     word ptr [0x1bd8], dx           ; 39 16 D8 1B
        jne     L_00DD                          ; 75 06
        cmp     word ptr [0x1bd6], ax           ; 39 06 D6 1B
        je      L_010E                          ; 74 31
L_00DD:
        mov     ax, 0xa5e                       ; B8 5E 0A
        push    ax                              ; 50
        lea     ax, [bp - 0x6b]                 ; 8D 46 95
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x6c], 0x1a      ; C6 46 94 1A
        lea     ax, [bp - 0x6c]                 ; 8D 46 94
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xcac], 0x1f          ; C7 06 AC 0C 1F 00
L_0105:
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 5D 02 00 00 [FIXUP]
L_010E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [0x1bda]           ; A1 DA 1B
        mov     dx, word ptr [0x1bdc]           ; 8B 16 DC 1B
        cmp     word ptr [0x1bd8], dx           ; 39 16 D8 1B
        jne     L_0141                          ; 75 09
        cmp     word ptr [0x1bd6], ax           ; 39 06 D6 1B
        jne     L_0141                          ; 75 03
        jmp     L_0261                          ; E9 20 01
L_0141:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A 8F 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0151                          ; 75 03
        jmp     L_0258                          ; E9 07 01
L_0151:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [0x1bda]           ; A1 DA 1B
        mov     dx, word ptr [0x1bdc]           ; 8B 16 DC 1B
        mov     cx, word ptr [0x1bd6]           ; 8B 0E D6 1B
        mov     bx, word ptr [0x1bd8]           ; 8B 1E D8 1B
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        call    far _entry_39                   ; 9A 0C 02 00 00 [FIXUP]
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_206                  ; 9A 4F 03 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_01A5                          ; 74 03
        jmp     L_0261                          ; E9 BC 00
L_01A5:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04C2                          ; E8 06 03
        or      ax, ax                          ; 0B C0
        jne     L_01E5                          ; 75 25
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
L_01E5:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_238                  ; 9A B7 03 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0212                          ; 74 07
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0261                          ; EB 4F
L_0212:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jl      L_0258                          ; 7C 3A
        jg      L_0225                          ; 7F 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jb      L_0258                          ; 72 33
L_0225:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        adc     dx, word ptr [bp - 0xa]         ; 13 56 F6
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jg      L_0258                          ; 7F 21
        jl      L_023F                          ; 7C 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        ja      L_0258                          ; 77 19
L_023F:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        adc     dx, word ptr [bp - 0xa]         ; 13 56 F6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
L_0258:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A E5 02 00 00 [FIXUP]
L_0261:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0x1bda]           ; A1 DA 1B
        mov     dx, word ptr [0x1bdc]           ; 8B 16 DC 1B
        cmp     word ptr [0x1bd8], dx           ; 39 16 D8 1B
        jne     L_028A                          ; 75 06
        cmp     word ptr [0x1bd6], ax           ; 39 06 D6 1B
        je      L_02E9                          ; 74 5F
L_028A:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02E9                          ; 74 52
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [0x1bda]           ; A1 DA 1B
        mov     dx, word ptr [0x1bdc]           ; 8B 16 DC 1B
        mov     cx, word ptr [0x1bd6]           ; 8B 0E D6 1B
        mov     bx, word ptr [0x1bd8]           ; 8B 1E D8 1B
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02F2                          ; E8 16 00
        or      ax, ax                          ; 0B C0
        je      L_02E9                          ; 74 09
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
L_02E9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02F2 -- offset 0x02F2 -- 176 instr
; Dispatcher: tabla de decisiones cmp+jcc (176 instr).
; tags: dispatcher, far
; calls (intra): sub_04C2
;----------------------------------------------------------------------
L_02F2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jl      L_033B                          ; 7C 2E
        jg      L_0313                          ; 7F 04
        cmp     word ptr [bx], ax               ; 39 07
        jb      L_033B                          ; 72 28
L_0313:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        adc     dx, word ptr [bp + 0xe]         ; 13 56 0E
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     dx, word ptr [bx + 2]           ; 3B 57 02
        jl      L_033B                          ; 7C 14
        jg      L_032D                          ; 7F 04
        cmp     ax, word ptr [bx]               ; 3B 07
        jbe     L_033B                          ; 76 0E
L_032D:
        mov     ax, 0x2010                      ; B8 10 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_0336:
        sub     ax, ax                          ; 2B C0
        jmp     L_04B7                          ; E9 7C 01
L_033B:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_206                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_0336                          ; 75 DC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04C2                          ; E8 54 01
        or      ax, ax                          ; 0B C0
        je      L_038E                          ; 74 1C
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        jg      L_038E                          ; 7F 0E
        jl      L_0386                          ; 7C 04
        cmp     word ptr [bx], ax               ; 39 07
        ja      L_038E                          ; 77 08
L_0386:
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        adc     word ptr [bp + 0x12], 0         ; 83 56 12 00
L_038E:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_238                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_040B                          ; 75 3A
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jg      L_03F8                          ; 7F 1C
        jl      L_03E3                          ; 7C 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_03F8                          ; 73 15
L_03E3:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sbb     dx, word ptr [bp - 4]           ; 1B 56 FC
        add     word ptr [bp + 0x10], ax        ; 01 46 10
        adc     word ptr [bp + 0x12], dx        ; 11 56 12
        jmp     L_040B                          ; EB 13
L_03F8:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sbb     dx, word ptr [bp - 4]           ; 1B 56 FC
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        sbb     word ptr [bp - 8], dx           ; 19 56 F8
L_040B:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0438                          ; 74 08
        call    far _entry_39                   ; 9A 7E 01 00 00 [FIXUP]
        jmp     L_0336                          ; E9 FE FE
L_0438:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0486                          ; 75 46
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jl      L_0486                          ; 7C 3A
        jg      L_0453                          ; 7F 05
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jb      L_0486                          ; 72 33
L_0453:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        adc     dx, word ptr [bp + 0xe]         ; 13 56 0E
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jg      L_0486                          ; 7F 21
        jl      L_046D                          ; 7C 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        ja      L_0486                          ; 77 19
L_046D:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        adc     dx, word ptr [bp + 0xe]         ; 13 56 0E
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A 57 00 00 00 [FIXUP]
L_0486:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_04B4                          ; 74 28
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 8F 05 00 00 [FIXUP]
L_04B4:
        mov     ax, 1                           ; B8 01 00
L_04B7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04C2 -- offset 0x04C2 -- 139 instr
; Dispatcher: tabla de decisiones cmp+jcc (139 instr).
; tags: dispatcher, far
; callers: sub_02F2
;----------------------------------------------------------------------
L_04C2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 11 05 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_054C                          ; 74 5B
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_054C                          ; 7C 55
        jg      L_04FF                          ; 7F 06
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jbe     L_054C                          ; 76 4D
L_04FF:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A 2A 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        cmp     dx, word ptr [0xed4]            ; 3B 16 D4 0E
        jne     L_0550                          ; 75 29
        cmp     ax, word ptr [0xed2]            ; 3B 06 D2 0E
        jne     L_0550                          ; 75 23
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [0xed4], dx            ; 39 16 D4 0E
        jg      L_0550                          ; 7F 16
        jl      L_0542                          ; 7C 06
        cmp     word ptr [0xed2], ax            ; 39 06 D2 0E
        jae     L_0550                          ; 73 0E
L_0542:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        add     word ptr [bx], 1                ; 83 07 01
        adc     word ptr [bx + 2], 0            ; 83 57 02 00
L_054C:
        sub     ax, ax                          ; 2B C0
        jmp     L_05B2                          ; EB 62
L_0550:
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jne     L_0561                          ; 75 05
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_054C                          ; 74 EB
L_0561:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0593                          ; 74 2C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 2                           ; 05 02 00
        adc     dx, 0                           ; 83 D2 00
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
        call    far _entry_37                   ; 9A E1 01 00 00 [FIXUP]
L_0593:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        call    far _entry_170                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        add     word ptr [bx], 2                ; 83 07 02
        adc     word ptr [bx + 2], 0            ; 83 57 02 00
        mov     ax, 1                           ; B8 01 00
L_05B2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0xcb8]            ; A1 B8 0C
        cmp     word ptr [0xcae], ax            ; 39 06 AE 0C
        jne     L_061A                          ; 75 4A
        mov     ax, word ptr [0xcba]            ; A1 BA 0C
        mov     dx, word ptr [0xcbc]            ; 8B 16 BC 0C
        cmp     word ptr [0xcb2], dx            ; 39 16 B2 0C
        jg      L_05F6                          ; 7F 19
        jl      L_05E5                          ; 7C 06
        cmp     word ptr [0xcb0], ax            ; 39 06 B0 0C
        jae     L_05F6                          ; 73 11
L_05E5:
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        sub     word ptr [0xcba], ax            ; 29 06 BA 0C
        sbb     word ptr [0xcbc], dx            ; 19 16 BC 0C
        jmp     L_061A                          ; EB 24
L_05F6:
        mov     ax, word ptr [0xcba]            ; A1 BA 0C
        mov     dx, word ptr [0xcbc]            ; 8B 16 BC 0C
        cmp     word ptr [0xcb2], dx            ; 39 16 B2 0C
        jl      L_061A                          ; 7C 17
        jg      L_060B                          ; 7F 06
        cmp     word ptr [0xcb0], ax            ; 39 06 B0 0C
        jbe     L_061A                          ; 76 0F
L_060B:
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        add     word ptr [0xcb0], ax            ; 01 06 B0 0C
        adc     word ptr [0xcb2], dx            ; 11 16 B2 0C
L_061A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
