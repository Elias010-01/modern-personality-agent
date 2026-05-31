; ======================================================================
; UK / seg2.asm   (segment 2 of UK)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         5
; Total instructions:                  323
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            2
;   Unclear:                             3
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original UK segment 2
; segment_size=924 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

UK_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        mov     si, 0                           ; BE 00 00
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_001E                          ; 74 05
        mov     word ptr [si + 6], 0xc          ; C7 44 06 0C 00
;   [conditional branch target (if/else)] L_001E
L_001E:
        ; constant WM_SETTEXT
        mov     ax, 0xc                         ; B8 0C 00
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     ax, cx                          ; 2B C1
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
        cmp     word ptr [0x21], 0              ; 83 3E 21 00 00
        je      L_0078                          ; 74 31
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_005A                          ; 74 0C
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        or      byte ptr [0x96], 0x10           ; 80 0E 96 00 10
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_005A
L_005A:
        mov     ah, 0x25                        ; B4 25
        mov     al, 9                           ; B0 09
        push    ds                              ; 1E
        lds     dx, ptr [0xc]                   ; C5 16 0C 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     ah, 0x25                        ; B4 25
        mov     al, 0x1b                        ; B0 1B
        push    ds                              ; 1E
        lds     dx, ptr [0x10]                  ; C5 16 10 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0x21], 0              ; C7 06 21 00 00 00
;   [conditional branch target (if/else)] L_0078
L_0078:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, es                          ; 8C C0
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     word ptr [0x1a], es             ; 8C 06 1A 00
        cmp     word ptr [0x21], 0              ; 83 3E 21 00 00
        jne     L_00FD                          ; 75 5A
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_00B6                          ; 74 0C
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        xor     byte ptr [0x96], 0x10           ; 80 36 96 00 10
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_00B6
L_00B6:
        mov     ah, 0x35                        ; B4 35
        mov     al, 9                           ; B0 09
        int     0x21                            ; CD 21
        mov     word ptr [0xc], bx              ; 89 1E 0C 00
        mov     word ptr [0xe], es              ; 8C 06 0E 00
        mov     ax, 0x3516                      ; B8 16 35
        int     0x21                            ; CD 21
        mov     word ptr [0x14], bx             ; 89 1E 14 00
        mov     word ptr [0x16], es             ; 8C 06 16 00
        mov     ah, 0x25                        ; B4 25
        mov     al, 9                           ; B0 09
        mov     dx, 0x27                        ; BA 27 00
        int     0x21                            ; CD 21
        les     di, ptr [bp + 6]                ; C4 7E 06
        call    L_010A                          ; E8 2A 00
        mov     ah, 0x35                        ; B4 35
        mov     al, 0x1b                        ; B0 1B
        int     0x21                            ; CD 21
        mov     word ptr [0x10], bx             ; 89 1E 10 00
        mov     word ptr [0x12], es             ; 8C 06 12 00
        mov     ah, 0x25                        ; B4 25
        mov     al, 0x1b                        ; B0 1B
        mov     dx, 0x1ee                       ; BA EE 01
        int     0x21                            ; CD 21
        mov     word ptr [0x21], 1              ; C7 06 21 00 01 00
;   [conditional branch target (if/else)] L_00FD
L_00FD:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (21 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_010A   offset=0x010A  size=21 instr  segment=seg2.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=5)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_013A
;-------------------------------------------------------------------------
;   [sub-routine] L_010A
L_010A:
        mov     ah, 2                           ; B4 02
        int     0x16                            ; CD 16
        ; constant GMEM_ZEROINIT
        mov     dl, 0x80                        ; B2 80
        ; constant WM_MOVE
        mov     ah, 3                           ; B4 03
        ; constant VK_SHIFT
        mov     bx, 0x10                        ; BB 10 00
        call    L_013A                          ; E8 22 00
        mov     ah, 4                           ; B4 04
        mov     bl, 0x11                        ; B3 11
        call    L_013A                          ; E8 1B 00
        mov     ah, 8                           ; B4 08
        mov     bl, 0x12                        ; B3 12
        call    L_013A                          ; E8 14 00
        ; constant WM_CREATE
        mov     dl, 1                           ; B2 01
        ; constant VK_SHIFT
        mov     ah, 0x10                        ; B4 10
        mov     bl, 0x91                        ; B3 91
        call    L_013A                          ; E8 0B 00
        mov     ah, 0x20                        ; B4 20
        mov     bl, 0x90                        ; B3 90
        call    L_013A                          ; E8 04 00
        mov     ah, 0x40                        ; B4 40
        mov     bl, 0x14                        ; B3 14
; Description (heuristic):
;   Pure computation / dispatcher (160 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_013A   offset=0x013A  size=160 instr  segment=seg2.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0222
;-------------------------------------------------------------------------
;   [sub-routine] L_013A
L_013A:
        test    ah, al                          ; 84 C4
        je      L_0141                          ; 74 03
        mov     byte ptr es:[bx + di], dl       ; 26 88 11
;   [error/early exit] L_0141
L_0141:
        ret                                     ; C3
        and     byte ptr [di - 0x6365], ch      ; 20 AD 9B 9C
        setge   byte ptr [si + 0x15]            ; 0F 9D 7C 15
        and     ah, byte ptr [bp + di - 0x5a]   ; 22 63 A6
        scasb   al, byte ptr es:[di]            ; AE
        stosb   byte ptr es:[di], al            ; AA
        sub     ax, 0x5f72                      ; 2D 72 5F
        clc                                     ; F8
        int1                                    ; F1
        std                                     ; FD
        xor     sp, word ptr [bx]               ; 33 27
        out     0x14, al                        ; E6 14
        cli                                     ; FA
        sub     al, 0x31                        ; 2C 31
        cmpsw   word ptr [si], word ptr es:[di] ; A7
        scasw   ax, word ptr es:[di]            ; AF
        lodsb   al, byte ptr [si]               ; AC
        stosw   word ptr es:[di], ax            ; AB
        pop     di                              ; 5F
        test    al, 0x41                        ; A8 41
        inc     cx                              ; 41
        inc     cx                              ; 41
        inc     cx                              ; 41
        mov     cs, word ptr [bx - 0x7f6e]      ; 8E 8F 92 80
        inc     bp                              ; 45
        nop                                     ; 90
        inc     bp                              ; 45
        inc     bp                              ; 45
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        dec     cx                              ; 49
        inc     sp                              ; 44
        movsw   word ptr es:[di], word ptr [si] ; A5
        dec     di                              ; 4F
        dec     di                              ; 4F
        dec     di                              ; 4F
        dec     di                              ; 4F
        cdq                                     ; 99
        pop     di                              ; 5F
        dec     di                              ; 4F
        push    bp                              ; 55
        push    bp                              ; 55
        push    bp                              ; 55
        lcall   0x85e1, 0x5f59                  ; 9A 59 5F E1 85
        mov     al, byte ptr [0x6183]           ; A0 83 61
        test    byte ptr [bp - 0x786f], al      ; 84 86 91 87
        mov     al, byte ptr [bp + si - 0x7678] ; 8A 82 88 89
;   [loop iteration target] L_018E
L_018E:
        lea     sp, [bx + di - 0x7474]          ; 8D A1 8C 8B
        movsb   byte ptr es:[di], byte ptr fs:[si] ; 64 A4
        xchg    bp, ax                          ; 95
;   [loop start] L_0195
L_0195:
        mov     byte ptr [0x6f93], al           ; A2 93 6F
        xchg    sp, ax                          ; 94
        pop     di                              ; 5F
        outsw   dx, word ptr [si]               ; 6F
        xchg    di, ax                          ; 97
        mov     word ptr [0x8196], ax           ; A3 96 81
        jns     L_0200                          ; 79 5F
        cwde                                    ; 98
        db      0c7h                            ; C7
        cld                                     ; FC
        jmp     0xffffe689                      ; E9 E2 E4
        loopne  L_018E                          ; E0 E5
        out     0xea, ax                        ; E7 EA
        jmp     L_0195                          ; EB E8
        out     dx, ax                          ; EF
        out     dx, al                          ; EE
        in      al, dx                          ; EC
        db      0c4h                            ; C4
;   [loop iteration target] L_01B1
L_01B1:
        db      0c5h                            ; C5
        leave                                   ; C9
        out     0xc6, al                        ; E6 C6
        hlt                                     ; F4
        div     dl                              ; F6 F2
        sti                                     ; FB
        stc                                     ; F9
        call    si                              ; FF D6
        fsub    qword ptr [bp + si - 0x5a5d]    ; DC A2 A3 A5
        jo      L_0228                          ; 70 66
        loope   L_01B1                          ; E1 ED
        cli                                     ; F3 FA
        int1                                    ; F1
        shr     word ptr [bp + si - 0x4046], 1  ; D1 AA BA BF
        pop     di                              ; 5F
        lodsb   al, byte ptr [si]               ; AC
        mov     bp, 0xa1bc                      ; BD BC A1
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x2020                      ; BB 20 20
        and     byte ptr [si + 0x2b], bh        ; 20 7C 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     di, word ptr [si + 0x2b]        ; 2B 7C 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     ax, 0x2b2b                      ; 2D 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        cmp     ax, 0x2b2b                      ; 3D 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     bp, word ptr [bp + di]          ; 2B 2B
        sub     sp, word ptr [bx + si]          ; 2B 20
        and     byte ptr [bx + si], ah          ; 20 20
;   [conditional branch target (if/else)] L_0200
L_0200:
        and     byte ptr [bx + si], ah          ; 20 20
        pop     di                              ; 5F
        fistp   word ptr [bx - 0x4a]            ; DF 5F B6
        pop     di                              ; 5F
        pop     di                              ; 5F
        mov     ch, 0x5f                        ; B5 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        mov     cl, 0x5f                        ; B1 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        pop     di                              ; 5F
        mov     al, 0xb7                        ; B0 B7
        mov     bh, 0x5f                        ; B7 5F
        outsb   dx, byte ptr [si]               ; 6E
        mov     dl, 0xa8                        ; B2 A8
        and     byte ptr [bp + si - 0x75], bl   ; 20 5A 8B
        fcomp   qword ptr [0x5756]              ; DC 1E 56 57
;   [conditional branch target (if/else)] L_0228
L_0228:
        lds     si, ptr ss:[bx + 8]             ; 36 C5 77 08
        les     di, ptr ss:[bx + 4]             ; 36 C4 7F 04
        cld                                     ; FC
        mov     ah, 0xff                        ; B4 FF
        jmp     dx                              ; FF E2
;   [loop start] L_0235
L_0235:
        cdq                                     ; 99
        mov     ax, dx                          ; 8B C2
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     ds                              ; 1F
        retf    8                               ; CA 08 00
        call    L_0222                          ; E8 E1 FF
        mov     bx, 0xa2                        ; BB A2 00
;   [loop start] L_0244
L_0244:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0xa0                        ; 3C A0
        jb      L_024D                          ; 72 04
        xlatb                                   ; 2E D7
        and     ah, al                          ; 22 E0
;   [conditional branch target (if/else)] L_024D
L_024D:
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_0244                          ; 75 F2
        jmp     L_0235                          ; EB E1
; Description (heuristic):
;   Pure computation / dispatcher (118 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0254   offset=0x0254  size=118 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0222, L_0254, L_0361
;-------------------------------------------------------------------------
;   [sub-routine] L_0254
L_0254:
        call    L_0222                          ; E8 CB FF
        mov     bx, 0x122                       ; BB 22 01
;   [loop start] L_025A
L_025A:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x80                        ; 3C 80
        jb      L_0263                          ; 72 04
        xlatb                                   ; 2E D7
        and     ah, al                          ; 22 E0
;   [conditional branch target (if/else)] L_0263
L_0263:
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_025A                          ; 75 F2
        jmp     L_0235                          ; EB CB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     dx, ax                          ; 8B D0
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        or      bx, bx                          ; 0B DB
        jge     L_02A9                          ; 7D 27
        cmp     al, 0x12                        ; 3C 12
        jne     L_02A4                          ; 75 1E
        les     di, ptr [bp + 8]                ; C4 7E 08
        xor     ax, ax                          ; 33 C0
        xchg    byte ptr [0x3aa], al            ; 86 06 AA 03
        cmp     byte ptr es:[di], ah            ; 26 38 25
        je      L_02A4                          ; 74 10
        or      al, al                          ; 0A C0
        jne     L_02A1                          ; 75 09
        push    es                              ; 06
        push    di                              ; 57
        push    es                              ; 06
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0254                          ; E8 B3 FF
;   [conditional branch target (if/else)] L_02A1
L_02A1:
        jmp     L_0351                          ; E9 AD 00
;   [loop start (also forward branch)] L_02A4
L_02A4:
        xor     ax, ax                          ; 33 C0
        jmp     L_0354                          ; E9 AB 00
;   [conditional branch target (if/else)] L_02A9
L_02A9:
        les     si, ptr [bp + 0xc]              ; C4 76 0C
        ; constant GMEM_ZEROINIT
        mov     ch, 0x80                        ; B5 80
        test    byte ptr es:[si + 0x12], ch     ; 26 84 6C 12
        je      L_02F6                          ; 74 42
        test    byte ptr es:[si + 0x11], ch     ; 26 84 6C 11
        jne     L_02F6                          ; 75 3C
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        jne     L_02F6                          ; 75 36
        test    word ptr [bp + 6], 1            ; F7 46 06 01 00
        jne     L_02F6                          ; 75 2F
        cmp     bl, 0x53                        ; 80 FB 53
        jae     L_02F6                          ; 73 2A
        sub     bl, 0x47                        ; 80 EB 47
        jb      L_02F6                          ; 72 25
        xor     bh, bh                          ; 32 FF
        mov     bh, byte ptr [bx + 0x39e]       ; 8A BF 9E 03
        cmp     bh, 0xff                        ; 80 FF FF
        je      L_02F6                          ; 74 1A
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     al, 0xa                         ; B0 0A
        mov     bl, byte ptr es:[di]            ; 26 8A 1D
        mul     bl                              ; F6 E3
        add     al, bh                          ; 02 C7
        mov     byte ptr es:[di], al            ; 26 88 05
        cmp     al, bl                          ; 3A C3
        jne     L_02A4                          ; 75 B5
        mov     byte ptr [0x3aa], 1             ; C6 06 AA 03 01
        jmp     L_02A4                          ; EB AE
;   [conditional branch target (if/else)] L_02F6
L_02F6:
        mov     byte ptr [0x334], al            ; A2 34 03
        mov     bx, 0x218                       ; BB 18 02
;   [loop start] L_02FC
L_02FC:
        add     bx, 4                           ; 83 C3 04
        cmp     byte ptr [bx], al               ; 38 07
        jne     L_02FC                          ; 75 F9
        test    byte ptr es:[si + 0x11], ch     ; 26 84 6C 11
        je      L_0321                          ; 74 18
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cmp     al, 0xff                        ; 3C FF
        je      L_031F                          ; 74 0F
        or      al, al                          ; 0A C0
        jns     L_031C                          ; 79 08
        and     al, 0x7f                        ; 24 7F
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        je      L_031F                          ; 74 03
;   [conditional branch target (if/else)] L_031C
L_031C:
        jmp     L_0341                          ; EB 23
        nop                                     ; 90
;   [conditional branch target (if/else)] L_031F
L_031F:
        jmp     L_02A4                          ; EB 83
;   [conditional branch target (if/else)] L_0321
L_0321:
        mov     ax, word ptr [bx + 1]           ; 8B 47 01
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        je      L_032C                          ; 74 02
        xchg    ah, al                          ; 86 C4
;   [conditional branch target (if/else)] L_032C
L_032C:
        test    byte ptr es:[si + 0x14], 1      ; 26 F6 44 14 01
        je      L_0341                          ; 74 0E
        cmp     dl, 0x41                        ; 80 FA 41
        jb      L_0341                          ; 72 09
        cmp     dl, 0x5a                        ; 80 FA 5A
        ja      L_0341                          ; 77 04
        xchg    ah, al                          ; 86 C4
        jmp     L_0341                          ; EB 00
;   [branch target] L_0341
L_0341:
        xor     ah, ah                          ; 32 E4
        cmp     al, 0xff                        ; 3C FF
        jne     L_034D                          ; 75 06
        call    L_0361                          ; E8 17 00
        jmp     L_02A4                          ; E9 57 FF
;   [conditional branch target (if/else)] L_034D
L_034D:
        les     di, ptr [bp + 8]                ; C4 7E 08
        stosb   byte ptr es:[di], al            ; AA
;   [unconditional branch target] L_0351
L_0351:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0354
L_0354:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_0361   offset=0x0361  size=14 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0380
;-------------------------------------------------------------------------
;   [sub-routine] L_0361
L_0361:
        xor     bx, bx                          ; 33 DB
        mov     al, 0x40                        ; B0 40
        mov     bl, 0x14                        ; B3 14
        call    L_0380                          ; E8 16 00
        ; constant VK_SHIFT
        mov     al, 0x10                        ; B0 10
        mov     bl, 0x91                        ; B3 91
        call    L_0380                          ; E8 0F 00
        mov     al, 0x20                        ; B0 20
        mov     bl, 0x90                        ; B3 90
        call    L_0380                          ; E8 08 00
        ; constant WM_CREATE
        mov     ah, 1                           ; B4 01
        pushf                                   ; 9C
        lcall   [0x14]                          ; FF 1E 14 00
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0380   offset=0x0380  size=10 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0380
L_0380:
        les     si, ptr [bp + 0xc]              ; C4 76 0C
        test    byte ptr es:[bx + si], 1        ; 26 F6 00 01
        mov     si, 0                           ; BE 00 00
        mov     es, si                          ; 8E C6
        je      L_0394                          ; 74 06
        or      byte ptr es:[0x417], al         ; 26 08 06 17 04
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0394
L_0394:
        not     al                              ; F6 D0
        and     byte ptr es:[0x417], al         ; 26 20 06 17 04
        ret                                     ; C3

UK_TEXT ENDS

        END
