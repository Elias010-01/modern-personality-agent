; AUTO-GENERATED from original XER4020 segment 1
; segment_size=12010 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

XER4020_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 283 instr
; Dispatcher: tabla de decisiones cmp+jcc (283 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; calls (inter): GDI.STARTSPOOLPAGE, USER.SETRECT, USER.SETRECTEMPTY
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     bx, ptr [bp + 8]                ; C5 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        xor     ax, ax                          ; 33 C0
        sub     word ptr [bx], cx               ; 29 0F
        jns     L_0015                          ; 79 02
        mov     word ptr [bx], ax               ; 89 07
L_0015:
        sub     word ptr [bx + 2], dx           ; 29 57 02
        jns     L_001D                          ; 79 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_001D:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        jle     L_0032                          ; 7E 09
        sub     word ptr [bx + 6], dx           ; 29 57 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
L_0032:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0039:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        lds     si, ptr [bp + 8]                ; C5 76 08
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
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
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_00BF                          ; 76 03
        jmp     L_03A1                          ; E9 E2 02
L_00BF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x4b0]        ; 2E FF A7 B0 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_00D4                          ; 74 03
        jmp     L_02E5                          ; E9 11 02
L_00D4:
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_00E5                          ; 74 03
        jmp     L_01BD                          ; E9 D8 00
L_00E5:
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        cmp     ax, 1                           ; 3D 01 00
        je      L_010A                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 29 0E
L_010A:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xec                        ; B8 EC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 15 0E
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x3e], 0      ; 26 C7 47 3E 00 00
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0132                          ; 74 04
        mov     al, 0x65                        ; B0 65
        jmp     L_0134                          ; EB 02
L_0132:
        mov     al, 0x66                        ; B0 66
L_0134:
        mov     byte ptr [0x1b4], al            ; A2 B4 01
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x1b2                       ; B8 B2 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 E8 0D
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        push    word ptr [bx + 0xc]             ; FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1067                          ; E8 07 0F
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xf0                        ; B8 F0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 B2 0D
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
        push    es                              ; 06
        push    bx                              ; 53
        call    L_04D9                          ; E8 4A 03
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_01B2                          ; EB 0D
L_01A5:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_01B2:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        imul    word ptr [bp - 0x1e]            ; F7 6E E2
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        ja      L_01A5                          ; 77 E8
L_01BD:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_01FB                          ; 74 34
        or      si, si                          ; 0B F6
        jne     L_01E6                          ; 75 1B
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.SETRECT                ; 9A 56 02 00 00 [FIXUP]
L_01E0:
        mov     ax, 1                           ; B8 01 00
        jmp     L_04CD                          ; E9 E7 02
L_01E6:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_01F6                          ; 74 06
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
L_01F6:
        mov     si, word ptr [bp - 0x14]        ; 8B 76 EC
        jmp     L_0204                          ; EB 09
L_01FB:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
L_0204:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0230                          ; 75 22
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        imul    si                              ; F7 EE
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        jmp     L_0255                          ; EB 25
L_0230:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        push    ax                              ; 50
L_0255:
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x14], si        ; 39 76 EC
        je      L_0262                          ; 74 03
        jmp     L_0319                          ; E9 B7 00
L_0262:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A EC 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_027C                          ; 75 05
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0B1C                          ; E8 A0 08
L_027C:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1067                          ; E8 C9 0D
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xf4                        ; B8 F4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 81 0C
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_04D9                          ; E8 1E 02
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_02D5                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
L_02D5:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_030F                          ; 74 2A
L_02E5:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        je      L_030F                          ; 74 15
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A D2 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
L_030F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x32]     ; 26 8B 47 32
        jmp     L_04CD                          ; E9 B4 01
L_0319:
        mov     ax, si                          ; 8B C6
        or      ax, ax                          ; 0B C0
        je      L_0336                          ; 74 17
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        je      L_0361                          ; 74 38
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0B1C                          ; E8 EE 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xfb   ; 26 80 67 26 FB
L_0336:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
L_034A:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jbe     L_037B                          ; 76 29
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        jmp     L_034A                          ; EB E9
L_0361:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        jne     L_036E                          ; 75 03
        jmp     L_02D5                          ; E9 67 FF
L_036E:
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0FB0                          ; E8 35 0C
L_037B:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_04D9                          ; E8 55 01
        jmp     L_02D5                          ; E9 4E FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_01E0                          ; E9 49 FE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_03A6                          ; 75 05
L_03A1:
        sub     ax, ax                          ; 2B C0
        jmp     L_04CD                          ; E9 27 01
L_03A6:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_03B4                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_03B6                          ; EB 02
L_03B4:
        sub     ax, ax                          ; 2B C0
L_03B6:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_01E0                          ; E9 20 FE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03D6                          ; 75 0C
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
L_03D6:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        jmp     L_01E0                          ; E9 FE FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0415                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x50                        ; 05 50 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_0415                          ; 7E 06
        mov     word ptr es:[bx + 0x32], 1      ; 26 C7 47 32 01 00
L_0415:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_04CD                          ; E9 AE 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03D6                          ; 75 AD
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03D6                          ; EB A2
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     ax, 1                           ; 3D 01 00
        jae     L_0445                          ; 73 03
        jmp     L_03A1                          ; E9 5C FF
L_0445:
        cmp     ax, 3                           ; 3D 03 00
        ja      L_044D                          ; 77 03
        jmp     L_01E0                          ; E9 93 FD
L_044D:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0455                          ; 75 03
        jmp     L_01E0                          ; E9 8B FD
L_0455:
        cmp     ax, 0xa                         ; 3D 0A 00
        jae     L_045D                          ; 73 03
        jmp     L_03A1                          ; E9 44 FF
L_045D:
        cmp     ax, 0xd                         ; 3D 0D 00
        ja      L_0465                          ; 77 03
        jmp     L_01E0                          ; E9 7B FD
L_0465:
        jmp     L_03A1                          ; E9 39 FF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_01E0                          ; E9 54 FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_03A1                          ; E9 F1 FE
        lsl     ax, ax                          ; 0F 03 C0
        add     ax, di                          ; 03 C7
        add     byte ptr [bx + di - 0x5efd], ah ; 00 A1 03 A1
        add     sp, word ptr [bx + di - 0x68fd] ; 03 A1 03 97
        add     si, word ptr [si]               ; 03 34
        add     al, 0x87                        ; 04 87
        add     sp, dx                          ; 03 E2
        add     bx, word ptr [bx]               ; 03 1F
        add     al, 0x68                        ; 04 68
        add     al, 0x8c                        ; 04 8C
        add     al, 0xe9                        ; 04 E9
        adc     di, bp                          ; 13 FD
L_04CD:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_04D9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x30], 0      ; 26 83 7F 30 00
        je      L_04F0                          ; 74 07
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0508                          ; 74 18
L_04F0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xf8                        ; B8 F8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 2F 0A
        sub     ax, ax                          ; 2B C0
        jmp     L_0553                          ; EB 4B
L_0508:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x70                        ; 05 70 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x30]     ; 26 3B 47 30
        je      L_0547                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x104                       ; B8 04 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 F6 09
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
L_0547:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_0553:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0559:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_0587                          ; 74 19
        cmp     ax, 0x15                        ; 3D 15 00
        je      L_05A2                          ; 74 2F
        cmp     ax, 0x16                        ; 3D 16 00
        je      L_05A9                          ; 74 31
        cmp     ax, 0x17                        ; 3D 17 00
        je      L_059B                          ; 74 1E
        cmp     ax, 0x18                        ; 3D 18 00
        je      L_05B0                          ; 74 2E
        cmp     ax, 0x19                        ; 3D 19 00
        je      L_05B7                          ; 74 30
L_0587:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_058C:
        cmp     word ptr [bp + 8], 0xb          ; 83 7E 08 0B
        jne     L_0596                          ; 75 04
        add     word ptr [bp - 4], 6            ; 83 46 FC 06
L_0596:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_05BE                          ; EB 23
L_059B:
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
        jmp     L_058C                          ; EB EA
L_05A2:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_058C                          ; EB E3
L_05A9:
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_058C                          ; EB DC
L_05B0:
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
        jmp     L_058C                          ; EB D5
L_05B7:
        mov     word ptr [bp - 4], 5            ; C7 46 FC 05 00
        jmp     L_058C                          ; EB CE
L_05BE:
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0xa          ; C7 46 F8 0A 00
        mov     word ptr [bp - 4], 0x14         ; C7 46 FC 14 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_061A                          ; 74 30
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0609                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_061A                          ; EB 11
L_0609:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 0x24]     ; 26 8B 47 24
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_061A:
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        jne     L_0623                          ; 75 03
        jmp     L_06A5                          ; E9 82 00
L_0623:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0559                          ; E8 2B FF
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 8], 0xb          ; 83 7E F8 0B
        jne     L_0642                          ; 75 05
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_0645                          ; EB 03
L_0642:
        mov     ax, 0x78                        ; B8 78 00
L_0645:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 E7 F9
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_065E                          ; 74 05
        mov     ax, 0x50                        ; B8 50 00
        jmp     L_0661                          ; EB 03
L_065E:
        mov     ax, 0xb590                      ; B8 90 B5
L_0661:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        cmp     word ptr [bp - 8], 0xa          ; 83 7E F8 0A
        jne     L_0684                          ; 75 16
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0x4a8]       ; 8B 84 A8 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [si + 0x4aa]       ; 8B 84 AA 04
        jmp     L_069B                          ; EB 17
L_0684:
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp - 0xa]             ; F7 6E F6
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [si + 0x4aa]       ; 8B 84 AA 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [si + 0x4a8]       ; 8B 84 A8 04
L_069B:
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_07BC                          ; E9 17 01
L_06A5:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 8], 0xb          ; 83 7E F8 0B
        jne     L_06B6                          ; 75 05
        mov     ax, 0x112                       ; B8 12 01
        jmp     L_06B9                          ; EB 03
L_06B6:
        mov     ax, 0x162                       ; B8 62 01
L_06B9:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 73 F9
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0800                          ; E8 2B 01
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     si, word ptr [bx + 0xe]         ; 8B 77 0E
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     word ptr es:[bx + 4], si        ; 26 89 77 04
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        cdq                                     ; 99
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     cx, word ptr [bx + 0x12]        ; 8B 4F 12
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bp + 0x14]        ; 8B 5E 14
        mov     word ptr es:[bx + 6], di        ; 26 89 7F 06
        mov     ax, si                          ; 8B C6
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mul     di                              ; F7 E7
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_074A                          ; 74 29
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 0x20], 0xb    ; 26 83 7F 20 0B
        jne     L_074A                          ; 75 1F
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], di        ; 26 89 7F 04
        mov     word ptr es:[bx + 6], si        ; 26 89 77 06
        mov     ax, di                          ; 8B C7
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mul     si                              ; F7 E6
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
L_074A:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x2e], 0xffff ; 26 C7 47 2E FF FF
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_07B2                          ; 75 52
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x50                        ; 05 50 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_079D                          ; 75 1F
        push    es                              ; 06
        push    bx                              ; 53
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07AE                          ; 74 25
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        or      ax, ax                          ; 0B C0
        je      L_07A2                          ; 74 05
L_079D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_07BC                          ; EB 1A
L_07A2:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALFREE           ; 9A EE 07 00 00 [FIXUP]
L_07AE:
        sub     ax, ax                          ; 2B C0
        jmp     L_07BC                          ; EB 0A
L_07B2:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        or      byte ptr es:[bx + 0x26], 0x20   ; 26 80 4F 26 20
        jmp     L_079D                          ; EB E1
L_07BC:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_07F2                          ; 75 15
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.DELETEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_07F2:
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_0800:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_081D                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x26], 0x11   ; 26 83 7F 26 11
        jne     L_081D                          ; 75 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
L_081D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_0846                          ; 74 21
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x20]         ; 26 FF 77 20
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0559                          ; E8 24 FD
        mov     cx, 0x14                        ; B9 14 00
        imul    cx                              ; F7 E9
        add     ax, 0x49a                       ; 05 9A 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        jmp     L_087F                          ; EB 39
L_0846:
        mov     word ptr [0x49c], 0x3fc         ; C7 06 9C 04 FC 03
        mov     word ptr [0x49e], 0x528         ; C7 06 9E 04 28 05
        mov     word ptr [0x4a0], 0x3c          ; C7 06 A0 04 3C 00
        mov     word ptr [0x4a2], 0x3c          ; C7 06 A2 04 3C 00
        mov     word ptr [0x4a6], 0x3c          ; C7 06 A6 04 3C 00
        mov     word ptr [0x4a8], 0x380         ; C7 06 A8 04 80 03
        mov     word ptr [0x4aa], 0x4b0         ; C7 06 AA 04 B0 04
        mov     word ptr [0x4ac], 0xf           ; C7 06 AC 04 0F 00
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], 0x49a  ; 26 C7 47 22 9A 04
L_087F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0891:
        cmp     word ptr [bp - 2], 4            ; 83 7E FE 04
        jl      L_089A                          ; 7C 03
        jmp     L_098E                          ; E9 F4 00
L_089A:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jle     L_08F5                          ; 7E 55
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        jmp     L_08CE                          ; EB 27
L_08A7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp + 8]                ; C4 76 08
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     bx, si                          ; 8B DE
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 8]               ; FF 46 08
L_08CE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cmp     ax, word ptr [bp - 0x10]        ; 3B 46 F0
        jg      L_08A7                          ; 7F C3
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sub     word ptr [bp + 8], ax           ; 29 46 08
L_08F5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
L_0915:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_092A                          ; 74 0F
        dec     word ptr [bp - 0x18]            ; FF 4E E8
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_0989                          ; 74 5F
L_092A:
        cmp     word ptr [bp - 2], 1            ; 83 7E FE 01
        jge     L_093E                          ; 7D 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1067                          ; E8 29 07
L_093E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0F09                          ; E8 BF 05
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_1297                          ; E8 44 09
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        or      al, 0x30                        ; 0C 30
        mov     byte ptr [0x1b8], al            ; A2 B8 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1b6                       ; B8 B6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 C4 05
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 B0 05
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_0891                          ; E9 08 FF
L_0989:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        jmp     L_0915                          ; EB 87
L_098E:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_09B0                          ; 74 18
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    L_0FB0                          ; E8 0C 06
        or      ax, ax                          ; 0B C0
        jne     L_09B0                          ; 75 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
L_09B0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_09B7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 1                           ; 3D 01 00
        je      L_09FC                          ; 74 36
        cmp     ax, 2                           ; 3D 02 00
        je      L_09F5                          ; 74 2A
        cmp     ax, 4                           ; 3D 04 00
        je      L_0A03                          ; 74 33
        cmp     ax, 8                           ; 3D 08 00
        jne     L_09DA                          ; 75 05
        mov     byte ptr [0x1b8], 0x30          ; C6 06 B8 01 30
L_09DA:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_09DF:
        cmp     word ptr [bp - 2], 4            ; 83 7E FE 04
        jl      L_09E8                          ; 7C 03
        jmp     L_0AF3                          ; E9 0B 01
L_09E8:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jle     L_0A58                          ; 7E 6A
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_0A31                          ; EB 3C
L_09F5:
        mov     byte ptr [0x1b8], 0x34          ; C6 06 B8 01 34
        jmp     L_09DA                          ; EB DE
L_09FC:
        mov     byte ptr [0x1b8], 0x38          ; C6 06 B8 01 38
        jmp     L_09DA                          ; EB D7
L_0A03:
        mov     byte ptr [0x1b8], 0x3c          ; C6 06 B8 01 3C
        jmp     L_09DA                          ; EB D0
L_0A0A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp + 0xa]              ; C4 76 0A
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     bx, si                          ; 8B DE
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        inc     word ptr [bp + 0xa]             ; FF 46 0A
L_0A31:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jg      L_0A0A                          ; 7F C3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
L_0A58:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
L_0A78:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0A8D                          ; 74 0F
        dec     word ptr [bp - 0x1a]            ; FF 4E E6
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_0AEE                          ; 74 61
L_0A8D:
        cmp     word ptr [bp - 2], 1            ; 83 7E FE 01
        jge     L_0AA1                          ; 7D 0E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1067                          ; E8 C6 05
L_0AA1:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0AE4                          ; 74 3D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_0F09                          ; E8 56 04
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_1297                          ; E8 DB 07
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1b6                       ; B8 B6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 63 04
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 4F 04
L_0AE4:
        inc     byte ptr [0x1b8]                ; FE 06 B8 01
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_09DF                          ; E9 F1 FE
L_0AEE:
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_0A78                          ; EB 85
L_0AF3:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_0B15                          ; 74 18
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    L_0FB0                          ; E8 A7 04
        or      ax, ax                          ; 0B C0
        jne     L_0B15                          ; 75 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
L_0B15:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
L_0B1C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x42                        ; 83 EC 42
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_26B8                          ; E8 87 1B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        cdq                                     ; 99
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     cx, word ptr [bx + 0x12]        ; 8B 4F 12
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     dx, word ptr es:[bx + 0x12]     ; 26 8B 57 12
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    L_2E3F                          ; E8 AF 22
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        je      L_0BC0                          ; 74 03
        jmp     L_0DBC                          ; E9 FC 01
L_0BC0:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        sub     di, di                          ; 2B FF
L_0BDF:
        cmp     word ptr [bp - 0x14], di        ; 39 7E EC
        jg      L_0BE7                          ; 7F 03
        jmp     L_0E9F                          ; E9 B8 02
L_0BE7:
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
        jmp     L_0C86                          ; E9 97 00
L_0BEF:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        imul    word ptr [bp - 0x28]            ; F7 6E D8
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp + 4]           ; 03 5E 04
        mov     es, word ptr [bp + 6]           ; 8E 46 06
        lea     ax, [bx + di + 0x870]           ; 8D 81 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], es           ; 8C 46 FA
        mov     word ptr [bp - 4], si           ; 89 76 FC
        jmp     L_0C7D                          ; EB 71
L_0C0C:
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
L_0C11:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     bx, bp                          ; 8B DD
        sub     bx, word ptr [bp - 0x2a]        ; 2B 5E D6
        mov     byte ptr ss:[bx - 0x2b], al     ; 36 88 47 D5
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bp - 8], ax           ; 01 46 F8
        cmp     word ptr [bp - 0x2a], 8         ; 83 7E D6 08
        jl      L_0C11                          ; 7C E2
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        imul    word ptr [bp - 0x12]            ; F7 6E EE
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0xa4af                      ; 05 AF A4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
L_0C5F:
        mov     bx, word ptr [bp - 0x2a]        ; 8B 5E D6
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        add     bx, bp                          ; 03 DD
        mov     al, byte ptr ss:[bx - 0x3a]     ; 36 8A 47 C6
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        mov     byte ptr es:[bx], al            ; 26 88 07
        add     word ptr [bp - 0x40], si        ; 01 76 C0
        cmp     word ptr [bp - 0x2a], 8         ; 83 7E D6 08
        jl      L_0C5F                          ; 7C E5
        dec     word ptr [bp - 4]               ; FF 4E FC
L_0C7D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0C0C                          ; 75 89
        inc     word ptr [bp - 0x28]            ; FF 46 D8
L_0C86:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x28]        ; 3B 46 D8
        jbe     L_0C97                          ; 76 03
        jmp     L_0BEF                          ; E9 58 FF
L_0C97:
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xa4b0                      ; 05 B0 A4
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [bp - 0x2a], 0         ; C7 46 D6 00 00
L_0CA9:
        mov     word ptr [bp - 0x28], 0         ; C7 46 D8 00 00
L_0CAE:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x28]        ; 3B 46 D8
        ja      L_0CBF                          ; 77 03
        jmp     L_0D94                          ; E9 D5 00
L_0CBF:
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        or      ax, ax                          ; 0B C0
        je      L_0CDA                          ; 74 14
        cmp     ax, 1                           ; 3D 01 00
        je      L_0D12                          ; 74 47
        cmp     ax, 2                           ; 3D 02 00
        je      L_0D3D                          ; 74 6D
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0CD8                          ; 75 03
        jmp     L_0D68                          ; E9 90 00
L_0CD8:
        jmp     L_0D07                          ; EB 2D
L_0CDA:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     dx, di                          ; 8B D7
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_0D03:
        push    ax                              ; 50
        call    L_09B7                          ; E8 B0 FC
L_0D07:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     word ptr [bp - 0x40], ax        ; 01 46 C0
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        jmp     L_0CAE                          ; EB 9C
L_0D12:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     dx, di                          ; 8B D7
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        jmp     L_0D03                          ; EB C6
L_0D3D:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     dx, di                          ; 8B D7
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        jmp     L_0D03                          ; EB 9B
L_0D68:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        mov     dx, di                          ; 8B D7
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        jmp     L_0D03                          ; E9 6F FF
L_0D94:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        sub     ah, ah                          ; 2A E4
        mul     word ptr [bp - 0x12]            ; F7 66 EE
        sub     word ptr [bp - 0x40], ax        ; 29 46 C0
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        mov     ax, si                          ; 8B C6
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 0x40], ax        ; 01 46 C0
        cmp     word ptr [bp - 0x2a], 2         ; 83 7E D6 02
        jge     L_0DB8                          ; 7D 03
        jmp     L_0CA9                          ; E9 F1 FE
L_0DB8:
        inc     di                              ; 47
        jmp     L_0BDF                          ; E9 23 FE
L_0DBC:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, word ptr [bp - 0x24]        ; 2B 46 DC
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x26], 0         ; C7 46 DA 00 00
        jmp     L_0E94                          ; E9 B4 00
L_0DE0:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_09B7                          ; E8 B1 FB
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_09B7                          ; E8 86 FB
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_09B7                          ; E8 5B FB
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_09B7                          ; E8 30 FB
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_0E94:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jge     L_0E9F                          ; 7D 03
        jmp     L_0DE0                          ; E9 41 FF
L_0E9F:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A B6 0E 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_0EC0                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A D3 0F 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0EC0:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
L_0ED4:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2E3F                          ; E8 5C 1F
        mov     cx, word ptr [bp - 0x1a]        ; 8B 4E E6
        sub     bx, bx                          ; 2B DB
        cmp     dx, bx                          ; 3B D3
        jb      L_0F01                          ; 72 15
        ja      L_0EF2                          ; 77 04
        cmp     ax, cx                          ; 3B C1
        jbe     L_0F01                          ; 76 0F
L_0EF2:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        jmp     L_0ED4                          ; EB D3
L_0F01:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0F09:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     byte ptr [bp - 2], 0x1a         ; C6 46 FE 1A
        jmp     L_0F23                          ; EB 0E
L_0F15:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
L_0F23:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0F15                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0F33:
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
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0FA4                          ; 75 59
        mov     si, word ptr es:[bx + 0x30]     ; 26 8B 77 30
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x70                        ; 05 70 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     si, ax                          ; 03 F0
        cmp     si, 0x800                       ; 81 FE 00 08
        jl      L_0F89                          ; 7C 20
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_04D9                          ; E8 6B F5
        or      ax, ax                          ; 0B C0
        jge     L_0F77                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0FA4                          ; EB 2D
L_0F77:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 0x70                        ; 05 70 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     si, word ptr [bp + 6]           ; 8B 76 06
L_0F89:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x30], si     ; 26 89 77 30
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 95 F0
L_0FA4:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_0FB0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_0FCF:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.MINPQ                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_0FF3                          ; 75 16
L_0FDD:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], -1         ; 83 7E F4 FF
        jne     L_105E                          ; 75 6F
        sub     ax, ax                          ; 2B C0
        jmp     L_1061                          ; EB 6E
L_0FF3:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_0FDD                          ; 7D D0
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.EXTRACTPQ               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_0FDD                          ; 75 C3
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1110                          ; E8 E0 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 E6 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        jmp     L_0FCF                          ; E9 71 FF
L_105E:
        mov     ax, 1                           ; B8 01 00
L_1061:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_1067:
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     ax, word ptr es:[bx + 0x3e]     ; 26 2B 47 3E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_108B                          ; 75 05
L_1086:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1104                          ; EB 79
L_108B:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_10E6                          ; 74 51
        cmp     word ptr [bp - 4], 0xf          ; 83 7E FC 0F
        jl      L_1086                          ; 7C EB
        jmp     L_10E6                          ; EB 49
L_109D:
        cmp     word ptr [bp - 4], 0x4b0        ; 81 7E FC B0 04
        jl      L_10A9                          ; 7C 05
        mov     ax, 0x4b0                       ; B8 B0 04
        jmp     L_10AC                          ; EB 03
L_10A9:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_10AC:
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_10CC                          ; EB 17
L_10B5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1c5                       ; B8 C5 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 6A FE
        inc     word ptr [bp - 8]               ; FF 46 F8
L_10CC:
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_10B5                          ; 7C D4
        sub     word ptr [bp - 4], 0x4b0        ; 81 6E FC B0 04
L_10E6:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_109D                          ; 7F B1
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        mov     word ptr es:[bx + 0x36], 0      ; 26 C7 47 36 00 00
        jmp     L_1086                          ; EB 82
L_1104:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_1110:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_1137                          ; 7C 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_113B                          ; 7E 04
L_1137:
        sub     ax, ax                          ; 2B C0
        jmp     L_11B1                          ; EB 76
L_113B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr es:[bx + 0x3c], ax     ; 26 39 47 3C
        jle     L_1172                          ; 7E 2B
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_1137                          ; 75 E9
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1c9                       ; B8 C9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 D5 FD
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        mov     word ptr es:[bx + 0x36], 0      ; 26 C7 47 36 00 00
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        jmp     L_117C                          ; EB 0A
L_1172:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     di, word ptr es:[bx + 0x3c]     ; 26 2B 7F 3C
L_117C:
        or      di, di                          ; 0B FF
        je      L_1137                          ; 74 B7
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x38]     ; 26 8B 77 38
        jmp     L_119F                          ; EB 16
L_1189:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1cb                       ; B8 CB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 96 FD
        sub     di, si                          ; 2B FE
L_119F:
        cmp     di, si                          ; 3B FE
        jge     L_1189                          ; 7D E6
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, di                          ; 8B C7
L_11B1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        jmp     L_1285                          ; E9 B1 00
L_11D4:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_11E3                          ; 7D 07
        mov     word ptr [bp - 2], 2            ; C7 46 FE 02 00
        jmp     L_11EC                          ; EB 09
L_11E3:
        mov     ax, 2                           ; B8 02 00
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_11EC:
        mov     byte ptr [bp - 0x14], 0         ; C6 46 EC 00
        mov     byte ptr [bp - 0x13], 0         ; C6 46 ED 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_125A                          ; EB 5F
L_11FB:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_1200:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_1205:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [bp - 0xa]         ; 03 5E F6
        les     si, ptr [bp + 8]                ; C4 76 08
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        mov     cl, byte ptr [bp - 0xe]         ; 8A 4E F2
        shl     cl, 1                           ; D0 E1
        add     cl, byte ptr [bp - 0x10]        ; 02 4E F0
        shl     al, cl                          ; D2 E0
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        sub     ah, ah                          ; 2A E4
        mov     cl, 7                           ; B1 07
        shr     ax, cl                          ; D3 E8
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        shl     al, cl                          ; D2 E0
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        sub     ah, ah                          ; 2A E4
        mov     cl, byte ptr [bp - 0xa]         ; 8A 4E F6
        shl     cl, 1                           ; D0 E1
        shl     cl, 1                           ; D0 E1
        add     cl, byte ptr [bp - 0xe]         ; 02 4E F2
        shr     ax, cl                          ; D3 E8
        add     byte ptr [bp + si - 0x14], al   ; 00 42 EC
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 0x10], 2         ; 83 7E F0 02
        jl      L_1205                          ; 7C B7
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        cmp     word ptr [bp - 0xe], 4          ; 83 7E F2 04
        jl      L_1200                          ; 7C A9
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_125A:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_11FB                          ; 7C 99
        mov     al, byte ptr [bp - 0x13]        ; 8A 46 ED
        or      byte ptr [bp - 0x14], al        ; 08 46 EC
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        mov     byte ptr [0x1be], al            ; A2 BE 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x1be                       ; B8 BE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F33                          ; E8 B1 FC
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_1285:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_1290                          ; 7D 03
        jmp     L_11D4                          ; E9 44 FF
L_1290:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_1297:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 4], si           ; 89 76 FC
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     ax, cx                          ; 8B C1
        imul    si                              ; F7 EE
        sub     di, ax                          ; 2B F8
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, cx                          ; 8B C1
        imul    word ptr [bp - 2]               ; F7 6E FE
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp + 4], 0xc          ; C7 46 04 0C 00
        mov     byte ptr [0x1b9], 0             ; C6 06 B9 01 00
        mov     byte ptr [0x1ba], 0             ; C6 06 BA 01 00
        or      si, si                          ; 0B F6
        jle     L_12EF                          ; 7E 0F
        mov     ax, si                          ; 8B C6
        or      al, 0x30                        ; 0C 30
        mov     byte ptr [0x1b9], al            ; A2 B9 01
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        or      al, 0x30                        ; 0C 30
        mov     byte ptr [0x1ba], al            ; A2 BA 01
L_12EF:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jle     L_12FD                          ; 7E 08
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        or      al, 0x30                        ; 0C 30
        mov     byte ptr [0x1ba], al            ; A2 BA 01
L_12FD:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        or      al, 0x30                        ; 0C 30
        mov     byte ptr [0x1bb], al            ; A2 BB 01
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_1319:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_1328                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_132D                          ; EB 05
L_1328:
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
L_132D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_1344                          ; 7E 05
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        jmp     L_1349                          ; EB 05
L_1344:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        neg     ax                              ; F7 D8
L_1349:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_136F                          ; 7E 0E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     cl, byte ptr [bp - 2]           ; 8A 4E FE
        call    L_2EAE                          ; E8 41 1B
        jmp     L_137B                          ; EB 0C
L_136F:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     cl, byte ptr [bp - 2]           ; 8A 4E FE
        call    L_2EA3                          ; E8 28 1B
L_137B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr [bp - 5]           ; 8A 46 FB
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_13A1                          ; 74 0C
        cmp     ax, 0x21                        ; 3D 21 00
        jne     L_13A6                          ; 75 0C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
L_139D:
        sub     ah, ah                          ; 2A E4
        jmp     L_13A8                          ; EB 07
L_13A1:
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        jmp     L_139D                          ; EB F7
L_13A6:
        sub     ax, ax                          ; 2B C0
L_13A8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     bx, cx                          ; 8B D9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     bx, ax                          ; 03 D8
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     si, ptr [bp + 0xe]              ; C4 76 0E
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        mov     bx, dx                          ; 8B DA
        mov     cl, byte ptr [bx + 0x26a]       ; 8A 8F 6A 02
        sub     ch, ch                          ; 2A ED
        and     ax, cx                          ; 23 C1
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     bx, cx                          ; 8B D9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     bx, ax                          ; 03 D8
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     bx, dx                          ; 8B DA
        mov     al, byte ptr [bx + 0x26a]       ; 8A 87 6A 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 0xe]              ; C4 76 0E
        or      byte ptr es:[bx + si], al       ; 26 08 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     bx, cx                          ; 8B D9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     bx, ax                          ; 03 D8
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     bx, dx                          ; 8B DA
        mov     al, byte ptr [bx + 0x272]       ; 8A 87 72 02
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 0xe]              ; C4 76 0E
        and     byte ptr es:[bx + si], al       ; 26 20 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
L_14A7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3a                        ; 83 EC 3A
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     dx, word ptr es:[bx + 0xa]      ; 26 8B 57 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x2a], dx        ; 89 56 D6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp + 0x16]        ; 03 46 16
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        mov     dx, word ptr [bp - 0x38]        ; 8B 56 C8
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x5b0                       ; B8 B0 05
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], ds        ; 8C 5E F0
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     dx, word ptr es:[bx + 0x10]     ; 26 8B 57 10
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    L_2E3F                          ; E8 F6 18
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_17B8                          ; E9 61 02
L_1557:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        les     bx, ptr [bp + 0x1c]             ; C4 5E 1C
        mul     word ptr es:[bx + 6]            ; 26 F7 67 06
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     bx, dx                          ; 8B DA
        mov     di, cx                          ; 8B F9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0x16], di        ; 89 7E EA
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     si, dx                          ; 8B F2
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        or      dx, si                          ; 0B D6
        je      L_15D1                          ; 74 31
        push    bx                              ; 53
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0x16]            ; FF 76 16
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2794                          ; E8 E0 11
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
L_15D1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mul     word ptr es:[bx + 6]            ; 26 F7 67 06
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     bx, dx                          ; 8B DA
        mov     si, cx                          ; 8B F1
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     si, ax                          ; 03 F0
        mov     word ptr [bp - 0x36], si        ; 89 76 CA
        mov     word ptr [bp - 0x34], bx        ; 89 5E CC
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        jmp     L_17AA                          ; E9 9C 01
L_160E:
        mov     byte ptr [bp - 0x32], 0xff      ; C6 46 CE FF
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jne     L_162E                          ; 75 14
        mov     bx, 0x282                       ; BB 82 02
        sub     bx, word ptr [bp - 0x2a]        ; 2B 5E D6
        mov     al, byte ptr [bx + 7]           ; 8A 47 07
        mov     bx, 0x27a                       ; BB 7A 02
        sub     bx, word ptr [bp - 0xe]         ; 2B 5E F2
        and     al, byte ptr [bx + 7]           ; 22 47 07
        jmp     L_164F                          ; EB 21
L_162E:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_163E                          ; 75 08
        mov     bx, 0x282                       ; BB 82 02
        sub     bx, word ptr [bp - 0x2a]        ; 2B 5E D6
        jmp     L_164C                          ; EB 0E
L_163E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_1652                          ; 75 0C
        mov     bx, 0x27a                       ; BB 7A 02
        sub     bx, word ptr [bp - 0xe]         ; 2B 5E F2
L_164C:
        mov     al, byte ptr [bx + 7]           ; 8A 47 07
L_164F:
        mov     byte ptr [bp - 0x32], al        ; 88 46 CE
L_1652:
        mov     al, byte ptr [bp - 0x32]        ; 8A 46 CE
        xor     al, 0xff                        ; 34 FF
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        les     bx, ptr [bp - 0x16]             ; C4 5E EA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x38], al        ; 88 46 C8
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      al, byte ptr [bp - 8]           ; 0A 46 F8
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        je      L_1680                          ; 74 0E
        mov     al, byte ptr [bp - 0x38]        ; 8A 46 C8
        xor     al, 0xff                        ; 34 FF
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      al, byte ptr [bp - 8]           ; 0A 46 F8
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
L_1680:
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        xor     al, 0xff                        ; 34 FF
        or      al, byte ptr [bp - 8]           ; 0A 46 F8
        mov     byte ptr [bp - 0x30], al        ; 88 46 D0
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], 2         ; 26 83 7F 02 02
        je      L_1698                          ; 74 03
        jmp     L_171B                          ; E9 83 00
L_1698:
        test    byte ptr [bp - 0x2e], 1         ; F6 46 D2 01
        je      L_16A6                          ; 74 08
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        and     byte ptr es:[bx], al            ; 26 20 07
        jmp     L_16B2                          ; EB 0C
L_16A6:
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx], al            ; 26 08 07
L_16B2:
        test    byte ptr [bp - 0x2e], 2         ; F6 46 D2 02
        je      L_16C6                          ; 74 0E
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_16D5                          ; EB 0F
L_16C6:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_16D5:
        test    byte ptr [bp - 0x2e], 4         ; F6 46 D2 04
        je      L_16E9                          ; 74 0E
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_16F8                          ; EB 0F
L_16E9:
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_16F8:
        test    byte ptr [bp - 0x2e], 8         ; F6 46 D2 08
        je      L_170C                          ; 74 0E
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_171B                          ; EB 0F
L_170C:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_171B:
        test    byte ptr [bp - 0xc], 1          ; F6 46 F4 01
        je      L_172C                          ; 74 0B
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     byte ptr es:[bx], al            ; 26 20 07
        jmp     L_1738                          ; EB 0C
L_172C:
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx], al            ; 26 08 07
L_1738:
        test    byte ptr [bp - 0xc], 2          ; F6 46 F4 02
        je      L_174C                          ; 74 0E
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_175B                          ; EB 0F
L_174C:
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_175B:
        test    byte ptr [bp - 0xc], 4          ; F6 46 F4 04
        je      L_176F                          ; 74 0E
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_177E                          ; EB 0F
L_176F:
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_177E:
        test    byte ptr [bp - 0xc], 8          ; F6 46 F4 08
        je      L_1792                          ; 74 0E
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        and     byte ptr es:[bx + si], al       ; 26 20 00
        jmp     L_17A1                          ; EB 0F
L_1792:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        les     si, ptr [bp - 0x36]             ; C4 76 CA
        mov     al, byte ptr [bp - 0x30]        ; 8A 46 D0
        and     al, byte ptr [bp - 0x32]        ; 22 46 CE
        or      byte ptr es:[bx + si], al       ; 26 08 00
L_17A1:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        inc     word ptr [bp - 0x36]            ; FF 46 CA
        inc     word ptr [bp - 0x24]            ; FF 46 DC
L_17AA:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jg      L_17B5                          ; 7F 03
        jmp     L_160E                          ; E9 59 FE
L_17B5:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_17B8:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_17C3                          ; 7D 03
        jmp     L_1557                          ; E9 94 FD
L_17C3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1a                            ; CA 1A 00
L_17D0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        sub     si, ax                          ; 2B F0
        or      si, si                          ; 0B F6
        jge     L_17F8                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_17FA                          ; EB 02
L_17F8:
        sub     ax, ax                          ; 2B C0
L_17FA:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     cl, byte ptr [bp + 6]           ; 8A 4E 06
        mov     di, ax                          ; 8B F8
        cmp     byte ptr es:[bx + 0x1e], cl     ; 26 38 4F 1E
        jae     L_180D                          ; 73 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_180F                          ; EB 02
L_180D:
        sub     ax, ax                          ; 2B C0
L_180F:
        or      ax, di                          ; 0B C7
        je      L_181E                          ; 74 0B
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
L_181E:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_1842                          ; 74 1A
        mov     di, bx                          ; 8B FB
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr es:[bx + di + 0x33] ; 26 8A 41 33
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        mov     al, byte ptr es:[bx + di + 0x34] ; 26 8A 41 34
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        jmp     L_184E                          ; EB 0C
L_1842:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        imul    si                              ; F7 EE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_184E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_185E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x14], 0      ; 26 83 7F 14 00
        je      L_1879                          ; 74 06
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        jmp     L_18A0                          ; EB 27
L_1879:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 46 FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     cl, byte ptr [bp + 6]           ; 8A 4E 06
        sub     ch, ch                          ; 2A ED
        inc     cx                              ; 41
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 32 FF
        sub     ax, si                          ; 2B C6
L_18A0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_18AC:
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
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_185E                          ; E8 89 FF
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        je      L_1905                          ; 74 24
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp + 6], al           ; 38 46 06
        jne     L_1905                          ; 75 1C
        add     si, word ptr es:[bx + 0xe]      ; 26 03 77 0E
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        sub     word ptr es:[bx + 0x10], ax     ; 26 29 47 10
        cmp     word ptr es:[bx + 0x10], 0      ; 26 83 7F 10 00
        jg      L_1905                          ; 7F 09
        inc     si                              ; 46
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     word ptr es:[bx + 0x10], ax     ; 26 01 47 10
L_1905:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        add     si, word ptr es:[bx + 0x16]     ; 26 03 77 16
        mov     ax, si                          ; 8B C6
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
        sub     sp, 0x4e                        ; 83 EC 4E
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        cmp     byte ptr es:[bx + 0xa], 4       ; 26 80 7F 0A 04
        jne     L_19A6                          ; 75 6C
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     dx, word ptr es:[bx + 0x12]     ; 26 8B 57 12
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x36], dx        ; 89 56 CA
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    L_2E3F                          ; E8 DE 14
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        je      L_198B                          ; 74 07
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
L_198B:
        cmp     word ptr [bp + 0x20], 0         ; 83 7E 20 00
        je      L_199B                          ; 74 0A
        les     bx, ptr [bp + 0x22]             ; C4 5E 22
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x20], ax        ; 29 46 20
L_199B:
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        mov     dx, word ptr [bp + 0x24]        ; 8B 56 24
        add     ax, 2                           ; 05 02 00
        jmp     L_19AC                          ; EB 06
L_19A6:
        mov     ax, word ptr [bp + 0x22]        ; 8B 46 22
        mov     dx, word ptr [bp + 0x24]        ; 8B 56 24
L_19AC:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], dx        ; 89 56 C6
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x40], dx        ; 89 56 C0
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     dx, word ptr es:[bx + 0xa]      ; 26 8B 57 0A
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_19EF                          ; 74 0B
        cmp     ax, 0x21                        ; 3D 21 00
        jne     L_19EC                          ; 75 03
        jmp     L_1A93                          ; E9 A7 00
L_19EC:
        jmp     L_1C1B                          ; E9 2C 02
L_19EF:
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x48]            ; FF 76 B8
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x40]            ; FF 76 C0
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0x48]             ; C4 5E B8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp - 0x48]             ; C4 5E B8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     dx, word ptr es:[bx + 4]        ; 26 8B 57 04
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        les     bx, ptr [bp - 0x48]             ; C4 5E B8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 0xa], dx      ; 26 89 57 0A
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A7                          ; E8 3D FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        mov     dx, word ptr [bp - 0x40]        ; 8B 56 C0
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 0xa], dx      ; 26 89 57 0A
        jmp     L_1C1B                          ; E9 88 01
L_1A93:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp + 0x20]        ; 8B 46 20
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        dec     ax                              ; 48
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        sub     dx, 7                           ; 83 EA 07
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0x44], dx        ; 89 56 BC
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        sub     dx, 7                           ; 83 EA 07
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0x4c], dx        ; 89 56 B4
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_1B03:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_1B0E                          ; 7C 03
        jmp     L_1C1B                          ; E9 0D 01
L_1B0E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     cx, word ptr es:[bx + 0x22]     ; 26 8B 4F 22
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mul     word ptr es:[bx + 6]            ; 26 F7 67 06
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        add     ax, word ptr [bp - 0x26]        ; 03 46 DA
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        jmp     L_1C0A                          ; E9 C5 00
L_1B45:
        mov     byte ptr [bp - 0x4a], 0xff      ; C6 46 B6 FF
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jne     L_1B61                          ; 75 10
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 0x282]       ; 8A 87 82 02
        mov     bx, word ptr [bp - 0x4c]        ; 8B 5E B4
        and     al, byte ptr [bx + 0x27a]       ; 22 87 7A 02
        jmp     L_1B81                          ; EB 20
L_1B61:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        jne     L_1B72                          ; 75 09
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 0x282]       ; 8A 87 82 02
        jmp     L_1B81                          ; EB 0F
L_1B72:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        jne     L_1B84                          ; 75 0A
        mov     bx, word ptr [bp - 0x4c]        ; 8B 5E B4
        mov     al, byte ptr [bx + 0x27a]       ; 8A 87 7A 02
L_1B81:
        mov     byte ptr [bp - 0x4a], al        ; 88 46 B6
L_1B84:
        mov     al, byte ptr [bp - 0x4a]        ; 8A 46 B6
        xor     al, 0xff                        ; 34 FF
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        les     si, ptr [bp + 0xa]              ; C4 76 0A
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        and     al, byte ptr [bp - 0x4a]        ; 22 46 B6
        les     bx, ptr [bp - 0x1a]             ; C4 5E E6
        or      byte ptr es:[bx], al            ; 26 08 07
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        mov     si, word ptr [bp - 0x1a]        ; 8B 76 E6
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + si + 8]   ; 26 8A 40 08
        and     al, byte ptr [bp - 0x4a]        ; 22 46 B6
        mov     bx, word ptr [bp - 0x38]        ; 8B 5E C8
        les     si, ptr [bp - 0x1a]             ; C4 76 E6
        or      byte ptr es:[bx + si], al       ; 26 08 00
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + si + 0x10] ; 26 8A 40 10
        and     al, byte ptr [bp - 0x4a]        ; 22 46 B6
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        les     si, ptr [bp - 0x1a]             ; C4 76 E6
        or      byte ptr es:[bx + si], al       ; 26 08 00
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     si, word ptr [bp - 0x32]        ; 8B 76 CE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + si + 0x18] ; 26 8A 40 18
        and     al, byte ptr [bp - 0x4a]        ; 22 46 B6
        mov     bx, word ptr [bp - 0x22]        ; 8B 5E DE
        les     si, ptr [bp - 0x1a]             ; C4 76 E6
        or      byte ptr es:[bx + si], al       ; 26 08 00
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        inc     word ptr [bp - 0x34]            ; FF 46 CC
L_1C0A:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        jg      L_1C15                          ; 7F 03
        jmp     L_1B45                          ; E9 30 FF
L_1C15:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1B03                          ; E9 E8 FE
L_1C1B:
        pop     si                              ; 5E
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
        sub     sp, 0x22                        ; 83 EC 22
        push    si                              ; 56
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     dx, word ptr es:[bx + 0x12]     ; 26 8B 57 12
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_1C51                          ; 75 03
        jmp     L_1E2F                          ; E9 DE 01
L_1C51:
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        je      L_1C72                          ; 74 07
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0xe], ax         ; 29 46 0E
L_1C72:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_1C82                          ; 74 0A
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x10], ax        ; 29 46 10
L_1C82:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mul     word ptr [bp + 0xe]             ; F7 66 0E
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, cx                          ; 8B D9
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     bx, ax                          ; 03 D8
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     byte ptr [bp - 0x16], 0         ; C6 46 EA 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        test    byte ptr [bp - 0x1e], 1         ; F6 46 E2 01
        je      L_1D1D                          ; 74 47
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     al, byte ptr [bx + 0x26a]       ; 8A 87 6A 02
        les     bx, ptr [bp - 8]                ; C4 5E F8
        and     al, byte ptr es:[bx]            ; 26 22 07
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1319                          ; E8 12 F6
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        mov     al, byte ptr [si + 0x272]       ; 8A 84 72 02
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        or      byte ptr es:[bx], al            ; 26 08 07
L_1D1D:
        test    byte ptr [bp - 0x1e], 2         ; F6 46 E2 02
        je      L_1D6E                          ; 74 4B
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     al, byte ptr [bx + 0x26a]       ; 8A 87 6A 02
        les     bx, ptr [bp - 8]                ; C4 5E F8
        and     al, byte ptr es:[bx]            ; 26 22 07
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1319                          ; E8 C1 F5
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        mov     al, byte ptr [si + 0x272]       ; 8A 84 72 02
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        or      byte ptr es:[bx], al            ; 26 08 07
L_1D6E:
        test    byte ptr [bp - 0x1e], 4         ; F6 46 E2 04
        je      L_1DCC                          ; 74 58
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     al, byte ptr [bx + 0x26a]       ; 8A 87 6A 02
        les     bx, ptr [bp - 8]                ; C4 5E F8
        and     al, byte ptr es:[bx]            ; 26 22 07
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1319                          ; E8 63 F5
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        mov     al, byte ptr [si + 0x272]       ; 8A 84 72 02
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        or      byte ptr es:[bx], al            ; 26 08 07
L_1DCC:
        test    byte ptr [bp - 0x1e], 8         ; F6 46 E2 08
        je      L_1E2F                          ; 74 5D
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_2E3F                          ; E8 5E 10
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     dx, word ptr [bp + 0x14]        ; 8B 56 14
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     al, byte ptr [bx + 0x26a]       ; 8A 87 6A 02
        les     bx, ptr [bp - 8]                ; C4 5E F8
        and     al, byte ptr es:[bx]            ; 26 22 07
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1319                          ; E8 00 F5
        mov     byte ptr [bp - 0x10], al        ; 88 46 F0
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        mov     al, byte ptr [si + 0x272]       ; 8A 84 72 02
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     al, byte ptr [bp - 0x10]        ; 8A 46 F0
        or      byte ptr es:[bx], al            ; 26 08 07
L_1E2F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
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
        sub     sp, 0x50                        ; 83 EC 50
        push    si                              ; 56
        mov     word ptr [bp - 0x26], 0         ; C7 46 DA 00 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     dx, word ptr es:[bx + 0x12]     ; 26 8B 57 12
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        call    L_2E3F                          ; E8 BF 0F
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1E92                          ; 75 03
        jmp     L_1F3A                          ; E9 A8 00
L_1E92:
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_1E9E                          ; 74 05
L_1E99:
        sub     ax, ax                          ; 2B C0
        jmp     L_216B                          ; E9 CD 02
L_1E9E:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        je      L_1E99                          ; 74 E1
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A C5 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     word ptr [bp - 0x4c], dx        ; 89 56 B4
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 60 E1
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        je      L_1EEE                          ; 74 03
        jmp     L_2155                          ; E9 67 02
L_1EEE:
        add     word ptr [bp - 0x4e], 2         ; 83 46 B2 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        add     word ptr [bp - 0x4e], 2         ; 83 46 B2 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
        jmp     L_1F1F                          ; EB 12
L_1F0D:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0x4e]             ; C4 5E B2
        add     word ptr [bp - 0x4e], 2         ; 83 46 B2 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
L_1F1F:
        or      si, si                          ; 0B F6
        jne     L_1F0D                          ; 75 EA
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
L_1F3A:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     dx, word ptr [bp + 0x18]        ; 8B 56 18
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        je      L_1FB1                          ; 74 63
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        call    far _entry_103                  ; 9A C6 1C 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        jne     L_1FB1                          ; 75 40
        test    byte ptr [bp - 0x40], 1         ; F6 46 C0 01
        je      L_1F7D                          ; 74 06
        mov     byte ptr [bp - 6], 0            ; C6 46 FA 00
        jmp     L_1F81                          ; EB 04
L_1F7D:
        mov     byte ptr [bp - 6], 0xff         ; C6 46 FA FF
L_1F81:
        test    byte ptr [bp - 0x40], 2         ; F6 46 C0 02
        je      L_1F8D                          ; 74 06
        mov     byte ptr [bp - 0x4a], 0         ; C6 46 B6 00
        jmp     L_1F91                          ; EB 04
L_1F8D:
        mov     byte ptr [bp - 0x4a], 0xff      ; C6 46 B6 FF
L_1F91:
        test    byte ptr [bp - 0x40], 4         ; F6 46 C0 04
        je      L_1F9D                          ; 74 06
        mov     byte ptr [bp - 0xc], 0          ; C6 46 F4 00
        jmp     L_1FA1                          ; EB 04
L_1F9D:
        mov     byte ptr [bp - 0xc], 0xff       ; C6 46 F4 FF
L_1FA1:
        test    byte ptr [bp - 0x40], 8         ; F6 46 C0 08
        je      L_1FAD                          ; 74 06
        mov     byte ptr [bp - 0x2e], 0         ; C6 46 D2 00
        jmp     L_1FB1                          ; EB 04
L_1FAD:
        mov     byte ptr [bp - 0x2e], 0xff      ; C6 46 D2 FF
L_1FB1:
        add     word ptr [bp - 0x44], 2         ; 83 46 BC 02
        les     bx, ptr [bp - 0x44]             ; C4 5E BC
        add     word ptr [bp - 0x44], 2         ; 83 46 BC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mul     word ptr [bp - 4]               ; F7 66 FC
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_201D                          ; 74 3C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     cx, word ptr es:[bx + 0x22]     ; 26 8B 4F 22
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, dx                          ; 8B DA
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     si, dx                          ; 8B F2
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     al, byte ptr es:[bx + si + 8]   ; 26 8A 40 08
        mov     byte ptr [bp - 0x4a], al        ; 88 46 B6
        mov     al, byte ptr es:[bx + si + 0x10] ; 26 8A 40 10
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + si + 0x18] ; 26 8A 40 18
        mov     byte ptr [bp - 0x2e], al        ; 88 46 D2
L_201D:
        mov     word ptr [bp - 0x2a], 1         ; C7 46 D6 01 00
L_2022:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jl      L_202D                          ; 7C 03
        jmp     L_2155                          ; E9 28 01
L_202D:
        les     bx, ptr [bp - 0x44]             ; C4 5E BC
        add     word ptr [bp - 0x44], 2         ; 83 46 BC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        add     word ptr [bp - 0x44], 2         ; 83 46 BC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jle     L_2050                          ; 7E 03
        jmp     L_214F                          ; E9 FF 00
L_2050:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        sub     dx, 7                           ; 83 EA 07
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        sub     dx, 7                           ; 83 EA 07
        neg     dx                              ; F7 DA
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     dx, word ptr [bp - 0xe]         ; 8B 56 F2
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
L_20AF:
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jle     L_20BA                          ; 7E 03
        jmp     L_214F                          ; E9 95 00
L_20BA:
        mov     byte ptr [bp - 0x48], 0xff      ; C6 46 B8 FF
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jne     L_20D3                          ; 75 10
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        mov     al, byte ptr [bx + 0x282]       ; 8A 87 82 02
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        and     al, byte ptr [bx + 0x27a]       ; 22 87 7A 02
        jmp     L_20F3                          ; EB 20
L_20D3:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jne     L_20E4                          ; 75 09
        mov     bx, word ptr [bp - 0x3c]        ; 8B 5E C4
        mov     al, byte ptr [bx + 0x282]       ; 8A 87 82 02
        jmp     L_20F3                          ; EB 0F
L_20E4:
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jne     L_20F6                          ; 75 0A
        mov     bx, word ptr [bp - 0x46]        ; 8B 5E BA
        mov     al, byte ptr [bx + 0x27a]       ; 8A 87 7A 02
L_20F3:
        mov     byte ptr [bp - 0x48], al        ; 88 46 B8
L_20F6:
        mov     al, byte ptr [bp - 0x48]        ; 8A 46 B8
        xor     al, 0xff                        ; 34 FF
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        and     al, byte ptr [bp - 0x48]        ; 22 46 B8
        or      byte ptr es:[bx], al            ; 26 08 07
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     si, word ptr [bp - 0x3a]        ; 8B 76 C6
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     al, byte ptr [bp - 0x4a]        ; 8A 46 B6
        and     al, byte ptr [bp - 0x48]        ; 22 46 B8
        or      byte ptr es:[bx + si], al       ; 26 08 00
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        and     al, byte ptr [bp - 0x48]        ; 22 46 B8
        or      byte ptr es:[bx + si], al       ; 26 08 00
        mov     bx, word ptr [bp - 0x1a]        ; 8B 5E E6
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        and     byte ptr es:[bx + si], al       ; 26 20 00
        mov     al, byte ptr [bp - 0x2e]        ; 8A 46 D2
        and     al, byte ptr [bp - 0x48]        ; 22 46 B8
        or      byte ptr es:[bx + si], al       ; 26 08 00
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_20AF                          ; E9 60 FF
L_214F:
        inc     word ptr [bp - 0x2a]            ; FF 46 D6
        jmp     L_2022                          ; E9 CD FE
L_2155:
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        je      L_216B                          ; 74 10
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.GLOBALUNLOCK         ; 9A E5 0F 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.GLOBALFREE           ; 9A AA 07 00 00 [FIXUP]
L_216B:
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
        sub     sp, 4                           ; 83 EC 04
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
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_21A8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_2237                          ; 74 79
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     al, byte ptr [bp - 0xb]         ; 8A 46 F5
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_21ED                          ; 74 04
        or      byte ptr [bp - 0xe], 1          ; 80 4E F2 01
L_21ED:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_21F7                          ; 74 04
        or      byte ptr [bp - 0xe], 2          ; 80 4E F2 02
L_21F7:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_2201                          ; 74 04
        or      byte ptr [bp - 0xe], 4          ; 80 4E F2 04
L_2201:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     al, byte ptr [bx + 0x2be]       ; 8A 87 BE 02
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     word ptr [bp - 0x12], si        ; 89 76 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x2c6]       ; 8B 87 C6 02
        mov     dx, word ptr [bx + 0x2c8]       ; 8B 97 C8 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        jmp     L_2242                          ; EB 0B
L_2237:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x2c6]       ; 8B 87 C6 02
L_2242:
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
        sub     sp, 0x36                        ; 83 EC 36
        push    si                              ; 56
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_2267                          ; 7D 05
L_2262:
        sub     ax, ax                          ; 2B C0
        jmp     L_26AC                          ; E9 45 04
L_2267:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     ax, 1                           ; 3D 01 00
        je      L_227C                          ; 74 0D
        cmp     ax, 2                           ; 3D 02 00
        je      L_22F2                          ; 74 7E
        cmp     ax, 3                           ; 3D 03 00
        je      L_2262                          ; 74 E9
        jmp     L_26AC                          ; E9 30 04
L_227C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_22EC                          ; 74 68
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        cmp     word ptr es:[bx + 2], 1         ; 26 83 7F 02 01
        jle     L_22BC                          ; 7E 09
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
L_22BC:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21A8                          ; E8 D1 FE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_103                  ; 9A 98 23 00 00 [FIXUP]
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
L_22EC:
        mov     ax, 6                           ; B8 06 00
        jmp     L_26AC                          ; E9 BA 03
L_22F2:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_2370                          ; 74 76
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx + 0x20], ax     ; 26 89 47 20
        mov     word ptr es:[bx + 0x22], 8      ; 26 C7 47 22 08 00
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_232A:
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], 0xff     ; 26 C6 00 FF
        mov     si, bx                          ; 8B F3
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     byte ptr es:[bx + si + 8], 0xff ; 26 C6 40 08 FF
        mov     byte ptr es:[bx + si + 0x10], 0xff ; 26 C6 40 10 FF
        mov     byte ptr es:[bx + si + 0x18], 0xff ; 26 C6 40 18 FF
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        cmp     word ptr [bp - 0x18], 8         ; 83 7E E8 08
        jl      L_232A                          ; 7C D9
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        or      ax, ax                          ; 0B C0
        je      L_2376                          ; 74 1B
        cmp     ax, 1                           ; 3D 01 00
        je      L_2370                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_2368                          ; 75 03
        jmp     L_24AC                          ; E9 44 01
L_2368:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_2370                          ; 75 03
        jmp     L_23F5                          ; E9 85 00
L_2370:
        mov     ax, 0x26                        ; B8 26 00
        jmp     L_26AC                          ; E9 36 03
L_2376:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21A8                          ; E8 17 FE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_103                  ; 9A 43 25 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_23A7:
        cmp     word ptr [bp - 0x18], 8         ; 83 7E E8 08
        jge     L_2370                          ; 7D C3
        test    byte ptr [bp - 0x22], 1         ; F6 46 DE 01
        je      L_23BD                          ; 74 0A
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
L_23BD:
        test    byte ptr [bp - 0x22], 2         ; F6 46 DE 02
        je      L_23CE                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 8], 0    ; 26 C6 40 08 00
L_23CE:
        test    byte ptr [bp - 0x22], 4         ; F6 46 DE 04
        je      L_23DF                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 0x10], 0 ; 26 C6 40 10 00
L_23DF:
        test    byte ptr [bp - 0x22], 8         ; F6 46 DE 08
        je      L_23F0                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 0x18], 0 ; 26 C6 40 18 00
L_23F0:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_23A7                          ; EB B2
L_23F5:
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     dx, word ptr es:[bx + 4]        ; 26 8B 57 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx + 8], 4         ; 26 80 7F 08 04
        jbe     L_2415                          ; 76 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_241E                          ; EB 09
L_2415:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        sub     ah, ah                          ; 2A E4
L_241E:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx + 4], 8         ; 26 83 7F 04 08
        jbe     L_2430                          ; 76 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_2437                          ; EB 07
L_2430:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
L_2437:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_2450:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jl      L_245B                          ; 7C 03
        jmp     L_2370                          ; E9 15 FF
L_245B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mul     word ptr [bp - 0x18]            ; F7 66 E8
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     dx, word ptr es:[bx + 0xc]      ; 26 8B 57 0C
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        jmp     L_2496                          ; EB 1C
L_247A:
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x32]             ; C4 5E CE
        inc     word ptr [bp - 0x32]            ; FF 46 CE
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
L_2496:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jl      L_247A                          ; 7C DC
        mov     ax, 8                           ; B8 08 00
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        add     word ptr [bp - 0x32], ax        ; 01 46 CE
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_2450                          ; EB A4
L_24AC:
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     dx, word ptr es:[bx + 0xa]      ; 26 8B 57 0A
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_24D5:
        test    byte ptr [bp - 0x22], 1         ; F6 46 DE 01
        je      L_24E5                          ; 74 0A
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
L_24E5:
        test    byte ptr [bp - 0x22], 2         ; F6 46 DE 02
        je      L_24F6                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 8], 0    ; 26 C6 40 08 00
L_24F6:
        test    byte ptr [bp - 0x22], 4         ; F6 46 DE 04
        je      L_2507                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 0x10], 0 ; 26 C6 40 10 00
L_2507:
        test    byte ptr [bp - 0x22], 8         ; F6 46 DE 08
        je      L_2518                          ; 74 0B
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     byte ptr es:[bx + si + 0x18], 0 ; 26 C6 40 18 00
L_2518:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        cmp     word ptr [bp - 0x18], 8         ; 83 7E E8 08
        jl      L_24D5                          ; 7C B4
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_21A8                          ; E8 6C FC
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_103                  ; 9A 59 1F 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        les     bx, ptr [bp - 0x2e]             ; C4 5E D2
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        or      ax, ax                          ; 0B C0
        je      L_2582                          ; 74 2A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_2560                          ; 75 03
        jmp     L_2629                          ; E9 C9 00
L_2560:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_2568                          ; 75 03
        jmp     L_262F                          ; E9 C7 00
L_2568:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_2570                          ; 75 03
        jmp     L_2635                          ; E9 C5 00
L_2570:
        cmp     ax, 4                           ; 3D 04 00
        je      L_257D                          ; 74 08
        cmp     ax, 5                           ; 3D 05 00
        jne     L_257D                          ; 75 03
        jmp     L_263B                          ; E9 BE 00
L_257D:
        mov     ax, 0x2aa                       ; B8 AA 02
        jmp     L_2585                          ; EB 03
L_2582:
        mov     ax, 0x28a                       ; B8 8A 02
L_2585:
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], ds        ; 8C 5E E6
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_2590:
        cmp     word ptr [bp - 0x18], 8         ; 83 7E E8 08
        jl      L_2599                          ; 7C 03
        jmp     L_2641                          ; E9 A8 00
L_2599:
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        test    byte ptr [bp - 0x22], 1         ; F6 46 DE 01
        je      L_25B7                          ; 74 0C
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        or      byte ptr es:[bx + si], al       ; 26 08 00
        xor     byte ptr es:[bx + si], al       ; 26 30 00
L_25B7:
        test    byte ptr [bp - 0x22], 2         ; F6 46 DE 02
        je      L_25DB                          ; 74 1E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        or      byte ptr es:[bx], al            ; 26 08 07
        xor     byte ptr es:[bx], al            ; 26 30 07
L_25DB:
        test    byte ptr [bp - 0x22], 4         ; F6 46 DE 04
        je      L_25FF                          ; 74 1E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        or      byte ptr es:[bx], al            ; 26 08 07
        xor     byte ptr es:[bx], al            ; 26 30 07
L_25FF:
        test    byte ptr [bp - 0x22], 8         ; F6 46 DE 08
        je      L_2623                          ; 74 1E
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, 0x18                        ; 05 18 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        les     bx, ptr [bp - 0x36]             ; C4 5E CA
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        or      byte ptr es:[bx], al            ; 26 08 07
        xor     byte ptr es:[bx], al            ; 26 30 07
L_2623:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_2590                          ; E9 67 FF
L_2629:
        mov     ax, 0x292                       ; B8 92 02
        jmp     L_2585                          ; E9 56 FF
L_262F:
        mov     ax, 0x2a2                       ; B8 A2 02
        jmp     L_2585                          ; E9 50 FF
L_2635:
        mov     ax, 0x29a                       ; B8 9A 02
        jmp     L_2585                          ; E9 4A FF
L_263B:
        mov     ax, 0x2b2                       ; B8 B2 02
        jmp     L_2585                          ; E9 44 FF
L_2641:
        sub     word ptr [bp - 0x1c], 8         ; 83 6E E4 08
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_264A:
        cmp     word ptr [bp - 0x18], 8         ; 83 7E E8 08
        jl      L_2653                          ; 7C 03
        jmp     L_2370                          ; E9 1D FD
L_2653:
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        test    byte ptr [bp - 0x16], 1         ; F6 46 EA 01
        je      L_266E                          ; 74 09
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        xor     byte ptr es:[bx + si], al       ; 26 30 00
L_266E:
        test    byte ptr [bp - 0x16], 2         ; F6 46 EA 02
        je      L_2681                          ; 74 0D
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        xor     byte ptr es:[bx + si + 8], al   ; 26 30 40 08
L_2681:
        test    byte ptr [bp - 0x16], 4         ; F6 46 EA 04
        je      L_2694                          ; 74 0D
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        xor     byte ptr es:[bx + si + 0x10], al ; 26 30 40 10
L_2694:
        test    byte ptr [bp - 0x16], 8         ; F6 46 EA 08
        je      L_26A7                          ; 74 0D
        mov     si, word ptr [bp - 0x18]        ; 8B 76 E8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr [bp - 0x2a]        ; 8A 46 D6
        xor     byte ptr es:[bx + si + 0x18], al ; 26 30 40 18
L_26A7:
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_264A                          ; EB 9E
L_26AC:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
L_26B8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        jmp     L_26FE                          ; EB 37
L_26C7:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.WRITECOMM              ; 9A F2 26 00 00 [FIXUP]
        inc     word ptr [bp + 8]               ; FF 46 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_26C7                          ; 75 E2
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x58d                       ; B8 8D 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.WRITECOMM              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.CLOSECOMM              ; 9A FF FF 00 00 [FIXUP]
L_26FE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 6], 7            ; C7 46 FA 07 00
L_271B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        shl     al, 1                           ; D0 E0
        shl     al, 1                           ; D0 E0
        cwde                                    ; 98
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_2E1E                          ; E8 E6 06
        and     word ptr [bp - 0xa], 0xf        ; 81 66 F6 0F 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        ja      L_2756                          ; 77 0E
        jb      L_2750                          ; 72 06
        cmp     word ptr [bp - 0xa], 0xa        ; 83 7E F6 0A
        jae     L_2756                          ; 73 06
L_2750:
        add     word ptr [bp - 0xa], 0x30       ; 83 46 F6 30
        jmp     L_2762                          ; EB 0C
L_2756:
        sub     word ptr [bp - 0xa], 0xa        ; 83 6E F6 0A
        sbb     word ptr [bp - 8], 0            ; 83 5E F8 00
        add     word ptr [bp - 0xa], 0x41       ; 83 46 F6 41
L_2762:
        adc     word ptr [bp - 8], 0            ; 83 56 F8 00
        mov     bx, bp                          ; 8B DD
        sub     bx, word ptr [bp - 6]           ; 2B 5E FA
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        mov     byte ptr ss:[bx - 0xb], al      ; 36 88 47 F5
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_271B                          ; 7D A0
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_26B8                          ; E8 2F FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_2794:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_2805                          ; 75 12
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     al, byte ptr [bx + 0x5a0]       ; 8A 87 A0 05
        mov     bx, dx                          ; 8B DA
        or      al, byte ptr [bx + 0x598]       ; 0A 87 98 05
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        jmp     L_2822                          ; EB 1D
L_2805:
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     al, byte ptr [bx + 0x5a0]       ; 8A 87 A0 05
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     bx, word ptr [bp + 0xa]         ; 03 5E 0A
        mov     es, word ptr [bp + 0xc]         ; 8E 46 0C
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx + 0x598]       ; 8A 87 98 05
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
L_2822:
        add     bx, word ptr [bp + 0xa]         ; 03 5E 0A
        mov     es, word ptr [bp + 0xc]         ; 8E 46 0C
        and     byte ptr es:[bx], al            ; 26 20 07
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_2843                          ; EB 10
L_2833:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        add     bx, word ptr [bp + 0xa]         ; 03 5E 0A
        mov     es, word ptr [bp + 0xc]         ; 8E 46 0C
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_2843:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_2833                          ; 7C E8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     word ptr [bp + 0x10], ax        ; 01 46 10
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        mov     cx, 8                           ; B9 08 00
        idiv    cx                              ; F7 F9
        mov     bx, dx                          ; 8B DA
        mov     al, byte ptr [bx + 0x590]       ; 8A 87 90 05
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     bx, dx                          ; 8B DA
        mov     al, byte ptr [bx + 0x590]       ; 8A 87 90 05
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_28C7                          ; EB 2F
L_2898:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        test    si, ax                          ; 85 C6
        je      L_28AC                          ; 74 08
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, di                          ; 8B C7
        or      byte ptr es:[bx], al            ; 26 08 07
L_28AC:
        sar     si, 1                           ; D1 FE
        or      si, si                          ; 0B F6
        jne     L_28B8                          ; 75 06
        mov     si, 0x80                        ; BE 80 00
        inc     word ptr [bp + 0x10]            ; FF 46 10
L_28B8:
        sar     di, 1                           ; D1 FF
        or      di, di                          ; 0B FF
        jne     L_28C4                          ; 75 06
        mov     di, 0x80                        ; BF 80 00
        inc     word ptr [bp - 0x12]            ; FF 46 EE
L_28C4:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_28C7:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_2898                          ; 7C C9
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
        sub     sp, 0x62                        ; 83 EC 62
        push    di                              ; 57
        push    si                              ; 56
        dec     word ptr [bp + 0x1e]            ; FF 4E 1E
        dec     word ptr [bp + 0x1c]            ; FF 4E 1C
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_292E                          ; 7E 37
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 2E D7
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 DC D6
        or      ax, ax                          ; 0B C0
        jg      L_292E                          ; 7F 06
L_2928:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_2E11                          ; E9 E3 04
L_292E:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_2964                          ; 74 2D
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x870                       ; 05 70 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_2964:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_29AA                          ; 7D 40
        sub     si, si                          ; 2B F6
        mov     di, word ptr [bp + 0x12]        ; 8B 7E 12
        jmp     L_2991                          ; EB 20
L_2971:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 1E EF
        add     si, ax                          ; 03 F0
        inc     di                              ; 47
L_2991:
        or      di, di                          ; 0B FF
        jl      L_2971                          ; 7C DC
        mov     word ptr [bp - 0x16], si        ; 89 76 EA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, si                          ; 8B C6
        mov     dx, word ptr [bp - 0x14]        ; 8B 56 EC
        jmp     L_2E11                          ; E9 67 04
L_29AA:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jg      L_29CD                          ; 7F 03
        jmp     L_2928                          ; E9 5B FF
L_29CD:
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_29DA                          ; 7C 03
        jmp     L_2928                          ; E9 4E FF
L_29DA:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jg      L_29E6                          ; 7F 03
        jmp     L_2928                          ; E9 42 FF
L_29E6:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     dx, word ptr es:[bx + 6]        ; 26 8B 57 06
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     word ptr [bp - 0x58], dx        ; 89 56 A8
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     dx, word ptr es:[bx + 0xa]      ; 26 8B 57 0A
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        mov     word ptr [bp - 0x54], dx        ; 89 56 AC
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        push    dx                              ; 52
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_102                  ; 9A 05 1A 00 00 [FIXUP]
        les     bx, ptr [bp - 0x62]             ; C4 5E 9E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp - 0x62]             ; C4 5E 9E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     dx, word ptr es:[bx + 4]        ; 26 8B 57 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        les     bx, ptr [bp - 0x62]             ; C4 5E 9E
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     dx, word ptr es:[bx + 8]        ; 26 8B 57 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 0xa], dx      ; 26 89 57 0A
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 2B ED
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x21]     ; 26 8B 47 21
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     byte ptr es:[bx + 8], 1         ; 26 C6 47 08 01
        mov     byte ptr es:[bx + 9], 1         ; 26 C6 47 09 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x2b]     ; 26 8B 47 2B
        mov     dx, word ptr es:[bx + 0x2d]     ; 26 8B 57 2D
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], dx      ; 26 89 57 0C
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mul     word ptr es:[bx + 4]            ; 26 F7 67 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     word ptr es:[bx + 0x10], 0      ; 26 C7 47 10 00 00
        mov     word ptr [bp - 0x3e], 0         ; C7 46 C2 00 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jg      L_2B1A                          ; 7F 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2B1C                          ; EB 02
L_2B1A:
        sub     ax, ax                          ; 2B C0
L_2B1C:
        mov     cx, word ptr [bp + 0x1c]        ; 8B 4E 1C
        add     cx, word ptr [bp - 0x3c]        ; 03 4E C4
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     si, ax                          ; 8B F0
        cmp     cx, word ptr es:[bx + 2]        ; 26 3B 4F 02
        jge     L_2B32                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2B34                          ; EB 02
L_2B32:
        sub     ax, ax                          ; 2B C0
L_2B34:
        or      ax, si                          ; 0B C6
        je      L_2B3B                          ; 74 03
        jmp     L_2DBB                          ; E9 80 02
L_2B3B:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jle     L_2B65                          ; 7E 1E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [bp + 0x1c]        ; 2B 46 1C
        sub     word ptr [bp - 0x3c], ax        ; 29 46 C4
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp + 0x1c], ax        ; 89 46 1C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        sub     ax, word ptr [bp - 0x3c]        ; 2B 46 C4
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
L_2B65:
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        add     ax, word ptr [bp - 0x3c]        ; 03 46 C4
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     ax, word ptr es:[bx + 6]        ; 26 3B 47 06
        jle     L_2B81                          ; 7E 0D
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        sub     ax, word ptr es:[bx + 6]        ; 26 2B 47 06
        add     ax, word ptr [bp - 0x3c]        ; 03 46 C4
        sub     word ptr [bp - 0x3c], ax        ; 29 46 C4
L_2B81:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_185E                          ; E8 CE EC
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
L_2B98:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jl      L_2BA3                          ; 7C 03
        jmp     L_2DBB                          ; E9 18 02
L_2BA3:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        inc     word ptr [bp + 0x14]            ; FF 46 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x32], al        ; 88 46 CE
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_185E                          ; E8 9C EC
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     al, byte ptr [bp - 0x32]        ; 8A 46 CE
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_18AC                          ; E8 D0 EC
        sub     ax, word ptr [bp - 0x36]        ; 2B 46 CA
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     si, word ptr es:[bx]            ; 26 8B 37
        cmp     word ptr [bp + 0x1e], si        ; 39 76 1E
        jge     L_2C43                          ; 7D 56
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp + 0x1e]        ; 2B 46 1E
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        add     si, word ptr [bp - 0x2e]        ; 03 76 D2
        cmp     ax, si                          ; 3B C6
        jle     L_2C0E                          ; 7E 0F
        add     word ptr [bp + 0x1e], si        ; 01 76 1E
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        jmp     L_2C43                          ; EB 35
L_2C0E:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jge     L_2C2A                          ; 7D 14
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        sub     word ptr [bp - 0x36], ax        ; 29 46 CA
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
        jmp     L_2C43                          ; EB 19
L_2C2A:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        sub     ax, si                          ; 2B C6
        add     word ptr [bp - 0x2e], ax        ; 01 46 D2
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     word ptr [bp + 0x1e], si        ; 89 76 1E
L_2C43:
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     ax, word ptr es:[bx + 4]        ; 26 3B 47 04
        jle     L_2CA0                          ; 7E 4B
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        sub     ax, word ptr es:[bx + 4]        ; 26 2B 47 04
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        add     ax, word ptr [bp - 0x2e]        ; 03 46 D2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        add     si, word ptr [bp - 0x2e]        ; 03 76 D2
        cmp     ax, si                          ; 3B C6
        jle     L_2C7E                          ; 7E 0F
        add     word ptr [bp + 0x1e], si        ; 01 76 1E
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        jmp     L_2CA0                          ; EB 22
L_2C7E:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jg      L_2C8E                          ; 7F 08
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        sub     word ptr [bp - 0x2e], ax        ; 29 46 D2
        jmp     L_2CA0                          ; EB 12
L_2C8E:
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr [bp + 0x1e]        ; 2B 46 1E
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
L_2CA0:
        cmp     word ptr [bp - 0x36], 0         ; 83 7E CA 00
        je      L_2CE5                          ; 74 3F
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     al, byte ptr [bp - 0x32]        ; 8A 46 CE
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 13 EB
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A7                          ; E8 C2 E7
L_2CE5:
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_2CEE                          ; 75 03
        jmp     L_2DA3                          ; E9 B5 00
L_2CEE:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x24]        ; 8B 4E DC
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        jmp     L_2D4D                          ; EB 43
L_2D0A:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 B1 EA
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A7                          ; E8 63 E7
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     word ptr [bp - 0x38], ax        ; 01 46 C8
        inc     word ptr [bp - 0x34]            ; FF 46 CC
L_2D4D:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        jl      L_2D0A                          ; 7C B5
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x24]        ; 8B 4E DC
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_2DA3                          ; 74 41
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17D0                          ; E8 59 EA
        push    ax                              ; 50
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x24]        ; 8B 4E DC
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A7                          ; E8 04 E7
L_2DA3:
        mov     si, word ptr [bp - 0x36]        ; 8B 76 CA
        add     si, word ptr [bp - 0x2e]        ; 03 76 D2
        add     word ptr [bp + 0x1e], si        ; 01 76 1E
        mov     ax, si                          ; 8B C6
        cdq                                     ; 99
        add     word ptr [bp - 0x2a], ax        ; 01 46 D6
        adc     word ptr [bp - 0x28], dx        ; 11 56 D8
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        jmp     L_2B98                          ; E9 DD FD
L_2DBB:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     dx, word ptr [bp - 0x58]        ; 8B 56 A8
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        mov     dx, word ptr [bp - 0x54]        ; 8B 56 AC
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 0xa], dx      ; 26 89 57 0A
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     dx, word ptr [bp - 0x28]        ; 8B 56 D8
L_2E11:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
L_2E1E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        call    L_2EAE                          ; E8 7D 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_2E3F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_2E5F                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_2E5F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_2E78                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_2E78:
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
        je      L_2E9D                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_2E9D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_2EA3:
        xor     ch, ch                          ; 32 ED
        jcxz    L_2EAD                          ; E3 06
L_2EA7:
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        loop    L_2EA7                          ; E2 FA
L_2EAD:
        ret                                     ; C3
L_2EAE:
        xor     ch, ch                          ; 32 ED
        jcxz    L_2EB8                          ; E3 06
L_2EB2:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_2EB2                          ; E2 FA
L_2EB8:
        ret                                     ; C3
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_2EDD                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_2ED9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_2ED9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_2EDD:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0bch                            ; BC
        push    cs                              ; 0E

XER4020_TEXT ENDS

        END
