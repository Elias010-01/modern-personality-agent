; ======================================================================
; HP7475A / seg1.asm   (segment 1 of HP7475A)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  600
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     2 (2 unique)
;   Top:
;        1  LOCKSEGMENT
;        1  UNLOCKSEGMENT
; ======================================================================
; AUTO-GENERATED from original HP7475A segment 1
; segment_size=15098 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HP7475A_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        je      L_0047                          ; 74 34
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 16 02 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_003E                          ; 74 18
        cmp     word ptr es:[bx + 7], -1        ; 26 83 7F 07 FF
        je      L_003E                          ; 74 11
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
        call    L_05F0                          ; E8 B2 05
;   [conditional branch target (if/else)] L_003E
L_003E:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 41 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0047
L_0047:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Mixed routine using: LOCKSEGMENT, UNLOCKSEGMENT.

;-------------------------------------------------------------------------
; sub_0052   offset=0x0052  size=185 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCKSEGMENT
;   UNLOCKSEGMENT
;
; Near calls (internal): L_0052, L_0253, L_04B8, L_191C, L_1EE0, L_1F19
;-------------------------------------------------------------------------
;   [sub-routine] L_0052
L_0052:
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
        call    L_191C                          ; E8 AA 18
        test    word ptr [bp + 0x12], 1         ; F7 46 12 01 00
        jne     L_007C                          ; 75 03
        jmp     L_00FF                          ; E9 83 00
;   [conditional branch target (if/else)] L_007C
L_007C:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        jmp     L_0090                          ; EB 03
;   [loop start] L_008D
L_008D:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_0090
L_0090:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_008D                          ; 75 F1
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0253                          ; E8 A8 01
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [0x2a], ax             ; A3 2A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00CC                          ; 74 13
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0x22], 0x12   ; 26 83 7F 22 12
        jne     L_00CC                          ; 75 09
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1EE0                          ; E8 14 1E
;   [conditional branch target (if/else)] L_00CC
L_00CC:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F19                          ; E8 44 1E
        mov     word ptr [bp - 8], 0x10         ; C7 46 F8 10 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [loop start] L_00DF
L_00DF:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        cmp     word ptr [bp - 0xa], 0x68       ; 83 7E F6 68
        jl      L_00DF                          ; 7C E6
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_01F7                          ; E9 F8 00
;   [unconditional branch target] L_00FF
L_00FF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0110                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x48]     ; 26 8B 47 48
        jmp     L_0113                          ; EB 03
;   [conditional branch target (if/else)] L_0110
L_0110:
        mov     ax, 0x26                        ; B8 26 00
;   [unconditional branch target] L_0113
L_0113:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xd], ax      ; 26 89 47 0D
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_012B                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        jmp     L_012E                          ; EB 03
;   [conditional branch target (if/else)] L_012B
L_012B:
        mov     ax, 0x13                        ; B8 13 00
;   [unconditional branch target] L_012E
L_012E:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xf], ax      ; 26 89 47 0F
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0253                          ; E8 11 01
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 0xb]      ; 26 8B 47 0B
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], ss        ; 8C 96 74 FF
;   [loop start] L_015F
L_015F:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_015F                          ; 75 E8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     byte ptr es:[bx], 1             ; 26 C6 07 01
        mov     word ptr es:[bx + 0x15], 0x200  ; 26 C7 47 15 00 02
        mov     word ptr es:[bx + 0x17], 0      ; 26 C7 47 17 00 00
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        mov     word ptr es:[bx + 5], 0         ; 26 C7 47 05 00 00
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     word ptr es:[bx + 1], ax        ; 26 89 47 01
        mov     ax, word ptr [0x1a]             ; A1 1A 00
        mov     word ptr es:[bx + 3], ax        ; 26 89 47 03
        mov     ax, word ptr [0x28]             ; A1 28 00
        mov     word ptr es:[bx + 0x225], ax    ; 26 89 87 25 02
        mov     word ptr es:[bx + 0x227], 0     ; 26 C7 87 27 02 00 00
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        mov     word ptr es:[bx + 0x231], 0     ; 26 C7 87 31 02 00 00
        mov     word ptr es:[bx + 0x233], 0     ; 26 C7 87 33 02 00 00
        mov     word ptr es:[bx + 0x235], 0     ; 26 C7 87 35 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04B8                          ; E8 C4 02
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_01F7
L_01F7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
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
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
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
        call    L_0052                          ; E8 18 FE
        mov     si, ax                          ; 8B F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Pure computation / dispatcher (157 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0253   offset=0x0253  size=157 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0253
L_0253:
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
        jne     L_026C                          ; 75 03
        jmp     L_0405                          ; E9 99 01
;   [conditional branch target (if/else)] L_026C
L_026C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_0292                          ; 74 1A
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0280                          ; 75 03
        jmp     L_0334                          ; E9 B4 00
;   [conditional branch target (if/else)] L_0280
L_0280:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0288                          ; 75 03
        jmp     L_0367                          ; E9 DF 00
;   [conditional branch target (if/else)] L_0288
L_0288:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_0290                          ; 75 03
        jmp     L_03B2                          ; E9 22 01
;   [conditional branch target (if/else)] L_0290
L_0290:
        jmp     L_02DF                          ; EB 4D
;   [conditional branch target (if/else)] L_0292
L_0292:
        mov     word ptr [0x14], 0x103          ; C7 06 14 00 03 01
        mov     word ptr [0x16], 0xc7           ; C7 06 16 00 C7 00
        mov     word ptr [0x18], 0xd7f          ; C7 06 18 00 7F 0D
        mov     word ptr [0x1a], 0xa5e          ; C7 06 1A 00 5E 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_02DF                          ; 74 2D
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0xe8d ; 26 C7 87 19 02 8D 0E
        mov     word ptr es:[bx + 0x21b], 0xb3e ; 26 C7 87 1B 02 3E 0B
        mov     word ptr es:[bx + 0x21d], 0x28  ; 26 C7 87 1D 02 28 00
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x28  ; 26 C7 87 23 02 28 00
;   [loop start (also forward branch)] L_02DF
L_02DF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_02EA                          ; 75 03
        jmp     L_0491                          ; E9 A7 01
;   [conditional branch target (if/else)] L_02EA
L_02EA:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x23f], 0xffff ; 26 C7 87 3F 02 FF FF
        mov     word ptr es:[bx + 0x241], 0xff  ; 26 C7 87 41 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_0300
L_0300:
        cmp     word ptr [bp - 4], 7            ; 83 7E FC 07
        jl      L_0309                          ; 7C 03
        jmp     L_0491                          ; E9 88 01
;   [conditional branch target (if/else)] L_0309
L_0309:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + si + 0x20] ; 26 8B 40 20
        mov     dx, word ptr es:[bx + si + 0x22] ; 26 8B 50 22
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + si + 0x23f], ax ; 26 89 80 3F 02
        mov     word ptr es:[bx + si + 0x241], dx ; 26 89 90 41 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0300                          ; EB CC
;   [unconditional branch target] L_0334
L_0334:
        mov     word ptr [0x14], 0x1a0          ; C7 06 14 00 A0 01
        mov     word ptr [0x16], 0x103          ; C7 06 16 00 03 01
        mov     word ptr [0x18], 0x15aa         ; C7 06 18 00 AA 15
        mov     word ptr [0x1a], 0xd7f          ; C7 06 1A 00 7F 0D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_02DF                          ; 74 8B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0x167d ; 26 C7 87 19 02 7D 16
        mov     word ptr es:[bx + 0x21b], 0xe8d ; 26 C7 87 1B 02 8D 0E
        jmp     L_039B                          ; EB 34
;   [unconditional branch target] L_0367
L_0367:
        mov     word ptr [0x14], 0x193          ; C7 06 14 00 93 01
        mov     word ptr [0x16], 0x114          ; C7 06 16 00 14 01
        mov     word ptr [0x18], 0x150a         ; C7 06 18 00 0A 15
        mov     word ptr [0x1a], 0xe60          ; C7 06 1A 00 60 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_038A                          ; 75 03
        jmp     L_02DF                          ; E9 55 FF
;   [conditional branch target (if/else)] L_038A
L_038A:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0x15e0 ; 26 C7 87 19 02 E0 15
        mov     word ptr es:[bx + 0x21b], 0xf78 ; 26 C7 87 1B 02 78 0F
;   [unconditional branch target] L_039B
L_039B:
        mov     word ptr es:[bx + 0x21d], 0x38  ; 26 C7 87 1D 02 38 00
        mov     word ptr es:[bx + 0x21f], 0x2d  ; 26 C7 87 1F 02 2D 00
        mov     word ptr es:[bx + 0x221], 0x2d  ; 26 C7 87 21 02 2D 00
        jmp     L_03FB                          ; EB 49
;   [unconditional branch target] L_03B2
L_03B2:
        mov     word ptr [0x14], 0x114          ; C7 06 14 00 14 01
        mov     word ptr [0x16], 0xc1           ; C7 06 16 00 C1 00
        mov     word ptr [0x18], 0xe60          ; C7 06 18 00 60 0E
        mov     word ptr [0x1a], 0xa0d          ; C7 06 1A 00 0D 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_03D5                          ; 75 03
        jmp     L_02DF                          ; E9 0A FF
;   [conditional branch target (if/else)] L_03D5
L_03D5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0xf78 ; 26 C7 87 19 02 78 0F
        mov     word ptr es:[bx + 0x21b], 0xaf0 ; 26 C7 87 1B 02 F0 0A
        mov     word ptr es:[bx + 0x21d], 0x28  ; 26 C7 87 1D 02 28 00
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
;   [unconditional branch target] L_03FB
L_03FB:
        mov     word ptr es:[bx + 0x223], 0x38  ; 26 C7 87 23 02 38 00
        jmp     L_02DF                          ; E9 DA FE
;   [unconditional branch target] L_0405
L_0405:
        mov     word ptr [0x14], 0x103          ; C7 06 14 00 03 01
        mov     word ptr [0x16], 0xc7           ; C7 06 16 00 C7 00
        mov     word ptr [0x18], 0xd7f          ; C7 06 18 00 7F 0D
        mov     word ptr [0x1a], 0xa5e          ; C7 06 1A 00 5E 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_0491                          ; 74 6C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x23f], 0xffff ; 26 C7 87 3F 02 FF FF
        mov     word ptr es:[bx + 0x241], 0xff  ; 26 C7 87 41 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_043B
L_043B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x18a]       ; 8B 87 8A 01
        mov     dx, word ptr [bx + 0x18c]       ; 8B 97 8C 01
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + si + 0x23f], ax ; 26 89 80 3F 02
        mov     word ptr es:[bx + si + 0x241], dx ; 26 89 90 41 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 7            ; 83 7E FC 07
        jl      L_043B                          ; 7C D4
        mov     word ptr es:[bx + 0x219], 0xe8d ; 26 C7 87 19 02 8D 0E
        mov     word ptr es:[bx + 0x21b], 0xb3e ; 26 C7 87 1B 02 3E 0B
        mov     word ptr es:[bx + 0x21d], 0x28  ; 26 C7 87 1D 02 28 00
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x28  ; 26 C7 87 23 02 28 00
;   [branch target] L_0491
L_0491:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_04A9                          ; 74 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x25b                       ; 05 5B 02
        sub     ax, bx                          ; 2B C3
        mov     word ptr es:[bx + 0xb], ax      ; 26 89 47 0B
;   [conditional branch target (if/else)] L_04A9
L_04A9:
        mov     ax, 0x25c                       ; B8 5C 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (137 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_04B8   offset=0x04B8  size=137 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1350, L_1692, L_1B00
;-------------------------------------------------------------------------
;   [sub-routine] L_04B8
L_04B8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x237], 2     ; 26 C7 87 37 02 02 00
        mov     word ptr es:[bx + 0x239], 3     ; 26 C7 87 39 02 03 00
        mov     word ptr es:[bx + 0x23b], 2     ; 26 C7 87 3B 02 02 00
        mov     word ptr es:[bx + 0x23d], 3     ; 26 C7 87 3D 02 03 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_04ED                          ; 75 03
        jmp     L_05E5                          ; E9 F8 00
;   [conditional branch target (if/else)] L_04ED
L_04ED:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x78                        ; B8 78 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 03 16
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        cmp     ax, 0xd7f                       ; 3D 7F 0D
        je      L_051A                          ; 74 11
        cmp     ax, 0xe60                       ; 3D 60 0E
        je      L_051A                          ; 74 0C
        cmp     ax, 0x150a                      ; 3D 0A 15
        je      L_0544                          ; 74 31
        cmp     ax, 0x15aa                      ; 3D AA 15
        je      L_0544                          ; 74 2C
        jmp     L_052E                          ; EB 14
;   [conditional branch target (if/else)] L_051A
L_051A:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x81                        ; B8 81 00
;   [loop start] L_0523
L_0523:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 D2 15
;   [unconditional branch target] L_052E
L_052E:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_054F                          ; 75 17
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x8b                        ; B8 8B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_055D                          ; EB 19
;   [conditional branch target (if/else)] L_0544
L_0544:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x86                        ; B8 86 00
        jmp     L_0523                          ; EB D4
;   [conditional branch target (if/else)] L_054F
L_054F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x8f                        ; B8 8F 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
;   [unconditional branch target] L_055D
L_055D:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 9D 15
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xd], 0       ; 26 83 7F 0D 00
        je      L_0593                          ; 74 26
        cmp     word ptr es:[bx + 0xd], 0x26    ; 26 83 7F 0D 26
        jge     L_0593                          ; 7D 1F
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x97                        ; B8 97 00
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
        call    L_1350                          ; E8 BF 0D
        jmp     L_05A7                          ; EB 14
;   [conditional branch target (if/else)] L_0593
L_0593:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x9a                        ; B8 9A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 59 15
;   [unconditional branch target] L_05A7
L_05A7:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x227]    ; 26 8B 87 27 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 D2 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x9e                        ; B8 9E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 2C 15
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22d], 0     ; 26 C7 87 2D 02 00 00
        mov     word ptr es:[bx + 0x22f], 0     ; 26 C7 87 2F 02 00 00
;   [unconditional branch target] L_05E5
L_05E5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (121 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_05F0   offset=0x05F0  size=121 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_1350, L_1B00, L_1B93
;-------------------------------------------------------------------------
;   [sub-routine] L_05F0
L_05F0:
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
        jne     L_0611                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_09AF                          ; E9 9E 03
;   [conditional branch target (if/else)] L_0611
L_0611:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_061F                          ; 76 03
        jmp     L_09AC                          ; E9 8D 03
;   [conditional branch target (if/else)] L_061F
L_061F:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x990]        ; 2E FF A7 90 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x13]     ; 26 8B 47 13
        inc     word ptr es:[bx + 0x13]         ; 26 FF 47 13
        or      ax, ax                          ; 0B C0
        jne     L_067E                          ; 75 3A
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_065F                          ; 75 14
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        jmp     L_0674                          ; EB 15
;   [conditional branch target (if/else)] L_065F
L_065F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
;   [unconditional branch target] L_0674
L_0674:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_089C                          ; E9 1E 02
;   [conditional branch target (if/else)] L_067E
L_067E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_069C                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_069F                          ; EB 03
;   [conditional branch target (if/else)] L_069C
L_069C:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_069F
L_069F:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x13], 0      ; 26 C7 47 13 00 00
        cmp     word ptr es:[bx + 9], 0         ; 26 83 7F 09 00
        jne     L_06B5                          ; 75 03
        jmp     L_09AC                          ; E9 F7 02
;   [conditional branch target (if/else)] L_06B5
L_06B5:
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_06D7                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xa6                        ; B8 A6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 33 14
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_06D7
L_06D7:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x227], 0     ; 26 C7 87 27 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xaa                        ; B8 AA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 0F 14
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb1                        ; B8 B1 00
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
        call    L_1350                          ; E8 34 0C
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B93                          ; E8 5F 14
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        jmp     L_09AC                          ; E9 60 02
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B93                          ; E8 3C 14
        jmp     L_089C                          ; E9 42 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_0779                          ; 75 15
        mov     ax, word ptr es:[bx + 0x219]    ; 26 8B 87 19 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
        jmp     L_078F                          ; EB 16
;   [conditional branch target (if/else)] L_0779
L_0779:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x219]    ; 26 8B 87 19 02
;   [loop start (also forward branch)] L_078F
L_078F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_089C                          ; E9 03 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_07B8                          ; 75 15
        mov     ax, word ptr es:[bx + 0x21d]    ; 26 8B 87 1D 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21f]    ; 26 8B 87 1F 02
        jmp     L_078F                          ; EB D7
;   [conditional branch target (if/else)] L_07B8
L_07B8:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x221]    ; 26 8B 87 21 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x223]    ; 26 8B 87 23 02
        jmp     L_078F                          ; EB BF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x13], 0      ; 26 C7 47 13 00 00
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_07FA                          ; 74 1A
        cmp     word ptr es:[bx + 7], -1        ; 26 83 7F 07 FF
        je      L_07FA                          ; 74 13
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
        call    L_05F0                          ; E8 F8 FD
        jmp     L_0803                          ; EB 09
;   [conditional branch target (if/else)] L_07FA
L_07FA:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
;   [unconditional branch target] L_0803
L_0803:
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
        jne     L_082C                          ; 75 03
        jmp     L_09AC                          ; E9 80 01
;   [conditional branch target (if/else)] L_082C
L_082C:
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04B8                          ; E8 81 FC
        jmp     L_089C                          ; EB 63
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 B3 12
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
        call    L_05F0                          ; E8 8E FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        jmp     L_089C                          ; EB 23
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0887                          ; 7D 03
        jmp     L_09AC                          ; E9 25 01
;   [conditional branch target (if/else)] L_0887
L_0887:
        cmp     ax, 6                           ; 3D 06 00
        jle     L_089C                          ; 7E 10
        cmp     ax, 8                           ; 3D 08 00
        jge     L_0894                          ; 7D 03
        jmp     L_09AC                          ; E9 18 01
;   [conditional branch target (if/else)] L_0894
L_0894:
        cmp     ax, 0xd                         ; 3D 0D 00
        jle     L_089C                          ; 7E 03
        jmp     L_09AC                          ; E9 10 01
;   [loop start (also forward branch)] L_089C
L_089C:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_09AC                          ; E9 08 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 5], ax        ; 26 89 47 05
        jmp     L_089C                          ; EB E9
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x17], 0      ; 26 C7 47 17 00 00
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb8                        ; B8 B8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 19 12
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        mov     word ptr es:[bx + 0x227], 0     ; 26 C7 87 27 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xbe                        ; B8 BE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 F8 11
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xc5                        ; B8 C5 00
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
        call    L_1350                          ; E8 1D 0A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        jmp     L_089C                          ; E9 55 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jge     L_0954                          ; 7D 04
        xor     si, si                          ; 33 F6
        jmp     L_0972                          ; EB 1E
;   [conditional branch target (if/else)] L_0954
L_0954:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_096C                          ; 7F 08
        mov     si, word ptr es:[bx + 0x225]    ; 26 8B B7 25 02
        dec     si                              ; 4E
        jmp     L_0972                          ; EB 06
;   [conditional branch target (if/else)] L_096C
L_096C:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx]            ; 26 8B 37
;   [unconditional branch target] L_0972
L_0972:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + si + 0x23f] ; 26 8B 80 3F 02
        mov     dx, word ptr es:[bx + si + 0x241] ; 26 8B 90 41 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        jmp     L_089C                          ; E9 0C FF
        lea     ax, [0x8b3]                     ; 8D 06 B3 08
        daa                                     ; 27
        push    es                              ; 06
        inc     di                              ; 47
        or      word ptr [bx + 9], ax           ; 09 47 09
        dec     sp                              ; 4C
        pop     es                              ; 07
        lodsb   al, byte ptr [si]               ; AC
        or      word ptr [bx + di + 8], di      ; 09 79 08
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        or      al, dl                          ; 08 D0
        pop     es                              ; 07
        cmp     word ptr [bx + si], cx          ; 39 08
        pop     dx                              ; 5A
        pop     es                              ; 07
        cdq                                     ; 99
        pop     es                              ; 07
        lodsb   al, byte ptr [si]               ; AC
        or      word ptr [bp + di - 0x7ba], cx  ; 09 8B 46 F8
;   [unconditional branch target] L_09AF
L_09AF:
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
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [0xfa], 0              ; 83 3E FA 00 00
        je      L_09D3                          ; 74 03
        jmp     L_0A9F                          ; E9 CC 00
;   [conditional branch target (if/else)] L_09D3
L_09D3:
        mov     word ptr [0xfa], 1              ; C7 06 FA 00 01 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 18 00 00 00 [FIXUP]
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xc8                        ; B8 C8 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 3A 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x4e                        ; 3D 4E 00
        jne     L_0A1D                          ; 75 13
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0xd1                        ; B8 D1 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A73                          ; 74 56
;   [conditional branch target (if/else)] L_0A1D
L_0A1D:
        mov     word ptr [0x412], 0x13          ; C7 06 12 04 13 00
        mov     word ptr [0x438], 0x26          ; C7 06 38 04 26 00
        mov     word ptr [0x410], 0xa           ; C7 06 10 04 0A 00
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xda                        ; B8 DA 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A AE 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [loop start] L_0A43
L_0A43:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     word ptr [bx + 0x42c], si       ; 89 B7 2C 04
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x18e]       ; 8B 84 8E 01
        mov     dx, word ptr [si + 0x190]       ; 8B 94 90 01
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x414], ax       ; 89 87 14 04
        mov     word ptr [bx + 0x416], dx       ; 89 97 16 04
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 6            ; 83 7E FA 06
        jl      L_0A43                          ; 7C D0
;   [conditional branch target (if/else)] L_0A73
L_0A73:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0xe3                        ; B8 E3 00
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
        jne     L_0AA3                          ; 75 13
        mov     word ptr [0xfa], 0              ; C7 06 FA 00 00 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A E7 0A 00 00 [FIXUP]
;   [unconditional branch target] L_0A9F
L_0A9F:
        xor     ax, ax                          ; 33 C0
        jmp     L_0AEE                          ; EB 4B
;   [conditional branch target (if/else)] L_0AA3
L_0AA3:
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xf0                        ; B8 F0 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3f0                       ; B8 F0 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
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
        mov     word ptr [0xfa], 0              ; C7 06 FA 00 00 00
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 43 00 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0AEE
L_0AEE:
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
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0B23                          ; 74 13
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0B18                          ; 75 03
        jmp     L_0CDC                          ; E9 C4 01
;   [conditional branch target (if/else)] L_0B18
L_0B18:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_0B20                          ; 75 03
        jmp     L_0C16                          ; E9 F6 00
;   [conditional branch target (if/else)] L_0B20
L_0B20:
        jmp     L_0E6C                          ; E9 49 03
;   [conditional branch target (if/else)] L_0B23
L_0B23:
        mov     word ptr [0x43a], 0x28          ; C7 06 3A 04 28 00
        mov     ax, word ptr [0x42c]            ; A1 2C 04
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x43c], ax            ; A3 3C 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x410]                ; FF 36 10 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 4E 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x412]                ; FF 36 12 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 5E 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x43a]                ; FF 36 3A 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 6E 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x43c]                ; FF 36 3C 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FD 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0x1e         ; C7 46 FC 1E 00
;   [loop start] L_0B77
L_0B77:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x3f0]       ; 8B 87 F0 03
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
        cmp     word ptr [bp - 4], 0x24         ; 83 7E FC 24
        jl      L_0B77                          ; 7C C9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A D8 0B 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 09 0C 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x438]                ; FF 36 38 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A BD 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [0x438]                ; FF 36 38 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A CF 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E6C                          ; E9 56 02
;   [unconditional branch target] L_0C16
L_0C16:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0C2A                          ; 74 03
        jmp     L_0E6C                          ; E9 42 02
;   [conditional branch target (if/else)] L_0C2A
L_0C2A:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 7                           ; 3D 07 00
        ja      L_0C85                          ; 77 44
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xc75]        ; 2E FF A7 75 0C
        dec     word ptr [bp - 6]               ; FF 4E FA
        jmp     L_0C85                          ; EB 37
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0C85                          ; EB 32
        sub     word ptr [bp - 6], 0xa          ; 83 6E FA 0A
        jmp     L_0C85                          ; EB 2C
        add     word ptr [bp - 6], 0xa          ; 83 46 FA 0A
        jmp     L_0C85                          ; EB 26
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0C85                          ; EB 1E
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0C85                          ; EB 17
        mov     word ptr [bp - 6], 0x26         ; C7 46 FA 26 00
        jmp     L_0C85                          ; EB 10
        dec     cx                              ; 49
        or      al, 0x4e                        ; 0C 4E
        or      al, 0x53                        ; 0C 53
        or      al, 0x59                        ; 0C 59
        or      al, 0x5f                        ; 0C 5F
        or      al, 0x85                        ; 0C 85
        or      al, 0x67                        ; 0C 67
;   [loop start] L_0C82
L_0C82:
        or      al, 0x6e                        ; 0C 6E
        or      al, 0x83                        ; 0C 83
        jle     L_0C82                          ; 7E FA
        jle     L_0C90                          ; 26 7E 05
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_0C93                          ; EB 03
;   [conditional branch target (if/else)] L_0C90
L_0C90:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0C93
L_0C93:
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0C9D                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0CAB                          ; EB 0E
;   [conditional branch target (if/else)] L_0C9D
L_0C9D:
        cmp     word ptr [bp - 6], 0x26         ; 83 7E FA 26
        jle     L_0CA8                          ; 7E 05
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_0CAB                          ; EB 03
;   [conditional branch target (if/else)] L_0CA8
L_0CA8:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0CAB
L_0CAB:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x438], ax            ; A3 38 04
        jmp     L_0E6C                          ; E9 90 01
;   [unconditional branch target] L_0CDC
L_0CDC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x2e                        ; 3D 2E 00
        jbe     L_0CEA                          ; 76 03
        jmp     L_0E6C                          ; E9 82 01
;   [conditional branch target (if/else)] L_0CEA
L_0CEA:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xe09]        ; 2E FF A7 09 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x412]                ; FF 36 12 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 10 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x412], ax            ; A3 12 04
;   [loop start] L_0D0A
L_0D0A:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 22 0D 00 00 [FIXUP]
        jmp     L_0E67                          ; E9 50 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x410]                ; FF 36 10 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 3C 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x410], ax            ; A3 10 04
        jmp     L_0D0A                          ; EB D9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x43a]                ; FF 36 3A 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 4F 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x43a], ax            ; A3 3A 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 5E 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x43c]                ; FF 36 3C 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x43a]            ; 8B 1E 3A 04
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x3dc]       ; 8B 87 DC 03
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x43c], ax            ; A3 3C 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        jmp     L_0D0A                          ; EB 93
        mov     bx, word ptr [0x43a]            ; 8B 1E 3A 04
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x14                        ; 2D 14 00
        mov     word ptr [bx + 0x3dc], ax       ; 89 87 DC 03
        mov     bx, word ptr [0x43a]            ; 8B 1E 3A 04
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x13e]       ; 8B 84 3E 01
        mov     dx, word ptr [si + 0x140]       ; 8B 94 40 01
        mov     word ptr [bx + 0x374], ax       ; 89 87 74 03
        mov     word ptr [bx + 0x376], dx       ; 89 97 76 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x43c]                ; FF 36 3C 04
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A C4 0D 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x43c], ax            ; A3 3C 04
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 3E 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x43c]                ; FF 36 3C 04
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
        call    far USER.GETDLGITEMTEXT         ; 9A 91 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, word ptr [0x43a]            ; A1 3A 04
        sub     ax, 0xa                         ; 2D 0A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A A1 0B 00 00 [FIXUP]
        jmp     L_0E67                          ; EB 74
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0DF9
L_0DF9:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0E67                          ; EB 66
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 2                           ; B8 02 00
        jmp     L_0DF9                          ; EB F0
        or      ax, 0xe01                       ; F3 0D 01 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        pop     ss                              ; 17
        or      ax, 0xd17                       ; 0D 17 0D
        pop     ss                              ; 17
        or      ax, 0xd17                       ; 0D 17 0D
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        or      al, 0xf2                        ; F2 0C F2
        or      al, 0x77                        ; 0C 77
        or      ax, 0xd77                       ; 0D 77 0D
        ja      L_0E42                          ; 77 0D
        ja      L_0E44                          ; 77 0D
        ja      L_0E46                          ; 77 0D
        ja      L_0E48                          ; 77 0D
        ja      L_0E4A                          ; 77 0D
        ja      L_0E4C                          ; 77 0D
        ja      L_0E4E                          ; 77 0D
        ja      L_0E50                          ; 77 0D
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E44
L_0E44:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E46
L_0E46:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E48
L_0E48:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E4A
L_0E4A:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E4C
L_0E4C:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E4E
L_0E4E:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
;   [conditional branch target (if/else)] L_0E50
L_0E50:
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        insb    byte ptr es:[di], dx            ; 6C
        push    cs                              ; 0E
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
        xor     word ptr [di], cx               ; 31 0D
;   [unconditional branch target] L_0E67
L_0E67:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0E6E                          ; EB 02
;   [unconditional branch target] L_0E6C
L_0E6C:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_0E6E
L_0E6E:
        pop     si                              ; 5E
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
        sub     sp, 0x48                        ; 83 EC 48
        push    si                              ; 56
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0E97                          ; 75 06
;   [loop start] L_0E91
L_0E91:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0F24                          ; E9 8D 00
;   [conditional branch target (if/else)] L_0E97
L_0E97:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0EB3                          ; 74 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xfc                        ; B8 FC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19A7                          ; E8 F8 0A
        or      ax, ax                          ; 0B C0
        je      L_0E91                          ; 74 DE
;   [conditional branch target (if/else)] L_0EB3
L_0EB3:
        mov     word ptr [bp - 0xa], 0x14a      ; C7 46 F6 4A 01
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0EC6
L_0EC6:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1b       ; 83 7E F4 1B
        jl      L_0EC6                          ; 7C E6
        mov     word ptr [bp - 0xa], 0x166      ; C7 46 F6 66 01
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0EF3
L_0EF3:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1f       ; 83 7E F4 1F
        jl      L_0EF3                          ; 7C E6
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
;   [unconditional branch target] L_0F24
L_0F24:
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
        L_0E42:
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
        jne     L_0F4F                          ; 75 05
;   [loop start] L_0F4A
L_0F4A:
        mov     ax, si                          ; 8B C6
        jmp     L_1021                          ; E9 D2 00
;   [conditional branch target (if/else)] L_0F4F
L_0F4F:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 1                           ; 3D 01 00
        je      L_0F5E                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_0FC3                          ; 74 67
        jmp     L_0F4A                          ; EB EC
;   [conditional branch target (if/else)] L_0F5E
L_0F5E:
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
;   [loop start] L_0F6D
L_0F6D:
        cmp     word ptr [bp - 0x16], 6         ; 83 7E EA 06
        jge     L_0F4A                          ; 7D D7
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_0FB1                          ; EB 31
;   [loop start] L_0F80
L_0F80:
        mov     di, word ptr [bp - 0x14]        ; 8B 7E EC
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + di + 0x23f] ; 26 8B 81 3F 02
        mov     dx, word ptr es:[bx + di + 0x241] ; 26 8B 91 41 02
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
        je      L_1013                          ; 74 65
        inc     word ptr [bp - 0x14]            ; FF 46 EC
;   [unconditional branch target] L_0FB1
L_0FB1:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_0F80                          ; 7F C2
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        jmp     L_0F6D                          ; EB AA
;   [conditional branch target (if/else)] L_0FC3
L_0FC3:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0FC8
L_0FC8:
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        jl      L_0FD1                          ; 7C 03
        jmp     L_0F4A                          ; E9 79 FF
;   [conditional branch target (if/else)] L_0FD1
L_0FD1:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
;   [loop start] L_0FDC
L_0FDC:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jle     L_101C                          ; 7E 33
        mov     di, ax                          ; 8B F8
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        mov     ax, word ptr es:[bx + di + 0x23f] ; 26 8B 81 3F 02
        mov     dx, word ptr es:[bx + di + 0x241] ; 26 8B 91 41 02
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
        jne     L_1017                          ; 75 04
;   [conditional branch target (if/else)] L_1013
L_1013:
        xor     ax, ax                          ; 33 C0
        jmp     L_1021                          ; EB 0A
;   [conditional branch target (if/else)] L_1017
L_1017:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_0FDC                          ; EB C0
;   [conditional branch target (if/else)] L_101C
L_101C:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0FC8                          ; EB A7
;   [unconditional branch target] L_1021
L_1021:
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
        jne     L_1048                          ; 75 03
        jmp     L_1342                          ; E9 FA 02
;   [conditional branch target (if/else)] L_1048
L_1048:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_1051                          ; 7D 03
        jmp     L_1342                          ; E9 F1 02
;   [conditional branch target (if/else)] L_1051
L_1051:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_105C                          ; 75 03
        jmp     L_132D                          ; E9 D1 02
;   [conditional branch target (if/else)] L_105C
L_105C:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        je      L_1074                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        je      L_10BF                          ; 74 56
        cmp     ax, 3                           ; 3D 03 00
        jne     L_1071                          ; 75 03
        jmp     L_1107                          ; E9 96 00
;   [conditional branch target (if/else)] L_1071
L_1071:
        jmp     L_1342                          ; E9 CE 02
;   [conditional branch target (if/else)] L_1074
L_1074:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2F52                          ; E8 C2 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_10A2                          ; 7D 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_10A2
L_10A2:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     ax, 5                           ; 3D 05 00
        jne     L_10B9                          ; 75 05
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [loop start (also forward branch)] L_10B9
L_10B9:
        mov     ax, 4                           ; B8 04 00
        jmp     L_1344                          ; E9 85 02
;   [conditional branch target (if/else)] L_10BF
L_10BF:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2F52                          ; E8 77 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_10EC                          ; 75 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_10EC
L_10EC:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 2             ; 26 83 3F 02
        jne     L_10FB                          ; 75 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_10FE                          ; EB 03
;   [conditional branch target (if/else)] L_10FB
L_10FB:
        mov     ax, 6                           ; B8 06 00
;   [unconditional branch target] L_10FE
L_10FE:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_10B9                          ; EB B2
;   [unconditional branch target] L_1107
L_1107:
        mov     word ptr [bp - 0xe], 0x104      ; C7 46 F2 04 01
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_111D
L_111D:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 0x45      ; 83 7E F0 45
        jl      L_111D                          ; 7C E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [0x127]            ; 03 06 27 01
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, 0x185                       ; B8 85 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ds         ; 8C 5E F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_1155
L_1155:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 8         ; 83 7E F0 08
        jl      L_1155                          ; 7C E5
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_117E                          ; 7C 05
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_1186                          ; EB 08
;   [conditional branch target (if/else)] L_117E
L_117E:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_1186
L_1186:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_1192                          ; 75 05
        mov     word ptr [bp - 0x18], 0x36      ; C7 46 E8 36 00
;   [conditional branch target (if/else)] L_1192
L_1192:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jl      L_11A2                          ; 7C 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        jmp     L_11AB                          ; EB 09
;   [conditional branch target (if/else)] L_11A2
L_11A2:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_11AB
L_11AB:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_11C1                          ; 75 0F
        mov     ax, 0x13                        ; B8 13 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        cdq                                     ; 99
        mov     cx, 0x1b                        ; B9 1B 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_11C1
L_11C1:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x237]        ; 26 FF B7 37 02
        push    word ptr es:[bx + 0x239]        ; 26 FF B7 39 02
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
        jne     L_12BA                          ; 75 07
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        jmp     L_12C9                          ; EB 0F
;   [conditional branch target (if/else)] L_12BA
L_12BA:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xd], 3       ; 26 80 7F 0D 03
        jne     L_12C9                          ; 75 05
        or      byte ptr es:[bx + 0xd], 3       ; 26 80 4F 0D 03
;   [branch target] L_12C9
L_12C9:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xe], 2       ; 26 80 7F 0E 02
        jne     L_12D8                          ; 75 05
        or      byte ptr es:[bx + 0xe], 4       ; 26 80 4F 0E 04
;   [conditional branch target (if/else)] L_12D8
L_12D8:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_1300                          ; 74 1A
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, 0x96                        ; 05 96 00
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jge     L_1300                          ; 7D 0B
        add     word ptr es:[bx + 8], 0x12c     ; 26 81 47 08 2C 01
        or      byte ptr es:[bx + 0x10], 2      ; 26 80 4F 10 02
;   [conditional branch target (if/else)] L_1300
L_1300:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_131F                          ; 74 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], ax     ; 26 89 47 11
        jmp     L_1328                          ; EB 09
;   [conditional branch target (if/else)] L_131F
L_131F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
;   [loop start (also forward branch)] L_1328
L_1328:
        mov     ax, 0x45                        ; B8 45 00
        jmp     L_1344                          ; EB 17
;   [unconditional branch target] L_132D
L_132D:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        jl      L_1342                          ; 7C 0D
        cmp     ax, 2                           ; 3D 02 00
        jg      L_133D                          ; 7F 03
        jmp     L_10B9                          ; E9 7C FD
;   [conditional branch target (if/else)] L_133D
L_133D:
        cmp     ax, 3                           ; 3D 03 00
        je      L_1328                          ; 74 E6
;   [branch target] L_1342
L_1342:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1344
L_1344:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1350
L_1350:
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
        jmp     L_1471                          ; E9 DF 00
;   [loop start] L_1392
L_1392:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_139D                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_13A0                          ; EB 03
;   [conditional branch target (if/else)] L_139D
L_139D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_13A0
L_13A0:
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
        call    L_1897                          ; E8 CC 04
        jmp     L_145C                          ; E9 8E 00
;   [loop start] L_13CE
L_13CE:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_1413                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_1409                          ; 73 25
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
        call    L_1B00                          ; E8 01 07
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_1409
L_1409:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_1413
L_1413:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1432                          ; 74 19
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_1432                          ; 74 11
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_143E                          ; EB 0C
;   [conditional branch target (if/else)] L_1432
L_1432:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_143E
L_143E:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A0C                          ; E8 B7 05
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_145C
L_145C:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_1469                          ; 7E 03
        jmp     L_13CE                          ; E9 65 FF
;   [conditional branch target (if/else)] L_1469
L_1469:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_1471
L_1471:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_147A                          ; 7E 03
        jmp     L_1392                          ; E9 18 FF
;   [conditional branch target (if/else)] L_147A
L_147A:
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
        call    L_1B00                          ; E8 61 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_14AA
L_14AA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_1520                          ; 75 62
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1520                          ; 74 5C
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_1520                          ; 75 55
;   [loop start] L_14CB
L_14CB:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_152A                          ; 7E 59
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
        jmp     L_14CB                          ; EB C2
;   [loop start] L_1509
L_1509:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_1520
L_1520:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_1509                          ; 7F DF
;   [conditional branch target (if/else)] L_152A
L_152A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1535
L_1535:
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
        jmp     L_1659                          ; E9 E2 00
;   [loop start] L_1577
L_1577:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_1582                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_1585                          ; EB 03
;   [conditional branch target (if/else)] L_1582
L_1582:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_1585
L_1585:
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
        call    L_14AA                          ; E8 FA FE
        jmp     L_1644                          ; E9 91 00
;   [loop start] L_15B3
L_15B3:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_15F8                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_15EE                          ; 73 25
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
        call    L_1B00                          ; E8 1C 05
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_15EE
L_15EE:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_15F8
L_15F8:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_161A                          ; 74 1C
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_161A                          ; 74 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp + 8]               ; F7 6E 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_1626                          ; EB 0C
;   [conditional branch target (if/else)] L_161A
L_161A:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_1626
L_1626:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A0C                          ; E8 CF 03
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_1644
L_1644:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_1651                          ; 7E 03
        jmp     L_15B3                          ; E9 62 FF
;   [conditional branch target (if/else)] L_1651
L_1651:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_1659
L_1659:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_1662                          ; 7E 03
        jmp     L_1577                          ; E9 15 FF
;   [conditional branch target (if/else)] L_1662
L_1662:
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
        call    L_1B00                          ; E8 79 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1692
L_1692:
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
        je      L_16C4                          ; 74 1D
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1b6                       ; B8 B6 01
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
        call    L_1350                          ; E8 8C FC
;   [conditional branch target (if/else)] L_16C4
L_16C4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_16CF
L_16CF:
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
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_170C                          ; 75 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jg      L_171E                          ; 7F 12
;   [conditional branch target (if/else)] L_170C
L_170C:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_1730                          ; 75 1A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_1730                          ; 7D 12
;   [conditional branch target (if/else)] L_171E
L_171E:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_1730
L_1730:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_174A                          ; 7D 12
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_174A
L_174A:
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
        mov     ax, 0x1b9                       ; B8 B9 01
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
        call    L_1350                          ; E8 BF FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_179C
L_179C:
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
        mov     ax, 0x1bc                       ; B8 BC 01
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
        call    L_1350                          ; E8 6E FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_17ED
L_17ED:
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
        mov     ax, 0x1bf                       ; B8 BF 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 F2 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1c2                       ; B8 C2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 DE 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_183C                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1c5                       ; B8 C5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 C4 02
;   [conditional branch target (if/else)] L_183C
L_183C:
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
        call    L_1A0C                          ; E8 B4 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 A2 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_1878                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1c9                       ; B8 C9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 88 02
;   [conditional branch target (if/else)] L_1878
L_1878:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1cc                       ; B8 CC 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 74 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [sub-routine] L_1897
L_1897:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_1907                          ; 75 5C
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1907                          ; 74 56
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_1907                          ; 75 4F
;   [loop start] L_18B8
L_18B8:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_1911                          ; 7E 53
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
        jmp     L_18B8                          ; EB C5
;   [loop start] L_18F3
L_18F3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_1907
L_1907:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_18F3                          ; 7F E2
;   [conditional branch target (if/else)] L_1911
L_1911:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_191C
L_191C:
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
        je      L_1952                          ; 74 09
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1975                          ; 75 23
;   [conditional branch target (if/else)] L_1952
L_1952:
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
        jmp     L_1998                          ; EB 23
;   [loop start (also forward branch)] L_1975
L_1975:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_1975                          ; 75 EA
        sub     word ptr [bp - 6], 2            ; 83 6E FA 02
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_199C                          ; 75 04
;   [unconditional branch target] L_1998
L_1998:
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_199C
L_199C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_19A7
L_19A7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
;   [loop start] L_19B4
L_19B4:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     byte ptr [bp - 4], 0x61         ; 80 7E FC 61
        jl      L_19DC                          ; 7C 0A
        cmp     byte ptr [bp - 4], 0x7a         ; 80 7E FC 7A
        jg      L_19DC                          ; 7F 04
        add     byte ptr [bp - 4], 0xe0         ; 80 46 FC E0
;   [conditional branch target (if/else)] L_19DC
L_19DC:
        cmp     byte ptr [bp - 6], 0x61         ; 80 7E FA 61
        jl      L_19EC                          ; 7C 0A
        cmp     byte ptr [bp - 6], 0x7a         ; 80 7E FA 7A
        jg      L_19EC                          ; 7F 04
        add     byte ptr [bp - 6], 0xe0         ; 80 46 FA E0
;   [conditional branch target (if/else)] L_19EC
L_19EC:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        je      L_19F8                          ; 74 04
        xor     ax, ax                          ; 33 C0
        jmp     L_1A01                          ; EB 09
;   [conditional branch target (if/else)] L_19F8
L_19F8:
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        jne     L_19B4                          ; 75 B6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1A01
L_1A01:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1A0C
L_1A0C:
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
        jg      L_1A26                          ; 7F 06
;   [loop start] L_1A20
L_1A20:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1AF4                          ; E9 CE 00
;   [conditional branch target (if/else)] L_1A26
L_1A26:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_1A3B                          ; 7D 0F
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        jmp     L_1A40                          ; EB 05
;   [conditional branch target (if/else)] L_1A3B
L_1A3B:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [unconditional branch target] L_1A40
L_1A40:
        mov     word ptr [bp - 0x16], 5         ; C7 46 EA 05 00
        mov     byte ptr [bp - 0xf], 0x30       ; C6 46 F1 30
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_1A74                          ; EB 26
;   [loop start] L_1A4E
L_1A4E:
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
;   [unconditional branch target] L_1A74
L_1A74:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_1A4E                          ; 75 D3
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1A84                          ; 74 03
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [conditional branch target (if/else)] L_1A84
L_1A84:
        mov     ax, 6                           ; B8 06 00
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1AA6                          ; 74 13
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jg      L_1A20                          ; 7F 87
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], 0x2d          ; 26 C6 07 2D
        dec     word ptr [bp + 6]               ; FF 4E 06
;   [conditional branch target (if/else)] L_1AA6
L_1AA6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1AB1                          ; 7E 03
        jmp     L_1A20                          ; E9 6F FF
;   [conditional branch target (if/else)] L_1AB1
L_1AB1:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        lea     cx, [bp - 0x14]                 ; 8D 4E EC
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_1ADB                          ; EB 12
;   [loop start] L_1AC9
L_1AC9:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1ADB
L_1ADB:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        or      ax, ax                          ; 0B C0
        jne     L_1AC9                          ; 75 E4
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1AF1                          ; 74 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        jmp     L_1AF4                          ; EB 03
;   [conditional branch target (if/else)] L_1AF1
L_1AF1:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [unconditional branch target] L_1AF4
L_1AF4:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1B00
L_1B00:
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
        mov     ax, word ptr es:[bx + 0x17]     ; 26 8B 47 17
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, word ptr es:[bx + 0x15]     ; 26 3B 47 15
        jle     L_1B4F                          ; 7E 32
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B93                          ; E8 6F 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx + 0x15], ax     ; 26 39 47 15
        jg      L_1B4F                          ; 7F 1F
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far GDI.WRITESPOOL              ; 9A B2 1B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1B88                          ; 7D 44
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_1B88                          ; EB 39
;   [conditional branch target (if/else)] L_1B4F
L_1B4F:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x17]     ; 26 8B 47 17
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x19                        ; 05 19 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x17], ax     ; 26 01 47 17
        jmp     L_1B7E                          ; EB 12
;   [loop start] L_1B6C
L_1B6C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1B7E
L_1B7E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_1B6C                          ; 75 E4
;   [branch target] L_1B88
L_1B88:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_1B93
L_1B93:
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
        add     ax, 0x19                        ; 05 19 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x17]         ; 26 FF 77 17
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1BC3                          ; 7D 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_1BC3
L_1BC3:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x17], 0      ; 26 C7 47 17 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1BD7
L_1BD7:
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
        call    L_1CB6                          ; E8 C1 00
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C5E                          ; E8 5F 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CB6                          ; E8 A7 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C5E                          ; E8 45 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_1C29                          ; 7C 08
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_1C2F                          ; EB 06
;   [conditional branch target (if/else)] L_1C29
L_1C29:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
;   [unconditional branch target] L_1C2F
L_1C2F:
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xc], cx         ; 39 4E F4
        jl      L_1C40                          ; 7C 07
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, cx                          ; 2B C1
        jmp     L_1C46                          ; EB 06
;   [conditional branch target (if/else)] L_1C40
L_1C40:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
;   [unconditional branch target] L_1C46
L_1C46:
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
;   [sub-routine] L_1C5E
L_1C5E:
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
        jge     L_1C9C                          ; 7D 29
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jge     L_1C83                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_1C8C                          ; EB 09
;   [conditional branch target (if/else)] L_1C83
L_1C83:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x3e8     ; 26 C7 47 02 E8 03
;   [unconditional branch target] L_1C8C
L_1C8C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1CAB                          ; EB 0F
;   [conditional branch target (if/else)] L_1C9C
L_1C9C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x1f4     ; 26 C7 47 02 F4 01
        mov     word ptr es:[bx + 4], 0x3e8     ; 26 C7 47 04 E8 03
;   [unconditional branch target] L_1CAB
L_1CAB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1CB6
L_1CB6:
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
        call    L_3AA8                          ; E8 CD 1D
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3A45                          ; E8 65 1D
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
        call    L_3AA8                          ; E8 A2 1D
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3A45                          ; E8 3A 1D
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
        call    L_3AA8                          ; E8 82 1D
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3A45                          ; E8 1A 1D
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1D5E                          ; 7E 28
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1D43                          ; 7E 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1D46                          ; EB 03
;   [conditional branch target (if/else)] L_1D43
L_1D43:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1D46
L_1D46:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_1D56                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1D59                          ; EB 03
;   [conditional branch target (if/else)] L_1D56
L_1D56:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1D59
L_1D59:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_1D84                          ; EB 26
;   [conditional branch target (if/else)] L_1D5E
L_1D5E:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_1D6B                          ; 7D 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1D6E                          ; EB 03
;   [conditional branch target (if/else)] L_1D6B
L_1D6B:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1D6E
L_1D6E:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1D7E                          ; 7E 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1D81                          ; EB 03
;   [conditional branch target (if/else)] L_1D7E
L_1D7E:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1D81
L_1D81:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [unconditional branch target] L_1D84
L_1D84:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_1DEE                          ; 74 5D
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
        call    L_39E1                          ; E8 3B 1C
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 95 1B
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
        call    L_39E1                          ; E8 1B 1C
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 75 1B
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
        call    L_39E1                          ; E8 FB 1B
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 55 1B
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_1DEE
L_1DEE:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_1E11                          ; 75 08
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        jmp     L_1E45                          ; EB 34
;   [conditional branch target (if/else)] L_1E11
L_1E11:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jg      L_1E21                          ; 7F 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_1E27                          ; EB 06
;   [conditional branch target (if/else)] L_1E21
L_1E21:
        mov     ax, 0x7d0                       ; B8 D0 07
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_1E27
L_1E27:
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
        call    L_39E1                          ; E8 A8 1B
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 02 1B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
;   [unconditional branch target] L_1E45
L_1E45:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_1E56                          ; 75 07
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1E91                          ; EB 3B
;   [conditional branch target (if/else)] L_1E56
L_1E56:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_1E6C                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        add     ax, 0x7d0                       ; 05 D0 07
        jmp     L_1E8E                          ; EB 22
;   [conditional branch target (if/else)] L_1E6C
L_1E6C:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_1E82                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        add     ax, 0xfa0                       ; 05 A0 0F
        jmp     L_1E8E                          ; EB 0C
;   [conditional branch target (if/else)] L_1E82
L_1E82:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        add     ax, 0x1770                      ; 05 70 17
;   [unconditional branch target] L_1E8E
L_1E8E:
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [unconditional branch target] L_1E91
L_1E91:
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
        call    L_39E1                          ; E8 38 1B
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 92 1A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_1EBB                          ; EB 05
;   [loop start] L_1EB6
L_1EB6:
        add     word ptr es:[bx], 0x168         ; 26 81 07 68 01
;   [unconditional branch target] L_1EBB
L_1EBB:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_1EB6                          ; 7C F2
        jmp     L_1ECB                          ; EB 05
;   [loop start] L_1EC6
L_1EC6:
        sub     word ptr es:[bx], 0x168         ; 26 81 2F 68 01
;   [unconditional branch target] L_1ECB
L_1ECB:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x168         ; 26 81 3F 68 01
        jge     L_1EC6                          ; 7D F1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1EE0
L_1EE0:
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
;   [sub-routine] L_1F19
L_1F19:
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
        call    L_39E1                          ; E8 AC 1A
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
        call    L_39E1                          ; E8 98 1A
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
        call    L_210C                          ; E8 99 01
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 5C 1A
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
        call    L_39E1                          ; E8 48 1A
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
        call    L_210C                          ; E8 49 01
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 0C 1A
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
        call    L_39E1                          ; E8 F8 19
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
        call    L_39E1                          ; E8 DD 19
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
        call    L_39E1                          ; E8 C2 19
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x44                        ; 05 44 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_210C                          ; E8 DF 00
        mov     ax, 0x2710                      ; B8 10 27
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 A2 19
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
        call    L_39E1                          ; E8 8E 19
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
        call    L_39E1                          ; E8 73 19
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
        call    L_39E1                          ; E8 58 19
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x4c                        ; 05 4C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_210C                          ; E8 75 00
        mov     ax, 0x3840                      ; B8 40 38
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 38 19
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
        call    L_39E1                          ; E8 24 19
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
        call    L_39E1                          ; E8 09 19
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
        call    L_39E1                          ; E8 EE 18
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x54                        ; 05 54 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_210C                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [sub-routine] L_210C
L_210C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
;   [loop start] L_2116
L_2116:
        cmp     word ptr [bp + 0x18], 0         ; 83 7E 18 00
        jl      L_2124                          ; 7C 08
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        jmp     L_2131                          ; EB 0D
;   [conditional branch target (if/else)] L_2124
L_2124:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_2131
L_2131:
        or      dx, dx                          ; 0B D2
        jg      L_2162                          ; 7F 2D
        jl      L_213C                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_2162                          ; 77 26
;   [conditional branch target (if/else)] L_213C
L_213C:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jl      L_214A                          ; 7C 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        jmp     L_2157                          ; EB 0D
;   [conditional branch target (if/else)] L_214A
L_214A:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_2157
L_2157:
        or      dx, dx                          ; 0B D2
        jl      L_21DA                          ; 7C 7F
        jg      L_2162                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_21DA                          ; 76 78
;   [conditional branch target (if/else)] L_2162
L_2162:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x16]                 ; 8D 46 16
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_38F8                          ; E8 88 17
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_38F8                          ; E8 7A 17
        jmp     L_2116                          ; EB 96
;   [loop start] L_2180
L_2180:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [loop start] L_218D
L_218D:
        or      dx, dx                          ; 0B D2
        jg      L_21BE                          ; 7F 2D
        jl      L_2198                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_21BE                          ; 77 26
;   [conditional branch target (if/else)] L_2198
L_2198:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_21A6                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_21B3                          ; EB 0D
;   [conditional branch target (if/else)] L_21A6
L_21A6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_21B3
L_21B3:
        or      dx, dx                          ; 0B D2
        jl      L_21E8                          ; 7C 31
        jg      L_21BE                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_21E8                          ; 76 2A
;   [conditional branch target (if/else)] L_21BE
L_21BE:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_38F8                          ; E8 2C 17
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_38F8                          ; E8 1E 17
;   [conditional branch target (if/else)] L_21DA
L_21DA:
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        jl      L_2180                          ; 7C A0
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        jmp     L_218D                          ; EB A5
;   [conditional branch target (if/else)] L_21E8
L_21E8:
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
;   [sub-routine] L_220F
L_220F:
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
        call    L_1B93                          ; E8 6B F9
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_2248                          ; EB 03
;   [loop start] L_2245
L_2245:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_2248
L_2248:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_2245                          ; 75 E7
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx - 1], 0x3a      ; 26 C6 47 FF 3A
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_2282                          ; EB 03
;   [loop start] L_227F
L_227F:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_2282
L_2282:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_227F                          ; 75 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.WRITEDIALOG             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_22BA                          ; 7D 09
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_22BA
L_22BA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_22C5
L_22C5:
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
        jne     L_2312                          ; 75 39
        mov     word ptr es:[bx + 9], 1         ; 26 C7 47 09 01 00
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_22F6                          ; 75 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_2312                          ; EB 1C
;   [conditional branch target (if/else)] L_22F6
L_22F6:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        mov     ax, 0x1dc                       ; B8 DC 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1d3                       ; B8 D3 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x8000                      ; B8 00 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_220F                          ; E8 FD FE
;   [branch target] L_2312
L_2312:
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
        jne     L_2339                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_2BAF                          ; E9 76 08
;   [conditional branch target (if/else)] L_2339
L_2339:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_235B                          ; 75 0A
        or      ax, ax                          ; 0B C0
        jne     L_235B                          ; 75 06
;   [loop start] L_2355
L_2355:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2BAF                          ; E9 54 08
;   [conditional branch target (if/else)] L_235B
L_235B:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jle     L_2373                          ; 7E 0A
        cmp     ax, 5                           ; 3D 05 00
        jge     L_2373                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2375                          ; EB 02
;   [conditional branch target (if/else)] L_2373
L_2373:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_2375
L_2375:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A DE 09 00 00 [FIXUP]
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_22C5                          ; E8 39 FF
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_23C6                          ; 74 30
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_23C6                          ; 75 20
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
        call    L_05F0                          ; E8 35 E2
;   [loop start] L_23BB
L_23BB:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 9B 0A 00 00 [FIXUP]
        jmp     L_2355                          ; EB 8F
;   [conditional branch target (if/else)] L_23C6
L_23C6:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_23F6                          ; 74 28
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
        call    L_16CF                          ; E8 E5 F2
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        jmp     L_241E                          ; EB 28
;   [conditional branch target (if/else)] L_23F6
L_23F6:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_241E                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_179C                          ; E8 88 F3
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [branch target] L_241E
L_241E:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        jne     L_2429                          ; 75 03
        jmp     L_27BE                          ; E9 95 03
;   [conditional branch target (if/else)] L_2429
L_2429:
        jle     L_242E                          ; 7E 03
        jmp     L_2B7C                          ; E9 4E 07
;   [conditional branch target (if/else)] L_242E
L_242E:
        cmp     ax, 3                           ; 3D 03 00
        je      L_2456                          ; 74 23
        cmp     ax, 4                           ; 3D 04 00
        jne     L_243B                          ; 75 03
        jmp     L_28D6                          ; E9 9B 04
;   [conditional branch target (if/else)] L_243B
L_243B:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_2443                          ; 75 03
        jmp     L_29D6                          ; E9 93 05
;   [conditional branch target (if/else)] L_2443
L_2443:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_244B                          ; 75 03
        jmp     L_2AF9                          ; E9 AE 06
;   [conditional branch target (if/else)] L_244B
L_244B:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_2453                          ; 75 03
        jmp     L_2A66                          ; E9 13 06
;   [conditional branch target (if/else)] L_2453
L_2453:
        jmp     L_23BB                          ; E9 65 FF
;   [conditional branch target (if/else)] L_2456
L_2456:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_245F                          ; 75 03
        jmp     L_23BB                          ; E9 5C FF
;   [loop start (also forward branch)] L_245F
L_245F:
        cmp     word ptr [bp + 0x1a], 5         ; 83 7E 1A 05
        jge     L_2468                          ; 7D 03
        jmp     L_23BB                          ; E9 53 FF
;   [conditional branch target (if/else)] L_2468
L_2468:
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
        call    L_2BBB                          ; E8 1B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2BBB                          ; E8 04 07
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_24DF                          ; 75 1B
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
;   [conditional branch target (if/else)] L_24DF
L_24DF:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2EBB                          ; E8 CD 09
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1fe                       ; B8 FE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 EF F5
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_254E                          ; 7E 26
        cmp     word ptr [bp - 6], 0x168        ; 81 7E FA 68 01
        jge     L_254E                          ; 7D 1F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_RBUTTONUP
        mov     ax, 0x205                       ; B8 05 02
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
        call    L_1350                          ; E8 02 EE
;   [conditional branch target (if/else)] L_254E
L_254E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_2561                          ; 7D 0B
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, 0x168                       ; 05 68 01
        jmp     L_2567                          ; EB 06
;   [conditional branch target (if/else)] L_2561
L_2561:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_2567
L_2567:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 0x1c], 3         ; 83 7E 1C 03
        je      L_2573                          ; 74 03
        jmp     L_261E                          ; E9 AB 00
;   [conditional branch target (if/else)] L_2573
L_2573:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_25A3                          ; 7E 2A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_25A3                          ; 7D 24
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x208                       ; B8 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x2b0                       ; 05 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1350                          ; E8 AD ED
;   [conditional branch target (if/else)] L_25A3
L_25A3:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 D6 F0
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        jne     L_25E1                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x20b                       ; B8 0B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 29 F5
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [conditional branch target (if/else)] L_25E1
L_25E1:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x20f                       ; B8 0F 02
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
        call    L_1350                          ; E8 52 ED
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_261E                          ; 7E 1A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_261E                          ; 7D 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x212                       ; B8 12 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 E2 F4
;   [branch target] L_261E
L_261E:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x216                       ; B8 16 02
;   [loop start] L_2627
L_2627:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 CE F4
        jmp     L_23BB                          ; E9 86 FD
;   [loop start] L_2635
L_2635:
        cmp     word ptr [bp + 0x1a], 5         ; 83 7E 1A 05
        jge     L_263E                          ; 7D 03
        jmp     L_23BB                          ; E9 7D FD
;   [conditional branch target (if/else)] L_263E
L_263E:
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
        cmp     word ptr es:[bx + 0x22d], ax    ; 26 39 87 2D 02
        jne     L_267E                          ; 75 0A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr es:[bx + 0x22f], ax    ; 26 39 87 2F 02
        je      L_26B8                          ; 74 3A
;   [conditional branch target (if/else)] L_267E
L_267E:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x21d                       ; B8 1D 02
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
        call    L_1535                          ; E8 90 EE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
;   [conditional branch target (if/else)] L_26B8
L_26B8:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2BBB                          ; E8 EF 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_2BBB                          ; E8 D8 04
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_270B                          ; 75 1B
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
;   [conditional branch target (if/else)] L_270B
L_270B:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2EBB                          ; E8 A1 07
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jge     L_2735                          ; 7D 0B
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ax, 0x168                       ; 05 68 01
        jmp     L_273B                          ; EB 06
;   [conditional branch target (if/else)] L_2735
L_2735:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_273B
L_273B:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2D0C                          ; E8 BF 05
        or      ax, ax                          ; 0B C0
        je      L_2782                          ; 74 31
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x220                       ; B8 20 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 9B F3
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x22b                       ; B8 2B 02
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
        call    L_1350                          ; E8 CE EB
;   [conditional branch target (if/else)] L_2782
L_2782:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_2E4C                          ; E8 BB 06
        or      ax, ax                          ; 0B C0
        je      L_27B2                          ; 74 1D
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x22e                       ; B8 2E 02
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
        call    L_1350                          ; E8 9E EB
;   [conditional branch target (if/else)] L_27B2
L_27B2:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x231                       ; B8 31 02
        jmp     L_2627                          ; E9 69 FE
;   [unconditional branch target] L_27BE
L_27BE:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_27C7                          ; 75 03
        jmp     L_23BB                          ; E9 F4 FB
;   [conditional branch target (if/else)] L_27C7
L_27C7:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22d], ax    ; 26 39 87 2D 02
        jne     L_27E5                          ; 75 0E
        mov     ax, word ptr es:[bx + 0x22f]    ; 26 8B 87 2F 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        je      L_280D                          ; 74 28
;   [conditional branch target (if/else)] L_27E5
L_27E5:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x238                       ; B8 38 02
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
        call    L_1535                          ; E8 28 ED
;   [conditional branch target (if/else)] L_280D
L_280D:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_283D                          ; 7E 2A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_283D                          ; 7D 24
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x23b                       ; B8 3B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x2b0                       ; 05 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1350                          ; E8 13 EB
;   [conditional branch target (if/else)] L_283D
L_283D:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 3C EE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x23e                       ; B8 3E 02
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
        call    L_1535                          ; E8 AE EC
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_28A7                          ; 7E 1A
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_28A7                          ; 7D 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x241                       ; B8 41 02
;   [loop start] L_289C
L_289C:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 59 F2
;   [conditional branch target (if/else)] L_28A7
L_28A7:
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + si - 4]   ; 26 8B 40 FC
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + si - 2]   ; 26 8B 40 FE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
;   [loop start] L_28CE
L_28CE:
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        jmp     L_23BB                          ; E9 E5 FA
;   [unconditional branch target] L_28D6
L_28D6:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_28E2                          ; 75 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_28E2
L_28E2:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_28EB                          ; 75 03
        jmp     L_23BB                          ; E9 D0 FA
;   [conditional branch target (if/else)] L_28EB
L_28EB:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        je      L_293C                          ; 74 44
        mov     word ptr es:[bx + 0x227], ax    ; 26 89 87 27 02
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_291F                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x245                       ; B8 45 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 EB F1
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_291F
L_291F:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x249                       ; B8 49 02
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
        call    L_1350                          ; E8 14 EA
;   [conditional branch target (if/else)] L_293C
L_293C:
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_29BC                          ; EB 6D
;   [loop start] L_294F
L_294F:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x24c                       ; B8 4C 02
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
        call    L_1535                          ; E8 B5 EB
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x24f                       ; B8 4F 02
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
        call    L_1535                          ; E8 83 EB
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [unconditional branch target] L_29BC
L_29BC:
        dec     word ptr [bp + 0x1a]            ; FF 4E 1A
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        jg      L_294F                          ; 7F 8A
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        jmp     L_28CE                          ; E9 F8 FE
;   [unconditional branch target] L_29D6
L_29D6:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2EBB                          ; E8 D6 04
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x252                       ; B8 52 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 01 F1
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2D0C                          ; E8 F1 02
        or      ax, ax                          ; 0B C0
        je      L_2A33                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x259                       ; B8 59 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 CD F0
;   [conditional branch target (if/else)] L_2A33
L_2A33:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_2E4C                          ; E8 0A 04
        or      ax, ax                          ; 0B C0
        je      L_2A5A                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x26a                       ; B8 6A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 A6 F0
;   [conditional branch target (if/else)] L_2A5A
L_2A5A:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x271                       ; B8 71 02
        jmp     L_2627                          ; E9 C1 FB
;   [unconditional branch target] L_2A66
L_2A66:
        mov     word ptr [bp + 0x1a], 1         ; C7 46 1A 01 00
;   [loop start] L_2A6B
L_2A6B:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_2A74                          ; 75 03
        jmp     L_23BB                          ; E9 47 F9
;   [conditional branch target (if/else)] L_2A74
L_2A74:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x278                       ; B8 78 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 78 F0
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_2AAD                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x27d                       ; B8 7D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 5D F0
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_2AAD
L_2AAD:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 CC EB
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x281                       ; B8 81 02
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
        call    L_1535                          ; E8 48 EA
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x284                       ; B8 84 02
        jmp     L_289C                          ; E9 A3 FD
;   [loop start (also forward branch)] L_2AF9
L_2AF9:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2EBB                          ; E8 B3 03
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x288                       ; B8 88 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 DE EF
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2D0C                          ; E8 DB 01
        or      ax, ax                          ; 0B C0
        je      L_2B49                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x28f                       ; B8 8F 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 B7 EF
;   [conditional branch target (if/else)] L_2B49
L_2B49:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_2E4C                          ; E8 F4 02
        or      ax, ax                          ; 0B C0
        je      L_2B70                          ; 74 14
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 90 EF
;   [conditional branch target (if/else)] L_2B70
L_2B70:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x2a9                       ; B8 A9 02
        jmp     L_2627                          ; E9 AB FA
;   [unconditional branch target] L_2B7C
L_2B7C:
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_2B84                          ; 75 03
        jmp     L_23BB                          ; E9 37 F8
;   [conditional branch target (if/else)] L_2B84
L_2B84:
        cmp     ax, 0x16                        ; 3D 16 00
        jne     L_2B8C                          ; 75 03
        jmp     L_23BB                          ; E9 2F F8
;   [conditional branch target (if/else)] L_2B8C
L_2B8C:
        cmp     ax, 0x17                        ; 3D 17 00
        jne     L_2B94                          ; 75 03
        jmp     L_2635                          ; E9 A1 FA
;   [conditional branch target (if/else)] L_2B94
L_2B94:
        cmp     ax, 0x18                        ; 3D 18 00
        jne     L_2B9C                          ; 75 03
        jmp     L_2A6B                          ; E9 CF FE
;   [conditional branch target (if/else)] L_2B9C
L_2B9C:
        cmp     ax, 0x27                        ; 3D 27 00
        jne     L_2BA4                          ; 75 03
        jmp     L_245F                          ; E9 BB F8
;   [conditional branch target (if/else)] L_2BA4
L_2BA4:
        cmp     ax, 0x37                        ; 3D 37 00
        jne     L_2BAC                          ; 75 03
        jmp     L_2AF9                          ; E9 4D FF
;   [conditional branch target (if/else)] L_2BAC
L_2BAC:
        jmp     L_23BB                          ; E9 0C F8
;   [unconditional branch target] L_2BAF
L_2BAF:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [sub-routine] L_2BBB
L_2BBB:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_2C2B                          ; 74 62
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_2C4F                          ; 74 7E
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_2BE7                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        jmp     L_2BED                          ; EB 06
;   [conditional branch target (if/else)] L_2BE7
L_2BE7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
;   [unconditional branch target] L_2BED
L_2BED:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3AA8                          ; E8 B5 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jl      L_2C09                          ; 7C 08
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        jmp     L_2C0F                          ; EB 06
;   [conditional branch target (if/else)] L_2C09
L_2C09:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
;   [unconditional branch target] L_2C0F
L_2C0F:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_391C                          ; E8 02 0D
        mov     ax, word ptr [0x2ca]            ; A1 CA 02
        sub     dx, dx                          ; 2B D2
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        ja      L_2C3E                          ; 77 1A
        jb      L_2C2B                          ; 72 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_2C3E                          ; 73 13
;   [conditional branch target (if/else)] L_2C2B
L_2C2B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_2C38                          ; 7E 05
        xor     ax, ax                          ; 33 C0
        jmp     L_2D06                          ; E9 CE 00
;   [conditional branch target (if/else)] L_2C38
L_2C38:
        mov     ax, 0xb4                        ; B8 B4 00
        jmp     L_2D06                          ; E9 C8 00
;   [conditional branch target (if/else)] L_2C3E
L_2C3E:
        mov     ax, word ptr [0x37a]            ; A1 7A 03
        sub     dx, dx                          ; 2B D2
        cmp     word ptr [bp - 2], dx           ; 39 56 FE
        jb      L_2C63                          ; 72 1B
        ja      L_2C4F                          ; 77 05
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_2C63                          ; 76 14
;   [conditional branch target (if/else)] L_2C4F
L_2C4F:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_2C5D                          ; 7E 06
        mov     ax, 0x10e                       ; B8 0E 01
        jmp     L_2D06                          ; E9 A9 00
;   [conditional branch target (if/else)] L_2C5D
L_2C5D:
        mov     ax, 0x5a                        ; B8 5A 00
        jmp     L_2D06                          ; E9 A3 00
;   [conditional branch target (if/else)] L_2C63
L_2C63:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 0xa], 0x59       ; C7 46 F6 59 00
        jmp     L_2CA1                          ; EB 32
;   [loop start] L_2C6F
L_2C6F:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x2c8]       ; 8B 87 C8 02
        sub     dx, dx                          ; 2B D2
        cmp     dx, word ptr [bp - 2]           ; 3B 56 FE
        jb      L_2C9B                          ; 72 0F
        ja      L_2C93                          ; 77 05
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jbe     L_2C9B                          ; 76 08
;   [conditional branch target (if/else)] L_2C93
L_2C93:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_2CA1                          ; EB 06
;   [conditional branch target (if/else)] L_2C9B
L_2C9B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_2CA1
L_2CA1:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        cmp     ax, 1                           ; 3D 01 00
        jg      L_2C6F                          ; 7F C3
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_2CC1                          ; 7E 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_2CC1                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_2D06                          ; EB 45
;   [conditional branch target (if/else)] L_2CC1
L_2CC1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jge     L_2CD9                          ; 7D 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_2CD9                          ; 7D 08
        mov     ax, 0xb4                        ; B8 B4 00
;   [loop start] L_2CD4
L_2CD4:
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_2D06                          ; EB 2D
;   [conditional branch target (if/else)] L_2CD9
L_2CD9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jge     L_2CF1                          ; 7D 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_2CF1                          ; 7E 08
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0xb4                        ; 05 B4 00
        jmp     L_2D06                          ; EB 15
;   [conditional branch target (if/else)] L_2CF1
L_2CF1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jle     L_2D06                          ; 7E 0D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_2D06                          ; 7E 05
        mov     ax, 0x168                       ; B8 68 01
        jmp     L_2CD4                          ; EB CE
;   [error/early exit] L_2D06
L_2D06:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2D0C
L_2D0C:
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
        jne     L_2D2B                          ; 75 03
        jmp     L_2E44                          ; E9 19 01
;   [conditional branch target (if/else)] L_2D2B
L_2D2B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 4E E9
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_2D6B                          ; 75 1D
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, ax                          ; 0B C0
        je      L_2D66                          ; 74 11
        cmp     ax, 1                           ; 3D 01 00
        je      L_2DA9                          ; 74 4F
        cmp     ax, 2                           ; 3D 02 00
        je      L_2DB0                          ; 74 51
        cmp     ax, 3                           ; 3D 03 00
        je      L_2DB7                          ; 74 53
        jmp     L_2D6B                          ; EB 05
;   [conditional branch target (if/else)] L_2D66
L_2D66:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [loop start (also forward branch)] L_2D6B
L_2D6B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        or      ax, ax                          ; 0B C0
        je      L_2DBE                          ; 74 4C
        cmp     ax, 1                           ; 3D 01 00
        jne     L_2D7A                          ; 75 03
        jmp     L_2E03                          ; E9 89 00
;   [conditional branch target (if/else)] L_2D7A
L_2D7A:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_2D82                          ; 75 03
        jmp     L_2E14                          ; E9 92 00
;   [conditional branch target (if/else)] L_2D82
L_2D82:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_2D8A                          ; 75 03
        jmp     L_2E25                          ; E9 9B 00
;   [conditional branch target (if/else)] L_2D8A
L_2D8A:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_2D92                          ; 75 03
        jmp     L_2E36                          ; E9 A4 00
;   [conditional branch target (if/else)] L_2D92
L_2D92:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_2D9A                          ; 75 03
        jmp     L_2E3D                          ; E9 A3 00
;   [conditional branch target (if/else)] L_2D9A
L_2D9A:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_2DCD                          ; EB 24
;   [conditional branch target (if/else)] L_2DA9
L_2DA9:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_2D6B                          ; EB BB
;   [conditional branch target (if/else)] L_2DB0
L_2DB0:
        mov     word ptr [bp - 8], 3            ; C7 46 F8 03 00
        jmp     L_2D6B                          ; EB B4
;   [conditional branch target (if/else)] L_2DB7
L_2DB7:
        mov     word ptr [bp - 8], 2            ; C7 46 F8 02 00
        jmp     L_2D6B                          ; EB AD
;   [conditional branch target (if/else)] L_2DBE
L_2DBE:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
;   [loop start] L_2DC3
L_2DC3:
        mov     word ptr [bp - 4], 0x78         ; C7 46 FC 78 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start (also forward branch)] L_2DCD
L_2DCD:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x37c                       ; B8 7C 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 1F ED
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x380                       ; B8 80 03
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
        call    L_1350                          ; E8 52 E5
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2E46                          ; EB 43
;   [unconditional branch target] L_2E03
L_2E03:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
        mov     word ptr [bp - 4], 0x78         ; C7 46 FC 78 00
        mov     word ptr [bp - 2], 0x5a         ; C7 46 FE 5A 00
        jmp     L_2DCD                          ; EB B9
;   [unconditional branch target] L_2E14
L_2E14:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
        mov     word ptr [bp - 4], 0x5a         ; C7 46 FC 5A 00
        mov     word ptr [bp - 2], 0x87         ; C7 46 FE 87 00
        jmp     L_2DCD                          ; EB A8
;   [unconditional branch target] L_2E25
L_2E25:
        mov     word ptr [bp - 6], 3            ; C7 46 FA 03 00
;   [loop start] L_2E2A
L_2E2A:
        mov     word ptr [bp - 4], 0x5a         ; C7 46 FC 5A 00
        mov     word ptr [bp - 2], 0x2d         ; C7 46 FE 2D 00
        jmp     L_2DCD                          ; EB 97
;   [unconditional branch target] L_2E36
L_2E36:
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        jmp     L_2DC3                          ; EB 86
;   [unconditional branch target] L_2E3D
L_2E3D:
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        jmp     L_2E2A                          ; EB E6
;   [unconditional branch target] L_2E44
L_2E44:
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_2E46
L_2E46:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2E4C
L_2E4C:
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
        je      L_2EB3                          ; 74 4B
        or      ax, ax                          ; 0B C0
        jle     L_2E95                          ; 7E 29
        cmp     ax, 5                           ; 3D 05 00
        jge     L_2E95                          ; 7D 24
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x383                       ; B8 83 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x2b0                       ; 05 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1350                          ; E8 BB E4
;   [conditional branch target (if/else)] L_2E95
L_2E95:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 E4 E7
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2EB5                          ; EB 02
;   [conditional branch target (if/else)] L_2EB3
L_2EB3:
        xor     ax, ax                          ; 33 C0
;   [fall-through exit] L_2EB5
L_2EB5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_2EBB
L_2EBB:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_2EE1                          ; 75 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        jmp     L_2EF5                          ; EB 14
;   [conditional branch target (if/else)] L_2EE1
L_2EE1:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_2EF5
L_2EF5:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x386                       ; B8 86 03
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
        call    L_1535                          ; E8 12 E6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x389                       ; B8 89 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 C9 EB
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
;   [sub-routine] L_2F52
L_2F52:
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
        jne     L_2F6F                          ; 75 06
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_3011                          ; E9 A2 00
;   [conditional branch target (if/else)] L_2F6F
L_2F6F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_2F7A                          ; 75 03
        jmp     L_300C                          ; E9 92 00
;   [conditional branch target (if/else)] L_2F7A
L_2F7A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x241]        ; 26 FF B7 41 02
        push    word ptr es:[bx + 0x23f]        ; 26 FF B7 3F 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1BD7                          ; E8 45 EC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_2FDA                          ; EB 39
;   [loop start] L_2FA1
L_2FA1:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + si + 0x241]   ; 26 FF B0 41 02
        push    word ptr es:[bx + si + 0x23f]   ; 26 FF B0 3F 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1BD7                          ; E8 17 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_2FD7                          ; 7D 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_2FD7
L_2FD7:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_2FDA
L_2FDA:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_2FA1                          ; 7F BA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     si, ax                          ; 8B F0
        mov     ax, dx                          ; 8B C2
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], si            ; 26 89 37
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
;   [loop start] L_2FF9
L_2FF9:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + si + 0x23f] ; 26 8B 80 3F 02
        mov     dx, word ptr es:[bx + si + 0x241] ; 26 8B 90 41 02
        jmp     L_3011                          ; EB 05
;   [unconditional branch target] L_300C
L_300C:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        jmp     L_2FF9                          ; EB E8
;   [unconditional branch target] L_3011
L_3011:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_301D
L_301D:
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
        jne     L_3035                          ; 75 03
        jmp     L_3101                          ; E9 CC 00
;   [conditional branch target (if/else)] L_3035
L_3035:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jg      L_303E                          ; 7F 03
        jmp     L_3101                          ; E9 C3 00
;   [conditional branch target (if/else)] L_303E
L_303E:
        cmp     word ptr [bp + 0xa], 5          ; 83 7E 0A 05
        jl      L_3047                          ; 7C 03
        jmp     L_3101                          ; E9 BA 00
;   [conditional branch target (if/else)] L_3047
L_3047:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_306F                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_179C                          ; E8 37 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_306F
L_306F:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_3094                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x394                       ; B8 94 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 76 EA
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_3094
L_3094:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 E5 E5
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x398                       ; B8 98 03
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
        call    L_1535                          ; E8 52 E4
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, 0x39b                       ; B8 9B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 09 EA
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [unconditional branch target] L_3101
L_3101:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_310F
L_310F:
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
        jg      L_3168                          ; 7F 03
        jmp     L_36C1                          ; E9 59 05
;   [conditional branch target (if/else)] L_3168
L_3168:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jge     L_3177                          ; 7D 03
        jmp     L_375A                          ; E9 E3 05
;   [conditional branch target (if/else)] L_3177
L_3177:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     ax, word ptr es:[bx + 2]        ; 26 3B 47 02
        jge     L_318D                          ; 7D 03
        jmp     L_375A                          ; E9 CD 05
;   [conditional branch target (if/else)] L_318D
L_318D:
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
        call    L_16CF                          ; E8 2A E5
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_31D1                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x39f                       ; B8 9F 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 39 E9
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_31D1
L_31D1:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        mov     dx, word ptr [bp + 0x22]        ; 8B 56 22
        add     ax, 0x227                       ; 05 27 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1692                          ; E8 A4 E4
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr es:[bx + 0x231], ax    ; 26 39 87 31 02
        jne     L_3208                          ; 75 0D
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr es:[bx + 0x233], ax    ; 26 39 87 33 02
        jne     L_3208                          ; 75 03
        jmp     L_33AB                          ; E9 A3 01
;   [conditional branch target (if/else)] L_3208
L_3208:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr es:[bx + 0x231], ax    ; 26 89 87 31 02
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr es:[bx + 0x233], ax    ; 26 89 87 33 02
        mov     ax, 0x85                        ; B8 85 00
        imul    word ptr es:[bx + 0x23d]        ; 26 F7 AF 3D 02
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
        mov     ax, word ptr es:[bx + 0x23b]    ; 26 8B 87 3B 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 A4 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_39E1                          ; E8 9F 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 F9 06
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
        call    L_39E1                          ; E8 82 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3940                          ; E8 DC 06
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3a3                       ; B8 A3 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 85 E8
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
        call    L_1A0C                          ; E8 6E E7
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 5C E8
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_32C2                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3a6                       ; B8 A6 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_32D0                          ; EB 0E
;   [conditional branch target (if/else)] L_32C2
L_32C2:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3a9                       ; B8 A9 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_32D0
L_32D0:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 2A E8
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
        call    L_1A0C                          ; E8 13 E7
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 01 E8
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3ab                       ; B8 AB 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 ED E7
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
        call    L_1A0C                          ; E8 D6 E6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 C4 E7
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_335A                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3ad                       ; B8 AD 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_3368                          ; EB 0E
;   [conditional branch target (if/else)] L_335A
L_335A:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3b0                       ; B8 B0 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_3368
L_3368:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 92 E7
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
        call    L_1A0C                          ; E8 7B E6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 69 E7
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3b2                       ; B8 B2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 55 E7
;   [unconditional branch target] L_33AB
L_33AB:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr es:[bx + 0x235], ax    ; 26 39 87 35 02
        je      L_33E1                          ; 74 29
        mov     word ptr es:[bx + 0x235], ax    ; 26 89 87 35 02
        or      ax, ax                          ; 0B C0
        je      L_33CD                          ; 74 0C
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3b4                       ; B8 B4 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_33DB                          ; EB 0E
;   [conditional branch target (if/else)] L_33CD
L_33CD:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3ba                       ; B8 BA 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_33DB
L_33DB:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 1F E7
;   [conditional branch target (if/else)] L_33E1
L_33E1:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3be                       ; B8 BE 03
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
        call    L_1535                          ; E8 24 E1
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3c1                       ; B8 C1 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 DB E6
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3ca                       ; B8 CA 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 C7 E6
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        imul    word ptr [bp - 0x1e]            ; F7 6E E2
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_34F6                          ; E9 A7 00
;   [loop start] L_344F
L_344F:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_346B                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_3471                          ; 76 06
;   [conditional branch target (if/else)] L_346B
L_346B:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_3471
L_3471:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x227], 0     ; 26 83 BF 27 02 00
        je      L_3491                          ; 74 10
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
        call    L_1B00                          ; E8 6F E6
;   [conditional branch target (if/else)] L_3491
L_3491:
        cmp     word ptr [bp + 0x12], 1         ; 83 7E 12 01
        jle     L_34A1                          ; 7E 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
;   [conditional branch target (if/else)] L_34A1
L_34A1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_34D6                          ; 74 2B
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_34D6                          ; 75 23
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_34D6                          ; 75 1E
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jg      L_34D6                          ; 7F 0A
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr [bp - 8], ax           ; 01 46 F8
;   [conditional branch target (if/else)] L_34D6
L_34D6:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        or      ax, ax                          ; 0B C0
        je      L_34F3                          ; 74 13
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x227], 0     ; 26 83 BF 27 02 00
        je      L_34F3                          ; 74 08
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17ED                          ; E8 FA E2
;   [conditional branch target (if/else)] L_34F3
L_34F3:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_34F6
L_34F6:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        je      L_34FF                          ; 74 03
        jmp     L_344F                          ; E9 50 FF
;   [conditional branch target (if/else)] L_34FF
L_34FF:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3cd                       ; B8 CD 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 ED E5
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xf], 0       ; 26 80 7F 0F 00
        jne     L_3520                          ; 75 03
        jmp     L_35D4                          ; E9 B4 00
;   [conditional branch target (if/else)] L_3520
L_3520:
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
        mov     ax, 0x3d0                       ; B8 D0 03
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
        call    L_1535                          ; E8 CF DF
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        jne     L_358B                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3d3                       ; B8 D3 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 7F E5
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [conditional branch target (if/else)] L_358B
L_358B:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3d7                       ; B8 D7 03
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
        call    L_1535                          ; E8 86 DF
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_35D4                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3da                       ; B8 DA 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 36 E5
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [branch target] L_35D4
L_35D4:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0x10], 0      ; 26 80 7F 10 00
        jne     L_35E1                          ; 75 03
        jmp     L_36AD                          ; E9 CC 00
;   [conditional branch target (if/else)] L_35E1
L_35E1:
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
        mov     ax, 0x3de                       ; B8 DE 03
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
        call    L_1535                          ; E8 F6 DE
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        jne     L_3664                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3e1                       ; B8 E1 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 A6 E4
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [conditional branch target (if/else)] L_3664
L_3664:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x3e5                       ; B8 E5 03
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
        call    L_1535                          ; E8 AD DE
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_36AD                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B00                          ; E8 5D E4
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [branch target] L_36AD
L_36AD:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        jmp     L_375A                          ; E9 99 00
;   [unconditional branch target] L_36C1
L_36C1:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jl      L_36CA                          ; 7C 03
        jmp     L_375A                          ; E9 90 00
;   [conditional branch target (if/else)] L_36CA
L_36CA:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        imul    word ptr [bp + 0x12]            ; F7 6E 12
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_3742                          ; 74 59
        jmp     L_373C                          ; EB 51
;   [loop start] L_36EB
L_36EB:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_3707                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_370D                          ; 76 06
;   [conditional branch target (if/else)] L_3707
L_3707:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_370D
L_370D:
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_3739                          ; 75 24
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr es:[bx + 0x10], ax     ; 26 29 47 10
        cmp     word ptr es:[bx + 0x10], 0      ; 26 83 7F 10 00
        jg      L_3739                          ; 7F 0B
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr es:[bx + 0x10], ax     ; 26 01 47 10
;   [conditional branch target (if/else)] L_3739
L_3739:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_373C
L_373C:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_36EB                          ; 75 A9
;   [conditional branch target (if/else)] L_3742
L_3742:
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
        jmp     L_375D                          ; EB 03
;   [unconditional branch target] L_375A
L_375A:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
;   [unconditional branch target] L_375D
L_375D:
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
        je      L_37D2                          ; 74 54
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 2F 38 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_37D7                          ; 74 48
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_22C5                          ; E8 2B EB
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_37D7                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 56 38 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_37D7                          ; 75 23
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
        call    L_05F0                          ; E8 27 CE
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF 37 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_37D2
L_37D2:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_3809                          ; EB 32
;   [conditional branch target (if/else)] L_37D7
L_37D7:
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
        call    L_301D                          ; E8 29 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 78 38 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_3809
L_3809:
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
        je      L_387C                          ; 74 52
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 7D 23 00 00 [FIXUP]
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_3881                          ; 7E 48
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_22C5                          ; E8 81 EA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_3881                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 9E 23 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_3881                          ; 75 23
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
        call    L_05F0                          ; E8 7D CD
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A BE 38 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_387C
L_387C:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_38C8                          ; EB 47
;   [conditional branch target (if/else)] L_3881
L_3881:
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
        call    L_310F                          ; E8 5C F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A C0 23 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_38C8
L_38C8:
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
        jne     L_38EA                          ; 75 04
        xor     ax, ax                          ; 33 C0
        jmp     L_38ED                          ; EB 03
;   [conditional branch target (if/else)] L_38EA
L_38EA:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
;   [unconditional branch target] L_38ED
L_38ED:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_38F8
L_38F8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_3940                          ; E8 32 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_391C
L_391C:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_3A45                          ; E8 13 01
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3940
L_3940:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_3961                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_3961
L_3961:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_397A                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_397A
L_397A:
        or      ax, ax                          ; 0B C0
        jne     L_3994                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_39CF                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3994
L_3994:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_399F
L_399F:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_399F                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3AA8                          ; E8 EC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_39C8                          ; 77 07
        jb      L_39CB                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_39CB                          ; 76 03
;   [conditional branch target (if/else)] L_39C8
L_39C8:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_39CB
L_39CB:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_39CF
L_39CF:
        or      di, di                          ; 0B FF
        je      L_39DA                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_39DA
L_39DA:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_39E1
L_39E1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_3A01                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_3A01
L_3A01:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_3A1A                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_3A1A
L_3A1A:
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
        je      L_3A3F                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_3A3F
L_3A3F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3A45
L_3A45:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_3A67                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_3AA2                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3A67
L_3A67:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_3A72
L_3A72:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_3A72                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3AA8                          ; E8 19 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_3A9B                          ; 77 07
        jb      L_3A9E                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_3A9E                          ; 76 03
;   [conditional branch target (if/else)] L_3A9B
L_3A9B:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_3A9E
L_3A9E:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_3AA2
L_3AA2:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3AA8
L_3AA8:
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
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_3AED                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_3AED                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_3AE9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_3AE9
L_3AE9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_3AED
L_3AED:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

HP7475A_TEXT ENDS

        END
