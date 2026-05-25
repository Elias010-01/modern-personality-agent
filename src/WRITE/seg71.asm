; AUTO-GENERATED from original WRITE segment 71
; segment_size=4180 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2e                        ; 83 EC 2E
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        call    far _entry_221                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        call    far _entry_381                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0053                          ; 74 14
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0DB5                          ; E8 62 0D
L_0053:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        mov     word ptr [bp - 8], 3            ; C7 46 F8 03 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_03BB                          ; E8 47 03
        or      ax, ax                          ; 0B C0
        jne     L_007B                          ; 75 03
        jmp     L_013B                          ; E9 C0 00
L_007B:
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0CF4                          ; E8 72 0C
L_0082:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A 81 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_009C                          ; 75 06
        and     byte ptr [bp - 8], 0xf7         ; 80 66 F8 F7
        jmp     L_0113                          ; EB 77
L_009C:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A 9B 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_00BF                          ; 74 0C
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_0103                          ; 74 4B
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0122                          ; 74 65
        jmp     L_0082                          ; EB C3
L_00BF:
        or      byte ptr [bp - 8], 8            ; 80 4E F8 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0CF4                          ; E8 2A 0C
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [0xa1e]            ; 03 06 1E 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_0122                          ; 74 40
        cmp     ax, 0x1b                        ; 3D 1B 00
        je      L_0138                          ; 74 51
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_00F3                          ; 74 07
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_00FB                          ; 74 0A
        jmp     L_0082                          ; EB 8F
L_00F3:
        mov     ax, word ptr [0x80a]            ; A1 0A 08
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        jmp     L_0113                          ; EB 18
L_00FB:
        mov     ax, word ptr [0x80a]            ; A1 0A 08
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_0113                          ; EB 10
L_0103:
        and     byte ptr [bp - 8], 0xf7         ; 80 66 F8 F7
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_0113:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_06CB                          ; E8 AC 05
        jmp     L_0082                          ; E9 60 FF
L_0122:
        mov     ax, word ptr [0x1088]           ; A1 88 10
        add     ax, word ptr [0xa1c]            ; 03 06 1C 0A
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D37                          ; E8 FF 0B
L_0138:
        call    L_066A                          ; E8 2F 05
L_013B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
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
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 0x1c], 1         ; C7 46 E4 01 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03BB                          ; E8 57 02
        or      ax, ax                          ; 0B C0
        jne     L_016B                          ; 75 03
        jmp     L_0353                          ; E9 E8 01
L_016B:
        call    L_0F81                          ; E8 13 0E
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0CF4                          ; E8 7F 0B
L_0175:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0190                          ; 75 07
        and     byte ptr [bp - 8], 0xf7         ; 80 66 F8 F7
        jmp     L_02BD                          ; E9 2D 01
L_0190:
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_01B9                          ; 74 12
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_01AF                          ; 75 03
        jmp     L_026D                          ; E9 BE 00
L_01AF:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_01B7                          ; 75 03
        jmp     L_0317                          ; E9 60 01
L_01B7:
        jmp     L_0175                          ; EB BC
L_01B9:
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    L_0CF4                          ; E8 34 0B
        or      byte ptr [bp - 8], 8            ; 80 4E F8 08
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_01CF                          ; 75 03
        jmp     L_0317                          ; E9 48 01
L_01CF:
        cmp     ax, 0x1b                        ; 3D 1B 00
        jne     L_01D7                          ; 75 03
        jmp     L_0350                          ; E9 79 01
L_01D7:
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_0213                          ; 74 37
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_0239                          ; 74 58
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_01ED                          ; 74 07
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_0253                          ; 74 68
        jmp     L_0175                          ; EB 88
L_01ED:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 3                           ; 25 03 00
        cmp     ax, 1                           ; 3D 01 00
        jl      L_01FD                          ; 7C 05
        cmp     ax, 2                           ; 3D 02 00
        jle     L_020A                          ; 7E 0D
L_01FD:
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      byte ptr [bp - 8], 2            ; 80 4E F8 02
        jmp     L_02BD                          ; E9 B3 00
L_020A:
        mov     ax, word ptr [0x80a]            ; A1 0A 08
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_02BD                          ; E9 AA 00
L_0213:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 3                           ; 25 03 00
        cmp     ax, 1                           ; 3D 01 00
        jl      L_0223                          ; 7C 05
        cmp     ax, 2                           ; 3D 02 00
        jle     L_0230                          ; 7E 0D
L_0223:
        mov     ax, word ptr [0xa1c]            ; A1 1C 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      byte ptr [bp - 8], 2            ; 80 4E F8 02
        jmp     L_02BD                          ; E9 8D 00
L_0230:
        mov     ax, word ptr [0x80a]            ; A1 0A 08
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        jmp     L_02BD                          ; E9 84 00
L_0239:
        test    byte ptr [bp - 8], 4            ; F6 46 F8 04
        je      L_0247                          ; 74 08
        mov     ax, word ptr [0x80c]            ; A1 0C 08
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        jmp     L_02BD                          ; EB 76
L_0247:
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      byte ptr [bp - 8], 4            ; 80 4E F8 04
        jmp     L_02BD                          ; EB 6A
L_0253:
        test    byte ptr [bp - 8], 4            ; F6 46 F8 04
        je      L_0261                          ; 74 08
        mov     ax, word ptr [0x80c]            ; A1 0C 08
        add     word ptr [bp - 4], ax           ; 01 46 FC
        jmp     L_02BD                          ; EB 5C
L_0261:
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      byte ptr [bp - 8], 4            ; 80 4E F8 04
        jmp     L_02BD                          ; EB 50
L_026D:
        and     byte ptr [bp - 8], 0xf7         ; 80 66 F8 F7
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_027F                          ; 74 08
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        jmp     L_0175                          ; E9 F6 FE
L_027F:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        test    byte ptr [bp - 8], 3            ; F6 46 F8 03
        jne     L_02AB                          ; 75 1A
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_029F                          ; 7C 06
        or      byte ptr [bp - 8], 2            ; 80 4E F8 02
        jmp     L_02AB                          ; EB 0C
L_029F:
        mov     ax, word ptr [0xa1c]            ; A1 1C 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_02AB                          ; 7F 04
        or      byte ptr [bp - 8], 1            ; 80 4E F8 01
L_02AB:
        test    byte ptr [bp - 8], 4            ; F6 46 F8 04
        jne     L_02BD                          ; 75 0C
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_02BD                          ; 7C 04
        or      byte ptr [bp - 8], 4            ; 80 4E F8 04
L_02BD:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 3                           ; 25 03 00
        cmp     ax, 1                           ; 3D 01 00
        je      L_02DC                          ; 74 14
        cmp     ax, 2                           ; 3D 02 00
        je      L_02ED                          ; 74 20
L_02CD:
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_06CB                          ; E8 F2 03
        jmp     L_0175                          ; E9 99 FE
L_02DC:
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_02CD                          ; 7C E9
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     al, 0xfc                        ; 24 FC
        or      al, 2                           ; 0C 02
        jmp     L_02FC                          ; EB 0F
L_02ED:
        mov     ax, word ptr [0xa1c]            ; A1 1C 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jg      L_02CD                          ; 7F D8
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     al, 0xfc                        ; 24 FC
        or      al, 1                           ; 0C 01
L_02FC:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [0x808], 0             ; 83 3E 08 08 00
        je      L_0309                          ; 74 03
        call    L_0C4A                          ; E8 41 09
L_0309:
        mov     di, 0xa1c                       ; BF 1C 0A
        mov     si, 0xa14                       ; BE 14 0A
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        jmp     L_02CD                          ; EB B6
L_0317:
        push    word ptr [0xa28]                ; FF 36 28 0A
        call    L_035E                          ; E8 40 00
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [0xa2c]                ; FF 36 2C 0A
        call    L_035E                          ; E8 36 00
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0x1088]           ; A1 88 10
        add     ax, word ptr [0xa1c]            ; 03 06 1C 0A
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        push    ax                              ; 50
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        push    ax                              ; 50
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_0D37                          ; E8 E7 09
L_0350:
        call    L_066A                          ; E8 17 03
L_0353:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_035E -- offset 0x035E -- 36 instr
; Dispatcher: tabla de decisiones cmp+jcc (36 instr).
; tags: dispatcher
;----------------------------------------------------------------------
L_035E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [bp + 4], 0x3b6        ; 81 7E 04 B6 03
        jb      L_0393                          ; 72 28
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x3e8                       ; B9 E8 03
        div     cx                              ; F7 F1
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        cmp     dx, 0x32                        ; 83 FA 32
        jae     L_0384                          ; 73 07
L_037D:
        mov     ax, dx                          ; 8B C2
        sub     word ptr [bp + 4], ax           ; 29 46 04
        jmp     L_03B2                          ; EB 2E
L_0384:
        cmp     word ptr [bp - 2], 0x3b6        ; 81 7E FE B6 03
        jb      L_03B2                          ; 72 27
        mov     ax, 0x3e8                       ; B8 E8 03
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        jmp     L_03AF                          ; EB 1C
L_0393:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x1f4                       ; B9 F4 01
        div     cx                              ; F7 F1
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        cmp     dx, 0x32                        ; 83 FA 32
        jb      L_037D                          ; 72 D8
        cmp     dx, 0x1c2                       ; 81 FA C2 01
        jb      L_03B2                          ; 72 07
        mov     ax, cx                          ; 8B C1
        sub     ax, dx                          ; 2B C2
L_03AF:
        add     word ptr [bp + 4], ax           ; 01 46 04
L_03B2:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03BB -- offset 0x03BB -- 222 instr
; Iterador con instrucciones de string (movsb/scasb/...) (222 instr).
; tags: calls_gdi, calls_user, complex_iterator, string_op
; callers: sub_0000
; calls (intra): sub_062B, sub_06CB
; calls (inter): GDI.ESCAPE, GDI.GETDEVICECAPS, GDI.GETSTOCKOBJECT, GDI.GETTEXTMETRICS, GDI.SELECTOBJECT, USER.GETDC (+7 mas)
;----------------------------------------------------------------------
L_03BB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x60                        ; 83 EC 60
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0xa24], ax            ; A3 24 0A
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xa36                       ; B8 36 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x1112]               ; FF 36 12 11
        push    word ptr [0x108c]               ; FF 36 8C 10
        push    word ptr [0x1084]               ; FF 36 84 10
        push    word ptr [0x108a]               ; FF 36 8A 10
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        call    far _entry_221                  ; 9A 26 00 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_041D                          ; 74 0B
        cmp     word ptr [bp - 0x1a], 0x26      ; 83 7E E6 26
        ja      L_041D                          ; 77 05
L_0418:
        sub     ax, ax                          ; 2B C0
        jmp     L_0623                          ; E9 06 02
L_041D:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        test    al, 4                           ; A8 04
        je      L_0465                          ; 74 37
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        mov     cl, byte ptr [bp - 0x3c]        ; 8A 4E C4
        shl     ax, cl                          ; D3 E0
        mov     word ptr [0xa2e], ax            ; A3 2E 0A
        mov     ax, 1                           ; B8 01 00
        mov     cl, byte ptr [bp - 0x3a]        ; 8A 4E C6
        shl     ax, cl                          ; D3 E0
        mov     word ptr [0xa32], ax            ; A3 32 0A
        jmp     L_046E                          ; EB 09
L_0465:
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0xa32], ax            ; A3 32 0A
        mov     word ptr [0xa2e], ax            ; A3 2E 0A
L_046E:
        cmp     word ptr [bp - 0x38], 0x63      ; 83 7E C8 63
        jne     L_04AD                          ; 75 39
        mov     ax, 0xa26                       ; B8 26 0A
        push    ax                              ; 50
        mov     ax, 0xa2a                       ; B8 2A 0A
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_387                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa26]                ; FF 36 26 0A
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _entry_94                   ; 9A A7 04 00 00 [FIXUP]
        mov     word ptr [0xa26], ax            ; A3 26 0A
        push    word ptr [0xa2a]                ; FF 36 2A 0A
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04DE                          ; EB 31
L_04AD:
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ax                              ; 50
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ax                              ; 50
        call    far _entry_381                  ; 9A 37 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04C5                          ; 75 03
        jmp     L_0418                          ; E9 53 FF
L_04C5:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_383                  ; 9A A2 05 00 00 [FIXUP]
        mov     word ptr [0xa26], ax            ; A3 26 0A
        push    word ptr [bp - 0x40]            ; FF 76 C0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A C3 05 00 00 [FIXUP]
L_04DE:
        mov     word ptr [0xa2a], ax            ; A3 2A 0A
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_386                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04F1                          ; 75 03
        jmp     L_0418                          ; E9 27 FF
L_04F1:
        mov     ax, 0xa14                       ; B8 14 0A
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_385                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, 0xa1c                       ; BF 1C 0A
        mov     si, 0xa14                       ; BE 14 0A
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     word ptr [0x46], 1              ; C7 06 46 00 01 00
        mov     word ptr [0xa30], 0             ; C7 06 30 0A 00 00
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_056E                          ; 74 41
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 43 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 49 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_056E                          ; 74 2D
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0x60]                 ; 8D 46 A0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x56]        ; 8B 46 AA
        mov     word ptr [0x80a], ax            ; A3 0A 08
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        add     ax, word ptr [bp - 0x58]        ; 03 46 A8
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x80c], ax            ; A3 0C 08
L_056E:
        call    L_062B                          ; E8 BA 00
        cmp     word ptr [0x806], 0             ; 83 3E 06 08 00
        jne     L_0589                          ; 75 11
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 0x208                       ; B8 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x806], ax            ; A3 06 08
L_0589:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_384                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xe26]                ; FF 36 26 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_383                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, word ptr [0x1088]           ; A1 88 10
        add     ax, word ptr [0xa18]            ; 03 06 18 0A
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa3e], ax            ; A3 3E 0A
        push    word ptr [0xe1a]                ; FF 36 1A 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa40], ax            ; A3 40 0A
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, 0xa14                       ; B8 14 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [0xa1c]            ; 03 06 1C 0A
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        shr     ax, 1                           ; D1 E8
        add     ax, word ptr [0xa1e]            ; 03 06 1E 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_06CB                          ; E8 BD 00
        push    word ptr [0x806]                ; FF 36 06 08
        call    far USER.SETCURSOR              ; 9A 7F 06 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0623:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_062B -- offset 0x062B -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: calls_gdi, small
; callers: sub_03BB, sub_06CB
; calls (inter): GDI.GETSTOCKOBJECT, GDI.INTERSECTCLIPRECT, GDI.SAVEDC, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_062B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x10b0]               ; FF 36 B0 10
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa34], ax            ; A3 34 0A
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xa36]                ; FF 36 36 0A
        push    word ptr [0xa38]                ; FF 36 38 0A
        push    word ptr [0xa3a]                ; FF 36 3A 0A
        push    word ptr [0xa3c]                ; FF 36 3C 0A
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_066A -- offset 0x066A -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_gdi, calls_user, small
; calls (intra): sub_0C4A
; calls (inter): GDI.RESTOREDC, USER.INVERTRECT, USER.RELEASECAPTURE, USER.SETCURSOR, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_066A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x28                        ; 83 EC 28
        mov     word ptr [0x46], 0              ; C7 06 46 00 00 00
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x30], 0xffff         ; C7 06 30 00 FF FF
        call    far _entry_342                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x808], 0             ; 83 3E 08 08 00
        je      L_0698                          ; 74 03
        call    L_0C4A                          ; E8 B2 05
L_0698:
        cmp     word ptr [0xa30], 0             ; 83 3E 30 0A 00
        jne     L_06AD                          ; 75 0E
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, 0xa14                       ; B8 14 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A D4 05 00 00 [FIXUP]
L_06AD:
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xa34]                ; FF 36 34 0A
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 1C 06 00 00 [FIXUP]
        call    far _entry_217                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06CB -- offset 0x06CB -- 497 instr
; Iterador con instrucciones de string (movsb/scasb/...) (497 instr).
; tags: calls_gdi, calls_user, complex_iterator, string_op
; callers: sub_03BB
; calls (intra): sub_062B, sub_0C4A, sub_0D15, sub_0F81
; calls (inter): GDI.RESTOREDC, USER.OFFSETRECT, USER.PTINRECT, USER.SETCURSOR
;----------------------------------------------------------------------
L_06CB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x5c                        ; 83 EC 5C
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        lea     di, [bp - 8]                    ; 8D 7E F8
        mov     si, 0xa1c                       ; BE 1C 0A
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        test    byte ptr [bp + 8], 4            ; F6 46 08 04
        jne     L_06F4                          ; 75 03
        jmp     L_07B6                          ; E9 C2 00
L_06F4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        cmp     ax, word ptr [0xa40]            ; 3B 06 40 0A
        jle     L_070D                          ; 7E 0C
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        add     ax, word ptr [0xa40]            ; 03 06 40 0A
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_071A                          ; EB 0D
L_070D:
        mov     si, word ptr [0xa1e]            ; 8B 36 1E 0A
        inc     si                              ; 46
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jge     L_071A                          ; 7D 03
        mov     word ptr [bp + 6], si           ; 89 76 06
L_071A:
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_0725                          ; 7F 03
        jmp     L_07C9                          ; E9 A4 00
L_0725:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa20]                ; FF 36 20 0A
        call    far _entry_84                   ; 9A 3B 07 00 00 [FIXUP]
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        push    ax                              ; 50
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_84                   ; 9A F8 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A 2F 08 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_383                  ; 9A 39 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 0xffff                      ; B8 FF FF
        sub     dx, dx                          ; 2B D2
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     cl, 3                           ; B1 03
        shr     bx, cl                          ; D3 EB
        div     bx                              ; F7 F3
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_389                  ; 9A A3 07 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_382                  ; 9A AC 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xa2e]            ; A1 2E 0A
        imul    word ptr [0xa32]                ; F7 2E 32 0A
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jbe     L_07C9                          ; 76 2E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_389                  ; 9A 01 08 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A 0B 08 00 00 [FIXUP]
        add     ax, word ptr [0xa1e]            ; 03 06 1E 0A
        jmp     L_07C6                          ; EB 10
L_07B6:
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_07C6                          ; 7C 08
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_07C9                          ; 7E 03
L_07C6:
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_07C9:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 3                           ; 25 03 00
        or      ax, ax                          ; 0B C0
        je      L_07EB                          ; 74 18
        cmp     ax, 1                           ; 3D 01 00
        jne     L_07DB                          ; 75 03
        jmp     L_08CA                          ; E9 EF 00
L_07DB:
        cmp     ax, 2                           ; 3D 02 00
        je      L_07EB                          ; 74 0B
        cmp     ax, 3                           ; 3D 03 00
        jne     L_07E8                          ; 75 03
        jmp     L_08DB                          ; E9 F3 00
L_07E8:
        jmp     L_0871                          ; E9 86 00
L_07EB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        push    ax                              ; 50
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 3B 09 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_389                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_382                  ; 9A DA 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, 0xffff                      ; B8 FF FF
        sub     dx, dx                          ; 2B D2
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     cl, 3                           ; B1 03
        shr     bx, cl                          ; D3 EB
        div     bx                              ; F7 F3
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A 5D 08 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_383                  ; 9A 66 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0xa2e]            ; A1 2E 0A
        imul    word ptr [0xa32]                ; F7 2E 32 0A
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        jbe     L_0871                          ; 76 1C
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_388                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_383                  ; 9A CC 04 00 00 [FIXUP]
        add     ax, word ptr [0xa1c]            ; 03 06 1C 0A
L_086E:
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_0871:
        mov     ax, 0xa36                       ; B8 36 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0888                          ; 74 03
        jmp     L_0B3B                          ; E9 B3 02
L_0888:
        mov     ax, word ptr [0xa3a]            ; A1 3A 0A
        sub     ax, word ptr [0xa36]            ; 2B 06 36 0A
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0xa3c]            ; A1 3C 0A
        sub     ax, word ptr [0xa38]            ; 2B 06 38 0A
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        mov     ax, word ptr [0xa36]            ; A1 36 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_08B5                          ; 7C 03
        jmp     L_0941                          ; E9 8C 00
L_08B5:
        cmp     word ptr [0x1088], 0            ; 83 3E 88 10 00
        jne     L_0920                          ; 75 64
        call    far _entry_174                  ; 9A 5B 09 00 00 [FIXUP]
        mov     ax, word ptr [0xa36]            ; A1 36 0A
L_08C4:
        mov     word ptr [bp + 4], ax           ; 89 46 04
        jmp     L_098E                          ; E9 C4 00
L_08CA:
        mov     ax, word ptr [0xa36]            ; A1 36 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_0871                          ; 7D 9F
        cmp     word ptr [0x1088], 0            ; 83 3E 88 10 00
        jne     L_0871                          ; 75 98
        jmp     L_086E                          ; EB 93
L_08DB:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        cmp     ax, word ptr [0xa36]            ; 3B 06 36 0A
        jge     L_08F8                          ; 7D 11
        cmp     word ptr [0x1088], 0            ; 83 3E 88 10 00
        jne     L_08F8                          ; 75 0A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0xa36]            ; 03 06 36 0A
        jmp     L_086E                          ; E9 76 FF
L_08F8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        add     ax, word ptr [0x1088]           ; 03 06 88 10
        sub     ax, word ptr [0x1112]           ; 2B 06 12 11
        cmp     ax, word ptr [0xa3e]            ; 3B 06 3E 0A
        jg      L_090F                          ; 7F 03
        jmp     L_0871                          ; E9 62 FF
L_090F:
        mov     ax, word ptr [0xa3e]            ; A1 3E 0A
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        jmp     L_086E                          ; E9 4E FF
L_0920:
        mov     ax, word ptr [0x1088]           ; A1 88 10
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xa36]            ; 2B 06 36 0A
        push    ax                              ; 50
        call    far _entry_48                   ; 9A 87 09 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 81 09 00 00 [FIXUP]
        jmp     L_098B                          ; EB 4A
L_0941:
        mov     ax, word ptr [0xa3a]            ; A1 3A 0A
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_098E                          ; 7E 45
        mov     ax, word ptr [0x1088]           ; A1 88 10
        add     ax, word ptr [0xa3a]            ; 03 06 3A 0A
        sub     ax, word ptr [0xa36]            ; 2B 06 36 0A
        cmp     ax, word ptr [0x12ae]           ; 3B 06 AE 12
        jl      L_0965                          ; 7C 0B
        call    far _entry_174                  ; 9A E5 09 00 00 [FIXUP]
        mov     ax, word ptr [0xa3a]            ; A1 3A 0A
        jmp     L_08C4                          ; E9 5F FF
L_0965:
        mov     ax, word ptr [0x12ae]           ; A1 AE 12
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        add     ax, word ptr [0xa3a]            ; 03 06 3A 0A
        sub     ax, word ptr [0xa36]            ; 2B 06 36 0A
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0xa3a]            ; 2B 06 3A 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A B4 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
L_098B:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
L_098E:
        mov     ax, word ptr [0xa38]            ; A1 38 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jge     L_09FD                          ; 7D 67
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        add     si, word ptr [bx]               ; 03 37
        sub     si, 0x10                        ; 83 EE 10
        mov     word ptr [bp - 0x24], si        ; 89 76 DC
        mov     ax, word ptr [0xa38]            ; A1 38 0A
        cmp     word ptr [0xa1e], ax            ; 39 06 1E 0A
        jge     L_09E4                          ; 7D 2E
        cmp     byte ptr [0x1081], 1            ; 80 3E 81 10 01
        jbe     L_09E4                          ; 76 27
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jne     L_09F1                          ; 75 28
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jne     L_09F1                          ; 75 23
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        cmp     word ptr [si - 8], dx           ; 39 54 F8
        jne     L_09E4                          ; 75 0B
        cmp     word ptr [si - 0xa], ax         ; 39 44 F6
        jne     L_09E4                          ; 75 06
        test    byte ptr [si - 0xe], 4          ; F6 44 F2 04
        jne     L_09F1                          ; 75 0D
L_09E4:
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xa38]            ; A1 38 0A
L_09EC:
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0A43                          ; EB 52
L_09F1:
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        sub     ax, word ptr [0xa38]            ; 2B 06 38 0A
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        jmp     L_0A43                          ; EB 46
L_09FD:
        mov     ax, word ptr [0xa3c]            ; A1 3C 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0A43                          ; 7E 3E
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     byte ptr [0x1081], 1            ; 80 3E 81 10 01
        jbe     L_0A34                          ; 76 1F
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bx + 8], dx           ; 39 57 08
        jne     L_0A3E                          ; 75 1B
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jne     L_0A3E                          ; 75 16
        cmp     byte ptr [bx + 0x11], 0         ; 80 7F 11 00
        je      L_0A34                          ; 74 06
        test    byte ptr [bx + 0x12], 4         ; F6 47 12 04
        jne     L_0A3E                          ; 75 0A
L_0A34:
        call    far _entry_174                  ; 9A EF 0A 00 00 [FIXUP]
        mov     ax, word ptr [0xa3c]            ; A1 3C 0A
        jmp     L_09EC                          ; EB AE
L_0A3E:
        mov     word ptr [bp - 0x22], 1         ; C7 46 DE 01 00
L_0A43:
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        jne     L_0A52                          ; 75 09
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        jne     L_0A52                          ; 75 03
        jmp     L_0B3B                          ; E9 E9 00
L_0A52:
        mov     ax, word ptr [0x1088]           ; A1 88 10
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [0xa16]            ; A1 16 0A
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0A70                          ; 74 0C
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0A70                          ; 74 06
        mov     word ptr [0x7b8], 0             ; C7 06 B8 07 00 00
L_0A70:
        cmp     word ptr [0x808], 0             ; 83 3E 08 08 00
        je      L_0A7A                          ; 74 03
        call    L_0C4A                          ; E8 D0 01
L_0A7A:
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xa34]                ; FF 36 34 0A
        call    far GDI.RESTOREDC               ; 9A B6 06 00 00 [FIXUP]
        cmp     word ptr [bp - 0x20], 0         ; 83 7E E0 00
        je      L_0A95                          ; 74 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far _entry_149                  ; 9A FF FF 00 00 [FIXUP]
L_0A95:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        jle     L_0AA6                          ; 7E 0B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0AB5                          ; EB 0F
L_0AA6:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        jge     L_0AB5                          ; 7D 09
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
L_0AB5:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A D1 03 00 00 [FIXUP]
        call    L_062B                          ; E8 67 FB
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        push    word ptr [0x12b4]               ; FF 36 B4 12
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ax                              ; 50
        call    far _entry_221                  ; 9A 08 04 00 00 [FIXUP]
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ax                              ; 50
        call    far _entry_386                  ; 9A E6 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0AF6                          ; 75 08
        call    far _entry_174                  ; 9A BD 08 00 00 [FIXUP]
        jmp     L_0C42                          ; E9 4C 01
L_0AF6:
        mov     ax, 0xa14                       ; B8 14 0A
        push    ax                              ; 50
        lea     ax, [bp - 0x58]                 ; 8D 46 A8
        push    ax                              ; 50
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_385                  ; 9A 01 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     ax, word ptr [0xa16]            ; A1 16 0A
        sub     ax, word ptr [bp - 0x30]        ; 2B 46 D0
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        call    far USER.OFFSETRECT             ; 9A 75 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        add     word ptr [bp + 6], ax           ; 01 46 06
        jmp     L_0B95                          ; EB 5A
L_0B3B:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        and     ax, 3                           ; 25 03 00
        or      ax, ax                          ; 0B C0
        je      L_0B89                          ; 74 44
        cmp     ax, 1                           ; 3D 01 00
        je      L_0B7B                          ; 74 31
        cmp     ax, 2                           ; 3D 02 00
        je      L_0B83                          ; 74 34
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0B89                          ; 75 35
        cmp     word ptr [0xa24], 0             ; 83 3E 24 0A 00
        jne     L_0B95                          ; 75 3A
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0xa1c]            ; 03 06 1C 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B95                          ; EB 1A
L_0B7B:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_0B89                          ; EB 06
L_0B83:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0B89:
        test    byte ptr [bp + 8], 4            ; F6 46 08 04
        je      L_0B95                          ; 74 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0B95:
        mov     ax, word ptr [0xa1c]            ; A1 1C 0A
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jne     L_0BBB                          ; 75 1E
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_0BBB                          ; 75 16
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0BBB                          ; 75 0E
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jne     L_0BBB                          ; 75 06
        test    byte ptr [bp + 8], 8            ; F6 46 08 08
        je      L_0BD4                          ; 74 19
L_0BBB:
        cmp     word ptr [0x808], 0             ; 83 3E 08 08 00
        je      L_0BC5                          ; 74 03
        call    L_0C4A                          ; E8 85 00
L_0BC5:
        mov     di, 0xa1c                       ; BF 1C 0A
        lea     si, [bp - 8]                    ; 8D 76 F8
        push    ds                              ; 1E
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        call    L_0C4A                          ; E8 76 00
L_0BD4:
        test    byte ptr [bp + 8], 8            ; F6 46 08 08
        je      L_0BEC                          ; 74 12
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0D15                          ; E8 32 01
        push    word ptr [0x806]                ; FF 36 06 08
        call    far USER.SETCURSOR              ; 9A 13 06 00 00 [FIXUP]
L_0BEC:
        cmp     word ptr [0xa24], 0             ; 83 3E 24 0A 00
        je      L_0C42                          ; 74 4F
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [0xa26]                ; FF 36 26 0A
        call    far _entry_94                   ; 9A 1C 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        push    ax                              ; 50
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        push    word ptr [0xa2a]                ; FF 36 2A 0A
        call    far _entry_94                   ; 9A 94 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     ax, word ptr [0xa28]            ; A1 28 0A
        cmp     word ptr [bp - 0x5a], ax        ; 39 46 A6
        jne     L_0C33                          ; 75 08
        mov     ax, word ptr [0xa2c]            ; A1 2C 0A
        cmp     word ptr [bp - 0x5c], ax        ; 39 46 A4
        je      L_0C42                          ; 74 0F
L_0C33:
        mov     ax, word ptr [bp - 0x5a]        ; 8B 46 A6
        mov     word ptr [0xa28], ax            ; A3 28 0A
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr [0xa2c], ax            ; A3 2C 0A
        call    L_0F81                          ; E8 3F 03
L_0C42:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C4A -- offset 0x0C4A -- 67 instr
; Funcion mediana (67 instr, 1 calls).
; tags: calls_gdi, medium
; callers: sub_066A, sub_06CB
; calls (inter): GDI.PATBLT
;----------------------------------------------------------------------
L_0C4A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        sub     ax, word ptr [0xa1c]            ; 2B 06 1C 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        sub     ax, word ptr [0xa1e]            ; 2B 06 1E 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xa1c]                ; FF 36 1C 0A
        push    word ptr [0xa1e]                ; FF 36 1E 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A A3 0C 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, word ptr [0xa20]            ; A1 20 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [0xa1e]                ; FF 36 1E 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A C5 0C 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        mov     ax, word ptr [0xa1c]            ; A1 1C 0A
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xa22]            ; A1 22 0A
        dec     ax                              ; 48
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A E6 0C 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [0xa1c]                ; FF 36 1C 0A
        mov     ax, word ptr [0xa1e]            ; A1 1E 0A
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        xor     word ptr [0x808], 0xffff        ; 81 36 08 08 FF FF
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CF4 -- offset 0x0CF4 -- 14 instr
; Funcion sin clasificar definitiva (14 instr).
; tags: calls_user, small
; calls (inter): USER.GETCURSORPOS, USER.SCREENTOCLIENT
;----------------------------------------------------------------------
L_0CF4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x10aa]               ; FF 36 AA 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D15 -- offset 0x0D15 -- 13 instr
; Funcion sin clasificar definitiva (13 instr).
; tags: calls_user, small
; callers: sub_06CB
; calls (inter): USER.CLIENTTOSCREEN, USER.SETCURSORPOS
;----------------------------------------------------------------------
L_0D15:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x10aa]               ; FF 36 AA 10
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D37 -- offset 0x0D37 -- 47 instr
; Funcion mediana (47 instr, 1 calls).
; tags: medium
; calls (intra): sub_0DB5
;----------------------------------------------------------------------
L_0D37:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_0D67                          ; 7C 18
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_264                  ; 9A 75 0D 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A 92 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0D67:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0D85                          ; 7C 18
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_264                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_389                  ; 9A 75 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0D85:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jl      L_0D99                          ; 7C 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A 47 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0D99:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0DB5                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DB5 -- offset 0x0DB5 -- 166 instr
; Dispatcher: tabla de decisiones cmp+jcc (166 instr).
; tags: dispatcher
; callers: sub_0D37
;----------------------------------------------------------------------
L_0DB5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3a                        ; 83 EC 3A
        push    si                              ; 56
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [0xa30], 1             ; C7 06 30 0A 01 00
        call    far _entry_219                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        push    word ptr [0x12b4]               ; FF 36 B4 12
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ax                              ; 50
        call    far _entry_221                  ; 9A DD 0A 00 00 [FIXUP]
        cmp     word ptr [bp - 0x30], 0x63      ; 83 7E D0 63
        jne     L_0DFA                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DFC                          ; EB 02
L_0DFA:
        sub     ax, ax                          ; 2B C0
L_0DFC:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0E25                          ; 74 1A
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_0E3D                          ; 7E 2C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_0E3D                          ; 7E 26
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_0E3D                          ; EB 18
L_0E25:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jl      L_0E31                          ; 7C 06
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
L_0E31:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jl      L_0E3D                          ; 7C 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
L_0E3D:
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        jl      L_0E49                          ; 7C 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
L_0E49:
        cmp     word ptr [bp - 0x12], 0x1e      ; 83 7E EE 1E
        jbe     L_0E53                          ; 76 04
        or      byte ptr [bp - 0x30], 0x80      ; 80 4E D0 80
L_0E53:
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        and     byte ptr [bp - 0x30], 0x7f      ; 80 66 D0 7F
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jge     L_0EE7                          ; 7D 69
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jge     L_0EE7                          ; 7D 63
        mov     si, word ptr [0xb72]            ; 8B 36 72 0B
        and     si, 0x300                       ; 81 E6 00 03
        cmp     si, 0x200                       ; 81 FE 00 02
        je      L_0E98                          ; 74 06
        cmp     si, 0x100                       ; 81 FE 00 01
        jne     L_0EE7                          ; 75 4F
L_0E98:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0ECF                          ; 74 31
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        sub     ax, word ptr [0x1be2]           ; 2B 06 E2 1B
        sbb     dx, word ptr [0x1be4]           ; 1B 16 E4 1B
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A 0F 0F 00 00 [FIXUP]
L_0ECF:
        call    far _entry_33                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x36], 4         ; C6 46 CA 04
        mov     byte ptr [bp - 0x35], 0         ; C6 46 CB 00
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ax                              ; 50
        call    far _entry_76                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F13                          ; EB 2C
L_0EE7:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0F13                          ; 74 26
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
L_0F13:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0F40                          ; 74 07
        cmp     word ptr [bp + 6], 0x3e8        ; 81 7E 06 E8 03
        ja      L_0F4E                          ; 77 0E
L_0F40:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0F7A                          ; 75 34
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jle     L_0F7A                          ; 7E 2C
L_0F4E:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sbb     dx, word ptr [bp - 2]           ; 1B 56 FE
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
L_0F7A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F81 -- offset 0x0F81 -- 32 instr
; Funcion mediana (32 instr, 1 calls).
; tags: medium
; callers: sub_06CB
; calls (intra): sub_0FD3
;----------------------------------------------------------------------
L_0F81:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0x80         ; C7 46 FE 80 00
        push    word ptr [0xa28]                ; FF 36 28 0A
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD3                          ; E8 3A 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     byte ptr [bx], 0x58             ; C6 07 58
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     byte ptr [bx], 0x2f             ; C6 07 2F
        push    word ptr [0xa2c]                ; FF 36 2C 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD3                          ; E8 1A 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     byte ptr [bx], 0x59             ; C6 07 59
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     byte ptr [bx], 0                ; C6 07 00
        call    far _entry_158                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FD3 -- offset 0x0FD3 -- 56 instr
; Funcion mediana (56 instr, 0 calls).
; tags: medium
; callers: sub_0F81
;----------------------------------------------------------------------
L_0FD3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x64                        ; B9 64 00
        div     cx                              ; F7 F1
        cmp     dx, 0x32                        ; 83 FA 32
        jb      L_0FF3                          ; 72 04
        add     word ptr [bp + 8], 0x32         ; 83 46 08 32
L_0FF3:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x3e8                       ; B9 E8 03
        div     cx                              ; F7 F1
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_100F                          ; 75 0B
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr [bx], 0x30             ; C6 07 30
        jmp     L_101B                          ; EB 0C
L_100F:
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
L_101B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr [bx], 0x2e             ; C6 07 2E
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x3e8                       ; B9 E8 03
        div     cx                              ; F7 F1
        mov     ax, dx                          ; 8B C2
        sub     dx, dx                          ; 2B D2
        mov     cx, 0x64                        ; B9 64 00
        div     cx                              ; F7 F1
        add     al, 0x30                        ; 04 30
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr [bx], al               ; 88 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
