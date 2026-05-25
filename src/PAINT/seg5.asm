; AUTO-GENERATED from original PAINT segment 5
; segment_size=2415 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
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
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_127                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 3F 00 00 00 [FIXUP]
        mov     word ptr [0x9fa], ax            ; A3 FA 09
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0026 -- offset 0x0026 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_gdi, far, small
; callers: sub_0239
; calls (inter): GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0026:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x9fa], 0             ; 83 3E FA 09 00
        je      L_0043                          ; 74 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far GDI.SELECTOBJECT            ; 9A 8F 00 00 00 [FIXUP]
L_0043:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_004E -- offset 0x004E -- 33 instr
; Funcion mediana (33 instr, 3 calls).
; tags: calls_gdi, far, medium
; callers: sub_0239
; calls (inter): GDI.GETDCORG, GDI.SELECTOBJECT, GDI.SETBRUSHORG
;----------------------------------------------------------------------
L_004E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.GETDCORG                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        sub     ax, word ptr [0xc84]            ; 2B 06 84 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, dx                          ; 8B C2
        sub     ax, word ptr [0xc8e]            ; 2B 06 8E 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    ax                              ; 50
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_126                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A B3 00 00 00 [FIXUP]
        mov     word ptr [0x9f8], ax            ; A3 F8 09
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00A1 -- offset 0x00A1 -- 50 instr
; Funcion mediana (50 instr, 4 calls).
; tags: calls_gdi, calls_kernel, far, medium
; callers: sub_0239
; calls (inter): GDI.CREATECOMPATIBLEDC, GDI.SELECTOBJECT, GDI.UNREALIZEOBJECT, KERNEL.THROW
;----------------------------------------------------------------------
L_00A1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x9f8]                ; FF 36 F8 09
        call    far GDI.SELECTOBJECT            ; 9A F9 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.UNREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 6                           ; 83 EC 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_00F2                          ; 75 0E
        mov     ax, 0xad2                       ; B8 D2 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A FF FF 00 00 [FIXUP]
L_00F2:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.SELECTOBJECT            ; 9A 5B 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_010B -- offset 0x010B -- 79 instr
; Dispatcher: tabla de decisiones cmp+jcc (79 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0216
; calls (intra): sub_01DD
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_010B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jg      L_0158                          ; 7F 39
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jge     L_0130                          ; 7D 0A
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01DD                          ; E8 AD 00
L_0130:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        mov     word ptr [0x580], ax            ; A3 80 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x57e], ax            ; A3 7E 05
        or      ax, ax                          ; 0B C0
        je      L_0150                          ; 74 03
        push    ax                              ; 50
        jmp     L_0194                          ; EB 44
L_0150:
        mov     word ptr [0x580], 0             ; C7 06 80 05 00 00
        jmp     L_01A0                          ; EB 48
L_0158:
        mov     ax, word ptr [0x580]            ; A1 80 05
        cmp     word ptr [0x582], ax            ; 39 06 82 05
        jl      L_01A0                          ; 7C 3F
        push    word ptr [0x57e]                ; FF 36 7E 05
        call    far KERNEL.GLOBALUNLOCK         ; 9A EC 01 00 00 [FIXUP]
        push    word ptr [0x57e]                ; FF 36 7E 05
        add     byte ptr [0x581], 1             ; 80 06 81 05 01
        mov     ax, word ptr [0x580]            ; A1 80 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0190                          ; 75 06
        sub     word ptr [0x580], 0x100         ; 81 2E 80 05 00 01
L_0190:
        push    word ptr [0x57e]                ; FF 36 7E 05
L_0194:
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1124], ax           ; A3 24 11
        mov     word ptr [0x1126], dx           ; 89 16 26 11
L_01A0:
        mov     ax, word ptr [0x580]            ; A1 80 05
        cmp     word ptr [0x582], ax            ; 39 06 82 05
        jge     L_01D2                          ; 7D 29
        mov     ax, word ptr [0x582]            ; A1 82 05
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x1124]           ; 03 06 24 11
        mov     dx, word ptr [0x1126]           ; 8B 16 26 11
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        inc     word ptr [0x582]                ; FF 06 82 05
L_01D2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01DD -- offset 0x01DD -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: calls_kernel, far, small
; callers: sub_010B, sub_0239
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_01DD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x57e]                ; FF 36 7E 05
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x57e]                ; FF 36 7E 05
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x57e], 0             ; C7 06 7E 05 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x1126], ax           ; A3 26 11
        mov     word ptr [0x1124], ax           ; A3 24 11
        mov     word ptr [0x580], ax            ; A3 80 05
        mov     word ptr [0x582], ax            ; A3 82 05
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0216 -- offset 0x0216 -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: far, small
; callers: sub_0239
; calls (intra): sub_010B
;----------------------------------------------------------------------
L_0216:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [0x1124]                ; C4 1E 24 11
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_010B                          ; E8 DB FE
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0239 -- offset 0x0239 -- 139 instr
; Funcion compleja: 139 instrucciones, 14 llamadas, 3 branches.
; tags: calls_gdi, calls_user, complex, far
; calls (intra): sub_0026, sub_004E, sub_00A1, sub_01DD, sub_0216
; calls (inter): GDI.GETBKMODE, GDI.GETSTOCKOBJECT, GDI.LINETO, GDI.MOVETO, GDI.POLYGON, GDI.POLYLINE (+3 mas)
;----------------------------------------------------------------------
L_0239:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x582], 2             ; 83 3E 82 05 02
        jle     L_0297                          ; 7E 4A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 7D 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x1126]               ; FF 36 26 11
        push    word ptr [0x1124]               ; FF 36 24 11
        push    word ptr [0x582]                ; FF 36 82 05
        call    far GDI.POLYGON                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x1126]               ; FF 36 26 11
        push    word ptr [0x1124]               ; FF 36 24 11
        push    word ptr [0x582]                ; FF 36 82 05
        call    far GDI.POLYLINE                ; 9A 70 03 00 00 [FIXUP]
        jmp     L_02C5                          ; EB 2E
L_0297:
        cmp     word ptr [0x582], 0             ; 83 3E 82 05 00
        jle     L_02C5                          ; 7E 27
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [0x1124]                ; C4 1E 24 11
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [0x1124]                ; C4 1E 24 11
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
L_02C5:
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 1B FD
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_004E                          ; E8 61 FD
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0216                          ; E8 24 FF
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.GETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0316                          ; 7D 0C
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 2A 03 00 00 [FIXUP]
L_0316:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0239                          ; E8 1B FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01DD                          ; E8 BA FE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00A1                          ; E8 6B FD
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0026                          ; E8 E8 FC
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
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 A5 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0216                          ; E8 B6 FE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x1126]               ; FF 36 26 11
        push    word ptr [0x1124]               ; FF 36 24 11
        push    word ptr [0x582]                ; FF 36 82 05
        call    far GDI.POLYLINE                ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01DD                          ; E8 64 FE
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0026                          ; E8 A5 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_038C -- offset 0x038C -- 51 instr
; Funcion mediana (51 instr, 0 calls).
; tags: medium
; callers: sub_052E
;----------------------------------------------------------------------
L_038C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A D7 03 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        cmp     dx, di                          ; 3B D7
        jl      L_03EA                          ; 7C 0B
        jg      L_03E5                          ; 7F 04
        cmp     ax, si                          ; 3B C6
        jbe     L_03EA                          ; 76 05
L_03E5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_03EC                          ; EB 02
L_03EA:
        sub     ax, ax                          ; 2B C0
L_03EC:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_04C1                          ; E9 CA 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03F7 -- offset 0x03F7 -- 90 instr
; Dispatcher: tabla de decisiones cmp+jcc (90 instr).
; tags: dispatcher
; calls (intra): sub_050B, sub_052E
;----------------------------------------------------------------------
L_03F7:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_050B                          ; E8 FC 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0423                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_052E                          ; E8 0B 01
L_0423:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        add     word ptr [bp + 6], 4            ; 83 46 06 04
        add     word ptr [bp + 8], 4            ; 83 46 08 04
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 65 04 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A FB 06 00 00 [FIXUP]
        cmp     dx, di                          ; 3B D7
        jl      L_0478                          ; 7C 0B
        jg      L_0473                          ; 7F 04
        cmp     ax, si                          ; 3B C6
        jbe     L_0478                          ; 76 05
L_0473:
        mov     ax, 1                           ; B8 01 00
        jmp     L_047A                          ; EB 02
L_0478:
        sub     ax, ax                          ; 2B C0
L_047A:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        xor     ax, word ptr [bp - 0xa]         ; 33 46 F6
        je      L_04B8                          ; 74 33
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_050B                          ; E8 6E 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_04B1                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_052E                          ; E8 7D 00
L_04B1:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        add     word ptr [bp + 6], 4            ; 83 46 06 04
L_04B8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_04C1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_04CC                          ; 7D 03
        jmp     L_03F7                          ; E9 2B FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04CC -- offset 0x04CC -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
; calls (intra): sub_050B, sub_052E
;----------------------------------------------------------------------
L_04CC:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_050B                          ; E8 27 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_04F8                          ; 74 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_052E                          ; E8 36 00
L_04F8:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_050B -- offset 0x050B -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: far, leaf
; callers: sub_03F7, sub_04CC
;----------------------------------------------------------------------
L_050B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 2], ax           ; 89 47 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_052E -- offset 0x052E -- 470 instr
; Dispatcher: tabla de decisiones cmp+jcc (470 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_03F7, sub_04CC
; calls (intra): sub_038C
; calls (inter): GDI.BITBLT, GDI.DELETEOBJECT, GDI.GETSTOCKOBJECT, GDI.POLYGON, GDI.ROUNDRECT, GDI.SELECTOBJECT (+3 mas)
;----------------------------------------------------------------------
L_052E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     word ptr [bx], ax               ; 01 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bx + 2], ax           ; 01 47 02
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
        sub     sp, 0x52                        ; 83 EC 52
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 55 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 14 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        mov     bx, word ptr [0xc3a]            ; 8B 1E 3A 0C
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x584]           ; FF B7 84 05
        call    far _entry_128                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_038C                          ; E8 E7 FD
        push    ax                              ; 50
        call    far GDI.POLYGON                 ; 9A 72 02 00 00 [FIXUP]
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
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cmp     word ptr [0xba2], ax            ; 39 06 A2 0B
        jle     L_05D7                          ; 7E 0A
        mov     ax, word ptr [0xba2]            ; A1 A2 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xb96]            ; 8B 0E 96 0B
        jmp     L_05DF                          ; EB 08
L_05D7:
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cdq                                     ; 99
        mov     cx, word ptr [0xba2]            ; 8B 0E A2 0B
L_05DF:
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_05E9:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_05EE:
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + si + 0x7b0]  ; 8B 80 B0 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0631                          ; EB 28
L_0609:
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cmp     word ptr [0xba2], ax            ; 39 06 A2 0B
        jle     L_061E                          ; 7E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        imul    word ptr [bx]                   ; F7 2F
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_062A                          ; EB 0C
L_061E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        imul    word ptr [bx + 2]               ; F7 6F 02
        mov     word ptr [bx + 2], ax           ; 89 47 02
L_062A:
        add     word ptr [bp - 0xa], 4          ; 83 46 F6 04
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0631:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bx + 0x584], ax       ; 39 87 84 05
        jg      L_0609                          ; 7F CA
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     word ptr [bp - 8], 6            ; 83 7E F8 06
        jl      L_05EE                          ; 7C A6
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     word ptr [bp - 0xc], 4          ; 83 7E F4 04
        jl      L_05E9                          ; 7C 98
        pop     si                              ; 5E
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        sub     si, word ptr [bp + 0xa]         ; 2B 76 0A
        dec     si                              ; 4E
        cmp     si, 0xf                         ; 83 FE 0F
        jle     L_067A                          ; 7E 05
        mov     ax, 0xf                         ; B8 0F 00
        jmp     L_067C                          ; EB 02
L_067A:
        mov     ax, si                          ; 8B C6
L_067C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        dec     si                              ; 4E
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jge     L_0697                          ; 7D 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0699                          ; EB 02
L_0697:
        mov     ax, si                          ; 8B C6
L_0699:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_06A5                          ; 7D 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_06A5:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.ROUNDRECT               ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_06F1                          ; 75 0E
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06F1                          ; 75 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_0797                          ; E9 A6 00
L_06F1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 11 07 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 45 07 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0x7fff       ; C7 46 FA FF 7F
        mov     word ptr [bp - 8], 0x3fff       ; C7 46 F8 FF 3F
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_0733:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0797                          ; 74 5C
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A BE 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jg      L_0769                          ; 7F 0F
        jl      L_0761                          ; 7C 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jae     L_0769                          ; 73 08
L_0761:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0781                          ; EB 18
L_0769:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jl      L_0797                          ; 7C 23
        jg      L_077B                          ; 7F 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jbe     L_0797                          ; 76 1C
L_077B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0781:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        sar     ax, 1                           ; D1 F8
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_0733                          ; EB 9C
L_0797:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
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
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x111c]               ; FF 36 1C 11
        push    word ptr [bp + 8]               ; FF 76 08
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.LOADSTRING             ; 9A 0B 08 00 00 [FIXUP]
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_080F                          ; 74 3B
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp + 0xc], ax         ; 01 46 0C
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
L_080F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_0835                          ; 75 03
        jmp     L_08B6                          ; E9 81 00
L_0835:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_08AE                          ; EB 6C
L_0842:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        jmp     L_088F                          ; EB 2C
L_0863:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0889                          ; 74 08
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        jmp     L_088F                          ; EB 06
L_0889:
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
L_088F:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 1E 09 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_0863                          ; 7F BE
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        inc     word ptr [bp - 6]               ; FF 46 FA
L_08AE:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0842                          ; 7C 8C
L_08B6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_08C1                          ; 75 03
        jmp     L_0942                          ; E9 81 00
L_08C1:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_093A                          ; EB 6C
L_08CE:
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        jmp     L_091B                          ; EB 2C
L_08EF:
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_0915                          ; 74 08
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        jmp     L_091B                          ; EB 06
L_0915:
        mov     ax, 0x86                        ; B8 86 00
        mov     dx, 0xee                        ; BA EE 00
L_091B:
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jg      L_08EF                          ; 7F BE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        inc     word ptr [bp - 0xa]             ; FF 46 F6
L_093A:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_08CE                          ; 7C 8C
L_0942:
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
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0965                          ; 74 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0965:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

PAINT_TEXT ENDS

        END
