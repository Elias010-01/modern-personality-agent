; AUTO-GENERATED from original WRITE segment 75
; segment_size=70 bytes, flags=0xf130
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
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0019                          ; 74 05
        mov     ax, 5                           ; B8 05 00
        jmp     L_001C                          ; EB 03
L_0019:
        mov     ax, 6                           ; B8 06 00
L_001C:
        push    ax                              ; 50
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x794]                ; FF 36 94 07
        mov     ax, 0x1102                      ; B8 02 11
        push    ax                              ; 50
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1102                      ; B8 02 11
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
