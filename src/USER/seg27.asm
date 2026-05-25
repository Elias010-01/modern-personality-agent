; AUTO-GENERATED from original USER segment 27
; segment_size=279 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_001C                          ; 74 04
        sub     di, di                          ; 2B FF
        jmp     L_002E                          ; EB 12
L_001C:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_521                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [si + 0x38]        ; 03 5C 38
        mov     di, word ptr [bx]               ; 8B 3F
L_002E:
        mov     word ptr [bp - 4], di           ; 89 7E FC
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 8E 00 00 00 [FIXUP]
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ds           ; 8C 5E FA
        jmp     L_005E                          ; EB 1C
L_0042:
        mov     word ptr [bp - 4], di           ; 89 7E FC
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_51                   ; 9A A0 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_005A                          ; 74 04
        inc     word ptr [bp - 8]               ; FF 46 F8
        inc     di                              ; 47
L_005A:
        inc     word ptr [bp - 8]               ; FF 46 F8
        inc     di                              ; 47
L_005E:
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        jge     L_0042                          ; 7D DF
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A B1 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [si + 0x12]        ; 03 44 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00AE                          ; 74 06
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        add     word ptr [bp + 6], ax           ; 01 46 06
L_00AE:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        pop     si                              ; 5E
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
        sub     sp, 0x16                        ; 83 EC 16
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     word ptr [bp - 4], 0xa          ; C7 46 FC 0A 00
        jmp     L_00EA                          ; EB 0E
L_00DC:
        dec     word ptr [bp - 4]               ; FF 4E FC
        jne     L_00E5                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_010C                          ; EB 27
L_00E5:
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
L_00EA:
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 0x102                       ; B8 02 01
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00DC                          ; 74 DA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        or      ax, word ptr [bp + 6]           ; 0B 46 06
L_010C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

USER_TEXT ENDS

        END
