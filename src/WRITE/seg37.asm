; AUTO-GENERATED from original WRITE segment 37
; segment_size=2405 bytes, flags=0xf130
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, 0x300                       ; 2D 00 03
        cmp     ax, 0xe                         ; 3D 0E 00
        ja      L_001D                          ; 77 08
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xa4]         ; 2E FF A7 A4 00
L_001D:
        sub     ax, ax                          ; 2B C0
        jmp     L_00C5                          ; E9 A3 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01DD                          ; E8 B6 01
        jmp     L_00C2                          ; E9 98 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00D0                          ; E8 A1 00
        jmp     L_00C2                          ; E9 90 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02CF                          ; E8 98 02
        jmp     L_00C2                          ; E9 88 00
        call    far _entry_231                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; E9 80 00
        call    far _entry_230                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 79
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E9                          ; E8 9B 03
        jmp     L_00C2                          ; EB 72
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0348                          ; E8 F0 02
        jmp     L_00C2                          ; EB 68
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_229                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 5B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_228                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 4B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_227                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 3B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_226                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 2E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_225                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00C2                          ; EB 1E
        and     al, byte ptr [bx + si]          ; 22 00
        sub     al, byte ptr [bx + si]          ; 2A 00
        xor     al, byte ptr [bx + si]          ; 32 00
        cmp     al, byte ptr [bx + si]          ; 3A 00
        inc     dx                              ; 42
        add     byte ptr [bx + si], dl          ; 00 50 00
        sbb     ax, 0x4900                      ; 1D 00 49
        add     byte ptr [di], bl               ; 00 1D
        add     byte ptr [bp + si], bl          ; 00 5A 00
        add     byte ptr [edi + 0x1d009400], al ; 67 00 87 00 94 00 1D
        add     byte ptr [bx], dh               ; 00 77 00
L_00C2:
        mov     ax, 1                           ; B8 01 00
L_00C5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00D0 -- offset 0x00D0 -- 68 instr
; Funcion mediana (68 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_0173, sub_0655
;----------------------------------------------------------------------
L_00D0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
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
        call    far _entry_37                   ; 9A 45 02 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_206                  ; 9A 5E 02 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_014C                          ; 74 07
        call    far _entry_39                   ; 9A B1 02 00 00 [FIXUP]
        jmp     L_0165                          ; EB 19
L_014C:
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_015A                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_015F                          ; 74 05
L_015A:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0173                          ; E8 14 00
L_015F:
        mov     ax, word ptr [0x13de]           ; A1 DE 13
        mov     word ptr [0x66], ax             ; A3 66 00
L_0165:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0655                          ; E8 EB 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0173 -- offset 0x0173 -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: far, medium
; callers: sub_00D0, sub_01DD
;----------------------------------------------------------------------
L_0173:
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
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        je      L_01D3                          ; 74 33
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0xb82], 0xf           ; F6 06 82 0B 0F
        je      L_01D3                          ; 74 1F
        mov     byte ptr [bp - 4], 9            ; C6 46 FC 09
        mov     byte ptr [bp - 3], 0            ; C6 46 FD 00
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_224                  ; 9A FF FF 00 00 [FIXUP]
L_01D3:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01DD -- offset 0x01DD -- 96 instr
; Funcion compleja: 96 instrucciones, 2 llamadas, 6 branches.
; tags: complex, far
; calls (intra): sub_0173, sub_0655
;----------------------------------------------------------------------
L_01DD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        call    far _entry_102                  ; 9A E2 02 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01FF                          ; 75 03
        jmp     L_02C6                          ; E9 C7 00
L_01FF:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
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
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_206                  ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0270                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0275                          ; 74 05
L_0270:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0173                          ; E8 FE FE
L_0275:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_02B0                          ; 75 34
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_028A                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_028F                          ; 74 05
L_028A:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0173                          ; E8 E4 FE
L_028F:
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
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02B5                          ; EB 05
L_02B0:
        call    far _entry_39                   ; 9A 36 03 00 00 [FIXUP]
L_02B5:
        mov     ax, word ptr [0x13de]           ; A1 DE 13
        mov     word ptr [0x66], ax             ; A3 66 00
        mov     word ptr [0x13de], 0            ; C7 06 DE 13 00 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0655                          ; E8 8F 03
L_02C6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02CF -- offset 0x02CF -- 51 instr
; Funcion mediana (51 instr, 3 calls).
; tags: calls_user, far, medium
; calls (intra): sub_0505, sub_0742
; calls (inter): USER.GETCLIPBOARDOWNER
;----------------------------------------------------------------------
L_02CF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        call    far USER.GETCLIPBOARDOWNER      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [0x10f4]           ; 3B 06 F4 10
        je      L_032B                          ; 74 37
        or      ax, ax                          ; 0B C0
        je      L_0306                          ; 74 0E
        push    ax                              ; 50
        mov     ax, 0x14e                       ; B8 4E 01
        push    ax                              ; 50
        call    far _entry_223                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0322                          ; 75 1C
L_0306:
        call    far _entry_222                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0335                          ; 74 26
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        jne     L_031B                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_031D                          ; EB 02
L_031B:
        sub     ax, ax                          ; 2B C0
L_031D:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_032B                          ; EB 09
L_0322:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0505                          ; E8 DE 01
        or      ax, ax                          ; 0B C0
        je      L_0335                          ; 74 0A
L_032B:
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0742                          ; E8 0F 04
        jmp     L_033F                          ; EB 0A
L_0335:
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
L_033F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0348 -- offset 0x0348 -- 65 instr
; Dispatcher: tabla de decisiones cmp+jcc (65 instr).
; tags: dispatcher, far
; calls (intra): sub_0455
;----------------------------------------------------------------------
L_0348:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 1                           ; 3D 01 00
        je      L_03CC                          ; 74 60
        cmp     ax, 2                           ; 3D 02 00
        je      L_0382                          ; 74 11
        cmp     ax, 3                           ; 3D 03 00
        je      L_03A8                          ; 74 32
        cmp     ax, 0x80                        ; 3D 80 00
        jne     L_03DE                          ; 75 63
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0455                          ; E8 D5 00
        jmp     L_03DE                          ; EB 5C
L_0382:
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        je      L_03DE                          ; 74 55
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc20]                ; FF 36 20 0C
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        call    far _entry_221                  ; 9A C2 03 00 00 [FIXUP]
        cmp     word ptr [bp - 0x2e], 0x63      ; 83 7E D2 63
        je      L_03CC                          ; 74 26
        jmp     L_03DE                          ; EB 36
L_03A8:
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        je      L_03DE                          ; 74 2F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xc20]                ; FF 36 20 0C
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        call    far _entry_221                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x2e], 0x63      ; 83 7E D2 63
        je      L_03DE                          ; 74 12
L_03CC:
        call    far _entry_220                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03DE                          ; 75 09
        mov     ax, 0x2017                      ; B8 17 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_03DE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E9 -- offset 0x03E9 -- 41 instr
; Dispatcher: tabla de decisiones cmp+jcc (41 instr).
; tags: dispatcher, far
; callers: sub_0655
;----------------------------------------------------------------------
L_03E9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x73e], 0             ; 83 3E 3E 07 00
        jne     L_044C                          ; 75 52
        mov     word ptr [0x7b0], 0             ; C7 06 B0 07 00 00
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_206                  ; 9A 3A 01 00 00 [FIXUP]
        mov     ax, word ptr [0xcac]            ; A1 AC 0C
        cmp     ax, 5                           ; 3D 05 00
        jl      L_0425                          ; 7C 0A
        cmp     ax, 8                           ; 3D 08 00
        jg      L_0425                          ; 7F 05
        call    far _entry_39                   ; 9A 7D 07 00 00 [FIXUP]
L_0425:
        cmp     word ptr [0x73c], 0x7fff        ; 81 3E 3C 07 FF 7F
        je      L_043C                          ; 74 0F
        push    word ptr [0x73c]                ; FF 36 3C 07
        call    far _entry_205                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x73c], 0x7fff        ; C7 06 3C 07 FF 7F
L_043C:
        cmp     word ptr [0x324], 0xf           ; 83 3E 24 03 0F
        je      L_044C                          ; 74 09
        push    word ptr [0x324]                ; FF 36 24 03
        call    far _entry_236                  ; 9A FF FF 00 00 [FIXUP]
L_044C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0455 -- offset 0x0455 -- 74 instr
; Funcion mediana (74 instr, 4 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_0348
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.SETCLIPBOARDDATA
;----------------------------------------------------------------------
L_0455:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x4e                        ; 83 EC 4E
        mov     byte ptr [bp - 0x44], 0         ; C6 46 BC 00
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far _entry_207                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0483                          ; 75 04
L_047F:
        sub     ax, ax                          ; 2B C0
        jmp     L_04FC                          ; EB 79
L_0483:
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        mov     word ptr [0x73c], ax            ; A3 3C 07
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_235                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04A5                          ; 75 0A
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    far _entry_234                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_047F                          ; EB DA
L_04A5:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        or      ax, ax                          ; 0B C0
        je      L_047F                          ; 74 BB
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 3F 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        or      ax, dx                          ; 0B C2
        je      L_047F                          ; 74 AB
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_56                   ; 9A 5E 05 00 00 [FIXUP]
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        call    far KERNEL.GLOBALUNLOCK         ; 9A 66 05 00 00 [FIXUP]
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        call    far USER.SETCLIPBOARDDATA       ; 9A 24 07 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_04FC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0505 -- offset 0x0505 -- 129 instr
; Funcion compleja: 129 instrucciones, 0 llamadas, 7 branches.
; tags: complex, far
; callers: sub_0119, sub_02CF
;----------------------------------------------------------------------
L_0505:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x58                        ; 83 EC 58
        push    si                              ; 56
        mov     word ptr [bp - 0x46], 0         ; C7 46 BA 00 00
        push    word ptr [0x10f4]               ; FF 36 F4 10
        call    far USER.OPENCLIPBOARD          ; 9A 83 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_052A                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_064B                          ; E9 21 01
L_052A:
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        or      ax, ax                          ; 0B C0
        jne     L_053D                          ; 75 03
        jmp     L_063E                          ; E9 01 01
L_053D:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     word ptr [bp - 0x4e], dx        ; 89 56 B2
        or      ax, dx                          ; 0B C2
        jne     L_0550                          ; 75 03
        jmp     L_063E                          ; E9 EE 00
L_0550:
        push    dx                              ; 52
        push    word ptr [bp - 0x50]            ; FF 76 B0
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x52]            ; FF 76 AE
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x44]                 ; 8D 46 BC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_194                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_0582                          ; 75 03
        jmp     L_063E                          ; E9 BC 00
L_0582:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x48]            ; F7 6E B8
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     bx, ax                          ; 8B D8
        or      byte ptr [bx + 4], 2            ; 80 4F 04 02
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        test    byte ptr [bx + 4], 1            ; F6 47 04 01
        je      L_05A5                          ; 74 05
        mov     ax, 0x80                        ; B8 80 00
        jmp     L_05A7                          ; EB 02
L_05A5:
        sub     ax, ax                          ; 2B C0
L_05A7:
        sub     dx, dx                          ; 2B D2
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 4]          ; FF 70 04
        push    word ptr [bx + si + 2]          ; FF 70 02
        push    word ptr [bp - 0x48]            ; FF 76 B8
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        mov     bx, word ptr [bp - 0x54]        ; 8B 5E AC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        sub     ax, word ptr [bp - 0x4c]        ; 2B 46 B4
        sbb     dx, word ptr [bp - 0x4a]        ; 1B 56 B6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A AA 02 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 0x12]       ; FF 70 12
        call    far _entry_119                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x48]            ; FF 76 B8
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ax                              ; 50
        call    far _entry_233                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        inc     ax                              ; 40
        jne     L_0618                          ; 75 05
        mov     word ptr [bp - 0x56], 0         ; C7 46 AA 00 00
L_0618:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        mov     word ptr [bx + si + 0x12], ax   ; 89 40 12
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_0639                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_063B                          ; EB 02
L_0639:
        sub     ax, ax                          ; 2B C0
L_063B:
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
L_063E:
        call    far USER.CLOSECLIPBOARD         ; 9A 34 07 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0655                          ; E8 0D 00
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
L_064B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0655 -- offset 0x0655 -- 92 instr
; Funcion compleja: 92 instrucciones, 5 llamadas, 8 branches.
; tags: calls_user, complex, far
; callers: sub_00D0, sub_01DD, sub_0505
; calls (intra): sub_03E9
; calls (inter): USER.CLOSECLIPBOARD, USER.EMPTYCLIPBOARD, USER.OPENCLIPBOARD, USER.SETCLIPBOARDDATA
;----------------------------------------------------------------------
L_0655:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x30                        ; 83 EC 30
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xc20]                ; F7 2E 20 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        push    word ptr [0x10f4]               ; FF 36 F4 10
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0693                          ; 75 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E9                          ; E8 59 FD
        jmp     L_0738                          ; E9 A5 00
L_0693:
        mov     word ptr [0x73e], 1             ; C7 06 3E 07 01 00
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x73e], 0             ; C7 06 3E 07 00 00
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A A9 01 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_06CE                          ; 74 16
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 0x2e], dx        ; 39 56 D2
        jne     L_06CE                          ; 75 0A
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jne     L_06CE                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_06D0                          ; EB 02
L_06CE:
        sub     ax, ax                          ; 2B C0
L_06D0:
        mov     word ptr [0x66], ax             ; A3 66 00
        or      ax, ax                          ; 0B C0
        jne     L_06DE                          ; 75 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_0706                          ; EB 28
L_06DE:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [0xc20]                ; FF 36 20 0C
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        call    far _entry_221                  ; 9A 9C 03 00 00 [FIXUP]
        cmp     word ptr [bp - 0x2c], 0x63      ; 83 7E D4 63
        jne     L_0700                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_0703                          ; EB 03
L_0700:
        mov     ax, 3                           ; B8 03 00
L_0703:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0706:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        or      ax, word ptr [bp - 0x2e]        ; 0B 46 D2
        je      L_0713                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0715                          ; EB 02
L_0713:
        sub     ax, ax                          ; 2B C0
L_0715:
        mov     word ptr [0x7b0], ax            ; A3 B0 07
        or      ax, ax                          ; 0B C0
        je      L_0733                          ; 74 17
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETCLIPBOARDDATA       ; 9A 2F 07 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
L_0733:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
L_0738:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0742 -- offset 0x0742 -- 202 instr
; Dispatcher: tabla de decisiones cmp+jcc (202 instr).
; tags: dispatcher
; callers: sub_02CF, sub_0318
;----------------------------------------------------------------------
L_0742:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x26                        ; 83 EC 26
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_41                   ; 9A F4 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0766                          ; 75 03
        jmp     L_0959                          ; E9 F3 01
L_0766:
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 5A 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        or      ax, dx                          ; 0B C2
        jne     L_077C                          ; 75 03
        jmp     L_0959                          ; E9 DD 01
L_077C:
        call    far _entry_39                   ; 9A 46 01 00 00 [FIXUP]
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jl      L_079B                          ; 7C 0D
        jg      L_0796                          ; 7F 06
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jbe     L_079B                          ; 76 05
L_0796:
        call    far _entry_232                  ; 9A FF FF 00 00 [FIXUP]
L_079B:
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        mov     si, 0xa5e                       ; BE 5E 0A
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FD 07 00 00 [FIXUP]
        test    byte ptr [0xb82], 0x10          ; F6 06 82 0B 10
        je      L_0832                          ; 74 69
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0832                          ; 7C 63
        jg      L_07D7                          ; 7F 06
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jbe     L_0832                          ; 76 5B
L_07D7:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        or      byte ptr [bx + si + 6], 1       ; 80 48 06 01
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A AD 06 00 00 [FIXUP]
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        cmp     word ptr [bp - 6], dx           ; 39 56 FA
        jne     L_0812                          ; 75 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0832                          ; 74 20
L_0812:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0xb72                       ; B8 72 0B
        push    ax                              ; 50
        call    far _entry_170                  ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 0x16], 2         ; 83 46 EA 02
        adc     word ptr [bp - 0x14], 0         ; 83 56 EC 00
L_0832:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 18 01 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 21 01 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        sub     cx, ax                          ; 2B C8
        sbb     bx, dx                          ; 1B DA
        push    bx                              ; 53
        push    cx                              ; 51
        call    far _entry_238                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0899                          ; 74 03
        jmp     L_094E                          ; E9 B5 00
L_0899:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        adc     dx, word ptr [bp - 0x14]        ; 13 56 EC
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        cmp     word ptr [0x66], 0              ; 83 3E 66 00 00
        je      L_08CA                          ; 74 0D
        cmp     word ptr [0xcac], 2             ; 83 3E AC 0C 02
        jne     L_08CA                          ; 75 06
        mov     word ptr [0xcac], 0x27          ; C7 06 AC 0C 27 00
L_08CA:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0906                          ; 74 36
        mov     byte ptr [bp - 0x26], 0x1a      ; C6 46 DA 1A
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0x25]                 ; 8D 46 DB
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, word ptr [bp - 0x16]        ; 03 46 EA
        adc     dx, word ptr [bp - 0x14]        ; 13 56 EC
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_224                  ; 9A CF 01 00 00 [FIXUP]
L_0906:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        mov     di, 0xa5e                       ; BF 5E 0A
        lea     si, [bp - 0x12]                 ; 8D 76 EE
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        test    byte ptr [0x107f], 1            ; F6 06 7F 10 01
        jne     L_0932                          ; 75 07
        test    byte ptr [0x107f], 2            ; F6 06 7F 10 02
        je      L_0947                          ; 74 15
L_0932:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_237                  ; 9A FF FF 00 00 [FIXUP]
L_0947:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0953                          ; 74 05
L_094E:
        call    far _entry_39                   ; 9A 21 04 00 00 [FIXUP]
L_0953:
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
L_0959:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
