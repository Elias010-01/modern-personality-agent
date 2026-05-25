; AUTO-GENERATED from original NOMOUSE segment 1
; segment_size=56 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOMOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     byte ptr [bx + si], al          ; 00 00
        add     word ptr [bx + si], ax          ; 01 00
        add     byte ptr [bx + si], al          ; 00 00
        add     al, byte ptr [bx + si]          ; 02 00
        add     al, byte ptr [bx + si]          ; 02 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        retf                                    ; CB
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        push    si                              ; 56
        push    di                              ; 57
        push    cs                              ; 0E
        pop     ds                              ; 1F
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     si, 0                           ; BE 00 00
        mov     ax, 0xe                         ; B8 0E 00
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     ax, cx                          ; 2B C1
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        retf    4                               ; CA 04 00
        retf                                    ; CB

NOMOUSE_TEXT ENDS

        END
