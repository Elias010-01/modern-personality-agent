; AUTO-GENERATED from original TTY segment 1
; segment_size=2730 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TTY_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 82 instr
; Funcion compleja: 82 instrucciones, 2 llamadas, 4 branches.
; tags: calls_user, complex
; calls (inter): USER.SETRECT, USER.SETRECTEMPTY
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
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
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_0037                          ; 76 03
        jmp     L_01FD                          ; E9 C6 01
L_0037:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x201]        ; 2E FF A7 01 02
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        je      L_004C                          ; 74 03
        jmp     L_00E1                          ; E9 95 00
L_004C:
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        inc     word ptr es:[bx + 6]            ; 26 FF 47 06
        or      ax, ax                          ; 0B C0
        jne     L_0075                          ; 75 1D
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
L_006F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_021E                          ; E9 A9 01
L_0075:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A E8 00 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_054E                          ; E8 B9 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x1c], 0      ; 26 C7 47 1C 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0xc9]             ; A1 C9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xcb]             ; A0 CB 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0483                          ; E8 D5 03
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_022A                          ; E8 73 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        jne     L_00D7                          ; 75 16
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
L_00D7:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        je      L_010B                          ; 74 2A
L_00E1:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_010B                          ; 74 15
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A B5 01 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
L_010B:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        jmp     L_021E                          ; E9 09 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        je      L_0148                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e                        ; 05 1E 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        or      ax, ax                          ; 0B C0
        jle     L_0148                          ; 7E 06
        mov     word ptr es:[bx + 0xe], 1       ; 26 C7 47 0E 01 00
L_0148:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        jmp     L_021E                          ; E9 CC 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        jne     L_0165                          ; 75 09
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
L_0165:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xe], 0       ; 26 C7 47 0E 00 00
        jmp     L_006F                          ; E9 FE FE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        jmp     L_01A3                          ; EB 1F
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
L_01A3:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_006F                          ; E9 C5 FE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        jmp     L_006F                          ; E9 AA FE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        ja      L_01FD                          ; 77 27
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1e1]        ; 2E FF A7 E1 01
        jmp     L_006F                          ; E9 8E FE
        outsw   dx, word ptr [si]               ; 6F
        add     byte ptr [bx], ch               ; 00 6F 00
        outsw   dx, word ptr [si]               ; 6F
        add     ch, bh                          ; 00 FD
        add     bp, di                          ; 01 FD
        add     bp, di                          ; 01 FD
        add     bp, di                          ; 01 FD
        add     word ptr [bx], bp               ; 01 6F 00
        std                                     ; FD
        add     word ptr [bx], bp               ; 01 6F 00
        outsw   dx, word ptr [si]               ; 6F
        add     byte ptr [bx], ch               ; 00 6F 00
        std                                     ; FD
        add     word ptr [bx], bp               ; 01 6F 00
L_01FD:
        sub     ax, ax                          ; 2B C0
        jmp     L_021E                          ; EB 1D
        mov     word ptr [bx + si], ax          ; 89 00
        stosb   byte ptr es:[di], al            ; AA
        add     word ptr [bx], di               ; 01 3F
        add     ch, bh                          ; 00 FD
        add     bp, di                          ; 01 FD
        add     bp, di                          ; 01 FD
        add     bp, di                          ; 01 FD
        add     bp, ax                          ; 01 C5
        add     word ptr [bp + si + 0x1501], bx ; 01 9A 01 15
        add     word ptr [bp + si + 1], dx      ; 01 52 01
        jno     L_021A                          ; 71 01
        test    byte ptr [bx + di], al          ; 84 01
        jmp     L_006F                          ; E9 51 FE
L_021E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_022A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x12], 0      ; 26 83 7F 12 00
        jne     L_025C                          ; 75 22
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        cmp     ax, 1                           ; 3D 01 00
        je      L_0253                          ; 74 04
L_024F:
        sub     ax, ax                          ; 2B C0
        jmp     L_029F                          ; EB 4C
L_0253:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x12], 1      ; 26 C7 47 12 01 00
L_025C:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x10], 0      ; 26 83 7F 10 00
        je      L_024F                          ; 74 E9
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        jne     L_024F                          ; 75 E2
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x3e                        ; 05 3E 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x10]     ; 26 3B 47 10
        je      L_0293                          ; 74 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
L_0293:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x10], 0      ; 26 C7 47 10 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_029F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
        mov     si, 0xae                        ; BE AE 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_02F1                          ; 74 2E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02E2                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_02F1                          ; EB 0F
L_02E2:
        mov     ax, 0xc                         ; B8 0C 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        imul    word ptr es:[bx + 0x24]         ; 26 F7 6F 24
        sub     ax, 0xf0                        ; 2D F0 00
        add     si, ax                          ; 03 F0
L_02F1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0303                          ; 75 0A
        call    L_0403                          ; E8 07 01
        or      ax, ax                          ; 0B C0
        jne     L_0303                          ; 75 03
        add     si, 0xc                         ; 83 C6 0C
L_0303:
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_0372                          ; 74 69
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, 0x10                        ; B8 10 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        call    0                               ; E8 E5 FC
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_0327                          ; 74 05
        mov     ax, 0x1e                        ; B8 1E 00
        jmp     L_032A                          ; EB 03
L_0327:
        mov     ax, 0x43e                       ; B8 3E 04
L_032A:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        push    word ptr [si + 8]               ; FF 74 08
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A 54 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    word ptr [si + 0xa]             ; FF 74 0A
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_03D5                          ; EB 63
L_0372:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_0383:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 0x1e       ; 83 7E F4 1E
        jl      L_0383                          ; 7C ED
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx], si            ; 26 89 37
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_03B7                          ; 75 14
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x1e                        ; 05 1E 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_03B7:
        mov     ax, 0x78                        ; B8 78 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     ax, 0x7c                        ; B8 7C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.ADDFONTRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_03D5:
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
        mov     ax, 0x84                        ; B8 84 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.REMOVEFONTRESOURCE      ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_0403:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x50                        ; 83 EC 50
        mov     ax, 0x96                        ; B8 96 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x8d                        ; B8 8D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x8c                        ; B8 8C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_043B                          ; 74 11
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0442                          ; E8 10 00
        cmp     ax, 1                           ; 3D 01 00
        je      L_043B                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_043E                          ; EB 03
L_043B:
        mov     ax, 1                           ; B8 01 00
L_043E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
L_0442:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_045C                          ; EB 09
L_0453:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_045C:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr es:[bx + si], 0        ; 26 80 38 00
        jne     L_0453                          ; 75 DA
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0483:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0xe], 1       ; 26 83 7F 0E 01
        je      L_0499                          ; 74 05
L_0494:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_04FA                          ; EB 61
L_0499:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x10]     ; 26 8B 77 10
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x3e                        ; 05 3E 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     si, ax                          ; 03 F0
        cmp     si, 0x400                       ; 81 FE 00 04
        jl      L_04D5                          ; 7C 1B
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_022A                          ; E8 6B FD
        or      ax, ax                          ; 0B C0
        jl      L_0494                          ; 7C D1
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x3e                        ; 05 3E 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     si, word ptr [bp + 4]           ; 8B 76 04
L_04D5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x10], si     ; 26 89 77 10
        jmp     L_04F0                          ; EB 12
L_04DE:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
L_04F0:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_04DE                          ; 75 E4
L_04FA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0501:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x1c], ax     ; 26 39 47 1C
        je      L_0547                          ; 74 33
        mov     si, word ptr es:[bx + 0x1c]     ; 26 8B 77 1C
        mov     ax, si                          ; 8B C6
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jae     L_0547                          ; 73 28
        jmp     L_0536                          ; EB 15
L_0521:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0xcc]             ; A1 CC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xce]             ; A0 CE 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0483                          ; E8 4E FF
        inc     si                              ; 46
L_0536:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        ja      L_0521                          ; 77 E4
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x1c], ax     ; 26 89 47 1C
L_0547:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_054E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x1a], ax     ; 26 39 47 1A
        je      L_05AA                          ; 74 49
        or      ax, ax                          ; 0B C0
        jb      L_05AA                          ; 72 45
        mov     si, word ptr es:[bx + 0x1a]     ; 26 8B 77 1A
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jae     L_0599                          ; 73 29
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0xc6]             ; A1 C6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xc8]             ; A0 C8 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0483                          ; E8 03 FF
        sub     si, si                          ; 2B F6
        jmp     L_0599                          ; EB 15
L_0584:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0xcf]             ; A1 CF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xd1]             ; A0 D1 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0483                          ; E8 EB FE
        inc     si                              ; 46
L_0599:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        ja      L_0584                          ; 77 E4
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
L_05AA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_05B1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_05D9                          ; 7D 0D
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_05D9:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0669                          ; E9 88 00
L_05E1:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_061C                          ; 74 2A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_061C                          ; 75 21
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_061C                          ; 7F 0A
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_061C:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        add     word ptr [bp - 4], ax           ; 01 46 FC
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0663                          ; 74 3A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x1a]     ; 26 8B 47 1A
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        cmp     ax, 0x50                        ; 3D 50 00
        jg      L_0672                          ; 7F 3A
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        jmp     L_0655                          ; EB 10
L_0645:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0xcf]             ; A1 CF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0xd1]             ; A0 D1 00
        sub     ah, ah                          ; 2A E4
L_0655:
        push    ax                              ; 50
        call    L_0483                          ; E8 2A FE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        dec     word ptr [bp - 6]               ; FF 4E FA
        or      ax, ax                          ; 0B C0
        jne     L_0645                          ; 75 E2
L_0663:
        dec     word ptr [bp + 8]               ; FF 4E 08
        inc     word ptr [bp + 0xa]             ; FF 46 0A
L_0669:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0672                          ; 74 03
        jmp     L_05E1                          ; E9 6F FF
L_0672:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_068C                          ; 74 14
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr es:[bx + 0x1a], ax     ; 26 01 47 1A
L_068C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0xa4], 0              ; 83 3E A4 00 00
        je      L_06AE                          ; 74 05
L_06A9:
        sub     ax, ax                          ; 2B C0
        jmp     L_077F                          ; E9 D1 00
L_06AE:
        mov     word ptr [0xa4], 1              ; C7 06 A4 00 01 00
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A 22 07 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06E1                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_06E3                          ; EB 02
L_06E1:
        sub     ax, ax                          ; 2B C0
L_06E3:
        or      ax, ax                          ; 0B C0
        jne     L_06FB                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A D0 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0726                          ; 74 2B
L_06FB:
        mov     word ptr [0x100], 0xa           ; C7 06 00 01 0A 00
        call    L_0403                          ; E8 FF FC
        or      ax, ax                          ; 0B C0
        je      L_0710                          ; 74 08
        mov     word ptr [0x104], 0x14          ; C7 06 04 01 14 00
        jmp     L_0716                          ; EB 06
L_0710:
        mov     word ptr [0x104], 0x15          ; C7 06 04 01 15 00
L_0716:
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A B3 03 00 00 [FIXUP]
L_0726:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x9c                        ; B8 9C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_074C                          ; 75 09
        mov     word ptr [0xa4], 0              ; C7 06 A4 00 00 00
        jmp     L_06A9                          ; E9 5D FF
L_074C:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa4], 0              ; C7 06 A4 00 00 00
        mov     ax, 1                           ; B8 01 00
L_077F:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_07A3                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_07C7                          ; 74 26
        jmp     L_0807                          ; EB 64
L_07A3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x104]                ; FF 36 04 01
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x104]                ; FF 36 04 01
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0807                          ; EB 40
L_07C7:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_0807                          ; 72 38
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_07F7                          ; 76 23
        cmp     ax, 0x14                        ; 3D 14 00
        jb      L_0807                          ; 72 2E
        cmp     ax, 0x15                        ; 3D 15 00
        ja      L_0807                          ; 77 29
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x104], ax            ; A3 04 01
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0807                          ; EB 10
L_07F7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_0809                          ; EB 02
L_0807:
        sub     ax, ax                          ; 2B C0
L_0809:
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
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
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
        sub     ax, ax                          ; 2B C0
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
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_0877                          ; 74 07
        cmp     word ptr es:[bx + 0x14], 0      ; 26 83 7F 14 00
        jne     L_0884                          ; 75 0D
L_0877:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0884                          ; 75 03
        jmp     L_0943                          ; E9 BF 00
L_0884:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_08D0                          ; 7D 46
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_05B1                          ; E8 0F FD
L_08A2:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_09EE                          ; E9 46 01
L_08A8:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jg      L_08D6                          ; 7F 28
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_05B1                          ; E8 E7 FC
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
        dec     word ptr [bp + 0x12]            ; FF 4E 12
L_08D0:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_08A8                          ; 75 D2
L_08D6:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_08E2                          ; 75 06
L_08DC:
        sub     ax, ax                          ; 2B C0
L_08DE:
        cdq                                     ; 99
        jmp     L_09FA                          ; E9 18 01
L_08E2:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    L_0501                          ; E8 13 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 8], 0x190     ; 26 81 7F 08 90 01
        jle     L_091D                          ; 7E 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_054E                          ; E8 49 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_05B1                          ; E8 94 FC
L_091D:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_054E                          ; E8 25 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_05B1                          ; E8 70 FC
        jmp     L_08DE                          ; EB 9B
L_0943:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jg      L_0951                          ; 7F 08
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        jmp     L_08A2                          ; E9 51 FF
L_0951:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        cmp     ax, 0x50                        ; 3D 50 00
        jle     L_0967                          ; 7E 0B
        mov     ax, 0x50                        ; B8 50 00
        sub     ax, word ptr [bp + 0x1e]        ; 2B 46 1E
        mov     word ptr [bp + 0x12], ax        ; 89 46 12
        jmp     L_0978                          ; EB 11
L_0967:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jge     L_0978                          ; 7D 0B
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     word ptr [bp + 0x12], ax        ; 01 46 12
        mov     word ptr [bp + 0x1e], 0         ; C7 46 1E 00 00
L_0978:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_0981                          ; 7D 03
        jmp     L_08DC                          ; E9 5B FF
L_0981:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    L_0501                          ; E8 74 FB
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_054E                          ; E8 B5 FB
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0483                          ; E8 D8 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     word ptr es:[bx + 0x1a], ax     ; 26 01 47 1A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 8], 0x190     ; 26 81 7F 08 90 01
        jle     L_09E8                          ; 7E 28
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_054E                          ; E8 82 FB
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0483                          ; E8 A5 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     word ptr es:[bx + 0x1a], ax     ; 26 01 47 1A
L_09E8:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        jmp     L_08DE                          ; E9 F0 FE
L_09EE:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_09FA:
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
        sub     ax, ax                          ; 2B C0
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
        mov     ax, 1                           ; B8 01 00
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
        sub     ax, ax                          ; 2B C0
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
        sub     ax, ax                          ; 2B C0
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
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_0A9D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_0A9D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_0A99                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_0A99:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_0A9D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

TTY_TEXT ENDS

        END
