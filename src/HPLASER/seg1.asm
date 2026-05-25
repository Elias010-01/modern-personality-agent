; AUTO-GENERATED from original HPLASER segment 1
; segment_size=10145 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

HPLASER_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: small
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
        mov     word ptr [si], ax               ; 89 04
L_0015:
        sub     word ptr [bx + 2], dx           ; 29 57 02
        jns     L_001D                          ; 79 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_001D:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, bx                          ; 2B C3
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
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0039 -- offset 0x0039 -- 215 instr
; Dispatcher: tabla de decisiones cmp+jcc (215 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (inter): GDI.STARTSPOOLPAGE, USER.SETRECT
;----------------------------------------------------------------------
L_0039:
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
        sub     sp, 0x28                        ; 83 EC 28
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_0070                          ; 76 03
        jmp     L_05B4                          ; E9 44 05
L_0070:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x5b8]        ; 2E FF A7 B8 05
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_0085                          ; 74 03
        jmp     L_0289                          ; E9 04 02
L_0085:
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 0x50]     ; 26 8B 47 50
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x52]     ; 26 8B 47 52
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mul     word ptr [bp - 0x1c]            ; F7 66 E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      ax, ax                          ; 0B C0
        je      L_00F0                          ; 74 0B
        cmp     ax, 1                           ; 3D 01 00
        jne     L_00ED                          ; 75 03
        jmp     L_02BD                          ; E9 D0 01
L_00ED:
        jmp     L_0352                          ; E9 62 02
L_00F0:
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x26]     ; 26 8B 47 26
        and     ax, 1                           ; 25 01 00
        or      word ptr [bp - 0x22], ax        ; 09 46 DE
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
        cmp     ax, 1                           ; 3D 01 00
        je      L_0121                          ; 74 03
        jmp     L_0289                          ; E9 68 01
L_0121:
        mov     word ptr es:[bx + 0x60], 0xffff ; 26 C7 47 60 FF FF
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 40 0A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x3c]     ; 26 8B 5F 3C
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0xce]        ; 8B 87 CE 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    es                              ; 06
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_0CA5                          ; E8 45 0B
        push    ax                              ; 50
        call    L_0B75                          ; E8 11 0A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_018E                          ; 75 20
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far USER.SETRECT                ; 9A 9F 01 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xe3                        ; B8 E3 00
        jmp     L_01AC                          ; EB 1E
L_018E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.SETRECT                ; 9A B4 03 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xeb                        ; B8 EB 00
L_01AC:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 C0 09
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        sub     ax, 0x19                        ; 2D 19 00
        push    ax                              ; 50
        call    L_0CA5                          ; E8 CB 0A
        push    ax                              ; 50
        call    L_0B75                          ; E8 97 09
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x6c                        ; B8 6C 00
        push    ax                              ; 50
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        call    L_0CA5                          ; E8 A6 0A
        push    ax                              ; 50
        call    L_0B75                          ; E8 72 09
L_0203:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     ax, ax                          ; 2B C0
L_0208:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        inc     ax                              ; 40
        cmp     ax, si                          ; 3B C6
        jne     L_027F                          ; 75 65
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x48e]            ; A1 8E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x48d]            ; A0 8D 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0B75                          ; E8 42 09
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xf3                        ; B8 F3 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 30 09
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_05E3                          ; E8 95 03
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        jne     L_0268                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
L_0268:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A 90 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
L_027F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_02B3                          ; 74 2A
L_0289:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        je      L_02B3                          ; 74 15
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
L_02B3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        jmp     L_05D7                          ; E9 1A 03
L_02BD:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_02CE                          ; 74 07
        mov     si, word ptr [bp - 0x24]        ; 8B 76 DC
        inc     si                              ; 46
        jmp     L_0203                          ; E9 35 FF
L_02CE:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x74                        ; B8 74 00
        push    ax                              ; 50
        mov     ax, 0x52                        ; B8 52 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x38]         ; 26 FF 77 38
        call    L_0CA5                          ; E8 B6 09
        push    ax                              ; 50
        call    L_0B75                          ; E8 82 08
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
L_0307:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sub     dx, dx                          ; 2B D2
        cmp     word ptr es:[bx + 0x12], dx     ; 26 39 57 12
        jb      L_032C                          ; 72 17
        ja      L_031D                          ; 77 06
        cmp     word ptr es:[bx + 0x10], ax     ; 26 39 47 10
        jbe     L_032C                          ; 76 0F
L_031D:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        jmp     L_0307                          ; EB DB
L_032C:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0346                          ; 75 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mul     word ptr [bp - 4]               ; F7 66 FC
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    L_0C34                          ; E8 F0 08
        jmp     L_0352                          ; EB 0C
L_0346:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0BF3                          ; E8 A1 08
L_0352:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0385                          ; 75 29
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, si                          ; 2B C6
        mul     word ptr [bp - 0x1c]            ; F7 66 E4
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        imul    word ptr [bp - 0x16]            ; F7 6E EA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        jmp     L_03B3                          ; EB 2E
L_0385:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        lea     cx, [si - 1]                    ; 8D 4C FF
        mul     cx                              ; F7 E1
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        imul    word ptr [bp - 0x16]            ; F7 6E EA
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
L_03B3:
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        jne     L_03C5                          ; 75 03
        jmp     L_044F                          ; E9 8A 00
L_03C5:
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_03E9                          ; 75 1D
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0403                          ; 74 30
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        call    L_0C34                          ; E8 4D 08
        jmp     L_0403                          ; EB 1A
L_03E9:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_0403                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mul     word ptr [bp - 0x16]            ; F7 66 EA
        push    ax                              ; 50
        call    L_0BF3                          ; E8 F0 07
L_0403:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_0A06                          ; E8 FA 05
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
L_0420:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sub     dx, dx                          ; 2B D2
        cmp     word ptr es:[bx + 0x12], dx     ; 26 39 57 12
        jb      L_0445                          ; 72 17
        ja      L_0436                          ; 77 06
        cmp     word ptr es:[bx + 0x10], ax     ; 26 39 47 10
        jbe     L_0445                          ; 76 0F
L_0436:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0x22]            ; FF 46 DE
        jmp     L_0420                          ; EB DB
L_0445:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xf3   ; 26 80 67 26 F3
        jmp     L_0457                          ; EB 08
L_044F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
L_0457:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        jmp     L_0208                          ; E9 A8 FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x52]     ; 26 8B 47 52
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_04E5                          ; EB 72
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_0481                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0483                          ; EB 02
L_0481:
        sub     ax, ax                          ; 2B C0
L_0483:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_04E5                          ; EB 59
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_04BF                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x66                        ; 05 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_04BF                          ; 7E 06
        mov     word ptr es:[bx + 0x30], 1      ; 26 C7 47 30 01 00
L_04BF:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_05D7                          ; E9 0E 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        jne     L_04DC                          ; 75 09
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
L_04DC:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
L_04E5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_05D7                          ; E9 EC 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0514                          ; 75 1F
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx]               ; 8B 07
L_050B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_04E5                          ; EB D1
L_0514:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx]               ; 8B 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        jmp     L_050B                          ; EB DC
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0549                          ; 75 10
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], 0x32      ; 26 C7 47 02 32 00
        mov     word ptr es:[bx], 0x4b          ; 26 C7 07 4B 00
        jmp     L_04E5                          ; EB 9C
L_0549:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0x32          ; 26 C7 07 32 00
        mov     word ptr es:[bx + 2], 0x64      ; 26 C7 47 02 64 00
        jmp     L_04E5                          ; EB 8C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_04E5                          ; E9 7C FF
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A A6 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
        jmp     L_04E5                          ; E9 61 FF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     ax, 1                           ; 3D 01 00
        jb      L_05B4                          ; 72 22
        cmp     ax, 3                           ; 3D 03 00
        ja      L_059A                          ; 77 03
        jmp     L_04E5                          ; E9 4B FF
L_059A:
        cmp     ax, 7                           ; 3D 07 00
        jb      L_05B4                          ; 72 15
        cmp     ax, 8                           ; 3D 08 00
        ja      L_05A7                          ; 77 03
        jmp     L_04E5                          ; E9 3E FF
L_05A7:
        cmp     ax, 0xa                         ; 3D 0A 00
        jb      L_05B4                          ; 72 08
        cmp     ax, 0xe                         ; 3D 0E 00
        ja      L_05B4                          ; 77 03
        jmp     L_04E5                          ; E9 31 FF
L_05B4:
        sub     ax, ax                          ; 2B C0
        jmp     L_05D7                          ; EB 1F
        mov     bl, 2                           ; B3 02
        imul    ax, word ptr [di], 0x78         ; 69 05 78 00
        mov     ah, 5                           ; B4 05
        mov     ah, 5                           ; B4 05
        mov     ah, 5                           ; B4 05
        jae     L_05CA                          ; 73 04
        test    byte ptr [di], al               ; 84 05
        pop     cx                              ; 59
        add     ax, 0x48c                       ; 05 8C 04
        leave                                   ; C9
        add     al, 0xeb                        ; 04 EB
        add     al, 0x2f                        ; 04 2F
        add     ax, 0x460                       ; 05 60 04
        jmp     L_04E5                          ; E9 0E FF
L_05D7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_05E3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x32], 0      ; 26 83 7F 32 00
        je      L_05FA                          ; 74 07
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_05FE                          ; 74 04
L_05FA:
        sub     ax, ax                          ; 2B C0
        jmp     L_0633                          ; EB 35
L_05FE:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x86                        ; 05 86 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x32]         ; 26 FF 77 32
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x32]     ; 26 3B 47 32
        je      L_0627                          ; 74 04
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
L_0627:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_0633:
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
        mov     word ptr [bp - 0xa], 0xa        ; C7 46 F6 0A 00
        mov     word ptr [bp - 8], 0x708        ; C7 46 F8 08 07
        mov     word ptr [bp - 6], 0x708        ; C7 46 FA 08 07
        mov     word ptr [bp - 4], 0x6b0        ; C7 46 FC B0 06
        mov     word ptr [bp - 0xc], 0x708      ; C7 46 F4 08 07
        cmp     word ptr [0x786], 0             ; 83 3E 86 07 00
        jne     L_067D                          ; 75 16
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     ax, 0x100                       ; B8 00 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A 0C 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    L_136A                          ; E8 ED 0C
L_067D:
        cmp     word ptr [0x7a0], 2             ; 83 3E A0 07 02
        jne     L_0689                          ; 75 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_068C                          ; EB 03
L_0689:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_068C:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x78a]            ; A1 8A 07
        sub     ax, 0x14                        ; 2D 14 00
        cmp     ax, 3                           ; 3D 03 00
        jle     L_06A6                          ; 7E 0C
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x78a]                ; F7 2E 8A 07
        sub     ax, 0x1ce                       ; 2D CE 01
        jmp     L_06B0                          ; EB 0A
L_06A6:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x78a]                ; F7 2E 8A 07
        sub     ax, 0x1b8                       ; 2D B8 01
L_06B0:
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        jne     L_06C2                          ; 75 03
        jmp     L_07FE                          ; E9 3C 01
L_06C2:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 0xa], 0xb        ; 83 7E F6 0B
        jne     L_06D3                          ; 75 05
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_06D6                          ; EB 03
L_06D3:
        mov     ax, 0x78                        ; B8 78 00
L_06D6:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        call    L_0039                          ; E8 58 F9
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_06ED                          ; 74 05
        mov     ax, 0x66                        ; B8 66 00
        jmp     L_06FD                          ; EB 10
L_06ED:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mul     word ptr [bx + 0xa]             ; F7 67 0A
        add     ax, 0x5d16                      ; 05 16 5D
L_06FD:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        cmp     word ptr [0x786], 0x12c         ; 81 3E 86 07 2C 01
        je      L_0711                          ; 74 05
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
L_0711:
        cmp     word ptr [0x780], 0xb           ; 83 3E 80 07 0B
        jne     L_0789                          ; 75 71
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xe]             ; FF 77 0E
        call    L_26E8                          ; E8 B2 1F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 0C 1F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 07 1F
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    L_26E8                          ; E8 83 1F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 DD 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 D8 1E
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_07F8                          ; EB 6F
L_0789:
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    L_26E8                          ; E8 41 1F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 9B 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 96 1E
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12c                       ; B8 2C 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 0xe]             ; FF 77 0E
        call    L_26E8                          ; E8 12 1F
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 6C 1E
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2647                          ; E8 67 1E
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
L_07F8:
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_0928                          ; E9 2A 01
L_07FE:
        cmp     word ptr [0x780], 0xb           ; 83 3E 80 07 0B
        jne     L_0838                          ; 75 33
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx], 0x8889        ; 26 C7 07 89 88
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     bx, si                          ; 8B DE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        shr     ax, cl                          ; D3 E8
        jmp     L_0862                          ; EB 2A
L_0838:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     word ptr es:[bx], 0x8888        ; 26 C7 07 88 88
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
L_0862:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mul     word ptr [bx + 0xa]             ; F7 67 0A
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        mov     byte ptr es:[bx + 0xa], 1       ; 26 C6 47 0A 01
        mov     byte ptr es:[bx + 0xb], 1       ; 26 C6 47 0B 01
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
        mov     word ptr es:[bx + 0x28], ax     ; 26 89 47 28
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        mov     word ptr es:[bx + 0x30], ax     ; 26 89 47 30
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_08D6                          ; 75 14
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x66                        ; 05 66 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_08D6:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
        mov     ax, word ptr [0x782]            ; A1 82 07
        sub     ax, 0xf                         ; 2D 0F 00
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        mov     ax, word ptr [0x784]            ; A1 84 07
        mov     word ptr es:[bx + 0x36], ax     ; 26 89 47 36
        mov     ax, word ptr [0x788]            ; A1 88 07
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        mov     ax, word ptr [0x786]            ; A1 86 07
        mov     word ptr es:[bx + 0x38], ax     ; 26 89 47 38
        mov     ax, word ptr [0x78a]            ; A1 8A 07
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, 0x108                       ; B8 08 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x5e], ax     ; 26 89 47 5E
        mov     ax, word ptr [0x79e]            ; A1 9E 07
        mov     word ptr es:[bx + 0x50], ax     ; 26 89 47 50
        mov     ax, word ptr [0x7a0]            ; A1 A0 07
        mov     word ptr es:[bx + 0x52], ax     ; 26 89 47 52
        mov     ax, 1                           ; B8 01 00
L_0928:
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
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x50                        ; 83 EC 50
        mov     ax, 0x11a                       ; B8 1A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x111                       ; B8 11 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x110                       ; B8 10 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0983                          ; 74 10
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1D97                          ; E8 1C 14
        or      ax, ax                          ; 0B C0
        je      L_0983                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0986                          ; EB 03
L_0983:
        mov     ax, 1                           ; B8 01 00
L_0986:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
L_098A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_099F:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_09B1                          ; 74 0C
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_09E9                          ; 74 38
L_09B1:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_09EE                          ; 74 37
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x62                        ; B8 62 00
        push    ax                              ; 50
        mov     ax, 0x57                        ; B8 57 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0CA5                          ; E8 D1 02
        push    ax                              ; 50
        call    L_0B75                          ; E8 9D 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        jmp     L_09FD                          ; EB 14
L_09E9:
        dec     word ptr [bp + 4]               ; FF 4E 04
        jmp     L_099F                          ; EB B1
L_09EE:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x120                       ; B8 20 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
L_09FD:
        call    L_0B75                          ; E8 75 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0A06:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        je      L_0A29                          ; 74 03
        jmp     L_0B05                          ; E9 DC 00
L_0A29:
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [bp - 8]           ; 8B 7E F8
L_0A3C:
        or      di, di                          ; 0B FF
        jne     L_0A43                          ; 75 03
        jmp     L_0B4A                          ; E9 07 01
L_0A43:
        dec     di                              ; 4F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        lea     ax, [bx + di + 0x8b6]           ; 8D 81 B6 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], es           ; 8C 46 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0AC3                          ; EB 6B
L_0A58:
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_0A5D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        add     bx, bp                          ; 03 DD
        mov     byte ptr ss:[bx - 0x12], al     ; 36 88 47 EE
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 6], ax           ; 01 46 FA
        cmp     word ptr [bp - 0x24], 8         ; 83 7E DC 08
        jl      L_0A5D                          ; 7C E2
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x53b6                      ; 05 B6 53
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     word ptr [bp - 0x24], 8         ; C7 46 DC 08 00
L_0AA5:
        dec     word ptr [bp - 0x24]            ; FF 4E DC
        mov     bx, word ptr [bp - 0x24]        ; 8B 5E DC
        add     bx, bp                          ; 03 DD
        mov     al, byte ptr ss:[bx - 0x1a]     ; 36 8A 47 E6
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     byte ptr es:[bx], al            ; 26 88 07
        add     word ptr [bp - 0x1e], si        ; 01 76 E2
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        jne     L_0AA5                          ; 75 E5
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0AC3:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        jl      L_0A58                          ; 7C 90
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x53b6                      ; 05 B6 53
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0B52                          ; E8 73 00
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
L_0AE4:
        cmp     word ptr [bp - 0x24], 8         ; 83 7E DC 08
        jl      L_0AED                          ; 7C 03
        jmp     L_0A3C                          ; E9 4F FF
L_0AED:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    si                              ; 56
        call    L_098A                          ; E8 8D FE
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        add     word ptr [bp - 0x1e], si        ; 01 76 E2
        jmp     L_0AE4                          ; EB DF
L_0B05:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0B42                          ; EB 27
L_0B1B:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0B52                          ; E8 2B 00
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_098A                          ; E8 51 FE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 6], ax           ; 01 46 FA
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0B42:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0B1B                          ; 7C D1
L_0B4A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0B52:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        jmp     L_0B65                          ; EB 0E
L_0B57:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
L_0B65:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0B57                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0B75:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x30], 1      ; 26 83 7F 30 01
        je      L_0B8B                          ; 74 05
L_0B86:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0BEC                          ; EB 61
L_0B8B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x32]     ; 26 8B 77 32
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x86                        ; 05 86 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     si, ax                          ; 03 F0
        cmp     si, 0x830                       ; 81 FE 30 08
        jl      L_0BC7                          ; 7C 1B
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_05E3                          ; E8 32 FA
        or      ax, ax                          ; 0B C0
        jl      L_0B86                          ; 7C D1
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x86                        ; 05 86 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     si, word ptr [bp + 4]           ; 8B 76 04
L_0BC7:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x32], si     ; 26 89 77 32
        jmp     L_0BE2                          ; EB 12
L_0BD0:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0BE2:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0BD0                          ; 75 E4
L_0BEC:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0BF3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x64], ax     ; 26 39 47 64
        je      L_0C2E                          ; 74 2C
        mov     word ptr es:[bx + 0x64], ax     ; 26 89 47 64
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        mov     ax, 0x56                        ; B8 56 00
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [bp + 4]               ; F7 66 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 5                           ; B9 05 00
        div     cx                              ; F7 F1
        push    ax                              ; 50
        call    L_0CA5                          ; E8 7B 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 47 FF
L_0C2E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0C34:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0x62], ax     ; 26 39 47 62
        je      L_0C9F                          ; 74 59
        mov     word ptr es:[bx + 0x62], ax     ; 26 89 47 62
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [bp + 4]               ; F7 66 04
        mov     word ptr [bp + 4], ax           ; 89 46 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 5                           ; B9 05 00
        div     cx                              ; F7 F1
        mov     word ptr es:[bx + 0x5c], dx     ; 26 89 57 5C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_0C7E                          ; 75 0F
        cmp     word ptr es:[bx + 0x5c], 0      ; 26 83 7F 5C 00
        je      L_0C7E                          ; 74 08
        inc     word ptr [bp - 2]               ; FF 46 FE
        sub     word ptr es:[bx + 0x5c], 5      ; 26 83 6F 5C 05
L_0C7E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        mov     ax, 0x61                        ; B8 61 00
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_0CA5                          ; E8 0A 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 D6 FE
L_0C9F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0CA5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        mov     byte ptr [0x127], al            ; A2 27 01
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [0x128], al            ; A2 28 01
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x129                       ; B8 29 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1DD7                          ; E8 18 11
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx + 0x129], al       ; 88 87 29 01
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0CD6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_0CF9                          ; 75 09
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0CF9:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jle     L_0D04                          ; 7E 05
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        jmp     L_0D09                          ; EB 05
L_0D04:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
L_0D09:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_2537                          ; E8 1B 18
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_0D34                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_0D34                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0F4B                          ; E9 17 02
L_0D34:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        cmp     word ptr [bp - 0x1a], dx        ; 39 56 E6
        jne     L_0D44                          ; 75 05
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        je      L_0D49                          ; 74 05
L_0D44:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
L_0D49:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jle     L_0D62                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D64                          ; EB 02
L_0D62:
        sub     ax, ax                          ; 2B C0
L_0D64:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0DAC                          ; 74 41
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     si, word ptr es:[bx + 0x33]     ; 26 8B 77 33
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        cmp     word ptr es:[bx + 0x60], si     ; 26 39 77 60
        je      L_0D9B                          ; 74 20
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [di + 0x48e]       ; 8B 85 8E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [di + 0x48d]       ; 8A 85 8D 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0B75                          ; E8 E1 FD
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        mov     word ptr es:[bx + 0x60], si     ; 26 89 77 60
L_0D9B:
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0F53                          ; E8 A9 01
        jmp     L_0DB4                          ; EB 08
L_0DAC:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
L_0DB4:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0E03                          ; 74 45
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_0DE0:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0E10                          ; 7D 28
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp - 0x1c]             ; C4 76 E4
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 8], ax           ; 01 46 F8
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0DE0                          ; EB DD
L_0E03:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        imul    word ptr [bp + 0xc]             ; F7 6E 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0E10:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0E2B                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_0E3E                          ; 75 13
L_0E2B:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0E3E                          ; 75 09
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0E3E                          ; 75 03
        jmp     L_0EF7                          ; E9 B9 00
L_0E3E:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0EDC                          ; E9 8A 00
L_0E52:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0E8C                          ; 74 2A
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     al, byte ptr [bp - 0x1e]        ; 8A 46 E2
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_0E8C                          ; 75 1F
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_0E8C                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_0E8C:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 8], ax           ; 01 46 F8
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0ECD                          ; 74 35
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        les     bx, ptr [bp - 0x1c]             ; C4 5E E4
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0EC7                          ; 74 17
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0x35]         ; 26 FF 77 35
        call    L_1E97                          ; E8 D2 0F
        jmp     L_0EC9                          ; EB 02
L_0EC7:
        sub     ax, ax                          ; 2B C0
L_0EC9:
        push    ax                              ; 50
        call    L_1038                          ; E8 6B 01
L_0ECD:
        dec     word ptr [bp + 0xc]             ; FF 4E 0C
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        inc     word ptr [bp + 8]               ; FF 46 08
L_0EDC:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0EE5                          ; 74 03
        jmp     L_0E52                          ; E9 6D FF
L_0EE5:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0F0F                          ; 75 24
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_0F0F                          ; EB 18
L_0EF7:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F0F                          ; 74 12
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0B75                          ; E8 66 FC
L_0F0F:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0F1D                          ; 74 08
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0F1D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F3F                          ; 74 1C
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0F78                          ; E8 46 00
        les     bx, ptr [bp + 0x1a]             ; C4 5E 1A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr es:[bx + 0x62], ax     ; 26 01 47 62
        cdq                                     ; 99
        jmp     L_0F4B                          ; EB 0C
L_0F3F:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0F4B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x1a                            ; C2 1A 00
L_0F53:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0F72                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x133                       ; B8 33 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 03 FC
L_0F72:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0F78:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0F97                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 DE FB
L_0F97:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0F9D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_0FB1                          ; 7D 0B
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     word ptr [bp + 0xa], 0          ; C7 46 0A 00 00
L_0FB1:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_0FC2                          ; 7D 0B
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
L_0FC2:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 6]           ; 03 46 06
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     ax, word ptr es:[bx + 4]        ; 26 3B 47 04
        jbe     L_0FDB                          ; 76 0A
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_0FDB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 4]           ; 03 46 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     ax, word ptr es:[bx + 6]        ; 26 3B 47 06
        jbe     L_0FF4                          ; 76 0A
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [bp + 8]           ; 2B 46 08
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_0FF4:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_1030                          ; 7E 36
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_1030                          ; 7E 30
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x62                        ; B8 62 00
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
L_1030:
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_1038:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 24 FB
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        je      L_1073                          ; 74 1C
        mov     byte ptr [bp - 4], 8            ; C6 46 FC 08
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     byte ptr [bp - 3], al           ; 88 46 FD
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0B75                          ; E8 02 FB
L_1073:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_10ED                          ; 74 74
        mov     byte ptr [0x127], 0x26          ; C6 06 27 01 26
        mov     byte ptr [0x128], 0x61          ; C6 06 28 01 61
        mov     byte ptr [0x129], 0x2b          ; C6 06 29 01 2B
        mov     ax, 0xc                         ; B8 0C 00
        mul     word ptr [bp + 6]               ; F7 66 06
        mov     word ptr [bp + 6], ax           ; 89 46 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x5c]     ; 26 8B 47 5C
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        mov     cx, 5                           ; B9 05 00
        div     cx                              ; F7 F1
        mov     word ptr es:[bx + 0x5c], dx     ; 26 89 57 5C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_10C9                          ; 75 0F
        cmp     word ptr es:[bx + 0x5c], 0      ; 26 83 7F 5C 00
        je      L_10C9                          ; 74 08
        inc     word ptr [bp + 6]               ; FF 46 06
        sub     word ptr es:[bx + 0x5c], 5      ; 26 83 6F 5C 05
L_10C9:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x12a                       ; B8 2A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1DD7                          ; E8 03 0D
        mov     si, ax                          ; 8B F0
        mov     byte ptr [si + 0x12a], 0x48     ; C6 84 2A 01 48
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x126                       ; B8 26 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 5]                    ; 8D 44 05
        push    ax                              ; 50
        call    L_0B75                          ; E8 88 FA
L_10ED:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_10F4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x48                        ; 83 EC 48
        mov     ax, word ptr [0x786]            ; A1 86 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1133                          ; EB 1E
L_1115:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_1133:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1115                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_114C                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_114C:
        mov     ax, 0x149                       ; B8 49 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x13e                       ; B8 3E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A C4 11 00 00 [FIXUP]
        mov     ax, word ptr [0x78a]            ; A1 8A 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_119A                          ; EB 1E
L_117C:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_119A:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_117C                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_11B3                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_11B3:
        mov     ax, 0x15b                       ; B8 5B 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x155                       ; B8 55 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 2B 12 00 00 [FIXUP]
        mov     ax, word ptr [0x782]            ; A1 82 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1201                          ; EB 1E
L_11E3:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_1201:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_11E3                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_121A                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_121A:
        mov     ax, 0x171                       ; B8 71 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x167                       ; B8 67 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 92 12 00 00 [FIXUP]
        mov     ax, word ptr [0x784]            ; A1 84 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1268                          ; EB 1E
L_124A:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_1268:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_124A                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1281                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_1281:
        mov     ax, 0x184                       ; B8 84 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x17d                       ; B8 7D 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A F9 12 00 00 [FIXUP]
        mov     ax, word ptr [0x780]            ; A1 80 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_12CF                          ; EB 1E
L_12B1:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_12CF:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_12B1                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_12E8                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_12E8:
        mov     ax, 0x197                       ; B8 97 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x190                       ; B8 90 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A 60 13 00 00 [FIXUP]
        mov     ax, word ptr [0x788]            ; A1 88 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        lea     ax, [bp - 6]                    ; 8D 46 FA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_1336                          ; EB 1E
L_1318:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     byte ptr es:[bx], dl            ; 26 88 17
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
L_1336:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jne     L_1318                          ; 75 DC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_134F                          ; 75 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0x30          ; 26 C6 07 30
L_134F:
        mov     ax, 0x1a8                       ; B8 A8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a3                       ; B8 A3 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
L_136A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x1bf                       ; B8 BF 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1b4                       ; B8 B4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 95 13 00 00 [FIXUP]
        mov     word ptr [0x786], ax            ; A3 86 07
        mov     ax, 0x1d1                       ; B8 D1 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1cb                       ; B8 CB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A AB 13 00 00 [FIXUP]
        mov     word ptr [0x78a], ax            ; A3 8A 07
        mov     ax, 0x1e7                       ; B8 E7 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1dd                       ; B8 DD 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A C1 13 00 00 [FIXUP]
        mov     word ptr [0x782], ax            ; A3 82 07
        mov     ax, 0x1fa                       ; B8 FA 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1f3                       ; B8 F3 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A D7 13 00 00 [FIXUP]
        mov     word ptr [0x784], ax            ; A3 84 07
        mov     ax, 0x20d                       ; B8 0D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x206                       ; B8 06 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A ED 13 00 00 [FIXUP]
        mov     word ptr [0x780], ax            ; A3 80 07
        mov     ax, 0x21e                       ; B8 1E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x219                       ; B8 19 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x788], ax            ; A3 88 07
        cmp     word ptr [0x786], 0x96          ; 81 3E 86 07 96 00
        jne     L_140A                          ; 75 0E
L_13FC:
        mov     word ptr [0x79e], 2             ; C7 06 9E 07 02 00
        mov     word ptr [0x7a0], 1             ; C7 06 A0 07 01 00
        jmp     L_141E                          ; EB 14
L_140A:
        cmp     word ptr [0x786], 0x12c         ; 81 3E 86 07 2C 01
        je      L_13FC                          ; 74 EA
        mov     word ptr [0x79e], 4             ; C7 06 9E 07 04 00
        mov     word ptr [0x7a0], 2             ; C7 06 A0 07 02 00
L_141E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x232], 0             ; 83 3E 32 02 00
        je      L_143D                          ; 74 05
L_1438:
        sub     ax, ax                          ; 2B C0
        jmp     L_1537                          ; E9 FA 00
L_143D:
        mov     word ptr [0x232], 1             ; C7 06 32 02 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x760                       ; B8 60 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1460                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1462                          ; EB 02
L_1460:
        sub     ax, ax                          ; 2B C0
L_1462:
        or      ax, ax                          ; 0B C0
        jne     L_147A                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x760                       ; B8 60 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_14D8                          ; 74 5E
L_147A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_136A                          ; E8 EA FE
        mov     ax, 0x760                       ; B8 60 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A D2 08 00 00 [FIXUP]
        cmp     word ptr [0x786], 0x96          ; 81 3E 86 07 96 00
        jne     L_14A6                          ; 75 0E
        mov     word ptr [0x79e], 2             ; C7 06 9E 07 02 00
        mov     word ptr [0x7a0], 1             ; C7 06 A0 07 01 00
        jmp     L_14C8                          ; EB 22
L_14A6:
        cmp     word ptr [0x786], 0x12c         ; 81 3E 86 07 2C 01
        jne     L_14BC                          ; 75 0E
        mov     word ptr [0x79e], 1             ; C7 06 9E 07 01 00
        mov     word ptr [0x7a0], 0             ; C7 06 A0 07 00 00
        jmp     L_14C8                          ; EB 0C
L_14BC:
        mov     word ptr [0x79e], 4             ; C7 06 9E 07 04 00
        mov     word ptr [0x7a0], 2             ; C7 06 A0 07 02 00
L_14C8:
        mov     ax, 0x760                       ; B8 60 07
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A 8C 14 00 00 [FIXUP]
L_14D8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x22a                       ; B8 2A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_14FE                          ; 75 09
        mov     word ptr [0x232], 0             ; C7 06 32 02 00 00
        jmp     L_1438                          ; E9 3A FF
L_14FE:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x760                       ; B8 60 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4e                        ; B8 4E 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_10F4                          ; E8 DC FB
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x232], 0             ; C7 06 32 02 00 00
        mov     ax, 1                           ; B8 01 00
L_1537:
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
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_1567                          ; 74 10
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_155F                          ; 75 03
        jmp     L_1636                          ; E9 D7 00
L_155F:
        cmp     ax, 0x115                       ; 3D 15 01
        je      L_15DF                          ; 74 7B
        jmp     L_1817                          ; E9 B0 02
L_1567:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 83 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 93 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x78a]                ; FF 36 8A 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A A3 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x788]                ; FF 36 88 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A B3 15 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x786]                ; FF 36 86 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [0x784]                ; FF 36 84 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A 1D 16 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x78a]                ; FF 36 8A 07
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1817                          ; E9 38 02
L_15DF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A AB 17 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_1624                          ; 74 27
        cmp     ax, 1                           ; 3D 01 00
        je      L_1605                          ; 74 03
        jmp     L_1817                          ; E9 12 02
L_1605:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp - 4], 1            ; 83 7E FC 01
        je      L_1615                          ; 74 03
        dec     word ptr [bp - 4]               ; FF 4E FC
L_1615:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1817                          ; E9 F3 01
L_1624:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        cmp     word ptr [bp - 4], 0x63         ; 83 7E FC 63
        je      L_1615                          ; 74 E4
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_1615                          ; EB DF
L_1636:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x18                        ; 3D 18 00
        je      L_166A                          ; 74 2C
        jbe     L_1643                          ; 76 03
        jmp     L_17F0                          ; E9 AD 01
L_1643:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x16                        ; 3D 16 00
        jbe     L_164E                          ; 76 03
        jmp     L_1817                          ; E9 C9 01
L_164E:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x17c2]       ; 2E FF A7 C2 17
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x780], ax            ; A3 80 07
        jmp     L_1746                          ; E9 DC 00
L_166A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x78a], ax            ; A3 8A 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A A5 16 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x78a], ax            ; A3 8A 07
        jmp     L_1746                          ; E9 B4 00
L_1692:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A B9 16 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A D0 16 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FA 16 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        mov     ax, 0x8f                        ; B8 8F 00
L_16DE:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        jmp     L_1746                          ; EB 5F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 11 17 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 28 17 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4f                        ; B8 4F 00
        push    ax                              ; 50
        mov     ax, 0x8f                        ; B8 8F 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x782], ax            ; A3 82 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 48 17 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        jmp     L_16DE                          ; EB A9
L_1735:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        mov     ax, 0x1d                        ; B8 1D 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x788], ax            ; A3 88 07
L_1746:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 5F 17 00 00 [FIXUP]
        jmp     L_1817                          ; E9 C8 00
L_174F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4b                        ; B8 4B 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x786], ax            ; A3 86 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A 73 17 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x96                        ; B8 96 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x786], ax            ; A3 86 07
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x786], 0x4b          ; 83 3E 86 07 4B
        jne     L_178D                          ; 75 0F
        mov     word ptr [0x79e], 4             ; C7 06 9E 07 04 00
        mov     word ptr [0x7a0], 2             ; C7 06 A0 07 02 00
        jmp     L_1817                          ; E9 8A 00
L_178D:
        mov     word ptr [0x79e], 2             ; C7 06 9E 07 02 00
        mov     word ptr [0x7a0], 1             ; C7 06 A0 07 01 00
        jmp     L_1817                          ; EB 7C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDLGITEMINT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x784], ax            ; A3 84 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_183D                          ; EB 7B
        wait                                    ; 9B
        pop     ss                              ; 17
        mov     dl, 0x17                        ; B2 17
        pop     ss                              ; 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bp + 0x16], dl        ; 18 56 16
        push    si                              ; 56
        push    ss                              ; 16
        pop     ss                              ; 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bx], dl               ; 18 17
        sbb     byte ptr [bp + si - 0x6dea], dl ; 18 92 16 92
        push    ss                              ; 16
        pop     ss                              ; 17
        sbb     byte ptr [bp + si + 0x6a16], dl ; 18 92 16 6A
        push    ss                              ; 16
        push    0x16                            ; 6A 16
        push    0x16                            ; 6A 16
        out     0x16, ax                        ; E7 16
L_17F0:
        cmp     ax, 0x2f                        ; 3D 2F 00
        jne     L_17F8                          ; 75 03
        jmp     L_1692                          ; E9 9A FE
L_17F8:
        ja      L_181B                          ; 77 21
        cmp     ax, 0x1a                        ; 3D 1A 00
        jb      L_1817                          ; 72 18
        cmp     ax, 0x1b                        ; 3D 1B 00
        ja      L_1807                          ; 77 03
        jmp     L_1735                          ; E9 2E FF
L_1807:
        cmp     ax, 0x1d                        ; 3D 1D 00
        jne     L_180F                          ; 75 03
        jmp     L_1735                          ; E9 26 FF
L_180F:
        cmp     ax, 0x1f                        ; 3D 1F 00
        jne     L_1817                          ; 75 03
        jmp     L_1692                          ; E9 7B FE
L_1817:
        sub     ax, ax                          ; 2B C0
        jmp     L_183D                          ; EB 22
L_181B:
        cmp     ax, 0x4b                        ; 3D 4B 00
        jne     L_1823                          ; 75 03
        jmp     L_174F                          ; E9 2C FF
L_1823:
        cmp     ax, 0x4f                        ; 3D 4F 00
        jne     L_182B                          ; 75 03
        jmp     L_1692                          ; E9 67 FE
L_182B:
        cmp     ax, 0x8f                        ; 3D 8F 00
        jne     L_1833                          ; 75 03
        jmp     L_1692                          ; E9 5F FE
L_1833:
        cmp     ax, 0x96                        ; 3D 96 00
        jne     L_183B                          ; 75 03
        jmp     L_174F                          ; E9 14 FF
L_183B:
        jmp     L_1817                          ; EB DA
L_183D:
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
        lea     ax, [bp + 0x22]                 ; 8D 46 22
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x20]                 ; 8D 46 20
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x1e]                 ; 8D 46 1E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1D04                          ; E8 A0 04
        or      ax, ax                          ; 0B C0
        jne     L_186C                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_18A1                          ; EB 35
L_186C:
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
        call    far GDI.DMBITBLT                ; 9A 2C 10 00 00 [FIXUP]
L_18A1:
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
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_1D04                          ; E8 3C 04
        or      ax, ax                          ; 0B C0
        jne     L_18D0                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_18ED                          ; EB 1D
L_18D0:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMPIXEL                 ; 9A FF FF 00 00 [FIXUP]
L_18ED:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1917                          ; 75 03
        jmp     L_19DA                          ; E9 C3 00
L_1917:
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        jne     L_1923                          ; 75 05
L_191E:
        sub     ax, ax                          ; 2B C0
        jmp     L_1A27                          ; E9 04 01
L_1923:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        or      byte ptr es:[bx + 0x26], 0x40   ; 26 80 4F 26 40
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_191E                          ; 75 EC
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
        je      L_191E                          ; 74 D2
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
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
        call    L_0039                          ; E8 CE E6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        jne     L_19B2                          ; 75 35
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
L_199A:
        or      si, si                          ; 0B F6
        je      L_19BB                          ; 74 1D
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
        jmp     L_199A                          ; EB E8
L_19B2:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A A7 1A 00 00 [FIXUP]
L_19BB:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_19DA:
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
        push    word ptr [0x23c]                ; FF 36 3C 02
        push    word ptr [0x23a]                ; FF 36 3A 02
        call    far GDI.DMOUTPUT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1A24                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A 19 0F 00 00 [FIXUP]
L_1A24:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_1A27:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1A8C                          ; 75 3E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_1A8C                          ; 75 31
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSTRBLT                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1C2A                          ; E9 9E 01
L_1A8C:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1AA2                          ; 74 0D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_1AAE                          ; 75 0C
L_1AA2:
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A F5 0C 00 00 [FIXUP]
        jmp     L_1C2A                          ; E9 7C 01
L_1AAE:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_1AB7                          ; 7D 03
        jmp     L_1B37                          ; E9 80 00
L_1AB7:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        je      L_1AC4                          ; 74 03
        jmp     L_1B70                          ; E9 AC 00
L_1AC4:
        push    es                              ; 06
        push    bx                              ; 53
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     ax, word ptr [bp + 0x1c]        ; 03 46 1C
        push    ax                              ; 50
        call    L_0BF3                          ; E8 1F F1
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 0x11], ax     ; 26 39 47 11
        jge     L_1B2B                          ; 7D 47
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_1AE9:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_0C34                          ; E8 3C F1
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_0CD6                          ; E8 B4 F1
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jle     L_1AE9                          ; 7E BE
L_1B2B:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        call    L_0C34                          ; E8 FD F0
L_1B37:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_0CD6                          ; E8 75 F1
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        jmp     L_1C2A                          ; E9 BA 00
L_1B70:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_0039                          ; E8 B7 E4
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 65 E4
        or      ax, ax                          ; 0B C0
        jg      L_1BA5                          ; 7F 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1C2A                          ; E9 85 00
L_1BA5:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 2], 2         ; 26 83 7F 02 02
        jne     L_1C24                          ; 75 75
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        push    dx                              ; 52
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_1BF0                          ; 7E 07
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        jmp     L_1BF3                          ; EB 03
L_1BF0:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
L_1BF3:
        push    ax                              ; 50
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    L_0CD6                          ; E8 D3 F0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, dx                          ; 8B C2
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    L_0F9D                          ; E8 79 F3
L_1C24:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
L_1C2A:
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
        call    L_1D04                          ; E8 B0 00
        or      ax, ax                          ; 0B C0
        jne     L_1C5C                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1C76                          ; EB 1A
L_1C5C:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSCANLR                ; 9A FF FF 00 00 [FIXUP]
L_1C76:
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
        je      L_1C9D                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1CA3                          ; EB 06
L_1C9D:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
L_1CA3:
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
        je      L_1CE0                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1CE6                          ; EB 06
L_1CE0:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
L_1CE6:
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
L_1D04:
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
        je      L_1D8E                          ; 74 6B
        or      byte ptr es:[bx + 0x26], 0x40   ; 26 80 4F 26 40
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_1D33                          ; 74 04
L_1D2F:
        sub     ax, ax                          ; 2B C0
        jmp     L_1D91                          ; EB 5E
L_1D33:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     word ptr es:[bx + 0x28], 1      ; 26 83 7F 28 01
        je      L_1D2F                          ; 74 F2
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x8b6                       ; 05 B6 08
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_1D5E                          ; 74 0A
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx], ax            ; 26 29 07
L_1D5E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_1D73                          ; 74 0D
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     word ptr es:[bx], ax            ; 26 29 07
L_1D73:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 2                           ; 05 02 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
L_1D8E:
        mov     ax, 1                           ; B8 01 00
L_1D91:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
L_1D97:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_1DB1                          ; EB 09
L_1DA8:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_1DB1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        cwde                                    ; 98
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr es:[bx + si], 0        ; 26 80 38 00
        jne     L_1DA8                          ; 75 DB
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_1DD7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_1DED                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_1DED:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_1DF2:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr es:[bx + si], dl       ; 26 88 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp + 8], ax           ; 89 46 08
        or      ax, ax                          ; 0B C0
        jne     L_1DF2                          ; 75 DB
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_1E27                          ; 7D 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx + si], 0x2d     ; 26 C6 00 2D
L_1E27:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    es                              ; 06
        push    si                              ; 56
        call    L_1E40                          ; E8 0A 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_1E40:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_1E57                          ; EB 03
L_1E54:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_1E57:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1E54                          ; 75 F4
L_1E60:
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jae     L_1E91                          ; 73 23
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 4]               ; FF 46 04
        jmp     L_1E60                          ; EB CF
L_1E91:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_1E97:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_1EBB                          ; 72 1A
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     bl, al                          ; 8A D8
        sub     bh, bh                          ; 2A FF
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        jmp     L_1EBD                          ; EB 02
L_1EBB:
        sub     ax, ax                          ; 2B C0
L_1EBD:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
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
        cmp     word ptr [bp + 0x12], -3        ; 83 7E 12 FD
        jne     L_1EDE                          ; 75 06
        mov     ax, 1                           ; B8 01 00
        jmp     L_21B0                          ; E9 D2 02
L_1EDE:
        cmp     word ptr [bp + 0x12], 3         ; 83 7E 12 03
        je      L_1F1B                          ; 74 37
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1EF6                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1EFC                          ; EB 06
L_1EF6:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
L_1EFC:
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
        jmp     L_21B0                          ; E9 95 02
L_1F1B:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_1F29                          ; 75 05
L_1F24:
        sub     ax, ax                          ; 2B C0
        jmp     L_21B0                          ; E9 87 02
L_1F29:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 0x5e]     ; 26 8B 47 5E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A E1 20 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A 06 21 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        je      L_1F24                          ; 74 C6
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 1C 21 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x1e], 0x48a     ; C7 46 E2 8A 04
        mov     word ptr [bp - 0xe], 0xffff     ; C7 46 F2 FF FF
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
L_1F79:
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        test    word ptr [bx], ax               ; 85 07
        jne     L_1F86                          ; 75 03
        jmp     L_20A8                          ; E9 22 01
L_1F86:
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        and     si, 0xf                         ; 81 E6 0F 00
        je      L_1FB1                          ; 74 15
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     ax, 0xf                         ; 25 0F 00
        lea     cx, [si - 1]                    ; 8D 4C FF
        cmp     ax, cx                          ; 3B C1
        je      L_1FB1                          ; 74 04
        add     byte ptr [bp - 9], 8            ; 80 46 F7 08
L_1FB1:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        and     si, 0xf0                        ; 81 E6 F0 00
        je      L_1FD4                          ; 74 12
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     ax, 0xf0                        ; 25 F0 00
        cmp     ax, si                          ; 3B C6
        je      L_1FD4                          ; 74 04
        add     byte ptr [bp - 9], 4            ; 80 46 F7 04
L_1FD4:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_24FB                          ; E8 19 05
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     cl, byte ptr [bx + 2]           ; 8A 4F 02
        sub     ch, ch                          ; 2A ED
        cmp     cx, ax                          ; 3B C8
        je      L_1FF2                          ; 74 04
        add     byte ptr [bp - 9], 0x20         ; 80 46 F7 20
L_1FF2:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        je      L_2011                          ; 74 15
        or      si, si                          ; 0B F6
        jge     L_2014                          ; 7D 14
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     cx, si                          ; 8B CE
        neg     cx                              ; F7 D9
        add     ax, cx                          ; 03 C1
        mov     si, ax                          ; 8B F0
        jmp     L_2014                          ; EB 03
L_2011:
        mov     si, 0x32                        ; BE 32 00
L_2014:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x16]     ; 26 2B 77 16
        or      si, si                          ; 0B F6
        jle     L_2025                          ; 7E 06
        mov     ax, si                          ; 8B C6
        mov     cl, 3                           ; B1 03
        jmp     L_202B                          ; EB 06
L_2025:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     cl, 4                           ; B1 04
L_202B:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx + 2]        ; 26 8B 77 02
        or      si, si                          ; 0B F6
        jne     L_203E                          ; 75 03
        mov     si, 0x1e                        ; BE 1E 00
L_203E:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x19]     ; 26 2B 77 19
        je      L_2056                          ; 74 0F
        or      si, si                          ; 0B F6
        jle     L_204F                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_2053                          ; EB 04
L_204F:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
L_2053:
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
L_2056:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xa], al      ; 26 38 47 0A
        je      L_206A                          ; 74 04
        add     word ptr [bp - 0xa], 0x10       ; 83 46 F6 10
L_206A:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     si, word ptr es:[bx + 8]        ; 26 8B 77 08
        or      si, si                          ; 0B F6
        jne     L_2078                          ; 75 03
        mov     si, 0x190                       ; BE 90 01
L_2078:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     si, word ptr es:[bx + 0x11]     ; 26 2B 77 11
        je      L_2094                          ; 74 13
        or      si, si                          ; 0B F6
        jle     L_2089                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_208D                          ; EB 04
L_2089:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
L_208D:
        mov     cl, 5                           ; B1 05
        sar     ax, cl                          ; D3 F8
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
L_2094:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_20A8                          ; 73 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_20A8:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     word ptr [bp - 0x1e], 6         ; 83 46 E2 06
        add     word ptr [bp - 6], 0x34         ; 83 46 FA 34
        cmp     word ptr [bp - 0x14], 0x19      ; 83 7E EC 19
        jge     L_20BF                          ; 7D 03
        jmp     L_1F79                          ; E9 BA FE
L_20BF:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A A1 21 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.FREERESOURCE         ; 9A A9 21 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 18 22 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_20FF                          ; 75 03
        jmp     L_21AD                          ; E9 AE 00
L_20FF:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL.LOADRESOURCE         ; 9A 28 22 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_2114                          ; 75 03
        jmp     L_1F24                          ; E9 10 FE
L_2114:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 35 22 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0039                          ; E8 11 DF
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x33], ax     ; 26 89 47 33
        mov     ax, 6                           ; B8 06 00
        mul     word ptr [bp - 8]               ; F7 66 F8
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 0x48a], 4        ; 83 BF 8A 04 04
        jne     L_2146                          ; 75 05
        mov     ax, 0x530                       ; B8 30 05
        jmp     L_2149                          ; EB 03
L_2146:
        mov     ax, 0x5f0                       ; B8 F0 05
L_2149:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x35], ax     ; 26 89 47 35
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_231A                          ; E8 BB 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx + 8], 0x2bc     ; 26 81 7F 08 BC 02
        jne     L_2173                          ; 75 09
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], 0x2bc     ; 26 C7 47 08 BC 02
L_2173:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_2198                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
L_2198:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A 18 1A 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
L_21AD:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_21B0:
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
        sub     sp, 0x66                        ; 83 EC 66
        push    si                              ; 56
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_21DE                          ; 75 06
L_21D8:
        mov     ax, 1                           ; B8 01 00
        jmp     L_230E                          ; E9 30 01
L_21DE:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_21FA                          ; 74 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_21FA                          ; 74 0B
        push    es                              ; 06
        push    bx                              ; 53
        call    L_24FB                          ; E8 07 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        je      L_21D8                          ; 74 DE
L_21FA:
        mov     word ptr [bp - 0x46], 0xffff    ; C7 46 BA FF FF
        mov     word ptr [bp - 0x44], 0x48a     ; C7 46 BC 8A 04
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x5e]         ; 26 FF 77 5E
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x102                       ; B8 02 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0x5e]         ; 26 FF 77 5E
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        je      L_21D8                          ; 74 A5
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x40], 0         ; C7 46 C0 00 00
L_2244:
        cmp     word ptr [bp - 0x40], 0x19      ; 83 7E C0 19
        jl      L_224D                          ; 7C 03
        jmp     L_22FB                          ; E9 AE 00
L_224D:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     si, word ptr [bp - 0x44]        ; 8B 76 BC
        mov     ax, word ptr [si]               ; 8B 04
        test    word ptr es:[bx + 0x34], ax     ; 26 85 47 34
        jne     L_226B                          ; 75 10
L_225B:
        inc     word ptr [bp - 0x40]            ; FF 46 C0
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        add     word ptr [bp - 0x44], 6         ; 83 46 BC 06
        add     word ptr [bp - 6], 0x34         ; 83 46 FA 34
        jmp     L_2244                          ; EB D9
L_226B:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_227E                          ; 7C 0D
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        je      L_2291                          ; 74 13
L_227E:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_225B                          ; 7D D7
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp - 0x46]        ; 3B 46 BA
        je      L_225B                          ; 74 CA
L_2291:
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_231A                          ; E8 6C 00
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_231A                          ; E8 5A 00
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x44]        ; 8B 5E BC
        mov     bl, byte ptr [bx + 2]           ; 8A 5F 02
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x520]       ; 8B 87 20 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A D4 14 00 00 [FIXUP]
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x66]                 ; 8D 46 9A
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        or      ax, ax                          ; 0B C0
        je      L_22FB                          ; 74 03
        jmp     L_225B                          ; E9 60 FF
L_22FB:
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 36 26 00 00 [FIXUP]
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far KERNEL.FREERESOURCE         ; 9A CB 20 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
L_230E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
L_231A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_2335                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jne     L_232D                          ; 75 03
        jmp     L_2405                          ; E9 D8 00
L_232D:
        cmp     ax, 5                           ; 3D 05 00
        je      L_23A9                          ; 74 77
        jmp     L_24F5                          ; E9 C0 01
L_2335:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        inc     al                              ; FE C0
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_24F5                          ; E9 4C 01
L_23A9:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_24F5                          ; E9 F0 00
L_2405:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x1b]     ; 26 8B 47 1B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x11]     ; 26 8B 47 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1d]     ; 26 8A 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x13], al     ; 26 88 47 13
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x14], al     ; 26 88 47 14
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x15], al     ; 26 88 47 15
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x16], al     ; 26 88 47 16
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x12c  ; 26 C7 47 1B 2C 01
        mov     word ptr es:[bx + 0x1d], 0x12c  ; 26 C7 47 1D 2C 01
L_24F5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_24FB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_2506:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x520]       ; 8B 87 20 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 72 14 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_2525                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_2531                          ; EB 0C
L_2525:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jl      L_2506                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
L_2531:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_2537:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_254F:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_256D                          ; 7D 16
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_256D                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_257E                          ; 72 11
L_256D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_2586                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_2640                          ; E9 C2 00
L_257E:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_254F                          ; EB C9
L_2586:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 41 19 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_25A3                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_2640                          ; E9 9D 00
L_25A3:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALLOCK           ; 9A 4E 19 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_262A                          ; EB 66
L_25C4:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_25E7                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_25FB                          ; 72 18
        cmp     al, 0xa0                        ; 3C A0
        jae     L_25FB                          ; 73 14
L_25E7:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_25FB:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        cmp     al, 0xa0                        ; 3C A0
        jb      L_2624                          ; 72 19
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x35]         ; 26 FF 77 35
        call    L_1E97                          ; E8 7C F8
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_2624:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 4]               ; FF 46 FC
L_262A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_25C4                          ; 7C 92
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALUNLOCK         ; 9A C3 20 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
L_2640:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_2647:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    bx                              ; 53
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_2668                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_2668:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_2681                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_2681:
        or      ax, ax                          ; 0B C0
        jne     L_269B                          ; 75 16
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_26D6                          ; EB 3C
        nop                                     ; 90
L_269B:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_26A6:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_26A6                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_277C                          ; E8 B9 00
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_26CF                          ; 77 07
        jb      L_26D2                          ; 72 08
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jbe     L_26D2                          ; 76 03
L_26CF:
        sub     si, 1                           ; 83 EE 01
L_26D2:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
L_26D6:
        or      di, di                          ; 0B FF
        je      L_26E1                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_26E1:
        pop     bx                              ; 5B
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_26E8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_2708                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 4], dx           ; 89 56 04
L_2708:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_2721                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 8], dx           ; 89 56 08
L_2721:
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
        je      L_2746                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
L_2746:
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_276D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_276D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_2769                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_2769:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_276D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A B7 19 00 00 [FIXUP]
L_277C:
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
        db      0c2h                            ; C2
        db      008h                            ; 08

HPLASER_TEXT ENDS

        END
