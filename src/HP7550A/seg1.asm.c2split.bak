; ======================================================================
; HP7550A / seg1.asm   (segment 1 of HP7550A)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                  430
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original HP7550A segment 1
; segment_size=16122 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HP7550A_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0032                          ; 74 1F
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_0032                          ; 74 18
        cmp     word ptr es:[bx + 7], -1        ; 26 83 7F 07 FF
        je      L_0032                          ; 74 11
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 7E 05
;   [conditional branch target (if/else)] L_0032
L_0032:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8e                        ; 81 EC 8E 00
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A69                          ; E8 0C 1A
        test    word ptr [bp + 0x12], 1         ; F7 46 12 01 00
        jne     L_0067                          ; 75 03
        jmp     L_00EA                          ; E9 83 00
;   [conditional branch target (if/else)] L_0067
L_0067:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        jmp     L_007B                          ; EB 03
;   [loop start] L_0078
L_0078:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_007B
L_007B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0078                          ; 75 F1
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0234                          ; E8 9E 01
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [0x2a], ax             ; A3 2A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00B7                          ; 74 13
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0x24], 0x12   ; 26 83 7F 24 12
        jne     L_00B7                          ; 75 09
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_202D                          ; E8 76 1F
;   [conditional branch target (if/else)] L_00B7
L_00B7:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2066                          ; E8 A6 1F
        mov     word ptr [bp - 8], 0x10         ; C7 46 F8 10 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_00CA
L_00CA:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 0x68       ; 83 7E F6 68
        jl      L_00CA                          ; 7C E6
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_0228                          ; E9 3E 01
;   [unconditional branch target] L_00EA
L_00EA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00FB                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x56]     ; 26 8B 47 56
        jmp     L_00FD                          ; EB 02
;   [conditional branch target (if/else)] L_00FB
L_00FB:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_00FD
L_00FD:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xd], ax      ; 26 89 47 0D
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0115                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x58]     ; 26 8B 47 58
        jmp     L_0117                          ; EB 02
;   [conditional branch target (if/else)] L_0115
L_0115:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_0117
L_0117:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xf], ax      ; 26 89 47 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_012F                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x24]     ; 26 8B 47 24
        jmp     L_0132                          ; EB 03
;   [conditional branch target (if/else)] L_012F
L_012F:
        mov     ax, 0x13                        ; B8 13 00
;   [unconditional branch target] L_0132
L_0132:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x11], ax     ; 26 89 47 11
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_014A                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        jmp     L_014D                          ; EB 03
;   [conditional branch target (if/else)] L_014A
L_014A:
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
;   [unconditional branch target] L_014D
L_014D:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x13], ax     ; 26 89 47 13
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0234                          ; E8 D3 00
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 0xb]      ; 26 8B 47 0B
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], ss        ; 8C 96 74 FF
;   [loop start] L_017E
L_017E:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_017E                          ; 75 E8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     byte ptr es:[bx], 1             ; 26 C6 07 01
        mov     word ptr es:[bx + 0x17], 0x200  ; 26 C7 47 17 00 02
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        mov     word ptr es:[bx + 5], 0         ; 26 C7 47 05 00 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     word ptr es:[bx + 1], ax        ; 26 89 47 01
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     word ptr es:[bx + 3], ax        ; 26 89 47 03
        mov     ax, word ptr [0x28]             ; A1 28 00
        mov     word ptr es:[bx + 0x227], ax    ; 26 89 87 27 02
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        mov     word ptr es:[bx + 0x22d], 0     ; 26 C7 87 2D 02 00 00
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
        mov     word ptr es:[bx + 0x233], 0     ; 26 C7 87 33 02 00 00
        mov     word ptr es:[bx + 0x235], 0     ; 26 C7 87 35 02 00 00
        mov     word ptr es:[bx + 0x237], 0     ; 26 C7 87 37 02 00 00
        mov     word ptr es:[bx + 0x239], 2     ; 26 C7 87 39 02 02 00
        mov     word ptr es:[bx + 0x23b], 3     ; 26 C7 87 3B 02 03 00
        mov     word ptr es:[bx + 0x23d], 2     ; 26 C7 87 3D 02 02 00
        mov     word ptr es:[bx + 0x23f], 3     ; 26 C7 87 3F 02 03 00
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_0228
L_0228:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Pure computation / dispatcher (295 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0234   offset=0x0234  size=295 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_149D, L_17DF, L_1C4D
;-------------------------------------------------------------------------
;   [sub-routine] L_0234
L_0234:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_024D                          ; 75 03
        jmp     L_03CB                          ; E9 7E 01
;   [conditional branch target (if/else)] L_024D
L_024D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_0273                          ; 74 1A
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0261                          ; 75 03
        jmp     L_0315                          ; E9 B4 00
;   [conditional branch target (if/else)] L_0261
L_0261:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0269                          ; 75 03
        jmp     L_035E                          ; E9 F5 00
;   [conditional branch target (if/else)] L_0269
L_0269:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_0271                          ; 75 03
        jmp     L_0394                          ; E9 23 01
;   [conditional branch target (if/else)] L_0271
L_0271:
        jmp     L_02C0                          ; EB 4D
;   [conditional branch target (if/else)] L_0273
L_0273:
        mov     word ptr [0x14], 0xfe           ; C7 06 14 00 FE 00
        mov     word ptr [0x16], 0xc4           ; C7 06 16 00 C4 00
        mov     word ptr [0x18], 0xd3e          ; C7 06 18 00 3E 0D
        mov     word ptr [0x1a], 0xa35          ; C7 06 1A 00 35 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_02C0                          ; 74 2D
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x21b], 0xe8d ; 26 C7 87 1B 02 8D 0E
        mov     word ptr es:[bx + 0x21d], 0xb3e ; 26 C7 87 1D 02 3E 0B
;   [loop start] L_02A4
L_02A4:
        mov     word ptr es:[bx + 0x21f], 0x28  ; 26 C7 87 1F 02 28 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x38  ; 26 C7 87 23 02 38 00
;   [loop start] L_02B9
L_02B9:
        mov     word ptr es:[bx + 0x225], 0     ; 26 C7 87 25 02 00 00
;   [loop start (also forward branch)] L_02C0
L_02C0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_02CB                          ; 75 03
        jmp     L_0457                          ; E9 8C 01
;   [conditional branch target (if/else)] L_02CB
L_02CB:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x241], 0xffff ; 26 C7 87 41 02 FF FF
        mov     word ptr es:[bx + 0x243], 0xff  ; 26 C7 87 43 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_02E1
L_02E1:
        cmp     word ptr [bp - 4], 9            ; 83 7E FC 09
        jl      L_02EA                          ; 7C 03
        jmp     L_0457                          ; E9 6D 01
;   [conditional branch target (if/else)] L_02EA
L_02EA:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + si + 0x22] ; 26 8B 40 22
        mov     dx, word ptr es:[bx + si + 0x24] ; 26 8B 50 24
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + si + 0x241], ax ; 26 89 80 41 02
        mov     word ptr es:[bx + si + 0x243], dx ; 26 89 90 43 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_02E1                          ; EB CC
;   [unconditional branch target] L_0315
L_0315:
        mov     word ptr [0x14], 0x19b          ; C7 06 14 00 9B 01
        mov     word ptr [0x16], 0xfe           ; C7 06 16 00 FE 00
        mov     word ptr [0x18], 0x156b         ; C7 06 18 00 6B 15
        mov     word ptr [0x1a], 0xd3e          ; C7 06 1A 00 3E 0D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_02C0                          ; 74 8B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x21b], 0x167d ; 26 C7 87 1B 02 7D 16
        mov     word ptr es:[bx + 0x21d], 0xe8d ; 26 C7 87 1D 02 8D 0E
;   [loop start] L_0346
L_0346:
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x2d  ; 26 C7 87 21 02 2D 00
        mov     word ptr es:[bx + 0x223], 0x2d  ; 26 C7 87 23 02 2D 00
        jmp     L_02B9                          ; E9 5B FF
;   [unconditional branch target] L_035E
L_035E:
        mov     word ptr [0x14], 0x18f          ; C7 06 14 00 8F 01
        mov     word ptr [0x16], 0x10f          ; C7 06 16 00 0F 01
        mov     word ptr [0x18], 0x14cb         ; C7 06 18 00 CB 14
        mov     word ptr [0x1a], 0xe27          ; C7 06 1A 00 27 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_0381                          ; 75 03
        jmp     L_02C0                          ; E9 3F FF
;   [conditional branch target (if/else)] L_0381
L_0381:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x21b], 0x15e0 ; 26 C7 87 1B 02 E0 15
        mov     word ptr es:[bx + 0x21d], 0xf78 ; 26 C7 87 1D 02 78 0F
        jmp     L_0346                          ; EB B2
;   [unconditional branch target] L_0394
L_0394:
        mov     word ptr [0x14], 0x10f          ; C7 06 14 00 0F 01
        mov     word ptr [0x16], 0xbe           ; C7 06 16 00 BE 00
        mov     word ptr [0x18], 0xe27          ; C7 06 18 00 27 0E
        mov     word ptr [0x1a], 0x9e5          ; C7 06 1A 00 E5 09
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_03B7                          ; 75 03
        jmp     L_02C0                          ; E9 09 FF
;   [conditional branch target (if/else)] L_03B7
L_03B7:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x21b], 0xf78 ; 26 C7 87 1B 02 78 0F
        mov     word ptr es:[bx + 0x21d], 0xaf0 ; 26 C7 87 1D 02 F0 0A
        jmp     L_02A4                          ; E9 D9 FE
;   [unconditional branch target] L_03CB
L_03CB:
        mov     word ptr [0x14], 0xfe           ; C7 06 14 00 FE 00
        mov     word ptr [0x16], 0xc4           ; C7 06 16 00 C4 00
        mov     word ptr [0x18], 0xd3e          ; C7 06 18 00 3E 0D
        mov     word ptr [0x1a], 0xa35          ; C7 06 1A 00 35 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_0457                          ; 74 6C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x241], 0xffff ; 26 C7 87 41 02 FF FF
        mov     word ptr es:[bx + 0x243], 0xff  ; 26 C7 87 43 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_0401
L_0401:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x1b0]       ; 8B 87 B0 01
        mov     dx, word ptr [bx + 0x1b2]       ; 8B 97 B2 01
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + si + 0x241], ax ; 26 89 80 41 02
        mov     word ptr es:[bx + si + 0x243], dx ; 26 89 90 43 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 9            ; 83 7E FC 09
        jl      L_0401                          ; 7C D4
        mov     word ptr es:[bx + 0x21b], 0xe8d ; 26 C7 87 1B 02 8D 0E
        mov     word ptr es:[bx + 0x21d], 0xb3e ; 26 C7 87 1D 02 3E 0B
        mov     word ptr es:[bx + 0x21f], 0x28  ; 26 C7 87 1F 02 28 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x38  ; 26 C7 87 23 02 38 00
        mov     word ptr es:[bx + 0x225], 0     ; 26 C7 87 25 02 00 00
;   [branch target] L_0457
L_0457:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_046F                          ; 74 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x265                       ; 05 65 02
        sub     ax, bx                          ; 2B C3
        mov     word ptr es:[bx + 0xb], ax      ; 26 89 47 0B
;   [conditional branch target (if/else)] L_046F
L_046F:
        mov     ax, 0x266                       ; B8 66 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_047E
L_047E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x239], 2     ; 26 C7 87 39 02 02 00
        mov     word ptr es:[bx + 0x23b], 3     ; 26 C7 87 3B 02 03 00
        mov     word ptr es:[bx + 0x23d], 2     ; 26 C7 87 3D 02 02 00
        mov     word ptr es:[bx + 0x23f], 3     ; 26 C7 87 3F 02 03 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_04B3                          ; 75 03
        jmp     L_05A5                          ; E9 F2 00
;   [conditional branch target (if/else)] L_04B3
L_04B3:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x78                        ; B8 78 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 8A 17
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_04D9                          ; 75 0C
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x81                        ; B8 81 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_04E7                          ; EB 0E
;   [conditional branch target (if/else)] L_04D9
L_04D9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x85                        ; B8 85 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
;   [unconditional branch target] L_04E7
L_04E7:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 60 17
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xd], 0       ; 26 83 7F 0D 00
        je      L_0516                          ; 74 1F
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x8d                        ; B8 8D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xd                         ; 05 0D 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 89 0F
        jmp     L_052A                          ; EB 14
;   [conditional branch target (if/else)] L_0516
L_0516:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x90                        ; B8 90 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 23 17
;   [unconditional branch target] L_052A
L_052A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0       ; 26 83 7F 0F 00
        je      L_0553                          ; 74 1F
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x94                        ; B8 94 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xf                         ; 05 0F 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 4C 0F
        jmp     L_0567                          ; EB 14
;   [conditional branch target (if/else)] L_0553
L_0553:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x97                        ; B8 97 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 E6 16
;   [unconditional branch target] L_0567
L_0567:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x229]    ; 26 8B 87 29 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 5F 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x9b                        ; B8 9B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 B9 16
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22f], 0     ; 26 C7 87 2F 02 00 00
        mov     word ptr es:[bx + 0x231], 0     ; 26 C7 87 31 02 00 00
;   [unconditional branch target] L_05A5
L_05A5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (135 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_05B0   offset=0x05B0  size=135 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_149D, L_1C4D, L_1CE0
;-------------------------------------------------------------------------
;   [sub-routine] L_05B0
L_05B0:
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
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_05D1                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_09AC                          ; E9 DB 03
;   [conditional branch target (if/else)] L_05D1
L_05D1:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_05DF                          ; 76 03
        jmp     L_09A9                          ; E9 CA 03
;   [conditional branch target (if/else)] L_05DF
L_05DF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x98d]        ; 2E FF A7 8D 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x15]     ; 26 8B 47 15
        inc     word ptr es:[bx + 0x15]         ; 26 FF 47 15
        or      ax, ax                          ; 0B C0
        jne     L_063E                          ; 75 3A
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_061F                          ; 75 14
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        jmp     L_0634                          ; EB 15
;   [conditional branch target (if/else)] L_061F
L_061F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
;   [unconditional branch target] L_0634
L_0634:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_087C                          ; E9 3E 02
;   [conditional branch target (if/else)] L_063E
L_063E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_065C                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_065F                          ; EB 03
;   [conditional branch target (if/else)] L_065C
L_065C:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_065F
L_065F:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x15], 0      ; 26 C7 47 15 00 00
        cmp     word ptr es:[bx + 9], 0         ; 26 83 7F 09 00
        jne     L_0675                          ; 75 03
        jmp     L_09A9                          ; E9 34 03
;   [conditional branch target (if/else)] L_0675
L_0675:
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_0697                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb2                        ; B8 B2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C0 15
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_0697
L_0697:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb6                        ; B8 B6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 9C 15
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x13], 0xe    ; 26 83 7F 13 0E
        jne     L_06CD                          ; 75 12
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xbd                        ; B8 BD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 82 15
        jmp     L_0709                          ; EB 3C
;   [conditional branch target (if/else)] L_06CD
L_06CD:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xc1                        ; B8 C1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 A5 0D
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
;   [unconditional branch target] L_0709
L_0709:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CE0                          ; E8 CC 15
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        jmp     L_09A9                          ; E9 7D 02
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CE0                          ; E8 A9 15
        jmp     L_087C                          ; E9 42 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_0759                          ; 75 15
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21d]    ; 26 8B 87 1D 02
        jmp     L_076F                          ; EB 16
;   [conditional branch target (if/else)] L_0759
L_0759:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21d]    ; 26 8B 87 1D 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
;   [loop start (also forward branch)] L_076F
L_076F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_087C                          ; E9 03 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_0798                          ; 75 15
        mov     ax, word ptr es:[bx + 0x21f]    ; 26 8B 87 1F 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x221]    ; 26 8B 87 21 02
        jmp     L_076F                          ; EB D7
;   [conditional branch target (if/else)] L_0798
L_0798:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x223]    ; 26 8B 87 23 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x225]    ; 26 8B 87 25 02
        jmp     L_076F                          ; EB BF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x15], 0      ; 26 C7 47 15 00 00
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_07DA                          ; 74 1A
        cmp     word ptr es:[bx + 7], -1        ; 26 83 7F 07 FF
        je      L_07DA                          ; 74 13
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 D8 FD
        jmp     L_07E3                          ; EB 09
;   [conditional branch target (if/else)] L_07DA
L_07DA:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
;   [unconditional branch target] L_07E3
L_07E3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0xb]      ; 26 8B 47 0B
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], ax        ; 26 89 47 07
        inc     ax                              ; 40
        jne     L_080C                          ; 75 03
        jmp     L_09A9                          ; E9 9D 01
;   [conditional branch target (if/else)] L_080C
L_080C:
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_047E                          ; E8 67 FC
        jmp     L_087C                          ; EB 63
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xc4                        ; B8 C4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 20 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 6E FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        jmp     L_087C                          ; EB 23
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0867                          ; 7D 03
        jmp     L_09A9                          ; E9 42 01
;   [conditional branch target (if/else)] L_0867
L_0867:
        cmp     ax, 6                           ; 3D 06 00
        jle     L_087C                          ; 7E 10
        cmp     ax, 8                           ; 3D 08 00
        jge     L_0874                          ; 7D 03
        jmp     L_09A9                          ; E9 35 01
;   [conditional branch target (if/else)] L_0874
L_0874:
        cmp     ax, 0xd                         ; 3D 0D 00
        jle     L_087C                          ; 7E 03
        jmp     L_09A9                          ; E9 2D 01
;   [loop start (also forward branch)] L_087C
L_087C:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_09A9                          ; E9 25 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 5], ax        ; 26 89 47 05
        jmp     L_087C                          ; EB E9
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xc8                        ; B8 C8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 86 13
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xce                        ; B8 CE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 65 13
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x13], 0xe    ; 26 83 7F 13 0E
        jne     L_0905                          ; 75 13
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xd5                        ; B8 D5 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 4B 13
        jmp     L_087C                          ; E9 77 FF
;   [conditional branch target (if/else)] L_0905
L_0905:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xd9                        ; B8 D9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 6D 0B
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
        jmp     L_087C                          ; E9 38 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jge     L_0951                          ; 7D 04
        xor     si, si                          ; 33 F6
        jmp     L_096F                          ; EB 1E
;   [conditional branch target (if/else)] L_0951
L_0951:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        jg      L_0969                          ; 7F 08
        mov     si, word ptr es:[bx + 0x227]    ; 26 8B B7 27 02
        dec     si                              ; 4E
        jmp     L_096F                          ; EB 06
;   [conditional branch target (if/else)] L_0969
L_0969:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx]            ; 26 8B 37
;   [unconditional branch target] L_096F
L_096F:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + si + 0x241] ; 26 8B 80 41 02
        mov     dx, word ptr es:[bx + si + 0x243] ; 26 8B 90 43 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        jmp     L_087C                          ; E9 EF FE
        dec     bp                              ; 4D
        push    es                              ; 06
        xchg    bx, ax                          ; 93
        or      bh, ah                          ; 08 E7
        add     ax, 0x944                       ; 05 44 09
        inc     sp                              ; 44
        or      word ptr [si], bp               ; 09 2C
        pop     es                              ; 07
        test    ax, 0x5909                      ; A9 09 59
        or      byte ptr [si - 0x4ff8], al      ; 08 84 08 B0
        pop     es                              ; 07
        sbb     word ptr [bx + si], cx          ; 19 08
        cmp     al, byte ptr [bx]               ; 3A 07
        jns     L_09AE                          ; 79 07
        test    ax, 0x8b09                      ; A9 09 8B
        inc     si                              ; 46
        clc                                     ; F8
;   [unconditional branch target] L_09AC
L_09AC:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        L_09A9:
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        L_09AE:
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [0x10e], 0             ; 83 3E 0E 01 00
        je      L_09D0                          ; 74 03
        jmp     L_0AA8                          ; E9 D8 00
;   [conditional branch target (if/else)] L_09D0
L_09D0:
        mov     word ptr [0x10e], 1             ; C7 06 0E 01 01 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xdc                        ; B8 DC 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 43 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x5e                        ; B8 5E 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x5e                        ; 3D 5E 00
        jne     L_0A1A                          ; 75 13
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0xe5                        ; B8 E5 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A7C                          ; 74 62
;   [conditional branch target (if/else)] L_0A1A
L_0A1A:
        mov     word ptr [0x484], 0x13          ; C7 06 84 04 13 00
        mov     word ptr [0x482], 0xe           ; C7 06 82 04 0E 00
        mov     word ptr [0x480], 0xa           ; C7 06 80 04 0A 00
        mov     word ptr [0x4b6], 0x32          ; C7 06 B6 04 32 00
        mov     word ptr [0x4b8], 2             ; C7 06 B8 04 02 00
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xee                        ; B8 EE 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B7 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_0A4C
L_0A4C:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     word ptr [bx + 0x4a6], si       ; 89 B7 A6 04
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x1b4]       ; 8B 84 B4 01
        mov     dx, word ptr [si + 0x1b6]       ; 8B 94 B6 01
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x486], ax       ; 89 87 86 04
        mov     word ptr [bx + 0x488], dx       ; 89 97 88 04
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jl      L_0A4C                          ; 7C D0
;   [conditional branch target (if/else)] L_0A7C
L_0A7C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0xf7                        ; B8 F7 00
        push    ds                              ; 1E
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hWndOwner
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpDialogFunc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0AAC                          ; 75 13
        mov     word ptr [0x10e], 0             ; C7 06 0E 01 00 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A F0 0A 00 00 [FIXUP]
;   [unconditional branch target] L_0AA8
L_0AA8:
        xor     ax, ax                          ; 33 C0
        jmp     L_0AF7                          ; EB 4B
;   [conditional branch target (if/else)] L_0AAC
L_0AAC:
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x104                       ; B8 04 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x460                       ; B8 60 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x5e                        ; B8 5E 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10e], 0             ; C7 06 0E 01 00 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0AF7
L_0AF7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0B2C                          ; 74 13
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0B21                          ; 75 03
        jmp     L_0E0E                          ; E9 ED 02
;   [conditional branch target (if/else)] L_0B21
L_0B21:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_0B29                          ; 75 03
        jmp     L_0C88                          ; E9 5F 01
;   [conditional branch target (if/else)] L_0B29
L_0B29:
        jmp     L_0FB9                          ; E9 8D 04
;   [conditional branch target (if/else)] L_0B2C
L_0B2C:
        mov     word ptr [0x4ba], 0x28          ; C7 06 BA 04 28 00
        mov     ax, word ptr [0x4a6]            ; A1 A6 04
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x4bc], ax            ; A3 BC 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x480]                ; FF 36 80 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 57 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x482]                ; FF 36 82 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 67 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x484]                ; FF 36 84 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 77 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4ba]                ; FF 36 BA 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 87 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4bc]                ; FF 36 BC 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0x1e         ; C7 46 FC 1E 00
;   [loop start] L_0B90
L_0B90:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x46a]       ; 8B 87 6A 04
        add     ax, 0x14                        ; 05 14 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0x26         ; 83 7E FC 26
        jl      L_0B90                          ; 7C C9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A F1 0B 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 38 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 22 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x4b6]                ; FF 36 B6 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 56 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [0x4b6]                ; FF 36 B6 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 6F 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 44 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 7B 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x4b8]                ; FF 36 B8 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 37 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     bx, word ptr [0x4b8]            ; 8B 1E B8 04
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x110]           ; FF B7 10 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 49 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0FB9                          ; E9 31 03
;   [unconditional branch target] L_0C88
L_0C88:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0C9C                          ; 75 03
        jmp     L_0D56                          ; E9 BA 00
;   [conditional branch target (if/else)] L_0C9C
L_0C9C:
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0CA4                          ; 74 03
        jmp     L_0FB9                          ; E9 15 03
;   [conditional branch target (if/else)] L_0CA4
L_0CA4:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A 5E 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 7                           ; 3D 07 00
        ja      L_0CFF                          ; 77 44
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xcef]        ; 2E FF A7 EF 0C
        dec     word ptr [bp - 0x18]            ; FF 4E E8
        jmp     L_0CFF                          ; EB 37
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_0CFF                          ; EB 32
        sub     word ptr [bp - 0x18], 0xa       ; 83 6E E8 0A
        jmp     L_0CFF                          ; EB 2C
        add     word ptr [bp - 0x18], 0xa       ; 83 46 E8 0A
        jmp     L_0CFF                          ; EB 26
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_0CFF                          ; EB 1E
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
        jmp     L_0CFF                          ; EB 17
        mov     word ptr [bp - 0x18], 0x50      ; C7 46 E8 50 00
        jmp     L_0CFF                          ; EB 10
        ret                                     ; C3
        or      al, 0xc8                        ; 0C C8
        or      al, 0xcd                        ; 0C CD
        or      al, 0xd3                        ; 0C D3
        or      al, 0xd9                        ; 0C D9
        or      al, 0xff                        ; 0C FF
        or      al, 0xe1                        ; 0C E1
        or      al, 0xe8                        ; 0C E8
        or      al, 0x83                        ; 0C 83
        jle     L_0CEA                          ; 7E E8
        push    ax                              ; 50
        jle     L_0D0A                          ; 7E 05
        mov     ax, 0x50                        ; B8 50 00
        jmp     L_0D0D                          ; EB 03
;   [conditional branch target (if/else)] L_0D0A
L_0D0A:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
;   [unconditional branch target] L_0D0D
L_0D0D:
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0D17                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D25                          ; EB 0E
;   [conditional branch target (if/else)] L_0D17
L_0D17:
        cmp     word ptr [bp - 0x18], 0x50      ; 83 7E E8 50
        jle     L_0D22                          ; 7E 05
        mov     ax, 0x50                        ; B8 50 00
        jmp     L_0D25                          ; EB 03
;   [conditional branch target (if/else)] L_0D22
L_0D22:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
;   [unconditional branch target] L_0D25
L_0D25:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x4b6], ax            ; A3 B6 04
        jmp     L_0FB9                          ; E9 63 02
;   [unconditional branch target] L_0D56
L_0D56:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 7                           ; 3D 07 00
        ja      L_0DB1                          ; 77 44
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xda1]        ; 2E FF A7 A1 0D
        dec     word ptr [bp - 6]               ; FF 4E FA
        jmp     L_0DB1                          ; EB 37
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0DB1                          ; EB 32
        sub     word ptr [bp - 6], 2            ; 83 6E FA 02
        jmp     L_0DB1                          ; EB 2C
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        jmp     L_0DB1                          ; EB 26
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0DB1                          ; EB 1E
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0DB1                          ; EB 17
        mov     word ptr [bp - 6], 8            ; C7 46 FA 08 00
        jmp     L_0DB1                          ; EB 10
        jne     L_0DB0                          ; 75 0D
        jp      L_0DB2                          ; 7A 0D
        jg      L_0DB4                          ; 7F 0D
        test    word ptr [di], cx               ; 85 0D
        mov     cx, word ptr [di]               ; 8B 0D
        ; constant VK_RETURN
        mov     cl, 0xd                         ; B1 0D
        xchg    bx, ax                          ; 93
        or      ax, 0xd9a                       ; 0D 9A 0D
;   [branch target] L_0DB1
L_0DB1:
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jle     L_0DBC                          ; 7E 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0DBF                          ; EB 03
;   [conditional branch target (if/else)] L_0DBC
L_0DBC:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0DBF
L_0DBF:
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0DC9                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DD7                          ; EB 0E
;   [conditional branch target (if/else)] L_0DC9
L_0DC9:
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jle     L_0DD4                          ; 7E 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_0DD7                          ; EB 03
;   [conditional branch target (if/else)] L_0DD4
L_0DD4:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0DD7
L_0DD7:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 03 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x110]           ; FF B7 10 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 16 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x4b8], ax            ; A3 B8 04
        jmp     L_0FB9                          ; E9 AB 01
;   [unconditional branch target] L_0E0E
L_0E0E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x2e                        ; 3D 2E 00
        jbe     L_0E1C                          ; 76 03
        jmp     L_0FB9                          ; E9 9D 01
;   [conditional branch target (if/else)] L_0E1C
L_0E1C:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xf56]        ; 2E FF A7 56 0F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x484]                ; FF 36 84 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 42 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x484], ax            ; A3 84 04
;   [loop start] L_0E3C
L_0E3C:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 54 0E 00 00 [FIXUP]
        jmp     L_0FB4                          ; E9 6B 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x482]                ; FF 36 82 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 6E 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x482], ax            ; A3 82 04
        jmp     L_0E3C                          ; EB D9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x480]                ; FF 36 80 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 88 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x480], ax            ; A3 80 04
        jmp     L_0E3C                          ; EB BF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4ba]                ; FF 36 BA 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 9B 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4ba], ax            ; A3 BA 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A AA 0E 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4bc]                ; FF 36 BC 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FE 0E 00 00 [FIXUP]
        mov     bx, word ptr [0x4ba]            ; 8B 1E BA 04
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x456]       ; 8B 87 56 04
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x4bc], ax            ; A3 BC 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        jmp     L_0E3C                          ; E9 78 FF
        mov     bx, word ptr [0x4ba]            ; 8B 1E BA 04
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x14                        ; 2D 14 00
        mov     word ptr [bx + 0x456], ax       ; 89 87 56 04
        mov     bx, word ptr [0x4ba]            ; 8B 1E BA 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x164]       ; 8B 84 64 01
        mov     dx, word ptr [si + 0x166]       ; 8B 94 66 01
        mov     word ptr [bx + 0x3e6], ax       ; 89 87 E6 03
        mov     word ptr [bx + 0x3e8], dx       ; 89 97 E8 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4bc]                ; FF 36 BC 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 11 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4bc], ax            ; A3 BC 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 47 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x4bc]                ; FF 36 BC 04
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A AA 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, word ptr [0x4ba]            ; A1 BA 04
        sub     ax, 0xa                         ; 2D 0A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A BA 0B 00 00 [FIXUP]
        jmp     L_0FB4                          ; EB 74
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0F46
L_0F46:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0FB4                          ; EB 66
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 2                           ; B8 02 00
        jmp     L_0F46                          ; EB F0
        inc     ax                              ; 40
        cmovle  cx, word ptr [bx]               ; 0F 4E 0F
        mov     cx, 0xb90f                      ; B9 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        packsswb mm1, qword ptr [0xe63]         ; 0F 63 0E 63 0E
        arpl    word ptr [0xe63], cx            ; 63 0E 63 0E
        dec     cx                              ; 49
        push    cs                              ; 0E
        dec     cx                              ; 49
        push    cs                              ; 0E
        mov     cx, 0xb90f                      ; B9 0F B9
        db      00fh                            ; 0F
        and     al, 0xe                         ; 24 0E
        and     al, 0xe                         ; 24 0E
        les     cx, ptr [0xec4]                 ; C4 0E C4 0E
        les     cx, ptr [0xec4]                 ; C4 0E C4 0E
        les     cx, ptr [0xec4]                 ; C4 0E C4 0E
        les     cx, ptr [0xec4]                 ; C4 0E C4 0E
        les     cx, ptr [0xec4]                 ; C4 0E C4 0E
        mov     cx, 0xb90f                      ; B9 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        ud1                                     ; 0F B9
        db      00fh                            ; 0F
        jge     L_0FB4                          ; 7D 0E
        jge     L_0FB6                          ; 7D 0E
        jge     L_0FB8                          ; 7D 0E
        jge     L_0FBA                          ; 7D 0E
        jge     L_0FBC                          ; 7D 0E
        jge     L_0FBE                          ; 7D 0E
        jge     L_0FC0                          ; 7D 0E
        jge     L_0FC2                          ; 7D 0E
;   [branch target] L_0FB4
L_0FB4:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0FBB                          ; EB 02
;   [unconditional branch target] L_0FB9
L_0FB9:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_0FBB
L_0FBB:
        pop     si                              ; 5E
;   [conditional branch target (if/else)] L_0FBC
L_0FBC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_0FC2
L_0FC2:
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
        sub     sp, 0x48                        ; 83 EC 48
        push    si                              ; 56
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0FE4                          ; 75 06
;   [loop start] L_0FDE
L_0FDE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1071                          ; E9 8D 00
;   [conditional branch target (if/else)] L_0FE4
L_0FE4:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_1000                          ; 74 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x122                       ; B8 22 01
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1AF4                          ; E8 F8 0A
        or      ax, ax                          ; 0B C0
        je      L_0FDE                          ; 74 DE
;   [conditional branch target (if/else)] L_1000
L_1000:
        mov     word ptr [bp - 0xa], 0x170      ; C7 46 F6 70 01
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_1013
L_1013:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1b       ; 83 7E F4 1B
        jl      L_1013                          ; 7C E6
        mov     word ptr [bp - 0xa], 0x18c      ; C7 46 F6 8C 01
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_1040
L_1040:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1f       ; 83 7E F4 1F
        jl      L_1040                          ; 7C E6
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
;   [unconditional branch target] L_1071
L_1071:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        xor     si, si                          ; 33 F6
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_109C                          ; 75 05
;   [loop start] L_1097
L_1097:
        mov     ax, si                          ; 8B C6
        jmp     L_116E                          ; E9 D2 00
;   [conditional branch target (if/else)] L_109C
L_109C:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 1                           ; 3D 01 00
        je      L_10AB                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_1110                          ; 74 67
        jmp     L_1097                          ; EB EC
;   [conditional branch target (if/else)] L_10AB
L_10AB:
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
;   [loop start] L_10BA
L_10BA:
        cmp     word ptr [bp - 0x16], 6         ; 83 7E EA 06
        jge     L_1097                          ; 7D D7
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_10FE                          ; EB 31
;   [loop start] L_10CD
L_10CD:
        L_0FBE:
        mov     di, word ptr [bp - 0x14]        ; 8B 7E EC
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + di + 0x241] ; 26 8B 81 41 02
        mov     dx, word ptr es:[bx + di + 0x243] ; 26 8B 91 43 02
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_1160                          ; 74 65
        inc     word ptr [bp - 0x14]            ; FF 46 EC
;   [unconditional branch target] L_10FE
L_10FE:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        jg      L_10CD                          ; 7F C2
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        jmp     L_10BA                          ; EB AA
;   [conditional branch target (if/else)] L_1110
L_1110:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_1115
L_1115:
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        jl      L_111E                          ; 7C 03
        jmp     L_1097                          ; E9 79 FF
;   [conditional branch target (if/else)] L_111E
L_111E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
;   [loop start] L_1129
L_1129:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        jle     L_1169                          ; 7E 33
        mov     di, ax                          ; 8B F8
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        mov     ax, word ptr es:[bx + di + 0x241] ; 26 8B 81 41 02
        mov     dx, word ptr es:[bx + di + 0x243] ; 26 8B 91 43 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_1164                          ; 75 04
;   [conditional branch target (if/else)] L_1160
L_1160:
        xor     ax, ax                          ; 33 C0
        jmp     L_116E                          ; EB 0A
;   [conditional branch target (if/else)] L_1164
L_1164:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_1129                          ; EB C0
;   [conditional branch target (if/else)] L_1169
L_1169:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1115                          ; EB A7
;   [unconditional branch target] L_116E
L_116E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1195                          ; 75 03
        jmp     L_148F                          ; E9 FA 02
;   [conditional branch target (if/else)] L_1195
L_1195:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_119E                          ; 7D 03
        jmp     L_148F                          ; E9 F1 02
;   [conditional branch target (if/else)] L_119E
L_119E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_11A9                          ; 75 03
        jmp     L_147A                          ; E9 D1 02
;   [conditional branch target (if/else)] L_11A9
L_11A9:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        je      L_11C1                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        je      L_120C                          ; 74 56
        cmp     ax, 3                           ; 3D 03 00
        jne     L_11BE                          ; 75 03
        jmp     L_1254                          ; E9 96 00
;   [conditional branch target (if/else)] L_11BE
L_11BE:
        jmp     L_148F                          ; E9 CE 02
;   [conditional branch target (if/else)] L_11C1
L_11C1:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3350                          ; E8 73 21
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_11EF                          ; 7D 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_11EF
L_11EF:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     ax, 5                           ; 3D 05 00
        jne     L_1206                          ; 75 05
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [loop start (also forward branch)] L_1206
L_1206:
        mov     ax, 4                           ; B8 04 00
        jmp     L_1491                          ; E9 85 02
;   [conditional branch target (if/else)] L_120C
L_120C:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3350                          ; E8 28 21
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_1239                          ; 75 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_1239
L_1239:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 2             ; 26 83 3F 02
        jne     L_1248                          ; 75 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_124B                          ; EB 03
;   [conditional branch target (if/else)] L_1248
L_1248:
        mov     ax, 6                           ; B8 06 00
;   [unconditional branch target] L_124B
L_124B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_1206                          ; EB B2
;   [unconditional branch target] L_1254
L_1254:
        mov     word ptr [bp - 0xe], 0x12a      ; C7 46 F2 2A 01
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_126A
L_126A:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 0x45      ; 83 7E F0 45
        jl      L_126A                          ; 7C E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [0x14d]            ; 03 06 4D 01
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, 0x1ab                       ; B8 AB 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ds         ; 8C 5E F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_12A2
L_12A2:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 8         ; 83 7E F0 08
        jl      L_12A2                          ; 7C E5
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_12CB                          ; 7C 05
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_12D3                          ; EB 08
;   [conditional branch target (if/else)] L_12CB
L_12CB:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_12D3
L_12D3:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_12DF                          ; 75 05
        mov     word ptr [bp - 0x18], 0x36      ; C7 46 E8 36 00
;   [conditional branch target (if/else)] L_12DF
L_12DF:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jl      L_12EF                          ; 7C 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        jmp     L_12F8                          ; EB 09
;   [conditional branch target (if/else)] L_12EF
L_12EF:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_12F8
L_12F8:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_130E                          ; 75 0F
        mov     ax, 0x13                        ; B8 13 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        cdq                                     ; 99
        mov     cx, 0x1b                        ; B9 1B 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_130E
L_130E:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x239]        ; 26 FF B7 39 02
        push    word ptr es:[bx + 0x23b]        ; 26 FF B7 3B 02
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        and     al, 1                           ; 24 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + 0xe], al      ; 26 88 47 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        and     al, 1                           ; 24 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + 0xf], al      ; 26 88 47 0F
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        and     al, 1                           ; 24 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        mov     word ptr es:[bx + 0x1b], ax     ; 26 89 47 1B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx + 0xd], al      ; 26 88 47 0D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx + 0xe], al      ; 26 88 47 0E
        mov     word ptr es:[bx + 0xf], 0       ; 26 C7 47 0F 00 00
        cmp     byte ptr es:[bx + 0xd], 2       ; 26 80 7F 0D 02
        jne     L_1407                          ; 75 07
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        jmp     L_1416                          ; EB 0F
;   [conditional branch target (if/else)] L_1407
L_1407:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xd], 3       ; 26 80 7F 0D 03
        jne     L_1416                          ; 75 05
        or      byte ptr es:[bx + 0xd], 3       ; 26 80 4F 0D 03
;   [branch target] L_1416
L_1416:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xe], 2       ; 26 80 7F 0E 02
        jne     L_1425                          ; 75 05
        or      byte ptr es:[bx + 0xe], 4       ; 26 80 4F 0E 04
;   [conditional branch target (if/else)] L_1425
L_1425:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_144D                          ; 74 1A
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, 0x96                        ; 05 96 00
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jge     L_144D                          ; 7D 0B
        add     word ptr es:[bx + 8], 0x12c     ; 26 81 47 08 2C 01
        or      byte ptr es:[bx + 0x10], 2      ; 26 80 4F 10 02
;   [conditional branch target (if/else)] L_144D
L_144D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_146C                          ; 74 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], ax     ; 26 89 47 11
        jmp     L_1475                          ; EB 09
;   [conditional branch target (if/else)] L_146C
L_146C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
;   [loop start (also forward branch)] L_1475
L_1475:
        mov     ax, 0x45                        ; B8 45 00
        jmp     L_1491                          ; EB 17
;   [unconditional branch target] L_147A
L_147A:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        jl      L_148F                          ; 7C 0D
        cmp     ax, 2                           ; 3D 02 00
        jg      L_148A                          ; 7F 03
        jmp     L_1206                          ; E9 7C FD
;   [conditional branch target (if/else)] L_148A
L_148A:
        cmp     ax, 3                           ; 3D 03 00
        je      L_1475                          ; 74 E6
;   [branch target] L_148F
L_148F:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1491
L_1491:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_149D
L_149D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22e                       ; 81 EC 2E 02
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        inc     word ptr [bp + 0x10]            ; FF 46 10
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     word ptr [bp - 0x20a], 0        ; C7 86 F6 FD 00 00
        jmp     L_15BE                          ; E9 DF 00
;   [loop start] L_14DF
L_14DF:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_14EA                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_14ED                          ; EB 03
;   [conditional branch target (if/else)] L_14EA
L_14EA:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_14ED
L_14ED:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x22e]                ; 8D 86 D2 FD
        mov     word ptr [bp - 0x20e], ax       ; 89 86 F2 FD
        mov     word ptr [bp - 0x20c], ss       ; 8C 96 F4 FD
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19E4                          ; E8 CC 04
        jmp     L_15A9                          ; E9 8E 00
;   [loop start] L_151B
L_151B:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_1560                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_1556                          ; 73 25
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        lea     cx, [bp - 0x208]                ; 8D 8E F8 FD
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 01 07
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_1556
L_1556:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_1560
L_1560:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_157F                          ; 74 19
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_157F                          ; 74 11
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_158B                          ; EB 0C
;   [conditional branch target (if/else)] L_157F
L_157F:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_158B
L_158B:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 B7 05
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_15A9
L_15A9:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_15B6                          ; 7E 03
        jmp     L_151B                          ; E9 65 FF
;   [conditional branch target (if/else)] L_15B6
L_15B6:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_15BE
L_15BE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_15C7                          ; 7E 03
        jmp     L_14DF                          ; E9 18 FF
;   [conditional branch target (if/else)] L_15C7
L_15C7:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x3b          ; 26 C6 07 3B
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        lea     cx, [bp - 0x208]                ; 8D 8E F8 FD
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 61 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_15F7
L_15F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_166D                          ; 75 62
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_166D                          ; 74 5C
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_166D                          ; 75 55
;   [loop start] L_1618
L_1618:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_1677                          ; 7E 59
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        add     word ptr [bp + 0x10], 4         ; 83 46 10 04
        sub     word ptr [bp + 0xa], 2          ; 83 6E 0A 02
        jmp     L_1618                          ; EB C2
;   [loop start] L_1656
L_1656:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_166D
L_166D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_1656                          ; 7F DF
;   [conditional branch target (if/else)] L_1677
L_1677:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1682
L_1682:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22e                       ; 81 EC 2E 02
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        inc     word ptr [bp + 0x10]            ; FF 46 10
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     word ptr [bp - 0x20a], 0        ; C7 86 F6 FD 00 00
        jmp     L_17A6                          ; E9 E2 00
;   [loop start] L_16C4
L_16C4:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_16CF                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_16D2                          ; EB 03
;   [conditional branch target (if/else)] L_16CF
L_16CF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_16D2
L_16D2:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x22e]                ; 8D 86 D2 FD
        mov     word ptr [bp - 0x20e], ax       ; 89 86 F2 FD
        mov     word ptr [bp - 0x20c], ss       ; 8C 96 F4 FD
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_15F7                          ; E8 FA FE
        jmp     L_1791                          ; E9 91 00
;   [loop start] L_1700
L_1700:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_1745                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_173B                          ; 73 25
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        lea     cx, [bp - 0x208]                ; 8D 8E F8 FD
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 1C 05
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_173B
L_173B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_1745
L_1745:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1767                          ; 74 1C
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_1767                          ; 74 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp + 8]               ; F7 6E 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_1773                          ; EB 0C
;   [conditional branch target (if/else)] L_1767
L_1767:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_1773
L_1773:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 CF 03
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_1791
L_1791:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_179E                          ; 7E 03
        jmp     L_1700                          ; E9 62 FF
;   [conditional branch target (if/else)] L_179E
L_179E:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_17A6
L_17A6:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_17AF                          ; 7E 03
        jmp     L_16C4                          ; E9 15 FF
;   [conditional branch target (if/else)] L_17AF
L_17AF:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x3b          ; 26 C6 07 3B
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        lea     cx, [bp - 0x208]                ; 8D 8E F8 FD
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 79 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_17DF
L_17DF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr es:[bx], ax            ; 26 39 07
        je      L_1811                          ; 74 1D
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1dc                       ; B8 DC 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 8C FC
;   [conditional branch target (if/else)] L_1811
L_1811:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_181C
L_181C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_1859                          ; 75 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jg      L_186B                          ; 7F 12
;   [conditional branch target (if/else)] L_1859
L_1859:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_187D                          ; 75 1A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_187D                          ; 7D 12
;   [conditional branch target (if/else)] L_186B
L_186B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_187D
L_187D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_1897                          ; 7D 12
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_1897
L_1897:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1df                       ; B8 DF 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp + 8]               ; F7 6E 08
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 BF FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_18E9
L_18E9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1e2                       ; B8 E2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 6E FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_193A
L_193A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e5                       ; B8 E5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 F2 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e8                       ; B8 E8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 DE 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_1989                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1eb                       ; B8 EB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C4 02
;   [conditional branch target (if/else)] L_1989
L_1989:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 B4 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A2 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_19C5                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1ef                       ; B8 EF 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 88 02
;   [conditional branch target (if/else)] L_19C5
L_19C5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1f2                       ; B8 F2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 74 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [sub-routine] L_19E4
L_19E4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_1A54                          ; 75 5C
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1A54                          ; 74 56
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_1A54                          ; 75 4F
;   [loop start] L_1A05
L_1A05:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_1A5E                          ; 7E 53
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        add     word ptr [bp + 0x10], 4         ; 83 46 10 04
        sub     word ptr [bp + 0xa], 2          ; 83 6E 0A 02
        jmp     L_1A05                          ; EB C5
;   [loop start] L_1A40
L_1A40:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_1A54
L_1A54:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_1A40                          ; 7F E2
;   [conditional branch target (if/else)] L_1A5E
L_1A5E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1A69
L_1A69:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        je      L_1A9F                          ; 74 09
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1AC2                          ; 75 23
;   [conditional branch target (if/else)] L_1A9F
L_1A9F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x4e          ; 26 C6 07 4E
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x55          ; 26 C6 07 55
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x4c          ; 26 C6 07 4C
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        jmp     L_1AE5                          ; EB 23
;   [loop start (also forward branch)] L_1AC2
L_1AC2:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_1AC2                          ; 75 EA
        sub     word ptr [bp - 6], 2            ; 83 6E FA 02
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_1AE9                          ; 75 04
;   [unconditional branch target] L_1AE5
L_1AE5:
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_1AE9
L_1AE9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1AF4
L_1AF4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
;   [loop start] L_1B01
L_1B01:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     byte ptr [bp - 4], 0x61         ; 80 7E FC 61
        jl      L_1B29                          ; 7C 0A
        cmp     byte ptr [bp - 4], 0x7a         ; 80 7E FC 7A
        jg      L_1B29                          ; 7F 04
        add     byte ptr [bp - 4], 0xe0         ; 80 46 FC E0
;   [conditional branch target (if/else)] L_1B29
L_1B29:
        cmp     byte ptr [bp - 6], 0x61         ; 80 7E FA 61
        jl      L_1B39                          ; 7C 0A
        cmp     byte ptr [bp - 6], 0x7a         ; 80 7E FA 7A
        jg      L_1B39                          ; 7F 04
        add     byte ptr [bp - 6], 0xe0         ; 80 46 FA E0
;   [conditional branch target (if/else)] L_1B39
L_1B39:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        je      L_1B45                          ; 74 04
        xor     ax, ax                          ; 33 C0
        jmp     L_1B4E                          ; EB 09
;   [conditional branch target (if/else)] L_1B45
L_1B45:
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        jne     L_1B01                          ; 75 B6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1B4E
L_1B4E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1B59
L_1B59:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jg      L_1B73                          ; 7F 06
;   [loop start] L_1B6D
L_1B6D:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1C41                          ; E9 CE 00
;   [conditional branch target (if/else)] L_1B73
L_1B73:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_1B88                          ; 7D 0F
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        jmp     L_1B8D                          ; EB 05
;   [conditional branch target (if/else)] L_1B88
L_1B88:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [unconditional branch target] L_1B8D
L_1B8D:
        mov     word ptr [bp - 0x16], 5         ; C7 46 EA 05 00
        mov     byte ptr [bp - 0xf], 0x30       ; C6 46 F1 30
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_1BC1                          ; EB 26
;   [loop start] L_1B9B
L_1B9B:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, cx                          ; 8B C1
        mul     word ptr [bp - 0xe]             ; F7 66 F2
        mov     cl, byte ptr [bp - 0xc]         ; 8A 4E F4
        sub     cl, al                          ; 2A C8
        add     cl, 0x30                        ; 80 C1 30
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        mov     byte ptr [bp + si - 0x14], cl   ; 88 4A EC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
;   [unconditional branch target] L_1BC1
L_1BC1:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_1B9B                          ; 75 D3
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1BD1                          ; 74 03
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [conditional branch target (if/else)] L_1BD1
L_1BD1:
        mov     ax, 6                           ; B8 06 00
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1BF3                          ; 74 13
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jg      L_1B6D                          ; 7F 87
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], 0x2d          ; 26 C6 07 2D
        dec     word ptr [bp + 6]               ; FF 4E 06
;   [conditional branch target (if/else)] L_1BF3
L_1BF3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1BFE                          ; 7E 03
        jmp     L_1B6D                          ; E9 6F FF
;   [conditional branch target (if/else)] L_1BFE
L_1BFE:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        lea     cx, [bp - 0x14]                 ; 8D 4E EC
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_1C28                          ; EB 12
;   [loop start] L_1C16
L_1C16:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1C28
L_1C28:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        or      ax, ax                          ; 0B C0
        jne     L_1C16                          ; 75 E4
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1C3E                          ; 74 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        jmp     L_1C41                          ; EB 03
;   [conditional branch target (if/else)] L_1C3E
L_1C3E:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [unconditional branch target] L_1C41
L_1C41:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1C4D
L_1C4D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, word ptr es:[bx + 0x17]     ; 26 3B 47 17
        jle     L_1C9C                          ; 7E 32
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CE0                          ; E8 6F 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx + 0x17], ax     ; 26 39 47 17
        jg      L_1C9C                          ; 7F 1F
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far GDI.WRITESPOOL              ; 9A FF 1C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1CD5                          ; 7D 44
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_1CD5                          ; EB 39
;   [conditional branch target (if/else)] L_1C9C
L_1C9C:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1b                        ; 05 1B 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x19], ax     ; 26 01 47 19
        jmp     L_1CCB                          ; EB 12
;   [loop start] L_1CB9
L_1CB9:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1CCB
L_1CCB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_1CB9                          ; 75 E4
;   [branch target] L_1CD5
L_1CD5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_1CE0
L_1CE0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1b                        ; 05 1B 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1D10                          ; 7D 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_1D10
L_1D10:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1D24
L_1D24:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1E03                          ; E8 C1 00
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1DAB                          ; E8 5F 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1E03                          ; E8 A7 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1DAB                          ; E8 45 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_1D76                          ; 7C 08
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_1D7C                          ; EB 06
;   [conditional branch target (if/else)] L_1D76
L_1D76:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
;   [unconditional branch target] L_1D7C
L_1D7C:
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xc], cx         ; 39 4E F4
        jl      L_1D8D                          ; 7C 07
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, cx                          ; 2B C1
        jmp     L_1D93                          ; EB 06
;   [conditional branch target (if/else)] L_1D8D
L_1D8D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
;   [unconditional branch target] L_1D93
L_1D93:
        cdq                                     ; 99
        mov     cx, 0x1f4                       ; B9 F4 01
        idiv    cx                              ; F7 F9
        ; constant VK_RETURN
        mov     cl, 0xd                         ; B1 0D
        shl     ax, cl                          ; D3 E0
        or      ax, si                          ; 0B C6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1DAB
L_1DAB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0x1f4     ; 26 81 7F 04 F4 01
        jge     L_1DE9                          ; 7D 29
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jge     L_1DD0                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_1DD9                          ; EB 09
;   [conditional branch target (if/else)] L_1DD0
L_1DD0:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x3e8     ; 26 C7 47 02 E8 03
;   [unconditional branch target] L_1DD9
L_1DD9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1DF8                          ; EB 0F
;   [conditional branch target (if/else)] L_1DE9
L_1DE9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x1f4     ; 26 C7 47 02 F4 01
        mov     word ptr es:[bx + 4], 0x3e8     ; 26 C7 47 04 E8 03
;   [unconditional branch target] L_1DF8
L_1DF8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1E03
L_1E03:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_3EA6                          ; E8 7E 20
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3E43                          ; E8 16 20
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     al, ah                          ; 8A C4
        mov     ah, dl                          ; 8A E2
        ; constant VK_RETURN
        mov     dl, dh                          ; 8A D6
        sub     dh, dh                          ; 2A F6
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_3EA6                          ; E8 53 20
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3E43                          ; E8 EB 1F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    L_3EA6                          ; E8 33 20
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3E43                          ; E8 CB 1F
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1EAB                          ; 7E 28
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1E90                          ; 7E 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1E93                          ; EB 03
;   [conditional branch target (if/else)] L_1E90
L_1E90:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1E93
L_1E93:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_1EA3                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1EA6                          ; EB 03
;   [conditional branch target (if/else)] L_1EA3
L_1EA3:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1EA6
L_1EA6:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_1ED1                          ; EB 26
;   [conditional branch target (if/else)] L_1EAB
L_1EAB:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_1EB8                          ; 7D 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1EBB                          ; EB 03
;   [conditional branch target (if/else)] L_1EB8
L_1EB8:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1EBB
L_1EBB:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1ECB                          ; 7E 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1ECE                          ; EB 03
;   [conditional branch target (if/else)] L_1ECB
L_1ECB:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1ECE
L_1ECE:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [unconditional branch target] L_1ED1
L_1ED1:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_1F3B                          ; 74 5D
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 EC 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 CC 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 26 1E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 AC 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 06 1E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_1F3B
L_1F3B:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_1F5E                          ; 75 08
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        jmp     L_1F92                          ; EB 34
;   [conditional branch target (if/else)] L_1F5E
L_1F5E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jg      L_1F6E                          ; 7F 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_1F74                          ; EB 06
;   [conditional branch target (if/else)] L_1F6E
L_1F6E:
        mov     ax, 0x7d0                       ; B8 D0 07
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_1F74
L_1F74:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 59 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 B3 1D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
;   [unconditional branch target] L_1F92
L_1F92:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_1FA3                          ; 75 07
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1FDE                          ; EB 3B
;   [conditional branch target (if/else)] L_1FA3
L_1FA3:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_1FB9                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        add     ax, 0x7d0                       ; 05 D0 07
        jmp     L_1FDB                          ; EB 22
;   [conditional branch target (if/else)] L_1FB9
L_1FB9:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_1FCF                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        add     ax, 0xfa0                       ; 05 A0 0F
        jmp     L_1FDB                          ; EB 0C
;   [conditional branch target (if/else)] L_1FCF
L_1FCF:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        add     ax, 0x1770                      ; 05 70 17
;   [unconditional branch target] L_1FDB
L_1FDB:
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [unconditional branch target] L_1FDE
L_1FDE:
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 E9 1D
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 43 1D
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_2008                          ; EB 05
;   [loop start] L_2003
L_2003:
        add     word ptr es:[bx], 0x168         ; 26 81 07 68 01
;   [unconditional branch target] L_2008
L_2008:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_2003                          ; 7C F2
        jmp     L_2018                          ; EB 05
;   [loop start] L_2013
L_2013:
        sub     word ptr es:[bx], 0x168         ; 26 81 2F 68 01
;   [unconditional branch target] L_2018
L_2018:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x168         ; 26 81 3F 68 01
        jge     L_2013                          ; 7D F1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_202D
L_202D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        mov     di, bx                          ; 8B FB
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], si           ; 89 77 06
        mov     si, word ptr [bx + 8]           ; 8B 77 08
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     word ptr [bx + 0xa], si         ; 89 77 0A
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [sub-routine] L_2066
L_2066:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 5D 1D
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 49 1D
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x30                        ; 05 30 00
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cdq                                     ; 99
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0x34                        ; 05 34 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2259                          ; E8 99 01
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 0D 1D
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 F9 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x38                        ; 05 38 00
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cdq                                     ; 99
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        add     ax, 0x3c                        ; 05 3C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2259                          ; E8 49 01
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 BD 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 A9 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x40                        ; 05 40 00
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 8E 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cdq                                     ; 99
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 73 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x44                        ; 05 44 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2259                          ; E8 DF 00
        mov     ax, 0x2710                      ; B8 10 27
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 53 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x2710                      ; B8 10 27
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 3F 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x48                        ; 05 48 00
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 24 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cdq                                     ; 99
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 09 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x4c                        ; 05 4C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2259                          ; E8 75 00
        mov     ax, 0x3840                      ; B8 40 38
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 E9 1B
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x3840                      ; B8 40 38
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 D5 1B
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x50                        ; 05 50 00
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 BA 1B
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        cdq                                     ; 99
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 9F 1B
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x54                        ; 05 54 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2259                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [sub-routine] L_2259
L_2259:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
;   [loop start] L_2263
L_2263:
        cmp     word ptr [bp + 0x18], 0         ; 83 7E 18 00
        jl      L_2271                          ; 7C 08
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        jmp     L_227E                          ; EB 0D
;   [conditional branch target (if/else)] L_2271
L_2271:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_227E
L_227E:
        or      dx, dx                          ; 0B D2
        jg      L_22AF                          ; 7F 2D
        jl      L_2289                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_22AF                          ; 77 26
;   [conditional branch target (if/else)] L_2289
L_2289:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jl      L_2297                          ; 7C 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        jmp     L_22A4                          ; EB 0D
;   [conditional branch target (if/else)] L_2297
L_2297:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_22A4
L_22A4:
        or      dx, dx                          ; 0B D2
        jl      L_2327                          ; 7C 7F
        jg      L_22AF                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_2327                          ; 76 78
;   [conditional branch target (if/else)] L_22AF
L_22AF:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x16]                 ; 8D 46 16
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_3CF6                          ; E8 39 1A
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_3CF6                          ; E8 2B 1A
        jmp     L_2263                          ; EB 96
;   [loop start] L_22CD
L_22CD:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [loop start] L_22DA
L_22DA:
        or      dx, dx                          ; 0B D2
        jg      L_230B                          ; 7F 2D
        jl      L_22E5                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_230B                          ; 77 26
;   [conditional branch target (if/else)] L_22E5
L_22E5:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_22F3                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_2300                          ; EB 0D
;   [conditional branch target (if/else)] L_22F3
L_22F3:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_2300
L_2300:
        or      dx, dx                          ; 0B D2
        jl      L_2335                          ; 7C 31
        jg      L_230B                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_2335                          ; 76 2A
;   [conditional branch target (if/else)] L_230B
L_230B:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_3CF6                          ; E8 DD 19
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_3CF6                          ; E8 CF 19
;   [conditional branch target (if/else)] L_2327
L_2327:
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        jl      L_22CD                          ; 7C A0
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        jmp     L_22DA                          ; EB A5
;   [conditional branch target (if/else)] L_2335
L_2335:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 2], ax           ; 89 47 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x14                            ; CA 14 00
;   [sub-routine] L_235C
L_235C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x8c                        ; 81 EC 8C 00
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CE0                          ; E8 6B F9
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_2395                          ; EB 03
;   [loop start] L_2392
L_2392:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_2395
L_2395:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_2392                          ; 75 E7
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx - 1], 0x3a      ; 26 C6 47 FF 3A
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_23CF                          ; EB 03
;   [loop start] L_23CC
L_23CC:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_23CF
L_23CF:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_23CC                          ; 75 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.WRITEDIALOG             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_2407                          ; 7D 09
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_2407
L_2407:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_2412
L_2412:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 9], 0         ; 26 83 7F 09 00
        jne     L_247B                          ; 75 55
        mov     word ptr es:[bx + 9], 1         ; 26 C7 47 09 01 00
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_2443                          ; 75 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_247B                          ; EB 38
;   [conditional branch target (if/else)] L_2443
L_2443:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0x13], 0xe    ; 26 83 7F 13 0E
        jne     L_245F                          ; 75 12
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1f9                       ; B8 F9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 F0 F7
        jmp     L_247B                          ; EB 1C
;   [conditional branch target (if/else)] L_245F
L_245F:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        ; constant WM_RBUTTONDBLCLK
        mov     ax, 0x206                       ; B8 06 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1fd                       ; B8 FD 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x8000                      ; B8 00 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_235C                          ; E8 E1 FE
;   [branch target] L_247B
L_247B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_24A2                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_2F79                          ; E9 D7 0A
;   [conditional branch target (if/else)] L_24A2
L_24A2:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_24C4                          ; 75 0A
        or      ax, ax                          ; 0B C0
        jne     L_24C4                          ; 75 06
;   [loop start] L_24BE
L_24BE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2F79                          ; E9 B5 0A
;   [conditional branch target (if/else)] L_24C4
L_24C4:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jle     L_24DC                          ; 7E 0A
        cmp     ax, 5                           ; 3D 05 00
        jge     L_24DC                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_24DE                          ; EB 02
;   [conditional branch target (if/else)] L_24DC
L_24DC:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_24DE
L_24DE:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A DB 09 00 00 [FIXUP]
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2412                          ; E8 1D FF
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_252F                          ; 74 30
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_252F                          ; 75 20
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 8C E0
;   [loop start] L_2524
L_2524:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A A4 0A 00 00 [FIXUP]
        jmp     L_24BE                          ; EB 8F
;   [conditional branch target (if/else)] L_252F
L_252F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_255F                          ; 74 28
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_181C                          ; E8 C9 F2
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], 1     ; 26 C7 87 2D 02 01 00
        jmp     L_2587                          ; EB 28
;   [conditional branch target (if/else)] L_255F
L_255F:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22d], 0     ; 26 83 BF 2D 02 00
        je      L_2587                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18E9                          ; E8 6C F3
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], 0     ; 26 C7 87 2D 02 00 00
;   [branch target] L_2587
L_2587:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_2592                          ; 75 03
        jmp     L_2A2B                          ; E9 99 04
;   [conditional branch target (if/else)] L_2592
L_2592:
        jle     L_2597                          ; 7E 03
        jmp     L_2F46                          ; E9 AF 09
;   [conditional branch target (if/else)] L_2597
L_2597:
        cmp     ax, 3                           ; 3D 03 00
        je      L_25BF                          ; 74 23
        cmp     ax, 4                           ; 3D 04 00
        jne     L_25A4                          ; 75 03
        jmp     L_2B43                          ; E9 9F 05
;   [conditional branch target (if/else)] L_25A4
L_25A4:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_25AC                          ; 75 03
        jmp     L_2C43                          ; E9 97 06
;   [conditional branch target (if/else)] L_25AC
L_25AC:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_25B4                          ; 75 03
        jmp     L_2EDB                          ; E9 27 09
;   [conditional branch target (if/else)] L_25B4
L_25B4:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_25BC                          ; 75 03
        jmp     L_2E48                          ; E9 8C 08
;   [conditional branch target (if/else)] L_25BC
L_25BC:
        jmp     L_2524                          ; E9 65 FF
;   [conditional branch target (if/else)] L_25BF
L_25BF:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_25C8                          ; 75 03
        jmp     L_2524                          ; E9 5C FF
;   [loop start (also forward branch)] L_25C8
L_25C8:
        cmp     word ptr [bp + 0x1a], 5         ; 83 7E 1A 05
        jge     L_25D1                          ; 7D 03
        jmp     L_2524                          ; E9 53 FF
;   [conditional branch target (if/else)] L_25D1
L_25D1:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr es:[bx]            ; 26 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr es:[bx + 2]        ; 26 03 47 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    L_2F85                          ; E8 7C 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2F85                          ; E8 65 09
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_2648                          ; 75 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x10e                       ; 05 0E 01
        cdq                                     ; 99
        mov     cx, 0x168                       ; B9 68 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, 0x10e                       ; 05 0E 01
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
;   [conditional branch target (if/else)] L_2648
L_2648:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_32B9                          ; E8 62 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x228                       ; B8 28 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 D3 F5
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_26B7                          ; 7E 26
        cmp     word ptr [bp - 6], 0x168        ; 81 7E FA 68 01
        jge     L_26B7                          ; 7D 1F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x22f                       ; B8 2F 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 E6 ED
;   [conditional branch target (if/else)] L_26B7
L_26B7:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_26CA                          ; 7D 0B
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, 0x168                       ; 05 68 01
        jmp     L_26D0                          ; EB 06
;   [conditional branch target (if/else)] L_26CA
L_26CA:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_26D0
L_26D0:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 0x1c], 3         ; 83 7E 1C 03
        je      L_26DC                          ; 74 03
        jmp     L_2790                          ; E9 B4 00
;   [conditional branch target (if/else)] L_26DC
L_26DC:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_270C                          ; 7E 2A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_270C                          ; 7D 24
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x232                       ; B8 32 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x312                       ; 05 12 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 91 ED
;   [conditional branch target (if/else)] L_270C
L_270C:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 BA F0
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        jne     L_274A                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x235                       ; B8 35 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 0D F5
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
;   [conditional branch target (if/else)] L_274A
L_274A:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x239                       ; B8 39 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 36 ED
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jg      L_2770                          ; 7F 03
        jmp     L_2811                          ; E9 A1 00
;   [conditional branch target (if/else)] L_2770
L_2770:
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jl      L_2779                          ; 7C 03
        jmp     L_2811                          ; E9 98 00
;   [conditional branch target (if/else)] L_2779
L_2779:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x23c                       ; B8 3C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C0 F4
        jmp     L_2811                          ; E9 81 00
;   [unconditional branch target] L_2790
L_2790:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x240                       ; B8 40 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A3 F4
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x248                       ; B8 48 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 D6 EC
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x24b                       ; B8 4B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 72 F4
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 EC 08
        or      ax, ax                          ; 0B C0
        je      L_2802                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x250                       ; B8 50 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 4B F4
;   [conditional branch target (if/else)] L_2802
L_2802:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_3216                          ; E8 05 0A
;   [unconditional branch target] L_2811
L_2811:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x254                       ; B8 54 02
;   [loop start] L_281A
L_281A:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 28 F4
        jmp     L_2524                          ; E9 FC FC
;   [loop start] L_2828
L_2828:
        cmp     word ptr [bp + 0x1a], 5         ; 83 7E 1A 05
        jge     L_2831                          ; 7D 03
        jmp     L_2524                          ; E9 F3 FC
;   [conditional branch target (if/else)] L_2831
L_2831:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr es:[bx]            ; 26 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr es:[bx + 2]        ; 26 03 47 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr es:[bx + 0x22f], ax    ; 26 39 87 2F 02
        jne     L_2871                          ; 75 0A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr es:[bx + 0x231], ax    ; 26 39 87 31 02
        je      L_28AB                          ; 74 3A
;   [conditional branch target (if/else)] L_2871
L_2871:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x25b                       ; B8 5B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 EA ED
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x231], ax    ; 26 89 87 31 02
;   [conditional branch target (if/else)] L_28AB
L_28AB:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2F85                          ; E8 C6 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2F85                          ; E8 AF 06
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_28FE                          ; 75 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x10e                       ; 05 0E 01
        cdq                                     ; 99
        mov     cx, 0x168                       ; B9 68 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, 0x10e                       ; 05 0E 01
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
;   [conditional branch target (if/else)] L_28FE
L_28FE:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_32B9                          ; E8 AC 09
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_2928                          ; 7D 0B
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, 0x168                       ; 05 68 01
        jmp     L_292E                          ; EB 06
;   [conditional branch target (if/else)] L_2928
L_2928:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_292E
L_292E:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_29A5                          ; 74 6E
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 8F EE
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x25e                       ; B8 5E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 30 EB
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 5A 07
        or      ax, ax                          ; 0B C0
        je      L_2994                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x261                       ; B8 61 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 B9 F2
;   [conditional branch target (if/else)] L_2994
L_2994:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_3216                          ; E8 73 08
        jmp     L_2A1F                          ; EB 7A
;   [conditional branch target (if/else)] L_29A5
L_29A5:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 22 07
        or      ax, ax                          ; 0B C0
        je      L_29E9                          ; 74 31
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x265                       ; B8 65 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 81 F2
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x270                       ; B8 70 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 B4 EA
;   [conditional branch target (if/else)] L_29E9
L_29E9:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 DD ED
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x273                       ; B8 73 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 7E EA
;   [unconditional branch target] L_2A1F
L_2A1F:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x276                       ; B8 76 02
        jmp     L_281A                          ; E9 EF FD
;   [unconditional branch target] L_2A2B
L_2A2B:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_2A34                          ; 75 03
        jmp     L_2524                          ; E9 F0 FA
;   [conditional branch target (if/else)] L_2A34
L_2A34:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22f], ax    ; 26 39 87 2F 02
        jne     L_2A52                          ; 75 0E
        mov     ax, word ptr es:[bx + 0x231]    ; 26 8B 87 31 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        je      L_2A7A                          ; 74 28
;   [conditional branch target (if/else)] L_2A52
L_2A52:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x27d                       ; B8 7D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 08 EC
;   [conditional branch target (if/else)] L_2A7A
L_2A7A:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_2AAA                          ; 7E 2A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_2AAA                          ; 7D 24
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x280                       ; B8 80 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x312                       ; 05 12 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 F3 E9
;   [conditional branch target (if/else)] L_2AAA
L_2AAA:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 1C ED
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x283                       ; B8 83 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 8E EB
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_2B14                          ; 7E 1A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_2B14                          ; 7D 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x286                       ; B8 86 02
;   [loop start] L_2B09
L_2B09:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 39 F1
;   [loop start (also forward branch)] L_2B14
L_2B14:
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + si - 4]   ; 26 8B 40 FC
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + si - 2]   ; 26 8B 40 FE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
;   [loop start] L_2B3B
L_2B3B:
        mov     word ptr es:[bx + 0x231], ax    ; 26 89 87 31 02
        jmp     L_2524                          ; E9 E1 F9
;   [unconditional branch target] L_2B43
L_2B43:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_2B4F                          ; 75 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_2B4F
L_2B4F:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_2B58                          ; 75 03
        jmp     L_2524                          ; E9 CC F9
;   [conditional branch target (if/else)] L_2B58
L_2B58:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 0x229], ax    ; 26 39 87 29 02
        je      L_2BA9                          ; 74 44
        mov     word ptr es:[bx + 0x229], ax    ; 26 89 87 29 02
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_2B8C                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x28a                       ; B8 8A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 CB F0
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_2B8C
L_2B8C:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x28e                       ; B8 8E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 F4 E8
;   [conditional branch target (if/else)] L_2BA9
L_2BA9:
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_2C29                          ; EB 6D
;   [loop start] L_2BBC
L_2BBC:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x291                       ; B8 91 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 95 EA
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x294                       ; B8 94 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 63 EA
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
;   [unconditional branch target] L_2C29
L_2C29:
        dec     word ptr [bp + 0x1a]            ; FF 4E 1A
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        jg      L_2BBC                          ; 7F 8A
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_2B3B                          ; E9 F8 FE
;   [unconditional branch target] L_2C43
L_2C43:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_32B9                          ; E8 67 06
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x297                       ; B8 97 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 E1 EF
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_2CE2                          ; 74 5F
        push    es                              ; 06
        push    bx                              ; 53
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 49 EB
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x29e                       ; B8 9E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A3 EF
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 1D 04
        or      ax, ax                          ; 0B C0
        je      L_2CD1                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2a5                       ; B8 A5 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 7C EF
;   [conditional branch target (if/else)] L_2CD1
L_2CD1:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_3216                          ; E8 36 05
        jmp     L_2D36                          ; EB 54
;   [conditional branch target (if/else)] L_2CE2
L_2CE2:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 E5 03
        or      ax, ax                          ; 0B C0
        je      L_2D09                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2a9                       ; B8 A9 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 44 EF
;   [conditional branch target (if/else)] L_2D09
L_2D09:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 BD EA
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2ba                       ; B8 BA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 17 EF
;   [unconditional branch target] L_2D36
L_2D36:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2c1                       ; B8 C1 02
        jmp     L_281A                          ; E9 D8 FA
;   [loop start] L_2D42
L_2D42:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22f], ax    ; 26 39 87 2F 02
        jne     L_2D60                          ; 75 0E
        mov     ax, word ptr es:[bx + 0x231]    ; 26 8B 87 31 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        je      L_2D88                          ; 74 28
;   [conditional branch target (if/else)] L_2D60
L_2D60:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x2c8                       ; B8 C8 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 FA E8
;   [conditional branch target (if/else)] L_2D88
L_2D88:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2cb                       ; B8 CB 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 B1 EE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        cmp     word ptr [bp + 0x1a], 0x398     ; 81 7E 1A 98 03
        jle     L_2DB4                          ; 7E 07
        mov     word ptr [bp - 0x16], 0x398     ; C7 46 EA 98 03
        jmp     L_2DBB                          ; EB 07
;   [conditional branch target (if/else)] L_2DB4
L_2DB4:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        dec     ax                              ; 48
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [unconditional branch target] L_2DBB
L_2DBB:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2d3                       ; B8 D3 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 9B E8
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2d6                       ; B8 D6 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 52 EE
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2db                       ; B8 DB 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 3E EE
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 B8 02
        or      ax, ax                          ; 0B C0
        je      L_2E36                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2e0                       ; B8 E0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 17 EE
;   [conditional branch target (if/else)] L_2E36
L_2E36:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_3216                          ; E8 D1 03
        jmp     L_2B14                          ; E9 CC FC
;   [unconditional branch target] L_2E48
L_2E48:
        mov     word ptr [bp + 0x1a], 1         ; C7 46 1A 01 00
;   [loop start] L_2E4D
L_2E4D:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_2E56                          ; 75 03
        jmp     L_2524                          ; E9 CE F6
;   [conditional branch target (if/else)] L_2E56
L_2E56:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2e4                       ; B8 E4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 E3 ED
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_2E8F                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x2e9                       ; B8 E9 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C8 ED
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_2E8F
L_2E8F:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 37 E9
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2ed                       ; B8 ED 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 B3 E7
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2f0                       ; B8 F0 02
        jmp     L_2B09                          ; E9 2E FC
;   [loop start (also forward branch)] L_2EDB
L_2EDB:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_32B9                          ; E8 CF 03
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x2f4                       ; B8 F4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 49 ED
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_30D6                          ; E8 C3 01
        or      ax, ax                          ; 0B C0
        je      L_2F2B                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x307                       ; B8 07 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 22 ED
;   [conditional branch target (if/else)] L_2F2B
L_2F2B:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_3216                          ; E8 DC 02
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x30b                       ; B8 0B 03
        jmp     L_281A                          ; E9 D4 F8
;   [unconditional branch target] L_2F46
L_2F46:
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_2F4E                          ; 75 03
        jmp     L_2524                          ; E9 D6 F5
;   [conditional branch target (if/else)] L_2F4E
L_2F4E:
        cmp     ax, 0x16                        ; 3D 16 00
        jne     L_2F56                          ; 75 03
        jmp     L_2D42                          ; E9 EC FD
;   [conditional branch target (if/else)] L_2F56
L_2F56:
        cmp     ax, 0x17                        ; 3D 17 00
        jne     L_2F5E                          ; 75 03
        jmp     L_2828                          ; E9 CA F8
;   [conditional branch target (if/else)] L_2F5E
L_2F5E:
        cmp     ax, 0x18                        ; 3D 18 00
        jne     L_2F66                          ; 75 03
        jmp     L_2E4D                          ; E9 E7 FE
;   [conditional branch target (if/else)] L_2F66
L_2F66:
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_2F6E                          ; 75 03
        jmp     L_25C8                          ; E9 5A F6
;   [conditional branch target (if/else)] L_2F6E
L_2F6E:
        cmp     ax, 0x37                        ; 3D 37 00
        jne     L_2F76                          ; 75 03
        jmp     L_2EDB                          ; E9 65 FF
;   [conditional branch target (if/else)] L_2F76
L_2F76:
        jmp     L_2524                          ; E9 AB F5
;   [unconditional branch target] L_2F79
L_2F79:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [sub-routine] L_2F85
L_2F85:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_2FF5                          ; 74 62
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_3019                          ; 74 7E
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_2FB1                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        jmp     L_2FB7                          ; EB 06
;   [conditional branch target (if/else)] L_2FB1
L_2FB1:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
;   [unconditional branch target] L_2FB7
L_2FB7:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3EA6                          ; E8 E9 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jl      L_2FD3                          ; 7C 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        jmp     L_2FD9                          ; EB 06
;   [conditional branch target (if/else)] L_2FD3
L_2FD3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
;   [unconditional branch target] L_2FD9
L_2FD9:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_3D1A                          ; E8 36 0D
        mov     ax, word ptr [0x32c]            ; A1 2C 03
        sub     dx, dx                          ; 2B D2
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        ja      L_3008                          ; 77 1A
        jb      L_2FF5                          ; 72 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_3008                          ; 73 13
;   [conditional branch target (if/else)] L_2FF5
L_2FF5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_3002                          ; 7E 05
        xor     ax, ax                          ; 33 C0
        jmp     L_30D0                          ; E9 CE 00
;   [conditional branch target (if/else)] L_3002
L_3002:
        mov     ax, 0xb4                        ; B8 B4 00
        jmp     L_30D0                          ; E9 C8 00
;   [conditional branch target (if/else)] L_3008
L_3008:
        mov     ax, word ptr [0x3dc]            ; A1 DC 03
        sub     dx, dx                          ; 2B D2
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        jb      L_302D                          ; 72 1B
        ja      L_3019                          ; 77 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_302D                          ; 76 14
;   [conditional branch target (if/else)] L_3019
L_3019:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_3027                          ; 7E 06
        mov     ax, 0x10e                       ; B8 0E 01
        jmp     L_30D0                          ; E9 A9 00
;   [conditional branch target (if/else)] L_3027
L_3027:
        mov     ax, 0x5a                        ; B8 5A 00
        jmp     L_30D0                          ; E9 A3 00
;   [conditional branch target (if/else)] L_302D
L_302D:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 0xa], 0x59       ; C7 46 F6 59 00
        jmp     L_306B                          ; EB 32
;   [loop start] L_3039
L_3039:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x32a]       ; 8B 87 2A 03
        sub     dx, dx                          ; 2B D2
        cmp     dx, word ptr [bp - 2]           ; 3B 56 FE
        jb      L_3065                          ; 72 0F
        ja      L_305D                          ; 77 05
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jbe     L_3065                          ; 76 08
;   [conditional branch target (if/else)] L_305D
L_305D:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_306B                          ; EB 06
;   [conditional branch target (if/else)] L_3065
L_3065:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_306B
L_306B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        cmp     ax, 1                           ; 3D 01 00
        jg      L_3039                          ; 7F C3
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_308B                          ; 7E 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_308B                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_30D0                          ; EB 45
;   [conditional branch target (if/else)] L_308B
L_308B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jge     L_30A3                          ; 7D 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_30A3                          ; 7D 08
        mov     ax, 0xb4                        ; B8 B4 00
;   [loop start] L_309E
L_309E:
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_30D0                          ; EB 2D
;   [conditional branch target (if/else)] L_30A3
L_30A3:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jge     L_30BB                          ; 7D 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_30BB                          ; 7E 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0xb4                        ; 05 B4 00
        jmp     L_30D0                          ; EB 15
;   [conditional branch target (if/else)] L_30BB
L_30BB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_30D0                          ; 7E 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_30D0                          ; 7E 05
        mov     ax, 0x168                       ; B8 68 01
        jmp     L_309E                          ; EB CE
;   [error/early exit] L_30D0
L_30D0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_30D6
L_30D6:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_30F5                          ; 75 03
        jmp     L_320E                          ; E9 19 01
;   [conditional branch target (if/else)] L_30F5
L_30F5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 D1 E6
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x11], 0x12   ; 26 83 7F 11 12
        jne     L_3135                          ; 75 1D
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, ax                          ; 0B C0
        je      L_3130                          ; 74 11
        cmp     ax, 1                           ; 3D 01 00
        je      L_3173                          ; 74 4F
        cmp     ax, 2                           ; 3D 02 00
        je      L_317A                          ; 74 51
        cmp     ax, 3                           ; 3D 03 00
        je      L_3181                          ; 74 53
        jmp     L_3135                          ; EB 05
;   [conditional branch target (if/else)] L_3130
L_3130:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [loop start (also forward branch)] L_3135
L_3135:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, ax                          ; 0B C0
        je      L_3188                          ; 74 4C
        cmp     ax, 1                           ; 3D 01 00
        jne     L_3144                          ; 75 03
        jmp     L_31CD                          ; E9 89 00
;   [conditional branch target (if/else)] L_3144
L_3144:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_314C                          ; 75 03
        jmp     L_31DE                          ; E9 92 00
;   [conditional branch target (if/else)] L_314C
L_314C:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_3154                          ; 75 03
        jmp     L_31EF                          ; E9 9B 00
;   [conditional branch target (if/else)] L_3154
L_3154:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_315C                          ; 75 03
        jmp     L_3200                          ; E9 A4 00
;   [conditional branch target (if/else)] L_315C
L_315C:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_3164                          ; 75 03
        jmp     L_3207                          ; E9 A3 00
;   [conditional branch target (if/else)] L_3164
L_3164:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_3197                          ; EB 24
;   [conditional branch target (if/else)] L_3173
L_3173:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_3135                          ; EB BB
;   [conditional branch target (if/else)] L_317A
L_317A:
        mov     word ptr [bp - 8], 3            ; C7 46 F8 03 00
        jmp     L_3135                          ; EB B4
;   [conditional branch target (if/else)] L_3181
L_3181:
        mov     word ptr [bp - 8], 2            ; C7 46 F8 02 00
        jmp     L_3135                          ; EB AD
;   [conditional branch target (if/else)] L_3188
L_3188:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
;   [loop start] L_318D
L_318D:
        mov     word ptr [bp - 4], 0x78         ; C7 46 FC 78 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start (also forward branch)] L_3197
L_3197:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3de                       ; B8 DE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A2 EA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 D5 E2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_3210                          ; EB 43
;   [unconditional branch target] L_31CD
L_31CD:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
        mov     word ptr [bp - 4], 0x78         ; C7 46 FC 78 00
        mov     word ptr [bp - 2], 0x5a         ; C7 46 FE 5A 00
        jmp     L_3197                          ; EB B9
;   [unconditional branch target] L_31DE
L_31DE:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
        mov     word ptr [bp - 4], 0x5a         ; C7 46 FC 5A 00
        mov     word ptr [bp - 2], 0x87         ; C7 46 FE 87 00
        jmp     L_3197                          ; EB A8
;   [unconditional branch target] L_31EF
L_31EF:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
;   [loop start] L_31F4
L_31F4:
        mov     word ptr [bp - 4], 0x5a         ; C7 46 FC 5A 00
        mov     word ptr [bp - 2], 0x2d         ; C7 46 FE 2D 00
        jmp     L_3197                          ; EB 97
;   [unconditional branch target] L_3200
L_3200:
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        jmp     L_318D                          ; EB 86
;   [unconditional branch target] L_3207
L_3207:
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        jmp     L_31F4                          ; EB E6
;   [unconditional branch target] L_320E
L_320E:
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_3210
L_3210:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3216
L_3216:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_32B1                          ; 74 7F
        or      ax, ax                          ; 0B C0
        jle     L_325F                          ; 7E 29
        cmp     ax, 5                           ; 3D 05 00
        jge     L_325F                          ; 7D 24
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3e5                       ; B8 E5 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x312                       ; 05 12 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_149D                          ; E8 3E E2
;   [conditional branch target (if/else)] L_325F
L_325F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 67 E5
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C1 E9
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_32AC                          ; 7E 1A
        cmp     word ptr [bp - 4], 5            ; 83 7E FC 05
        jge     L_32AC                          ; 7D 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3ec                       ; B8 EC 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A1 E9
;   [conditional branch target (if/else)] L_32AC
L_32AC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_32B3                          ; EB 02
;   [conditional branch target (if/else)] L_32B1
L_32B1:
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_32B3
L_32B3:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_32B9
L_32B9:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x11], 0x13   ; 26 83 7F 11 13
        jne     L_32DF                          ; 75 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        jmp     L_32F3                          ; EB 14
;   [conditional branch target (if/else)] L_32DF
L_32DF:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_32F3
L_32F3:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 61 E3
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x3f3                       ; B8 F3 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 18 E9
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x3c                            ; CA 3C 00
;   [sub-routine] L_3350
L_3350:
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
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_336D                          ; 75 06
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_340F                          ; E9 A2 00
;   [conditional branch target (if/else)] L_336D
L_336D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_3378                          ; 75 03
        jmp     L_340A                          ; E9 92 00
;   [conditional branch target (if/else)] L_3378
L_3378:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x243]        ; 26 FF B7 43 02
        push    word ptr es:[bx + 0x241]        ; 26 FF B7 41 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D24                          ; E8 94 E9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_33D8                          ; EB 39
;   [loop start] L_339F
L_339F:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + si + 0x243]   ; 26 FF B0 43 02
        push    word ptr es:[bx + si + 0x241]   ; 26 FF B0 41 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D24                          ; E8 66 E9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_33D5                          ; 7D 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_33D5
L_33D5:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_33D8
L_33D8:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        jg      L_339F                          ; 7F BA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     si, ax                          ; 8B F0
        mov     ax, dx                          ; 8B C2
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], si            ; 26 89 37
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
;   [loop start] L_33F7
L_33F7:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + si + 0x241] ; 26 8B 80 41 02
        mov     dx, word ptr es:[bx + si + 0x243] ; 26 8B 90 43 02
        jmp     L_340F                          ; EB 05
;   [unconditional branch target] L_340A
L_340A:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        jmp     L_33F7                          ; EB E8
;   [unconditional branch target] L_340F
L_340F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_341B
L_341B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_3433                          ; 75 03
        jmp     L_34FF                          ; E9 CC 00
;   [conditional branch target (if/else)] L_3433
L_3433:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jg      L_343C                          ; 7F 03
        jmp     L_34FF                          ; E9 C3 00
;   [conditional branch target (if/else)] L_343C
L_343C:
        cmp     word ptr [bp + 0xa], 5          ; 83 7E 0A 05
        jl      L_3445                          ; 7C 03
        jmp     L_34FF                          ; E9 BA 00
;   [conditional branch target (if/else)] L_3445
L_3445:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x22d], 0     ; 26 83 BF 2D 02 00
        je      L_346D                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18E9                          ; E8 86 E4
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x22d], 0     ; 26 C7 87 2D 02 00 00
;   [conditional branch target (if/else)] L_346D
L_346D:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_3492                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3fe                       ; B8 FE 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 C5 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_3492
L_3492:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 34 E3
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr es:[bx + 0x231], ax    ; 26 89 87 31 02
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x402                       ; B8 02 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 A1 E1
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, 0x405                       ; B8 05 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 58 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
;   [unconditional branch target] L_34FF
L_34FF:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_350D
L_350D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0x1a], al        ; 88 46 E6
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr [bp - 4]           ; 02 46 FC
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr [bp - 4]           ; 02 46 FC
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jg      L_3566                          ; 7F 03
        jmp     L_3ABF                          ; E9 59 05
;   [conditional branch target (if/else)] L_3566
L_3566:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jge     L_3575                          ; 7D 03
        jmp     L_3B58                          ; E9 E3 05
;   [conditional branch target (if/else)] L_3575
L_3575:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     ax, word ptr es:[bx + 2]        ; 26 3B 47 02
        jge     L_358B                          ; 7D 03
        jmp     L_3B58                          ; E9 CD 05
;   [conditional branch target (if/else)] L_358B
L_358B:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_181C                          ; E8 79 E2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22d], 1     ; 26 C7 87 2D 02 01 00
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_35CF                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x409                       ; B8 09 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 88 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_35CF
L_35CF:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        mov     dx, word ptr [bp + 0x22]        ; 8B 56 22
        add     ax, 0x229                       ; 05 29 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17DF                          ; E8 F3 E1
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr es:[bx + 0x233], ax    ; 26 39 87 33 02
        jne     L_3606                          ; 75 0D
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr es:[bx + 0x235], ax    ; 26 39 87 35 02
        jne     L_3606                          ; 75 03
        jmp     L_37A9                          ; E9 A3 01
;   [conditional branch target (if/else)] L_3606
L_3606:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr es:[bx + 0x233], ax    ; 26 89 87 33 02
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr es:[bx + 0x235], ax    ; 26 89 87 35 02
        mov     ax, 0x85                        ; B8 85 00
        imul    word ptr es:[bx + 0x23f]        ; 26 F7 AF 3F 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x23d]    ; 26 8B 87 3D 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 A4 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 9F 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 F9 06
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, 0x85                        ; B8 85 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3DDF                          ; E8 82 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3D3E                          ; E8 DC 06
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x40d                       ; B8 0D 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 D4 E5
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 BD E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 AB E5
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_36C0                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x410                       ; B8 10 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_36CE                          ; EB 0E
;   [conditional branch target (if/else)] L_36C0
L_36C0:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x413                       ; B8 13 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_36CE
L_36CE:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 79 E5
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 62 E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 50 E5
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x415                       ; B8 15 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 3C E5
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 25 E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 13 E5
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_3758                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x417                       ; B8 17 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_3766                          ; EB 0E
;   [conditional branch target (if/else)] L_3758
L_3758:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x41a                       ; B8 1A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_3766
L_3766:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 E1 E4
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B59                          ; E8 CA E3
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 B8 E4
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x41c                       ; B8 1C 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 A4 E4
;   [unconditional branch target] L_37A9
L_37A9:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr es:[bx + 0x237], ax    ; 26 39 87 37 02
        je      L_37DF                          ; 74 29
        mov     word ptr es:[bx + 0x237], ax    ; 26 89 87 37 02
        or      ax, ax                          ; 0B C0
        je      L_37CB                          ; 74 0C
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x41e                       ; B8 1E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_37D9                          ; EB 0E
;   [conditional branch target (if/else)] L_37CB
L_37CB:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x424                       ; B8 24 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_37D9
L_37D9:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 6E E4
;   [conditional branch target (if/else)] L_37DF
L_37DF:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x428                       ; B8 28 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 73 DE
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x42b                       ; B8 2B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 2A E4
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x434                       ; B8 34 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 16 E4
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        imul    word ptr [bp - 0x1e]            ; F7 6E E2
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_38F4                          ; E9 A7 00
;   [loop start] L_384D
L_384D:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_3869                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_386F                          ; 76 06
;   [conditional branch target (if/else)] L_3869
L_3869:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_386F
L_386F:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_388F                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 BE E3
;   [conditional branch target (if/else)] L_388F
L_388F:
        cmp     word ptr [bp + 0x12], 1         ; 83 7E 12 01
        jle     L_389F                          ; 7E 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
;   [conditional branch target (if/else)] L_389F
L_389F:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_38D4                          ; 74 2B
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_38D4                          ; 75 23
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_38D4                          ; 75 1E
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jg      L_38D4                          ; 7F 0A
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr [bp - 8], ax           ; 01 46 F8
;   [conditional branch target (if/else)] L_38D4
L_38D4:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        or      ax, ax                          ; 0B C0
        je      L_38F1                          ; 74 13
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_38F1                          ; 74 08
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_193A                          ; E8 49 E0
;   [conditional branch target (if/else)] L_38F1
L_38F1:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_38F4
L_38F4:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        je      L_38FD                          ; 74 03
        jmp     L_384D                          ; E9 50 FF
;   [conditional branch target (if/else)] L_38FD
L_38FD:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x437                       ; B8 37 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 3C E3
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xf], 0       ; 26 80 7F 0F 00
        jne     L_391E                          ; 75 03
        jmp     L_39D2                          ; E9 B4 00
;   [conditional branch target (if/else)] L_391E
L_391E:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        dec     ax                              ; 48
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x43a                       ; B8 3A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 1E DD
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        jne     L_3989                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x43d                       ; B8 3D 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 CE E2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
;   [conditional branch target (if/else)] L_3989
L_3989:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x441                       ; B8 41 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 D5 DC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_39D2                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x444                       ; B8 44 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 85 E2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [branch target] L_39D2
L_39D2:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0x10], 0      ; 26 80 7F 10 00
        jne     L_39DF                          ; 75 03
        jmp     L_3AAB                          ; E9 CC 00
;   [conditional branch target (if/else)] L_39DF
L_39DF:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 0x1e]        ; 03 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        dec     ax                              ; 48
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x448                       ; B8 48 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        mov     ax, cx                          ; 8B C1
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 45 DC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        jne     L_3A62                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x44b                       ; B8 4B 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 F5 E1
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
;   [conditional branch target (if/else)] L_3A62
L_3A62:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x44f                       ; B8 4F 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1682                          ; E8 FC DB
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_3AAB                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x452                       ; B8 52 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C4D                          ; E8 AC E1
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [branch target] L_3AAB
L_3AAB:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0xffff ; 26 C7 87 31 02 FF FF
        jmp     L_3B58                          ; E9 99 00
;   [unconditional branch target] L_3ABF
L_3ABF:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jl      L_3AC8                          ; 7C 03
        jmp     L_3B58                          ; E9 90 00
;   [conditional branch target (if/else)] L_3AC8
L_3AC8:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        imul    word ptr [bp + 0x12]            ; F7 6E 12
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_3B40                          ; 74 59
        jmp     L_3B3A                          ; EB 51
;   [loop start] L_3AE9
L_3AE9:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_3B05                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_3B0B                          ; 76 06
;   [conditional branch target (if/else)] L_3B05
L_3B05:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_3B0B
L_3B0B:
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_3B37                          ; 75 24
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr es:[bx + 0x10], ax     ; 26 29 47 10
        cmp     word ptr es:[bx + 0x10], 0      ; 26 83 7F 10 00
        jg      L_3B37                          ; 7F 0B
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr es:[bx + 0x10], ax     ; 26 01 47 10
;   [conditional branch target (if/else)] L_3B37
L_3B37:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_3B3A
L_3B3A:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_3AE9                          ; 75 A9
;   [conditional branch target (if/else)] L_3B40
L_3B40:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        imul    word ptr [bp - 0x12]            ; F7 6E EE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        cdq                                     ; 99
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        sub     cx, cx                          ; 2B C9
        or      dx, bx                          ; 0B D3
        jmp     L_3B5B                          ; EB 03
;   [unconditional branch target] L_3B58
L_3B58:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
;   [unconditional branch target] L_3B5B
L_3B5B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_3BD0                          ; 74 54
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 2D 3C 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_3BD5                          ; 74 48
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2412                          ; E8 7A E8
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_3BD5                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 54 3C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3BD5                          ; 75 23
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 E9 C9
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FD 3B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3BD0
L_3BD0:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_3C07                          ; EB 32
;   [conditional branch target (if/else)] L_3BD5
L_3BD5:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_341B                          ; E8 29 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 76 3C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_3C07
L_3C07:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_3C7A                          ; 74 52
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A E6 24 00 00 [FIXUP]
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_3C7F                          ; 7E 48
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2412                          ; E8 D0 E7
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_3C7F                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 07 25 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3C7F                          ; 75 23
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 3F C9
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A BC 3C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3C7A
L_3C7A:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_3CC6                          ; EB 47
;   [conditional branch target (if/else)] L_3C7F
L_3C7F:
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
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_350D                          ; E8 5C F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 29 25 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_3CC6
L_3CC6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_3CE8                          ; 75 04
        xor     ax, ax                          ; 33 C0
        jmp     L_3CEB                          ; EB 03
;   [conditional branch target (if/else)] L_3CE8
L_3CE8:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
;   [unconditional branch target] L_3CEB
L_3CEB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_3CF6
L_3CF6:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_3D3E                          ; E8 32 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3D1A
L_3D1A:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_3E43                          ; E8 13 01
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3D3E
L_3D3E:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_3D5F                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_3D5F
L_3D5F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_3D78                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_3D78
L_3D78:
        or      ax, ax                          ; 0B C0
        jne     L_3D92                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_3DCD                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3D92
L_3D92:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_3D9D
L_3D9D:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_3D9D                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3EA6                          ; E8 EC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_3DC6                          ; 77 07
        jb      L_3DC9                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_3DC9                          ; 76 03
;   [conditional branch target (if/else)] L_3DC6
L_3DC6:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_3DC9
L_3DC9:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_3DCD
L_3DCD:
        or      di, di                          ; 0B FF
        je      L_3DD8                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_3DD8
L_3DD8:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3DDF
L_3DDF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_3DFF                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_3DFF
L_3DFF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_3E18                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_3E18
L_3E18:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_3E3D                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_3E3D
L_3E3D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3E43
L_3E43:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_3E65                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_3EA0                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3E65
L_3E65:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_3E70
L_3E70:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_3E70                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3EA6                          ; E8 19 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_3E99                          ; 77 07
        jb      L_3E9C                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_3E9C                          ; 76 03
;   [conditional branch target (if/else)] L_3E99
L_3E99:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_3E9C
L_3E9C:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_3EA0
L_3EA0:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3EA6
L_3EA6:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 6]               ; F7 66 06
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_3EED                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_3EED                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_3EE9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_3EE9
L_3EE9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_3EED
L_3EED:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

HP7550A_TEXT ENDS

        END
