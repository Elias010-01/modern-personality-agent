; AUTO-GENERATED from original WRITE segment 52
; segment_size=472 bytes, flags=0xf130
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
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_002C                          ; 74 19
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_54                   ; 9A 7D 00 00 00 [FIXUP]
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        je      L_0030                          ; 74 0D
        call    far _entry_334                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0030                          ; 75 04
L_002C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0049                          ; EB 19
L_0030:
        mov     word ptr [0x706], 1             ; C7 06 06 07 01 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_014C                          ; E8 06 01
        mov     ax, 1                           ; B8 01 00
L_0049:
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
        call    far GDI.GETSTOCKOBJECT          ; 9A DB 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x13ca]               ; FF 36 CA 13
        call    far USER.GETDC                  ; 9A 86 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A 9B 00 00 00 [FIXUP]
        push    word ptr [0x10b0]               ; FF 36 B0 10
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A AE 00 00 00 [FIXUP]
        cmp     word ptr [0x7ba], 0             ; 83 3E BA 07 00
        je      L_00B2                          ; 74 0C
        push    word ptr [0x7ba]                ; FF 36 BA 07
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A C2 00 00 00 [FIXUP]
L_00B2:
        push    word ptr [0x78c]                ; FF 36 8C 07
        call    far GDI.DELETEOBJECT            ; 9A C8 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A E1 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A E7 00 00 00 [FIXUP]
        cmp     word ptr [0x7b2], 0             ; 83 3E B2 07 00
        je      L_00EB                          ; 74 18
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.DELETEOBJECT            ; 9A F7 00 00 00 [FIXUP]
L_00EB:
        cmp     word ptr [0x7c0], 0             ; 83 3E C0 07 00
        je      L_00FB                          ; 74 09
        push    word ptr [0x7c0]                ; FF 36 C0 07
        call    far GDI.DELETEOBJECT            ; 9A 07 01 00 00 [FIXUP]
L_00FB:
        cmp     word ptr [0x7c2], 0             ; 83 3E C2 07 00
        je      L_010B                          ; 74 09
        push    word ptr [0x7c2]                ; FF 36 C2 07
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_010B:
        cmp     word ptr [0x6e8], 0             ; 83 3E E8 06 00
        je      L_011B                          ; 74 09
        push    word ptr [0x6e8]                ; FF 36 E8 06
        call    far KERNEL.GLOBALFREE           ; 9A 27 01 00 00 [FIXUP]
L_011B:
        cmp     word ptr [0x6ea], 0             ; 83 3E EA 06 00
        je      L_012B                          ; 74 09
        push    word ptr [0x6ea]                ; FF 36 EA 06
        call    far KERNEL.GLOBALFREE           ; 9A 37 01 00 00 [FIXUP]
L_012B:
        cmp     word ptr [0x6ec], 0             ; 83 3E EC 06 00
        je      L_013B                          ; 74 09
        push    word ptr [0x6ea]                ; FF 36 EA 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_013B:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_014C -- offset 0x014C -- 59 instr
; Funcion mediana (59 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_014C:
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
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_01C5                          ; EB 5B
L_016A:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        and     al, 0x7f                        ; 24 7F
        cmp     al, 0xb                         ; 3C 0B
        je      L_01C2                          ; 74 3E
        test    byte ptr [bx + 4], 2            ; F6 47 04 02
        je      L_01C2                          ; 74 38
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_019C                          ; 74 0C
        mov     bx, word ptr [bx + 0x1e]        ; 8B 5F 1E
        push    word ptr [bx]                   ; FF 37
        call    far _entry_204                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01A9                          ; EB 0D
L_019C:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     bx, word ptr [bx + 0x1e]        ; 8B 5F 1E
        push    word ptr [bx]                   ; FF 37
        call    far _entry_333                  ; 9A FF FF 00 00 [FIXUP]
L_01A9:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        add     si, 5                           ; 83 C6 05
        mov     al, byte ptr [si]               ; 8A 04
        and     al, 0x80                        ; 24 80
        or      al, 0xb                         ; 0C 0B
        mov     byte ptr [si], al               ; 88 04
L_01C2:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_01C5:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_016A                          ; 7C 9D
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
