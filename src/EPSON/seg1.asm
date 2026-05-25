; AUTO-GENERATED from original EPSON segment 1
; segment_size=4490 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

EPSON_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 274 instr
; Dispatcher: tabla de decisiones cmp+jcc (274 instr).
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_007C                          ; 76 03
        jmp     L_032A                          ; E9 AE 02
L_007C:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x443]        ; 2E FF A7 43 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0091                          ; 74 03
        jmp     L_02BA                          ; E9 29 02
L_0091:
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_010F                          ; 75 70
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        cmp     ax, 1                           ; 3D 01 00
        je      L_00B7                          ; 74 03
        jmp     L_02BA                          ; E9 03 02
L_00B7:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 93 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x3e], 0      ; 26 C7 47 3E 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        push    word ptr [bx + 0xc]             ; FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AA2                          ; E8 C4 09
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x300]            ; A1 00 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x302]            ; A0 02 03
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 59 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
        push    es                              ; 06
        push    bx                              ; 53
        call    L_046B                          ; E8 5C 03
L_010F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0161                          ; 74 48
        or      si, si                          ; 0B F6
        jne     L_0137                          ; 75 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        mov     ax, 0x2d0                       ; B8 D0 02
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A BD 01 00 00 [FIXUP]
        jmp     L_03E5                          ; E9 AE 02
L_0137:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_015C                          ; 74 1B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x300]            ; A1 00 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x302]            ; A0 02 03
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 07 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
L_015C:
        mov     si, 0x12                        ; BE 12 00
        jmp     L_016A                          ; EB 09
L_0161:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
L_016A:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0196                          ; 75 22
        mov     ax, 0x28                        ; B8 28 00
        imul    si                              ; F7 EE
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x28                        ; 05 28 00
        push    ax                              ; 50
        mov     ax, 0x3c0                       ; B8 C0 03
        jmp     L_01BB                          ; EB 25
L_0196:
        mov     ax, 0x28                        ; B8 28 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x28                        ; 05 28 00
L_01BB:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        or      ax, ax                          ; 0B C0
        je      L_01E6                          ; 74 1F
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_0213                          ; 74 47
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        jne     L_01D9                          ; 75 03
        jmp     L_02EE                          ; E9 15 01
L_01D9:
        push    es                              ; 06
        push    bx                              ; 53
        call    L_080B                          ; E8 2D 06
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xfb   ; 26 80 67 26 FB
L_01E6:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_01FA:
        cmp     word ptr [bp - 0xc], 0x12c0     ; 81 7E F4 C0 12
        jb      L_0204                          ; 72 03
        jmp     L_0305                          ; E9 01 01
L_0204:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_01FA                          ; EB E7
L_0213:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A C1 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_022D                          ; 75 05
        push    es                              ; 06
        push    bx                              ; 53
        call    L_080B                          ; E8 DE 05
L_022D:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        cmp     word ptr [bx], 0x14             ; 83 3F 14
        je      L_025F                          ; 74 20
        push    es                              ; 06
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AA2                          ; E8 45 08
        jmp     L_0273                          ; EB 14
L_025F:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xe3                        ; B8 E3 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 E7 06
L_0273:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xe5                        ; B8 E5 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 D3 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_046B                          ; E8 DB 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_02AA                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
L_02AA:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_02E4                          ; 74 2A
L_02BA:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        je      L_02E4                          ; 74 15
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A 5B 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
L_02E4:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x32]     ; 26 8B 47 32
        jmp     L_045F                          ; E9 71 01
L_02EE:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_02AA                          ; 74 B2
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_09D7                          ; E8 D2 06
L_0305:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_046B                          ; E8 5D 01
        jmp     L_02AA                          ; EB 9A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_03E5                          ; E9 C5 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_032F                          ; 75 05
L_032A:
        sub     ax, ax                          ; 2B C0
        jmp     L_045F                          ; E9 30 01
L_032F:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_033D                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_033F                          ; EB 02
L_033D:
        sub     ax, ax                          ; 2B C0
L_033F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_03E5                          ; E9 9C 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03B1                          ; 75 5E
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03B1                          ; EB 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0394                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_0394                          ; 7E 06
        mov     word ptr es:[bx + 0x32], 1      ; 26 C7 47 32 01 00
L_0394:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_045F                          ; E9 C1 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03B1                          ; 75 09
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
L_03B1:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        jmp     L_03E5                          ; EB 29
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_03D0                          ; 76 03
        jmp     L_032A                          ; E9 5A FF
L_03D0:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x3ea]        ; 2E FF A7 EA 03
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        je      L_03E5                          ; 74 03
        jmp     L_032A                          ; E9 45 FF
L_03E5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_045F                          ; EB 75
        in      ax, 3                           ; E5 03
        in      ax, 3                           ; E5 03
        in      ax, 3                           ; E5 03
        sub     al, byte ptr [bp + di]          ; 2A 03
        sub     al, byte ptr [bp + di]          ; 2A 03
        sub     al, byte ptr [bp + di]          ; 2A 03
        fadd    dword ptr [bp + di]             ; D8 03
        in      ax, 3                           ; E5 03
        sub     al, byte ptr [bp + di]          ; 2A 03
        in      ax, 3                           ; E5 03
        in      ax, 3                           ; E5 03
        in      ax, 3                           ; E5 03
        in      ax, 3                           ; E5 03
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        jmp     L_043A                          ; EB 1A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
L_043A:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_03E5                          ; EB A2
        in      al, 2                           ; E4 02
        dec     cx                              ; 49
        add     ax, word ptr [si + 0x2a00]      ; 03 84 00 2A
        add     bp, word ptr [bp + si]          ; 03 2A
        add     bp, word ptr [bp + si]          ; 03 2A
        add     sp, word ptr [bx + si]          ; 03 20
        add     di, word ptr [si + 0x1003]      ; 03 BC 03 10
        add     sp, word ptr [bx + di + 3]      ; 03 61 03
        sahf                                    ; 9E
        add     ax, word ptr [si]               ; 03 04
        add     al, 0x20                        ; 04 20
        add     al, 0xeb                        ; 04 EB
        xchg    byte ptr [bp - 0x7d], bl        ; 86 5E 83
        in      ax, dx                          ; ED
        add     cl, byte ptr [bp + di + 0x1fe5] ; 02 8B E5 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_046B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x30], 0      ; 26 83 7F 30 00
        je      L_0482                          ; 74 07
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0486                          ; 74 04
L_0482:
        sub     ax, ax                          ; 2B C0
        jmp     L_04BB                          ; EB 35
L_0486:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x30]     ; 26 3B 47 30
        je      L_04AF                          ; 74 04
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
L_04AF:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_04BB:
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
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0xa          ; C7 46 FA 0A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0504                          ; 74 29
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04FA                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0504                          ; EB 0A
L_04FA:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0504:
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_0547                          ; 74 3D
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_051B                          ; 75 05
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_051E                          ; EB 03
L_051B:
        mov     ax, 0x78                        ; B8 78 00
L_051E:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 0E FB
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_0537                          ; 74 05
        mov     ax, 0x48                        ; B8 48 00
        jmp     L_053A                          ; EB 03
L_0537:
        mov     ax, 0x2048                      ; B8 48 20
L_053A:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_05E9                          ; E9 A2 00
L_0547:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_0558                          ; 75 05
        mov     ax, 0x306                       ; B8 06 03
        jmp     L_055B                          ; EB 03
L_0558:
        mov     ax, 0x34e                       ; B8 4E 03
L_055B:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 D1 FA
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_062B                          ; E8 B4 00
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x2e], 0xffff ; 26 C7 47 2E FF FF
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_05DF                          ; 75 52
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_05CA                          ; 75 1F
        push    es                              ; 06
        push    bx                              ; 53
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05DB                          ; 74 25
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        or      ax, ax                          ; 0B C0
        je      L_05CF                          ; 74 05
L_05CA:
        mov     ax, 1                           ; B8 01 00
        jmp     L_05E9                          ; EB 1A
L_05CF:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALFREE           ; 9A 19 06 00 00 [FIXUP]
L_05DB:
        sub     ax, ax                          ; 2B C0
        jmp     L_05E9                          ; EB 0A
L_05DF:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        or      byte ptr es:[bx + 0x26], 0x20   ; 26 80 4F 26 20
        jmp     L_05CA                          ; EB E1
L_05E9:
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
        jne     L_061D                          ; 75 15
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.DELETEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_061D:
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_062B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        jne     L_064A                          ; 75 14
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0689                          ; E8 4E 00
        or      ax, ax                          ; 0B C0
        jne     L_0683                          ; 75 44
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], 0x298  ; 26 C7 47 22 98 02
        jmp     L_0683                          ; EB 39
L_064A:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x26], 0x11   ; 26 83 7F 26 11
        jne     L_065C                          ; 75 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
L_065C:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0xb    ; 26 83 7F 20 0B
        jne     L_066B                          ; 75 05
        mov     ax, 3                           ; B8 03 00
        jmp     L_066D                          ; EB 02
L_066B:
        sub     ax, ax                          ; 2B C0
L_066D:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     ax, word ptr es:[bx + 0x24]     ; 26 03 47 24
        mov     cx, 0xe                         ; B9 0E 00
        imul    cx                              ; F7 E9
        add     ax, 0x172                       ; 05 72 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
L_0683:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0689:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x52                        ; 83 EC 52
        mov     ax, 0xf2                        ; B8 F2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe9                        ; B8 E9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe8                        ; B8 E8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_06C8                          ; 74 11
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_06D4                          ; E8 15 00
        cmp     ax, 1                           ; 3D 01 00
        je      L_06C8                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_06CB                          ; EB 03
L_06C8:
        mov     ax, 1                           ; B8 01 00
L_06CB:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
L_06D4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_06EE                          ; EB 09
L_06E5:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_06EE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr es:[bx + si], 0        ; 26 80 38 00
        jne     L_06E5                          ; 75 DA
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0715:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_072B:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0740                          ; 74 0F
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_074E                          ; 74 0E
L_0740:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0753                          ; 74 09
        mov     al, 0x59                        ; B0 59
        jmp     L_0755                          ; EB 07
L_074E:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jmp     L_072B                          ; EB D8
L_0753:
        mov     al, 0x4c                        ; B0 4C
L_0755:
        mov     byte ptr [0x2df], al            ; A2 DF 02
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0761                          ; 75 03
        jmp     L_07E2                          ; E9 81 00
L_0761:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0930                          ; E8 C3 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AA2                          ; E8 27 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_078C                          ; EB 03
L_0789:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_078C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0789                          ; 74 F4
        mov     si, bx                          ; 8B F3
        sub     si, word ptr [bp + 8]           ; 2B 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B50                          ; E8 A7 03
        sub     si, ax                          ; 2B F0
        sub     word ptr [bp + 6], si           ; 29 76 06
        add     word ptr [bp + 8], si           ; 01 76 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        mov     word ptr [0x2e0], ax            ; A3 E0 02
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x2de                       ; B8 DE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 8C 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 78 01
L_07E2:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_0804                          ; 74 18
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        call    L_09D7                          ; E8 DF 01
        or      ax, ax                          ; 0B C0
        jne     L_0804                          ; 75 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
L_0804:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_080B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x1c88                      ; 05 88 1C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_08A7                          ; 75 7D
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     ax, 0x28                        ; 2D 28 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_0839:
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jl      L_0842                          ; 7C 03
        jmp     L_0909                          ; E9 C7 00
L_0842:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ax, 0x3c0                       ; 05 C0 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0x3c0        ; C7 46 FE C0 03
L_0868:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        dec     word ptr [bp - 2]               ; FF 4E FE
        add     word ptr [bp - 6], 5            ; 83 46 FA 05
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0868                          ; 75 E4
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0715                          ; E8 73 FE
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        jmp     L_0839                          ; EB 92
L_08A7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, 0x28                        ; 2D 28 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_08C8:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x78                        ; B8 78 00
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0715                          ; E8 1A FE
        add     word ptr [bp - 6], 0x3c0        ; 81 46 FA C0 03
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        cmp     word ptr [bp - 0x12], 5         ; 83 7E EE 05
        jl      L_08C8                          ; 7C BF
L_0909:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A 20 09 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_092A                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A FA 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_092A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0930:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     byte ptr [bp - 2], 0x1a         ; C6 46 FE 1A
        jmp     L_094A                          ; EB 0E
L_093C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
L_094A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_093C                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_095A:
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
        jne     L_09CB                          ; 75 59
        mov     si, word ptr es:[bx + 0x30]     ; 26 8B 77 30
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     si, ax                          ; 03 F0
        cmp     si, 0x960                       ; 81 FE 60 09
        jl      L_09B0                          ; 7C 20
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_046B                          ; E8 D6 FA
        or      ax, ax                          ; 0B C0
        jge     L_099E                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_09CB                          ; EB 2D
L_099E:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     si, word ptr [bp + 6]           ; 8B 76 06
L_09B0:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x30], si     ; 26 89 77 30
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 6E F6
L_09CB:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
L_09D7:
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
L_09F6:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.MINPQ                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_0A1D                          ; 75 19
L_0A04:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], -1         ; 83 7E F4 FF
        je      L_0A19                          ; 74 03
        jmp     L_0A99                          ; E9 80 00
L_0A19:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A9C                          ; EB 7F
L_0A1D:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_0A04                          ; 7D CD
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.EXTRACTPQ               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_0A04                          ; 75 C0
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx]                ; 26 FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AA2                          ; E8 4D 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B50                          ; E8 E5 00
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
        call    L_095A                          ; E8 D2 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        jmp     L_09F6                          ; E9 5D FF
L_0A99:
        mov     ax, 1                           ; B8 01 00
L_0A9C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0AA2:
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     ax, word ptr es:[bx + 0x3e]     ; 26 2B 47 3E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0AC6                          ; 75 05
L_0AC1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B44                          ; EB 7E
L_0AC6:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0AD6                          ; 74 06
        cmp     word ptr [bp - 4], 9            ; 83 7E FC 09
        jl      L_0AC1                          ; 7C EB
L_0AD6:
        mov     byte ptr [0x2e4], 0             ; C6 06 E4 02 00
        jmp     L_0B0F                          ; EB 32
L_0ADD:
        cmp     word ptr [bp - 4], 0x55         ; 83 7E FC 55
        jl      L_0AE8                          ; 7C 05
        mov     ax, 0x55                        ; B8 55 00
        jmp     L_0AEB                          ; EB 03
L_0AE8:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0AEB:
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [0x2e7]            ; A0 E7 02
        cwde                                    ; 98
        imul    si                              ; F7 EE
        mov     byte ptr [0x2e4], al            ; A2 E4 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x2e2                       ; B8 E2 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2e6]            ; A0 E6 02
        cwde                                    ; 98
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 4F FE
        sub     word ptr [bp - 4], 0x55         ; 83 6E FC 55
L_0B0F:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_0ADD                          ; 7F C8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0AC1                          ; 74 9B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2fa]            ; A1 FA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2fc]            ; A0 FC 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 22 FE
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        jmp     L_0AC1                          ; E9 7D FF
L_0B44:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_0B50:
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
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0B6C                          ; 7C 07
        cmp     word ptr [bp + 8], 0x3c0        ; 81 7E 08 C0 03
        jle     L_0B71                          ; 7E 05
L_0B6C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0C29                          ; E9 B8 00
L_0B71:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr es:[bx + 0x3c], ax     ; 26 39 47 3C
        jle     L_0BA4                          ; 7E 27
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_0B6C                          ; 75 E8
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2fa]            ; A1 FA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2fc]            ; A0 FC 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 C4 FD
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        jmp     L_0BAE                          ; EB 0A
L_0BA4:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     di, word ptr es:[bx + 0x3c]     ; 26 2B 7F 3C
L_0BAE:
        or      di, di                          ; 0B FF
        je      L_0B6C                          ; 74 BA
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x38]     ; 26 8B 77 38
        jmp     L_0BD1                          ; EB 16
L_0BBB:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xf8                        ; B8 F8 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 8B FD
        sub     di, si                          ; 2B FE
L_0BD1:
        cmp     di, si                          ; 3B FE
        jge     L_0BBB                          ; 7D E6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0C1B                          ; 74 40
        or      di, di                          ; 0B FF
        je      L_0C1B                          ; 74 3C
        or      di, di                          ; 0B FF
        je      L_0C1B                          ; 74 38
        mov     word ptr [0x2e0], di            ; 89 3E E0 02
        mov     byte ptr [0x2df], 0x4c          ; C6 06 DF 02 4C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x2de                       ; B8 DE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 5A FD
        jmp     L_0C17                          ; EB 15
L_0C02:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xfa                        ; B8 FA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_095A                          ; E8 44 FD
        dec     di                              ; 4F
L_0C17:
        or      di, di                          ; 0B FF
        jne     L_0C02                          ; 75 E7
L_0C1B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, di                          ; 8B C7
L_0C29:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
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
        lea     ax, [bp + 0x22]                 ; 8D 46 22
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x20]                 ; 8D 46 20
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x1e]                 ; 8D 46 1E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10CE                          ; E8 78 04
        or      ax, ax                          ; 0B C0
        jne     L_0C5E                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0C95                          ; EB 37
L_0C5E:
        push    word ptr [bp + 0x24]            ; FF 76 24
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
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_0C95:
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10CE                          ; E8 0D 04
        or      ax, ax                          ; 0B C0
        jne     L_0CC9                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0CE8                          ; EB 1F
L_0CC9:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMPIXEL                 ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_0CE8:
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
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0D18                          ; 75 03
        jmp     L_0DC8                          ; E9 B0 00
L_0D18:
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0D24                          ; 74 05
L_0D1F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E15                          ; E9 F1 00
L_0D24:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D1F                          ; 74 E1
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A EC 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
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
        call    L_0039                          ; E8 DA F2
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        je      L_0D74                          ; 74 03
        jmp     L_0DFC                          ; E9 88 00
L_0D74:
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
        jmp     L_0DA5                          ; EB 12
L_0D93:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
L_0DA5:
        or      si, si                          ; 0B F6
        jne     L_0D93                          ; 75 EA
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_0DC8:
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
        push    word ptr [0x108]                ; FF 36 08 01
        push    word ptr [0x106]                ; FF 36 06 01
        call    far GDI.DMOUTPUT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0DFC:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0E12                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 0C 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A D7 05 00 00 [FIXUP]
L_0E12:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_0E15:
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
        sub     sp, 0x10                        ; 83 EC 10
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_0EAB                          ; 7E 77
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0E76                          ; 74 39
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0E76                          ; 74 32
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
L_0E72:
        cdq                                     ; 99
        jmp     L_0F76                          ; E9 00 01
L_0E76:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 AF F1
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 5D F1
        or      ax, ax                          ; 0B C0
        jg      L_0EAB                          ; 7F 04
L_0EA7:
        sub     ax, ax                          ; 2B C0
        jmp     L_0E72                          ; EB C7
L_0EAB:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        je      L_0F11                          ; 74 59
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_0EDD                          ; 7E 1F
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 0x2c], ax     ; 26 39 47 2C
        jg      L_0EA7                          ; 7F DD
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        add     ax, 0x28                        ; 05 28 00
        cmp     ax, word ptr [bp + 0x1c]        ; 3B 46 1C
        jle     L_0EA7                          ; 7E D1
        cmp     word ptr [bp + 0x1e], 0x3c0     ; 81 7E 1E C0 03
        jge     L_0EA7                          ; 7D CA
L_0EDD:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F76                          ; EB 65
L_0F11:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0F44                          ; 74 2A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x20], ax        ; 89 46 20
L_0F44:
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
        call    far GDI.DMSTRBLT                ; 9A FF FF 00 00 [FIXUP]
L_0F76:
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
        sub     sp, 4                           ; 83 EC 04
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_10CE                          ; E8 2E 01
        or      ax, ax                          ; 0B C0
        jne     L_0FA8                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0FC2                          ; EB 1A
L_0FA8:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSCANLR                ; 9A FF FF 00 00 [FIXUP]
L_0FC2:
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
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0FE9                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_0FEF                          ; EB 06
L_0FE9:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
L_0FEF:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMENUMOBJ               ; 9A FF FF 00 00 [FIXUP]
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
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_102C                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1032                          ; EB 06
L_102C:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
L_1032:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMCOLORINFO             ; 9A FF FF 00 00 [FIXUP]
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
        cmp     word ptr [bp + 0x12], -3        ; 83 7E 12 FD
        jne     L_1064                          ; 75 04
L_1060:
        sub     ax, ax                          ; 2B C0
        jmp     L_10C3                          ; EB 5F
L_1064:
        cmp     word ptr [bp + 0x12], 3         ; 83 7E 12 03
        jne     L_108F                          ; 75 25
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_1060                          ; 75 EC
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_10C3                          ; EB 34
L_108F:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_10A1                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_10A7                          ; EB 06
L_10A1:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
L_10A7:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
L_10C3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
L_10CE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1149                          ; 74 5C
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_10F8                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_114C                          ; EB 54
L_10F8:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x9c8                       ; 05 C8 09
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_1121                          ; 74 0A
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx], ax            ; 26 29 07
L_1121:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1136                          ; 74 0D
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     word ptr es:[bx], ax            ; 26 29 07
L_1136:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 2                           ; 05 02 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
L_1149:
        mov     ax, 1                           ; B8 01 00
L_114C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_117D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_117D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1179                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_1179:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_117D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      026h                            ; 26
        db      009h                            ; 09

EPSON_TEXT ENDS

        END
