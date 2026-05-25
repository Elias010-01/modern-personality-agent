; AUTO-GENERATED from original WRITE segment 72
; segment_size=2874 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: far, small
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
        mov     word ptr [0x2de], 0xffff        ; C7 06 DE 02 FF FF
        cmp     word ptr [0x2e0], 0             ; 83 3E E0 02 00
        je      L_0026                          ; 74 0F
        push    word ptr [0x2e0]                ; FF 36 E0 02
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2e0], 0             ; C7 06 E0 02 00 00
L_0026:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_002F -- offset 0x002F -- 745 instr
; Iterador con instrucciones de string (movsb/scasb/...) (745 instr).
; tags: calls_gdi, calls_kernel, calls_user, complex_iterator, far, string_op
; calls (intra): sub_0865
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAPINDIRECT, GDI.CREATECOMPATIBLEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.CREATEDISCARDABLEBITMAP, GDI.DELETEDC (+22 mas)
;----------------------------------------------------------------------
L_002F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        add     si, 0x107e                      ; 81 C6 7E 10
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [bx + 0xe]             ; FF 77 0E
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x80e], 0             ; 83 3E 0E 08 00
        je      L_009B                          ; 74 17
        mov     ax, 0x12a2                      ; B8 A2 12
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x80e], 0             ; C7 06 0E 08 00 00
        jmp     L_00BD                          ; EB 22
L_009B:
        push    si                              ; 56
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        mov     si, 0x12a2                      ; BE A2 12
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        mov     ax, 0x12a2                      ; B8 A2 12
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.UNIONRECT              ; 9A FF FF 00 00 [FIXUP]
L_00BD:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x16a                       ; 81 EC 6A 01
        push    si                              ; 56
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        add     ax, 0x107e                      ; 05 7E 10
        mov     word ptr [bp - 0x66], ax        ; 89 46 9A
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x33e]                ; F7 2E 3E 03
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bx + 0x32]        ; 8B 47 32
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_002F                          ; E8 DB FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_015D                          ; 74 03
        jmp     L_0859                          ; E9 FC 06
L_015D:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp - 0x2a]            ; FF 76 D6
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0x33e]                ; FF 36 3E 03
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ax                              ; 50
        call    far _entry_221                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ax                              ; 50
        lea     ax, [bp - 0x64]                 ; 8D 46 9C
        push    ax                              ; 50
        push    word ptr [bp - 0x26]            ; FF 76 DA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0865                          ; E8 D5 06
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        sub     ax, word ptr [bp - 0x3c]        ; 2B 46 C4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        cmp     ax, 7                           ; 3D 07 00
        jl      L_01B4                          ; 7C 0A
        cmp     ax, 8                           ; 3D 08 00
        jle     L_0224                          ; 7E 75
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_0218                          ; 74 64
L_01B4:
        push    word ptr [bp - 0x64]            ; FF 76 9C
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A CF 01 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A EA 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_369                  ; 9A FD 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [bp - 0x64]            ; FF 76 9C
        push    word ptr [bp - 0x60]            ; FF 76 A0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A F7 01 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_369                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        je      L_020E                          ; 74 04
        or      ax, ax                          ; 0B C0
        jne     L_0224                          ; 75 16
L_020E:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        jmp     L_0700                          ; E9 E8 04
L_0218:
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
L_0224:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETSTRETCHBLTMODE       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x32]            ; FF 76 CE
        mov     ax, word ptr [0x324]            ; A1 24 03
        cmp     word ptr [0x322], ax            ; 39 06 22 03
        jne     L_024B                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_024E                          ; EB 03
L_024B:
        mov     ax, word ptr [0x1112]           ; A1 12 11
L_024E:
        push    ax                              ; 50
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0xe]             ; FF 77 0E
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    far GDI.INTERSECTCLIPRECT       ; 9A 7C 02 00 00 [FIXUP]
        cmp     word ptr [0x80e], 0             ; 83 3E 0E 08 00
        jne     L_0280                          ; 75 18
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [0x12a2]               ; FF 36 A2 12
        push    word ptr [0x12a4]               ; FF 36 A4 12
        push    word ptr [0x12a6]               ; FF 36 A6 12
        push    word ptr [0x12a8]               ; FF 36 A8 12
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
L_0280:
        mov     ax, word ptr [0x1112]           ; A1 12 11
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [0xb7e]                ; FF 36 7E 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A B9 02 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x3a]        ; 8B 4E C6
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        cmp     cx, word ptr [bx + 0xe]         ; 3B 4F 0E
        jge     L_02A8                          ; 7D 06
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_02A8:
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0xb80]                ; FF 36 80 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        cmp     ax, word ptr [bx + 0xc]         ; 3B 47 0C
        jle     L_02D1                          ; 7E 06
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_02D1:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        push    ax                              ; 50
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [0x2de]            ; 3B 06 DE 02
        jne     L_0370                          ; 75 6D
        mov     ax, word ptr [0xbde]            ; A1 DE 0B
        mov     dx, word ptr [0xbe0]            ; 8B 16 E0 0B
        cmp     word ptr [bp - 0x28], dx        ; 39 56 D8
        jne     L_0370                          ; 75 61
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jne     L_0370                          ; 75 5C
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        or      ax, ax                          ; 0B C0
        je      L_036B                          ; 74 48
        push    ax                              ; 50
        push    word ptr [0x2e0]                ; FF 36 E0 02
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_036B                          ; 74 3A
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x34]            ; FF 76 CC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_035B                          ; 74 0E
        cmp     word ptr [0xbdc], ax            ; 39 06 DC 0B
        je      L_035B                          ; 74 08
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
        jmp     L_0361                          ; EB 06
L_035B:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
L_0361:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_020E                          ; E9 A3 FE
L_036B:
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 90 FC
L_0370:
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x44]            ; FF 76 BC
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_038E                          ; 75 03
        jmp     L_020E                          ; E9 80 FE
L_038E:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [bp - 0x2a]        ; 03 46 D6
        adc     dx, word ptr [bp - 0x28]        ; 13 56 D8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
L_03A7:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     dx, word ptr [bp - 0x1e]        ; 8B 56 E2
        cmp     word ptr [bp - 0x42], dx        ; 39 56 BE
        jae     L_03B5                          ; 73 03
        jmp     L_044A                          ; E9 95 00
L_03B5:
        ja      L_03BF                          ; 77 08
        cmp     word ptr [bp - 0x44], ax        ; 39 46 BC
        ja      L_03BF                          ; 77 03
        jmp     L_044A                          ; E9 8B 00
L_03BF:
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        lea     ax, [bp - 0x166]                ; 8D 86 9A FE
        push    ax                              ; 50
        push    word ptr [0x33e]                ; FF 36 3E 03
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     dx, word ptr [bp - 0x42]        ; 8B 56 BE
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        sbb     dx, word ptr [bp - 0x1e]        ; 1B 56 E2
        or      dx, dx                          ; 0B D2
        ja      L_03F7                          ; 77 0F
        jb      L_03EF                          ; 72 05
        cmp     ax, 0x100                       ; 3D 00 01
        jae     L_03F7                          ; 73 08
L_03EF:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        jmp     L_03FA                          ; EB 03
L_03F7:
        mov     ax, 0x100                       ; B8 00 01
L_03FA:
        push    ax                              ; 50
        call    far _entry_301                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALLOCK           ; 9A 7B 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x16a], ax       ; 89 86 96 FE
        mov     word ptr [bp - 0x168], dx       ; 89 96 98 FE
        or      ax, dx                          ; 0B C2
        jne     L_0417                          ; 75 03
        jmp     L_020E                          ; E9 F7 FD
L_0417:
        lea     ax, [bp - 0x166]                ; 8D 86 9A FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x16a]       ; 03 86 96 FE
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A AC 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cdq                                     ; 99
        add     word ptr [bp - 0x20], ax        ; 01 46 E0
        adc     word ptr [bp - 0x1e], dx        ; 11 56 E2
        cdq                                     ; 99
        add     word ptr [bp - 0x16], ax        ; 01 46 EA
        adc     word ptr [bp - 0x14], dx        ; 11 56 EC
        jmp     L_03A7                          ; E9 5D FF
L_044A:
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        cmp     word ptr [bp - 0x64], 0x63      ; 83 7E 9C 63
        jne     L_045C                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_045E                          ; EB 02
L_045C:
        sub     ax, ax                          ; 2B C0
L_045E:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        je      L_04CB                          ; 74 66
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.CREATECOMPATIBLEDC      ; 9A F4 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        or      ax, ax                          ; 0B C0
        jne     L_0477                          ; 75 03
        jmp     L_0700                          ; E9 89 02
L_0477:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     word ptr [bp - 0x48], dx        ; 89 56 B8
        or      ax, dx                          ; 0B C2
        jne     L_048C                          ; 75 03
        jmp     L_0700                          ; E9 74 02
L_048C:
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEBITMAPINDIRECT    ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_04A0                          ; 75 03
        jmp     L_0700                          ; E9 60 02
L_04A0:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 53 07 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A 5B 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far GDI.SELECTOBJECT            ; 9A 1F 05 00 00 [FIXUP]
        jmp     L_0585                          ; E9 BA 00
L_04CB:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_04DE                          ; 75 0B
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jne     L_04DE                          ; 75 03
        jmp     L_06A5                          ; E9 C7 01
L_04DE:
        cmp     word ptr [bp - 0x64], 7         ; 83 7E 9C 07
        jne     L_04E7                          ; 75 03
        jmp     L_06A5                          ; E9 BE 01
L_04E7:
        cmp     word ptr [bp - 0x64], 8         ; 83 7E 9C 08
        jne     L_04F0                          ; 75 03
        jmp     L_06A5                          ; E9 B5 01
L_04F0:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 98 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        or      ax, ax                          ; 0B C0
        jne     L_0502                          ; 75 03
        jmp     L_0700                          ; E9 FE 01
L_0502:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far GDI.CREATECOMPATIBLEBITMAP  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_051A                          ; 75 03
        jmp     L_0700                          ; E9 E6 01
L_051A:
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 32 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_052A                          ; 75 03
        jmp     L_0700                          ; E9 D6 01
L_052A:
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.SELECTOBJECT            ; 9A C4 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_053D                          ; 75 03
        jmp     L_0700                          ; E9 C3 01
L_053D:
        push    word ptr [bp - 0x34]            ; FF 76 CC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [0x790]                ; FF 36 90 07
        push    word ptr [0x78e]                ; FF 36 8E 07
        call    far GDI.PATBLT                  ; 9A F1 02 00 00 [FIXUP]
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x64]            ; FF 76 9C
        call    far GDI.SETMAPMODE              ; 9A 81 05 00 00 [FIXUP]
        push    word ptr [bp - 0x34]            ; FF 76 CC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETSTRETCHBLTMODE       ; 9A 37 02 00 00 [FIXUP]
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.PLAYMETAFILE            ; 9A FC 06 00 00 [FIXUP]
        push    word ptr [bp - 0x34]            ; FF 76 CC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETMAPMODE              ; 9A AC 06 00 00 [FIXUP]
L_0585:
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_058F                          ; 74 03
        jmp     L_0611                          ; E9 82 00
L_058F:
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 6C FA
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 18 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        or      ax, ax                          ; 0B C0
        je      L_0611                          ; 74 6E
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_05AC                          ; 75 03
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
L_05AC:
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far GDI.CREATEDISCARDABLEBITMAP ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2e0], ax            ; A3 E0 02
        or      ax, ax                          ; 0B C0
        je      L_0611                          ; 74 52
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 29 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0611                          ; 74 45
        push    word ptr [bp - 0x24]            ; FF 76 DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A 9F 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0640                          ; 75 4B
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far GDI.DELETEDC                ; 9A 1B 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        push    word ptr [0x2e0]                ; FF 36 E0 02
        call    far GDI.DELETEOBJECT            ; 9A 37 07 00 00 [FIXUP]
        mov     word ptr [0x2e0], 0             ; C7 06 E0 02 00 00
L_0611:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x34]            ; FF 76 CC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp - 0x30]            ; FF 76 D0
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_0696                          ; 74 63
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        je      L_0696                          ; 74 5E
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
        jmp     L_069C                          ; EB 5C
L_0640:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x24]            ; FF 76 DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        cmp     word ptr [0x792], ax            ; 39 06 92 07
        je      L_0669                          ; 74 0D
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        je      L_0669                          ; 74 08
        mov     ax, 0x66                        ; B8 66 00
        mov     dx, 0x99                        ; BA 99 00
        jmp     L_066F                          ; EB 06
L_0669:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
L_066F:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 64 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x66]        ; 8B 5E 9A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        mov     word ptr [0x2de], ax            ; A3 DE 02
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     dx, word ptr [bp - 0x28]        ; 8B 56 D8
        mov     word ptr [0xbde], ax            ; A3 DE 0B
        mov     word ptr [0xbe0], dx            ; 89 16 E0 0B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0xbdc], ax            ; A3 DC 0B
        jmp     L_0700                          ; EB 6A
L_0696:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
L_069C:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0700                          ; EB 5B
L_06A5:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x64]            ; FF 76 9C
        call    far GDI.SETMAPMODE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        call    far GDI.SETVIEWPORTORG          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        cmp     ax, 7                           ; 3D 07 00
        je      L_06CD                          ; 74 07
        cmp     ax, 8                           ; 3D 08 00
        je      L_06E7                          ; 74 1C
        jmp     L_06F5                          ; EB 28
L_06CD:
        cmp     word ptr [bp - 0x62], 0         ; 83 7E 9E 00
        je      L_06E7                          ; 74 14
        cmp     word ptr [bp - 0x60], 0         ; 83 7E A0 00
        je      L_06E7                          ; 74 0E
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x62]            ; FF 76 9E
        push    word ptr [bp - 0x60]            ; FF 76 A0
        call    far GDI.SETWINDOWEXT            ; 9A FF FF 00 00 [FIXUP]
L_06E7:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far GDI.SETVIEWPORTEXT          ; 9A FF FF 00 00 [FIXUP]
L_06F5:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.PLAYMETAFILE            ; 9A FF FF 00 00 [FIXUP]
L_0700:
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jle     L_0711                          ; 7E 0B
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
L_0711:
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_071F                          ; 74 08
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far GDI.DELETEDC                ; 9A 29 07 00 00 [FIXUP]
L_071F:
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        je      L_072D                          ; 74 08
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_072D:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_073B                          ; 74 08
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far GDI.DELETEOBJECT            ; 9A 1C 00 00 00 [FIXUP]
L_073B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_075F                          ; 74 1E
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0757                          ; 74 10
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        or      ax, word ptr [bp - 0x48]        ; 0B 46 B8
        je      L_0757                          ; 74 08
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_0757:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_075F:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0768                          ; 74 03
        jmp     L_083E                          ; E9 D6 00
L_0768:
        cmp     word ptr [0x31e], 0             ; 83 3E 1E 03 00
        je      L_0772                          ; 74 03
        jmp     L_083E                          ; E9 CC 00
L_0772:
        cmp     word ptr [0x46], 0              ; 83 3E 46 00 00
        je      L_077C                          ; 74 03
        jmp     L_083E                          ; E9 C2 00
L_077C:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far GDI.SAVEDC                  ; 9A 28 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [0x80e], 0             ; 83 3E 0E 08 00
        jne     L_07A6                          ; 75 18
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [0x12a2]               ; FF 36 A2 12
        push    word ptr [0x12a4]               ; FF 36 A4 12
        push    word ptr [0x12a6]               ; FF 36 A6 12
        push    word ptr [0x12a8]               ; FF 36 A8 12
        call    far GDI.INTERSECTCLIPRECT       ; 9A BB 07 00 00 [FIXUP]
L_07A6:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [0x1112]               ; FF 36 12 11
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        push    word ptr [bx + 0xe]             ; FF 77 0E
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 0xc]             ; FF 77 0C
        call    far GDI.INTERSECTCLIPRECT       ; 9A 5D 02 00 00 [FIXUP]
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [bp - 0x28], dx        ; 39 56 D8
        jg      L_0800                          ; 7F 35
        jl      L_07D2                          ; 7C 05
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jae     L_0800                          ; 73 2E
L_07D2:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [bp - 0x28], dx        ; 39 56 D8
        jl      L_0800                          ; 7C 22
        jg      L_07E5                          ; 7F 05
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jb      L_0800                          ; 72 1B
L_07E5:
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp - 0x32]            ; FF 76 CE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0833                          ; EB 33
L_0800:
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        cmp     word ptr [0x1be8], dx           ; 39 16 E8 1B
        jne     L_0833                          ; 75 26
        cmp     word ptr [0x1be6], ax           ; 39 06 E6 1B
        jne     L_0833                          ; 75 20
        cmp     word ptr [bp - 0x28], dx        ; 39 56 D8
        jne     L_0833                          ; 75 1B
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jne     L_0833                          ; 75 16
        cmp     word ptr [0x80e], 0             ; 83 3E 0E 08 00
        jne     L_082D                          ; 75 09
        mov     ax, word ptr [0xc2c]            ; A1 2C 0C
        cmp     word ptr [0x12a4], ax           ; 39 06 A4 12
        jge     L_0833                          ; 7D 06
L_082D:
        mov     word ptr [0xf28], 0             ; C7 06 28 0F 00 00
L_0833:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.RESTOREDC               ; 9A 0D 07 00 00 [FIXUP]
L_083E:
        mov     word ptr [0x80e], 1             ; C7 06 0E 08 01 00
        cmp     word ptr [0x46], 0              ; 83 3E 46 00 00
        je      L_0850                          ; 74 05
        mov     ax, word ptr [0x806]            ; A1 06 08
        jmp     L_0853                          ; EB 03
L_0850:
        mov     ax, word ptr [0x1bc6]           ; A1 C6 1B
L_0853:
        push    ax                              ; 50
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0859:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0865 -- offset 0x0865 -- 278 instr
; Dispatcher: tabla de decisiones cmp+jcc (278 instr).
; tags: dispatcher, far
; callers: sub_002F
; calls (intra): sub_0B0A
;----------------------------------------------------------------------
L_0865:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, 0x38                        ; B8 38 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        add     ax, 0x107e                      ; 05 7E 10
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bx + 6]               ; FF 77 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B0A                          ; E8 71 02
        cmp     word ptr [si], 0x63             ; 83 3C 63
        jne     L_08D9                          ; 75 3B
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_08AA                          ; 74 06
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        jne     L_08D9                          ; 75 2F
L_08AA:
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_387                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A 44 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_389                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_08FD                          ; EB 24
L_08D9:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_383                  ; 9A AD 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A 12 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_08FD:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        je      L_0918                          ; 74 12
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xb80]            ; 03 06 80 0B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_382                  ; 9A 8E 02 00 00 [FIXUP]
        jmp     L_0927                          ; EB 0F
L_0918:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0x10                        ; 05 10 00
L_0927:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x1112]           ; A1 12 11
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        sub     ax, word ptr [bx + 0xa]         ; 2B 47 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_388                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0xe26]            ; A1 26 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xb72]            ; A1 72 0B
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 3                           ; 25 03 00
        or      ax, ax                          ; 0B C0
        je      L_096E                          ; 74 0F
        cmp     ax, 1                           ; 3D 01 00
        je      L_097E                          ; 74 1A
        cmp     ax, 2                           ; 3D 02 00
        je      L_0993                          ; 74 2A
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0974                          ; 75 06
L_096E:
        mov     ax, word ptr [si + 8]           ; 8B 44 08
L_0971:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0974:
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_099F                          ; 7D 23
        jmp     L_09A2                          ; EB 24
L_097E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sub     ax, word ptr [0xb76]            ; 2B 06 76 0B
        add     ax, word ptr [0xb78]            ; 03 06 78 0B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_0971                          ; EB DE
L_0993:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        sub     ax, word ptr [0xb76]            ; 2B 06 76 0B
        jmp     L_0971                          ; EB D2
L_099F:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_09A2:
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_383                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     word ptr [bx], ax               ; 89 07
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     di, bx                          ; 8B FB
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [di + 2], ax           ; 89 45 02
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        mov     word ptr [bx + 6], ax           ; 89 47 06
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
        sub     sp, 0xc                         ; 83 EC 0C
        mov     bx, word ptr [0x326]            ; 8B 1E 26 03
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x1be2]           ; A1 E2 1B
        mov     dx, word ptr [0x1be4]           ; 8B 16 E4 1B
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_0A10:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_0A38                          ; 7D 20
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 2], 1            ; F6 47 02 01
        jne     L_0A25                          ; 75 04
L_0A21:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A56                          ; EB 31
L_0A25:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bx + 8], dx           ; 39 57 08
        jne     L_0A42                          ; 75 0F
        cmp     word ptr [bx + 6], ax           ; 39 47 06
        jne     L_0A42                          ; 75 0A
L_0A38:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0A4B                          ; 7C 0B
        jmp     L_0A21                          ; EB DF
L_0A42:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        add     word ptr [bp - 4], 0x10         ; 83 46 FC 10
        jmp     L_0A10                          ; EB C5
L_0A4B:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 1                           ; B8 01 00
L_0A56:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bx + 6]               ; FF 77 06
        call    far _entry_32                   ; 9A 1E 0B 00 00 [FIXUP]
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0AAB                          ; EB 13
L_0A98:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + si + 2], 8       ; F6 40 02 08
        je      L_0AB9                          ; 74 11
        inc     word ptr [bp - 8]               ; FF 46 F8
L_0AAB:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        ja      L_0A98                          ; 77 DF
L_0AB9:
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx + si + 1]      ; 8A 40 01
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        sub     ax, word ptr [0x1c00]           ; 2B 06 00 1C
        sbb     dx, word ptr [0x1c02]           ; 1B 16 02 1C
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far _entry_368                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     ax, word ptr [bx + 6]           ; 03 47 06
        adc     dx, word ptr [bx + 8]           ; 13 57 08
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B0A -- offset 0x0B0A -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: small
; callers: sub_0865
;----------------------------------------------------------------------
L_0B0A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_88                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
