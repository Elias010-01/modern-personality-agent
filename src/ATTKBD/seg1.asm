; AUTO-GENERATED from original ATTKBD segment 1
; segment_size=52 bytes, flags=0xf070
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ATTKBD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     ax, 0x40                        ; B8 40 00
        mov     ds, ax                          ; 8E D8
        test    byte ptr [0x96], 0x10           ; F6 06 96 00 10
        pop     ds                              ; 1F
        je      L_0027                          ; 74 0F
        mov     ah, 0x91                        ; B4 91
        int     0x16                            ; CD 16
        test    ah, 0x80                        ; F6 C4 80
        jne     L_0027                          ; 75 06
        mov     byte ptr [0x20], 1              ; C6 06 20 00 01
        nop                                     ; 90
L_0027:
        xor     ax, ax                          ; 33 C0
        not     ax                              ; F7 D0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

ATTKBD_TEXT ENDS

        END
