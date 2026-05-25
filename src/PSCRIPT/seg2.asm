; AUTO-GENERATED from original PSCRIPT segment 2
; segment_size=35 bytes, flags=0x1d70
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PSCRIPT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    cx                              ; 51
        call    far KERNEL.LOCALINIT            ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        not     ax                              ; F7 D0
        pop     di                              ; 5F
        pop     si                              ; 5E
        lea     sp, [bp - 2]                    ; 8D 66 FE
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PSCRIPT_TEXT ENDS

        END
