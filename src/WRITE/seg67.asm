; AUTO-GENERATED from original WRITE segment 67
; segment_size=797 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 58 instr
; Funcion mediana (58 instr, 0 calls).
; tags: far, medium
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
        sub     sp, 4                           ; 83 EC 04
        test    byte ptr [bp + 8], 1            ; F6 46 08 01
        je      L_002B                          ; 74 18
        cmp     word ptr [bp + 6], 0xa          ; 83 7E 06 0A
        jae     L_001D                          ; 73 04
        sub     ax, ax                          ; 2B C0
        jmp     L_006F                          ; EB 52
L_001D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_006F                          ; EB 44
L_002B:
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EE                          ; E8 B3 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_007A                          ; E8 28 00
        add     word ptr [bp - 4], ax           ; 01 46 FC
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ax                              ; 50
        mov     ax, 0x29                        ; B8 29 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EE                          ; E8 85 00
        add     word ptr [bp - 4], ax           ; 01 46 FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_006F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_007A -- offset 0x007A -- 49 instr
; Funcion mediana (49 instr, 0 calls).
; tags: far, medium
; callers: sub_0000
;----------------------------------------------------------------------
L_007A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x204                       ; 81 EC 04 02
        push    si                              ; 56
        lea     ax, [bp - 0x202]                ; 8D 86 FE FD
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0x202]       ; 8A 86 FE FD
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jae     L_00A8                          ; 73 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_00AA                          ; EB 02
L_00A8:
        mov     ax, si                          ; 8B C6
L_00AA:
        or      ax, ax                          ; 0B C0
        jae     L_00B2                          ; 73 04
        sub     ax, ax                          ; 2B C0
        jmp     L_00BE                          ; EB 0C
L_00B2:
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jae     L_00BC                          ; 73 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_00BE                          ; EB 02
L_00BC:
        mov     ax, si                          ; 8B C6
L_00BE:
        mov     word ptr [bp - 0x204], ax       ; 89 86 FC FD
        lea     ax, [bp - 0x201]                ; 8D 86 FF FD
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x204]           ; FF B6 FC FD
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 0x204]       ; 8B 86 FC FD
        add     word ptr [bx], ax               ; 01 07
        mov     ax, word ptr [bp - 0x204]       ; 8B 86 FC FD
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00EE -- offset 0x00EE -- 202 instr
; Dispatcher: tabla de decisiones cmp+jcc (202 instr).
; tags: dispatcher, far
; callers: sub_0000, sub_02F3
; calls (intra): sub_02F3
;----------------------------------------------------------------------
L_00EE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0112                          ; 7E 14
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [bx], al               ; 88 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        inc     word ptr [bx]                   ; FF 07
        mov     ax, 1                           ; B8 01 00
        jmp     L_0114                          ; EB 02
L_0112:
        sub     ax, ax                          ; 2B C0
L_0114:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
L_012D:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [0xe0c]            ; A1 0C 0E
        cmp     word ptr [bx + 0x12], ax        ; 39 47 12
        jl      L_013B                          ; 7C 03
        jmp     L_02DD                          ; E9 A2 01
L_013B:
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jle     L_0148                          ; 7E 03
        jmp     L_02DD                          ; E9 95 01
L_0148:
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, 0x558                       ; 05 58 05
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bx + 0x12]        ; 8B 5F 12
        mov     si, word ptr [0x1022]           ; 8B 36 22 10
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, 1                           ; 3D 01 00
        je      L_0167                          ; 74 03
        jmp     L_01F1                          ; E9 8A 00
L_0167:
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0198                          ; 75 2A
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        jne     L_0198                          ; 75 23
        test    byte ptr [bp + 8], 1            ; F6 46 08 01
        je      L_01F1                          ; 74 76
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        cdq                                     ; 99
        add     ax, word ptr [0x10fa]           ; 03 06 FA 10
        adc     dx, word ptr [0x10fc]           ; 13 16 FC 10
        cmp     dx, word ptr [0x71c]            ; 3B 16 1C 07
        jg      L_01F1                          ; 7F 61
        jl      L_0198                          ; 7C 06
        cmp     ax, word ptr [0x71a]            ; 3B 06 1A 07
        jae     L_01F1                          ; 73 59
L_0198:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0xeea]                ; FF 36 EA 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, 0xff                        ; B8 FF 00
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 4C FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        test    byte ptr [bp + 8], 1            ; F6 46 08 01
        je      L_01C2                          ; 74 05
L_01BD:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_020C                          ; EB 4A
L_01C2:
        mov     ax, 0xa6e                       ; B8 6E 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        cmp     word ptr [0xe1e], -1            ; 83 3E 1E 0E FF
        jne     L_01D5                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01D8                          ; EB 03
L_01D5:
        mov     ax, word ptr [0xe1e]            ; A1 1E 0E
L_01D8:
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, 0xff                        ; B8 FF 00
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 11 FE
        jmp     L_01BD                          ; EB CC
L_01F1:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, 0xff                        ; B8 FF 00
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02F3                          ; E8 ED 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_020C:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        inc     word ptr [bx + 0x12]            ; FF 47 12
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0238                          ; EB 1A
L_021E:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_290                  ; 9A 75 02 00 00 [FIXUP]
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_0238:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_021E                          ; 7C DE
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     word ptr [bx + 8], ax           ; 01 47 08
        test    byte ptr [bp + 8], 1            ; F6 46 08 01
        je      L_0257                          ; 74 08
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_028D                          ; EB 36
L_0257:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_027F                          ; EB 18
L_0267:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + 0x558]       ; 8A 87 58 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_290                  ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 4]               ; FF 46 FC
L_027F:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jg      L_0267                          ; 7F DA
L_028D:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        mov     byte ptr [bx + 0x558], al       ; 88 87 58 05
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        inc     word ptr [bx + 0xc]             ; FF 47 0C
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 0x35a], ax       ; 89 84 5A 03
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        add     word ptr [bx], ax               ; 01 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jg      L_02C1                          ; 7F 03
        jmp     L_012D                          ; E9 6C FE
L_02C1:
        mov     ax, word ptr [0x10fa]           ; A1 FA 10
        mov     dx, word ptr [0x10fc]           ; 8B 16 FC 10
        cmp     word ptr [0x32c], dx            ; 39 16 2C 03
        jne     L_02D9                          ; 75 0B
        cmp     word ptr [0x32a], ax            ; 39 06 2A 03
        jne     L_02D9                          ; 75 05
L_02D4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02E7                          ; EB 0E
L_02D9:
        sub     ax, ax                          ; 2B C0
        jmp     L_02E7                          ; EB 0A
L_02DD:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx + 0x1e], 0         ; C7 47 1E 00 00
        jmp     L_02D4                          ; EB ED
L_02E7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02F3 -- offset 0x02F3 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: small
; callers: sub_00EE
; calls (intra): sub_00EE
;----------------------------------------------------------------------
L_02F3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        lea     ax, [bp + 0xa]                  ; 8D 46 0A
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00EE                          ; E8 DE FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
