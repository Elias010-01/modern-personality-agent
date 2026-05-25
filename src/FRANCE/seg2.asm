; AUTO-GENERATED from original FRANCE segment 2
; segment_size=1155 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

FRANCE_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
L_001E:
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
        cmp     word ptr [0x29], 0              ; 83 3E 29 00 00
        je      L_0078                          ; 74 31
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_005A                          ; 74 0C
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        or      byte ptr [0x96], 0x10           ; 80 0E 96 00 10
        pop     ds                              ; 1F
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
        mov     word ptr [0x29], 0              ; C7 06 29 00 00 00
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
        cmp     word ptr [0x29], 0              ; 83 3E 29 00 00
        jne     L_00FD                          ; 75 5A
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_00B6                          ; 74 0C
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        xor     byte ptr [0x96], 0x10           ; 80 36 96 00 10
        pop     ds                              ; 1F
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
        mov     dx, 0x2f                        ; BA 2F 00
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
        mov     dx, 0x26b                       ; BA 6B 02
        int     0x21                            ; CD 21
        mov     word ptr [0x29], 1              ; C7 06 29 00 01 00
L_00FD:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_010A -- offset 0x010A -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: bios_caller, int_16
; calls (intra): sub_0150
;----------------------------------------------------------------------
L_010A:
        mov     ah, 2                           ; B4 02
        int     0x16                            ; CD 16
        mov     dl, 0x80                        ; B2 80
        mov     ah, 3                           ; B4 03
        mov     bx, 0x10                        ; BB 10 00
        call    L_0150                          ; E8 38 00
        mov     ah, 4                           ; B4 04
        mov     bl, 0x11                        ; B3 11
        call    L_0150                          ; E8 31 00
        mov     ah, 8                           ; B4 08
        mov     bl, 0x12                        ; B3 12
        call    L_0150                          ; E8 2A 00
        mov     dl, 1                           ; B2 01
        mov     ah, 0x10                        ; B4 10
        mov     bl, 0x91                        ; B3 91
        call    L_0150                          ; E8 21 00
        mov     ah, 0x20                        ; B4 20
        mov     bl, 0x90                        ; B3 90
        call    L_0150                          ; E8 1A 00
        mov     ah, 0x40                        ; B4 40
        mov     bl, 0x14                        ; B3 14
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_0150                          ; 74 0F
        mov     dl, 0x80                        ; B2 80
        mov     bl, 0x10                        ; B3 10
        call    L_0150                          ; E8 08 00
        je      L_0157                          ; 74 0D
        mov     byte ptr [0x21], 1              ; C6 06 21 00 01
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0150 -- offset 0x0150 -- 160 instr
; Iterador con instrucciones de string (movsb/scasb/...) (160 instr).
; tags: complex_iterator, far, loop, string_op
; callers: sub_010A
;----------------------------------------------------------------------
L_0150:
        test    ah, al                          ; 84 C4
        je      L_0157                          ; 74 03
        mov     byte ptr es:[bx + di], dl       ; 26 88 11
L_0157:
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
L_01A4:
        lea     sp, [bx + di - 0x7474]          ; 8D A1 8C 8B
        movsb   byte ptr es:[di], byte ptr fs:[si] ; 64 A4
        xchg    bp, ax                          ; 95
L_01AB:
        mov     byte ptr [0x6f93], al           ; A2 93 6F
        xchg    sp, ax                          ; 94
        pop     di                              ; 5F
        outsw   dx, word ptr [si]               ; 6F
        xchg    di, ax                          ; 97
        mov     word ptr [0x8196], ax           ; A3 96 81
        jns     L_0216                          ; 79 5F
        cwde                                    ; 98
        db      0c7h                            ; C7
        cld                                     ; FC
        jmp     0xffffe69f                      ; E9 E2 E4
        loopne  L_01A4                          ; E0 E5
        out     0xea, ax                        ; E7 EA
        jmp     L_01AB                          ; EB E8
        out     dx, ax                          ; EF
        out     dx, al                          ; EE
        in      al, dx                          ; EC
        db      0c4h                            ; C4
L_01C7:
        db      0c5h                            ; C5
        leave                                   ; C9
        out     0xc6, al                        ; E6 C6
        hlt                                     ; F4
        div     dl                              ; F6 F2
        sti                                     ; FB
        stc                                     ; F9
        call    si                              ; FF D6
        fsub    qword ptr [bp + si - 0x5a5d]    ; DC A2 A3 A5
        jo      L_023E                          ; 70 66
        loope   L_01C7                          ; E1 ED
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
L_0216:
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
L_023E:
        lds     si, ptr ss:[bx + 8]             ; 36 C5 77 08
        les     di, ptr ss:[bx + 4]             ; 36 C4 7F 04
        cld                                     ; FC
        mov     ah, 0xff                        ; B4 FF
        jmp     dx                              ; FF E2
L_024B:
        cdq                                     ; 99
        mov     ax, dx                          ; 8B C2
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     ds                              ; 1F
        retf    8                               ; CA 08 00
        call    L_0238                          ; E8 E1 FF
        mov     bx, 0xb8                        ; BB B8 00
L_025A:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0263                          ; 72 04
        xlatb                                   ; 2E D7
        and     ah, al                          ; 22 E0
L_0263:
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_025A                          ; 75 F2
        jmp     L_024B                          ; EB E1
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_026A -- offset 0x026A -- 191 instr
; Iterador con instrucciones de string (movsb/scasb/...) (191 instr).
; tags: complex_iterator, far, string_op
; calls (intra): sub_0428
;----------------------------------------------------------------------
L_026A:
        call    L_0238                          ; E8 CB FF
        mov     bx, 0x138                       ; BB 38 01
L_0270:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x80                        ; 3C 80
        jb      L_0279                          ; 72 04
        xlatb                                   ; 2E D7
        and     ah, al                          ; 22 E0
L_0279:
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        jne     L_0270                          ; 75 F2
        jmp     L_024B                          ; EB CB
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
        jge     L_02BF                          ; 7D 27
        cmp     al, 0x12                        ; 3C 12
        jne     L_02BA                          ; 75 1E
        les     di, ptr [bp + 8]                ; C4 7E 08
        xor     ax, ax                          ; 33 C0
        xchg    byte ptr [0x4a6], al            ; 86 06 A6 04
        cmp     byte ptr es:[di], ah            ; 26 38 25
        je      L_02BA                          ; 74 10
        or      al, al                          ; 0A C0
        jne     L_02B7                          ; 75 09
        push    es                              ; 06
        push    di                              ; 57
        push    es                              ; 06
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_026A                          ; E8 B3 FF
L_02B7:
        jmp     L_0418                          ; E9 5E 01
L_02BA:
        xor     ax, ax                          ; 33 C0
        jmp     L_041B                          ; E9 5C 01
L_02BF:
        les     si, ptr [bp + 0xc]              ; C4 76 0C
        mov     ch, 0x80                        ; B5 80
        test    byte ptr es:[si + 0x12], ch     ; 26 84 6C 12
        je      L_0326                          ; 74 5C
        test    byte ptr es:[si + 0x11], ch     ; 26 84 6C 11
        jne     L_030C                          ; 75 3C
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        jne     L_0326                          ; 75 50
        test    word ptr [bp + 6], 1            ; F7 46 06 01 00
        jne     L_0326                          ; 75 49
        cmp     bl, 0x53                        ; 80 FB 53
        jae     L_0326                          ; 73 44
        sub     bl, 0x47                        ; 80 EB 47
        jb      L_0326                          ; 72 3F
        xor     bh, bh                          ; 32 FF
        mov     bh, byte ptr [bx + 0x49a]       ; 8A BF 9A 04
        cmp     bh, 0xff                        ; 80 FF FF
        je      L_0326                          ; 74 34
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     al, 0xa                         ; B0 0A
        mov     bl, byte ptr es:[di]            ; 26 8A 1D
        mul     bl                              ; F6 E3
        add     al, bh                          ; 02 C7
        mov     byte ptr es:[di], al            ; 26 88 05
        cmp     al, bl                          ; 3A C3
        jne     L_02BA                          ; 75 B5
        mov     byte ptr [0x4a6], 1             ; C6 06 A6 04 01
        jmp     L_02BA                          ; EB AE
L_030C:
        mov     byte ptr [0x3da], al            ; A2 DA 03
        mov     bx, 0x3b3                       ; BB B3 03
L_0312:
        add     bx, 3                           ; 83 C3 03
        cmp     byte ptr [bx], al               ; 38 07
        jne     L_0312                          ; 75 F9
        mov     ax, word ptr [bx + 1]           ; 8B 47 01
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        je      L_034C                          ; 74 2A
        xchg    ah, al                          ; 86 C4
        jmp     L_034C                          ; EB 26
L_0326:
        mov     byte ptr [0x3b2], al            ; A2 B2 03
        mov     bx, 0x296                       ; BB 96 02
L_032C:
        add     bx, 4                           ; 83 C3 04
        cmp     byte ptr [bx], al               ; 38 07
        jne     L_032C                          ; 75 F9
        test    byte ptr es:[si + 0x11], ch     ; 26 84 6C 11
        je      L_0352                          ; 74 19
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cmp     al, 0xff                        ; 3C FF
        je      L_034F                          ; 74 0F
        or      al, al                          ; 0A C0
        jns     L_034C                          ; 79 08
        and     al, 0x7f                        ; 24 7F
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        je      L_034F                          ; 74 03
L_034C:
        jmp     L_03ED                          ; E9 9E 00
L_034F:
        jmp     L_02BA                          ; E9 68 FF
L_0352:
        mov     ax, word ptr [bx + 1]           ; 8B 47 01
        test    byte ptr es:[si + 0x10], ch     ; 26 84 6C 10
        je      L_035D                          ; 74 02
        xchg    ah, al                          ; 86 C4
L_035D:
        test    byte ptr es:[si + 0x14], 1      ; 26 F6 44 14 01
        je      L_0381                          ; 74 1D
        cmp     dl, 0x41                        ; 80 FA 41
        jb      L_0372                          ; 72 09
        cmp     dl, 0x5a                        ; 80 FA 5A
        ja      L_0372                          ; 77 04
        xchg    ah, al                          ; 86 C4
        jmp     L_0381                          ; EB 0F
L_0372:
        mov     bx, 0x3dc                       ; BB DC 03
L_0375:
        inc     bx                              ; 43
        cmp     byte ptr [bx], 0xff             ; 80 3F FF
        je      L_0381                          ; 74 06
        cmp     byte ptr [bx], dl               ; 38 17
        jne     L_0375                          ; 75 F6
        xchg    ah, al                          ; 86 C4
L_0381:
        mov     bx, 0x44f                       ; BB 4F 04
L_0384:
        inc     bx                              ; 43
        mov     ah, byte ptr [bx]               ; 8A 27
        cmp     ah, 0xff                        ; 80 FC FF
        je      L_039D                          ; 74 11
        cmp     al, ah                          ; 3A C4
        jne     L_0384                          ; 75 F4
        mov     byte ptr [0x453], al            ; A2 53 04
        les     di, ptr [bp + 8]                ; C4 7E 08
        stosb   byte ptr es:[di], al            ; AA
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_041B                          ; EB 7F
        nop                                     ; 90
L_039D:
        mov     ah, byte ptr [0x453]            ; 8A 26 53 04
        or      ah, ah                          ; 0A E4
        je      L_03ED                          ; 74 48
        mov     byte ptr [0x495], al            ; A2 95 04
        mov     bx, 0x44f                       ; BB 4F 04
L_03AB:
        add     bx, 5                           ; 83 C3 05
        cmp     byte ptr [bx], al               ; 38 07
        jne     L_03AB                          ; 75 F9
        cmp     byte ptr [bx + 2], 0xff         ; 80 7F 02 FF
        je      L_03F9                          ; 74 41
        mov     byte ptr [0x453], 0             ; C6 06 53 04 00
        cmp     ah, 0x60                        ; 80 FC 60
        jne     L_03C7                          ; 75 05
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        jmp     L_03E5                          ; EB 1E
L_03C7:
        cmp     ah, 0xb4                        ; 80 FC B4
        jne     L_03D1                          ; 75 05
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        jmp     L_03E5                          ; EB 14
L_03D1:
        cmp     ah, 0x5e                        ; 80 FC 5E
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        je      L_03E5                          ; 74 0C
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cmp     byte ptr [bx], 0x79             ; 80 3F 79
        jne     L_03E5                          ; 75 04
        mov     al, 0xff                        ; B0 FF
        jmp     L_0414                          ; EB 2F
L_03E5:
        cmp     al, 0xff                        ; 3C FF
        jne     L_0414                          ; 75 2B
        mov     al, byte ptr [bx]               ; 8A 07
        jmp     L_03FD                          ; EB 10
L_03ED:
        xor     ah, ah                          ; 32 E4
        cmp     al, 0xff                        ; 3C FF
        jne     L_0414                          ; 75 21
L_03F3:
        call    L_0428                          ; E8 32 00
        jmp     L_02BA                          ; E9 C1 FE
L_03F9:
        cmp     al, 0xff                        ; 3C FF
        je      L_03F3                          ; 74 F6
L_03FD:
        mov     byte ptr [0x453], 0             ; C6 06 53 04 00
        les     di, ptr [bp + 8]                ; C4 7E 08
        push    ax                              ; 50
        mov     al, ah                          ; 8A C4
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        pop     ax                              ; 58
        xor     ah, ah                          ; 32 E4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 2                           ; B8 02 00
        jmp     L_041B                          ; EB 07
L_0414:
        les     di, ptr [bp + 8]                ; C4 7E 08
        stosb   byte ptr es:[di], al            ; AA
L_0418:
        mov     ax, 1                           ; B8 01 00
L_041B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0428 -- offset 0x0428 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_026A
; calls (intra): sub_0467
;----------------------------------------------------------------------
L_0428:
        xor     bx, bx                          ; 33 DB
        mov     al, 0x40                        ; B0 40
        cmp     byte ptr [0x20], 0              ; 80 3E 20 00 00
        je      L_044C                          ; 74 19
        mov     es, bx                          ; 8E C3
        cmp     byte ptr [0x21], 0              ; 80 3E 21 00 00
        je      L_0443                          ; 74 07
        or      byte ptr es:[0x417], al         ; 26 08 06 17 04
        jmp     L_0451                          ; EB 0E
L_0443:
        not     al                              ; F6 D0
        and     byte ptr es:[0x417], al         ; 26 20 06 17 04
        jmp     L_0451                          ; EB 05
L_044C:
        mov     bl, 0x14                        ; B3 14
        call    L_0467                          ; E8 16 00
L_0451:
        mov     al, 0x10                        ; B0 10
        mov     bl, 0x91                        ; B3 91
        call    L_0467                          ; E8 0F 00
        mov     al, 0x20                        ; B0 20
        mov     bl, 0x90                        ; B3 90
        call    L_0467                          ; E8 08 00
        mov     ah, 1                           ; B4 01
        pushf                                   ; 9C
        lcall   [0x14]                          ; FF 1E 14 00
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0467 -- offset 0x0467 -- 10 instr
; Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0428
;----------------------------------------------------------------------
L_0467:
        les     si, ptr [bp + 0xc]              ; C4 76 0C
        test    byte ptr es:[bx + si], 1        ; 26 F6 00 01
        mov     si, 0                           ; BE 00 00
        mov     es, si                          ; 8E C6
        je      L_047B                          ; 74 06
        or      byte ptr es:[0x417], al         ; 26 08 06 17 04
        ret                                     ; C3
L_047B:
        not     al                              ; F6 D0
        and     byte ptr es:[0x417], al         ; 26 20 06 17 04
        ret                                     ; C3

FRANCE_TEXT ENDS

        END
