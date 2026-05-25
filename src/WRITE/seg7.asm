; AUTO-GENERATED from original WRITE segment 7
; segment_size=590 bytes, flags=0xf170
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
        sub     sp, 6                           ; 83 EC 06
        cmp     byte ptr [bp + 6], 0            ; 80 7E 06 00
        jne     L_0018                          ; 75 05
        mov     ax, word ptr [0x810]            ; A1 10 08
        jmp     L_0023                          ; EB 0B
L_0018:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C7                          ; E8 A4 01
L_0023:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, 0x12c6                      ; 05 C6 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        jne     L_0046                          ; 75 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0054                          ; E8 0E 00
L_0046:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0054 -- offset 0x0054 -- 122 instr
; Funcion compleja: 122 instrucciones, 3 llamadas, 5 branches.
; tags: calls_gdi, complex, far
; callers: sub_01C7
; calls (intra): sub_016A
; calls (inter): GDI.ENUMFONTS, GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_0054:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x32                        ; 83 EC 32
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_00C2                          ; 74 5B
        mov     word ptr [bp - 0x32], 1         ; C7 46 CE 01 00
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0x5a                        ; B8 5A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 8E 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], 1         ; C7 46 D8 01 00
        push    word ptr [0x79e]                ; FF 36 9E 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xbf6]                ; FF 36 F6 0B
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.ENUMFONTS               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [0x106a], ax           ; A3 6A 10
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [0x107a], ax           ; A3 7A 10
L_00C2:
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_00D1                          ; 74 05
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_00D4                          ; EB 03
L_00D1:
        mov     ax, 1                           ; B8 01 00
L_00D4:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_113                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_010C                          ; 74 2A
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        jmp     L_00FB                          ; EB 11
L_00EA:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 6F 00
L_00FB:
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    far _entry_112                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00EA                          ; 75 E3
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
L_010C:
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        mov     ax, 0x22e                       ; B8 2E 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 51 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_015F                          ; 74 40
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x236                       ; B8 36 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 3E 00
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        mov     ax, 0x23c                       ; B8 3C 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 31 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x242                       ; B8 42 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 24 00
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        mov     ax, 0x24a                       ; B8 4A 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 17 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x23c                       ; B8 3C 02
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_016A                          ; E8 0B 00
L_015F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_016A -- offset 0x016A -- 42 instr
; Funcion mediana (42 instr, 1 calls).
; tags: far, medium
; callers: sub_0054
; calls (intra): sub_01C7
;----------------------------------------------------------------------
L_016A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01C7                          ; E8 45 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x22                        ; B8 22 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, 0x12c6                      ; 05 C6 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx + 1], 0            ; 80 7F 01 00
        jne     L_01BC                          ; 75 23
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     byte ptr [bx], al               ; 88 07
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x810], 0             ; 83 3E 10 08 00
        jge     L_01BC                          ; 7D 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x810], ax            ; A3 10 08
L_01BC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01C7 -- offset 0x01C7 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: dispatcher, far
; callers: sub_016A
; calls (intra): sub_0054
;----------------------------------------------------------------------
L_01C7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        or      ax, ax                          ; 0B C0
        je      L_01F3                          ; 74 19
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_01FC                          ; 74 1D
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_01F8                          ; 74 14
        cmp     ax, 0x30                        ; 3D 30 00
        je      L_0201                          ; 74 18
        cmp     ax, 0x40                        ; 3D 40 00
        je      L_0206                          ; 74 18
        cmp     ax, 0x50                        ; 3D 50 00
        je      L_020B                          ; 74 18
L_01F3:
        mov     ax, 5                           ; B8 05 00
        jmp     L_020E                          ; EB 16
L_01F8:
        sub     ax, ax                          ; 2B C0
        jmp     L_020E                          ; EB 12
L_01FC:
        mov     ax, 1                           ; B8 01 00
        jmp     L_020E                          ; EB 0D
L_0201:
        mov     ax, 2                           ; B8 02 00
        jmp     L_020E                          ; EB 08
L_0206:
        mov     ax, 3                           ; B8 03 00
        jmp     L_020E                          ; EB 03
L_020B:
        mov     ax, 4                           ; B8 04 00
L_020E:
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
        mov     ax, 0x12c6                      ; B8 C6 12
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xcc                        ; B8 CC 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x810], 0xffff        ; C7 06 10 08 FF FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0054                          ; E8 10 FE
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
