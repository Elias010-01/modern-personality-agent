; ======================================================================
; HP7470A / seg1.asm   (segment 1 of HP7470A)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                  353
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original HP7470A segment 1
; segment_size=12762 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HP7470A_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        call    L_04B4                          ; E8 82 04
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
        call    L_17A9                          ; E8 4C 17
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
        call    L_0200                          ; E8 6A 01
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [0x2a], ax             ; A3 2A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00B7                          ; 74 13
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0x22], 0x12   ; 26 83 7F 22 12
        jne     L_00B7                          ; 75 09
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D6D                          ; E8 B6 1C
;   [conditional branch target (if/else)] L_00B7
L_00B7:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1DA6                          ; E8 E6 1C
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
        jmp     L_01F4                          ; E9 0A 01
;   [unconditional branch target] L_00EA
L_00EA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_00FB                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        jmp     L_00FE                          ; EB 03
;   [conditional branch target (if/else)] L_00FB
L_00FB:
        mov     ax, 0x13                        ; B8 13 00
;   [unconditional branch target] L_00FE
L_00FE:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xf], ax      ; 26 89 47 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0116                          ; 74 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        jmp     L_0119                          ; EB 03
;   [conditional branch target (if/else)] L_0116
L_0116:
        mov     ax, 0x26                        ; B8 26 00
;   [unconditional branch target] L_0119
L_0119:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xd], ax      ; 26 89 47 0D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0200                          ; E8 D3 00
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 0xb]      ; 26 8B 47 0B
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x8c], ss        ; 8C 96 74 FF
;   [loop start] L_014A
L_014A:
        les     bx, ptr [bp - 0x8e]             ; C4 9E 72 FF
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_014A                          ; 75 E8
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
        mov     word ptr es:[bx + 0x237], 2     ; 26 C7 87 37 02 02 00
        mov     word ptr es:[bx + 0x239], 3     ; 26 C7 87 39 02 03 00
        mov     word ptr es:[bx + 0x23b], 2     ; 26 C7 87 3B 02 02 00
        mov     word ptr es:[bx + 0x23d], 3     ; 26 C7 87 3D 02 03 00
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_01F4
L_01F4:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Pure computation / dispatcher (232 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0200   offset=0x0200  size=232 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_11DD, L_151F, L_198D
;-------------------------------------------------------------------------
;   [sub-routine] L_0200
L_0200:
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
        jne     L_0219                          ; 75 03
        jmp     L_0305                          ; E9 EC 00
;   [conditional branch target (if/else)] L_0219
L_0219:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_022F                          ; 74 0A
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_022D                          ; 75 03
        jmp     L_02D1                          ; E9 A4 00
;   [conditional branch target (if/else)] L_022D
L_022D:
        jmp     L_027C                          ; EB 4D
;   [conditional branch target (if/else)] L_022F
L_022F:
        mov     word ptr [0x14], 0x101          ; C7 06 14 00 01 01
        mov     word ptr [0x16], 0xbf           ; C7 06 16 00 BF 00
        mov     word ptr [0x18], 0xd69          ; C7 06 18 00 69 0D
        mov     word ptr [0x1a], 0x9f6          ; C7 06 1A 00 F6 09
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_027C                          ; 74 2D
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0xe8d ; 26 C7 87 19 02 8D 0E
        mov     word ptr es:[bx + 0x21b], 0xb3e ; 26 C7 87 1B 02 3E 0B
;   [loop start] L_0260
L_0260:
        mov     word ptr es:[bx + 0x21d], 0x28  ; 26 C7 87 1D 02 28 00
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x28  ; 26 C7 87 23 02 28 00
;   [loop start (also forward branch)] L_027C
L_027C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_0287                          ; 75 03
        jmp     L_0391                          ; E9 0A 01
;   [conditional branch target (if/else)] L_0287
L_0287:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x23f], 0xffff ; 26 C7 87 3F 02 FF FF
        mov     word ptr es:[bx + 0x241], 0xff  ; 26 C7 87 41 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_029D
L_029D:
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        jl      L_02A6                          ; 7C 03
        jmp     L_0391                          ; E9 EB 00
;   [conditional branch target (if/else)] L_02A6
L_02A6:
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
        jmp     L_029D                          ; EB CC
;   [unconditional branch target] L_02D1
L_02D1:
        mov     word ptr [0x14], 0x110          ; C7 06 14 00 10 01
        mov     word ptr [0x16], 0xbf           ; C7 06 16 00 BF 00
        mov     word ptr [0x18], 0xe31          ; C7 06 18 00 31 0E
        mov     word ptr [0x1a], 0x9f6          ; C7 06 1A 00 F6 09
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_027C                          ; 74 8B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x219], 0xf78 ; 26 C7 87 19 02 78 0F
        mov     word ptr es:[bx + 0x21b], 0xaf0 ; 26 C7 87 1B 02 F0 0A
        jmp     L_0260                          ; E9 5B FF
;   [unconditional branch target] L_0305
L_0305:
        mov     word ptr [0x14], 0x101          ; C7 06 14 00 01 01
        mov     word ptr [0x16], 0xbf           ; C7 06 16 00 BF 00
        mov     word ptr [0x18], 0xd69          ; C7 06 18 00 69 0D
        mov     word ptr [0x1a], 0x9f6          ; C7 06 1A 00 F6 09
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_0391                          ; 74 6C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x23f], 0xffff ; 26 C7 87 3F 02 FF FF
        mov     word ptr es:[bx + 0x241], 0xff  ; 26 C7 87 41 02 FF 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [loop start] L_033B
L_033B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x180]       ; 8B 87 80 01
        mov     dx, word ptr [bx + 0x182]       ; 8B 97 82 01
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + si + 0x23f], ax ; 26 89 80 3F 02
        mov     word ptr es:[bx + si + 0x241], dx ; 26 89 90 41 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 3            ; 83 7E FC 03
        jl      L_033B                          ; 7C D4
        mov     word ptr es:[bx + 0x219], 0xe8d ; 26 C7 87 19 02 8D 0E
        mov     word ptr es:[bx + 0x21b], 0xb3e ; 26 C7 87 1B 02 3E 0B
        mov     word ptr es:[bx + 0x21d], 0x28  ; 26 C7 87 1D 02 28 00
        mov     word ptr es:[bx + 0x21f], 0x38  ; 26 C7 87 1F 02 38 00
        mov     word ptr es:[bx + 0x221], 0x38  ; 26 C7 87 21 02 38 00
        mov     word ptr es:[bx + 0x223], 0x28  ; 26 C7 87 23 02 28 00
;   [branch target] L_0391
L_0391:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_03A9                          ; 74 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x24b                       ; 05 4B 02
        sub     ax, bx                          ; 2B C3
        mov     word ptr es:[bx + 0xb], ax      ; 26 89 47 0B
;   [conditional branch target (if/else)] L_03A9
L_03A9:
        mov     ax, 0x24c                       ; B8 4C 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_03B8
L_03B8:
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
        mov     word ptr es:[bx + 0x237], 2     ; 26 C7 87 37 02 02 00
        mov     word ptr es:[bx + 0x239], 3     ; 26 C7 87 39 02 03 00
        mov     word ptr es:[bx + 0x23b], 2     ; 26 C7 87 3B 02 02 00
        mov     word ptr es:[bx + 0x23d], 3     ; 26 C7 87 3D 02 03 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_03ED                          ; 75 03
        jmp     L_04A9                          ; E9 BC 00
;   [conditional branch target (if/else)] L_03ED
L_03ED:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x78                        ; B8 78 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 90 15
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_0413                          ; 75 0C
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x81                        ; B8 81 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_0421                          ; EB 0E
;   [conditional branch target (if/else)] L_0413
L_0413:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x85                        ; B8 85 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
;   [unconditional branch target] L_0421
L_0421:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 66 15
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xd], 0       ; 26 83 7F 0D 00
        je      L_0457                          ; 74 26
        cmp     word ptr es:[bx + 0xd], 0x26    ; 26 83 7F 0D 26
        jge     L_0457                          ; 7D 1F
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
        call    L_11DD                          ; E8 88 0D
        jmp     L_046B                          ; EB 14
;   [conditional branch target (if/else)] L_0457
L_0457:
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
        call    L_198D                          ; E8 22 15
;   [unconditional branch target] L_046B
L_046B:
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
        call    L_151F                          ; E8 9B 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x94                        ; B8 94 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 F5 14
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22d], 0     ; 26 C7 87 2D 02 00 00
        mov     word ptr es:[bx + 0x22f], 0     ; 26 C7 87 2F 02 00 00
;   [unconditional branch target] L_04A9
L_04A9:
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
; sub_04B4   offset=0x04B4  size=121 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_11DD, L_198D, L_1A20
;-------------------------------------------------------------------------
;   [sub-routine] L_04B4
L_04B4:
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
        jne     L_04D5                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_0873                          ; E9 9E 03
;   [conditional branch target (if/else)] L_04D5
L_04D5:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_04E3                          ; 76 03
        jmp     L_0870                          ; E9 8D 03
;   [conditional branch target (if/else)] L_04E3
L_04E3:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x854]        ; 2E FF A7 54 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x13]     ; 26 8B 47 13
        inc     word ptr es:[bx + 0x13]         ; 26 FF 47 13
        or      ax, ax                          ; 0B C0
        jne     L_0542                          ; 75 3A
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_0523                          ; 75 14
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        jmp     L_0538                          ; EB 15
;   [conditional branch target (if/else)] L_0523
L_0523:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 1]        ; 26 8B 47 01
;   [unconditional branch target] L_0538
L_0538:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        jmp     L_0760                          ; E9 1E 02
;   [conditional branch target (if/else)] L_0542
L_0542:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_0560                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0563                          ; EB 03
;   [conditional branch target (if/else)] L_0560
L_0560:
        mov     ax, 0xffff                      ; B8 FF FF
;   [unconditional branch target] L_0563
L_0563:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x13], 0      ; 26 C7 47 13 00 00
        cmp     word ptr es:[bx + 9], 0         ; 26 83 7F 09 00
        jne     L_0579                          ; 75 03
        jmp     L_0870                          ; E9 F7 02
;   [conditional branch target (if/else)] L_0579
L_0579:
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_059B                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x9c                        ; B8 9C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 FC 13
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_059B
L_059B:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x227], 0     ; 26 C7 87 27 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xa0                        ; B8 A0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 D8 13
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xa7                        ; B8 A7 00
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
        call    L_11DD                          ; E8 FD 0B
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A20                          ; E8 28 14
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
        jmp     L_0870                          ; E9 60 02
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A20                          ; E8 05 14
        jmp     L_0760                          ; E9 42 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_063D                          ; 75 15
        mov     ax, word ptr es:[bx + 0x219]    ; 26 8B 87 19 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
        jmp     L_0653                          ; EB 16
;   [conditional branch target (if/else)] L_063D
L_063D:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21b]    ; 26 8B 87 1B 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x219]    ; 26 8B 87 19 02
;   [loop start (also forward branch)] L_0653
L_0653:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_0760                          ; E9 03 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_067C                          ; 75 15
        mov     ax, word ptr es:[bx + 0x21d]    ; 26 8B 87 1D 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x21f]    ; 26 8B 87 1F 02
        jmp     L_0653                          ; EB D7
;   [conditional branch target (if/else)] L_067C
L_067C:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x221]    ; 26 8B 87 21 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x223]    ; 26 8B 87 23 02
        jmp     L_0653                          ; EB BF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x13], 0      ; 26 C7 47 13 00 00
        cmp     word ptr es:[bx + 7], 0         ; 26 83 7F 07 00
        je      L_06BE                          ; 74 1A
        cmp     word ptr es:[bx + 7], -1        ; 26 83 7F 07 FF
        je      L_06BE                          ; 74 13
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
        call    L_04B4                          ; E8 F8 FD
        jmp     L_06C7                          ; EB 09
;   [conditional branch target (if/else)] L_06BE
L_06BE:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 9], 0         ; 26 C7 47 09 00 00
;   [unconditional branch target] L_06C7
L_06C7:
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
        jne     L_06F0                          ; 75 03
        jmp     L_0870                          ; E9 80 01
;   [conditional branch target (if/else)] L_06F0
L_06F0:
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B8                          ; E8 BD FC
        jmp     L_0760                          ; EB 63
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xaa                        ; B8 AA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 7C 12
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
        call    L_04B4                          ; E8 8E FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 7], 0xffff    ; 26 C7 47 07 FF FF
        jmp     L_0760                          ; EB 23
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     ax, 1                           ; 3D 01 00
        jge     L_074B                          ; 7D 03
        jmp     L_0870                          ; E9 25 01
;   [conditional branch target (if/else)] L_074B
L_074B:
        cmp     ax, 6                           ; 3D 06 00
        jle     L_0760                          ; 7E 10
        cmp     ax, 8                           ; 3D 08 00
        jge     L_0758                          ; 7D 03
        jmp     L_0870                          ; E9 18 01
;   [conditional branch target (if/else)] L_0758
L_0758:
        cmp     ax, 0xd                         ; 3D 0D 00
        jle     L_0760                          ; 7E 03
        jmp     L_0870                          ; E9 10 01
;   [loop start (also forward branch)] L_0760
L_0760:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_0870                          ; E9 08 01
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 5], ax        ; 26 89 47 05
        jmp     L_0760                          ; EB E9
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
        mov     ax, 0xae                        ; B8 AE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 E2 11
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        mov     word ptr es:[bx + 0x227], 0     ; 26 C7 87 27 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 C1 11
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        imul    word ptr es:[bx + 3]            ; 26 F7 6F 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xbb                        ; B8 BB 00
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
        call    L_11DD                          ; E8 E6 09
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        jmp     L_0760                          ; E9 55 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jge     L_0818                          ; 7D 04
        xor     si, si                          ; 33 F6
        jmp     L_0836                          ; EB 1E
;   [conditional branch target (if/else)] L_0818
L_0818:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_0830                          ; 7F 08
        mov     si, word ptr es:[bx + 0x225]    ; 26 8B B7 25 02
        dec     si                              ; 4E
        jmp     L_0836                          ; EB 06
;   [conditional branch target (if/else)] L_0830
L_0830:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx]            ; 26 8B 37
;   [unconditional branch target] L_0836
L_0836:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + si + 0x23f] ; 26 8B 80 3F 02
        mov     dx, word ptr es:[bx + si + 0x241] ; 26 8B 90 41 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        jmp     L_0760                          ; E9 0C FF
        push    cx                              ; 51
        add     ax, 0x777                       ; 05 77 07
        jmp     L_085E                          ; EB 04
        or      cx, word ptr [bx + si]          ; 0B 08
        or      cx, word ptr [bx + si]          ; 0B 08
;   [unconditional branch target] L_085E
L_085E:
        adc     byte ptr [0x870], al            ; 10 06 70 08
        cmp     ax, 0x6807                      ; 3D 07 68
        pop     es                              ; 07
        xchg    sp, ax                          ; 94
        push    es                              ; 06
        std                                     ; FD
        push    es                              ; 06
        push    ds                              ; 1E
        push    es                              ; 06
        pop     bp                              ; 5D
        push    es                              ; 06
        jo      L_0878                          ; 70 08
;   [unconditional branch target] L_0870
L_0870:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [unconditional branch target] L_0873
L_0873:
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
        sub     sp, 0x84                        ; 81 EC 84 00
        push    si                              ; 56
        cmp     word ptr [0xf0], 0              ; 83 3E F0 00 00
        je      L_0898                          ; 74 03
        jmp     L_0952                          ; E9 BA 00
;   [conditional branch target (if/else)] L_0898
L_0898:
        mov     word ptr [0xf0], 1              ; C7 06 F0 00 01 00
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xbe                        ; B8 BE 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A F6 08 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x36                        ; B8 36 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x36                        ; 3D 36 00
        jne     L_08D9                          ; 75 13
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0xc7                        ; B8 C7 00
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_092F                          ; 74 56
;   [conditional branch target (if/else)] L_08D9
L_08D9:
        mov     word ptr [0x2c2], 0x13          ; C7 06 C2 02 13 00
        mov     word ptr [0x2d0], 0x26          ; C7 06 D0 02 26 00
        mov     word ptr [0x2c0], 0xa           ; C7 06 C0 02 0A 00
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xd0                        ; B8 D0 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 61 09 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_08FF
L_08FF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     word ptr [bx + 0x2cc], si       ; 89 B7 CC 02
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x184]       ; 8B 84 84 01
        mov     dx, word ptr [si + 0x186]       ; 8B 94 86 01
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x2c4], ax       ; 89 87 C4 02
        mov     word ptr [bx + 0x2c6], dx       ; 89 97 C6 02
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jl      L_08FF                          ; 7C D0
;   [conditional branch target (if/else)] L_092F
L_092F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0xd9                        ; B8 D9 00
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
        jne     L_0956                          ; 75 0A
        mov     word ptr [0xf0], 0              ; C7 06 F0 00 00 00
;   [unconditional branch target] L_0952
L_0952:
        xor     ax, ax                          ; 33 C0
        jmp     L_0998                          ; EB 42
;   [conditional branch target (if/else)] L_0956
L_0956:
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0xe6                        ; B8 E6 00
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x2a0                       ; B8 A0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x36                        ; B8 36 00
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
        mov     word ptr [0xf0], 0              ; C7 06 F0 00 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0998
L_0998:
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
        je      L_09CD                          ; 74 13
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_09C2                          ; 75 03
        jmp     L_0B86                          ; E9 C4 01
;   [conditional branch target (if/else)] L_09C2
L_09C2:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_09CA                          ; 75 03
        jmp     L_0AC0                          ; E9 F6 00
;   [conditional branch target (if/else)] L_09CA
L_09CA:
        jmp     L_0D0A                          ; E9 3D 03
;   [conditional branch target (if/else)] L_09CD
L_09CD:
        mov     word ptr [0x2d2], 0x28          ; C7 06 D2 02 28 00
        mov     ax, word ptr [0x2cc]            ; A1 CC 02
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x2d4], ax            ; A3 D4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2c0]                ; FF 36 C0 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A F8 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2c2]                ; FF 36 C2 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 08 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2d2]                ; FF 36 D2 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 18 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2d4]                ; FF 36 D4 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A A7 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0x1e         ; C7 46 FC 1E 00
;   [loop start] L_0A21
L_0A21:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x290]       ; 8B 87 90 02
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
        cmp     word ptr [bp - 4], 0x20         ; 83 7E FC 20
        jl      L_0A21                          ; 7C C9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 82 0A 00 00 [FIXUP]
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
        call    far USER.GETDLGITEM             ; 9A B3 0A 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x2d0]                ; FF 36 D0 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 67 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        push    word ptr [0x2d0]                ; FF 36 D0 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 79 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D0A                          ; E9 4A 02
;   [unconditional branch target] L_0AC0
L_0AC0:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ax                              ; 50
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_0AD4                          ; 74 03
        jmp     L_0D0A                          ; E9 36 02
;   [conditional branch target (if/else)] L_0AD4
L_0AD4:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 7                           ; 3D 07 00
        ja      L_0B2F                          ; 77 44
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xb1f]        ; 2E FF A7 1F 0B
        dec     word ptr [bp - 6]               ; FF 4E FA
        jmp     L_0B2F                          ; EB 37
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0B2F                          ; EB 32
        sub     word ptr [bp - 6], 0xa          ; 83 6E FA 0A
        jmp     L_0B2F                          ; EB 2C
        add     word ptr [bp - 6], 0xa          ; 83 46 FA 0A
        jmp     L_0B2F                          ; EB 26
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0B2F                          ; EB 1E
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0B2F                          ; EB 17
        mov     word ptr [bp - 6], 0x26         ; C7 46 FA 26 00
        jmp     L_0B2F                          ; EB 10
        or      bh, al                          ; F3 0A F8
        or      bh, ch                          ; 0A FD
        or      al, byte ptr [bp + di]          ; 0A 03
        or      cx, word ptr [bx + di]          ; 0B 09
        or      bp, word ptr [bx]               ; 0B 2F
        or      dx, word ptr [bx + di]          ; 0B 11
        or      bx, word ptr [bx + si]          ; 0B 18
        or      ax, word ptr [bp + di - 0x582]  ; 0B 83 7E FA
        jle     L_0B3A                          ; 26 7E 05
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_0B3D                          ; EB 03
;   [conditional branch target (if/else)] L_0B3A
L_0B3A:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0B3D
L_0B3D:
        cmp     ax, 1                           ; 3D 01 00
        jge     L_0B47                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B55                          ; EB 0E
;   [conditional branch target (if/else)] L_0B47
L_0B47:
        cmp     word ptr [bp - 6], 0x26         ; 83 7E FA 26
        jle     L_0B52                          ; 7E 05
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_0B55                          ; EB 03
;   [conditional branch target (if/else)] L_0B52
L_0B52:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0B55
L_0B55:
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
        mov     word ptr [0x2d0], ax            ; A3 D0 02
        jmp     L_0D0A                          ; E9 84 01
;   [unconditional branch target] L_0B86
L_0B86:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x28                        ; 3D 28 00
        jbe     L_0B94                          ; 76 03
        jmp     L_0D0A                          ; E9 76 01
;   [conditional branch target (if/else)] L_0B94
L_0B94:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xcb3]        ; 2E FF A7 B3 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2c2]                ; FF 36 C2 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A BA 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2c2], ax            ; A3 C2 02
;   [loop start] L_0BB4
L_0BB4:
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A CC 0B 00 00 [FIXUP]
        jmp     L_0D05                          ; E9 44 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2c0]                ; FF 36 C0 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A E6 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2c0], ax            ; A3 C0 02
        jmp     L_0BB4                          ; EB D9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2d2]                ; FF 36 D2 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A F9 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2d2], ax            ; A3 D2 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 08 0C 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2d4]                ; FF 36 D4 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 5B 0C 00 00 [FIXUP]
        mov     bx, word ptr [0x2d2]            ; 8B 1E D2 02
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x27c]       ; 8B 87 7C 02
        add     ax, 0x14                        ; 05 14 00
        mov     word ptr [0x2d4], ax            ; A3 D4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        jmp     L_0BB4                          ; EB 93
        mov     bx, word ptr [0x2d2]            ; 8B 1E D2 02
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x14                        ; 2D 14 00
        mov     word ptr [bx + 0x27c], ax       ; 89 87 7C 02
        mov     bx, word ptr [0x2d2]            ; 8B 1E D2 02
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [si + 0x134]       ; 8B 84 34 01
        mov     dx, word ptr [si + 0x136]       ; 8B 94 36 01
        mov     word ptr [bx + 0x224], ax       ; 89 87 24 02
        mov     word ptr [bx + 0x226], dx       ; 89 97 26 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x2d4]                ; FF 36 D4 02
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x2d4], ax            ; A3 D4 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A E8 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x2d4]                ; FF 36 D4 02
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
        call    far USER.GETDLGITEMTEXT         ; 9A 3B 0A 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, word ptr [0x2d2]            ; A1 D2 02
        sub     ax, 0xa                         ; 2D 0A 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 4B 0A 00 00 [FIXUP]
        jmp     L_0D05                          ; EB 68
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0CA3
L_0CA3:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D05                          ; EB 5A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 2                           ; B8 02 00
        jmp     L_0CA3                          ; EB F0
        popf                                    ; 9D
        or      al, 0xab                        ; 0C AB
        or      al, 0xa                         ; 0C 0A
        or      ax, 0xd0a                       ; 0D 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        ror     word ptr [bp + di], 0xa         ; C1 0B 0A
        or      ax, 0xd0a                       ; 0D 0A 0D
        ror     word ptr [bp + di], 0xa         ; C1 0B 0A
        or      ax, 0xd0a                       ; 0D 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        pushf                                   ; 9C
        or      bx, word ptr [si + 0x210b]      ; 0B 9C 0B 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0x21                        ; 0C 21
        or      al, 0xa                         ; 0C 0A
        or      ax, 0xd0a                       ; 0D 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        or      cl, byte ptr [di]               ; 0A 0D
        fisttp  dword ptr [bp + di]             ; DB 0B
        fisttp  dword ptr [bp + di]             ; DB 0B
;   [unconditional branch target] L_0D05
L_0D05:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D0C                          ; EB 02
;   [unconditional branch target] L_0D0A
L_0D0A:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_0D0C
L_0D0C:
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
        jne     L_0D35                          ; 75 06
;   [loop start] L_0D2F
L_0D2F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DC2                          ; E9 8D 00
;   [conditional branch target (if/else)] L_0D35
L_0D35:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0D51                          ; 74 14
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xf2                        ; B8 F2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1834                          ; E8 E7 0A
        or      ax, ax                          ; 0B C0
        je      L_0D2F                          ; 74 DE
;   [conditional branch target (if/else)] L_0D51
L_0D51:
        mov     word ptr [bp - 0xa], 0x140      ; C7 46 F6 40 01
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0D64
L_0D64:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1b       ; 83 7E F4 1B
        jl      L_0D64                          ; 7C E6
        mov     word ptr [bp - 0xa], 0x15c      ; C7 46 F6 5C 01
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0D91
L_0D91:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1f       ; 83 7E F4 1F
        jl      L_0D91                          ; 7C E6
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
;   [unconditional branch target] L_0DC2
L_0DC2:
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
        jne     L_0DED                          ; 75 05
;   [loop start] L_0DE8
L_0DE8:
        mov     ax, si                          ; 8B C6
        jmp     L_0EAE                          ; E9 C1 00
;   [conditional branch target (if/else)] L_0DED
L_0DED:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 1                           ; 3D 01 00
        je      L_0DFC                          ; 74 07
        cmp     ax, 2                           ; 3D 02 00
        je      L_0E61                          ; 74 67
        jmp     L_0DE8                          ; EB EC
;   [conditional branch target (if/else)] L_0DFC
L_0DFC:
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
;   [loop start] L_0E0B
L_0E0B:
        cmp     word ptr [bp - 0x16], 6         ; 83 7E EA 06
        jge     L_0DE8                          ; 7D D7
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_0E4F                          ; EB 31
;   [loop start] L_0E1E
L_0E1E:
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
        je      L_0EA5                          ; 74 59
        inc     word ptr [bp - 0x14]            ; FF 46 EC
;   [unconditional branch target] L_0E4F
L_0E4F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_0E1E                          ; 7F C2
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        jmp     L_0E0B                          ; EB AA
;   [conditional branch target (if/else)] L_0E61
L_0E61:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
;   [loop start] L_0E6B
L_0E6B:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_0E7B                          ; 7F 03
        jmp     L_0DE8                          ; E9 6D FF
;   [conditional branch target (if/else)] L_0E7B
L_0E7B:
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
        jne     L_0EA9                          ; 75 04
;   [conditional branch target (if/else)] L_0EA5
L_0EA5:
        xor     ax, ax                          ; 33 C0
        jmp     L_0EAE                          ; EB 05
;   [conditional branch target (if/else)] L_0EA9
L_0EA9:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_0E6B                          ; EB BD
;   [unconditional branch target] L_0EAE
L_0EAE:
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
        jne     L_0ED5                          ; 75 03
        jmp     L_11CF                          ; E9 FA 02
;   [conditional branch target (if/else)] L_0ED5
L_0ED5:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_0EDE                          ; 7D 03
        jmp     L_11CF                          ; E9 F1 02
;   [conditional branch target (if/else)] L_0EDE
L_0EDE:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_0EE9                          ; 75 03
        jmp     L_11BA                          ; E9 D1 02
;   [conditional branch target (if/else)] L_0EE9
L_0EE9:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        je      L_0F01                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        je      L_0F4C                          ; 74 56
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0EFE                          ; 75 03
        jmp     L_0F94                          ; E9 96 00
;   [conditional branch target (if/else)] L_0EFE
L_0EFE:
        jmp     L_11CF                          ; E9 CE 02
;   [conditional branch target (if/else)] L_0F01
L_0F01:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2652                          ; E8 35 17
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_0F2F                          ; 7D 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_0F2F
L_0F2F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0F46                          ; 75 05
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [loop start (also forward branch)] L_0F46
L_0F46:
        mov     ax, 4                           ; B8 04 00
        jmp     L_11D1                          ; E9 85 02
;   [conditional branch target (if/else)] L_0F4C
L_0F4C:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2652                          ; E8 EA 16
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 1             ; 26 83 3F 01
        jne     L_0F79                          ; 75 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [conditional branch target (if/else)] L_0F79
L_0F79:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 2             ; 26 83 3F 02
        jne     L_0F88                          ; 75 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        jmp     L_0F8B                          ; EB 03
;   [conditional branch target (if/else)] L_0F88
L_0F88:
        mov     ax, 6                           ; B8 06 00
;   [unconditional branch target] L_0F8B
L_0F8B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_0F46                          ; EB B2
;   [unconditional branch target] L_0F94
L_0F94:
        mov     word ptr [bp - 0xe], 0xfa       ; C7 46 F2 FA 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_0FAA
L_0FAA:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 0x45      ; 83 7E F0 45
        jl      L_0FAA                          ; 7C E6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, word ptr [0x11d]            ; 03 06 1D 01
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, 0x17b                       ; B8 7B 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], ds         ; 8C 5E F6
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_0FE2
L_0FE2:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 8         ; 83 7E F0 08
        jl      L_0FE2                          ; 7C E5
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_100B                          ; 7C 05
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        jmp     L_1013                          ; EB 08
;   [conditional branch target (if/else)] L_100B
L_100B:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_1013
L_1013:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_101F                          ; 75 05
        mov     word ptr [bp - 0x18], 0x36      ; C7 46 E8 36 00
;   [conditional branch target (if/else)] L_101F
L_101F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jl      L_102F                          ; 7C 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        jmp     L_1038                          ; EB 09
;   [conditional branch target (if/else)] L_102F
L_102F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_1038
L_1038:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_104E                          ; 75 0F
        mov     ax, 0x13                        ; B8 13 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        cdq                                     ; 99
        mov     cx, 0x1b                        ; B9 1B 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_104E
L_104E:
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
        jne     L_1147                          ; 75 07
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        jmp     L_1156                          ; EB 0F
;   [conditional branch target (if/else)] L_1147
L_1147:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xd], 3       ; 26 80 7F 0D 03
        jne     L_1156                          ; 75 05
        or      byte ptr es:[bx + 0xd], 3       ; 26 80 4F 0D 03
;   [branch target] L_1156
L_1156:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xe], 2       ; 26 80 7F 0E 02
        jne     L_1165                          ; 75 05
        or      byte ptr es:[bx + 0xe], 4       ; 26 80 4F 0E 04
;   [conditional branch target (if/else)] L_1165
L_1165:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_118D                          ; 74 1A
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, 0x96                        ; 05 96 00
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jge     L_118D                          ; 7D 0B
        add     word ptr es:[bx + 8], 0x12c     ; 26 81 47 08 2C 01
        or      byte ptr es:[bx + 0x10], 2      ; 26 80 4F 10 02
;   [conditional branch target (if/else)] L_118D
L_118D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_11AC                          ; 74 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], ax     ; 26 89 47 11
        jmp     L_11B5                          ; EB 09
;   [conditional branch target (if/else)] L_11AC
L_11AC:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
;   [loop start (also forward branch)] L_11B5
L_11B5:
        mov     ax, 0x45                        ; B8 45 00
        jmp     L_11D1                          ; EB 17
;   [unconditional branch target] L_11BA
L_11BA:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        jl      L_11CF                          ; 7C 0D
        cmp     ax, 2                           ; 3D 02 00
        jg      L_11CA                          ; 7F 03
        jmp     L_0F46                          ; E9 7C FD
;   [conditional branch target (if/else)] L_11CA
L_11CA:
        cmp     ax, 3                           ; 3D 03 00
        je      L_11B5                          ; 74 E6
;   [branch target] L_11CF
L_11CF:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_11D1
L_11D1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_11DD
L_11DD:
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
        jmp     L_12FE                          ; E9 DF 00
;   [loop start] L_121F
L_121F:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_122A                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_122D                          ; EB 03
;   [conditional branch target (if/else)] L_122A
L_122A:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_122D
L_122D:
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
        call    L_1724                          ; E8 CC 04
        jmp     L_12E9                          ; E9 8E 00
;   [loop start] L_125B
L_125B:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_12A0                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_1296                          ; 73 25
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
        call    L_198D                          ; E8 01 07
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_1296
L_1296:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_12A0
L_12A0:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_12BF                          ; 74 19
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_12BF                          ; 74 11
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_12CB                          ; EB 0C
;   [conditional branch target (if/else)] L_12BF
L_12BF:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_12CB
L_12CB:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1899                          ; E8 B7 05
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_12E9
L_12E9:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_12F6                          ; 7E 03
        jmp     L_125B                          ; E9 65 FF
;   [conditional branch target (if/else)] L_12F6
L_12F6:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_12FE
L_12FE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_1307                          ; 7E 03
        jmp     L_121F                          ; E9 18 FF
;   [conditional branch target (if/else)] L_1307
L_1307:
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
        call    L_198D                          ; E8 61 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_1337
L_1337:
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
        jne     L_13AD                          ; 75 62
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_13AD                          ; 74 5C
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_13AD                          ; 75 55
;   [loop start] L_1358
L_1358:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_13B7                          ; 7E 59
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
        jmp     L_1358                          ; EB C2
;   [loop start] L_1396
L_1396:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        imul    word ptr [bp + 6]               ; F7 6E 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_13AD
L_13AD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_1396                          ; 7F DF
;   [conditional branch target (if/else)] L_13B7
L_13B7:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_13C2
L_13C2:
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
        jmp     L_14E6                          ; E9 E2 00
;   [loop start] L_1404
L_1404:
        cmp     word ptr [bp + 0xa], 0x10       ; 83 7E 0A 10
        jl      L_140F                          ; 7C 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_1412                          ; EB 03
;   [conditional branch target (if/else)] L_140F
L_140F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [unconditional branch target] L_1412
L_1412:
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
        call    L_1337                          ; E8 FA FE
        jmp     L_14D1                          ; E9 91 00
;   [loop start] L_1440
L_1440:
        cmp     word ptr [bp - 0x20a], 0        ; 83 BE F6 FD 00
        je      L_1485                          ; 74 3E
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        cmp     ax, 8                           ; 3D 08 00
        jae     L_147B                          ; 73 25
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
        call    L_198D                          ; E8 1C 05
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
;   [conditional branch target (if/else)] L_147B
L_147B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2c          ; 26 C6 07 2C
;   [conditional branch target (if/else)] L_1485
L_1485:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_14A7                          ; 74 1C
        test    word ptr [bp - 0x20a], 1        ; F7 86 F6 FD 01 00
        je      L_14A7                          ; 74 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        imul    word ptr [bp + 8]               ; F7 6E 08
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        jmp     L_14B3                          ; EB 0C
;   [conditional branch target (if/else)] L_14A7
L_14A7:
        les     bx, ptr [bp - 0x20e]            ; C4 9E F2 FD
        add     word ptr [bp - 0x20e], 2        ; 83 86 F2 FD 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
;   [unconditional branch target] L_14B3
L_14B3:
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x208]                ; 8D 86 F8 FD
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        add     ah, 2                           ; 80 C4 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1899                          ; E8 CF 03
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 0x20a]           ; FF 86 F6 FD
;   [unconditional branch target] L_14D1
L_14D1:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jle     L_14DE                          ; 7E 03
        jmp     L_1440                          ; E9 62 FF
;   [conditional branch target (if/else)] L_14DE
L_14DE:
        add     word ptr [bp + 0xc], 0x20       ; 83 46 0C 20
        sub     word ptr [bp + 0xa], 0x10       ; 83 6E 0A 10
;   [unconditional branch target] L_14E6
L_14E6:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_14EF                          ; 7E 03
        jmp     L_1404                          ; E9 15 FF
;   [conditional branch target (if/else)] L_14EF
L_14EF:
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
        call    L_198D                          ; E8 79 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_151F
L_151F:
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
        je      L_1551                          ; 74 1D
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1ac                       ; B8 AC 01
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
        call    L_11DD                          ; E8 8C FC
;   [conditional branch target (if/else)] L_1551
L_1551:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_155C
L_155C:
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
        jne     L_1599                          ; 75 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jg      L_15AB                          ; 7F 12
;   [conditional branch target (if/else)] L_1599
L_1599:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_15BD                          ; 75 1A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_15BD                          ; 7D 12
;   [conditional branch target (if/else)] L_15AB
L_15AB:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_15BD
L_15BD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_15D7                          ; 7D 12
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_15D7
L_15D7:
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
        mov     ax, 0x1af                       ; B8 AF 01
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
        call    L_11DD                          ; E8 BF FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_1629
L_1629:
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
        mov     ax, 0x1b2                       ; B8 B2 01
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
        call    L_11DD                          ; E8 6E FB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_167A
L_167A:
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
        mov     ax, 0x1b5                       ; B8 B5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 F2 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1b8                       ; B8 B8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 DE 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x12    ; 26 83 7F 0F 12
        jne     L_16C9                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1bb                       ; B8 BB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 C4 02
;   [conditional branch target (if/else)] L_16C9
L_16C9:
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
        call    L_1899                          ; E8 B4 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 A2 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xf], 0x13    ; 26 83 7F 0F 13
        jne     L_1705                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1bf                       ; B8 BF 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 88 02
;   [conditional branch target (if/else)] L_1705
L_1705:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1c2                       ; B8 C2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 74 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [sub-routine] L_1724
L_1724:
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
        jne     L_1794                          ; 75 5C
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1794                          ; 74 56
        test    word ptr [bp + 0xa], 1          ; F7 46 0A 01 00
        jne     L_1794                          ; 75 4F
;   [loop start] L_1745
L_1745:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jle     L_179E                          ; 7E 53
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
        jmp     L_1745                          ; EB C5
;   [loop start] L_1780
L_1780:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        add     word ptr [bp + 0x10], 2         ; 83 46 10 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        add     word ptr [bp + 0xc], 2          ; 83 46 0C 02
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_1794
L_1794:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        or      ax, ax                          ; 0B C0
        jg      L_1780                          ; 7F E2
;   [conditional branch target (if/else)] L_179E
L_179E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_17A9
L_17A9:
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
        je      L_17DF                          ; 74 09
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1802                          ; 75 23
;   [conditional branch target (if/else)] L_17DF
L_17DF:
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
        jmp     L_1825                          ; EB 23
;   [loop start (also forward branch)] L_1802
L_1802:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_1802                          ; 75 EA
        sub     word ptr [bp - 6], 2            ; 83 6E FA 02
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_1829                          ; 75 04
;   [unconditional branch target] L_1825
L_1825:
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [conditional branch target (if/else)] L_1829
L_1829:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1834
L_1834:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
;   [loop start] L_1841
L_1841:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     byte ptr [bp - 4], 0x61         ; 80 7E FC 61
        jl      L_1869                          ; 7C 0A
        cmp     byte ptr [bp - 4], 0x7a         ; 80 7E FC 7A
        jg      L_1869                          ; 7F 04
        add     byte ptr [bp - 4], 0xe0         ; 80 46 FC E0
;   [conditional branch target (if/else)] L_1869
L_1869:
        cmp     byte ptr [bp - 6], 0x61         ; 80 7E FA 61
        jl      L_1879                          ; 7C 0A
        cmp     byte ptr [bp - 6], 0x7a         ; 80 7E FA 7A
        jg      L_1879                          ; 7F 04
        add     byte ptr [bp - 6], 0xe0         ; 80 46 FA E0
;   [conditional branch target (if/else)] L_1879
L_1879:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        je      L_1885                          ; 74 04
        xor     ax, ax                          ; 33 C0
        jmp     L_188E                          ; EB 09
;   [conditional branch target (if/else)] L_1885
L_1885:
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        jne     L_1841                          ; 75 B6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_188E
L_188E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1899
L_1899:
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
        jg      L_18B3                          ; 7F 06
;   [loop start] L_18AD
L_18AD:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_1981                          ; E9 CE 00
;   [conditional branch target (if/else)] L_18B3
L_18B3:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_18C8                          ; 7D 0F
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        jmp     L_18CD                          ; EB 05
;   [conditional branch target (if/else)] L_18C8
L_18C8:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
;   [unconditional branch target] L_18CD
L_18CD:
        mov     word ptr [bp - 0x16], 5         ; C7 46 EA 05 00
        mov     byte ptr [bp - 0xf], 0x30       ; C6 46 F1 30
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_1901                          ; EB 26
;   [loop start] L_18DB
L_18DB:
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
;   [unconditional branch target] L_1901
L_1901:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_18DB                          ; 75 D3
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1911                          ; 74 03
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [conditional branch target (if/else)] L_1911
L_1911:
        mov     ax, 6                           ; B8 06 00
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_1933                          ; 74 13
        inc     ax                              ; 40
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jg      L_18AD                          ; 7F 87
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], 0x2d          ; 26 C6 07 2D
        dec     word ptr [bp + 6]               ; FF 4E 06
;   [conditional branch target (if/else)] L_1933
L_1933:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_193E                          ; 7E 03
        jmp     L_18AD                          ; E9 6F FF
;   [conditional branch target (if/else)] L_193E
L_193E:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        lea     cx, [bp - 0x14]                 ; 8D 4E EC
        add     ax, cx                          ; 03 C1
        mov     dx, ss                          ; 8C D2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_1968                          ; EB 12
;   [loop start] L_1956
L_1956:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1968
L_1968:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        or      ax, ax                          ; 0B C0
        jne     L_1956                          ; 75 E4
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_197E                          ; 74 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        jmp     L_1981                          ; EB 03
;   [conditional branch target (if/else)] L_197E
L_197E:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
;   [unconditional branch target] L_1981
L_1981:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_198D
L_198D:
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
        jle     L_19DC                          ; 7E 32
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A20                          ; E8 6F 00
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx + 0x15], ax     ; 26 39 47 15
        jg      L_19DC                          ; 7F 1F
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far GDI.WRITESPOOL              ; 9A 3F 1A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1A15                          ; 7D 44
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_1A15                          ; EB 39
;   [conditional branch target (if/else)] L_19DC
L_19DC:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x17]     ; 26 8B 47 17
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x19                        ; 05 19 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x17], ax     ; 26 01 47 17
        jmp     L_1A0B                          ; EB 12
;   [loop start] L_19F9
L_19F9:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [unconditional branch target] L_1A0B
L_1A0B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jne     L_19F9                          ; 75 E4
;   [branch target] L_1A15
L_1A15:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_1A20
L_1A20:
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
        jge     L_1A50                          ; 7D 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_1A50
L_1A50:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x17], 0      ; 26 C7 47 17 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1A64
L_1A64:
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
        call    L_1B43                          ; E8 C1 00
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1AEB                          ; E8 5F 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B43                          ; E8 A7 00
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1AEB                          ; E8 45 00
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_1AB6                          ; 7C 08
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_1ABC                          ; EB 06
;   [conditional branch target (if/else)] L_1AB6
L_1AB6:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
;   [unconditional branch target] L_1ABC
L_1ABC:
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xc], cx         ; 39 4E F4
        jl      L_1ACD                          ; 7C 07
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, cx                          ; 2B C1
        jmp     L_1AD3                          ; EB 06
;   [conditional branch target (if/else)] L_1ACD
L_1ACD:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
;   [unconditional branch target] L_1AD3
L_1AD3:
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
;   [sub-routine] L_1AEB
L_1AEB:
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
        jge     L_1B29                          ; 7D 29
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jge     L_1B10                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_1B19                          ; EB 09
;   [conditional branch target (if/else)] L_1B10
L_1B10:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x3e8     ; 26 C7 47 02 E8 03
;   [unconditional branch target] L_1B19
L_1B19:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1B38                          ; EB 0F
;   [conditional branch target (if/else)] L_1B29
L_1B29:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x1f4     ; 26 C7 47 02 F4 01
        mov     word ptr es:[bx + 4], 0x3e8     ; 26 C7 47 04 E8 03
;   [unconditional branch target] L_1B38
L_1B38:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_1B43
L_1B43:
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
        call    L_3184                          ; E8 1C 16
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3121                          ; E8 B4 15
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
        call    L_3184                          ; E8 F1 15
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3121                          ; E8 89 15
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
        call    L_3184                          ; E8 D1 15
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_3121                          ; E8 69 15
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1BEB                          ; 7E 28
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_1BD0                          ; 7E 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1BD3                          ; EB 03
;   [conditional branch target (if/else)] L_1BD0
L_1BD0:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1BD3
L_1BD3:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_1BE3                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1BE6                          ; EB 03
;   [conditional branch target (if/else)] L_1BE3
L_1BE3:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1BE6
L_1BE6:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_1C11                          ; EB 26
;   [conditional branch target (if/else)] L_1BEB
L_1BEB:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_1BF8                          ; 7D 05
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        jmp     L_1BFB                          ; EB 03
;   [conditional branch target (if/else)] L_1BF8
L_1BF8:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1BFB
L_1BFB:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1C0B                          ; 7E 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1C0E                          ; EB 03
;   [conditional branch target (if/else)] L_1C0B
L_1C0B:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [unconditional branch target] L_1C0E
L_1C0E:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [unconditional branch target] L_1C11
L_1C11:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_1C7B                          ; 74 5D
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
        call    L_30BD                          ; E8 8A 14
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 E4 13
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
        call    L_30BD                          ; E8 6A 14
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 C4 13
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
        call    L_30BD                          ; E8 4A 14
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 A4 13
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_1C7B
L_1C7B:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_1C9E                          ; 75 08
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        jmp     L_1CD2                          ; EB 34
;   [conditional branch target (if/else)] L_1C9E
L_1C9E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 0x1f4     ; 26 81 7F 02 F4 01
        jg      L_1CAE                          ; 7F 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_1CB4                          ; EB 06
;   [conditional branch target (if/else)] L_1CAE
L_1CAE:
        mov     ax, 0x7d0                       ; B8 D0 07
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
;   [unconditional branch target] L_1CB4
L_1CB4:
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
        call    L_30BD                          ; E8 F7 13
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 51 13
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
;   [unconditional branch target] L_1CD2
L_1CD2:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_1CE3                          ; 75 07
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_1D1E                          ; EB 3B
;   [conditional branch target (if/else)] L_1CE3
L_1CE3:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_1CF9                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        add     ax, 0x7d0                       ; 05 D0 07
        jmp     L_1D1B                          ; EB 22
;   [conditional branch target (if/else)] L_1CF9
L_1CF9:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_1D0F                          ; 75 0E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        add     ax, 0xfa0                       ; 05 A0 0F
        jmp     L_1D1B                          ; EB 0C
;   [conditional branch target (if/else)] L_1D0F
L_1D0F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        add     ax, 0x1770                      ; 05 70 17
;   [unconditional branch target] L_1D1B
L_1D1B:
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [unconditional branch target] L_1D1E
L_1D1E:
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
        call    L_30BD                          ; E8 87 13
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 E1 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_1D48                          ; EB 05
;   [loop start] L_1D43
L_1D43:
        add     word ptr es:[bx], 0x168         ; 26 81 07 68 01
;   [unconditional branch target] L_1D48
L_1D48:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jl      L_1D43                          ; 7C F2
        jmp     L_1D58                          ; EB 05
;   [loop start] L_1D53
L_1D53:
        sub     word ptr es:[bx], 0x168         ; 26 81 2F 68 01
;   [unconditional branch target] L_1D58
L_1D58:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x168         ; 26 81 3F 68 01
        jge     L_1D53                          ; 7D F1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_1D6D
L_1D6D:
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
;   [sub-routine] L_1DA6
L_1DA6:
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
        call    L_30BD                          ; E8 FB 12
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
        call    L_30BD                          ; E8 E7 12
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
        call    L_1F99                          ; E8 99 01
        mov     ax, 0x64                        ; B8 64 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_30BD                          ; E8 AB 12
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
        call    L_30BD                          ; E8 97 12
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
        call    L_1F99                          ; E8 49 01
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_30BD                          ; E8 5B 12
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
        call    L_30BD                          ; E8 47 12
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
        call    L_30BD                          ; E8 2C 12
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
        call    L_30BD                          ; E8 11 12
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x44                        ; 05 44 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F99                          ; E8 DF 00
        mov     ax, 0x2710                      ; B8 10 27
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_30BD                          ; E8 F1 11
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
        call    L_30BD                          ; E8 DD 11
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
        call    L_30BD                          ; E8 C2 11
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
        call    L_30BD                          ; E8 A7 11
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x4c                        ; 05 4C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F99                          ; E8 75 00
        mov     ax, 0x3840                      ; B8 40 38
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_30BD                          ; E8 87 11
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
        call    L_30BD                          ; E8 73 11
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
        call    L_30BD                          ; E8 58 11
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
        call    L_30BD                          ; E8 3D 11
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x54                        ; 05 54 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F99                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [sub-routine] L_1F99
L_1F99:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
;   [loop start] L_1FA3
L_1FA3:
        cmp     word ptr [bp + 0x18], 0         ; 83 7E 18 00
        jl      L_1FB1                          ; 7C 08
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        jmp     L_1FBE                          ; EB 0D
;   [conditional branch target (if/else)] L_1FB1
L_1FB1:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_1FBE
L_1FBE:
        or      dx, dx                          ; 0B D2
        jg      L_1FEF                          ; 7F 2D
        jl      L_1FC9                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_1FEF                          ; 77 26
;   [conditional branch target (if/else)] L_1FC9
L_1FC9:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jl      L_1FD7                          ; 7C 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        jmp     L_1FE4                          ; EB 0D
;   [conditional branch target (if/else)] L_1FD7
L_1FD7:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_1FE4
L_1FE4:
        or      dx, dx                          ; 0B D2
        jl      L_2067                          ; 7C 7F
        jg      L_1FEF                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_2067                          ; 76 78
;   [conditional branch target (if/else)] L_1FEF
L_1FEF:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x16]                 ; 8D 46 16
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2FF8                          ; E8 FB 0F
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2FF8                          ; E8 ED 0F
        jmp     L_1FA3                          ; EB 96
;   [loop start] L_200D
L_200D:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [loop start] L_201A
L_201A:
        or      dx, dx                          ; 0B D2
        jg      L_204B                          ; 7F 2D
        jl      L_2025                          ; 7C 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        ja      L_204B                          ; 77 26
;   [conditional branch target (if/else)] L_2025
L_2025:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_2033                          ; 7C 08
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        jmp     L_2040                          ; EB 0D
;   [conditional branch target (if/else)] L_2033
L_2033:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        adc     dx, 0                           ; 83 D2 00
        neg     dx                              ; F7 DA
;   [unconditional branch target] L_2040
L_2040:
        or      dx, dx                          ; 0B D2
        jl      L_2075                          ; 7C 31
        jg      L_204B                          ; 7F 05
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jbe     L_2075                          ; 76 2A
;   [conditional branch target (if/else)] L_204B
L_204B:
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2FF8                          ; E8 9F 0F
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2FF8                          ; E8 91 0F
;   [conditional branch target (if/else)] L_2067
L_2067:
        cmp     word ptr [bp + 0x14], 0         ; 83 7E 14 00
        jl      L_200D                          ; 7C A0
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        jmp     L_201A                          ; EB A5
;   [conditional branch target (if/else)] L_2075
L_2075:
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
;   [sub-routine] L_209C
L_209C:
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
        call    L_1A20                          ; E8 6B F9
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_20D5                          ; EB 03
;   [loop start] L_20D2
L_20D2:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_20D5
L_20D5:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_20D2                          ; 75 E7
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx - 1], 0x3a      ; 26 C6 47 FF 3A
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x20          ; 26 C6 07 20
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_210F                          ; EB 03
;   [loop start] L_210C
L_210C:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_210F
L_210F:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_210C                          ; 75 E7
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        lea     ax, [bp - 0x8c]                 ; 8D 86 74 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.WRITEDIALOG             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_2147                          ; 7D 09
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
;   [conditional branch target (if/else)] L_2147
L_2147:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_2152
L_2152:
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
        jne     L_219F                          ; 75 39
        mov     word ptr es:[bx + 9], 1         ; 26 C7 47 09 01 00
        push    word ptr es:[bx + 7]            ; 26 FF 77 07
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_2183                          ; 75 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 7], 0         ; 26 C7 47 07 00 00
        jmp     L_219F                          ; EB 1C
;   [conditional branch target (if/else)] L_2183
L_2183:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        mov     ax, 0x1d2                       ; B8 D2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1c9                       ; B8 C9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x8000                      ; B8 00 80
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_209C                          ; E8 FD FE
;   [branch target] L_219F
L_219F:
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
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_21C6                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_2631                          ; E9 6B 04
;   [conditional branch target (if/else)] L_21C6
L_21C6:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_21E8                          ; 75 0A
        or      ax, ax                          ; 0B C0
        jne     L_21E8                          ; 75 06
;   [loop start] L_21E2
L_21E2:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2631                          ; E9 49 04
;   [conditional branch target (if/else)] L_21E8
L_21E8:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jle     L_220D                          ; 7E 0B
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jge     L_220D                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_220F                          ; EB 02
;   [conditional branch target (if/else)] L_220D
L_220D:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_220F
L_220F:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2152                          ; E8 2C FF
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_2260                          ; 74 30
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2260                          ; 75 20
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
        call    L_04B4                          ; E8 5F E2
;   [loop start] L_2255
L_2255:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_21E2                          ; EB 82
;   [conditional branch target (if/else)] L_2260
L_2260:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_2290                          ; 74 28
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
        call    L_155C                          ; E8 D8 F2
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        jmp     L_22B8                          ; EB 28
;   [conditional branch target (if/else)] L_2290
L_2290:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_22B8                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1629                          ; E8 7B F3
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [branch target] L_22B8
L_22B8:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 4                           ; 3D 04 00
        jne     L_22C3                          ; 75 03
        jmp     L_23EC                          ; E9 29 01
;   [conditional branch target (if/else)] L_22C3
L_22C3:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_22CB                          ; 75 03
        jmp     L_24EC                          ; E9 21 02
;   [conditional branch target (if/else)] L_22CB
L_22CB:
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_22DB                          ; 74 0B
        cmp     ax, 0x18                        ; 3D 18 00
        jne     L_22D8                          ; 75 03
        jmp     L_2598                          ; E9 C0 02
;   [conditional branch target (if/else)] L_22D8
L_22D8:
        jmp     L_2255                          ; E9 7A FF
;   [conditional branch target (if/else)] L_22DB
L_22DB:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_22E4                          ; 75 03
        jmp     L_2255                          ; E9 71 FF
;   [conditional branch target (if/else)] L_22E4
L_22E4:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x22d], ax    ; 26 39 87 2D 02
        jne     L_2302                          ; 75 0E
        mov     ax, word ptr es:[bx + 0x22f]    ; 26 8B 87 2F 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        je      L_232A                          ; 74 28
;   [conditional branch target (if/else)] L_2302
L_2302:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1f4                       ; B8 F4 01
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
        call    L_13C2                          ; E8 98 F0
;   [conditional branch target (if/else)] L_232A
L_232A:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_2354                          ; 74 24
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x1f7                       ; B8 F7 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0x22e                       ; 05 2E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11DD                          ; E8 89 EE
;   [conditional branch target (if/else)] L_2354
L_2354:
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
        call    L_151F                          ; E8 B2 F1
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1fa                       ; B8 FA 01
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
        call    L_13C2                          ; E8 24 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_23BD                          ; 74 19
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x1fd                       ; B8 FD 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 D5 F5
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start (also forward branch)] L_23BD
L_23BD:
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
;   [loop start] L_23E1
L_23E1:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
;   [loop start] L_23E4
L_23E4:
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        jmp     L_2255                          ; E9 69 FE
;   [unconditional branch target] L_23EC
L_23EC:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_23F8                          ; 75 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_23F8
L_23F8:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_2401                          ; 75 03
        jmp     L_2255                          ; E9 54 FE
;   [conditional branch target (if/else)] L_2401
L_2401:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx + 0x227], ax    ; 26 39 87 27 02
        je      L_2452                          ; 74 44
        mov     word ptr es:[bx + 0x227], ax    ; 26 89 87 27 02
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_2435                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        ; constant WM_LBUTTONDOWN
        mov     ax, 0x201                       ; B8 01 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 62 F5
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_2435
L_2435:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        ; constant WM_RBUTTONUP
        mov     ax, 0x205                       ; B8 05 02
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
        call    L_11DD                          ; E8 8B ED
;   [conditional branch target (if/else)] L_2452
L_2452:
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_24D2                          ; EB 6D
;   [loop start] L_2465
L_2465:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x208                       ; B8 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
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
        call    L_13C2                          ; E8 2C EF
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        add     word ptr [bp + 0x16], 2         ; 83 46 16 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x20b                       ; B8 0B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
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
        call    L_13C2                          ; E8 FA EE
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [unconditional branch target] L_24D2
L_24D2:
        dec     word ptr [bp + 0x1a]            ; FF 4E 1A
        cmp     word ptr [bp + 0x1a], 0         ; 83 7E 1A 00
        jg      L_2465                          ; 7F 8A
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_23E4                          ; E9 F8 FE
;   [unconditional branch target] L_24EC
L_24EC:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_24F5                          ; 75 03
        jmp     L_2255                          ; E9 60 FD
;   [conditional branch target (if/else)] L_24F5
L_24F5:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x20e                       ; B8 0E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 84 F4
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_252E                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x213                       ; B8 13 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 69 F4
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_252E
L_252E:
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
        call    L_151F                          ; E8 D8 EF
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x217                       ; B8 17 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13C2                          ; E8 56 EE
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x21a                       ; B8 1A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 0D F4
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        jmp     L_23E1                          ; E9 49 FE
;   [unconditional branch target] L_2598
L_2598:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_25A1                          ; 75 03
        jmp     L_2255                          ; E9 B4 FC
;   [conditional branch target (if/else)] L_25A1
L_25A1:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x21e                       ; B8 1E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 D8 F3
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_25DA                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x223                       ; B8 23 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 BD F3
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_25DA
L_25DA:
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
        call    L_151F                          ; E8 2C EF
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x227                       ; B8 27 02
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
        call    L_13C2                          ; E8 A8 ED
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, 0x22a                       ; B8 2A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 5F F3
        jmp     L_23BD                          ; E9 8C FD
;   [unconditional branch target] L_2631
L_2631:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
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
;   [sub-routine] L_2652
L_2652:
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
        jne     L_266F                          ; 75 06
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_2711                          ; E9 A2 00
;   [conditional branch target (if/else)] L_266F
L_266F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_267A                          ; 75 03
        jmp     L_270C                          ; E9 92 00
;   [conditional branch target (if/else)] L_267A
L_267A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        push    word ptr es:[bx + 0x241]        ; 26 FF B7 41 02
        push    word ptr es:[bx + 0x23f]        ; 26 FF B7 3F 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A64                          ; E8 D2 F3
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_26DA                          ; EB 39
;   [loop start] L_26A1
L_26A1:
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
        call    L_1A64                          ; E8 A4 F3
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_26D7                          ; 7D 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_26D7
L_26D7:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [unconditional branch target] L_26DA
L_26DA:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr es:[bx + 0x225], ax    ; 26 39 87 25 02
        jg      L_26A1                          ; 7F BA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     si, ax                          ; 8B F0
        mov     ax, dx                          ; 8B C2
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], si            ; 26 89 37
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
;   [loop start] L_26F9
L_26F9:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + si + 0x23f] ; 26 8B 80 3F 02
        mov     dx, word ptr es:[bx + si + 0x241] ; 26 8B 90 41 02
        jmp     L_2711                          ; EB 05
;   [unconditional branch target] L_270C
L_270C:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        jmp     L_26F9                          ; EB E8
;   [unconditional branch target] L_2711
L_2711:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_271D
L_271D:
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
        jne     L_2735                          ; 75 03
        jmp     L_2801                          ; E9 CC 00
;   [conditional branch target (if/else)] L_2735
L_2735:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jg      L_273E                          ; 7F 03
        jmp     L_2801                          ; E9 C3 00
;   [conditional branch target (if/else)] L_273E
L_273E:
        cmp     word ptr [bp + 0xa], 5          ; 83 7E 0A 05
        jl      L_2747                          ; 7C 03
        jmp     L_2801                          ; E9 BA 00
;   [conditional branch target (if/else)] L_2747
L_2747:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x22b], 0     ; 26 83 BF 2B 02 00
        je      L_276F                          ; 74 1D
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr es:[bx + 1]            ; 26 FF 77 01
        push    word ptr es:[bx + 3]            ; 26 FF 77 03
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1629                          ; E8 C4 EE
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x22b], 0     ; 26 C7 87 2B 02 00 00
;   [conditional branch target (if/else)] L_276F
L_276F:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_2794                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x246                       ; B8 46 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 03 F2
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_2794
L_2794:
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
        call    L_151F                          ; E8 72 ED
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr es:[bx + 0x22d], ax    ; 26 89 87 2D 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr es:[bx + 0x22f], ax    ; 26 89 87 2F 02
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x24a                       ; B8 4A 02
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
        call    L_13C2                          ; E8 DF EB
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        mov     ax, 0x24d                       ; B8 4D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 96 F1
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [unconditional branch target] L_2801
L_2801:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_280F
L_280F:
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
        jg      L_2868                          ; 7F 03
        jmp     L_2DC1                          ; E9 59 05
;   [conditional branch target (if/else)] L_2868
L_2868:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jge     L_2877                          ; 7D 03
        jmp     L_2E5A                          ; E9 E3 05
;   [conditional branch target (if/else)] L_2877
L_2877:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     ax, word ptr es:[bx + 2]        ; 26 3B 47 02
        jge     L_288D                          ; 7D 03
        jmp     L_2E5A                          ; E9 CD 05
;   [conditional branch target (if/else)] L_288D
L_288D:
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
        call    L_155C                          ; E8 B7 EC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22b], 1     ; 26 C7 87 2B 02 01 00
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_28D1                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x251                       ; B8 51 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 C6 F0
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [conditional branch target (if/else)] L_28D1
L_28D1:
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
        call    L_151F                          ; E8 31 EC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr es:[bx + 0x231], ax    ; 26 39 87 31 02
        jne     L_2908                          ; 75 0D
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr es:[bx + 0x233], ax    ; 26 39 87 33 02
        jne     L_2908                          ; 75 03
        jmp     L_2AAB                          ; E9 A3 01
;   [conditional branch target (if/else)] L_2908
L_2908:
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
        call    L_30BD                          ; E8 80 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_30BD                          ; E8 7B 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 D5 06
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
        call    L_30BD                          ; E8 5E 07
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_301C                          ; E8 B8 06
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x255                       ; B8 55 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 12 F0
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
        call    L_1899                          ; E8 FB EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 E9 EF
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_29C2                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x258                       ; B8 58 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_29D0                          ; EB 0E
;   [conditional branch target (if/else)] L_29C2
L_29C2:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x25b                       ; B8 5B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_29D0
L_29D0:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 B7 EF
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
        call    L_1899                          ; E8 A0 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 8E EF
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x25d                       ; B8 5D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 7A EF
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
        call    L_1899                          ; E8 63 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 51 EF
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        cmp     dx, 0xa                         ; 83 FA 0A
        jge     L_2A5A                          ; 7D 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x25f                       ; B8 5F 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_2A68                          ; EB 0E
;   [conditional branch target (if/else)] L_2A5A
L_2A5A:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x262                       ; B8 62 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_2A68
L_2A68:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 1F EF
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
        call    L_1899                          ; E8 08 EE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 F6 EE
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x264                       ; B8 64 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 E2 EE
;   [unconditional branch target] L_2AAB
L_2AAB:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr es:[bx + 0x235], ax    ; 26 39 87 35 02
        je      L_2AE1                          ; 74 29
        mov     word ptr es:[bx + 0x235], ax    ; 26 89 87 35 02
        or      ax, ax                          ; 0B C0
        je      L_2ACD                          ; 74 0C
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x266                       ; B8 66 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        jmp     L_2ADB                          ; EB 0E
;   [conditional branch target (if/else)] L_2ACD
L_2ACD:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x26c                       ; B8 6C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
;   [unconditional branch target] L_2ADB
L_2ADB:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 AC EE
;   [conditional branch target (if/else)] L_2AE1
L_2AE1:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x270                       ; B8 70 02
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
        call    L_13C2                          ; E8 B1 E8
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x273                       ; B8 73 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 68 EE
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x27c                       ; B8 7C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 54 EE
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        imul    word ptr [bp - 0x1e]            ; F7 6E E2
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_2BF6                          ; E9 A7 00
;   [loop start] L_2B4F
L_2B4F:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_2B6B                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_2B71                          ; 76 06
;   [conditional branch target (if/else)] L_2B6B
L_2B6B:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_2B71
L_2B71:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x227], 0     ; 26 83 BF 27 02 00
        je      L_2B91                          ; 74 10
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
        call    L_198D                          ; E8 FC ED
;   [conditional branch target (if/else)] L_2B91
L_2B91:
        cmp     word ptr [bp + 0x12], 1         ; 83 7E 12 01
        jle     L_2BA1                          ; 7E 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
;   [conditional branch target (if/else)] L_2BA1
L_2BA1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_2BD6                          ; 74 2B
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_2BD6                          ; 75 23
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_2BD6                          ; 75 1E
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jg      L_2BD6                          ; 7F 0A
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr [bp - 8], ax           ; 01 46 F8
;   [conditional branch target (if/else)] L_2BD6
L_2BD6:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        or      ax, ax                          ; 0B C0
        je      L_2BF3                          ; 74 13
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x227], 0     ; 26 83 BF 27 02 00
        je      L_2BF3                          ; 74 08
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_167A                          ; E8 87 EA
;   [conditional branch target (if/else)] L_2BF3
L_2BF3:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_2BF6
L_2BF6:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        je      L_2BFF                          ; 74 03
        jmp     L_2B4F                          ; E9 50 FF
;   [conditional branch target (if/else)] L_2BFF
L_2BFF:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x27f                       ; B8 7F 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 7A ED
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xf], 0       ; 26 80 7F 0F 00
        jne     L_2C20                          ; 75 03
        jmp     L_2CD4                          ; E9 B4 00
;   [conditional branch target (if/else)] L_2C20
L_2C20:
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
        mov     ax, 0x282                       ; B8 82 02
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
        call    L_13C2                          ; E8 5C E7
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        jne     L_2C8B                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x285                       ; B8 85 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 0C ED
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [conditional branch target (if/else)] L_2C8B
L_2C8B:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x289                       ; B8 89 02
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
        call    L_13C2                          ; E8 13 E7
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_2CD4                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 C3 EC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [branch target] L_2CD4
L_2CD4:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0x10], 0      ; 26 80 7F 10 00
        jne     L_2CE1                          ; 75 03
        jmp     L_2DAD                          ; E9 CC 00
;   [conditional branch target (if/else)] L_2CE1
L_2CE1:
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
        mov     ax, 0x290                       ; B8 90 02
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
        call    L_13C2                          ; E8 83 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        jne     L_2D64                          ; 75 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x293                       ; B8 93 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 33 EC
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 1     ; 26 C7 87 29 02 01 00
;   [conditional branch target (if/else)] L_2D64
L_2D64:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, 0x297                       ; B8 97 02
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
        call    L_13C2                          ; E8 3A E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x229], 0     ; 26 83 BF 29 02 00
        je      L_2DAD                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x29a                       ; B8 9A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_198D                          ; E8 EA EB
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x229], 0     ; 26 C7 87 29 02 00 00
;   [branch target] L_2DAD
L_2DAD:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x22d], 0xffff ; 26 C7 87 2D 02 FF FF
        mov     word ptr es:[bx + 0x22f], 0xffff ; 26 C7 87 2F 02 FF FF
        jmp     L_2E5A                          ; E9 99 00
;   [unconditional branch target] L_2DC1
L_2DC1:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jl      L_2DCA                          ; 7C 03
        jmp     L_2E5A                          ; E9 90 00
;   [conditional branch target (if/else)] L_2DCA
L_2DCA:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        imul    word ptr [bp + 0x12]            ; F7 6E 12
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_2E42                          ; 74 59
        jmp     L_2E3C                          ; EB 51
;   [loop start] L_2DEB
L_2DEB:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jb      L_2E07                          ; 72 08
        mov     al, byte ptr [bp - 0x1a]        ; 8A 46 E6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jbe     L_2E0D                          ; 76 06
;   [conditional branch target (if/else)] L_2E07
L_2E07:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [bp - 0x22], al        ; 88 46 DE
;   [conditional branch target (if/else)] L_2E0D
L_2E0D:
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        cmp     byte ptr [bp - 0x22], al        ; 38 46 DE
        jne     L_2E39                          ; 75 24
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr es:[bx + 0x10], ax     ; 26 29 47 10
        cmp     word ptr es:[bx + 0x10], 0      ; 26 83 7F 10 00
        jg      L_2E39                          ; 7F 0B
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr es:[bx + 0x10], ax     ; 26 01 47 10
;   [conditional branch target (if/else)] L_2E39
L_2E39:
        dec     word ptr [bp + 0x12]            ; FF 4E 12
;   [unconditional branch target] L_2E3C
L_2E3C:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_2DEB                          ; 75 A9
;   [conditional branch target (if/else)] L_2E42
L_2E42:
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
        jmp     L_2E5D                          ; EB 03
;   [unconditional branch target] L_2E5A
L_2E5A:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
;   [unconditional branch target] L_2E5D
L_2E5D:
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
        je      L_2ED2                          ; 74 54
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 2F 2F 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_2ED7                          ; 74 48
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2152                          ; E8 B8 F2
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_2ED7                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 56 2F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2ED7                          ; 75 23
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
        call    L_04B4                          ; E8 EB D5
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF 2E 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2ED2
L_2ED2:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_2F09                          ; EB 32
;   [conditional branch target (if/else)] L_2ED7
L_2ED7:
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
        call    L_271D                          ; E8 29 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 78 2F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_2F09
L_2F09:
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
        je      L_2F7C                          ; 74 52
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.LOCKSEGMENT          ; 9A 17 22 00 00 [FIXUP]
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_2F81                          ; 7E 48
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2152                          ; E8 0E F2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 5], 0         ; 26 83 7F 05 00
        je      L_2F81                          ; 74 33
        push    word ptr es:[bx + 5]            ; 26 FF 77 05
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far GDI.QUERYABORT              ; 9A 38 22 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2F81                          ; 75 23
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
        call    L_04B4                          ; E8 41 D5
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A BE 2F 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2F7C
L_2F7C:
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_2FC8                          ; EB 47
;   [conditional branch target (if/else)] L_2F81
L_2F81:
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
        call    L_280F                          ; E8 5C F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 5A 22 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
;   [unconditional branch target] L_2FC8
L_2FC8:
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
        jne     L_2FEA                          ; 75 04
        xor     ax, ax                          ; 33 C0
        jmp     L_2FED                          ; EB 03
;   [conditional branch target (if/else)] L_2FEA
L_2FEA:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
;   [unconditional branch target] L_2FED
L_2FED:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_2FF8
L_2FF8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    L_301C                          ; E8 0E 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_301C
L_301C:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_303D                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_303D
L_303D:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_3056                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_3056
L_3056:
        or      ax, ax                          ; 0B C0
        jne     L_3070                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_30AB                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3070
L_3070:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_307B
L_307B:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_307B                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3184                          ; E8 EC 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_30A4                          ; 77 07
        jb      L_30A7                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_30A7                          ; 76 03
;   [conditional branch target (if/else)] L_30A4
L_30A4:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_30A7
L_30A7:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_30AB
L_30AB:
        or      di, di                          ; 0B FF
        je      L_30B6                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_30B6
L_30B6:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_30BD
L_30BD:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_30DD                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
;   [conditional branch target (if/else)] L_30DD
L_30DD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_30F6                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
;   [conditional branch target (if/else)] L_30F6
L_30F6:
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
        je      L_311B                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [error/early exit] L_311B
L_311B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3121
L_3121:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    bx                              ; 53
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_3143                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_317E                          ; EB 3C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3143
L_3143:
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [loop start] L_314E
L_314E:
        shr     cx, 1                           ; D1 E9
        rcr     bx, 1                           ; D1 DB
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      cx, cx                          ; 0B C9
        jne     L_314E                          ; 75 F4
        div     bx                              ; F7 F3
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_3184                          ; E8 19 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_3177                          ; 77 07
        jb      L_317A                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_317A                          ; 76 03
;   [conditional branch target (if/else)] L_3177
L_3177:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_317A
L_317A:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_317E
L_317E:
        pop     si                              ; 5E
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_3184
L_3184:
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
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_31CD                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_31CD                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_31C9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_31C9
L_31C9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_31CD
L_31CD:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

HP7470A_TEXT ENDS

        END
