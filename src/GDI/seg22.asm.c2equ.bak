; ======================================================================
; GDI / seg22.asm   (segment 22 of GDI)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         8
; Total instructions:                 1401
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            1
;   Unclear:                             3
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     2 (1 unique)
;   Top:
;        2  LOCALFREE
; ======================================================================
; AUTO-GENERATED from original GDI segment 22
; segment_size=3370 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (596 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=596 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=9, ASM=2)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_05B1, L_06D9, L_08AC
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <56> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x38                        ; 83 EC 38
        push    si                              ; 56
        push    di                              ; 57
        xor     dx, dx                          ; 33 D2
        mov     si, word ptr [bp + 0x12]        ; 8B 76 12
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jne     L_0016                          ; 75 03
        or      dh, 0x10                        ; 80 CE 10
;   [conditional branch target (if/else)] L_0016
L_0016:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jne     L_002B                          ; 75 0E
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        jmp     L_003F                          ; EB 14
;   [conditional branch target (if/else)] L_002B
L_002B:
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp + 0x1c], ax        ; 89 46 1C
        mov     word ptr [bp + 0x1a], ax        ; 89 46 1A
        and     dh, 0xef                        ; 80 E6 EF
;   [unconditional branch target] L_003F
L_003F:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        mov     ax, word ptr es:[di]            ; 26 8B 05
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr es:[di + 2]        ; 26 8B 45 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bp + 0x20], di        ; 89 7E 20
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dl, al                          ; 8A D0
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     ax, word ptr [di + 0x2e]        ; 8B 45 2E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [di + 0x2c]        ; 8B 45 2C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [di + 0x28]        ; 8B 45 28
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [di + 0x2a]        ; 8B 45 2A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     cx, word ptr [bp + 0x1e]        ; 8B 4E 1E
        dec     cx                              ; 49
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0094                          ; EB 07
        nop                                     ; 90
;   [loop start] L_008E
L_008E:
        jmp     L_03C9                          ; E9 38 03
;   [loop start] L_0091
L_0091:
        mov     cx, word ptr [bp + 0x1e]        ; 8B 4E 1E
;   [unconditional branch target] L_0094
L_0094:
        dec     cx                              ; 49
        jl      L_008E                          ; 7C F7
        mov     word ptr [bp + 0x1e], cx        ; 89 4E 1E
        push    ax                              ; 50
        mov     di, dx                          ; 8B FA
        mov     ax, 0xfffd                      ; B8 FD FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D9                          ; E8 20 06
        mov     dx, di                          ; 8B D7
        pop     ax                              ; 58
        test    dh, 0x20                        ; F6 C6 20
        je      L_00D1                          ; 74 10
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dl, al                          ; 8A D0
        jmp     L_00D4                          ; EB 03
;   [conditional branch target (if/else)] L_00D1
L_00D1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_00D4
L_00D4:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        mov     word ptr [bp - 0x18], bx        ; 89 5E E8
        les     di, ptr [bp + 0x20]             ; C4 7E 20
        mov     cx, word ptr es:[di]            ; 26 8B 0D
        mov     word ptr [bp - 0x1a], cx        ; 89 4E E6
        mov     si, word ptr es:[di + 2]        ; 26 8B 75 02
        mov     word ptr [bp - 0x1c], si        ; 89 76 E4
        add     di, 4                           ; 83 C7 04
        mov     word ptr [bp + 0x20], di        ; 89 7E 20
        and     dh, 0xd6                        ; 80 E6 D6
        sub     si, bx                          ; 2B F3
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jg      L_0109                          ; 7F 09
        je      L_0108                          ; 74 06
        or      dh, 0x20                        ; 80 CE 20
        neg     si                              ; F7 DE
        dec     bx                              ; 4B
;   [conditional branch target (if/else)] L_0108
L_0108:
        dec     bx                              ; 4B
;   [conditional branch target (if/else)] L_0109
L_0109:
        sub     cx, ax                          ; 2B C8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jg      L_0119                          ; 7F 09
        je      L_0118                          ; 74 06
        or      dh, 1                           ; 80 CE 01
        neg     cx                              ; F7 D9
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_0118
L_0118:
        dec     ax                              ; 48
;   [conditional branch target (if/else)] L_0119
L_0119:
        cmp     cx, si                          ; 3B CE
        jle     L_0123                          ; 7E 06
        xchg    si, cx                          ; 87 CE
        xchg    bx, ax                          ; 93
        or      dh, 8                           ; 80 CE 08
;   [conditional branch target (if/else)] L_0123
L_0123:
        test    dh, 0x20                        ; F6 C6 20
        je      L_012F                          ; 74 07
        neg     ax                              ; F7 D8
        neg     bx                              ; F7 DB
        xor     dh, 1                           ; 80 F6 01
;   [conditional branch target (if/else)] L_012F
L_012F:
        mov     word ptr [bp - 0x20], si        ; 89 76 E0
        mov     word ptr [bp - 0x26], cx        ; 89 4E DA
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        test    dh, 8                           ; F6 C6 08
        je      L_0152                          ; 74 0F
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_015E                          ; EB 0D
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0152
L_0152:
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [unconditional branch target] L_015E
L_015E:
        mov     ax, si                          ; 8B C6
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        test    dh, 0x20                        ; F6 C6 20
        je      L_016B                          ; 74 01
        inc     si                              ; 46
;   [conditional branch target (if/else)] L_016B
L_016B:
        mov     word ptr [bp - 0x28], si        ; 89 76 D8
        test    dh, 0x20                        ; F6 C6 20
        je      L_01D4                          ; 74 61
        or      dh, 0x40                        ; 80 CE 40
        cmp     dl, 0xff                        ; 80 FA FF
        je      L_01CC                          ; 74 51
        mov     bx, dx                          ; 8B DA
        mov     ax, si                          ; 8B C6
        dec     ax                              ; 48
        neg     ax                              ; F7 D8
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        mov     cx, dx                          ; 8B CA
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        neg     ax                              ; F7 D8
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        add     ax, si                          ; 03 C6
        adc     dx, cx                          ; 13 D1
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        adc     dx, 0                           ; 83 D2 00
        mov     di, word ptr [bp - 0x12]        ; 8B 7E EE
        idiv    di                              ; F7 FF
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        neg     word ptr [bp - 4]               ; F7 5E FC
        mov     cx, word ptr [bp - 0x12]        ; 8B 4E EE
        add     cx, dx                          ; 03 CA
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     dx, bx                          ; 8B D3
        mov     cx, ax                          ; 8B C8
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
        and     cx, 7                           ; 81 E1 07 00
        rol     bl, cl                          ; D2 C3
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        add     ax, 8                           ; 05 08 00
        dec     ax                              ; 48
        and     ax, 7                           ; 25 07 00
        mov     cx, ax                          ; 8B C8
        ror     dl, cl                          ; D2 CA
        mov     word ptr [bp - 2], dx           ; 89 56 FE
;   [conditional branch target (if/else)] L_01CC
L_01CC:
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        jmp     L_01DA                          ; EB 06
;   [conditional branch target (if/else)] L_01D4
L_01D4:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     cx, word ptr [bp - 0x18]        ; 8B 4E E8
;   [unconditional branch target] L_01DA
L_01DA:
        or      dh, 4                           ; 80 CE 04
        mov     si, word ptr [bp + 0x18]        ; 8B 76 18
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        add     si, 0x14                        ; 83 C6 14
        jmp     L_01F8                          ; EB 0D
        nop                                     ; 90
;   [loop start] L_01EC
L_01EC:
        jmp     L_0091                          ; E9 A2 FE
;   [loop start] L_01EF
L_01EF:
        mov     ax, word ptr [si]               ; 8B 04
        add     ax, 3                           ; 05 03 00
        shl     ax, 1                           ; D1 E0
        add     si, ax                          ; 03 F0
;   [unconditional branch target] L_01F8
L_01F8:
        dec     word ptr [bp - 0x2e]            ; FF 4E D2
        jl      L_01EC                          ; 7C EF
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cmp     ax, cx                          ; 3B C1
        jle     L_01EF                          ; 7E EB
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     ax, cx                          ; 3B C1
        jge     L_020D                          ; 7D 02
        mov     ax, cx                          ; 8B C1
;   [conditional branch target (if/else)] L_020D
L_020D:
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x2a], si        ; 89 76 D6
        mov     si, bx                          ; 8B F3
        mov     di, cx                          ; 8B F9
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_023C                          ; EB 1D
;   [loop start] L_021F
L_021F:
        test    dh, 0x20                        ; F6 C6 20
        jne     L_022A                          ; 75 06
        or      ax, ax                          ; 0B C0
        jns     L_023C                          ; 79 14
        jmp     L_022E                          ; EB 04
;   [conditional branch target (if/else)] L_022A
L_022A:
        or      ax, ax                          ; 0B C0
        jg      L_023C                          ; 7F 0E
;   [unconditional branch target] L_022E
L_022E:
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        rol     dl, 1                           ; D0 C2
        test    dh, 0x20                        ; F6 C6 20
        je      L_023C                          ; 74 04
        ror     dl, 1                           ; D0 CA
        ror     dl, 1                           ; D0 CA
;   [branch target] L_023C
L_023C:
        dec     word ptr [bp - 0x28]            ; FF 4E D8
        jl      L_0293                          ; 7C 52
        cmp     di, word ptr [bp - 0x34]        ; 3B 7E CC
        jne     L_0296                          ; 75 50
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_0249
L_0249:
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        jne     L_02C7                          ; 75 76
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        or      dh, 2                           ; 80 CE 02
        test    dh, 1                           ; F6 C6 01
        je      L_0299                          ; 74 32
        dec     ax                              ; 48
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        add     bx, 6                           ; 83 C3 06
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        dec     word ptr [bp - 0x30]            ; FF 4E D0
;   [loop start] L_0275
L_0275:
        cmp     si, ax                          ; 3B F0
        jge     L_02BF                          ; 7D 46
        xor     dh, 2                           ; 80 F6 02
        dec     word ptr [bp - 0x30]            ; FF 4E D0
        jl      L_02C7                          ; 7C 46
        test    dh, 1                           ; F6 C6 01
        je      L_028D                          ; 74 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        jmp     L_0291                          ; EB 04
;   [conditional branch target (if/else)] L_028D
L_028D:
        inc     bx                              ; 43
        inc     bx                              ; 43
        mov     ax, word ptr [bx]               ; 8B 07
;   [unconditional branch target] L_0291
L_0291:
        jmp     L_0275                          ; EB E2
;   [loop start (also forward branch)] L_0293
L_0293:
        jmp     L_0091                          ; E9 FB FD
;   [conditional branch target (if/else)] L_0296
L_0296:
        jmp     L_0306                          ; EB 6E
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0299
L_0299:
        add     bx, 6                           ; 83 C3 06
        mov     ax, word ptr [bx]               ; 8B 07
        dec     word ptr [bp - 0x30]            ; FF 4E D0
;   [loop start] L_02A1
L_02A1:
        cmp     si, ax                          ; 3B F0
        jle     L_02BF                          ; 7E 1A
        xor     dh, 2                           ; 80 F6 02
        dec     word ptr [bp - 0x30]            ; FF 4E D0
        jl      L_02C7                          ; 7C 1A
        test    dh, 1                           ; F6 C6 01
        je      L_02B9                          ; 74 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        jmp     L_02BD                          ; EB 04
;   [conditional branch target (if/else)] L_02B9
L_02B9:
        inc     bx                              ; 43
        inc     bx                              ; 43
        mov     ax, word ptr [bx]               ; 8B 07
;   [unconditional branch target] L_02BD
L_02BD:
        jmp     L_02A1                          ; EB E2
;   [conditional branch target (if/else)] L_02BF
L_02BF:
        mov     word ptr [bp - 0x2c], bx        ; 89 5E D4
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        jmp     L_0303                          ; EB 3C
;   [loop start (also forward branch)] L_02C7
L_02C7:
        or      dh, 4                           ; 80 CE 04
        dec     word ptr [bp - 0x2e]            ; FF 4E D2
        jl      L_0293                          ; 7C C4
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        mov     ax, word ptr [bx]               ; 8B 07
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        add     bx, 6                           ; 83 C3 06
        mov     word ptr [bp - 0x2a], bx        ; 89 5E D6
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        cmp     di, ax                          ; 3B F8
        je      L_02F4                          ; 74 0C
        test    dh, 1                           ; F6 C6 01
        je      L_02F7                          ; 74 0A
        cmp     si, word ptr [bx + 6]           ; 3B 77 06
        jl      L_02C7                          ; 7C D5
        jmp     L_0303                          ; EB 0F
;   [conditional branch target (if/else)] L_02F4
L_02F4:
        jmp     L_0249                          ; E9 52 FF
;   [conditional branch target (if/else)] L_02F7
L_02F7:
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        cmp     si, word ptr [bx + 6]           ; 3B 77 06
        jge     L_02C7                          ; 7D C4
;   [unconditional branch target] L_0303
L_0303:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_0306
L_0306:
        test    dh, 4                           ; F6 C6 04
        jne     L_033A                          ; 75 2F
        cmp     si, word ptr [bp - 0x32]        ; 3B 76 CE
        jne     L_033A                          ; 75 2A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        xor     dh, 2                           ; 80 F6 02
        dec     word ptr [bp - 0x30]            ; FF 4E D0
        jl      L_02C7                          ; 7C A6
        test    dh, 1                           ; F6 C6 01
        je      L_032D                          ; 74 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        jmp     L_0331                          ; EB 04
;   [conditional branch target (if/else)] L_032D
L_032D:
        inc     bx                              ; 43
        inc     bx                              ; 43
        mov     ax, word ptr [bx]               ; 8B 07
;   [unconditional branch target] L_0331
L_0331:
        mov     word ptr [bp - 0x2c], bx        ; 89 5E D4
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [conditional branch target (if/else)] L_033A
L_033A:
        test    dh, 0x46                        ; F6 C6 46
        jne     L_0393                          ; 75 54
        or      dl, dl                          ; 0A D2
        jns     L_0365                          ; 79 22
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1e], cx        ; 89 4E E2
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        lcall   [bp + 8]                        ; FF 5E 08
        jmp     L_038A                          ; EB 25
;   [conditional branch target (if/else)] L_0365
L_0365:
        test    dh, 0x10                        ; F6 C6 10
        je      L_0393                          ; 74 29
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1e], cx        ; 89 4E E2
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        lcall   [bp + 8]                        ; FF 5E 08
;   [unconditional branch target] L_038A
L_038A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
;   [conditional branch target (if/else)] L_0393
L_0393:
        and     dh, 0xbf                        ; 80 E6 BF
        test    dh, 8                           ; F6 C6 08
        je      L_03B2                          ; 74 17
        add     si, word ptr [bp - 0x22]        ; 03 76 DE
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sub     cx, word ptr [bp - 0x26]        ; 2B 4E DA
        jge     L_03AF                          ; 7D 09
        add     di, word ptr [bp - 0x24]        ; 03 7E DC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        add     cx, word ptr [bp - 0x20]        ; 03 4E E0
;   [loop start (also forward branch)] L_03AF
L_03AF:
        jmp     L_021F                          ; E9 6D FE
;   [conditional branch target (if/else)] L_03B2
L_03B2:
        add     di, word ptr [bp - 0x22]        ; 03 7E DE
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sub     cx, word ptr [bp - 0x26]        ; 2B 4E DA
        jge     L_03AF                          ; 7D F2
        add     si, word ptr [bp - 0x24]        ; 03 76 DC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        add     cx, word ptr [bp - 0x20]        ; 03 4E E0
        jmp     L_021F                          ; E9 56 FE
;   [unconditional branch target] L_03C9
L_03C9:
        mov     ax, 0xfffd                      ; B8 FD FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D9                          ; E8 F4 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x20                            ; C2 20 00
        jmp     di                              ; FF E7
        stosb   byte ptr es:[di], al            ; AA
        in      al, 0xea                        ; E4 EA
        add     byte ptr [bp + di], dh          ; 00 33
        sar     byte ptr [bp + di + 0x1b2], cl  ; D2 BB B2 01
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     si, word ptr [di]               ; 8B 35
        mov     bx, word ptr [si + 0x12]        ; 8B 5C 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     cx, word ptr [bx + 8]           ; 8B 4F 08
        cmp     cx, 5                           ; 83 F9 05
        jge     L_0460                          ; 7D 44
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        or      dx, dx                          ; 0B D2
        je      L_044E                          ; 74 2B
        cmp     word ptr [si + 0x78], 1         ; 83 7C 78 01
        je      L_0441                          ; 74 18
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     bx, word ptr [si + 0x5c]        ; 8B 5C 5C
        mov     dx, word ptr [si + 0x5e]        ; 8B 54 5E
;   [loop iteration target] L_0435
L_0435:
        add     ax, word ptr es:[di]            ; 26 03 05
        stosw   word ptr es:[di], ax            ; AB
        xchg    bx, ax                          ; 93
        add     ax, word ptr es:[di]            ; 26 03 05
        stosw   word ptr es:[di], ax            ; AB
        xchg    bx, ax                          ; 93
        loop    L_0435                          ; E2 F4
;   [conditional branch target (if/else)] L_0441
L_0441:
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        xor     bx, bx                          ; 33 DB
        call    far _SEG1_335C                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_044E
L_044E:
        test    byte ptr [si + 8], 0x20         ; F6 44 08 20
        je      L_0463                          ; 74 0F
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_1A12                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0463                          ; 75 03
;   [loop start (also forward branch)] L_0460
L_0460:
        jmp     L_05A4                          ; E9 41 01
;   [conditional branch target (if/else)] L_0463
L_0463:
        cmp     word ptr [si + 0x80], 1         ; 83 BC 80 00 01
        jle     L_047B                          ; 7E 11
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_08AC                          ; E8 33 04
        jmp     L_0460                          ; EB E5
;   [conditional branch target (if/else)] L_047B
L_047B:
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     dx, word ptr [bx + 0x24]        ; 8B 57 24
        mov     si, word ptr [si + 0x2c]        ; 8B 74 2C
        mov     word ptr [bp - 0x18], 0x7fff    ; C7 46 E8 FF 7F
        mov     word ptr [bp - 0x16], 0x7fff    ; C7 46 EA FF 7F
        mov     word ptr [bp - 0x14], 0x8000    ; C7 46 EC 00 80
        mov     word ptr [bp - 0x12], 0x8000    ; C7 46 EE 00 80
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        les     di, ptr [bp + 8]                ; C4 7E 08
        call    L_05B1                          ; E8 0E 01
        or      cx, cx                          ; 0B C9
        jns     L_04AA                          ; 79 03
        jmp     L_05A4                          ; E9 FA 00
;   [conditional branch target (if/else)] L_04AA
L_04AA:
        push    ax                              ; 50
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        mov     di, word ptr [di]               ; 8B 3D
        jcxz    L_04F7                          ; E3 3C
        mov     cx, word ptr [di + 0x1e]        ; 8B 4D 1E
        jcxz    L_04F7                          ; E3 37
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_04CC                          ; 74 06
        test    cx, 0x20                        ; F7 C1 20 00
        je      L_04F7                          ; 74 2B
;   [conditional branch target (if/else)] L_04CC
L_04CC:
        lea     di, [si + 0x3c]                 ; 8D 7C 3C
        lea     dx, [bp - 0x18]                 ; 8D 56 E8
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [0x118]                ; FF 36 18 01
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ds                              ; 1E
        push    word ptr [si + 0x2e]            ; FF 74 2E
        push    ds                              ; 1E
        push    word ptr [si + 0x2e]            ; FF 74 2E
        push    ds                              ; 1E
        push    di                              ; 57
        push    ss                              ; 16
        push    dx                              ; 52
        lcall   [bx + 0x1c]                     ; FF 5F 1C
        jmp     L_059D                          ; E9 A6 00
;   [conditional branch target (if/else)] L_04F7
L_04F7:
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        jcxz    L_0530                          ; E3 34
        mov     di, word ptr [si + 0x12]        ; 8B 7C 12
        mov     di, word ptr [di]               ; 8B 3D
        lea     cx, [bp - 6]                    ; 8D 4E FA
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [di + 0x10]            ; FF 75 10
        push    word ptr [di + 0xe]             ; FF 75 0E
        push    ss                              ; 16
        push    cx                              ; 51
        lcall   [bx + 4]                        ; FF 5F 04
        les     dx, ptr [si + 0x26]             ; C4 54 26
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     word ptr [bp - 0xe], es         ; 8C 46 F2
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        les     dx, ptr [bx + 0x20]             ; C4 57 20
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_0566                          ; EB 36
;   [conditional branch target (if/else)] L_0530
L_0530:
        lea     di, [bp - 0x2c]                 ; 8D 7E D4
        push    ss                              ; 16
        pop     es                              ; 07
        mov     ax, 0xfffd                      ; B8 FD FF
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x2e]        ; 8B 44 2E
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, ds                          ; 8C D8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bx + 0x1c]        ; 8B 47 1C
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bx + 0x1e]        ; 8B 47 1E
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 0x14                        ; 83 EF 14
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], ss         ; 8C 56 F6
        mov     word ptr [bp - 0x10], di        ; 89 7E F0
        mov     word ptr [bp - 0xe], ss         ; 8C 56 F2
        les     dx, ptr [0x114]                 ; C4 16 14 01
;   [unconditional branch target] L_0566
L_0566:
        lea     di, [si + 0x3c]                 ; 8D 7C 3C
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     cl, byte ptr cs:[bx + 0x3f0]    ; 2E 8A 8F F0 03
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [si + 0x2c]            ; FF 74 2C
        push    cx                              ; 51
        push    ds                              ; 1E
        push    di                              ; 57
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    bx                              ; 53
        push    es                              ; 06
        push    dx                              ; 52
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    0                               ; E8 63 FA
;   [unconditional branch target] L_059D
L_059D:
        push    ax                              ; 50
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
;   [unconditional branch target] L_05A4
L_05A4:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (121 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_05B1   offset=0x05B1  size=121 instr  segment=seg22.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_05B1
L_05B1:
        add     si, 8                           ; 83 C6 08
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x1e                        ; 3D 1E 00
        je      L_05BD                          ; 74 03
        jmp     L_06C5                          ; E9 08 01
;   [conditional branch target (if/else)] L_05BD
L_05BD:
        lodsw   ax, word ptr [si]               ; AD
        or      ax, ax                          ; 0B C0
        jne     L_05C5                          ; 75 03
        jmp     L_06C0                          ; E9 FB 00
;   [conditional branch target (if/else)] L_05C5
L_05C5:
        push    ds                              ; 1E
        xchg    si, di                          ; 87 FE
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
;   [loop iteration target] L_05CC
L_05CC:
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        jge     L_05D5                          ; 7D 03
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
;   [conditional branch target (if/else)] L_05D5
L_05D5:
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jl      L_05DD                          ; 7C 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [conditional branch target (if/else)] L_05DD
L_05DD:
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        jge     L_05E6                          ; 7D 03
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [conditional branch target (if/else)] L_05E6
L_05E6:
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jl      L_05EE                          ; 7C 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_05EE
L_05EE:
        loop    L_05CC                          ; E2 DC
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        pop     ds                              ; 1F
        xchg    di, si                          ; 87 F7
        inc     cx                              ; 41
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        jle     L_0605                          ; 7E 05
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_0605
L_0605:
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        jle     L_0610                          ; 7E 05
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_0610
L_0610:
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jge     L_061B                          ; 7D 05
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_061B
L_061B:
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jge     L_0626                          ; 7D 05
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_0626
L_0626:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        jle     L_0648                          ; 7E 1A
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        jle     L_0648                          ; 7E 12
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     si, word ptr [si]               ; 8B 34
        or      cx, cx                          ; 0B C9
        jne     L_0646                          ; 75 07
        test    dx, 1                           ; F7 C2 01 00
        je      L_064A                          ; 74 05
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_0646
L_0646:
        jmp     L_06BF                          ; EB 77
;   [conditional branch target (if/else)] L_0648
L_0648:
        jmp     L_06C0                          ; EB 76
;   [conditional branch target (if/else)] L_064A
L_064A:
        mov     di, word ptr [bp - 8]           ; 8B 7E F8
        or      di, di                          ; 0B FF
        jne     L_0656                          ; 75 05
        inc     cx                              ; 41
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
;   [conditional branch target (if/else)] L_0656
L_0656:
        jne     L_06D5                          ; 75 7D
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     ax, word ptr es:[di]            ; 26 8B 05
        mov     bx, word ptr es:[di + 4]        ; 26 8B 5D 04
        mov     dx, word ptr es:[di + 2]        ; 26 8B 55 02
        cmp     dx, word ptr es:[di + 6]        ; 26 3B 55 06
        jne     L_0691                          ; 75 25
        cmp     ax, bx                          ; 3B C3
        jl      L_0678                          ; 7C 08
        xchg    bx, ax                          ; 93
        mov     word ptr es:[di], ax            ; 26 89 05
        mov     word ptr es:[di + 4], bx        ; 26 89 5D 04
;   [conditional branch target (if/else)] L_0678
L_0678:
        cmp     bx, word ptr [bp - 0x14]        ; 3B 5E EC
        jle     L_0684                          ; 7E 07
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        mov     word ptr es:[di + 4], dx        ; 26 89 55 04
;   [conditional branch target (if/else)] L_0684
L_0684:
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        jge     L_06BF                          ; 7D 36
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        mov     word ptr es:[di], dx            ; 26 89 15
        jmp     L_06BF                          ; EB 2E
;   [conditional branch target (if/else)] L_0691
L_0691:
        cmp     ax, bx                          ; 3B C3
        jne     L_06D5                          ; 75 40
        mov     bx, word ptr es:[di + 6]        ; 26 8B 5D 06
        cmp     dx, bx                          ; 3B D3
        jl      L_06A7                          ; 7C 0A
        xchg    bx, dx                          ; 87 D3
        mov     word ptr es:[di + 2], dx        ; 26 89 55 02
        mov     word ptr es:[di + 6], bx        ; 26 89 5D 06
;   [conditional branch target (if/else)] L_06A7
L_06A7:
        cmp     bx, word ptr [bp - 0x12]        ; 3B 5E EE
        jle     L_06B3                          ; 7E 07
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr es:[di + 6], ax        ; 26 89 45 06
;   [conditional branch target (if/else)] L_06B3
L_06B3:
        cmp     dx, word ptr [bp - 0x16]        ; 3B 56 EA
        jge     L_06BF                          ; 7D 07
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr es:[di + 2], ax        ; 26 89 45 02
;   [loop start (also forward branch)] L_06BF
L_06BF:
        ret                                     ; C3
;   [unconditional branch target] L_06C0
L_06C0:
        mov     cx, 0xffff                      ; B9 FF FF
        jmp     L_06BF                          ; EB FA
;   [unconditional branch target] L_06C5
L_06C5:
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0x12]        ; 8B 7C 12
        mov     di, word ptr [di]               ; 8B 3D
        mov     di, word ptr [di + 8]           ; 8B 7D 08
        mov     word ptr [bp - 8], di           ; 89 7E F8
;   [conditional branch target (if/else)] L_06D5
L_06D5:
        xor     cx, cx                          ; 33 C9
        jmp     L_06BF                          ; EB E6

;-----------------------------------------------------------------------
; PIXTOLINE  (offset 0x06D9, size 202 bytes)
;-----------------------------------------------------------------------
PIXTOLINE PROC FAR
;   [sub-routine] L_06D9
L_06D9:
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
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ax, ds                          ; 8C D8
        or      ax, ax                          ; 0B C0
        jne     L_06F4                          ; 75 03
        jmp     L_0796                          ; E9 A2 00
;   [conditional branch target (if/else)] L_06F4
L_06F4:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        je      L_06FE                          ; 74 03
        jmp     L_0720                          ; EB 23
        nop                                     ; 90
;   [conditional branch target (if/else)] L_06FE
L_06FE:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     bx, word ptr [si + 6]           ; 8B 5C 06
        sub     ax, bx                          ; 2B C3
        inc     ax                              ; 40
        jl      L_0720                          ; 7C 17
        cmp     ax, 2                           ; 3D 02 00
        jg      L_0720                          ; 7F 12
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        sub     ax, bx                          ; 2B C3
        inc     ax                              ; 40
        jl      L_0720                          ; 7C 07
        cmp     ax, 2                           ; 3D 02 00
        jg      L_0720                          ; 7F 02
        jmp     L_078A                          ; EB 6A
;   [branch target] L_0720
L_0720:
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, 0xfffd                      ; 3D FD FF
        je      L_077F                          ; 74 58
        mov     ax, word ptr [si]               ; 8B 04
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        cmp     ax, bx                          ; 3B C3
        jg      L_0739                          ; 7F 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     bx                              ; 43
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        jmp     L_0740                          ; EB 07
;   [conditional branch target (if/else)] L_0739
L_0739:
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_0740
L_0740:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     bx, word ptr [si + 6]           ; 8B 5C 06
        cmp     ax, bx                          ; 3B C3
        jg      L_0753                          ; 7F 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     bx                              ; 43
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        jmp     L_075A                          ; EB 07
;   [conditional branch target (if/else)] L_0753
L_0753:
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_075A
L_075A:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        les     bx, ptr [si + 8]                ; C4 5C 08
        mov     cx, 2                           ; B9 02 00
        mov     dx, 0x12                        ; BA 12 00
        push    word ptr [si + 0x12]            ; FF 74 12
        push    word ptr [si + 0x10]            ; FF 74 10
        push    dx                              ; 52
        push    cx                              ; 51
        push    ds                              ; 1E
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ss                              ; 16
        push    ax                              ; 50
        lcall   [si + 0xc]                      ; FF 5C 0C
;   [conditional branch target (if/else)] L_077F
L_077F:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [si + 2], ax           ; 89 44 02
;   [unconditional branch target] L_078A
L_078A:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [si + 6], ax           ; 89 44 06
;   [unconditional branch target] L_0796
L_0796:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
PIXTOLINE ENDP


;-----------------------------------------------------------------------
; LINETO  (offset 0x07A3, size 110 bytes)
;-----------------------------------------------------------------------
LINETO PROC FAR
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_07C4                          ; 7C 07
        call    far _SEG1_3794                  ; 9A FF FF 00 00 [FIXUP]
        adc     ax, word ptr [bp + si]          ; 13 02
;   [conditional branch target (if/else)] L_07C4
L_07C4:
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        or      di, di                          ; 0B FF
        je      L_0804                          ; 74 37
        mov     si, word ptr [di]               ; 8B 35
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        add     si, 0x5c                        ; 83 C6 5C
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        mov     cx, 2                           ; B9 02 00
        sub     si, 0x60                        ; 83 EE 60
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0x5c], ax        ; 89 44 5C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x5e], ax        ; 89 44 5E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ss                              ; 16
        push    di                              ; 57
        push    cx                              ; 51
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03F9                          ; E8 F5 FB
;   [conditional branch target (if/else)] L_0804
L_0804:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
LINETO ENDP


;-----------------------------------------------------------------------
; POLYLINE  (offset 0x0811, size 153 bytes)
;-----------------------------------------------------------------------
POLYLINE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0832                          ; 7C 07
        call    far _SEG1_3794                  ; 9A BE 07 00 00 [FIXUP]
        and     ax, 0x8b03                      ; 25 03 8B
        dec     si                              ; 4E
        or      al, 0xe3                        ; 0C E3
        jno     L_07C3                          ; 71 8B
        dec     si                              ; 4E
        push    es                              ; 06
        cmp     cx, 2                           ; 83 F9 02
        jl      L_08A8                          ; 7C 69
        cmp     cx, 0xa                         ; 83 F9 0A
        jg      L_0854                          ; 7F 10
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0x2a]                 ; 8D 7E D6
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        jmp     L_0872                          ; EB 1F
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0854
L_0854:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        push    cx                              ; 51
        call    far _SEG1_15EF                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        or      ax, ax                          ; 0B C0
        jne     L_0868                          ; 75 03
        jmp     L_08A8                          ; EB 41
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0868
L_0868:
        mov     di, ax                          ; 8B F8
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        push    di                              ; 57
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
;   [unconditional branch target] L_0872
L_0872:
        mov     bx, ds                          ; 8C DB
        lds     si, ptr [bp + 8]                ; C5 76 08
        mov     dx, cx                          ; 8B D1
        shl     cx, 1                           ; D1 E1
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     ds, bx                          ; 8E DB
        pop     di                              ; 5F
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    es                              ; 06
        push    di                              ; 57
        push    dx                              ; 52
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03F9                          ; E8 6E FB
        mov     di, word ptr [bp - 0x2c]        ; 8B 7E D4
        or      di, di                          ; 0B FF
        je      L_0898                          ; 74 06
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0898
L_0898:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_089B
L_089B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [branch target] L_08A8
L_08A8:
        xor     ax, ax                          ; 33 C0
POLYLINE ENDP

        jmp     L_089B                          ; EB EF
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (1 use)

; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_08AC   offset=0x08AC  size=144 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=11, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_0A21, L_0B52
;-------------------------------------------------------------------------
;   [sub-routine] L_08AC
L_08AC:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        cmp     word ptr [bp + 4], 2            ; 83 7E 04 02
        jge     L_08BF                          ; 7D 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A1A                          ; E9 5B 01
;   [conditional branch target (if/else)] L_08BF
L_08BF:
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 1E 09 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_08DD                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0A1A                          ; E9 3D 01
;   [conditional branch target (if/else)] L_08DD
L_08DD:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        jmp     L_0911                          ; EB 22
;   [loop start] L_08EF
L_08EF:
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + si], ax          ; 89 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr es:[bx + si + 2]   ; 26 8B 40 02
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + si + 2], ax      ; 89 40 02
        inc     word ptr [bp - 0x10]            ; FF 46 F0
;   [unconditional branch target] L_0911
L_0911:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jl      L_08EF                          ; 7C D6
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A 4F 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_092C                          ; 75 03
        jmp     L_0A0B                          ; E9 DF 00
;   [conditional branch target (if/else)] L_092C
L_092C:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    L_0A21                          ; E8 E4 00
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0xe                         ; 05 0E 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A A5 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_095D                          ; 75 03
        jmp     L_09FF                          ; E9 A2 00
;   [conditional branch target (if/else)] L_095D
L_095D:
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 4]               ; FF 76 04
        add     ax, 0xa                         ; 05 0A 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0B52                          ; E8 D3 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jge     L_09D5                          ; 7D 4F
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FB 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 0xe                         ; 05 0E 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_09FF                          ; 74 4F
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 4]               ; FF 76 04
        add     ax, 0xa                         ; 05 0A 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0B52                          ; E8 80 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_09D5
L_09D5:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    bx                              ; 53
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_389                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 07 0A 00 00 [FIXUP]
;   [branch target] L_09FF
L_09FF:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 13 0A 00 00 [FIXUP]
;   [unconditional branch target] L_0A0B
L_0A0B:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 94 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [fall-through exit] L_0A1A
L_0A1A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Pure computation / dispatcher (104 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A21   offset=0x0A21  size=104 instr  segment=seg22.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0A21
L_0A21:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 8], 0x20         ; F6 47 08 20
        je      L_0A40                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_1A12                  ; 9A 58 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A40
L_0A40:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     word ptr [bx + 0x80], 1         ; 83 BF 80 00 01
        jle     L_0A50                          ; 7E 06
        mov     ax, word ptr [bx + 0x80]        ; 8B 87 80 00
        jmp     L_0A53                          ; EB 03
;   [conditional branch target (if/else)] L_0A50
L_0A50:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0A53
L_0A53:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     word ptr [bx + 0x82], 1         ; 83 BF 82 00 01
        jle     L_0A66                          ; 7E 06
        mov     ax, word ptr [bx + 0x82]        ; 8B 87 82 00
        jmp     L_0A69                          ; EB 03
;   [conditional branch target (if/else)] L_0A66
L_0A66:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0A69
L_0A69:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 4], 5            ; 83 7E FC 05
        jle     L_0ACC                          ; 7E 5A
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [loop start] L_0A77
L_0A77:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        shl     si, 1                           ; D1 E6
        push    word ptr [si + 0x146]           ; FF B4 46 01
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x4e20                      ; B8 20 4E
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A 9D 0A 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + si], ax          ; 89 00
        push    word ptr [si + 0x148]           ; FF B4 48 01
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4e20                      ; B8 20 4E
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A E2 0A 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + si + 2], ax      ; 89 40 02
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        cmp     word ptr [bp - 8], 0x20         ; 83 7E F8 20
        jl      L_0A77                          ; 7C C6
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bx + 0x3c], ax        ; 89 47 3C
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        jmp     L_0B48                          ; EB 7C
;   [conditional branch target (if/else)] L_0ACC
L_0ACC:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [loop start] L_0AD1
L_0AD1:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        shl     si, 1                           ; D1 E6
        push    word ptr [si + 0x186]           ; FF B4 86 01
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x4e20                      ; B8 20 4E
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A F7 0A 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + si], ax          ; 89 00
        push    word ptr [si + 0x188]           ; FF B4 88 01
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x4e20                      ; B8 20 4E
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx + si + 2], ax      ; 89 40 02
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        cmp     word ptr [bp - 8], 0x20         ; 83 7E F8 20
        jl      L_0AD1                          ; 7C C6
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bx + 0x3c], ax        ; 89 47 3C
        mov     word ptr [bx + 0x38], ax        ; 89 47 38
        mov     word ptr [bx + 0x34], ax        ; 89 47 34
        mov     word ptr [bx + 0x30], ax        ; 89 47 30
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        mov     word ptr [bx + 0x1e], ax        ; 89 47 1E
        mov     word ptr [bx + 0x1a], ax        ; 89 47 1A
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [unconditional branch target] L_0B48
L_0B48:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (211 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0B52   offset=0x0B52  size=211 instr  segment=seg22.asm
;
; Classification (pass8): unclear  (score C=4, ASM=4)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_0B52
L_0B52:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     dh, 0xff                        ; B6 FF
        jmp     L_0BBA                          ; EB 3F
;   [loop start] L_0B7B
L_0B7B:
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        sub     cx, si                          ; 2B CE
        shr     cx, 1                           ; D1 E9
        inc     si                              ; 46
        inc     si                              ; 46
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        dec     ax                              ; 48
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        or      bx, bx                          ; 0B DB
        je      L_0BA3                          ; 74 04
        neg     ax                              ; F7 D8
        sub     ax, bx                          ; 2B C3
;   [loop start (also forward branch)] L_0BA3
L_0BA3:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        xor     ax, ax                          ; 33 C0
        jmp     L_0BA3                          ; EB F4
;   [loop start] L_0BAF
L_0BAF:
        mov     dh, dl                          ; 8A F2
        add     dh, 8                           ; 80 C6 08
        and     dh, 0xf                         ; 80 E6 0F
        jmp     L_0C12                          ; EB 59
        nop                                     ; 90
;   [loop start (also forward branch)] L_0BBA
L_0BBA:
        ; constant VK_RETURN
        mov     dl, dh                          ; 8A D6
        mov     di, si                          ; 8B FE
        cld                                     ; FC
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     cx, ax                          ; 8B C8
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp + 0xc], si         ; 89 76 0C
        dec     word ptr [bp + 0xa]             ; FF 4E 0A
        je      L_0BAF                          ; 74 DB
        jl      L_0B7B                          ; 7C A5
        xor     dh, dh                          ; 32 F6
        mov     bx, ax                          ; 8B D8
        lodsw   ax, word ptr [si]               ; AD
        sub     cx, ax                          ; 2B C8
        neg     cx                              ; F7 D9
        jge     L_0BE6                          ; 7D 05
        or      dh, 0xf                         ; 80 CE 0F
        neg     cx                              ; F7 D9
;   [conditional branch target (if/else)] L_0BE6
L_0BE6:
        lodsw   ax, word ptr [si]               ; AD
        xor     dh, 7                           ; 80 F6 07
        sub     ax, bx                          ; 2B C3
        shl     ax, 1                           ; D1 E0
        jge     L_0BF5                          ; 7D 05
        xor     dh, 7                           ; 80 F6 07
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_0BF5
L_0BF5:
        cmp     ax, cx                          ; 3B C1
        jge     L_0BFD                          ; 7D 04
        xor     dh, 3                           ; 80 F6 03
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_0BFD
L_0BFD:
        shr     ax, 1                           ; D1 E8
        cmp     ax, cx                          ; 3B C1
        jge     L_0C06                          ; 7D 03
        xor     dh, 1                           ; 80 F6 01
;   [conditional branch target (if/else)] L_0C06
L_0C06:
        or      dl, dl                          ; 0A D2
        jge     L_0C12                          ; 7D 08
        ; constant VK_RETURN
        mov     dl, dh                          ; 8A D6
        add     dl, 8                           ; 80 C2 08
        and     dl, 0xf                         ; 80 E2 0F
;   [branch target] L_0C12
L_0C12:
        mov     si, di                          ; 8B F7
        xor     bh, bh                          ; 32 FF
        xor     ch, ch                          ; 32 ED
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        sub     cl, dl                          ; 2A CA
        add     cl, 0x10                        ; 80 C1 10
        and     cl, 0xf                         ; 80 E1 0F
        cmp     cl, 8                           ; 80 F9 08
        jle     L_0C2A                          ; 7E 03
        jmp     L_0CAC                          ; E9 82 00
;   [conditional branch target (if/else)] L_0C2A
L_0C2A:
        cld                                     ; FC
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        mov     bl, dl                          ; 8A DA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        inc     cx                              ; 41
;   [loop iteration target] L_0C35
L_0C35:
        cmp     di, word ptr [bp - 4]           ; 3B 7E FC
        jb      L_0C3F                          ; 72 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0C4C                          ; EB 0D
;   [conditional branch target (if/else)] L_0C3F
L_0C3F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0C4C
L_0C4C:
        add     bx, 4                           ; 83 C3 04
        and     bx, 0x3c                        ; 81 E3 3C 00
        loop    L_0C35                          ; E2 E0
        mov     word ptr [bp - 2], di           ; 89 7E FE
        std                                     ; FD
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        mov     bl, dl                          ; 8A DA
        add     bl, 8                           ; 80 C3 08
        and     bl, 0xf                         ; 80 E3 0F
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     di, word ptr [bp - 2]           ; 3B 7E FE
        ja      L_0C72                          ; 77 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0C7F                          ; EB 0D
;   [conditional branch target (if/else)] L_0C72
L_0C72:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0C7F
L_0C7F:
        cmp     dl, dh                          ; 3A D6
        je      L_0CA6                          ; 74 23
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        add     bl, 8                           ; 80 C3 08
        and     bl, 0xf                         ; 80 E3 0F
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     di, word ptr [bp - 2]           ; 3B 7E FE
        ja      L_0C99                          ; 77 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0CA6                          ; EB 0D
;   [conditional branch target (if/else)] L_0C99
L_0C99:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0CA6
L_0CA6:
        mov     word ptr [bp - 4], di           ; 89 7E FC
        jmp     L_0BBA                          ; E9 0E FF
;   [unconditional branch target] L_0CAC
L_0CAC:
        cld                                     ; FC
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        mov     bl, dl                          ; 8A DA
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     di, word ptr [bp - 4]           ; 3B 7E FC
        jb      L_0CC0                          ; 72 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0CCD                          ; EB 0D
;   [conditional branch target (if/else)] L_0CC0
L_0CC0:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0CCD
L_0CCD:
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     di, word ptr [bp - 4]           ; 3B 7E FC
        jb      L_0CDD                          ; 72 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0CEA                          ; EB 0D
;   [conditional branch target (if/else)] L_0CDD
L_0CDD:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0CEA
L_0CEA:
        mov     word ptr [bp - 2], di           ; 89 7E FE
        std                                     ; FD
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        neg     cx                              ; F7 D9
        and     cx, 0xf                         ; 81 E1 0F 00
        mov     bl, dl                          ; 8A DA
        add     bl, 8                           ; 80 C3 08
        and     bl, 0xf                         ; 80 E3 0F
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        inc     cx                              ; 41
;   [loop iteration target] L_0D04
L_0D04:
        cmp     di, word ptr [bp - 2]           ; 3B 7E FE
        ja      L_0D0E                          ; 77 05
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0D1B                          ; EB 0D
;   [conditional branch target (if/else)] L_0D0E
L_0D0E:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bx + si + 2]      ; 03 40 02
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bx + si]          ; 03 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0D1B
L_0D1B:
        sub     bx, 4                           ; 83 EB 04
        and     bx, 0x3c                        ; 81 E3 3C 00
        loop    L_0D04                          ; E2 E0
        mov     word ptr [bp - 4], di           ; 89 7E FC
        jmp     L_0BBA                          ; E9 90 FE

GDI_TEXT ENDS

        END
