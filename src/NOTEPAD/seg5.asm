; AUTO-GENERATED from original NOTEPAD segment 5
; segment_size=595 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x38                        ; 83 EC 38
        push    si                              ; 56
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_002B                          ; 74 11
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0xd              ; C6 07 0D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr [bx], 0xa              ; C6 07 0A
L_002B:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0094                          ; E8 63 00
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0061                          ; 74 1D
        mov     si, ax                          ; 8B F0
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        mov     byte ptr [bp + si - 0x36], 0xd  ; C6 42 CA 0D
        mov     si, word ptr [bp - 0x38]        ; 8B 76 C8
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        mov     byte ptr [bp + si - 0x36], 0xa  ; C6 42 CA 0A
        mov     si, word ptr [bp - 0x38]        ; 8B 76 C8
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        mov     byte ptr [bp + si - 0x36], 0    ; C6 42 CA 00
L_0061:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0073                          ; 75 0C
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0088                          ; 74 15
L_0073:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x412                       ; B8 12 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_0088:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0094 -- offset 0x0094 -- 153 instr
; Dispatcher: tabla de decisiones cmp+jcc (153 instr).
; tags: calls_kernel, dispatcher
; calls (intra): sub_021C
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_0094:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     ax, word ptr [0x122]            ; A1 22 01
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     al, byte ptr [0x10a]            ; A0 0A 01
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        mov     al, byte ptr [0x10c]            ; A0 0C 01
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     byte ptr [bp - 2], 0            ; C6 46 FE 00
        mov     byte ptr [bp - 0xf], 0          ; C6 46 F1 00
        mov     byte ptr [0x149], 0x2c          ; C6 06 49 01 2C
        call    far _entry_30                   ; 9A F6 00 00 00 [FIXUP]
        mov     al, byte ptr [0x14d]            ; A0 4D 01
        cwde                                    ; 98
        push    ax                              ; 50
        mov     si, word ptr [0x11a]            ; 8B 36 1A 01
        lea     ax, [bp + si - 0x14]            ; 8D 42 EC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_021C                          ; E8 40 01
        mov     al, byte ptr [0x14c]            ; A0 4C 01
        cwde                                    ; 98
        push    ax                              ; 50
        mov     si, word ptr [0x11c]            ; 8B 36 1C 01
        lea     ax, [bp + si - 0x14]            ; 8D 42 EC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_021C                          ; E8 2C 01
        mov     byte ptr [0x149], 0x2a          ; C6 06 49 01 2A
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [0x14f]            ; A0 4F 01
        cwde                                    ; 98
        push    ax                              ; 50
        mov     si, word ptr [0x120]            ; 8B 36 20 01
        lea     ax, [bp + si - 0xc]             ; 8D 42 F4
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_021C                          ; E8 0E 01
        mov     al, byte ptr [0x14e]            ; A0 4E 01
        cwde                                    ; 98
        push    ax                              ; 50
        mov     si, word ptr [0x122]            ; 8B 36 22 01
        lea     ax, [bp + si - 0xc]             ; 8D 42 F4
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_021C                          ; E8 FA 00
        push    word ptr [0x14c]                ; FF 36 4C 01
        mov     si, word ptr [0x124]            ; 8B 36 24 01
        lea     ax, [bp + si - 0xc]             ; 8D 42 F4
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_021C                          ; E8 E7 00
        mov     word ptr [bp - 0xe], 0x10e      ; C7 46 F2 0E 01
        mov     si, word ptr [0x11a]            ; 8B 36 1A 01
        cmp     byte ptr [bp + si - 0x14], 0x32 ; 80 7A EC 32
        je      L_0168                          ; 74 24
        cmp     byte ptr [bp + si - 0x14], 0x31 ; 80 7A EC 31
        jne     L_0185                          ; 75 3B
        cmp     byte ptr [bp + si - 0x13], 0x32 ; 80 7A ED 32
        jg      L_0168                          ; 7F 18
        cmp     byte ptr [bp + si - 0x13], 0x32 ; 80 7A ED 32
        jne     L_0185                          ; 75 2F
        mov     si, word ptr [0x11c]            ; 8B 36 1C 01
        mov     al, byte ptr [bp + si - 0x14]   ; 8A 42 EC
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp + si - 0x13]   ; 8A 42 ED
        cwde                                    ; 98
        or      ax, cx                          ; 0B C1
        je      L_0185                          ; 74 1D
L_0168:
        mov     word ptr [bp - 0xe], 0x114      ; C7 46 F2 14 01
        cmp     word ptr [0x126], 0             ; 83 3E 26 01 00
        jne     L_0185                          ; 75 11
        mov     si, word ptr [0x11a]            ; 8B 36 1A 01
        cmp     byte ptr [bp + si - 0x13], 0x32 ; 80 7A ED 32
        jle     L_0185                          ; 7E 07
        dec     byte ptr [bp + si - 0x14]       ; FE 4A EC
        sub     byte ptr [bp + si - 0x13], 2    ; 80 6A ED 02
L_0185:
        cmp     word ptr [0x128], 0             ; 83 3E 28 01 00
        jne     L_01E2                          ; 75 56
        mov     si, word ptr [0x120]            ; 8B 36 20 01
        cmp     byte ptr [bp + si - 0xc], 0x30  ; 80 7A F4 30
        jne     L_01B1                          ; 75 1B
        lea     ax, [bp + si - 0xc]             ; 8D 42 F4
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + si - 0xb]             ; 8D 42 F5
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A C5 01 00 00 [FIXUP]
        mov     ax, word ptr [0x120]            ; A1 20 01
        cmp     word ptr [0x122], ax            ; 39 06 22 01
        jle     L_01B1                          ; 7E 03
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_01B1:
        mov     si, word ptr [bp - 0x16]        ; 8B 76 EA
        cmp     byte ptr [bp + si - 0xc], 0x30  ; 80 7A F4 30
        jne     L_01C9                          ; 75 0F
        lea     ax, [bp + si - 0xc]             ; 8D 42 F4
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + si - 0xb]             ; 8D 42 F5
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A DE 01 00 00 [FIXUP]
L_01C9:
        mov     si, word ptr [0x11a]            ; 8B 36 1A 01
        cmp     byte ptr [bp + si - 0x14], 0x30 ; 80 7A EC 30
        jne     L_01E2                          ; 75 0F
        lea     ax, [bp + si - 0x14]            ; 8D 42 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + si - 0x13]            ; 8D 42 ED
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A ED 01 00 00 [FIXUP]
L_01E2:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A F9 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 05 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x12a                       ; B8 2A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 11 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_021C -- offset 0x021C -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: small
; callers: sub_0094
;----------------------------------------------------------------------
L_021C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        jmp     L_0244                          ; EB 1D
L_0227:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], dl               ; 88 17
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_0244:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0227                          ; 75 D9
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

NOTEPAD_TEXT ENDS

        END
