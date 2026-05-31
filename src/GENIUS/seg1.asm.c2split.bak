; ======================================================================
; GENIUS / seg1.asm   (segment 1 of GENIUS)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        42
; Total instructions:                 3037
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           23
;   Unclear:                            17
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original GENIUS segment 1
; segment_size=7226 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GENIUS_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     byte ptr [bx + si], al          ; 00 00
        inc     ax                              ; 40
        inc     ax                              ; 40
        add     byte ptr [bx + si - 0x3f40], 0xff ; 80 80 C0 C0 FF
        inc     word ptr [bp + di]              ; FF 03
        cli                                     ; FA
        jae     L_0016                          ; 73 08
        push    di                              ; 57
        mov     di, 0xb800                      ; BF 00 B8
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_0016
L_0016:
        sub     cl, 6                           ; 80 E9 06
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0xe                         ; 80 E9 0E
        add     di, dx                          ; 03 FA
        jb      L_002C                          ; 72 08
        push    di                              ; 57
        mov     di, 0xa000                      ; BF 00 A0
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_002C
L_002C:
        sub     cl, 6                           ; 80 E9 06
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 0xe                         ; 80 E9 0E
        add     di, dx                          ; 03 FA
        jae     L_0042                          ; 73 08
        push    di                              ; 57
        mov     di, 0xb800                      ; BF 00 B8
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_0042
L_0042:
        sub     cl, 6                           ; 80 E9 06
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0xe                         ; 80 E9 0E
        add     di, dx                          ; 03 FA
        jb      L_0058                          ; 72 08
        push    di                              ; 57
        mov     di, 0xa000                      ; BF 00 A0
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_0058
L_0058:
        sub     cl, 6                           ; 80 E9 06
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 0xe                         ; 80 E9 0E
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 6                           ; 80 E9 06
        add     di, dx                          ; 03 FA
        jae     L_0075                          ; 73 08
        push    di                              ; 57
        mov     di, 0xb800                      ; BF 00 B8
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_0075
L_0075:
        sub     cl, 0xe                         ; 80 E9 0E
        ror     bl, 1                           ; D0 CB
        adc     di, ax                          ; 13 F8
        sub     cl, 6                           ; 80 E9 06
        add     di, dx                          ; 03 FA
        jb      L_008B                          ; 72 08
        push    di                              ; 57
        mov     di, 0xa000                      ; BF 00 A0
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_008B
L_008B:
        sub     cl, 0xe                         ; 80 E9 0E
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 6                           ; 80 E9 06
        add     di, dx                          ; 03 FA
        jae     L_00A1                          ; 73 08
        push    di                              ; 57
        mov     di, 0xb800                      ; BF 00 B8
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_00A1
L_00A1:
        sub     cl, 0xe                         ; 80 E9 0E
        rol     bl, 1                           ; D0 C3
        sbb     di, ax                          ; 1B F8
        sub     cl, 6                           ; 80 E9 06
        add     di, dx                          ; 03 FA
        jb      L_00B7                          ; 72 08
        push    di                              ; 57
        mov     di, 0xa000                      ; BF 00 A0
        nop                                     ; 90
        mov     ds, di                          ; 8E DF
        pop     di                              ; 5F
;   [conditional branch target (if/else)] L_00B7
L_00B7:
        sub     cl, 0xe                         ; 80 E9 0E
        or      al, byte ptr [bx + si]          ; 0A 00
        and     byte ptr [bx + si], al          ; 20 00
        add     byte ptr ss:[si], cl            ; 36 00 4C 00
        bound   ax, dword ptr [bx + si]         ; 62 00
        js      L_00C6                          ; 78 00
;   [conditional branch target (if/else)] L_00C6
L_00C6:
        mov     es, word ptr [bx + si]          ; 8E 00
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     byte ptr [bx], ch               ; 00 2F
        add     byte ptr [bx], ch               ; 00 2F
        add     byte ptr [di], al               ; 00 45 00
        inc     bp                              ; 45
        add     byte ptr [di - 0x5500], dl      ; 00 95 00 AB
        add     byte ptr [di - 0x5500], dl      ; 00 95 00 AB
        add     byte ptr [bx], cl               ; 00 0F
        db      00fh                            ; 0F
        db      00fh                            ; 0F
        sysret                                  ; 0F 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        push    ss                              ; 16
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        pop     es                              ; 07
        db      00fh                            ; 0F
        db      00fh                            ; 0F
        pfcmpgt mm0, qword ptr [bx + si]        ; 0F 0F 00 A0
        fadd    dword ptr [bp + si]             ; D8 02
        in      al, dx                          ; EC
        add     ax, word ptr [bx + si + 0x100]  ; 03 80 00 01
        add     word ptr [bx + si], ax          ; 01 00
        add     byte ptr [bx + si], al          ; 00 00
        mov     al, byte ptr [0xf600]           ; A0 00 F6
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + si], ax          ; 01 00
        mov     cx, 0xff00                      ; B9 00 FF
        add     al, bl                          ; 00 D8
        add     ch, ah                          ; 02 EC
        add     ax, word ptr [bx + di]          ; 03 01
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [di], cl               ; 00 4D 00
        or      al, byte ptr [bx + si]          ; 0A 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, byte ptr [bx + si]          ; 02 00
        and     al, byte ptr [bx + si]          ; 22 00
        add     byte ptr [bx + si], al          ; 00 00
        and     al, byte ptr [bx + si]          ; 22 00
        or      byte ptr [bx + si], al          ; 08 00
        add     al, 0x20                        ; 04 20
        add     byte ptr [bx + si], al          ; 00 00
        add     word ptr [bx + si], ax          ; 01 00
        push    cs                              ; 0E
        add     byte ptr [0x1400], cl           ; 00 0E 00 14
        add     byte ptr [bx + si], ch          ; 00 28
        add     byte ptr [bp + si], bh          ; 00 3A
        pop     es                              ; 07
        test    word ptr [bx + di], 0x2d8       ; F7 09 D8 02
        adc     al, 0xfc                        ; 14 FC
        cmp     al, 0x48                        ; 3C 48
        sahf                                    ; 9E
        arpl    ax, bx                          ; 63 D8
        add     dl, byte ptr [si]               ; 02 14
        cld                                     ; FC
        movhlps xmm6, xmm7                      ; 0F 12 F7
        or      word ptr [bx], cx               ; 09 0F
        adc     cl, byte ptr [bx + di]          ; 12 09
        mul     byte ptr [di]                   ; F6 25
        sub     ax, 0x639e                      ; 2D 9E 63
        test    byte ptr [si], al               ; 84 04
        or      si, si                          ; 09 F6
        test    word ptr [bx + si], sp          ; 85 20
        mov     cx, 0x4247                      ; B9 47 42
        add     al, byte ptr [di]               ; 02 05
        sti                                     ; FB
        pushaw                                  ; 60
        add     byte ptr [bx + si], cl          ; 00 48 00
        add     al, 0                           ; 04 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si + 0x20], 0x10 ; 80 40 20 10
        or      byte ptr [si], al               ; 08 04
        add     al, byte ptr [bx + di]          ; 02 01
; Description (heuristic):
;   Internal helper (18 instructions).

;-------------------------------------------------------------------------
; sub_0182   offset=0x0182  size=18 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=6)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_01BF
;-------------------------------------------------------------------------
;   [sub-routine] L_0182
L_0182:
        ; constant GMEM_DISCARDABLE
        mov     ax, 0xf00                       ; B8 00 0F
        int     0x10                            ; CD 10
        stosb   byte ptr es:[di], al            ; AA
        mov     dx, 0x3b8                       ; BA B8 03
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, 0x3d8                       ; BA D8 03
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     dx, 0x3b0                       ; BA B0 03
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        call    L_01BF                          ; E8 22 00
        mov     dx, 0x3d8                       ; BA D8 03
        mov     al, 8                           ; B0 08
        out     dx, al                          ; EE
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_01A6   offset=0x01A6  size=12 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=8)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_01BF
;-------------------------------------------------------------------------
;   [sub-routine] L_01A6
L_01A6:
        mov     dx, 0x3d8                       ; BA D8 03
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        call    L_01BF                          ; E8 10 00
        mov     dx, 0x3b0                       ; BA B0 03
        mov     al, 0                           ; B0 00
        out     dx, al                          ; EE
        mov     al, byte ptr [si + 0x20]        ; 8A 44 20
        xor     ah, ah                          ; 32 E4
        int     0x10                            ; CD 10
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_01BF   offset=0x01BF  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_01D5, L_01DA
;-------------------------------------------------------------------------
;   [sub-routine] L_01BF
L_01BF:
        cld                                     ; FC
        mov     di, 0xb000                      ; BF 00 B0
        mov     ax, 0x2007                      ; B8 07 20
        mov     cx, 0x4000                      ; B9 00 40
        call    L_01DA                          ; E8 0E 00
        mov     di, 0xa000                      ; BF 00 A0
        call    L_01D5                          ; E8 03 00
        mov     di, 0xb800                      ; BF 00 B8
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_01D5   offset=0x01D5  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_01D5
L_01D5:
        xor     ax, ax                          ; 33 C0
        mov     cx, 0x8000                      ; B9 00 80
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_01DA   offset=0x01DA  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_01DA
L_01DA:
        mov     es, di                          ; 8E C7
        xor     di, di                          ; 33 FF
        rep stosw word ptr es:[di], ax          ; F3 AB
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_01E1   offset=0x01E1  size=7 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_01F3
;-------------------------------------------------------------------------
;   [sub-routine] L_01E1
L_01E1:
        cld                                     ; FC
        mov     di, 0x32                        ; BF 32 00
        mov     al, 0xff                        ; B0 FF
        call    L_01F3                          ; E8 09 00
        mov     di, 0xd2                        ; BF D2 00
        xor     al, al                          ; 32 C0
        mov     byte ptr es:[0x24], al          ; 26 A2 24 00
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_01F3   offset=0x01F3  size=9 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_01F3
L_01F3:
        ; constant VK_SHIFT
        mov     cx, 0x10                        ; B9 10 00
;   [loop iteration target] L_01F6
L_01F6:
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        stosb   byte ptr es:[di], al            ; AA
        loop    L_01F6                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_01FF   offset=0x01FF  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0236, L_026B, L_032E, L_0397, L_03CA
;-------------------------------------------------------------------------
;   [sub-routine] L_01FF
L_01FF:
        push    bp                              ; 55
        call    L_03CA                          ; E8 C7 01
        call    L_032E                          ; E8 28 01
        call    L_026B                          ; E8 62 00
        call    L_0236                          ; E8 2A 00
        call    L_0397                          ; E8 88 01
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (6 instructions).

;-------------------------------------------------------------------------
; sub_0211   offset=0x0211  size=6 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_021E
;-------------------------------------------------------------------------
;   [sub-routine] L_0211
L_0211:
        push    bp                              ; 55
        cmp     byte ptr [0x25], 1              ; 80 3E 25 00 01
        jne     L_021C                          ; 75 03
        call    L_021E                          ; E8 02 00
;   [error/early exit] L_021C
L_021C:
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_021E   offset=0x021E  size=7 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_021E
L_021E:
        mov     byte ptr [0x25], 0              ; C6 06 25 00 00
        mov     ax, word ptr [0x26]             ; A1 26 00
        mov     bx, word ptr [0x28]             ; 8B 1E 28 00
        ; constant WM_SIZE
        mov     cx, 5                           ; B9 05 00
        mov     dx, 0x20                        ; BA 20 00
        mov     si, 0x172                       ; BE 72 01
        jmp     L_03A8                          ; E9 72 01
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0236   offset=0x0236  size=25 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0375
;-------------------------------------------------------------------------
;   [sub-routine] L_0236
L_0236:
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     si, word ptr [0x22]             ; 8B 36 22 00
        call    L_0375                          ; E8 35 01
        mov     di, si                          ; 8B FE
        mov     si, 0x32                        ; BE 32 00
        mov     bx, 0xd2                        ; BB D2 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        ; constant WM_SIZE
        mov     dx, 5                           ; BA 05 00
;   [loop iteration target] L_024F
L_024F:
        lodsw   ax, word ptr [si]               ; AD
        and     ax, word ptr [di]               ; 23 05
        xor     ax, word ptr [bx]               ; 33 07
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        and     ax, word ptr [di]               ; 23 05
        xor     ax, word ptr [bx + 2]           ; 33 47 02
        stosw   word ptr es:[di], ax            ; AB
        lodsb   al, byte ptr [si]               ; AC
        and     al, byte ptr [di]               ; 22 05
        xor     al, byte ptr [bx + 4]           ; 32 47 04
        mov     byte ptr [di], al               ; 88 05
        add     di, dx                          ; 03 FA
        add     bx, dx                          ; 03 DA
        loop    L_024F                          ; E2 E5
;   [loop start] L_026A
L_026A:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_026B   offset=0x026B  size=15 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0290
;-------------------------------------------------------------------------
;   [sub-routine] L_026B
L_026B:
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     bl, 7                           ; B3 07
        mov     al, byte ptr [0x20]             ; A0 20 00
        and     al, bl                          ; 22 C3
        and     bl, byte ptr [0x24]             ; 22 1E 24 00
        mov     byte ptr [0x24], al             ; A2 24 00
        sub     al, bl                          ; 2A C3
        je      L_026A                          ; 74 E9
        jl      L_02CF                          ; 7C 4C
        mov     bh, al                          ; 8A F8
        mov     si, 0x32                        ; BE 32 00
        call    L_0290                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xd2                        ; BE D2 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0290   offset=0x0290  size=39 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_02DE
;-------------------------------------------------------------------------
;   [sub-routine] L_0290
L_0290:
        cmp     al, 3                           ; 3C 03
        jae     L_02B3                          ; 73 1F
        mov     bl, al                          ; 8A D8
;   [loop start] L_0296
L_0296:
        mov     di, si                          ; 8B FE
        mov     cx, 0x50                        ; B9 50 00
;   [loop iteration target] L_029B
L_029B:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcr     ax, 1                           ; D1 D8
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_029B                          ; E2 F5
        mov     al, byte ptr [si]               ; 8A 04
        rcl     al, 1                           ; D0 D0
        ror     al, 1                           ; D0 C8
        mov     byte ptr [si], al               ; 88 04
        dec     bl                              ; FE CB
        jne     L_0296                          ; 75 E4
        ret                                     ; C3
;   [conditional branch target (if/else)] L_02B3
L_02B3:
        mov     cl, al                          ; 8A C8
        mov     di, si                          ; 8B FE
        mov     dx, 0xa0                        ; BA A0 00
        xor     bl, bl                          ; 32 DB
;   [loop start] L_02BC
L_02BC:
        xor     ax, ax                          ; 33 C0
        mov     ah, byte ptr [di]               ; 8A 25
        shr     ax, cl                          ; D3 E8
        or      ah, bl                          ; 0A E3
        mov     bl, al                          ; 8A D8
        mov     al, ah                          ; 8A C4
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_02BC                          ; 75 F0
        or      byte ptr [si], bl               ; 08 1C
        ret                                     ; C3
;   [conditional branch target (if/else)] L_02CF
L_02CF:
        neg     al                              ; F6 D8
        mov     bh, al                          ; 8A F8
        mov     si, 0x32                        ; BE 32 00
        call    L_02DE                          ; E8 05 00
        mov     al, bh                          ; 8A C7
        mov     si, 0xd2                        ; BE D2 00
; Description (heuristic):
;   Pure computation / dispatcher (42 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_02DE   offset=0x02DE  size=42 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_02DE
L_02DE:
        std                                     ; FD
        cmp     al, 3                           ; 3C 03
        jae     L_0310                          ; 73 2D
        mov     bl, al                          ; 8A D8
;   [loop start] L_02E5
L_02E5:
        mov     di, si                          ; 8B FE
        mov     cx, 0xa0                        ; B9 A0 00
        add     di, cx                          ; 03 F9
        sub     di, 2                           ; 83 EF 02
        mov     dx, di                          ; 8B D7
        shr     cx, 1                           ; D1 E9
;   [loop iteration target] L_02F3
L_02F3:
        mov     ax, word ptr [di]               ; 8B 05
        xchg    al, ah                          ; 86 E0
        rcl     ax, 1                           ; D1 D0
        xchg    al, ah                          ; 86 E0
        stosw   word ptr es:[di], ax            ; AB
        loop    L_02F3                          ; E2 F5
        mov     di, dx                          ; 8B FA
        mov     al, byte ptr [di + 1]           ; 8A 45 01
        rcr     al, 1                           ; D0 D8
        rol     al, 1                           ; D0 C0
        mov     byte ptr [di + 1], al           ; 88 45 01
        dec     bl                              ; FE CB
        jne     L_02E5                          ; 75 D7
        cld                                     ; FC
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0310
L_0310:
        mov     cl, al                          ; 8A C8
        mov     dx, 0xa0                        ; BA A0 00
        add     si, dx                          ; 03 F2
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        xor     bl, bl                          ; 32 DB
;   [loop start] L_031C
L_031C:
        xor     ax, ax                          ; 33 C0
        mov     al, byte ptr [di]               ; 8A 05
        shl     ax, cl                          ; D3 E0
        or      al, bl                          ; 0A C3
        mov     bl, ah                          ; 8A DC
        stosb   byte ptr es:[di], al            ; AA
        dec     dx                              ; 4A
        jne     L_031C                          ; 75 F2
        or      byte ptr [si], bl               ; 08 1C
        cld                                     ; FC
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_032E   offset=0x032E  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0375
;-------------------------------------------------------------------------
;   [sub-routine] L_032E
L_032E:
        mov     byte ptr [0x25], 1              ; C6 06 25 00 01
        mov     di, 0x172                       ; BF 72 01
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     si, word ptr [0x22]             ; 8B 36 22 00
        mov     word ptr [0x26], ax             ; A3 26 00
        mov     word ptr [0x28], si             ; 89 36 28 00
        call    L_0375                          ; E8 2E 00
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
;   [loop iteration target] L_034B
L_034B:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     si, 4                           ; 83 C6 04
        loop    L_034B                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_0354   offset=0x0354  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0375
;-------------------------------------------------------------------------
;   [sub-routine] L_0354
L_0354:
        mov     byte ptr [0x25], 0              ; C6 06 25 00 00
        mov     di, 0x172                       ; BF 72 01
        mov     ax, word ptr [0x26]             ; A1 26 00
        mov     si, word ptr [0x28]             ; 8B 36 28 00
        call    L_0375                          ; E8 0F 00
        xchg    di, si                          ; 87 F7
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
;   [loop iteration target] L_036C
L_036C:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        add     di, 4                           ; 83 C7 04
        loop    L_036C                          ; E2 F8
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_0375   offset=0x0375  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0375
L_0375:
        sub     ax, word ptr [0x2a]             ; 2B 06 2A 00
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     si, word ptr [0x2c]             ; 2B 36 2C 00
        mov     cx, si                          ; 8B CE
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        add     si, cx                          ; 03 F1
        add     si, ax                          ; 03 F0
        add     si, 0x212                       ; 81 C6 12 02
        mov     cx, 0x20                        ; B9 20 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0397   offset=0x0397  size=21 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0472
;-------------------------------------------------------------------------
;   [sub-routine] L_0397
L_0397:
        mov     ax, word ptr [0x2a]             ; A1 2A 00
        mov     bx, word ptr [0x2c]             ; 8B 1E 2C 00
        mov     cx, 9                           ; B9 09 00
        mov     dx, word ptr [0x2e]             ; 8B 16 2E 00
        mov     si, 0x212                       ; BE 12 02
;   [unconditional branch target] L_03A8
L_03A8:
        call    L_0472                          ; E8 C7 00
        jle     L_03C9                          ; 7E 1C
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        sub     ax, cx                          ; 2B C1
        sub     bx, cx                          ; 2B D9
        mov     dh, cl                          ; 8A F1
        mov     bp, 0xb800                      ; BD 00 B8
;   [loop start] L_03B9
L_03B9:
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     si, bx                          ; 03 F3
        add     di, ax                          ; 03 F8
        jae     L_03C5                          ; 73 02
        mov     es, bp                          ; 8E C5
;   [conditional branch target (if/else)] L_03C5
L_03C5:
        dec     dl                              ; FE CA
        jne     L_03B9                          ; 75 F0
;   [error/early exit] L_03C9
L_03C9:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_03CA   offset=0x03CA  size=11 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_021E, L_0354, L_03E6, L_0421
;-------------------------------------------------------------------------
;   [sub-routine] L_03CA
L_03CA:
        call    L_0421                          ; E8 54 00
        cmp     byte ptr [0x25], 0              ; 80 3E 25 00 00
        je      L_03DB                          ; 74 07
        or      bp, bp                          ; 0B ED
        je      L_03DF                          ; 74 07
        call    L_021E                          ; E8 43 FE
;   [conditional branch target (if/else)] L_03DB
L_03DB:
        call    L_03E6                          ; E8 08 00
        ret                                     ; C3
;   [conditional branch target (if/else)] L_03DF
L_03DF:
        call    L_03E6                          ; E8 04 00
        call    L_0354                          ; E8 6F FF
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_03E6   offset=0x03E6  size=28 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0472
;-------------------------------------------------------------------------
;   [sub-routine] L_03E6
L_03E6:
        mov     ax, word ptr [0x2a]             ; A1 2A 00
        mov     bx, word ptr [0x2c]             ; 8B 1E 2C 00
        mov     cx, 9                           ; B9 09 00
        mov     dx, word ptr [0x2e]             ; 8B 16 2E 00
        mov     si, 0x212                       ; BE 12 02
        call    L_0472                          ; E8 78 00
        jle     L_0420                          ; 7E 24
        push    ds                              ; 1E
        push    es                              ; 06
        pop     ds                              ; 1F
        pop     es                              ; 07
        xchg    di, si                          ; 87 F7
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        sub     ax, cx                          ; 2B C1
        sub     bx, cx                          ; 2B D9
        mov     dh, cl                          ; 8A F1
        mov     bp, 0xb800                      ; BD 00 B8
;   [loop start] L_040E
L_040E:
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     di, bx                          ; 03 FB
        add     si, ax                          ; 03 F0
        jae     L_041A                          ; 73 02
        mov     ds, bp                          ; 8E DD
;   [conditional branch target (if/else)] L_041A
L_041A:
        dec     dl                              ; FE CA
        jne     L_040E                          ; 75 F0
        push    es                              ; 06
        pop     ds                              ; 1F
;   [error/early exit] L_0420
L_0420:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0421   offset=0x0421  size=31 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0421
L_0421:
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [0x25], 0              ; 80 3E 25 00 00
        je      L_0457                          ; 74 2D
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     bx, word ptr [0x26]             ; 8B 1E 26 00
        cmp     ax, bx                          ; 3B C3
        jge     L_0436                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_0436
L_0436:
        and     bl, 0xf8                        ; 80 E3 F8
        sub     ax, bx                          ; 2B C3
        cmp     ax, 0x28                        ; 3D 28 00
        jge     L_0457                          ; 7D 17
        mov     word ptr [0x2a], bx             ; 89 1E 2A 00
        mov     ax, word ptr [0x22]             ; A1 22 00
        mov     bx, word ptr [0x28]             ; 8B 1E 28 00
        cmp     ax, bx                          ; 3B C3
        jge     L_0450                          ; 7D 01
        xchg    bx, ax                          ; 93
;   [conditional branch target (if/else)] L_0450
L_0450:
        sub     ax, bx                          ; 2B C3
        cmp     ax, 0x20                        ; 3D 20 00
        jle     L_0467                          ; 7E 10
;   [conditional branch target (if/else)] L_0457
L_0457:
        mov     ax, word ptr [0x20]             ; A1 20 00
        and     al, 0xf8                        ; 24 F8
        mov     word ptr [0x2a], ax             ; A3 2A 00
        mov     bx, word ptr [0x22]             ; 8B 1E 22 00
        xor     ax, ax                          ; 33 C0
        not     bp                              ; F7 D5
;   [error/early exit] L_0467
L_0467:
        mov     word ptr [0x2c], bx             ; 89 1E 2C 00
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [0x2e], ax             ; A3 2E 00
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (1740 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0472   offset=0x0472  size=1740 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_13D0, L_1455, L_1828, L_18B4, L_1C10
;-------------------------------------------------------------------------
;   [sub-routine] L_0472
L_0472:
        or      bx, bx                          ; 0B DB
        jge     L_047F                          ; 7D 09
        add     dx, bx                          ; 03 D3
;   [loop start] L_0478
L_0478:
        add     si, cx                          ; 03 F1
        inc     bx                              ; 43
        jl      L_0478                          ; 7C FB
        jmp     L_048C                          ; EB 0D
;   [conditional branch target (if/else)] L_047F
L_047F:
        add     dx, bx                          ; 03 D3
        cmp     dx, 0x3ec                       ; 81 FA EC 03
        jle     L_048A                          ; 7E 03
        mov     dx, 0x3ec                       ; BA EC 03
;   [conditional branch target (if/else)] L_048A
L_048A:
        sub     dx, bx                          ; 2B D3
;   [unconditional branch target] L_048C
L_048C:
        mov     di, cx                          ; 8B F9
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        or      ax, ax                          ; 0B C0
        jge     L_04A0                          ; 7D 08
        sub     si, ax                          ; 2B F0
        add     cx, ax                          ; 03 C8
        xor     ax, ax                          ; 33 C0
        jmp     L_04AD                          ; EB 0D
;   [conditional branch target (if/else)] L_04A0
L_04A0:
        add     cx, ax                          ; 03 C8
        cmp     cx, 0x80                        ; 81 F9 80 00
        jle     L_04AB                          ; 7E 03
        ; constant GMEM_ZEROINIT
        mov     cx, 0x80                        ; B9 80 00
;   [conditional branch target (if/else)] L_04AB
L_04AB:
        sub     cx, ax                          ; 2B C8
;   [unconditional branch target] L_04AD
L_04AD:
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        add     bx, bx                          ; 03 DB
        mov     bp, 0xa000                      ; BD 00 A0
        jae     L_04C3                          ; 73 03
        mov     bp, 0xb800                      ; BD 00 B8
;   [conditional branch target (if/else)] L_04C3
L_04C3:
        mov     es, bp                          ; 8E C5
        add     bx, ax                          ; 03 D8
        xchg    di, bx                          ; 87 DF
        or      cx, cx                          ; 0B C9
        jle     L_04CF                          ; 7E 02
        or      dx, dx                          ; 0B D2
;   [error/early exit] L_04CF
L_04CF:
        ret                                     ; C3
        mov     dx, ds                          ; 8C DA
        mov     cx, si                          ; 8B CE
        mov     si, 0xb3b8                      ; BE B8 B3
        mov     ds, ax                          ; 8E D8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr [bx + si]          ; 8A 18
        mov     si, cx                          ; 8B F1
        mov     ds, dx                          ; 8E DA
        mov     dh, bl                          ; 8A F3
        add     byte ptr cs:[0x7449], 3         ; 2E 80 06 49 74 03
        jmp     0xffffe578                      ; E9 8A E0
        and     ax, bp                          ; 23 C5
        or      al, bh                          ; 0A C7
        mov     bh, ah                          ; 8A FC
        and     ax, 0xffff                      ; 25 FF FF
        or      al, ah                          ; 0A C4
        stosb   byte ptr es:[di], al            ; AA
        db      0ffh                            ; FF
        jg      L_053C                          ; 7F 3F
        pop     ds                              ; 1F
        sysret                                  ; 0F 07
        add     ax, word ptr [bx + di]          ; 03 01
        add     al, 0xe0                        ; 80 C0 E0
        db      0f0h                            ; F0
        clc                                     ; F8
        cld                                     ; FC
        db      0feh                            ; FE
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     si, di                          ; 01 FE
        add     di, sp                          ; 03 FC
        pop     es                              ; 07
        clc                                     ; F8
        db      00fh                            ; 0F
        db      0f0h                            ; F0
        pop     ds                              ; 1F
        loopne  L_0556                          ; E0 3F
        sar     byte ptr [bx - 0x80], 0xf6      ; C0 7F 80 F6
        sal     byte ptr [bp + si], 1           ; D0 32
        add     ax, 0x50a                       ; 05 0A 05
        and     al, byte ptr [di]               ; 22 05
        xor     al, bl                          ; 32 C3
;   [loop start] L_0524
L_0524:
        xor     al, dl                          ; 32 C2
        xor     al, ah                          ; 32 C4
        xor     al, dh                          ; 32 C6
        or      al, bl                          ; 0A C3
        or      al, dl                          ; 0A C2
        or      al, ah                          ; 0A C4
        or      al, dh                          ; 0A C6
        and     al, bl                          ; 22 C3
        and     al, dl                          ; 22 C2
        and     al, ah                          ; 22 C4
        and     al, dh                          ; 22 C6
        stosb   byte ptr es:[di], al            ; AA
        jp      L_0524                          ; 7A E7
        jns     L_04F5                          ; 79 B6
        insw    word ptr es:[di], dx            ; 6D
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        stosb   byte ptr es:[di], al            ; AA
        and     ax, 0x3947                      ; 25 47 39
        inc     di                              ; 47
        cmp     word ptr [bp - 0x74], ax        ; 39 46 8C
        fcom    dword ptr [bx + si + 0x5545]    ; D8 90 45 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x34                        ; B8 34 00
        call    L_1C10                          ; E8 B6 16
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     cx, 0x100                       ; B9 00 01
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_05E0                          ; 74 70
        mov     byte ptr [bp - 5], cl           ; 88 4E FB
        mov     dx, 0xc0                        ; BA C0 00
        xchg    cl, ch                          ; 86 E9
;   [loop start] L_0578
L_0578:
        inc     ch                              ; FE C5
        test    dx, ax                          ; 85 C2
        je      L_0582                          ; 74 04
        inc     cl                              ; FE C1
        xor     ch, ch                          ; 32 ED
;   [conditional branch target (if/else)] L_0582
L_0582:
        shl     dx, 1                           ; D1 E2
        shl     dx, 1                           ; D1 E2
        jae     L_0578                          ; 73 F0
        ; constant WM_SIZE
        mov     dl, 5                           ; B2 05
        test    ax, 0x20                        ; A9 20 00
        je      L_0593                          ; 74 04
        inc     ch                              ; FE C5
        inc     dl                              ; FE C2
;   [conditional branch target (if/else)] L_0593
L_0593:
        and     ch, 0xfe                        ; 80 E5 FE
        sub     dl, ch                          ; 2A D5
        mov     byte ptr [bp - 0x2f], dl        ; 88 56 D1
        mov     bx, ax                          ; 8B D8
        and     bx, 0x1c                        ; 81 E3 1C 00
        shr     bx, 1                           ; D1 EB
        and     al, 3                           ; 24 03
        cmp     bl, 5                           ; 80 FB 05
        jb      L_05AD                          ; 72 03
        add     cl, 2                           ; 80 C1 02
;   [conditional branch target (if/else)] L_05AD
L_05AD:
        mov     dl, cl                          ; 8A D1
        add     cl, al                          ; 02 C8
        add     cl, cl                          ; 02 C9
        mov     bx, word ptr cs:[bx + 0x53a]    ; 2E 8B 9F 3A 05
        rol     bx, cl                          ; D3 C3
        mov     word ptr [bp - 0x2e], bx        ; 89 5E D2
;   [loop start] L_05BD
L_05BD:
        mov     si, bx                          ; 8B F3
        and     si, 3                           ; 81 E6 03 00
        ror     bx, 1                           ; D1 CB
        ror     bx, 1                           ; D1 CB
        inc     byte ptr [bp + si - 6]          ; FE 42 FA
        dec     dl                              ; FE CA
        jne     L_05BD                          ; 75 EF
        test    byte ptr [bp - 6], 1            ; F6 46 FA 01
        je      L_05D9                          ; 74 05
;   [loop start] L_05D4
L_05D4:
        xor     ax, ax                          ; 33 C0
        jmp     L_0AC5                          ; E9 EC 04
;   [conditional branch target (if/else)] L_05D9
L_05D9:
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        jcxz    L_05FB                          ; E3 1B
;   [conditional branch target (if/else)] L_05E0
L_05E0:
        lds     si, ptr [bp + 0x1a]             ; C5 76 1A
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_05D4                          ; 75 E1
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
;   [conditional branch target (if/else)] L_05FB
L_05FB:
        mov     word ptr [bp - 0x24], cx        ; 89 4E DC
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_060D                          ; 74 09
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     word ptr [si + 8], 1            ; 83 7C 08 01
        je      L_05D4                          ; 74 C7
;   [conditional branch target (if/else)] L_060D
L_060D:
        lds     si, ptr [bp + 0x22]             ; C5 76 22
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        add     si, 4                           ; 83 C6 04
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, 0x101                       ; 3D 01 01
        jne     L_05D4                          ; 75 B3
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     si, word ptr [bp + 0x14]        ; 8B 76 14
        or      si, si                          ; 0B F6
        je      L_05D4                          ; 74 A4
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        or      di, di                          ; 0B FF
        je      L_05D4                          ; 74 9D
        dec     si                              ; 4E
        dec     di                              ; 4F
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        or      ax, word ptr [bp - 0x2a]        ; 0B 46 D6
        je      L_0675                          ; 74 34
        mov     cx, word ptr [bp + 0x20]        ; 8B 4E 20
        mov     dx, word ptr [bp + 0x1e]        ; 8B 56 1E
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_066E                          ; 74 21
        mov     ax, cx                          ; 8B C1
        mov     bx, dx                          ; 8B DA
        mov     cx, word ptr [bp + 0x18]        ; 8B 4E 18
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        je      L_066E                          ; 74 11
        cmp     cx, ax                          ; 3B C8
        jle     L_0662                          ; 7E 01
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_0662
L_0662:
        cmp     dx, bx                          ; 3B D3
        jle     L_0668                          ; 7E 02
        xchg    bx, dx                          ; 87 D3
;   [conditional branch target (if/else)] L_0668
L_0668:
        add     si, ax                          ; 03 F0
        add     di, bx                          ; 03 FB
        jmp     L_0672                          ; EB 04
;   [conditional branch target (if/else)] L_066E
L_066E:
        add     si, cx                          ; 03 F1
        add     di, dx                          ; 03 FA
;   [unconditional branch target] L_0672
L_0672:
        call    L_1828                          ; E8 B3 11
;   [conditional branch target (if/else)] L_0675
L_0675:
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        dec     dx                              ; 4A
        mov     bx, word ptr [bp + 0x20]        ; 8B 5E 20
        mov     di, bx                          ; 8B FB
        and     bx, 7                           ; 81 E3 07 00
        mov     ax, di                          ; 8B C7
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0691                          ; 74 07
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     byte ptr [bp - 0xa], 2          ; C6 46 F6 02
;   [conditional branch target (if/else)] L_0691
L_0691:
        mov     si, ax                          ; 8B F0
        and     ax, 7                           ; 25 07 00
        cmp     si, di                          ; 3B F7
        jl      L_06C8                          ; 7C 2E
        sub     al, bl                          ; 2A C3
        mov     byte ptr [bp - 0xb], 1          ; C6 46 F5 01
        mov     ch, byte ptr cs:[bx + 0x4fa]    ; 2E 8A AF FA 04
        ja      L_06AB                          ; 77 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_06AB
L_06AB:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        add     bx, dx                          ; 03 DA
        mov     dx, bx                          ; 8B D3
        and     bx, 7                           ; 81 E3 07 00
        mov     cl, byte ptr cs:[bx + 0x502]    ; 2E 8A 8F 02 05
        mov     bl, al                          ; 8A D8
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x50a]    ; 2E 8B 9F 0A 05
        jmp     L_06FE                          ; EB 37
        nop                                     ; 90
;   [conditional branch target (if/else)] L_06C8
L_06C8:
        mov     byte ptr [bp - 0xb], 0          ; C6 46 F5 00
        mov     cl, byte ptr cs:[bx + 0x4fa]    ; 2E 8A 8F FA 04
        add     ax, dx                          ; 03 C2
        add     bx, dx                          ; 03 DA
        add     di, dx                          ; 03 FA
        add     si, dx                          ; 03 F2
        mov     dx, bx                          ; 8B D3
        and     ax, 7                           ; 25 07 00
        and     bx, 7                           ; 81 E3 07 00
        mov     ch, byte ptr cs:[bx + 0x502]    ; 2E 8A AF 02 05
        sub     al, bl                          ; 2A C3
        jb      L_06EF                          ; 72 04
        mov     byte ptr [bp - 0xa], 1          ; C6 46 F6 01
;   [conditional branch target (if/else)] L_06EF
L_06EF:
        add     al, 8                           ; 04 08
        and     al, 7                           ; 24 07
        mov     ah, cl                          ; 8A E1
        mov     cl, al                          ; 8A C8
        mov     bx, 0xff                        ; BB FF 00
        shl     bx, cl                          ; D3 E3
        mov     cl, ah                          ; 8A CC
;   [unconditional branch target] L_06FE
L_06FE:
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     word ptr [bp - 0x12], bx        ; 89 5E EE
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        shr     dx, 1                           ; D1 EA
        jne     L_0711                          ; 75 05
        and     ch, cl                          ; 22 E9
        xor     cl, cl                          ; 32 C9
        inc     dx                              ; 42
;   [conditional branch target (if/else)] L_0711
L_0711:
        dec     dx                              ; 4A
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        mov     ch, cl                          ; 8A E9
        not     cl                              ; F6 D1
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     bh, bl                          ; 8A FB
        not     bl                              ; F6 D3
        mov     word ptr [bp - 0xe], bx         ; 89 5E F2
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        add     word ptr [bp - 0x1a], di        ; 01 7E E6
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        mov     cx, bx                          ; 8B CB
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_0745                          ; 74 0C
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        shr     si, 1                           ; D1 EE
        add     word ptr [bp - 0x16], si        ; 01 76 EA
        mov     cx, word ptr [bp + 0x16]        ; 8B 4E 16
;   [conditional branch target (if/else)] L_0745
L_0745:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        ; constant WM_CREATE
        mov     dh, 1                           ; B6 01
        cmp     cx, bx                          ; 3B CB
        jge     L_0755                          ; 7D 07
        dec     ax                              ; 48
        add     bx, ax                          ; 03 D8
        add     cx, ax                          ; 03 C8
        mov     dh, 0xff                        ; B6 FF
;   [conditional branch target (if/else)] L_0755
L_0755:
        mov     byte ptr [bp - 8], bl           ; 88 5E F8
        mov     byte ptr [bp - 9], dh           ; 88 76 F7
        mov     di, word ptr [bp - 0x2c]        ; 8B 7E D4
        mov     ax, di                          ; 8B C7
        mul     bx                              ; F7 E3
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        je      L_0778                          ; 74 0D
        or      dx, dx                          ; 0B D2
        mov     dx, 0xa000                      ; BA 00 A0
        je      L_0775                          ; 74 03
        mov     dx, 0xb800                      ; BA 00 B8
;   [conditional branch target (if/else)] L_0775
L_0775:
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
;   [conditional branch target (if/else)] L_0778
L_0778:
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_0780                          ; 74 02
        neg     di                              ; F7 DF
;   [conditional branch target (if/else)] L_0780
L_0780:
        mov     word ptr [bp - 0x28], di        ; 89 7E D8
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_07B1                          ; 74 28
        mov     di, word ptr [bp - 0x26]        ; 8B 7E DA
        mov     ax, di                          ; 8B C7
        mul     cx                              ; F7 E1
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_07A6                          ; 74 0D
        or      dx, dx                          ; 0B D2
        mov     dx, 0xa000                      ; BA 00 A0
        je      L_07A3                          ; 74 03
        mov     dx, 0xb800                      ; BA 00 B8
;   [conditional branch target (if/else)] L_07A3
L_07A3:
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
;   [conditional branch target (if/else)] L_07A6
L_07A6:
        test    byte ptr [bp - 9], 0x80         ; F6 46 F7 80
        je      L_07AE                          ; 74 02
        neg     di                              ; F7 DF
;   [conditional branch target (if/else)] L_07AE
L_07AE:
        mov     word ptr [bp - 0x22], di        ; 89 7E DE
;   [conditional branch target (if/else)] L_07B1
L_07B1:
        mov     ax, 0x15e                       ; B8 5E 01
        call    L_1C10                          ; E8 59 14
        mov     di, sp                          ; 8B FC
        mov     word ptr [bp - 0x1e], di        ; 89 7E E2
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        mov     ax, 0x5751                      ; B8 51 57
        stosw   word ptr es:[di], ax            ; AB
        cmp     byte ptr [bp - 5], 0            ; 80 7E FB 00
        je      L_07D6                          ; 74 03
        mov     al, 0x56                        ; B0 56
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_07D6
L_07D6:
        cmp     byte ptr [bp - 3], 0            ; 80 7E FD 00
        je      L_07FE                          ; 74 22
        mov     si, 0x4d0                       ; BE D0 04
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     dx, di                          ; 8B D7
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        stosb   byte ptr es:[di], al            ; AA
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        mov     cl, 8                           ; B1 08
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        mov     al, byte ptr [bp - 9]           ; 8A 46 F7
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_07FE
L_07FE:
        mov     bx, di                          ; 8B DF
        xor     dx, dx                          ; 33 D2
        or      dl, byte ptr [bp - 5]           ; 0A 56 FB
        je      L_0840                          ; 74 39
        or      dh, byte ptr [bp - 7]           ; 0A 76 F9
        je      L_0817                          ; 74 0B
        mov     al, 0xbd                        ; B0 BD
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xff32                      ; B8 32 FF
        stosw   word ptr es:[di], ax            ; AB
;   [loop start (also forward branch)] L_0817
L_0817:
        mov     bx, di                          ; 8B DF
        mov     al, 0xac                        ; B0 AC
        stosb   byte ptr es:[di], al            ; AA
        or      dh, dh                          ; 0A F6
        je      L_083B                          ; 74 1B
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ax, 0xc0d0                      ; B8 D0 C0
        cmp     cl, 5                           ; 80 F9 05
        jb      L_0832                          ; 72 08
        neg     cl                              ; F6 D9
        add     cl, 8                           ; 80 C1 08
        mov     ax, 0xc8d0                      ; B8 D0 C8
;   [conditional branch target (if/else)] L_0832
L_0832:
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     si, 0x4ec                       ; BE EC 04
        mov     cl, 4                           ; B1 04
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_083B
L_083B:
        dec     byte ptr [bp - 0xa]             ; FE 4E F6
        jne     L_0817                          ; 75 D7
;   [conditional branch target (if/else)] L_0840
L_0840:
        mov     word ptr [bp - 0x32], bx        ; 89 5E CE
        xor     dh, dh                          ; 32 F6
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        cmp     cx, 0x20                        ; 83 F9 20
        jne     L_0850                          ; 75 03
        jmp     L_08FD                          ; E9 AD 00
;   [conditional branch target (if/else)] L_0850
L_0850:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     si, word ptr [bp - 0x2e]        ; 8B 76 D2
        mov     dl, byte ptr [bp - 0x2f]        ; 8A 56 D1
        cmp     byte ptr [bp - 5], 1            ; 80 7E FB 01
        jb      L_086E                          ; 72 0E
        jne     L_086A                          ; 75 08
        mov     ax, si                          ; 8B C6
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_086E                          ; 74 04
;   [conditional branch target (if/else)] L_086A
L_086A:
        mov     ax, 0xd08a                      ; B8 8A D0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_086E
L_086E:
        cmp     byte ptr [bp - 4], 2            ; 80 7E FC 02
        jb      L_087E                          ; 72 0A
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
        or      dh, 2                           ; 80 CE 02
;   [loop start (also forward branch)] L_087E
L_087E:
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        dec     ax                              ; 48
        jne     L_0893                          ; 75 0D
        test    dh, 1                           ; F6 C6 01
        je      L_08F9                          ; 74 6E
        and     dh, 0xfe                        ; 80 E6 FE
        mov     ax, 0xc28a                      ; B8 8A C2
        jmp     L_08F8                          ; EB 65
;   [conditional branch target (if/else)] L_0893
L_0893:
        dec     ax                              ; 48
        mov     ax, 0xc68a                      ; B8 8A C6
        jne     L_08F5                          ; 75 5C
        mov     ax, 0xc48a                      ; B8 8A C4
        test    dh, 2                           ; F6 C6 02
        jne     L_08F5                          ; 75 54
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x58a                       ; B8 8A 05
        jmp     L_08F5                          ; EB 4C
;   [loop start] L_08A9
L_08A9:
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        mov     bx, cx                          ; 8B D9
        and     bx, 0xc                         ; 81 E3 0C 00
        mov     ax, 0xd0f6                      ; B8 F6 D0
        je      L_08F5                          ; 74 3D
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        mov     ax, si                          ; 8B C6
        and     ax, 3                           ; 25 03 00
        jne     L_08DB                          ; 75 18
        xor     dh, 4                           ; 80 F6 04
        test    dh, 4                           ; F6 C6 04
        je      L_08DB                          ; 74 10
        mov     ax, 0xd88a                      ; B8 8A D8
        stosw   word ptr es:[di], ax            ; AB
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        ror     si, 1                           ; D1 CE
        ror     si, 1                           ; D1 CE
        inc     dl                              ; FE C2
        jmp     L_087E                          ; EB A3
;   [conditional branch target (if/else)] L_08DB
L_08DB:
        or      bx, ax                          ; 0B D8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_08EE                          ; 75 0C
        test    dh, 2                           ; F6 C6 02
        jne     L_08EE                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
;   [conditional branch target (if/else)] L_08EE
L_08EE:
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr cs:[bx + 0x51a]    ; 2E 8B 87 1A 05
;   [branch target] L_08F5
L_08F5:
        or      dh, 1                           ; 80 CE 01
;   [unconditional branch target] L_08F8
L_08F8:
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_08F9
L_08F9:
        dec     dl                              ; FE CA
        jge     L_08A9                          ; 7D AC
;   [unconditional branch target] L_08FD
L_08FD:
        mov     word ptr [bp - 0x34], di        ; 89 7E CC
        test    dh, 2                           ; F6 C6 02
        jne     L_090C                          ; 75 07
        mov     al, 0x26                        ; B0 26
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0x258a                      ; B8 8A 25
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_090C
L_090C:
        mov     si, 0x4f4                       ; BE F4 04
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        xchg    al, ah                          ; 86 E0
        mov     word ptr es:[di - 5], ax        ; 26 89 45 FB
        mov     word ptr [bp - 0x36], di        ; 89 7E CA
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        or      dx, dx                          ; 0B D2
        je      L_0990                          ; 74 67
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        test    bx, 0x1c                        ; F7 C3 1C 00
        jne     L_0992                          ; 75 60
        test    bl, 3                           ; F6 C3 03
        je      L_0956                          ; 74 1F
        mov     ax, 0xffb0                      ; B8 B0 FF
        test    bl, 1                           ; F6 C3 01
        je      L_0942                          ; 74 03
        mov     ax, 0xc68a                      ; B8 8A C6
;   [conditional branch target (if/else)] L_0942
L_0942:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xe08a                      ; B8 8A E0
        stosw   word ptr es:[di], ax            ; AB
        mov     si, 0xaa                        ; BE AA 00
        test    bx, 0x20                        ; F7 C3 20 00
        jne     L_095F                          ; 75 0F
        mov     ax, 0xd0f7                      ; B8 F7 D0
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_095F                          ; EB 09
;   [conditional branch target (if/else)] L_0956
L_0956:
        test    byte ptr [bp - 7], 0xff         ; F6 46 F9 FF
        jne     L_0992                          ; 75 36
        mov     si, 0xa4                        ; BE A4 00
;   [branch target] L_095F
L_095F:
        shr     dx, 1                           ; D1 EA
        jae     L_0966                          ; 73 03
        mov     ax, si                          ; 8B C6
        stosb   byte ptr es:[di], al            ; AA
;   [conditional branch target (if/else)] L_0966
L_0966:
        je      L_0990                          ; 74 28
        xor     bx, bx                          ; 33 DB
        cmp     bl, byte ptr [bp - 0xb]         ; 3A 5E F5
        jne     L_0976                          ; 75 07
        mov     ax, 0x4f4e                      ; B8 4E 4F
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x4746                      ; BB 46 47
;   [conditional branch target (if/else)] L_0976
L_0976:
        cmp     dx, 1                           ; 83 FA 01
        je      L_0985                          ; 74 0A
        mov     al, 0xb9                        ; B0 B9
        mov     ah, dl                          ; 8A E2
        stosw   word ptr es:[di], ax            ; AB
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        mov     ah, 0xf3                        ; B4 F3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0985
L_0985:
        mov     ax, si                          ; 8B C6
        inc     ax                              ; 40
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_0990                          ; 74 03
        mov     ax, bx                          ; 8B C3
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0990
L_0990:
        jmp     L_0A0B                          ; EB 79
;   [conditional branch target (if/else)] L_0992
L_0992:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_09AF                          ; 72 18
        mov     al, 0xb9                        ; B0 B9
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, dx                          ; 8B C2
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        and     al, 3                           ; 24 03
        je      L_09AF                          ; 74 08
        mov     al, 0xe9                        ; B0 E9
        stosb   byte ptr es:[di], al            ; AA
        stosw   word ptr es:[di], ax            ; AB
        inc     word ptr es:[di - 5]            ; 26 FF 45 FB
;   [conditional branch target (if/else)] L_09AF
L_09AF:
        push    di                              ; 57
        mov     bx, dx                          ; 8B DA
        cmp     bx, 5                           ; 83 FB 05
        jb      L_09B9                          ; 72 02
        mov     bl, 4                           ; B3 04
;   [conditional branch target (if/else)] L_09B9
L_09B9:
        mov     cx, word ptr [bp - 0x34]        ; 8B 4E CC
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        sub     cx, si                          ; 2B CE
        mov     bh, cl                          ; 8A F9
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     al, 0xaa                        ; B0 AA
        stosb   byte ptr es:[di], al            ; AA
        pop     si                              ; 5E
        inc     bh                              ; FE C7
        dec     bl                              ; FE CB
        je      L_09DB                          ; 74 0C
        mov     al, bh                          ; 8A C7
        mul     bl                              ; F6 E3
        mov     cx, ax                          ; 8B C8
        mov     ax, si                          ; 8B C6
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_09DB
L_09DB:
        cmp     dx, 5                           ; 83 FA 05
        jb      L_0A0B                          ; 72 2B
        mov     ax, dx                          ; 8B C2
        neg     ax                              ; F7 D8
        and     al, 3                           ; 24 03
        je      L_09EE                          ; 74 06
        mul     bh                              ; F6 E7
        mov     word ptr es:[si - 2], ax        ; 26 89 44 FE
;   [conditional branch target (if/else)] L_09EE
L_09EE:
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0A00                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0A0B                          ; EB 0B
;   [conditional branch target (if/else)] L_0A00
L_0A00:
        mov     si, 0x4e8                       ; BE E8 04
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        movsw   word ptr es:[di], word ptr cs:[si] ; 2E A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [branch target] L_0A0B
L_0A0B:
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        or      dh, dh                          ; 0A F6
        je      L_0A21                          ; 74 0F
        mov     cx, word ptr [bp - 0x36]        ; 8B 4E CA
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        sub     cx, si                          ; 2B CE
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xchg    dl, dh                          ; 86 F2
        mov     word ptr [di - 5], dx           ; 89 55 FB
;   [conditional branch target (if/else)] L_0A21
L_0A21:
        mov     cl, byte ptr [bp - 5]           ; 8A 4E FB
        or      cl, cl                          ; 0A C9
        je      L_0A54                          ; 74 2C
        mov     al, 0x5e                        ; B0 5E
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        stosw   word ptr es:[di], ax            ; AB
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_0A54                          ; 74 1B
        or      ax, ax                          ; 0B C0
        mov     ax, 0x572                       ; B8 72 05
        js      L_0A43                          ; 78 03
        mov     ax, 0x573                       ; B8 73 05
;   [conditional branch target (if/else)] L_0A43
L_0A43:
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0xb8                        ; B0 B8
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xa000                      ; B8 00 A0
        js      L_0A4F                          ; 78 03
        mov     ax, 0xb800                      ; B8 00 B8
;   [conditional branch target (if/else)] L_0A4F
L_0A4F:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xd88e                      ; B8 8E D8
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0A54
L_0A54:
        mov     ax, 0x595f                      ; B8 5F 59
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc781                      ; B8 81 C7
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        stosw   word ptr es:[di], ax            ; AB
        cmp     word ptr [bp - 0x2a], 0         ; 83 7E D6 00
        je      L_0A81                          ; 74 1B
        or      ax, ax                          ; 0B C0
        mov     ax, 0x572                       ; B8 72 05
        js      L_0A70                          ; 78 03
        mov     ax, 0x573                       ; B8 73 05
;   [conditional branch target (if/else)] L_0A70
L_0A70:
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 0xb8                        ; B0 B8
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xa000                      ; B8 00 A0
        js      L_0A7C                          ; 78 03
        mov     ax, 0xb800                      ; B8 00 B8
;   [conditional branch target (if/else)] L_0A7C
L_0A7C:
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc08e                      ; B8 8E C0
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_0A81
L_0A81:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, di                          ; 2B C7
        cmp     ax, 0xff83                      ; 3D 83 FF
        jb      L_0A98                          ; 72 09
        sub     al, 2                           ; 2C 02
        mov     ah, al                          ; 8A E0
        mov     al, 0xe2                        ; B0 E2
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0AA1                          ; EB 09
;   [conditional branch target (if/else)] L_0A98
L_0A98:
        mov     si, 0x4e8                       ; BE E8 04
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     ax, 6                           ; 2D 06 00
        stosw   word ptr es:[di], ax            ; AB
;   [unconditional branch target] L_0AA1
L_0AA1:
        mov     al, 0xcb                        ; B0 CB
        stosb   byte ptr es:[di], al            ; AA
        or      cl, cl                          ; 0A C9
        je      L_0AAB                          ; 74 03
        lds     si, ptr [bp - 0x16]             ; C5 76 EA
;   [conditional branch target (if/else)] L_0AAB
L_0AAB:
        les     di, ptr [bp - 0x1a]             ; C4 7E E6
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        cld                                     ; FC
        cmp     byte ptr [bp - 0xb], 1          ; 80 7E F5 01
        je      L_0AB9                          ; 74 01
        std                                     ; FD
;   [conditional branch target (if/else)] L_0AB9
L_0AB9:
        push    bp                              ; 55
        lcall   [bp - 0x1e]                     ; FF 5E E2
        pop     bp                              ; 5D
        add     sp, 0x15e                       ; 81 C4 5E 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0AC5
L_0AC5:
        cld                                     ; FC
        call    L_18B4                          ; E8 EB 0D
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x2e                        ; B8 2E 00
        call    L_1C10                          ; E8 2A 11
        push    si                              ; 56
        push    di                              ; 57
        mov     word ptr [bp - 8], sp           ; 89 66 F8
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        xor     dx, dx                          ; 33 D2
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        je      L_0B4D                          ; 74 53
        jg      L_0B03                          ; 7F 07
        neg     ax                              ; F7 D8
        xor     bx, bx                          ; 33 DB
        mov     word ptr [bp + 0x18], bx        ; 89 5E 18
;   [conditional branch target (if/else)] L_0B03
L_0B03:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     cx, word ptr es:[di + 0x21]     ; 26 8B 4D 21
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     ax, word ptr es:[di + 0x14]     ; 26 8B 45 14
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      si, si                          ; 0B F6
        je      L_0B50                          ; 74 38
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dx, ax                          ; 8B D0
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        mov     bx, ax                          ; 8B D8
        jge     L_0B28                          ; 7D 04
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0B28
L_0B28:
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     dx, word ptr es:[di + 0x16]     ; 26 8B 55 16
        cmp     bx, dx                          ; 3B DA
        jge     L_0B4D                          ; 7D 17
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        cmp     ax, dx                          ; 3B C2
        jl      L_0B42                          ; 7C 02
        mov     ax, dx                          ; 8B C2
;   [conditional branch target (if/else)] L_0B42
L_0B42:
        or      ax, ax                          ; 0B C0
        jle     L_0B4D                          ; 7E 07
        cmp     ax, bx                          ; 3B C3
        jle     L_0B4D                          ; 7E 03
        jmp     L_0B5F                          ; EB 13
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0B4D
L_0B4D:
        jmp     L_0F66                          ; E9 16 04
;   [conditional branch target (if/else)] L_0B50
L_0B50:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     word ptr [bp - 0x20], bx        ; 89 5E E0
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr es:[di + 0x16]     ; 26 8B 45 16
;   [unconditional branch target] L_0B5F
L_0B5F:
        sub     ax, bx                          ; 2B C3
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        add     word ptr [bp - 0x22], ax        ; 01 46 DE
        add     ax, bx                          ; 03 C3
        mul     cx                              ; F7 E1
        mov     dx, word ptr es:[di + 0x2b]     ; 26 8B 55 2B
        add     ax, dx                          ; 03 C2
        dec     ax                              ; 48
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, bx                          ; 8B C3
        mov     si, bx                          ; 8B F3
        mov     bx, dx                          ; 8B DA
        mul     cx                              ; F7 E1
        add     ax, bx                          ; 03 C3
        dec     ax                              ; 48
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, si                          ; 8B C6
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
        cmp     word ptr es:[di + 0x14], 0      ; 26 83 7D 14 00
        je      L_0BDB                          ; 74 47
        mov     dx, 0xfa2                       ; BA A2 0F
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0BC3                          ; 74 23
        mov     dx, 0xfc8                       ; BA C8 0F
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     dx, word ptr [si + 0x12]        ; 8B 54 12
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     dx, word ptr [si + 0x10]        ; 8B 54 10
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     dx, word ptr [si + 0x14]        ; 8B 54 14
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [conditional branch target (if/else)] L_0BC3
L_0BC3:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xf86                       ; BE 86 0F
        or      dx, dx                          ; 0B D2
        je      L_0C1F                          ; 74 52
        mov     si, 0xf80                       ; BE 80 0F
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        jmp     L_0C1F                          ; EB 45
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0BDB
L_0BDB:
        mov     dx, 0x1004                      ; BA 04 10
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        je      L_0C0A                          ; 74 23
        mov     dx, 0xfb4                       ; BA B4 0F
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     dx, word ptr [si + 0xe]         ; 8B 54 0E
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     dx, word ptr [si + 0x12]        ; 8B 54 12
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     dx, word ptr [si + 0x10]        ; 8B 54 10
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     dx, word ptr [si + 0x14]        ; 8B 54 14
        mov     word ptr [bp - 0x2e], dx        ; 89 56 D2
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [conditional branch target (if/else)] L_0C0A
L_0C0A:
        mov     dx, word ptr [si + 0x16]        ; 8B 54 16
        mov     si, 0xfec                       ; BE EC 0F
        or      dx, dx                          ; 0B D2
        je      L_0C1F                          ; 74 0B
        mov     si, 0xfe6                       ; BE E6 0F
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
;   [branch target] L_0C1F
L_0C1F:
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        xor     si, 0x1025                      ; 81 F6 25 10
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        mul     dx                              ; F7 E2
        jno     L_0C41                          ; 71 05
        mov     dx, 0xb800                      ; BA 00 B8
        mov     es, dx                          ; 8E C2
;   [conditional branch target (if/else)] L_0C41
L_0C41:
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], es         ; 8C 46 F6
        lds     si, ptr [bp + 0x18]             ; C5 76 18
        mov     bx, word ptr [bp + 0x1e]        ; 8B 5E 1E
        or      si, si                          ; 0B F6
        je      L_0CC4                          ; 74 71
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        mov     di, bx                          ; 8B FB
        mov     dx, word ptr [si + 4]           ; 8B 54 04
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        sub     dx, cx                          ; 2B D1
        sub     bx, cx                          ; 2B D9
        jl      L_0C6F                          ; 7C 09
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        mov     cx, di                          ; 8B CF
        sub     dx, bx                          ; 2B D3
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0C6F
L_0C6F:
        mov     di, cx                          ; 8B F9
        and     di, 7                           ; 81 E7 07 00
        sub     di, 8                           ; 83 EF 08
        neg     di                              ; F7 DF
        mov     word ptr [bp - 4], di           ; 89 7E FC
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        add     word ptr [bp - 0xc], cx         ; 01 4E F4
        cmp     bx, dx                          ; 3B DA
        jge     L_0CFD                          ; 7D 73
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
;   [loop start] L_0C90
L_0C90:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jle     L_0C90                          ; 7E FB
        or      ax, ax                          ; 0B C0
        je      L_0CB7                          ; 74 1E
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
;   [loop start] L_0CA1
L_0CA1:
        jge     L_0D0C                          ; 7D 69
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        call    word ptr [bp - 0x10]            ; FF 56 F0
        jmp     L_0CA1                          ; EB EA
;   [conditional branch target (if/else)] L_0CB7
L_0CB7:
        add     ax, cx                          ; 03 C1
        sub     ax, bx                          ; 2B C3
        and     ax, 7                           ; 25 07 00
        mov     cx, bx                          ; 8B CB
        sub     bx, dx                          ; 2B DA
        jmp     L_0CA1                          ; EB DD
;   [conditional branch target (if/else)] L_0CC4
L_0CC4:
        mov     word ptr [bp - 0x1c], bx        ; 89 5E E4
        mov     word ptr [bp - 0x1e], bx        ; 89 5E E2
        mov     di, cx                          ; 8B F9
        and     di, 7                           ; 81 E7 07 00
        sub     di, 8                           ; 83 EF 08
        neg     di                              ; F7 DF
        mov     word ptr [bp - 4], di           ; 89 7E FC
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     word ptr [bp - 0xc], bx         ; 01 5E F4
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        les     di, ptr [bp + 0xe]              ; C4 7E 0E
        xor     bx, bx                          ; 33 DB
;   [loop start] L_0CE9
L_0CE9:
        call    word ptr [bp - 0x10]            ; FF 56 F0
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
        jmp     L_0CE9                          ; EB EC
;   [loop start (also forward branch)] L_0CFD
L_0CFD:
        jmp     L_0F66                          ; E9 66 02
;   [loop start] L_0D00
L_0D00:
        pop     dx                              ; 5A
        pop     si                              ; 5E
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        push    si                              ; 56
        push    dx                              ; 52
        jmp     L_0D2A                          ; EB 1F
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0D0C
L_0D0C:
        sub     cx, bx                          ; 2B CB
        jle     L_0D1F                          ; 7E 0F
        mov     ch, cl                          ; 8A E9
        mov     cl, al                          ; 8A C8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        push    ax                              ; 50
        and     cl, 7                           ; 80 E1 07
        push    cx                              ; 51
;   [loop start (also forward branch)] L_0D1F
L_0D1F:
        cmp     sp, word ptr [bp - 8]           ; 3B 66 F8
        je      L_0CFD                          ; 74 D9
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0D00                          ; 74 D6
;   [unconditional branch target] L_0D2A
L_0D2A:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        dec     ax                              ; 48
        push    ax                              ; 50
        xor     ax, ax                          ; 33 C0
        call    L_1C10                          ; E8 DC 0E
        lds     si, ptr [bp + 0x20]             ; C5 76 20
        cmp     word ptr [si], 0                ; 83 3C 00
        je      L_0D52                          ; 74 16
        mov     cx, word ptr [bp + 0x12]        ; 8B 4E 12
        or      cx, cx                          ; 0B C9
        jl      L_0D52                          ; 7C 0F
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        mov     di, word ptr [bp - 0x22]        ; 8B 7E DE
        call    L_1828                          ; E8 D6 0A
;   [conditional branch target (if/else)] L_0D52
L_0D52:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, ax                          ; 0B C0
        jg      L_0D75                          ; 7F 19
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        or      ax, ax                          ; 0B C0
        je      L_0D66                          ; 74 03
        mov     word ptr [si + 0x10], ax        ; 89 44 10
;   [conditional branch target (if/else)] L_0D66
L_0D66:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        sub     dx, word ptr [bp - 0x20]        ; 2B 56 E0
        jmp     L_0F66                          ; E9 F1 01
;   [conditional branch target (if/else)] L_0D75
L_0D75:
        cmp     word ptr [si + 2], 1            ; 83 7C 02 01
        jne     L_0D7E                          ; 75 03
        jmp     L_0E18                          ; E9 9A 00
;   [conditional branch target (if/else)] L_0D7E
L_0D7E:
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        xor     ah, ah                          ; 32 E4
        mov     si, ax                          ; 8B F0
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        mov     ax, cx                          ; 8B C1
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        mov     dl, 0xff                        ; B2 FF
        and     cx, 7                           ; 81 E1 07 00
        shr     dl, cl                          ; D2 EA
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        dec     cx                              ; 49
        mov     bx, cx                          ; 8B D9
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
        shr     bx, 1                           ; D1 EB
        mov     dh, 0xff                        ; B6 FF
        and     cx, 7                           ; 81 E1 07 00
        sub     cx, 7                           ; 83 E9 07
        neg     cx                              ; F7 D9
        shl     dh, cl                          ; D2 E6
        inc     ax                              ; 40
        sub     bx, ax                          ; 2B D8
        jge     L_0DB8                          ; 7D 02
        and     dl, dh                          ; 22 D6
;   [conditional branch target (if/else)] L_0DB8
L_0DB8:
        mov     cx, bx                          ; 8B CB
        mov     word ptr [bp - 0x1c], cx        ; 89 4E E4
        les     di, ptr [bp - 0xc]              ; C4 7E F4
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     al, 0xff                        ; B0 FF
        or      si, si                          ; 0B F6
        jne     L_0DF4                          ; 75 2B
        not     al                              ; F6 D0
        not     dx                              ; F7 D2
;   [loop start] L_0DCD
L_0DCD:
        mov     si, di                          ; 8B F7
        and     byte ptr es:[di], dl            ; 26 20 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0DDE                          ; 7C 07
        je      L_0DDB                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0DDB
L_0DDB:
        and     byte ptr es:[di], dh            ; 26 20 35
;   [conditional branch target (if/else)] L_0DDE
L_0DDE:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jae     L_0DE9                          ; 73 05
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
;   [conditional branch target (if/else)] L_0DE9
L_0DE9:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0DCD                          ; 7F DC
        jmp     L_0E18                          ; EB 25
        nop                                     ; 90
;   [loop start (also forward branch)] L_0DF4
L_0DF4:
        mov     si, di                          ; 8B F7
        or      byte ptr es:[di], dl            ; 26 08 15
        inc     di                              ; 47
        or      cx, cx                          ; 0B C9
        jl      L_0E05                          ; 7C 07
        je      L_0E02                          ; 74 02
        rep stosb byte ptr es:[di], al          ; F3 AA
;   [conditional branch target (if/else)] L_0E02
L_0E02:
        or      byte ptr es:[di], dh            ; 26 08 35
;   [conditional branch target (if/else)] L_0E05
L_0E05:
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        jae     L_0E10                          ; 73 05
        mov     cx, 0xb800                      ; B9 00 B8
        mov     es, cx                          ; 8E C1
;   [conditional branch target (if/else)] L_0E10
L_0E10:
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        jg      L_0DF4                          ; 7F DC
;   [unconditional branch target] L_0E18
L_0E18:
        xor     dx, dx                          ; 33 D2
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        cmp     byte ptr [si + 8], 1            ; 80 7C 08 01
        sbb     dl, dl                          ; 1A D2
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        lds     si, ptr [si + 0x2b]             ; C5 74 2B
        les     di, ptr [bp - 0xc]              ; C4 7E F4
        jmp     L_0ED1                          ; E9 A2 00
;   [loop start] L_0E2F
L_0E2F:
        add     cl, dh                          ; 02 CE
        shl     ax, cl                          ; D3 E0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      ah, dh                          ; 0A E6
        xor     ah, dl                          ; 32 E2
        xchg    al, ah                          ; 86 E0
        stosb   byte ptr es:[di], al            ; AA
        xchg    al, ah                          ; 86 E0
        mov     dh, 8                           ; B6 08
        neg     cl                              ; F6 D9
        je      L_0E4F                          ; 74 06
;   [loop start] L_0E49
L_0E49:
        sub     dh, cl                          ; 2A F1
        jle     L_0E2F                          ; 7E E2
        shl     ax, cl                          ; D3 E0
;   [conditional branch target (if/else)] L_0E4F
L_0E4F:
        cmp     ch, 8                           ; 80 FD 08
        ja      L_0E65                          ; 77 11
        or      ch, ch                          ; 0A ED
        je      L_0E78                          ; 74 20
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0E5F                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0E5F
L_0E5F:
        ; constant WM_SETTEXT
        mov     cl, ch                          ; 8A CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0E49                          ; EB E4
;   [conditional branch target (if/else)] L_0E65
L_0E65:
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0E6C                          ; 74 01
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0E6C
L_0E6C:
        mov     cl, 8                           ; B1 08
        sub     ch, cl                          ; 2A E9
        jae     L_0E49                          ; 73 D7
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0E49                          ; EB D1
;   [loop start (also forward branch)] L_0E78
L_0E78:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, word ptr ss:[bx]            ; 36 8B 0F
        or      cl, cl                          ; 0A C9
        js      L_0EA1                          ; 78 1B
        xor     al, al                          ; 32 C0
        or      si, si                          ; 0B F6
        je      L_0E90                          ; 74 04
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        lodsb   al, byte ptr [si]               ; AC
;   [conditional branch target (if/else)] L_0E90
L_0E90:
        shl     al, cl                          ; D2 E0
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        sub     ch, cl                          ; 2A E9
        jae     L_0E49                          ; 73 AE
        add     cl, ch                          ; 02 CD
        xor     ch, ch                          ; 32 ED
        jmp     L_0E49                          ; EB A8
;   [conditional branch target (if/else)] L_0EA1
L_0EA1:
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        shl     ah, cl                          ; D2 E4
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     al, dl                          ; 32 C2
        or      al, ah                          ; 0A C4
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        add     si, word ptr [bp - 0x18]        ; 03 76 E8
        cmp     si, word ptr [bp - 0x1a]        ; 3B 76 E6
        jae     L_0EE1                          ; 73 24
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     word ptr [bp - 0xc], bx         ; 01 5E F4
        jae     L_0ECE                          ; 73 06
        mov     bx, 0xb800                      ; BB 00 B8
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
;   [conditional branch target (if/else)] L_0ECE
L_0ECE:
        les     di, ptr [bp - 0xc]              ; C4 7E F4
;   [unconditional branch target] L_0ED1
L_0ED1:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        xor     ax, ax                          ; 33 C0
        mov     dh, byte ptr [bp - 4]           ; 8A 76 FC
        cmp     word ptr [bp - 0x26], 8         ; 83 7E DA 08
        je      L_0EE4                          ; 74 05
        jmp     L_0E78                          ; EB 97
;   [conditional branch target (if/else)] L_0EE1
L_0EE1:
        jmp     L_0F66                          ; E9 82 00
;   [conditional branch target (if/else)] L_0EE4
L_0EE4:
        xor     cx, cx                          ; 33 C9
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0F5D                          ; 74 6C
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        mov     cx, word ptr ss:[bx - 2]        ; 36 8B 4F FE
        lodsb   al, byte ptr [si]               ; AC
        xchg    al, ah                          ; 86 E0
        shl     ah, cl                          ; D2 E4
        sub     cl, 8                           ; 80 E9 08
        neg     cl                              ; F6 D9
        cmp     dh, cl                          ; 3A F1
        jg      L_0F13                          ; 7F 0D
        xchg    dh, cl                          ; 86 CE
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jne     L_0F3B                          ; 75 2D
        mov     cl, 8                           ; B1 08
        jmp     L_0F1B                          ; EB 09
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0F13
L_0F13:
        rol     ax, cl                          ; D3 C0
        sub     cl, dh                          ; 2A CE
        jmp     L_0F4C                          ; EB 33
        nop                                     ; 90
;   [loop start] L_0F1A
L_0F1A:
        lodsb   al, byte ptr [si]               ; AC
;   [unconditional branch target] L_0F1B
L_0F1B:
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0F5D                          ; 74 2E
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0F1A                          ; EB E6
;   [loop start] L_0F34
L_0F34:
        mov     ah, byte ptr [si]               ; 8A 24
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [conditional branch target (if/else)] L_0F3B
L_0F3B:
        neg     cl                              ; F6 D9
        mov     dh, byte ptr es:[di]            ; 26 8A 35
        xor     dh, dl                          ; 32 F2
        or      al, dh                          ; 0A C6
        xor     al, dl                          ; 32 C2
        stosb   byte ptr es:[di], al            ; AA
        rol     ax, cl                          ; D3 C0
        sub     cl, 8                           ; 80 E9 08
;   [unconditional branch target] L_0F4C
L_0F4C:
        neg     cl                              ; F6 D9
        sub     bx, 4                           ; 83 EB 04
        mov     si, word ptr ss:[bx]            ; 36 8B 37
        or      si, si                          ; 0B F6
        je      L_0F5D                          ; 74 05
        add     si, word ptr [bp - 0x16]        ; 03 76 EA
        jmp     L_0F34                          ; EB D7
;   [conditional branch target (if/else)] L_0F5D
L_0F5D:
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     ah, al                          ; 8A E0
        mov     dh, cl                          ; 8A F1
        jmp     L_0E78                          ; E9 12 FF
;   [unconditional branch target] L_0F66
L_0F66:
        mov     sp, word ptr [bp - 8]           ; 8B 66 F8
        call    L_18B4                          ; E8 48 09
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;   [loop start] L_0F79
L_0F79:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0F98                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_0FAA                          ; 7C 1E
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0F79                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0F79                          ; 72 E1
;   [unconditional branch target] L_0F98
L_0F98:
        mov     cx, word ptr es:[di + 0x14]     ; 26 8B 4D 14
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0FB1                          ; 74 0F
        mul     cl                              ; F6 E1
        add     ax, 8                           ; 05 08 00
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0FAA
L_0FAA:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0D1F                          ; E9 6E FD
;   [loop start (also forward branch)] L_0FB1
L_0FB1:
        jmp     word ptr [bp - 0x12]            ; FF 66 EE
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        pop     bx                              ; 5B
        je      L_0FEC                          ; 74 24
        add     cx, word ptr [bp - 0x28]        ; 03 4E D8
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        jg      L_0FD7                          ; 7F 04
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_0FD7
L_0FD7:
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [loop start] L_0FDF
L_0FDF:
        mov     al, byte ptr es:[di + 0x1f]     ; 26 8A 45 1F
        jmp     L_0FFE                          ; EB 19
        nop                                     ; 90
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
;   [loop start (also forward branch)] L_0FEC
L_0FEC:
        lodsb   al, byte ptr [si]               ; AC
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_101E                          ; 7C 2C
        cmp     al, byte ptr es:[di + 0x1e]     ; 26 3A 45 1E
        ja      L_0FDF                          ; 77 E7
        sub     al, byte ptr es:[di + 0x1d]     ; 26 2A 45 1D
        jb      L_0FDF                          ; 72 E1
;   [unconditional branch target] L_0FFE
L_0FFE:
        cmp     al, byte ptr es:[di + 0x20]     ; 26 3A 45 20
        je      L_0FB1                          ; 74 AD
        xor     ah, ah                          ; 32 E4
        shl     ax, 1                           ; D1 E0
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr es:[bx + di + 0x33] ; 26 8B 41 33
        mov     cx, word ptr es:[bx + di + 0x35] ; 26 8B 49 35
        sub     cx, ax                          ; 2B C8
        add     ax, 8                           ; 05 08 00
        pop     bx                              ; 5B
        je      L_0FEC                          ; 74 D1
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_101E
L_101E:
        add     word ptr [bp - 0x1e], bx        ; 01 5E E2
        pop     ax                              ; 58
        jmp     L_0D1F                          ; E9 FA FC
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        xor     word ptr [bp - 0x10], cx        ; 31 4E F0
        mov     cx, word ptr [bp - 0x30]        ; 8B 4E D0
        xor     ax, ax                          ; 33 C0
        add     bx, cx                          ; 03 D9
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_105F                          ; E3 19
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     di, dx                          ; 8B FA
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        test    byte ptr [bp + 6], 2            ; F6 46 06 02
        je      L_105C                          ; 74 04
        mov     si, cx                          ; 8B F1
        xor     cx, cx                          ; 33 C9
;   [conditional branch target (if/else)] L_105C
L_105C:
        call    L_1828                          ; E8 C9 07
;   [conditional branch target (if/else)] L_105F
L_105F:
        les     di, ptr [bp + 0x10]             ; C4 7E 10
        lds     si, ptr es:[di + 0xa]           ; 26 C5 75 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mul     word ptr es:[di + 6]            ; 26 F7 65 06
        mov     cx, word ptr es:[di]            ; 26 8B 0D
        jcxz    L_107B                          ; E3 09
        or      dx, dx                          ; 0B D2
        je      L_107B                          ; 74 05
        mov     dx, 0xb800                      ; BA 00 B8
        mov     ds, dx                          ; 8E DA
;   [conditional branch target (if/else)] L_107B
L_107B:
        add     si, ax                          ; 03 F0
        mov     cx, word ptr [bp + 0xe]         ; 8B 4E 0E
        mov     bx, cx                          ; 8B D9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        shr     cx, 1                           ; D1 E9
        add     si, cx                          ; 03 F1
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        inc     cx                              ; 41
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        shr     dx, 1                           ; D1 EA
        jae     L_109B                          ; 73 02
        not     ax                              ; F7 D0
;   [conditional branch target (if/else)] L_109B
L_109B:
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x17a]    ; 2E 8A 9F 7A 01
        dec     bl                              ; FE CB
        std                                     ; FD
        shl     dx, 1                           ; D1 E2
        dec     dx                              ; 4A
        jg      L_10B8                          ; 7F 0C
        cld                                     ; FC
        shl     bl, 1                           ; D0 E3
        inc     bl                              ; FE C3
        not     bl                              ; F6 D3
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_10B8
L_10B8:
        not     bl                              ; F6 D3
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        shl     di, 1                           ; D1 E7
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        jne     L_10DA                          ; 75 13
        mov     al, ah                          ; 8A C4
        dec     cx                              ; 49
        je      L_1110                          ; 74 44
        xchg    di, si                          ; 87 F7
        repe scasb al, byte ptr es:[di]         ; F3 AE
        je      L_1110                          ; 74 3E
        inc     cx                              ; 41
        xchg    di, si                          ; 87 F7
        add     si, dx                          ; 03 F2
        lodsb   al, byte ptr [si]               ; AC
        xor     al, ah                          ; 32 C4
;   [conditional branch target (if/else)] L_10DA
L_10DA:
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        or      dx, dx                          ; 0B D2
        jg      L_10F8                          ; 7F 14
        sub     cx, di                          ; 2B CF
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
;   [loop start] L_10E9
L_10E9:
        inc     cx                              ; 41
        shl     al, 1                           ; D0 E0
        jae     L_10E9                          ; 73 FB
        lds     si, ptr [bp + 0x10]             ; C5 76 10
        cmp     cx, word ptr [si + 2]           ; 3B 4C 02
        jge     L_1110                          ; 7D 1A
        jmp     L_10FD                          ; EB 05
;   [loop start (also forward branch)] L_10F8
L_10F8:
        dec     cx                              ; 49
        shr     ax, 1                           ; D1 E8
        jae     L_10F8                          ; 73 FB
;   [unconditional branch target] L_10FD
L_10FD:
        mov     ax, cx                          ; 8B C1
;   [loop start] L_10FF
L_10FF:
        cld                                     ; FC
        call    L_18B4                          ; E8 B1 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_1110
L_1110:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_10FF                          ; EB EA
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1138                          ; E3 10
        mov     cx, word ptr [bp + 0x10]        ; 8B 4E 10
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     si, cx                          ; 8B F1
        mov     di, dx                          ; 8B FA
        call    L_1828                          ; E8 F3 06
        lds     si, ptr [bp + 0x12]             ; C5 76 12
;   [conditional branch target (if/else)] L_1138
L_1138:
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     cx, word ptr [si]               ; 8B 0C
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mul     word ptr [si + 6]               ; F7 64 06
        jcxz    L_114E                          ; E3 09
        or      dx, dx                          ; 0B D2
        je      L_114E                          ; 74 05
        mov     dx, 0xb800                      ; BA 00 B8
        mov     es, dx                          ; 8E C2
;   [conditional branch target (if/else)] L_114E
L_114E:
        add     di, ax                          ; 03 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     di, ax                          ; 03 F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x17a]    ; 2E 8A 9F 7A 01
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     cx, dx                          ; 8B CA
        or      cx, si                          ; 0B CE
        je      L_118C                          ; 74 1A
        mov     ds, dx                          ; 8E DA
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     si, word ptr [si]               ; 8B 34
        add     si, si                          ; 03 F6
        mov     ah, byte ptr es:[di]            ; 26 8A 25
        call    word ptr cs:[si + 0x19ac]       ; 2E FF 94 AC 19
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_1199                          ; EB 0D
;   [conditional branch target (if/else)] L_118C
L_118C:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        and     al, bl                          ; 22 C3
        mov     dx, 0xff                        ; BA FF 00
        mov     ax, 0xffff                      ; B8 FF FF
        jne     L_119D                          ; 75 04
;   [unconditional branch target] L_1199
L_1199:
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [conditional branch target (if/else)] L_119D
L_119D:
        call    L_18B4                          ; E8 14 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        jmp     di                              ; FF E7
        stosb   byte ptr es:[di], al            ; AA
        in      al, 0xea                        ; E4 EA
        add     byte ptr [bp + di + 0x46ee], cl ; 00 8B EE 46
        shr     si, 1                           ; D1 EE
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        or      ch, ch                          ; 0A ED
        js      L_11C2                          ; 78 02
        mov     al, 0                           ; B0 00
;   [conditional branch target (if/else)] L_11C2
L_11C2:
        or      ch, ch                          ; 0A ED
        jns     L_11CE                          ; 79 08
        xor     al, ah                          ; 32 C4
        and     al, bl                          ; 22 C3
        xor     al, ah                          ; 32 C4
        mov     byte ptr [di], al               ; 88 05
;   [conditional branch target (if/else)] L_11CE
L_11CE:
        xor     ax, ax                          ; 33 C0
        jns     L_11D7                          ; 79 05
        add     cl, 0x28                        ; 80 C1 28
        rol     ch, 1                           ; D0 C5
;   [conditional branch target (if/else)] L_11D7
L_11D7:
        dec     bp                              ; 4D
;   [loop start] L_11D8
L_11D8:
        jg      L_11D8                          ; 7F FE
        retf                                    ; CB
;   [loop start] L_11DB
L_11DB:
        ror     bl, 1                           ; D0 CB
        jb      L_11E3                          ; 72 04
        dec     bp                              ; 4D
        jg      L_11DB                          ; 7F F9
;   [loop start] L_11E2
L_11E2:
        retf                                    ; CB
;   [conditional branch target (if/else)] L_11E3
L_11E3:
        inc     di                              ; 47
        dec     bp                              ; 4D
        jle     L_11E2                          ; 7E FB
;   [loop start] L_11E7
L_11E7:
        cmp     bp, 8                           ; 83 FD 08
        jl      L_11DB                          ; 7C EF
        mov     ah, byte ptr [di]               ; 8A 25
        mov     al, bh                          ; 8A C7
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        sub     bp, 8                           ; 83 ED 08
        jg      L_11E7                          ; 7F EF
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x92                        ; 81 EC 92 00
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     byte ptr [bp - 0x16], 0xff      ; C6 46 EA FF
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        les     di, ptr [si + 0xa]              ; C4 7C 0A
        mov     cx, word ptr [si]               ; 8B 0C
        mov     word ptr [bp - 0x18], cx        ; 89 4E E8
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mul     dx                              ; F7 E2
        jcxz    L_1232                          ; E3 09
        or      dx, dx                          ; 0B D2
        je      L_1232                          ; 74 05
        mov     dx, 0xb800                      ; BA 00 B8
        mov     es, dx                          ; 8E C2
;   [conditional branch target (if/else)] L_1232
L_1232:
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0xc], es         ; 8C 46 F4
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_1262                          ; 74 20
        cmp     ax, 4                           ; 3D 04 00
        jne     L_1250                          ; 75 09
        jmp     L_14A7                          ; E9 5D 02
;   [loop start] L_124A
L_124A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1252                          ; EB 03
        nop                                     ; 90
;   [loop start (also forward branch)] L_1250
L_1250:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_1252
L_1252:
        call    L_18B4                          ; E8 5F 06
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
;   [conditional branch target (if/else)] L_1262
L_1262:
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_1289                          ; E3 23
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     di, word ptr [si + 4]           ; 8B 7C 04
        dec     di                              ; 4F
        mov     si, word ptr [si + 2]           ; 8B 74 02
        dec     si                              ; 4E
        lds     bx, ptr [bp + 6]                ; C5 5E 06
        mov     ax, ds                          ; 8C D8
        or      ax, bx                          ; 0B C3
        je      L_1286                          ; 74 0B
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     si, word ptr [bx + 4]           ; 8B 77 04
        mov     di, word ptr [bx + 6]           ; 8B 7F 06
;   [conditional branch target (if/else)] L_1286
L_1286:
        call    L_1828                          ; E8 9F 05
;   [conditional branch target (if/else)] L_1289
L_1289:
        lds     si, ptr [bp + 0x12]             ; C5 76 12
        mov     ah, byte ptr [si]               ; 8A 24
        mov     byte ptr [bp - 0x15], ah        ; 88 66 EB
        mov     bx, word ptr [si + 1]           ; 8B 5C 01
        cmp     bx, 5                           ; 83 FB 05
        jg      L_1250                          ; 7F B7
        je      L_124A                          ; 74 AF
        mov     ah, byte ptr cs:[bx + 0x11ad]   ; 2E 8A A7 AD 11
        mov     al, 0x28                        ; B0 28
        dec     al                              ; FE C8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        xor     cx, cx                          ; 33 C9
        call    L_13D0                          ; E8 24 01
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        mov     di, dx                          ; 8B FA
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        shr     di, 1                           ; D1 EF
        add     word ptr [bp - 0xe], di         ; 01 7E F2
        mov     bx, dx                          ; 8B DA
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x17a]    ; 2E 8A 9F 7A 01
        mov     byte ptr [bp - 0xf], bl         ; 88 5E F1
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
;   [loop start] L_12D1
L_12D1:
        dec     ax                              ; 48
        jg      L_12D7                          ; 7F 03
        jmp     L_124A                          ; E9 73 FF
;   [conditional branch target (if/else)] L_12D7
L_12D7:
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        mov     ax, word ptr [si]               ; 8B 04
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        xor     bx, bx                          ; 33 DB
        sub     ax, dx                          ; 2B C2
        jae     L_12E9                          ; 73 04
        mov     bl, 2                           ; B3 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_12E9
L_12E9:
        mov     dx, ax                          ; 8B D0
        mov     ax, di                          ; 8B C7
        mov     si, word ptr [bp - 0x1a]        ; 8B 76 E6
        mov     byte ptr [bp - 0x1b], 0x7d      ; C6 46 E5 7D
        mov     byte ptr [bp - 0x92], 0x90      ; C6 86 6E FF 90
        sub     ax, cx                          ; 2B C1
        jae     L_130D                          ; 73 10
        neg     ax                              ; F7 D8
        or      bl, 1                           ; 80 CB 01
        neg     si                              ; F7 DE
        mov     byte ptr [bp - 0x1b], 0x7f      ; C6 46 E5 7F
        mov     byte ptr [bp - 0x92], 0x46      ; C6 86 6E FF 46
;   [conditional branch target (if/else)] L_130D
L_130D:
        mov     cx, ax                          ; 8B C8
        cmp     cx, dx                          ; 3B CA
        jb      L_1318                          ; 72 05
        or      bl, 4                           ; 80 CB 04
        xchg    dx, cx                          ; 87 CA
;   [conditional branch target (if/else)] L_1318
L_1318:
        mov     word ptr [bp - 0x12], si        ; 89 76 EE
        or      dx, dx                          ; 0B D2
        jne     L_1322                          ; 75 03
        jmp     L_13C3                          ; E9 A1 00
;   [conditional branch target (if/else)] L_1322
L_1322:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        or      cx, cx                          ; 0B C9
        jne     L_134A                          ; 75 1D
        or      bl, 8                           ; 80 CB 08
        test    bl, 4                           ; F6 C3 04
        jne     L_134A                          ; 75 15
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        jne     L_134A                          ; 75 0F
        cmp     byte ptr [bp - 0x16], bl        ; 38 5E EA
        je      L_13A1                          ; 74 61
        mov     byte ptr [bp - 0x16], bl        ; 88 5E EA
        push    dx                              ; 52
        call    L_1455                          ; E8 0E 01
        pop     dx                              ; 5A
        jmp     L_13A1                          ; EB 57
;   [conditional branch target (if/else)] L_134A
L_134A:
        test    bl, 8                           ; F6 C3 08
        jne     L_1369                          ; 75 1A
        mov     ax, 0xee81                      ; B8 81 EE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, byte ptr cs:[bx + 0xda]     ; 2E 8A A7 DA 00
        add     ah, 4                           ; 80 C4 04
        mov     al, byte ptr [bp - 0x1b]        ; 8A 46 E5
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 0xc681                      ; B8 81 C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_1369
L_1369:
        cmp     byte ptr [bp - 0x16], bl        ; 38 5E EA
        je      L_13A1                          ; 74 33
        mov     byte ptr [bp - 0x16], bl        ; 88 5E EA
        mov     cl, byte ptr cs:[bx + 0xe2]     ; 2E 8A 8F E2 00
        xor     ch, ch                          ; 32 ED
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0xba]     ; 2E 8B B7 BA 00
        mov     bx, di                          ; 8B DF
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x11d7                      ; BE D7 11
        mov     cl, 4                           ; B1 04
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_1393                          ; 74 05
        mov     si, 0x11d0                      ; BE D0 11
        mov     cl, 0xb                         ; B1 0B
;   [conditional branch target (if/else)] L_1393
L_1393:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, di                          ; 2B C7
        add     ax, 6                           ; 05 06 00
        mov     byte ptr es:[di - 2], al        ; 26 88 45 FE
;   [branch target] L_13A1
L_13A1:
        lds     di, ptr [bp - 0xe]              ; C5 7E F2
        mov     si, dx                          ; 8B F2
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     bh, byte ptr [bp - 0x15]        ; 8A 7E EB
        mov     bl, byte ptr [bp - 0xf]         ; 8A 5E F1
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        push    bp                              ; 55
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        mov     word ptr [bp - 0xc], ds         ; 8C 5E F4
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     byte ptr [bp - 0xf], bl         ; 88 5E F1
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
;   [unconditional branch target] L_13C3
L_13C3:
        pop     si                              ; 5E
        pop     ds                              ; 1F
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        mov     dx, ax                          ; 8B D0
        lodsw   ax, word ptr [si]               ; AD
        mov     cx, ax                          ; 8B C8
        pop     ax                              ; 58
        jmp     L_12D1                          ; E9 01 FF
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13D0   offset=0x13D0  size=50 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_13D0
L_13D0:
        lds     si, ptr [bp + 0xa]              ; C5 76 0A
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     dh, byte ptr [si + 4]           ; 8A 74 04
        mov     bx, word ptr [si]               ; 8B 1C
        dec     bx                              ; 4B
        and     bx, 0xf                         ; 81 E3 0F 00
        jcxz    L_13F9                          ; E3 17
        cmp     ax, 2                           ; 3D 02 00
        je      L_13F9                          ; 74 12
        or      dh, dh                          ; 0A F6
        je      L_13F3                          ; 74 08
        and     bl, 0xfb                        ; 80 E3 FB
        or      bl, 8                           ; 80 CB 08
        jmp     L_13F9                          ; EB 06
;   [conditional branch target (if/else)] L_13F3
L_13F3:
        and     bl, 0xfe                        ; 80 E3 FE
        or      bl, 2                           ; 80 CB 02
;   [branch target] L_13F9
L_13F9:
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
        lea     di, [bp - 0x94]                 ; 8D BE 6C FF
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        mov     cx, cs                          ; 8C C9
        mov     ds, cx                          ; 8E D9
        mov     si, 0x11b3                      ; BE B3 11
        mov     cx, 9                           ; B9 09 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_142C                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_142C                          ; 75 0B
        mov     si, 0x11bc                      ; BE BC 11
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     byte ptr es:[di - 1], dh        ; 26 88 75 FF
;   [conditional branch target (if/else)] L_142C
L_142C:
        mov     cl, byte ptr cs:[bx + 0x19ce]   ; 2E 8A 8F CE 19
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x19ae]   ; 2E 8B B7 AE 19
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x11c6                      ; BE C6 11
        ; constant WM_SIZE
        mov     cl, 5                           ; B1 05
        cmp     byte ptr [bp - 9], 0xff         ; 80 7E F7 FF
        je      L_144F                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        je      L_144F                          ; 74 05
        mov     si, 0x11c2                      ; BE C2 11
        mov     cl, 7                           ; B1 07
;   [conditional branch target (if/else)] L_144F
L_144F:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bp - 4], di           ; 89 7E FC
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (180 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1455   offset=0x1455  size=180 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_13D0, L_1455, L_160A, L_1828
;-------------------------------------------------------------------------
;   [sub-routine] L_1455
L_1455:
        lea     ax, [bp - 0x8f]                 ; 8D 86 71 FF
        sub     ax, di                          ; 2B C7
        mov     si, 0x11db                      ; BE DB 11
        mov     cx, 0x15                        ; B9 15 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        add     byte ptr es:[di - 0xf], al      ; 26 00 45 F1
        add     byte ptr es:[di - 5], al        ; 26 00 45 FB
        test    bl, 2                           ; F6 C3 02
        je      L_147A                          ; 74 0A
        mov     byte ptr es:[di - 0x14], 0xc3   ; 26 C6 45 EC C3
        mov     byte ptr es:[di - 0xd], 0x4f    ; 26 C6 45 F3 4F
;   [conditional branch target (if/else)] L_147A
L_147A:
        mov     ah, bl                          ; 8A E3
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     cl, byte ptr cs:[bx + 0x19ce]   ; 2E 8A 8F CE 19
        mov     al, cl                          ; 8A C1
        add     bx, bx                          ; 03 DB
        mov     si, word ptr cs:[bx + 0x19ae]   ; 2E 8B B7 AE 19
        mov     bl, ah                          ; 8A DC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     si, 0x11f0                      ; BE F0 11
        mov     cl, 9                           ; B1 09
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        test    bl, 2                           ; F6 C3 02
        je      L_14A2                          ; 74 05
        mov     byte ptr es:[di - 7], 0x4f      ; 26 C6 45 F9 4F
;   [error/early exit] L_14A2
L_14A2:
        sub     byte ptr es:[di - 2], al        ; 26 28 45 FE
        ret                                     ; C3
;   [unconditional branch target] L_14A7
L_14A7:
        lds     si, ptr [bp + 0x1e]             ; C5 76 1E
        mov     cx, word ptr [si]               ; 8B 0C
        jcxz    L_14C9                          ; E3 1B
        lds     bx, ptr [bp + 0x16]             ; C5 5E 16
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     di, dx                          ; 8B FA
        mov     cx, word ptr [bx + 4]           ; 8B 4F 04
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        dec     si                              ; 4E
        jle     L_14F2                          ; 7E 33
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     si, word ptr [bx + si + 2]      ; 8B 70 02
        call    L_1828                          ; E8 5F 03
;   [conditional branch target (if/else)] L_14C9
L_14C9:
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     dx, bx                          ; 8B D3
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     cx, ax                          ; 8B C8
        or      cx, di                          ; 0B CF
        je      L_14F5                          ; 74 18
        mov     ds, ax                          ; 8E D8
        mov     cx, word ptr [di + 8]           ; 8B 4D 08
        mov     si, 0xffff                      ; BE FF FF
        cmp     cx, 3                           ; 83 F9 03
        ja      L_14F2                          ; 77 08
        cmp     cx, 1                           ; 83 F9 01
        jne     L_1502                          ; 75 13
;   [loop start] L_14EF
L_14EF:
        jmp     L_124A                          ; E9 58 FD
;   [conditional branch target (if/else)] L_14F2
L_14F2:
        jmp     L_1250                          ; E9 5B FD
;   [conditional branch target (if/else)] L_14F5
L_14F5:
        lds     di, ptr [bp + 0x12]             ; C5 7E 12
        cmp     word ptr [di + 1], 5            ; 83 7D 01 05
        je      L_14EF                          ; 74 F1
        xor     bx, bx                          ; 33 DB
        xor     si, si                          ; 33 F6
;   [conditional branch target (if/else)] L_1502
L_1502:
        and     bx, 7                           ; 81 E3 07 00
        mov     al, byte ptr [bx + di]          ; 8A 01
        mov     byte ptr [bp - 0x15], al        ; 88 46 EB
        mov     word ptr [bp - 0xa], 0xffff     ; C7 46 F6 FF FF
        mov     cx, si                          ; 8B CE
        call    L_13D0                          ; E8 BB FE
        mov     bl, 8                           ; B3 08
        call    L_1455                          ; E8 3B FF
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        lds     si, ptr [bp + 0x16]             ; C5 76 16
        add     si, 4                           ; 83 C6 04
;   [loop start] L_1523
L_1523:
        dec     ax                              ; 48
        jg      L_1529                          ; 7F 03
        jmp     L_124A                          ; E9 21 FD
;   [conditional branch target (if/else)] L_1529
L_1529:
        push    ax                              ; 50
        lodsw   ax, word ptr [si]               ; AD
        mov     bx, ax                          ; 8B D8
        mov     cx, bx                          ; 8B CB
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     di, ax                          ; 8B F8
        and     bx, 7                           ; 81 E3 07 00
        mov     bl, byte ptr cs:[bx + 0x17a]    ; 2E 8A 9F 7A 01
        mov     bh, byte ptr [bp - 0x15]        ; 8A 7E EB
        lodsw   ax, word ptr [si]               ; AD
        push    ds                              ; 1E
        push    si                              ; 56
        sub     ax, cx                          ; 2B C1
        mov     si, ax                          ; 8B F0
        push    bp                              ; 55
        mov     ds, word ptr [bp - 0xc]         ; 8E 5E F4
        lcall   [bp - 8]                        ; FF 5E F8
        pop     bp                              ; 5D
        pop     si                              ; 5E
        pop     ds                              ; 1F
        pop     ax                              ; 58
        jmp     L_1523                          ; EB C9
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [bp + 0xe], 1          ; 83 7E 0E 01
        je      L_159D                          ; 74 16
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        je      L_15C5                          ; 74 38
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_1590
L_1590:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [conditional branch target (if/else)] L_159D
L_159D:
        xor     si, si                          ; 33 F6
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
;   [loop start] L_15A5
L_15A5:
        mov     word ptr [bp - 0xe], si         ; 89 76 F2
        xor     di, di                          ; 33 FF
;   [loop start] L_15AA
L_15AA:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        call    L_160A                          ; E8 53 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_15AA                          ; 75 ED
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jb      L_15A5                          ; 72 E2
;   [loop start] L_15C3
L_15C3:
        jmp     L_1590                          ; EB CB
;   [conditional branch target (if/else)] L_15C5
L_15C5:
        xor     di, di                          ; 33 FF
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     di, 0xa                         ; BF 0A 00
;   [loop start] L_15D0
L_15D0:
        mov     ax, word ptr cs:[di - 2]        ; 2E 8B 85 FE FF
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_160A                          ; E8 2A 00
        sub     di, 2                           ; 83 EF 02
        jne     L_15D0                          ; 75 EB
        mov     word ptr [bp - 0xe], 2          ; C7 46 F2 02 00
        ; constant WM_SIZE
        mov     si, 5                           ; BE 05 00
;   [loop start] L_15ED
L_15ED:
        mov     word ptr [bp - 8], si           ; 89 76 F8
        xor     di, di                          ; 33 FF
;   [loop start] L_15F2
L_15F2:
        mov     ax, di                          ; 8B C7
        xor     ah, ah                          ; 32 E4
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        call    L_160A                          ; E8 0B 00
        xor     di, 0xffff                      ; 81 F7 FF FF
        jne     L_15F2                          ; 75 ED
        dec     si                              ; 4E
        jns     L_15ED                          ; 79 E5
        jmp     L_15C3                          ; EB B9
; Description (heuristic):
;   Pure computation / dispatcher (149 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_160A   offset=0x160A  size=149 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=5, ASM=4)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_175A, L_1BA8
;-------------------------------------------------------------------------
;   [sub-routine] L_160A
L_160A:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        je      L_15C3                          ; 74 A6
        jmp     bx                              ; FF E3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        or      bx, bx                          ; 0B DB
        jns     L_1639                          ; 79 03
        jmp     L_1746                          ; E9 0D 01
;   [conditional branch target (if/else)] L_1639
L_1639:
        lds     si, ptr [bp + 0xe]              ; C5 76 0E
        dec     bx                              ; 4B
        cmp     bx, 2                           ; 83 FB 02
        jg      L_1659                          ; 7F 17
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_1651                          ; 74 05
        jmp     word ptr cs:[bx + 0x17b1]       ; 2E FF A7 B1 17
;   [conditional branch target (if/else)] L_1651
L_1651:
        mov     ax, word ptr cs:[bx + 0x17b7]   ; 2E 8B 87 B7 17
        jmp     L_174D                          ; E9 F4 00
;   [conditional branch target (if/else)] L_1659
L_1659:
        jmp     L_174B                          ; E9 EF 00
        mov     cx, word ptr [si]               ; 8B 0C
        cmp     cx, 5                           ; 83 F9 05
        je      L_1671                          ; 74 0E
        cmp     word ptr [si + 2], 2            ; 83 7C 02 02
        jb      L_166C                          ; 72 03
;   [loop start] L_1669
L_1669:
        mov     cx, 0                           ; B9 00 00
;   [conditional branch target (if/else)] L_166C
L_166C:
        cmp     cx, 5                           ; 83 F9 05
        jg      L_1669                          ; 7F F8
;   [conditional branch target (if/else)] L_1671
L_1671:
        lea     si, [si + 6]                    ; 8D 74 06
        call    L_175A                          ; E8 E3 00
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_1746                          ; E9 C5 00
        mov     di, ss                          ; 8C D7
        mov     es, di                          ; 8E C7
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        mov     bx, word ptr [si]               ; 8B 1C
        cmp     bx, 3                           ; 83 FB 03
        jle     L_1692                          ; 7E 03
        mov     bx, 0                           ; BB 00 00
;   [conditional branch target (if/else)] L_1692
L_1692:
        add     bx, bx                          ; 03 DB
        jmp     word ptr cs:[bx + 0x1779]       ; 2E FF A7 79 17
        lea     di, [di + 8]                    ; 8D 7D 08
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        jmp     L_1721                          ; E9 7F 00
;   [loop start] L_16A2
L_16A2:
        lea     si, [si + 2]                    ; 8D 74 02
        call    L_175A                          ; E8 B2 00
;   [loop start] L_16A8
L_16A8:
        mov     ax, bx                          ; 8B C3
        cdq                                     ; 99
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        div     si                              ; F7 F6
        mov     dx, ax                          ; 8B D0
        xor     si, si                          ; 33 F6
        call    L_1BA8                          ; E8 F1 04
        or      si, si                          ; 0B F6
        je      L_16C9                          ; 74 0E
        add     si, si                          ; 03 F6
        mov     ax, word ptr cs:[si + 0x16cc]   ; 2E 8B 84 CC 16
        sub     di, 8                           ; 83 EF 08
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
;   [conditional branch target (if/else)] L_16C9
L_16C9:
        mov     bx, 0                           ; BB 00 00
        jmp     L_1721                          ; EB 53
        mov     byte ptr [bp + si], ah          ; 88 22
        stosb   byte ptr es:[di], al            ; AA
        push    bp                              ; 55
        fnsave  dword ptr [bx - 0x3b]           ; DD 77 C5
        je      L_16D9                          ; 74 02
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        dec     dx                              ; 4A
        lds     si, ptr [si + 0xa]              ; C5 74 0A
        mov     cx, 8                           ; B9 08 00
;   [loop iteration target] L_16E1
L_16E1:
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     si, dx                          ; 03 F2
        loop    L_16E1                          ; E2 FB
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_1721                          ; EB 36
        nop                                     ; 90
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        cmp     cx, 5                           ; 83 F9 05
        jg      L_16A2                          ; 7F AE
        lea     si, [si + 8]                    ; 8D 74 08
        call    L_175A                          ; E8 60 00
        push    ax                              ; 50
        lea     si, [si - 6]                    ; 8D 74 FA
        call    L_175A                          ; E8 59 00
        pop     dx                              ; 5A
        cmp     dx, ax                          ; 3B D0
        je      L_16A8                          ; 74 A2
        mov     dx, ax                          ; 8B D0
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        mov     bx, cx                          ; 8B D9
        lea     si, [bx + 0x1781]               ; 8D B7 81 17
        mov     bx, 2                           ; BB 02 00
        mov     cx, 4                           ; B9 04 00
;   [loop iteration target] L_171A
L_171A:
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        xor     ax, dx                          ; 33 C2
        stosw   word ptr es:[di], ax            ; AB
        loop    L_171A                          ; E2 F9
;   [unconditional branch target] L_1721
L_1721:
        mov     dx, 7                           ; BA 07 00
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        and     cl, dl                          ; 22 CA
        mov     ch, dl                          ; 8A EA
        lea     si, [di - 8]                    ; 8D 75 F8
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     word ptr es:[di + 8], bx        ; 26 89 5D 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
;   [loop start] L_1738
L_1738:
        lodsb   al, byte ptr ss:[si]            ; 36 AC
        ror     al, cl                          ; D2 C8
        and     bx, dx                          ; 23 DA
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        dec     ch                              ; FE CD
        jns     L_1738                          ; 79 F2
;   [unconditional branch target] L_1746
L_1746:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_174D                          ; EB 03
        nop                                     ; 90
;   [unconditional branch target] L_174B
L_174B:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_174D
L_174D:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_175A   offset=0x175A  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_175A
L_175A:
        mov     ax, word ptr [si]               ; 8B 04
        mov     dl, byte ptr [si + 2]           ; 8A 54 02
; Description (heuristic):
;   Pure computation / dispatcher (103 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_175F   offset=0x175F  size=103 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=4)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_175F
;-------------------------------------------------------------------------
;   [sub-routine] L_175F
L_175F:
        xor     dh, dh                          ; 32 F6
        xor     bx, bx                          ; 33 DB
        xchg    bl, ah                          ; 86 E3
        add     bx, ax                          ; 03 D8
        add     bx, dx                          ; 03 DA
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dl, al                          ; 8A D0
        cmp     bx, 0x17e                       ; 81 FB 7E 01
        jge     L_1778                          ; 7D 04
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
;   [error/early exit] L_1778
L_1778:
        ret                                     ; C3
        mov     byte ptr [0x9916], al           ; A2 16 99
        push    ss                              ; 16
        in      al, dx                          ; EC
        push    ss                              ; 16
        aam     0x16                            ; D4 16
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        push    di                              ; FF F7
        div     di                              ; F7 F7
        div     di                              ; F7 F7
        div     di                              ; F7 F7
        idiv    word ptr [bx - 0x41]            ; F7 7F BF
        fucompi st(7)                           ; DF EF
        idiv    bx                              ; F7 FB
        std                                     ; FD
        db      0feh                            ; FE
        db      0feh                            ; FE
        std                                     ; FD
        sti                                     ; FB
        imul    di                              ; F7 EF
        fistp   qword ptr [bx - 0x881]          ; DF BF 7F F7
        div     di                              ; F7 F7
        test    word ptr [bx + si], 0xf7f7      ; F7 00 F7 F7
        idiv    word ptr [bp - 0x43]            ; F7 7E BD
        db      0dbh                            ; DB
        out     0xe7, ax                        ; E7 E7
        fstp    xword ptr [di + 0x5c7e]         ; DB BD 7E 5C
        push    ss                              ; 16
        adc     word ptr [0x174b], 3            ; 81 16 4B 17 03 00
        or      al, byte ptr [bx + si]          ; 0A 00
        add     byte ptr [bx + si], al          ; 00 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dl, byte ptr [bp + 0xc]         ; 8A 56 0C
        call    L_175F                          ; E8 8E FF
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      di, word ptr [bp + 8]           ; 0B 7E 08
        je      L_17E1                          ; 74 08
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr es:[di], dx            ; 26 89 15
;   [conditional branch target (if/else)] L_17E1
L_17E1:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [bp + 0xe], 4          ; 83 7E 0E 04
        je      L_1806                          ; 74 06
        cmp     word ptr [bp + 0xe], 5          ; 83 7E 0E 05
        jne     L_181C                          ; 75 16
;   [conditional branch target (if/else)] L_1806
L_1806:
        lds     di, ptr [bp + 0xa]              ; C5 7E 0A
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     bx, 1                           ; 83 FB 01
        ja      L_181C                          ; 77 0C
        sub     ax, bx                          ; 2B C3
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [conditional branch target (if/else)] L_181C
L_181C:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1828   offset=0x1828  size=26 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0211, L_187C
;-------------------------------------------------------------------------
;   [sub-routine] L_1828
L_1828:
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        and     cl, 0xf8                        ; 80 E1 F8
        or      si, 7                           ; 81 CE 07 00
        mov     word ptr [0x454], cx            ; 89 0E 54 04
        mov     word ptr [0x456], dx            ; 89 16 56 04
        mov     word ptr [0x458], si            ; 89 36 58 04
        mov     word ptr [0x45a], di            ; 89 3E 5A 04
        mov     byte ptr [0x453], 1             ; C6 06 53 04 01
        mov     cl, 0xc0                        ; B1 C0
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     bx, word ptr [0x22]             ; 8B 1E 22 00
        call    L_187C                          ; E8 25 00
        jae     L_1874                          ; 73 1B
        je      L_1874                          ; 74 19
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x464], cl            ; 86 0E 64 04
        push    cx                              ; 51
        mov     byte ptr [0x452], 0x40          ; C6 06 52 04 40
        sti                                     ; FB
        call    L_0211                          ; E8 A6 E9
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        pop     ax                              ; 58
        mov     byte ptr [0x464], al            ; A2 64 04
;   [conditional branch target (if/else)] L_1874
L_1874:
        jmp     L_1877                          ; EB 01
; Description (heuristic):
;   Internal helper (4 instructions).

;-------------------------------------------------------------------------
; sub_1876   offset=0x1876  size=4 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_1876
;-------------------------------------------------------------------------
;   [sub-routine] L_1876
L_1876:
        iret                                    ; CF
;   [unconditional branch target] L_1877
L_1877:
        push    cs                              ; 0E
        call    L_1876                          ; E8 FB FF
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_187C   offset=0x187C  size=20 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_187C
L_187C:
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        test    byte ptr [0x452], cl            ; 84 0E 52 04
        jne     L_18B3                          ; 75 2C
        xor     cx, cx                          ; 33 C9
        cmp     byte ptr [0x453], cl            ; 38 0E 53 04
        je      L_18B0                          ; 74 21
        cmp     ax, word ptr [0x458]            ; 3B 06 58 04
        jg      L_18B0                          ; 7F 1B
        add     ax, word ptr [0x30]             ; 03 06 30 00
        cmp     ax, word ptr [0x454]            ; 3B 06 54 04
        jl      L_18B0                          ; 7C 11
        cmp     bx, word ptr [0x45a]            ; 3B 1E 5A 04
        jg      L_18B0                          ; 7F 0B
        add     bx, 0x1f                        ; 81 C3 1F 00
        cmp     bx, word ptr [0x456]            ; 3B 1E 56 04
        jl      L_18B0                          ; 7C 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_18B0
L_18B0:
        or      cx, cx                          ; 0B C9
        stc                                     ; F9
;   [error/early exit] L_18B3
L_18B3:
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (69 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_18B4   offset=0x18B4  size=69 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_01E1, L_0211
;-------------------------------------------------------------------------
;   [sub-routine] L_18B4
L_18B4:
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        mov     byte ptr [0x453], 0             ; C6 06 53 04 00
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     si, 0x1c                        ; BE 1C 00
        mov     ax, 4                           ; B8 04 00
        mov     cx, ax                          ; 8B C8
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x464], cl            ; 86 0E 64 04
        jcxz    L_195F                          ; E3 65
        mov     byte ptr [0x452], 0x80          ; C6 06 52 04 80
        pushf                                   ; 9C
        cli                                     ; FA
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x460], ax            ; 87 06 60 04
        add     word ptr [0x45c], ax            ; 01 06 5C 04
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [0x462], ax            ; 87 06 62 04
        add     word ptr [0x45e], ax            ; 01 06 5E 04
        sti                                     ; FB
        call    L_0211                          ; E8 F8 E8
        cld                                     ; FC
        mov     es, word ptr cs:[0x19f7]        ; 2E 8E 06 F7 19
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ds                          ; 8C D8
        or      ax, si                          ; 0B C6
        je      L_1952                          ; 74 2A
        ; constant VK_SHIFT
        mov     di, 0x10                        ; BF 10 00
        mov     cx, 6                           ; B9 06 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        call    L_01E1                          ; E8 AE E8
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        cli                                     ; FA
        mov     ax, word ptr [0x10]             ; A1 10 00
        mov     word ptr [0x460], ax            ; A3 60 04
        sub     word ptr [0x45c], ax            ; 29 06 5C 04
        mov     ax, word ptr [0x12]             ; A1 12 00
        mov     word ptr [0x462], ax            ; A3 62 04
        sub     word ptr [0x45e], ax            ; 29 06 5E 04
        mov     byte ptr [0x452], 0x40          ; C6 06 52 04 40
;   [conditional branch target (if/else)] L_1952
L_1952:
        jmp     L_1955                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (158 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1954   offset=0x1954  size=158 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0182, L_01A6, L_1954
;-------------------------------------------------------------------------
;   [sub-routine] L_1954
L_1954:
        iret                                    ; CF
;   [unconditional branch target] L_1955
L_1955:
        push    cs                              ; 0E
        call    L_1954                          ; E8 FB FF
        mov     byte ptr es:[0x464], 1          ; 26 C6 06 64 04 01
;   [conditional branch target (if/else)] L_195F
L_195F:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        xor     al, al                          ; 32 C0
        ret                                     ; C3
        not     al                              ; F6 D0
        and     al, ah                          ; 22 C4
        ret                                     ; C3
        not     al                              ; F6 D0
        ret                                     ; C3
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        not     ah                              ; F6 D4
        ret                                     ; C3
        mov     al, ah                          ; 8A C4
        ret                                     ; C3
        mov     al, ah                          ; 8A C4
        not     al                              ; F6 D0
        ret                                     ; C3
        xor     al, ah                          ; 32 C4
        ret                                     ; C3
        xor     al, ah                          ; 32 C4
        not     al                              ; F6 D0
        ret                                     ; C3
        and     al, ah                          ; 22 C4
        ret                                     ; C3
        and     al, ah                          ; 22 C4
        not     al                              ; F6 D0
        ret                                     ; C3
        not     al                              ; F6 D0
        or      al, ah                          ; 0A C4
        ret                                     ; C3
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        not     ah                              ; F6 D4
        ret                                     ; C3
        or      al, ah                          ; 0A C4
        ret                                     ; C3
        or      al, ah                          ; 0A C4
        not     al                              ; F6 D0
        ret                                     ; C3
        mov     al, 0xff                        ; B0 FF
        ret                                     ; C3
        ret                                     ; C3
        insb    byte ptr es:[di], dx            ; 6C
        sbb     word ptr [di + 0x6f19], sp      ; 19 A5 19 6F
        sbb     word ptr [si + 0x19], si        ; 19 74 19
        ja      L_19D1                          ; 77 19
        sbb     word ptr [bx + di], 0x1986      ; 81 19 86 19
        xchg    cx, ax                          ; 91
        sbb     word ptr [bp - 0x76e7], cx      ; 19 8E 19 89
        sbb     word ptr [bp + 0x19], di        ; 19 7E 19
        xchg    si, ax                          ; 96
        sbb     word ptr [di - 0x64e7], bp      ; 19 AD 19 9B
        sbb     word ptr [bp + si - 0x55e7], sp ; 19 A2 19 AA
        sbb     word ptr [bp + si], ax          ; 19 02
        add     al, 4                           ; 04 04
;   [conditional branch target (if/else)] L_19D1
L_19D1:
        add     al, byte ptr [0x204]            ; 02 06 04 02
        add     al, 2                           ; 04 02
        add     al, 2                           ; 04 02
        add     al, 0                           ; 04 00
        push    es                              ; 06
        add     al, byte ptr [bp + si]          ; 02 02
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0xffff                      ; B8 FF FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        cld                                     ; FC
        les     di, ptr [bp + 0x14]             ; C4 7E 14
        and     word ptr [bp + 0x12], 1         ; 81 66 12 01 00
        jne     L_1A1F                          ; 75 0E
        lea     si, [0xf2]                      ; 8D 36 F2 00
        mov     cx, 0x20                        ; B9 20 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        call    L_0182                          ; E8 65 E7
        jmp     L_1A2A                          ; EB 0B
;   [conditional branch target (if/else)] L_1A1F
L_1A1F:
        lea     si, [0x112]                     ; 8D 36 12 01
        mov     cx, 0x68                        ; B9 68 00
        mov     ax, cx                          ; 8B C1
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [unconditional branch target] L_1A2A
L_1A2A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        lds     si, ptr [bp + 6]                ; C5 76 06
        call    L_01A6                          ; E8 5D E7
        mov     ax, 0xffff                      ; B8 FF FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0x460]            ; 2B 06 60 04
        mov     word ptr [0x45c], ax            ; A3 5C 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        sub     bx, word ptr [0x462]            ; 2B 1E 62 04
        mov     word ptr [0x45e], bx            ; 89 1E 5E 04
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x464], cl            ; 86 0E 64 04
;   [loop start] L_1A82
L_1A82:
        jmp     L_1A85                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1A84   offset=0x1A84  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0211, L_187C, L_1A84
;-------------------------------------------------------------------------
;   [sub-routine] L_1A84
L_1A84:
        iret                                    ; CF
;   [unconditional branch target] L_1A85
L_1A85:
        push    cs                              ; 0E
        call    L_1A84                          ; E8 FB FF
        jcxz    L_1AEB                          ; E3 60
        mov     word ptr [0x20], ax             ; A3 20 00
        mov     word ptr [0x22], bx             ; 89 1E 22 00
        mov     cl, 0xc0                        ; B1 C0
        call    L_187C                          ; E8 E5 FD
        jae     L_1AB1                          ; 73 18
        je      L_1AB8                          ; 74 1D
        or      byte ptr [0x452], 0x40          ; 80 0E 52 04 40
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0211                          ; E8 6C E7
        jmp     L_1AA8                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1AA7   offset=0x1AA7  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_01FF, L_1AA7
;-------------------------------------------------------------------------
;   [sub-routine] L_1AA7
L_1AA7:
        iret                                    ; CF
;   [unconditional branch target] L_1AA8
L_1AA8:
        push    cs                              ; 0E
        call    L_1AA7                          ; E8 FB FF
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
;   [conditional branch target (if/else)] L_1AB1
L_1AB1:
        mov     byte ptr [0x464], 1             ; C6 06 64 04 01
        jmp     L_1AEB                          ; EB 33
;   [conditional branch target (if/else)] L_1AB8
L_1AB8:
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_01FF                          ; E8 42 E7
        jmp     L_1AC0                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1ABF   offset=0x1ABF  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1ABF
;-------------------------------------------------------------------------
;   [sub-routine] L_1ABF
L_1ABF:
        iret                                    ; CF
;   [unconditional branch target] L_1AC0
L_1AC0:
        push    cs                              ; 0E
        call    L_1ABF                          ; E8 FB FF
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        pushf                                   ; 9C
        cli                                     ; FA
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     ax, word ptr [0x45c]            ; A1 5C 04
        mov     bx, word ptr [0x45e]            ; 8B 1E 5E 04
        cmp     ax, word ptr [0x20]             ; 3B 06 20 00
        jne     L_1A82                          ; 75 A8
        cmp     bx, word ptr [0x22]             ; 3B 1E 22 00
        jne     L_1A82                          ; 75 A2
        mov     byte ptr [0x464], cl            ; 88 0E 64 04
        jmp     L_1AE7                          ; EB 01
; Description (heuristic):
;   Pure computation / dispatcher (33 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1AE6   offset=0x1AE6  size=33 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1AE6
;-------------------------------------------------------------------------
;   [sub-routine] L_1AE6
L_1AE6:
        iret                                    ; CF
;   [unconditional branch target] L_1AE7
L_1AE7:
        push    cs                              ; 0E
        call    L_1AE6                          ; E8 FB FF
;   [branch target] L_1AEB
L_1AEB:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        xor     cx, cx                          ; 33 C9
        xchg    byte ptr [0x464], cl            ; 86 0E 64 04
        jcxz    L_1B70                          ; E3 63
        mov     al, byte ptr [0x452]            ; A0 52 04
        add     al, al                          ; 02 C0
        jb      L_1B8F                          ; 72 7B
        jns     L_1B8F                          ; 79 79
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x45c]            ; A1 5C 04
        mov     bx, word ptr [0x45e]            ; 8B 1E 5E 04
;   [loop start] L_1B1F
L_1B1F:
        jmp     L_1B22                          ; EB 01
; Description (heuristic):
;   Internal helper (14 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1B21   offset=0x1B21  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_01FF, L_187C, L_1B21
;-------------------------------------------------------------------------
;   [sub-routine] L_1B21
L_1B21:
        iret                                    ; CF
;   [unconditional branch target] L_1B22
L_1B22:
        push    cs                              ; 0E
        call    L_1B21                          ; E8 FB FF
        mov     si, ax                          ; 8B F0
        mov     di, bx                          ; 8B FB
        xor     cx, cx                          ; 33 C9
        call    L_187C                          ; E8 4D FD
        jne     L_1B72                          ; 75 41
        mov     word ptr [0x20], si             ; 89 36 20 00
        mov     word ptr [0x22], di             ; 89 3E 22 00
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_01FF                          ; E8 C1 E6
        jmp     L_1B41                          ; EB 01
; Description (heuristic):
;   Internal helper (15 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1B40   offset=0x1B40  size=15 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_1B40
;-------------------------------------------------------------------------
;   [sub-routine] L_1B40
L_1B40:
        iret                                    ; CF
;   [unconditional branch target] L_1B41
L_1B41:
        push    cs                              ; 0E
        call    L_1B40                          ; E8 FB FF
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        mov     byte ptr [0x452], 0             ; C6 06 52 04 00
        pushf                                   ; 9C
        cli                                     ; FA
        mov     ax, word ptr [0x45c]            ; A1 5C 04
        mov     bx, word ptr [0x45e]            ; 8B 1E 5E 04
        cmp     ax, word ptr [0x20]             ; 3B 06 20 00
        jne     L_1B1F                          ; 75 C1
        cmp     bx, word ptr [0x22]             ; 3B 1E 22 00
        jne     L_1B1F                          ; 75 BB
        mov     byte ptr [0x464], 1             ; C6 06 64 04 01
        jmp     L_1B6C                          ; EB 01
; Description (heuristic):
;   Internal helper (10 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1B6B   offset=0x1B6B  size=10 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0211, L_1B6B
;-------------------------------------------------------------------------
;   [sub-routine] L_1B6B
L_1B6B:
        iret                                    ; CF
;   [unconditional branch target] L_1B6C
L_1B6C:
        push    cs                              ; 0E
        call    L_1B6B                          ; E8 FB FF
;   [conditional branch target (if/else)] L_1B70
L_1B70:
        jmp     L_1B94                          ; EB 22
;   [conditional branch target (if/else)] L_1B72
L_1B72:
        test    byte ptr [0x452], 0x40          ; F6 06 52 04 40
        jne     L_1B8F                          ; 75 16
        pushf                                   ; 9C
        sti                                     ; FB
        call    L_0211                          ; E8 93 E6
        jmp     L_1B81                          ; EB 01
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_1B80   offset=0x1B80  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_1B80
;-------------------------------------------------------------------------
;   [sub-routine] L_1B80
L_1B80:
        iret                                    ; CF
;   [unconditional branch target] L_1B81
L_1B81:
        push    cs                              ; 0E
        call    L_1B80                          ; E8 FB FF
        mov     ds, word ptr cs:[0x19f7]        ; 2E 8E 1E F7 19
        mov     byte ptr [0x452], 0x40          ; C6 06 52 04 40
;   [conditional branch target (if/else)] L_1B8F
L_1B8F:
        mov     byte ptr [0x464], 1             ; C6 06 64 04 01
;   [unconditional branch target] L_1B94
L_1B94:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        add     byte ptr [bx + di], al          ; 00 01
        add     word ptr [bx + si], ax          ; 01 00
        add     byte ptr [bx + di], al          ; 00 01
        add     byte ptr [bx + di], al          ; 00 01
; Description (heuristic):
;   Pure computation / dispatcher (50 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1BA8   offset=0x1BA8  size=50 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_1BA8
L_1BA8:
        mov     ax, cs                          ; 8C C8
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        xor     bh, bh                          ; 32 FF
        shr     dl, 1                           ; D0 EA
        adc     dl, al                          ; 12 D0
        shr     dl, 1                           ; D0 EA
        ; constant WM_MOVE
        mov     dh, 3                           ; B6 03
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        cmp     dl, 0x10                        ; 80 FA 10
        je      L_1BCF                          ; 74 09
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        cmp     dl, 0x30                        ; 80 FA 30
        je      L_1BCF                          ; 74 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_1BCF
L_1BCF:
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        or      si, ax                          ; 0B F0
;   [loop start] L_1BD5
L_1BD5:
        dec     dl                              ; FE CA
        jl      L_1C00                          ; 7C 27
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     cl, dh                          ; 8A CE
        mov     ch, dl                          ; 8A EA
;   [loop iteration target] L_1BDF
L_1BDF:
        shl     ax, 1                           ; D1 E0
        ; constant WM_SETTEXT
        mov     bl, ch                          ; 8A DD
        and     bl, dh                          ; 22 DE
        add     ah, byte ptr [bx + 0x1ba0]      ; 02 A7 A0 1B
        add     al, byte ptr [bx + 0x1ba4]      ; 02 87 A4 1B
        shr     ch, 1                           ; D0 ED
        shr     ch, 1                           ; D0 ED
        loop    L_1BDF                          ; E2 EC
        mov     bl, al                          ; 8A D8
        mov     cl, ah                          ; 8A CC
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        shr     al, cl                          ; D2 E8
        or      byte ptr es:[bx + di], al       ; 26 08 01
        jmp     L_1BD5                          ; EB D5
;   [error/early exit] L_1C00
L_1C00:
        add     di, 8                           ; 83 C7 08
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
; Description (heuristic):
;   Internal helper (19 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1C10   offset=0x1C10  size=19 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1C10
L_1C10:
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_1C2D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_1C2D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1C29                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1C29
L_1C29:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_1C2D
L_1C2D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

GENIUS_TEXT ENDS

        END
