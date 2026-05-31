; ======================================================================
; TERMINAL / seg3.asm   (segment 3 of TERMINAL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        19
; Total instructions:                 1279
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):           10
;   Unclear:                             8
;   Tiny / unclassified:                 1
; 
; Far API calls in this segment:     1 (1 unique)
;   Top:
;        1  MESSAGEBEEP
; ======================================================================
; AUTO-GENERATED from original TERMINAL segment 3
; segment_size=3029 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x52                        ; 83 EC 52
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        xor     di, di                          ; 33 FF
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_001C
L_001C:
        xor     cx, cx                          ; 33 C9
        xchg    word ptr [0x169], cx            ; 87 0E 69 01
        jcxz    L_0027                          ; E3 03
        jmp     L_00CE                          ; E9 A7 00
;   [conditional branch target (if/else)] L_0027
L_0027:
        mov     cx, word ptr [0x16d]            ; 8B 0E 6D 01
        jcxz    L_007D                          ; E3 50
        cmp     byte ptr [0x170], 1             ; 80 3E 70 01 01
        jne     L_004E                          ; 75 1A
;   [loop start] L_0034
L_0034:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jns     L_003C                          ; 79 03
        jmp     L_00D5                          ; E9 99 00
;   [conditional branch target (if/else)] L_003C
L_003C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        inc     bx                              ; 43
        mov     word ptr [bp + 8], bx           ; 89 5E 08
        cmp     al, 0x11                        ; 3C 11
        je      L_0034                          ; 74 EA
        cmp     al, 0x13                        ; 3C 13
        je      L_0034                          ; 74 E6
;   [conditional branch target (if/else)] L_004E
L_004E:
        xchg    di, ax                          ; 97
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, sp                          ; 8B C4
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
        pop     dx                              ; 5A
        mov     dh, al                          ; 8A F0
        mov     byte ptr [0x166], dl            ; 88 16 66 01
        xchg    di, ax                          ; 97
        xor     di, di                          ; 33 FF
        mov     cx, di                          ; 8B CF
        mov     byte ptr [0x170], cl            ; 88 0E 70 01
        mov     ch, byte ptr [0x173]            ; 8A 2E 73 01
        cmp     ch, 1                           ; 80 FD 01
        adc     ch, cl                          ; 12 E9
        xchg    word ptr [0x16d], di            ; 87 3E 6D 01
        call    di                              ; FF D7
        xor     di, di                          ; 33 FF
        jmp     L_001C                          ; EB 9F
;   [conditional branch target (if/else)] L_007D
L_007D:
        dec     word ptr [bp + 6]               ; FF 4E 06
        js      L_00CE                          ; 78 4C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        inc     bx                              ; 43
        mov     word ptr [bp + 8], bx           ; 89 5E 08
        cmp     al, 0x20                        ; 3C 20
        jb      L_00B2                          ; 72 22
        cmp     al, 0x7f                        ; 3C 7F
        je      L_00B2                          ; 74 1E
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        mov     ah, byte ptr [0x16f]            ; 8A 26 6F 01
        mov     word ptr [bp + di - 0x52], ax   ; 89 43 AE
        inc     di                              ; 47
        inc     di                              ; 47
        cmp     di, 0x50                        ; 83 FF 50
        jb      L_00AF                          ; 72 07
;   [loop start] L_00A8
L_00A8:
        or      di, di                          ; 0B FF
        je      L_00AF                          ; 74 03
        call    L_00ED                          ; E8 3E 00
;   [loop start (also forward branch)] L_00AF
L_00AF:
        jmp     L_001C                          ; E9 6A FF
;   [conditional branch target (if/else)] L_00B2
L_00B2:
        mov     si, 0x124                       ; BE 24 01
        call    L_0102                          ; E8 4A 00
        jae     L_00AF                          ; 73 F5
        mov     word ptr [0x16d], bx            ; 89 1E 6D 01
        mov     byte ptr [0x173], 0             ; C6 06 73 01 00
        cmp     al, 0x1b                        ; 3C 1B
        jne     L_00A8                          ; 75 E1
        mov     byte ptr [0x170], 1             ; C6 06 70 01 01
        jmp     L_00A8                          ; EB DA
;   [branch target] L_00CE
L_00CE:
        or      di, di                          ; 0B FF
        je      L_00D5                          ; 74 03
        call    L_00ED                          ; E8 18 00
;   [branch target] L_00D5
L_00D5:
        call    far _entry_36                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp - 0x54]        ; 2B 46 AC
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_00ED   offset=0x00ED  size=9 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_00ED
L_00ED:
        lea     bx, [bp - 0x52]                 ; 8D 5E AE
        mov     ax, di                          ; 8B C7
        shr     ax, 1                           ; D1 E8
        push    bx                              ; 53
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        or      word ptr [0x169], ax            ; 09 06 69 01
        xor     di, di                          ; 33 FF
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: MESSAGEBEEP.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0102   offset=0x0102  size=308 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   MESSAGEBEEP
;-------------------------------------------------------------------------
;   [sub-routine] L_0102
L_0102:
        cld                                     ; FC
        xchg    bx, ax                          ; 93
        jmp     L_010D                          ; EB 07
;   [loop start] L_0106
L_0106:
        mov     al, ah                          ; 8A C4
        cwde                                    ; 98
        add     ax, ax                          ; 03 C0
        sub     si, ax                          ; 2B F0
;   [unconditional branch target] L_010D
L_010D:
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        sub     al, bl                          ; 2A C3
        ja      L_0122                          ; 77 0F
        cmp     al, ah                          ; 3A C4
        jle     L_0106                          ; 7E EF
        cwde                                    ; 98
        add     ax, ax                          ; 03 C0
        sub     si, ax                          ; 2B F0
        lodsw   ax, word ptr cs:[si]            ; 2E AD
        cmp     ax, 1                           ; 3D 01 00
        cmc                                     ; F5
;   [conditional branch target (if/else)] L_0122
L_0122:
        xchg    bx, ax                          ; 93
        ret                                     ; C3
        pop     es                              ; 07
        stc                                     ; F9
        call    0xffffe12b                      ; E8 02 E0
        add     al, 7                           ; 04 07
        pop     es                              ; 07
        inc     word ptr [bp + si]              ; FF 02
        add     dh, dl                          ; F2 02 F2
        add     dh, dh                          ; 02 F6
        add     bl, byte ptr [bp + di]          ; 02 1B
        dec     sp                              ; FF CC
        pop     es                              ; 07
        db      0ffh                            ; FF
        lcall   [bp + di]                       ; FF 1B
        lcall   [bp + 7]                        ; FF 5E 07
        sub     ax, 0x2ffe                      ; 2D FE 2F
        pop     es                              ; 07
        pop     cx                              ; 59
        pop     es                              ; 07
        xor     bh, bh                          ; 30 FF
        popaw                                   ; 61
        pop     es                              ; 07
        cmp     al, 0xf6                        ; 3C F6
        stosb   byte ptr es:[di], al            ; AA
        add     ax, 0x592                       ; 05 92 05
        cwde                                    ; 98
        add     ax, 0x761                       ; 05 61 07
        ; constant WM_SIZE
        mov     dh, 5                           ; B6 05
        inc     sp                              ; 44
        add     ax, 0x561                       ; 05 61 05
        jmp     0xffffe15f                      ; E9 04 E0
        add     al, 0x57                        ; 04 57
        add     cx, word ptr [bx + si - 8]      ; 03 48 F8
        cld                                     ; FC
        add     al, 0x39                        ; 04 39
        add     si, word ptr [bp + si + 3]      ; 03 72 03
        test    byte ptr [bp + di], al          ; 84 03
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     al, 0x68                        ; 04 68
        add     al, 0x16                        ; 04 16
        add     al, 0xc8                        ; 04 C8
        add     ax, 0xfe59                      ; 05 59 FE
        pop     di                              ; 5F
        pop     es                              ; 07
        mov     ax, word ptr [0x6209]           ; A1 09 62
        ljmp    [bx + di + 3]                   ; FF 69 03
        imul    di, sp, 0x761                   ; 69 FC 61 07
        jl      L_0188                          ; 7C 08
        xchg    si, ax                          ; 96
        or      byte ptr [bp + 3], bh           ; 08 7E 03
        outsb   dx, byte ptr [si]               ; 6E
        xor     word ptr [bp + si], cx          ; F2 31 0A
;   [conditional branch target (if/else)] L_0188
L_0188:
        add     byte ptr [bp + di], 0xe6        ; 80 03 E6
        add     ax, 0x5ec                       ; 05 EC 05
        popaw                                   ; 61
        pop     es                              ; 07
        pop     bp                              ; 5D
        pop     es                              ; 07
        sahf                                    ; 9E
        add     ax, 0x5a4                       ; 05 A4 05
        or      word ptr [0x60f], ax            ; 09 06 0F 06
        pop     bx                              ; 5B
        pop     es                              ; 07
        pop     sp                              ; 5C
        pop     es                              ; 07
        inc     di                              ; 47
        or      cx, si                          ; 09 F1
        add     ax, 0xff7d                      ; 05 7D FF
        test    word ptr [di], 0xffff           ; F7 05 FF FF
        sbb     di, di                          ; 1B FF
        pop     si                              ; 5E
        pop     es                              ; 07
        and     bh, bh                          ; 20 FF
        popaw                                   ; 61
        pop     es                              ; 07
        and     di, di                          ; 23 FF
        popaw                                   ; 61
        pop     es                              ; 07
        sub     dl, bh                          ; 28 FA
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        aaa                                     ; 37
        db      0feh                            ; FE
        jo      L_01CE                          ; 70 08
        or      word ptr [bx + si], 0xfe3d      ; 81 08 3D FE
        xchg    dx, ax                          ; 92
        add     ax, 0x598                       ; 05 98 05
;   [conditional branch target (if/else)] L_01CE
L_01CE:
        inc     sp                              ; 44
        db      0feh                            ; FE
        add     cl, byte ptr [bx + si]          ; F2 02 08
        add     cx, word ptr [bx + si - 1]      ; 03 48 FF
        loop    L_01DE                          ; E2 06
        dec     bp                              ; 4D
        db      0ffh                            ; FF
        cmp     word ptr [bp + di], ax          ; 39 03
        pop     dx                              ; 5A
        dec     al                              ; FE C8
        or      word ptr [si + 8], cx           ; 09 4C 08
        pushaw                                  ; 60
        push    di                              ; FF F7
        add     ax, 0xfe62                      ; 05 62 FE
        int1                                    ; F1
        add     ax, 0x947                       ; 05 47 09
        db      0ffh                            ; FF
        jmp     word ptr [bx + si]              ; FF 20
        cld                                     ; FC
        popaw                                   ; 61
        pop     es                              ; 07
        pop     dx                              ; 5A
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        popaw                                   ; 61
        pop     es                              ; 07
        cmp     al, 0xff                        ; 3C FF
        inc     dx                              ; 42
        or      byte ptr [0x44f0], bh           ; 08 3E F0 44
        or      byte ptr [bp + di + 8], al      ; 08 43 08
        sub     al, 4                           ; 2C 04
        inc     sp                              ; 44
        add     ax, 0x561                       ; 05 61 05
        jmp     0xffffe20f                      ; E9 04 E0
        add     al, 0x5f                        ; 04 5F
        add     ax, 0x542                       ; 05 42 05
        out     dx, ax                          ; EF
        add     al, 3                           ; 04 03
        add     ax, 0x707                       ; 05 07 07
        call    0xffffe71c                      ; E8 03 E5
        add     sp, word ptr [si + 0x6804]      ; 03 A4 04 68
        add     al, 0x50                        ; 04 50
        call    word ptr [0x5704]               ; FF 16 04 57
        db      0feh                            ; FE
        in      al, dx                          ; EC
        push    es                              ; 06
        aam     3                               ; D4 03
        pop     dx                              ; 5A
        ljmp    [bx]                            ; FF 2F
        pop     es                              ; 07
        pushaw                                  ; 60
        db      0feh                            ; FE
        out     dx, ax                          ; EF
        add     al, 0xe9                        ; 04 E9
        add     al, 0x63                        ; 04 63
        cli                                     ; FA
        ret     0x1409                          ; C2 09 14
        add     ax, 0x561                       ; 05 61 05
        add     ax, word ptr [di]               ; 03 05
        retf                                    ; CB
        push    es                              ; 06
        or      word ptr [bx + di], cx          ; 09 09
        insb    byte ptr es:[di], dx            ; 6C
        std                                     ; FD
        push    cs                              ; 0E
        or      bp, di                          ; 09 FD
        or      bl, bl                          ; 08 DB
        or      word ptr [bp + di - 1], si      ; 09 73 FF
        jl      L_0254                          ; 7C 08
        jne     L_024D                          ; 75 FF
        xchg    si, ax                          ; 96
        or      byte ptr [bp + si - 1], bh      ; 08 7A FF
        inc     di                              ; 47
        or      di, di                          ; 09 FF
        db      0ffh                            ; FF
        cmp     al, 6                           ; 3C 06
        rol     word ptr [bp + di], cl          ; D3 03
        rol     word ptr [bp + di], cl          ; D3 03
        jp      L_0264                          ; 7A 06
        jl      L_0266                          ; 7C 06
        sahf                                    ; 9E
        add     ax, 0x592                       ; 05 92 05
;   [conditional branch target (if/else)] L_0264
L_0264:
        adc     ax, 0x2106                      ; 15 06 21
        push    es                              ; 06
        pop     bx                              ; 5B
        push    es                              ; 06
        rol     word ptr [bp + di], cl          ; D3 03
        rol     word ptr [bp + di], cl          ; D3 03
        jnp     L_0276                          ; 7B 06
        jge     L_0278                          ; 7D 06
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        add     ax, 0x598                       ; 05 98 05
;   [conditional branch target (if/else)] L_0276
L_0276:
        sbb     ax, word ptr [0x627]            ; 1B 06 27 06
        dec     dx                              ; 4A
        db      0feh                            ; FE
        call    0xffffe782                      ; E8 03 E5
        add     bp, word ptr [bx + si - 1]      ; 03 68 FF
        adc     cx, word ptr [bx + di]          ; 13 09
        insb    byte ptr es:[di], dx            ; 6C
        lcall   [bx + si]                       ; FF 18
        or      word ptr [bp - 1], bp           ; 09 6E FF
        test    al, 9                           ; A8 09
        db      0ffh                            ; FF
        inc     word ptr [bx + di]              ; FF 01
        inc     byte ptr [bp - 0x4ffb]          ; FE 86 05 B0
        add     ax, 0xfd06                      ; 05 06 FD
        sub     ax, 0x906                       ; 2D 06 09
        push    es                              ; 06
        std                                     ; FD
        add     ax, 0xff14                      ; 05 14 FF
        adc     ax, 0x1906                      ; 15 06 19
        db      0ffh                            ; FF
        jl      L_02AA                          ; 7C 06
        db      0ffh                            ; FF
        inc     word ptr [bx + di]              ; FF 01
        dec     byte ptr [si - 0x4ffb]          ; FE 8C 05 B0
        add     ax, 0xfd06                      ; 05 06 FD
        xor     al, 6                           ; 34 06
        clts                                    ; 0F 06
        add     ax, word ptr [0xff14]           ; 03 06 14 FF
        sbb     ax, word ptr [0xff19]           ; 1B 06 19 FF
        jge     L_02C2                          ; 7D 06
        db      0ffh                            ; FF
        inc     word ptr [bp + si]              ; FF 02
        push    di                              ; FF F7
        add     ax, 0xff04                      ; 05 04 FF
        ; constant WM_SIZE
        mov     dh, 5                           ; B6 05
        adc     al, 0xff                        ; 14 FF
        and     word ptr [0xffff], ax           ; 21 06 FF FF
        add     bh, bh                          ; 02 FF
        int1                                    ; F1
        add     ax, 0xff04                      ; 05 04 FF
        enter   0x1405, -1                      ; C8 05 14 FF
        daa                                     ; 27
        push    es                              ; 06
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        db      0ffh                            ; FF
        in      al, dx                          ; EC
        add     ax, 0xff07                      ; 05 07 FF
        out     5, al                           ; E6 05
        sbb     di, di                          ; 1B FF
        in      al, dx                          ; EC
        add     ax, 0xffff                      ; 05 FF FF
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        mov     al, 2                           ; B0 02
        jmp     L_030A                          ; EB 14
        mov     al, byte ptr [0x10c]            ; A0 0C 01
        and     al, 2                           ; 24 02
        or      al, 1                           ; 0C 01
        jmp     L_030A                          ; EB 0B
        mov     al, byte ptr [0x10c]            ; A0 0C 01
        and     al, 1                           ; 24 01
        or      al, 2                           ; 0C 02
        jmp     L_030A                          ; EB 02
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
;   [unconditional branch target] L_030A
L_030A:
        shr     al, 1                           ; D0 E8
        jae     L_0310                          ; 73 02
        xor     dh, dh                          ; 32 F6
;   [conditional branch target (if/else)] L_0310
L_0310:
        shr     al, 1                           ; D0 E8
        jae     L_0326                          ; 73 12
        cmp     dl, byte ptr [0x10f]            ; 3A 16 0F 01
        jb      L_0320                          ; 72 06
        cmp     dl, byte ptr [0x110]            ; 3A 16 10 01
        jbe     L_0329                          ; 76 09
;   [conditional branch target (if/else)] L_0320
L_0320:
        cmp     dl, 0x17                        ; 80 FA 17
        adc     dl, 0                           ; 80 D2 00
;   [loop start (also forward branch)] L_0326
L_0326:
        jmp     L_057A                          ; E9 51 02
;   [conditional branch target (if/else)] L_0329
L_0329:
        xor     ax, ax                          ; 33 C0
        xchg    dh, al                          ; 86 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        or      word ptr [0x169], ax            ; 09 06 69 01
;   [loop start] L_0338
L_0338:
        ret                                     ; C3
        cmp     dl, byte ptr [0x10f]            ; 3A 16 0F 01
        je      L_034A                          ; 74 0B
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_0338                          ; 74 F4
        cmp     cl, dl                          ; 3A CA
        sbb     dl, cl                          ; 1A D1
        jmp     L_0326                          ; EB DC
;   [conditional branch target (if/else)] L_034A
L_034A:
        push    dx                              ; 52
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        pop     dx                              ; 5A
        jmp     L_0326                          ; EB CF
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0357   offset=0x0357  size=21 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_04FC
;-------------------------------------------------------------------------
;   [sub-routine] L_0357
L_0357:
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_037E                          ; 74 22
        test    byte ptr [0x10d], 4             ; F6 06 0D 01 04
        jne     L_0366                          ; 75 03
        call    L_04FC                          ; E8 96 01
;   [conditional branch target (if/else)] L_0366
L_0366:
        mov     dx, 0x4f17                      ; BA 17 4F
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_0380                          ; 74 12
        xor     bx, bx                          ; 33 DB
        jmp     L_038A                          ; EB 18
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_0384                          ; 74 0D
        mov     bx, dx                          ; 8B DA
        mov     dx, 0x4f17                      ; BA 17 4F
        jmp     L_038A                          ; EB 0C
;   [loop start (also forward branch)] L_037E
L_037E:
        mov     dh, 0x4f                        ; B6 4F
;   [conditional branch target (if/else)] L_0380
L_0380:
        xor     bh, bh                          ; 32 FF
        jmp     L_0388                          ; EB 04
;   [loop start (also forward branch)] L_0384
L_0384:
        ; constant VK_RETURN
        mov     bh, dh                          ; 8A FE
        mov     dh, 0x4f                        ; B6 4F
;   [unconditional branch target] L_0388
L_0388:
        mov     bl, dl                          ; 8A DA
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_038A   offset=0x038A  size=23 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_03B7
;-------------------------------------------------------------------------
;   [sub-routine] L_038A
L_038A:
        or      bh, bh                          ; 0A FF
        jne     L_0393                          ; 75 05
        cmp     dh, 0x4f                        ; 80 FE 4F
        je      L_03B7                          ; 74 24
;   [conditional branch target (if/else)] L_0393
L_0393:
        cmp     bl, dl                          ; 3A DA
        je      L_03B7                          ; 74 20
        or      bx, bx                          ; 0B DB
        je      L_03AA                          ; 74 0F
        push    bx                              ; 53
        inc     bl                              ; FE C3
        xor     bh, bh                          ; 32 FF
        call    L_03B7                          ; E8 14 00
        pop     bx                              ; 5B
        mov     dl, bl                          ; 8A D3
        mov     dh, 0x4f                        ; B6 4F
        jmp     L_03B7                          ; EB 0D
;   [conditional branch target (if/else)] L_03AA
L_03AA:
        push    dx                              ; 52
        dec     dl                              ; FE CA
        mov     dh, 0x4f                        ; B6 4F
        call    L_03B7                          ; E8 05 00
        pop     dx                              ; 5A
        mov     bl, dl                          ; 8A DA
        xor     bh, bh                          ; 32 FF
; Description (heuristic):
;   Pure computation / dispatcher (145 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_03B7   offset=0x03B7  size=145 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_00ED, L_057A
;-------------------------------------------------------------------------
;   [sub-routine] L_03B7
L_03B7:
        xor     ax, ax                          ; 33 C0
        mov     al, dl                          ; 8A C2
        inc     ax                              ; 40
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        inc     al                              ; FE C0
        push    ax                              ; 50
        mov     al, bl                          ; 8A C3
        push    ax                              ; 50
        mov     al, bh                          ; 8A C7
        push    ax                              ; 50
        mov     ax, sp                          ; 8B C4
        push    ax                              ; 50
        call    far _entry_40                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        ret                                     ; C3
        mov     bx, dx                          ; 8B DA
        dec     ch                              ; FE CD
        add     dh, ch                          ; 02 F5
        jb      L_03E1                          ; 72 05
        cmp     dh, 0x4f                        ; 80 FE 4F
        jbe     L_038A                          ; 76 A9
;   [conditional branch target (if/else)] L_03E1
L_03E1:
        mov     dh, 0x4f                        ; B6 4F
        jmp     L_038A                          ; EB A5
        or      cl, 4                           ; 80 C9 04
        cld                                     ; FC
        xor     bx, bx                          ; 33 DB
        xchg    cl, bl                          ; 86 D9
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_03F0
L_03F0:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 2                           ; 3C 02
        ja      L_03FF                          ; 77 0A
        inc     al                              ; FE C0
        or      bl, al                          ; 0A D8
        dec     word ptr [0x171]                ; FF 0E 71 01
        jg      L_03F0                          ; 7F F1
;   [conditional branch target (if/else)] L_03FF
L_03FF:
        shl     bx, 1                           ; D1 E3
        jmp     word ptr cs:[bx + 0x406]        ; 2E FF A7 06 04
        rol     word ptr [bp + di], cl          ; D3 03
        jb      L_040D                          ; 72 03
        imul    ax, word ptr [bp + di], 0x357   ; 69 03 57 03
        rol     word ptr [bp + di], cl          ; D3 03
        test    byte ptr [bp + di], al          ; 84 03
        add     byte ptr [bp + di], 0x7e        ; 80 03 7E
        add     cx, word ptr [bp + si + 0x2c5]  ; 03 8A C5 02
        db      0c6h                            ; C6
        jb      L_0420                          ; 72 04
        cmp     al, 0x4f                        ; 3C 4F
        jbe     L_0423                          ; 76 03
;   [loop start (also forward branch)] L_0420
L_0420:
        jmp     L_0384                          ; E9 61 FF
;   [conditional branch target (if/else)] L_0423
L_0423:
        xchg    cl, ch                          ; 86 E9
        push    cx                              ; 51
        call    far _entry_41                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        add     al, dh                          ; 02 C6
        jb      L_0420                          ; 72 EE
        cmp     al, 0x4f                        ; 3C 4F
        ja      L_0420                          ; 77 EA
        push    dx                              ; 52
        test    byte ptr [0x10d], 8             ; F6 06 0D 01 08
        jne     L_0445                          ; 75 07
        push    cx                              ; 51
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
;   [conditional branch target (if/else)] L_0445
L_0445:
        xchg    cl, ch                          ; 86 E9
        mov     bx, cx                          ; 8B D9
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x52]                 ; 8D 7E AE
        mov     al, 0x20                        ; B0 20
        cld                                     ; FC
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     di, bx                          ; 8B FB
        call    L_00ED                          ; E8 95 FC
        test    byte ptr [0x10d], 8             ; F6 06 0D 01 08
        jne     L_0464                          ; 75 05
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0464
L_0464:
        pop     dx                              ; 5A
        jmp     L_057A                          ; E9 12 01
        xor     dh, dh                          ; 32 F6
        push    cx                              ; 51
        push    dx                              ; 52
        call    L_057A                          ; E8 0B 01
        pop     dx                              ; 5A
        pop     cx                              ; 59
        cmp     dl, 0x18                        ; 80 FA 18
        jne     L_0479                          ; 75 03
        jmp     L_037E                          ; E9 05 FF
;   [conditional branch target (if/else)] L_0479
L_0479:
        cmp     dl, byte ptr [0x10f]            ; 3A 16 0F 01
        jb      L_04A3                          ; 72 24
        cmp     dl, byte ptr [0x110]            ; 3A 16 10 01
        ja      L_04A3                          ; 77 1E
        mov     al, byte ptr [0x110]            ; A0 10 01
        sub     al, dl                          ; 2A C2
        inc     al                              ; FE C0
        cmp     al, ch                          ; 3A C5
        ja      L_049B                          ; 77 0B
        mov     bx, dx                          ; 8B DA
        mov     dh, 0x4f                        ; B6 4F
        mov     dl, byte ptr [0x110]            ; 8A 16 10 01
        jmp     L_03B7                          ; E9 1C FF
;   [conditional branch target (if/else)] L_049B
L_049B:
        xchg    cl, ch                          ; 86 E9
        push    cx                              ; 51
        call    far _entry_44                   ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_04A3
L_04A3:
        ret                                     ; C3
        xor     dh, dh                          ; 32 F6
        push    cx                              ; 51
        push    dx                              ; 52
        call    L_057A                          ; E8 CF 00
        pop     dx                              ; 5A
        pop     cx                              ; 59
        cmp     dl, 0x18                        ; 80 FA 18
        jne     L_04B5                          ; 75 03
        jmp     L_037E                          ; E9 C9 FE
;   [conditional branch target (if/else)] L_04B5
L_04B5:
        cmp     dl, byte ptr [0x10f]            ; 3A 16 0F 01
        jb      L_04DF                          ; 72 24
        cmp     dl, byte ptr [0x110]            ; 3A 16 10 01
        ja      L_04DF                          ; 77 1E
        mov     al, byte ptr [0x110]            ; A0 10 01
        sub     al, dl                          ; 2A C2
        inc     al                              ; FE C0
        cmp     al, ch                          ; 3A C5
        ja      L_04D7                          ; 77 0B
        mov     bx, dx                          ; 8B DA
        mov     dh, 0x4f                        ; B6 4F
        mov     dl, byte ptr [0x110]            ; 8A 16 10 01
        jmp     L_03B7                          ; E9 E0 FE
;   [conditional branch target (if/else)] L_04D7
L_04D7:
        xchg    cl, ch                          ; 86 E9
        push    cx                              ; 51
        call    far _entry_39                   ; 9A 50 03 00 00 [FIXUP]
;   [error/early exit] L_04DF
L_04DF:
        ret                                     ; C3
        sub     dh, ch                          ; 2A F5
        jae     L_04E6                          ; 73 02
        mov     dh, cl                          ; 8A F1
;   [conditional branch target (if/else)] L_04E6
L_04E6:
        jmp     L_057A                          ; E9 91 00
        add     dh, ch                          ; 02 F5
        jae     L_04F3                          ; 73 06
        jmp     L_04F8                          ; EB 09
        dec     ch                              ; FE CD
        ; constant WM_SETTEXT
        mov     dh, ch                          ; 8A F5
;   [conditional branch target (if/else)] L_04F3
L_04F3:
        cmp     dh, 0x4f                        ; 80 FE 4F
        jbe     L_04FA                          ; 76 02
;   [unconditional branch target] L_04F8
L_04F8:
        mov     dh, 0x4f                        ; B6 4F
;   [conditional branch target (if/else)] L_04FA
L_04FA:
        jmp     L_057A                          ; EB 7E
; Description (heuristic):
;   Pure computation / dispatcher (52 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_04FC   offset=0x04FC  size=52 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_04FC
L_04FC:
        xor     dh, dh                          ; 32 F6
        xor     cl, cl                          ; 32 C9
        jmp     L_052A                          ; EB 28
        nop                                     ; 90
;   [loop start] L_0503
L_0503:
        xor     dh, dh                          ; 32 F6
        or      dh, byte ptr [0x174]            ; 0A 36 74 01
        je      L_0514                          ; 74 09
        dec     dh                              ; FE CE
        cmp     dh, 0x4f                        ; 80 FE 4F
        jbe     L_0514                          ; 76 02
        mov     dh, 0x4f                        ; B6 4F
;   [conditional branch target (if/else)] L_0514
L_0514:
        or      cl, byte ptr [0x173]            ; 0A 0E 73 01
        je      L_051C                          ; 74 02
        dec     cl                              ; FE C9
;   [conditional branch target (if/else)] L_051C
L_051C:
        cmp     cl, 0x18                        ; 80 F9 18
        jne     L_052A                          ; 75 09
        test    byte ptr [0x10d], 1             ; F6 06 0D 01 01
        je      L_0540                          ; 74 18
        jmp     L_053E                          ; EB 14
;   [branch target] L_052A
L_052A:
        mov     al, 0x17                        ; B0 17
        test    byte ptr [0x10d], 2             ; F6 06 0D 01 02
        je      L_053A                          ; 74 07
        add     cl, byte ptr [0x10f]            ; 02 0E 0F 01
        mov     al, byte ptr [0x110]            ; A0 10 01
;   [conditional branch target (if/else)] L_053A
L_053A:
        cmp     cl, al                          ; 3A C8
        ja      L_0540                          ; 77 02
;   [unconditional branch target] L_053E
L_053E:
        mov     dl, cl                          ; 8A D1
;   [conditional branch target (if/else)] L_0540
L_0540:
        jmp     L_057A                          ; EB 38
        xor     dh, dh                          ; 32 F6
        cmp     dl, byte ptr [0x10f]            ; 3A 16 0F 01
        jb      L_054E                          ; 72 04
        mov     cl, byte ptr [0x10f]            ; 8A 0E 0F 01
;   [conditional branch target (if/else)] L_054E
L_054E:
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_055D                          ; 74 0A
        sub     dl, ch                          ; 2A D5
        jb      L_055B                          ; 72 04
        cmp     dl, cl                          ; 3A D1
        jae     L_055D                          ; 73 02
;   [conditional branch target (if/else)] L_055B
L_055B:
        mov     dl, cl                          ; 8A D1
;   [conditional branch target (if/else)] L_055D
L_055D:
        jmp     L_057A                          ; EB 1B
        xor     dh, dh                          ; 32 F6
        mov     cl, byte ptr [0x110]            ; 8A 0E 10 01
        cmp     dl, cl                          ; 3A D1
        jb      L_056B                          ; 72 02
        mov     cl, 0x17                        ; B1 17
;   [conditional branch target (if/else)] L_056B
L_056B:
        cmp     dl, 0x18                        ; 80 FA 18
        je      L_057A                          ; 74 0A
        add     dl, ch                          ; 02 D5
        jb      L_0578                          ; 72 04
        cmp     dl, cl                          ; 3A D1
        jbe     L_057A                          ; 76 02
;   [conditional branch target (if/else)] L_0578
L_0578:
        mov     dl, cl                          ; 8A D1
; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_057A   offset=0x057A  size=27 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_057A
L_057A:
        xor     ax, ax                          ; 33 C0
        xchg    dh, al                          ; 86 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        or      byte ptr [0x10e], 1             ; 80 0E 0E 01 01
        ret                                     ; C3
        and     byte ptr [0x10e], 0xfe          ; 80 26 0E 01 FE
        ret                                     ; C3
        or      byte ptr [0x10e], 2             ; 80 0E 0E 01 02
        ret                                     ; C3
        and     byte ptr [0x10e], 0xfd          ; 80 26 0E 01 FD
        ret                                     ; C3
        or      byte ptr [0x10e], 4             ; 80 0E 0E 01 04
        ret                                     ; C3
        and     byte ptr [0x10e], 0xfb          ; 80 26 0E 01 FB
        ret                                     ; C3
        or      byte ptr [0x10d], 4             ; 80 0E 0D 01 04
        ret                                     ; C3
        and     byte ptr [0x10d], 0xfb          ; 80 26 0D 01 FB
        ret                                     ; C3
        test    byte ptr [0x10d], 8             ; F6 06 0D 01 08
        jne     L_05D9                          ; 75 1C
        or      byte ptr [0x10d], 8             ; 80 0E 0D 01 08
        call    far _entry_42                   ; 9A 40 04 00 00 [FIXUP]
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05C8   offset=0x05C8  size=49 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_038A
;-------------------------------------------------------------------------
;   [sub-routine] L_05C8
L_05C8:
        test    byte ptr [0x10d], 8             ; F6 06 0D 01 08
        je      L_05D9                          ; 74 0A
        and     byte ptr [0x10d], 0xf7          ; 80 26 0D 01 F7
        call    far _entry_43                   ; 9A 60 04 00 00 [FIXUP]
;   [loop start (also forward branch)] L_05D9
L_05D9:
        ret                                     ; C3
        sub     al, 0x30                        ; 2C 30
        jb      L_05D9                          ; 72 FB
        cmp     al, 0x1f                        ; 3C 1F
        ja      L_05D9                          ; 77 F7
        shr     al, 1                           ; D0 E8
        jae     L_05EC                          ; 73 06
        mov     byte ptr [0x16f], 0x80          ; C6 06 6F 01 80
        ret                                     ; C3
;   [loop start (also forward branch)] L_05EC
L_05EC:
        mov     byte ptr [0x16f], cl            ; 88 0E 6F 01
        ret                                     ; C3
        and     byte ptr [0x10e], 0xf7          ; 80 26 0E 01 F7
        ret                                     ; C3
        or      byte ptr [0x10e], 8             ; 80 0E 0E 01 08
        ret                                     ; C3
        and     byte ptr [0x10d], 0xdf          ; 80 26 0D 01 DF
        ret                                     ; C3
        or      byte ptr [0x10d], 0x20          ; 80 0E 0D 01 20
        ret                                     ; C3
        or      byte ptr [0x10d], 0x40          ; 80 0E 0D 01 40
        ret                                     ; C3
        and     byte ptr [0x10d], 0xbf          ; 80 26 0D 01 BF
        ret                                     ; C3
        or      byte ptr [0x10c], 2             ; 80 0E 0C 01 02
        ret                                     ; C3
        and     byte ptr [0x10c], 0xfd          ; 80 26 0C 01 FD
        ret                                     ; C3
        or      byte ptr [0x10c], 1             ; 80 0E 0C 01 01
        ret                                     ; C3
        and     byte ptr [0x10c], 0xfe          ; 80 26 0C 01 FE
        ret                                     ; C3
        or      byte ptr [0x10d], 2             ; 80 0E 0D 01 02
        jmp     L_0639                          ; EB 05
        and     byte ptr [0x10d], 0xfd          ; 80 26 0D 01 FD
;   [unconditional branch target] L_0639
L_0639:
        jmp     L_04FC                          ; E9 C0 FE
        test    byte ptr [0x10d], 1             ; F6 06 0D 01 01
        jne     L_065A                          ; 75 17
        or      byte ptr [0x10d], 1             ; 80 0E 0D 01 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_46                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, 0x18                        ; BB 18 00
        mov     dx, 0x4f18                      ; BA 18 4F
        call    L_038A                          ; E8 30 FD
;   [error/early exit] L_065A
L_065A:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_065B   offset=0x065B  size=11 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_04FC
;-------------------------------------------------------------------------
;   [sub-routine] L_065B
L_065B:
        test    byte ptr [0x10d], 1             ; F6 06 0D 01 01
        je      L_0679                          ; 74 17
        and     byte ptr [0x10d], 0xfe          ; 80 26 0D 01 FE
        cmp     byte ptr [0x166], 0x18          ; 80 3E 66 01 18
        jne     L_0671                          ; 75 03
        call    L_04FC                          ; E8 8B FE
;   [conditional branch target (if/else)] L_0671
L_0671:
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far _entry_46                   ; 9A 4D 06 00 00 [FIXUP]
;   [error/early exit] L_0679
L_0679:
        ret                                     ; C3
        dec     cx                              ; 49
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_067B   offset=0x067B  size=2 instr  segment=seg3.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_067B
L_067B:
        dec     cx                              ; 49
        dec     cx                              ; 49
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_067D   offset=0x067D  size=28 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_067D
L_067D:
        dec     cx                              ; 49
        mov     bh, 0xff                        ; B7 FF
        mov     bl, cl                          ; 8A D9
        add     bl, bl                          ; 02 DB
        mov     ax, word ptr cs:[bx + 0x69c]    ; 2E 8B 87 9C 06
        xor     bx, bx                          ; 33 DB
        push    ax                              ; 50
        push    bx                              ; 53
        push    bx                              ; 53
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        or      word ptr [bx + si], ax          ; 09 00
        or      al, byte ptr [bx + si]          ; 0A 00
        or      byte ptr [bx + si], al          ; 08 00
        pop     es                              ; 07
        add     byte ptr [si], bh               ; 00 3C
        xor     byte ptr [si + 9], dh           ; 30 74 09
        cmp     al, 0x33                        ; 3C 33
        je      L_06BC                          ; 74 18
        cmp     al, 0x38                        ; 3C 38
        je      L_06E2                          ; 74 3A
        ret                                     ; C3
;   [loop start] L_06A9
L_06A9:
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        xor     bh, bh                          ; 32 FF
        mov     byte ptr [bx + 0x116], bh       ; 88 BF 16 01
;   [loop start] L_06B1
L_06B1:
        mov     byte ptr [0x116], 9             ; C6 06 16 01 09
        mov     byte ptr [0x165], 9             ; C6 06 65 01 09
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_06BC   offset=0x06BC  size=14 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_06D9
;-------------------------------------------------------------------------
;   [sub-routine] L_06BC
L_06BC:
        cld                                     ; FC
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, 0x116                       ; BF 16 01
        xor     al, al                          ; 32 C0
        mov     cx, 0x50                        ; B9 50 00
        rep stosb byte ptr es:[di], al          ; F3 AA
        jmp     L_06B1                          ; EB E6
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_06CE
L_06CE:
        lodsb   al, byte ptr [si]               ; AC
        call    L_06D9                          ; E8 07 00
        dec     word ptr [0x171]                ; FF 0E 71 01
        jg      L_06CE                          ; 7F F6
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (15 instructions).

;-------------------------------------------------------------------------
; sub_06D9   offset=0x06D9  size=15 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_06FA
;-------------------------------------------------------------------------
;   [sub-routine] L_06D9
L_06D9:
        or      al, al                          ; 0A C0
        je      L_06A9                          ; 74 CC
        cmp     al, 3                           ; 3C 03
        je      L_06BC                          ; 74 DB
        ret                                     ; C3
;   [loop start (also forward branch)] L_06E2
L_06E2:
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        xor     bh, bh                          ; 32 FF
        mov     byte ptr [bx + 0x116], 9        ; C6 87 16 01 09
        ret                                     ; C3
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_06EF
L_06EF:
        lodsb   al, byte ptr [si]               ; AC
        call    L_06FA                          ; E8 07 00
        dec     word ptr [0x171]                ; FF 0E 71 01
        jg      L_06EF                          ; 7F F6
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (210 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_06FA   offset=0x06FA  size=210 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0102, L_04FC, L_08DF
;-------------------------------------------------------------------------
;   [sub-routine] L_06FA
L_06FA:
        or      al, al                          ; 0A C0
        je      L_06E2                          ; 74 E4
        cmp     al, 2                           ; 3C 02
        je      L_06A9                          ; 74 A7
        cmp     al, 5                           ; 3C 05
        je      L_06BC                          ; 74 B6
        ret                                     ; C3
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     al, 9                           ; B0 09
        ; constant WM_SETTEXT
        mov     ah, ch                          ; 8A E5
        xor     bh, bh                          ; 32 FF
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        lea     di, [bx + 0x117]                ; 8D BF 17 01
;   [loop start] L_0715
L_0715:
        cmp     di, 0x165                       ; 81 FF 65 01
        ja      L_0724                          ; 77 09
        mov     cx, 0x4f                        ; B9 4F 00
        repne scasb al, byte ptr es:[di]        ; F2 AE
        dec     ah                              ; FE CC
        ja      L_0715                          ; 77 F1
;   [conditional branch target (if/else)] L_0724
L_0724:
        sub     di, 0x117                       ; 81 EF 17 01
        mov     bx, di                          ; 8B DF
        mov     dh, bl                          ; 8A F3
        jmp     L_057A                          ; E9 4B FE
        push    ds                              ; 1E
        pop     es                              ; 07
        std                                     ; FD
        mov     al, 9                           ; B0 09
        ; constant WM_SETTEXT
        mov     ah, ch                          ; 8A E5
        xor     bh, bh                          ; 32 FF
        ; constant VK_RETURN
        mov     bl, dh                          ; 8A DE
        lea     di, [bx + 0x115]                ; 8D BF 15 01
;   [loop start] L_073E
L_073E:
        cmp     di, 0x116                       ; 81 FF 16 01
        jb      L_074D                          ; 72 09
        mov     cx, 0x4f                        ; B9 4F 00
        repne scasb al, byte ptr es:[di]        ; F2 AE
        dec     ah                              ; FE CC
        ja      L_073E                          ; 77 F1
;   [conditional branch target (if/else)] L_074D
L_074D:
        sub     di, 0x115                       ; 81 EF 15 01
        mov     bx, di                          ; 8B DF
        mov     dh, bl                          ; 8A F3
        cld                                     ; FC
        jmp     L_057A                          ; E9 21 FE
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
;   [loop start] L_0760
L_0760:
        dec     cx                              ; 49
        dec     cx                              ; 49
        mov     byte ptr [0x170], 1             ; C6 06 70 01 01
        mov     bl, cl                          ; 8A D9
        mov     bh, 0xff                        ; B7 FF
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x789]    ; 2E 8B 9F 89 07
        mov     word ptr [0x16d], bx            ; 89 1E 6D 01
        ret                                     ; C3
        pushf                                   ; 9C
        push    es                              ; 06
        cmp     ax, 0xd509                      ; 3D 09 D5
        or      dl, bl                          ; 08 DA
        or      dl, bl                          ; 08 DA
        add     ax, 0x7cc                       ; 05 CC 07
        mov     bl, 7                           ; B3 07
        mov     bx, 0x7607                      ; BB 07 76
        pop     es                              ; 07
        mov     ax, word ptr [0x171]            ; A1 71 01
        cmp     ah, 1                           ; 80 FC 01
        adc     ah, cl                          ; 12 E1
        or      al, al                          ; 0A C0
        jne     L_0797                          ; 75 02
        mov     al, 0x17                        ; B0 17
;   [conditional branch target (if/else)] L_0797
L_0797:
        dec     al                              ; FE C8
        dec     ah                              ; FE CC
        cmp     al, 0x16                        ; 3C 16
        jbe     L_07A1                          ; 76 02
        xor     al, al                          ; 32 C0
;   [conditional branch target (if/else)] L_07A1
L_07A1:
        cmp     al, ah                          ; 3A C4
        jae     L_07AA                          ; 73 05
        cmp     ah, 0x17                        ; 80 FC 17
        jbe     L_07AC                          ; 76 02
;   [conditional branch target (if/else)] L_07AA
L_07AA:
        mov     ah, 0x17                        ; B4 17
;   [conditional branch target (if/else)] L_07AC
L_07AC:
        mov     word ptr [0x10f], ax            ; A3 0F 01
        call    L_04FC                          ; E8 4A FD
        ret                                     ; C3
        mov     byte ptr [0x173], al            ; A2 73 01
        cmp     al, 0x18                        ; 3C 18
        jne     L_0760                          ; 75 A6
;   [loop start] L_07BA
L_07BA:
        ret                                     ; C3
        cmp     al, 0x18                        ; 3C 18
        je      L_07BA                          ; 74 FB
        sub     al, 0x1f                        ; 2C 1F
        mov     byte ptr [0x174], al            ; A2 74 01
        sub     byte ptr [0x173], 0x1f          ; 80 2E 73 01 1F
        jmp     L_0503                          ; E9 37 FD
        xchg    bx, ax                          ; 93
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        mov     cx, 7                           ; B9 07 00
        mov     di, 0x171                       ; BF 71 01
        rep stosw word ptr es:[di], ax          ; F3 AB
        xchg    bx, ax                          ; 93
        mov     cx, 0x100                       ; B9 00 01
        mov     si, 0x13a                       ; BE 3A 01
        test    byte ptr [0x10d], 4             ; F6 06 0D 01 04
        je      L_07E9                          ; 74 03
        mov     si, 0x1a8                       ; BE A8 01
;   [conditional branch target (if/else)] L_07E9
L_07E9:
        call    L_0102                          ; E8 16 F9
        jae     L_07F0                          ; 73 02
        jmp     bx                              ; FF E3
;   [error/early exit] L_07F0
L_07F0:
        ret                                     ; C3
        xor     bx, bx                          ; 33 DB
        cmp     al, 0x18                        ; 3C 18
        je      L_0867                          ; 74 70
        cmp     al, 0x3b                        ; 3C 3B
        je      L_082A                          ; 74 2F
        cmp     al, 0x30                        ; 3C 30
        jb      L_0803                          ; 72 04
        cmp     al, 0x39                        ; 3C 39
        jbe     L_0807                          ; 76 04
;   [conditional branch target (if/else)] L_0803
L_0803:
        jmp     word ptr [0x167]                ; FF 26 67 01
;   [conditional branch target (if/else)] L_0807
L_0807:
        or      bx, word ptr [0x171]            ; 0B 1E 71 01
        jne     L_0812                          ; 75 05
        inc     bx                              ; 43
        mov     word ptr [0x171], bx            ; 89 1E 71 01
;   [conditional branch target (if/else)] L_0812
L_0812:
        mov     cl, byte ptr [bx + 0x172]       ; 8A 8F 72 01
        add     cl, cl                          ; 02 C9
        mov     ch, cl                          ; 8A E9
        add     cl, cl                          ; 02 C9
        add     cl, cl                          ; 02 C9
        add     ch, cl                          ; 02 E9
        sub     al, 0x30                        ; 2C 30
        add     ch, al                          ; 02 E8
        mov     byte ptr [bx + 0x172], ch       ; 88 AF 72 01
        jmp     L_085C                          ; EB 32
;   [conditional branch target (if/else)] L_082A
L_082A:
        mov     di, word ptr [0x171]            ; 8B 3E 71 01
        cmp     bx, di                          ; 3B DF
        cmc                                     ; F5
        adc     di, bx                          ; 13 FB
        cmp     di, 0xc                         ; 83 FF 0C
        adc     di, bx                          ; 13 FB
        mov     word ptr [0x171], di            ; 89 3E 71 01
        mov     byte ptr [di + 0x172], bl       ; 88 9D 72 01
        jmp     L_085C                          ; EB 1A
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        cmp     word ptr [0x171], 0             ; 83 3E 71 01 00
        jne     L_0867                          ; 75 1B
        dec     cx                              ; 49
        mov     bl, cl                          ; 8A D9
        mov     bh, 0xff                        ; B7 FF
        add     bx, bx                          ; 03 DB
        mov     bx, word ptr cs:[bx + 0x870]    ; 2E 8B 9F 70 08
        mov     word ptr [0x167], bx            ; 89 1E 67 01
;   [fall-through exit] L_085C
L_085C:
        mov     byte ptr [0x170], 1             ; C6 06 70 01 01
        mov     word ptr [0x16d], 0x7f1         ; C7 06 6D 01 F1 07
;   [error/early exit] L_0867
L_0867:
        ret                                     ; C3
        popaw                                   ; 61
        pop     es                              ; 07
        in      ax, dx                          ; ED
        or      byte ptr [bp + di - 0xdf8], ch  ; 08 AB 08 F2
        or      byte ptr [bx + si + 0x10d], ah  ; 08 A0 0D 01
        and     al, 2                           ; 24 02
        or      al, byte ptr [0x16f]            ; 0A 06 6F 01
        mov     byte ptr [0x113], al            ; A2 13 01
        mov     word ptr [0x114], dx            ; 89 16 14 01
        ret                                     ; C3
        mov     al, byte ptr [0x113]            ; A0 13 01
        mov     ah, al                          ; 8A E0
        and     al, 0x80                        ; 24 80
        mov     byte ptr [0x16f], al            ; A2 6F 01
        xor     al, ah                          ; 32 C4
        and     byte ptr [0x10d], 0xfd          ; 80 26 0D 01 FD
        or      byte ptr [0x10d], al            ; 08 06 0D 01
        mov     ax, word ptr [0x114]            ; A1 14 01
        xchg    dx, ax                          ; 92
        cmp     dl, 0x18                        ; 80 FA 18
        jb      L_08A8                          ; 72 09
        test    byte ptr [0x10d], 1             ; F6 06 0D 01 01
        jne     L_08A8                          ; 75 02
        mov     dl, al                          ; 8A D0
;   [conditional branch target (if/else)] L_08A8
L_08A8:
        jmp     L_057A                          ; E9 CF FC
        mov     di, 0x256                       ; BF 56 02
        cmp     al, 0x68                        ; 3C 68
        je      L_08B9                          ; 74 07
        cmp     al, 0x6c                        ; 3C 6C
        jne     L_08D4                          ; 75 1E
        mov     di, 0x268                       ; BF 68 02
;   [conditional branch target (if/else)] L_08B9
L_08B9:
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_08BC
L_08BC:
        dec     word ptr [0x171]                ; FF 0E 71 01
        js      L_08D4                          ; 78 12
        cld                                     ; FC
        lodsb   al, byte ptr [si]               ; AC
        dec     al                              ; FE C8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, di                          ; 8B DF
        mov     cx, 0x100                       ; B9 00 01
        call    L_08DF                          ; E8 0F 00
        pop     di                              ; 5F
        pop     si                              ; 5E
        jmp     L_08BC                          ; EB E8
;   [error/early exit] L_08D4
L_08D4:
        ret                                     ; C3
        mov     bx, 0x256                       ; BB 56 02
        jmp     L_08DD                          ; EB 03
        mov     bx, 0x268                       ; BB 68 02
;   [unconditional branch target] L_08DD
L_08DD:
        sub     al, 0x31                        ; 2C 31
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_08DF   offset=0x08DF  size=47 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0102
;-------------------------------------------------------------------------
;   [sub-routine] L_08DF
L_08DF:
        cmp     al, 8                           ; 3C 08
        ja      L_08EC                          ; 77 09
        add     ax, ax                          ; 03 C0
        xor     ah, ah                          ; 32 E4
        add     bx, ax                          ; 03 D8
        jmp     word ptr cs:[bx]                ; 2E FF 27
;   [error/early exit] L_08EC
L_08EC:
        ret                                     ; C3
        mov     si, 0x27a                       ; BE 7A 02
        jmp     L_08F5                          ; EB 03
        mov     si, 0x1ee                       ; BE EE 01
;   [unconditional branch target] L_08F5
L_08F5:
        call    L_0102                          ; E8 0A F8
        jae     L_08FC                          ; 73 02
        jmp     bx                              ; FF E3
;   [error/early exit] L_08FC
L_08FC:
        ret                                     ; C3
        mov     di, 0x2da                       ; BF DA 02
        cmp     byte ptr [0x171], cl            ; 38 0E 71 01
        jne     L_091B                          ; 75 15
        jmp     L_05EC                          ; E9 E3 FC
        mov     di, 0x2be                       ; BF BE 02
        jmp     L_091B                          ; EB 0D
        mov     di, 0x2cc                       ; BF CC 02
        jmp     L_091B                          ; EB 08
        mov     di, 0x28e                       ; BF 8E 02
        jmp     L_091B                          ; EB 03
        mov     di, 0x2a6                       ; BF A6 02
;   [branch target] L_091B
L_091B:
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_091E
L_091E:
        dec     word ptr [0x171]                ; FF 0E 71 01
        js      L_093C                          ; 78 18
        cld                                     ; FC
        lodsb   al, byte ptr [si]               ; AC
        mov     cx, si                          ; 8B CE
        mov     si, di                          ; 8B F7
        call    L_0102                          ; E8 D5 F7
        mov     si, cx                          ; 8B F1
        jae     L_091E                          ; 73 ED
        push    di                              ; 57
        push    si                              ; 56
        mov     cx, 0x100                       ; B9 00 01
        call    bx                              ; FF D3
        pop     si                              ; 5E
        pop     di                              ; 5F
        jmp     L_091E                          ; EB E2
;   [loop start (also forward branch)] L_093C
L_093C:
        ret                                     ; C3
        cmp     al, 0x70                        ; 3C 70
        jne     L_093C                          ; 75 FB
        or      cl, byte ptr [0x171]            ; 0A 0E 71 01
        jne     L_093C                          ; 75 F5
; Description (heuristic):
;   Pure computation / dispatcher (26 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0947   offset=0x0947  size=26 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0357, L_057A, L_05C8, L_065B, L_067B, L_067D, L_06BC
;-------------------------------------------------------------------------
;   [sub-routine] L_0947
L_0947:
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [0x10f], al            ; A2 0F 01
        mov     byte ptr [0x110], 0x17          ; C6 06 10 01 17
        mov     byte ptr [0x10e], al            ; A2 0E 01
        and     byte ptr [0x10d], 0xdd          ; 80 26 0D 01 DD
        mov     byte ptr [0x10c], al            ; A2 0C 01
        mov     byte ptr [0x113], al            ; A2 13 01
        mov     word ptr [0x114], ax            ; A3 14 01
        mov     byte ptr [0x166], al            ; A2 66 01
        mov     byte ptr [0x16f], al            ; A2 6F 01
        xor     dx, dx                          ; 33 D2
        call    L_057A                          ; E8 0D FC
        xor     cx, cx                          ; 33 C9
        call    L_067B                          ; E8 09 FD
        xor     cx, cx                          ; 33 C9
        call    L_067D                          ; E8 06 FD
        call    L_065B                          ; E8 E1 FC
        call    L_05C8                          ; E8 4B FC
        call    L_06BC                          ; E8 3C FD
        mov     di, 0x116                       ; BF 16 01
        mov     cx, 9                           ; B9 09 00
;   [loop iteration target] L_0986
L_0986:
        add     di, 8                           ; 83 C7 08
        mov     byte ptr [di], 9                ; C6 05 09
        loop    L_0986                          ; E2 F8
        xor     dx, dx                          ; 33 D2
        call    L_0357                          ; E8 C4 F9
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0993   offset=0x0993  size=24 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=3)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_09CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0993
L_0993:
        mov     ax, word ptr [0x10c]            ; A1 0C 01
        and     ax, 0xbbfe                      ; 25 FE BB
        or      ax, word ptr [0x111]            ; 0B 06 11 01
        mov     word ptr [0x10c], ax            ; A3 0C 01
        ret                                     ; C3
        mov     di, 0xf8                        ; BF F8 00
        ; constant WM_MOVE
        mov     al, 3                           ; B0 03
        jmp     L_09CD                          ; EB 25
        mov     si, 0x173                       ; BE 73 01
;   [loop start] L_09AB
L_09AB:
        dec     word ptr [0x171]                ; FF 0E 71 01
        js      L_09C1                          ; 78 10
        cld                                     ; FC
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0xf                         ; 3C 0F
        jne     L_09AB                          ; 75 F4
        mov     di, 0x106                       ; BF 06 01
        mov     al, 6                           ; B0 06
        call    L_09CD                          ; E8 0E 00
        jmp     L_09AB                          ; EB EA
;   [loop start (also forward branch)] L_09C1
L_09C1:
        ret                                     ; C3
        cmp     byte ptr [0x173], cl            ; 38 0E 73 01
        jne     L_09C1                          ; 75 F9
        mov     di, 0xfb                        ; BF FB 00
        mov     al, 7                           ; B0 07
; Description (heuristic):
;   Pure computation / dispatcher (25 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_09CD   offset=0x09CD  size=25 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=5)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_09CD, L_0A00
;-------------------------------------------------------------------------
;   [sub-routine] L_09CD
L_09CD:
        xor     ah, ah                          ; 32 E4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ds                              ; 1E
        push    di                              ; 57
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        mov     si, 0x173                       ; BE 73 01
        push    dx                              ; 52
;   [loop start] L_09DF
L_09DF:
        pop     dx                              ; 5A
        dec     word ptr [0x171]                ; FF 0E 71 01
        js      L_0A30                          ; 78 4A
        push    dx                              ; 52
        cld                                     ; FC
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 6                           ; 3C 06
        jne     L_09F2                          ; 75 05
        call    L_0A00                          ; E8 10 00
        jmp     L_09DF                          ; EB ED
;   [conditional branch target (if/else)] L_09F2
L_09F2:
        cmp     al, 5                           ; 3C 05
        jne     L_09DF                          ; 75 E9
        mov     di, 0x102                       ; BF 02 01
        mov     al, 4                           ; B0 04
        call    L_09CD                          ; E8 CF FF
        jne     L_09DF                          ; 75 DF
; Description (heuristic):
;   Pure computation / dispatcher (243 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0A00   offset=0x0A00  size=243 instr  segment=seg3.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0947, L_0993, L_09CD
;-------------------------------------------------------------------------
;   [sub-routine] L_0A00
L_0A00:
        add     dx, 0x101                       ; 81 C2 01 01
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        cwde                                    ; 98
        mov     bx, 0x520a                      ; BB 0A 52
        div     bl                              ; F6 F3
        add     ax, 0x3030                      ; 05 30 30
        xchg    bl, ah                          ; 86 E3
        push    bx                              ; 53
        mov     ah, 0x3b                        ; B4 3B
        xchg    ah, al                          ; 86 C4
        push    ax                              ; 50
        mov     al, dl                          ; 8A C2
        cwde                                    ; 98
        mov     bl, 0xa                         ; B3 0A
        div     bl                              ; F6 F3
        add     ax, 0x3030                      ; 05 30 30
        push    ax                              ; 50
        mov     ax, 0x5b1b                      ; B8 1B 5B
        push    ax                              ; 50
        mov     di, sp                          ; 8B FC
        mov     al, 8                           ; B0 08
        call    L_09CD                          ; E8 A0 FF
        add     sp, 8                           ; 83 C4 08
;   [error/early exit] L_0A30
L_0A30:
        ret                                     ; C3
        add     dx, 0x2020                      ; 81 C2 20 20
        push    dx                              ; 52
        mov     ax, 0x591b                      ; B8 1B 59
        push    ax                              ; 50
        mov     al, 4                           ; B0 04
        mov     di, sp                          ; 8B FC
        call    L_09CD                          ; E8 8C FF
        add     sp, 4                           ; 83 C4 04
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
        xor     ax, ax                          ; 33 C0
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        jcxz    L_0A5B                          ; E3 03
        or      ah, 4                           ; 80 CC 04
;   [conditional branch target (if/else)] L_0A5B
L_0A5B:
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        jcxz    L_0A63                          ; E3 03
        or      ah, 0x40                        ; 80 CC 40
;   [conditional branch target (if/else)] L_0A63
L_0A63:
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        jcxz    L_0A6A                          ; E3 02
        or      al, 1                           ; 0C 01
;   [conditional branch target (if/else)] L_0A6A
L_0A6A:
        mov     word ptr [0x111], ax            ; A3 11 01
        call    L_0993                          ; E8 23 FF
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        jcxz    L_0A78                          ; E3 03
        call    L_0947                          ; E8 CF FE
;   [conditional branch target (if/else)] L_0A78
L_0A78:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        xor     byte ptr [bx + di], dh          ; 30 31
        xor     dh, byte ptr [bp + di]          ; 32 33
        xor     al, 0x35                        ; 34 35
        aaa                                     ; 36 37
        cmp     byte ptr [bx + di], bh          ; 38 39
        sub     al, 0xd                         ; 2C 0D
        sub     al, 0x2d                        ; 2C 2D
        add     byte ptr cs:[bx + si + 0x71], dh ; 2E 00 70 71
        jb      L_0B0C                          ; 72 73
        je      L_0B10                          ; 74 75
        jbe     L_0B14                          ; 76 77
        js      L_0B18                          ; 78 79
        insb    byte ptr es:[di], dx            ; 6C
        dec     bp                              ; 4D
        insb    byte ptr es:[di], dx            ; 6C
        insw    word ptr es:[di], dx            ; 6D
        outsb   dx, byte ptr [si]               ; 6E
        add     byte ptr [bx + si + 0x51], dl   ; 00 50 51
        push    dx                              ; 52
        push    bx                              ; 53
        push    sp                              ; 54
        push    bp                              ; 55
        push    si                              ; 56
        push    di                              ; 57
        sbb     cx, word ptr [bp + 0x1b]        ; 1B 4E 1B
        dec     bp                              ; 4D
        sbb     cx, word ptr [si + 0x1b]        ; 1B 4C 1B
        dec     ax                              ; 48
        sbb     ax, word ptr [si + 0x1b]        ; 1B 44 1B
        inc     cx                              ; 41
        sbb     ax, word ptr [bp + di + 0x1b]   ; 1B 43 1B
        inc     dx                              ; 42
        pop     bx                              ; 5B
        push    ax                              ; 50
        pop     bx                              ; 5B
        dec     bp                              ; 4D
        pop     bx                              ; 5B
        dec     sp                              ; 4C
        pop     bx                              ; 5B
        dec     ax                              ; 48
        pop     bx                              ; 5B
        inc     sp                              ; 44
        pop     bx                              ; 5B
        inc     cx                              ; 41
        pop     bx                              ; 5B
        inc     bx                              ; 43
        pop     bx                              ; 5B
        inc     dx                              ; 42
        pop     bx                              ; 5B
        push    ax                              ; 50
        pop     bx                              ; 5B
        dec     bp                              ; 4D
        pop     bx                              ; 5B
        dec     sp                              ; 4C
        pop     bx                              ; 5B
        dec     ax                              ; 48
        dec     di                              ; 4F
        inc     sp                              ; 44
        dec     di                              ; 4F
        inc     cx                              ; 41
        dec     di                              ; 4F
        inc     bx                              ; 43
        dec     di                              ; 4F
        inc     dx                              ; 42
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     byte ptr [bp - 6], 0x1b         ; C6 46 FA 1B
        mov     cl, byte ptr [0x10d]            ; 8A 0E 0D 01
        and     cx, 4                           ; 81 E1 04 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     ah, ah                          ; 32 E4
        cmp     al, 0x60                        ; 3C 60
        jb      L_0B2A                          ; 72 28
        cmp     al, 0x6e                        ; 3C 6E
        ja      L_0B2A                          ; 77 24
        sub     al, 0x60                        ; 2C 60
        test    byte ptr [0x10e], 2             ; F6 06 0E 01 02
        je      L_0B1C                          ; 74 0D
        mov     bl, 0x3f                        ; B3 3F
        jcxz    L_0B15                          ; E3 02
        mov     bl, 0x4f                        ; B3 4F
;   [conditional branch target (if/else)] L_0B15
L_0B15:
        mov     byte ptr [bp - 5], bl           ; 88 5E FB
;   [conditional branch target (if/else)] L_0B18
L_0B18:
        inc     di                              ; 47
        inc     di                              ; 47
        add     al, 0x10                        ; 04 10
;   [conditional branch target (if/else)] L_0B1C
L_0B1C:
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr cs:[bx + 0xa85]    ; 2E 8A 87 85 0A
;   [loop start] L_0B23
L_0B23:
        mov     byte ptr [bp + di - 6], al      ; 88 43 FA
        inc     di                              ; 47
        jmp     L_0BB6                          ; E9 8C 00
;   [conditional branch target (if/else)] L_0B2A
L_0B2A:
        cmp     al, 0x70                        ; 3C 70
        jb      L_0B66                          ; 72 38
        cmp     al, 0x79                        ; 3C 79
        ja      L_0B66                          ; 77 34
        je      L_0B5A                          ; 74 26
        cmp     al, 0x78                        ; 3C 78
        je      L_0B4A                          ; 74 12
        inc     di                              ; 47
        jcxz    L_0B40                          ; E3 05
        mov     byte ptr [bp - 5], 0x4f         ; C6 46 FB 4F
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_0B40
L_0B40:
        sub     al, 0x70                        ; 2C 70
        xchg    bx, ax                          ; 93
        mov     al, byte ptr cs:[bx + 0xaa5]    ; 2E 8A 87 A5 0A
        jmp     L_0B23                          ; EB D9
;   [conditional branch target (if/else)] L_0B4A
L_0B4A:
        mov     ax, 0x4930                      ; B8 30 49
        jcxz    L_0B52                          ; E3 03
        mov     ax, 0x584f                      ; B8 4F 58
;   [conditional branch target (if/else)] L_0B52
L_0B52:
        mov     word ptr [bp - 5], ax           ; 89 46 FB
        ; constant WM_MOVE
        mov     di, 3                           ; BF 03 00
        jmp     L_0BB6                          ; EB 5C
;   [loop start (also forward branch)] L_0B5A
L_0B5A:
        inc     di                              ; 47
        jcxz    L_0B62                          ; E3 05
        mov     byte ptr [bp - 5], 0x5b         ; C6 46 FB 5B
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_0B62
L_0B62:
        mov     al, 0x7e                        ; B0 7E
        jmp     L_0B23                          ; EB BD
;   [conditional branch target (if/else)] L_0B66
L_0B66:
        cmp     al, 0x2f                        ; 3C 2F
        je      L_0B5A                          ; 74 F0
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_0B72                          ; 75 04
        mov     al, 0x7f                        ; B0 7F
        jmp     L_0B23                          ; EB B1
;   [conditional branch target (if/else)] L_0B72
L_0B72:
        cmp     al, 0x2d                        ; 3C 2D
        jne     L_0B93                          ; 75 1D
        mov     bx, 0x404f                      ; BB 4F 40
        inc     di                              ; 47
        jcxz    L_0B86                          ; E3 0A
        mov     word ptr [bp - 5], 0x345b       ; C7 46 FB 5B 34
        inc     di                              ; 47
        inc     di                              ; 47
        mov     bx, 0x686c                      ; BB 6C 68
;   [conditional branch target (if/else)] L_0B86
L_0B86:
        mov     al, bh                          ; 8A C7
        test    byte ptr [0x10d], 8             ; F6 06 0D 01 08
        je      L_0B91                          ; 74 02
        mov     al, bl                          ; 8A C3
;   [conditional branch target (if/else)] L_0B91
L_0B91:
        jmp     L_0B23                          ; EB 90
;   [conditional branch target (if/else)] L_0B93
L_0B93:
        sub     al, 0x21                        ; 2C 21
        jb      L_0BC8                          ; 72 31
        cmp     al, 7                           ; 3C 07
        ja      L_0BC8                          ; 77 2D
        add     ax, ax                          ; 03 C0
        jcxz    L_0BAB                          ; E3 0C
        inc     di                              ; 47
        add     al, 0x10                        ; 04 10
        test    byte ptr [0x10e], 1             ; F6 06 0E 01 01
        je      L_0BAB                          ; 74 02
        add     al, 0x10                        ; 04 10
;   [conditional branch target (if/else)] L_0BAB
L_0BAB:
        xchg    bx, ax                          ; 93
        mov     ax, word ptr cs:[bx + 0xaad]    ; 2E 8B 87 AD 0A
        mov     word ptr [bp + di - 6], ax      ; 89 43 FA
        inc     di                              ; 47
        inc     di                              ; 47
;   [unconditional branch target] L_0BB6
L_0BB6:
        or      di, di                          ; 0B FF
        je      L_0BC8                          ; 74 0E
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    di                              ; 57
        call    far _entry_48                   ; 9A D6 09 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0BC8
L_0BC8:
        mov     ax, di                          ; 8B C7
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

TERMINAL_TEXT ENDS

        END
