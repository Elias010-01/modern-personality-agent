; AUTO-GENERATED from original PAINT segment 2
; segment_size=803 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0058                          ; E8 48 00
        or      ax, ax                          ; 0B C0
        jne     L_0018                          ; 75 04
L_0014:
        sub     ax, ax                          ; 2B C0
        jmp     L_004D                          ; EB 35
L_0018:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_00DF                          ; E8 C1 00
        or      ax, ax                          ; 0B C0
        je      L_0014                          ; 74 F2
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0157                          ; E8 2F 01
        or      ax, ax                          ; 0B C0
        je      L_0014                          ; 74 E8
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_01CE                          ; E8 9C 01
        or      ax, ax                          ; 0B C0
        je      L_0014                          ; 74 DE
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0246                          ; E8 0A 02
        or      ax, ax                          ; 0B C0
        je      L_0014                          ; 74 D4
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_02BD                          ; E8 77 02
        or      ax, ax                          ; 0B C0
        je      L_0014                          ; 74 CA
        mov     ax, 1                           ; B8 01 00
L_004D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0058 -- offset 0x0058 -- 49 instr
; Funcion mediana (49 instr, 5 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; calls (inter): GDI.GETSTOCKOBJECT, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_0058:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0076                          ; 75 04
L_0072:
        sub     ax, ax                          ; 2B C0
        jmp     L_00D9                          ; EB 63
L_0076:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        push    ax                              ; 50
        mov     ax, 0x80c                       ; B8 0C 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, 0x80c                       ; B8 0C 08
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0x14], ds        ; 8C 5F 14
        mov     word ptr [bx + 0xe], 0          ; C7 47 0E 00 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     word ptr [bx], 0xb              ; C7 07 0B 00
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0072                          ; 74 A4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_00D9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DF -- offset 0x00DF -- 44 instr
; Funcion mediana (44 instr, 4 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; calls (inter): GDI.GETSTOCKOBJECT, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_00DF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 67 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_00FD                          ; 75 04
L_00F9:
        sub     ax, ax                          ; 2B C0
        jmp     L_0151                          ; EB 54
L_00FD:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [0x3cc]            ; A1 CC 03
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, 0x81a                       ; B8 1A 08
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A A9 00 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     word ptr [bx + 2], OFFSET _entry_2 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_2 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A C6 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00F9                          ; 74 B3
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A D2 00 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0151:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0157 -- offset 0x0157 -- 43 instr
; Funcion mediana (43 instr, 4 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; calls (inter): GDI.GETSTOCKOBJECT, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_0157:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A EE 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0175                          ; 75 04
L_0171:
        sub     ax, ax                          ; 2B C0
        jmp     L_01C8                          ; EB 53
L_0175:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 0xe], 0          ; C7 47 0E 00 00
        mov     ax, 0x812                       ; B8 12 08
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 19 01 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx], 0xb              ; C7 07 0B 00
        mov     word ptr [bx + 2], OFFSET _entry_3 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_3 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 3E 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0171                          ; 74 B4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 4A 01 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_01C8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01CE -- offset 0x01CE -- 44 instr
; Funcion mediana (44 instr, 4 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; callers: sub_0DA6
; calls (inter): GDI.GETSTOCKOBJECT, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_01CE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 66 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_01EC                          ; 75 04
L_01E8:
        sub     ax, ax                          ; 2B C0
        jmp     L_0240                          ; EB 54
L_01EC:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [0x3cc]            ; A1 CC 03
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, 0x82a                       ; B8 2A 08
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 90 01 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     word ptr [bx + 2], OFFSET _entry_4 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_4 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A B5 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01E8                          ; 74 B3
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A C1 01 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0240:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0246 -- offset 0x0246 -- 43 instr
; Funcion mediana (43 instr, 4 calls).
; tags: calls_gdi, calls_kernel, calls_user, medium
; calls (inter): GDI.GETSTOCKOBJECT, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_0246:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A DD 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0264                          ; 75 04
L_0260:
        sub     ax, ax                          ; 2B C0
        jmp     L_02B7                          ; EB 53
L_0264:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 0xe], 0          ; C7 47 0E 00 00
        mov     ax, 0x832                       ; B8 32 08
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 08 02 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx], 0xb              ; C7 07 0B 00
        mov     word ptr [bx + 2], OFFSET _entry_5 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_5 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A 2D 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0260                          ; 74 B4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 39 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_02B7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02BD -- offset 0x02BD -- 38 instr
; Funcion mediana (38 instr, 3 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_02BD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 55 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_02DB                          ; 75 04
L_02D7:
        sub     ax, ax                          ; 2B C0
        jmp     L_031E                          ; EB 43
L_02DB:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [0x3cc]            ; A1 CC 03
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, 0x822                       ; B8 22 08
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     word ptr [bx + 0x10], 6         ; C7 47 10 06 00
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     word ptr [bx + 2], OFFSET _entry_6 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_6 ; C7 47 04 FF FF [FIXUP]
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A A4 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02D7                          ; 74 C4
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A B0 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_031E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
