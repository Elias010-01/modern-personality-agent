; AUTO-GENERATED from original WRITE segment 69
; segment_size=1117 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        call    far _entry_380                  ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 3]           ; 8A 46 FD
        sub     ah, ah                          ; 2A E4
        mov     cx, 0x64                        ; B9 64 00
        mul     cx                              ; F7 E1
        mov     cx, 0x1770                      ; B9 70 17
        mov     dx, ax                          ; 8B D0
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        sub     ah, ah                          ; 2A E4
        mov     bx, dx                          ; 8B DA
        mul     cx                              ; F7 E1
        add     ax, bx                          ; 03 C3
        mov     cl, byte ptr [bp - 4]           ; 8A 4E FC
        sub     ch, ch                          ; 2A ED
        add     ax, cx                          ; 03 C1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0040 -- offset 0x0040 -- 203 instr
; Dispatcher: tabla de decisiones cmp+jcc (203 instr).
; tags: dispatcher, far
; callers: sub_0288
; calls (intra): sub_0288
;----------------------------------------------------------------------
L_0040:
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
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jae     L_008A                          ; 73 22
        mov     si, word ptr [bp - 0x12]        ; 8B 76 EE
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        add     si, word ptr [bp - 0x10]        ; 03 76 F0
        push    si                              ; 56
        call    L_0288                          ; E8 0A 02
        or      ax, ax                          ; 0B C0
        je      L_008A                          ; 74 08
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        jmp     L_00DC                          ; EB 52
L_008A:
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
L_0092:
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jae     L_00C1                          ; 73 25
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    si                              ; 56
        call    L_0288                          ; E8 E0 01
        or      ax, ax                          ; 0B C0
        jne     L_00AF                          ; 75 03
        jmp     L_0140                          ; E9 91 00
L_00AF:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [0x1be0], ax           ; A3 E0 1B
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_00C1:
        mov     al, byte ptr [0x1081]           ; A0 81 10
        sub     ah, ah                          ; 2A E4
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jb      L_00E2                          ; 72 17
        mov     ax, 0x1be0                      ; B8 E0 1B
        push    ax                              ; 50
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
L_00DC:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_00E2:
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     si, ax                          ; 03 F0
        test    byte ptr [si + 2], 2            ; F6 44 02 02
        je      L_014C                          ; 74 55
        cmp     word ptr [0x1be0], 0            ; 83 3E E0 1B 00
        jle     L_014C                          ; 7E 4E
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [si + 8], dx           ; 39 54 08
        jne     L_014C                          ; 75 42
        cmp     word ptr [si + 6], ax           ; 39 44 06
        jne     L_014C                          ; 75 3D
        sub     si, 0x10                        ; 83 EE 10
        test    byte ptr [si + 2], 1            ; F6 44 02 01
        je      L_0149                          ; 74 31
        test    byte ptr [si + 2], 2            ; F6 44 02 02
        jne     L_0149                          ; 75 2B
        dec     word ptr [0x1be0]               ; FF 0E E0 1B
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        call    far _entry_102                  ; 9A 54 01 00 00 [FIXUP]
        or      byte ptr [0x1bea], 2            ; 80 0E EA 1B 02
        mov     word ptr [0x78], 1              ; C7 06 78 00 01 00
        jmp     L_0163                          ; EB 23
L_0140:
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        add     si, 0x10                        ; 83 C6 10
        jmp     L_0092                          ; E9 49 FF
L_0149:
        add     si, 0x10                        ; 83 C6 10
L_014C:
        test    byte ptr [0x1bea], 2            ; F6 06 EA 1B 02
        je      L_017C                          ; 74 29
        call    far _entry_102                  ; 9A 63 03 00 00 [FIXUP]
        and     byte ptr [0x1bea], 0xfd         ; 80 26 EA 1B FD
        mov     word ptr [0x78], 0              ; C7 06 78 00 00 00
L_0163:
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
L_017C:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x13a8]               ; FF 36 A8 13
        push    word ptr [0x13a6]               ; FF 36 A6 13
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _entry_96                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        push    ax                              ; 50
        mov     ax, 0x100e                      ; B8 0E 10
        push    ax                              ; 50
        call    far _entry_172                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, word ptr [0x1088]           ; 2B 06 88 10
        add     ax, word ptr [0x340]            ; 03 06 40 03
        add     ax, word ptr [0x1112]           ; 03 06 12 11
        mov     word ptr [0x100e], ax           ; A3 0E 10
        mov     ax, word ptr [0x352]            ; A1 52 03
        mov     word ptr [0xa52], ax            ; A3 52 0A
        mov     ax, word ptr [0x34e]            ; A1 4E 03
        mov     word ptr [0xa50], ax            ; A3 50 0A
        mov     di, word ptr [0x34c]            ; 8B 3E 4C 03
        sub     di, ax                          ; 2B F8
        cmp     word ptr [0x350], di            ; 39 3E 50 03
        jge     L_01D9                          ; 7D 05
        mov     ax, word ptr [0x350]            ; A1 50 03
        jmp     L_01DB                          ; EB 02
L_01D9:
        mov     ax, di                          ; 8B C7
L_01DB:
        mov     word ptr [0x13c0], ax           ; A3 C0 13
        mov     ax, word ptr [0x346]            ; A1 46 03
        mov     word ptr [0x1288], ax           ; A3 88 12
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, 0x102c                      ; B8 2C 10
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_253                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x10b4]           ; 8B 1E B4 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [0x1be0]           ; A1 E0 1B
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        sub     ax, word ptr [0xa52]            ; 2B 06 52 0A
        mov     word ptr [0x1102], ax           ; A3 02 11
        mov     ax, word ptr [0xec2]            ; A1 C2 0E
        add     ax, word ptr [0xec8]            ; 03 06 C8 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0xec4]            ; A1 C4 0E
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        test    word ptr [0x1030], 0xff00       ; F7 06 30 10 00 FF
        je      L_0246                          ; 74 20
        mov     ax, word ptr [0x1030]           ; A1 30 10
        and     al, 0                           ; 24 00
        cmp     ax, 0x8000                      ; 3D 00 80
        jae     L_023C                          ; 73 0C
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        sub     word ptr [0x1102], ax           ; 29 06 02 11
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        jmp     L_0246                          ; EB 0A
L_023C:
        mov     ax, word ptr [0xa56]            ; A1 56 0A
        add     word ptr [0x1102], ax           ; 01 06 02 11
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
L_0246:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0x352]                ; FF 36 52 03
        call    far _entry_84                   ; 9A 61 02 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     cx, word ptr [0x34c]            ; 8B 0E 4C 03
        sub     cx, word ptr [0x352]            ; 2B 0E 52 03
        push    cx                              ; 51
        mov     di, ax                          ; 8B F8
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        cmp     ax, word ptr [0x34c]            ; 3B 06 4C 03
        jle     L_0272                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0274                          ; EB 02
L_0272:
        sub     ax, ax                          ; 2B C0
L_0274:
        mov     word ptr [0x1104], ax           ; A3 04 11
        mov     word ptr [0x1024], 1            ; C7 06 24 10 01 00
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
; sub_0288 -- offset 0x0288 -- 184 instr
; Dispatcher: tabla de decisiones cmp+jcc (184 instr).
; tags: calls_user, dispatcher, far
; callers: sub_0040
; calls (intra): sub_0040
; calls (inter): USER.GETCARETBLINKTIME, USER.GETMESSAGE, USER.TRANSLATEMESSAGE
;----------------------------------------------------------------------
L_0288:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        test    byte ptr [si + 2], 1            ; F6 44 02 01
        je      L_02EF                          ; 74 5A
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     dx, word ptr [si + 8]           ; 8B 54 08
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jl      L_02EF                          ; 7C 4F
        jg      L_02A7                          ; 7F 05
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jb      L_02EF                          ; 72 48
L_02A7:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jg      L_02E2                          ; 7F 2C
        jl      L_02BD                          ; 7C 05
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        ja      L_02E2                          ; 77 25
L_02BD:
        mov     ax, word ptr [0x13a6]           ; A1 A6 13
        mov     dx, word ptr [0x13a8]           ; 8B 16 A8 13
        cmp     word ptr [bp + 8], dx           ; 39 56 08
        jne     L_02EF                          ; 75 26
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_02EF                          ; 75 21
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cdq                                     ; 99
        add     ax, word ptr [si + 6]           ; 03 44 06
        adc     dx, word ptr [si + 8]           ; 13 54 08
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        jne     L_02EF                          ; 75 12
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_02EF                          ; 75 0D
L_02E2:
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [si + 0xe], ax         ; 39 44 0E
        jg      L_02EF                          ; 7F 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02F1                          ; EB 02
L_02EF:
        sub     ax, ax                          ; 2B C0
L_02F1:
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
        sub     sp, 0xe                         ; 83 EC 0E
L_0305:
        call    far _entry_288                  ; 9A 4D 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0344                          ; 74 36
L_030E:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        call    far _entry_298                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_033E                          ; 74 1F
        cmp     word ptr [0xbe4], 0x100         ; 81 3E E4 0B 00 01
        jne     L_032F                          ; 75 08
        cmp     ax, 0xfffc                      ; 3D FC FF
        jne     L_032F                          ; 75 03
        jmp     L_0428                          ; E9 F9 00
L_032F:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A FF FF 00 00 [FIXUP]
L_033E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0454                          ; E9 10 01
L_0344:
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 B7 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_034C:
        call    far _entry_288                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_030E                          ; 75 B9
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 A6 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cmp     ax, 0x19                        ; 3D 19 00
        jb      L_034C                          ; 72 EA
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_125                  ; 9A 78 01 00 00 [FIXUP]
        call    far _entry_288                  ; 9A B5 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0399                          ; 74 03
        jmp     L_030E                          ; E9 75 FF
L_0399:
        mov     word ptr [0x7b8], 0             ; C7 06 B8 07 00 00
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        call    far _entry_99                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_288                  ; 9A EB 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03C0                          ; 74 03
        jmp     L_030E                          ; E9 4E FF
L_03C0:
        cmp     word ptr [0x1024], 0            ; 83 3E 24 10 00
        jne     L_03CC                          ; 75 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0040                          ; E8 74 FC
L_03CC:
        call    far USER.GETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        sub     dx, dx                          ; 2B D2
        mov     cx, 0xa                         ; B9 0A 00
        div     cx                              ; F7 F1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 20 FC
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        shr     cx, 1                           ; D1 E9
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xc], cx         ; 89 4E F4
L_03EA:
        call    far _entry_288                  ; 9A 06 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03F6                          ; 74 03
        jmp     L_030E                          ; E9 18 FF
L_03F6:
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        jne     L_0402                          ; 75 05
L_03FD:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0454                          ; EB 52
L_0402:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 F0 FB
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        cmp     ax, word ptr [bp - 0xa]         ; 3B 46 F6
        jb      L_03EA                          ; 72 CF
        call    far _entry_289                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_03EA                          ; EB C2
L_0428:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_296                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03FD                          ; 75 C5
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.GETMESSAGE             ; 9A 3A 03 00 00 [FIXUP]
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0305                          ; E9 B1 FE
L_0454:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
