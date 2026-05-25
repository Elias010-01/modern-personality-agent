; AUTO-GENERATED from original WRITE segment 14
; segment_size=259 bytes, flags=0xf170
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
; sub_0000 -- offset 0x0000 -- 104 instr
; Funcion compleja: 104 instrucciones, 0 llamadas, 5 branches.
; tags: complex, far
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALALLOC           ; 9A 3C 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_004E                          ; 75 26
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_280                  ; 9A 88 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0042                          ; 74 0E
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_004E                          ; EB 0C
L_0042:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A A6 00 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
L_004E:
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
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 9B 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0084                          ; 74 05
L_007F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00AC                          ; EB 28
L_0084:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_280                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00A1                          ; 74 11
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_007F                          ; EB DE
L_00A1:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
L_00AC:
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
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 25 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_00E6                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_00F9                          ; EB 13
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00E6 -- offset 0x00E6 -- 13 instr
; Funcion sin clasificar definitiva (13 instr).
; tags: wrapper
;----------------------------------------------------------------------
L_00E6:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_00F9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
