; AUTO-GENERATED from original LMOUSE segment 2
; segment_size=53 bytes, flags=0x0041
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

LMOUSE_DATA SEGMENT BYTE PUBLIC 'DATA'

        db      001h, 000h, 003h, 000h, 000h, 000h, 002h, 000h, 002h, 000h, 000h, 000h, 000h, 000h, 000h, 000h ; 01 00 03 00 00 00 02 00 02 00 00 00 00 00 00 00
        db      000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h ; 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        db      000h, 000h, 000h, 0ffh, 0ffh, 0f8h, 002h, 00bh, 0f7h, 002h, 000h, 0f8h, 003h, 00ch, 0efh, 000h ; 00 00 00 FF FF F8 02 0B F7 02 00 F8 03 0C EF 00
        db      000h, 000h, 030h, 06fh, 0ffh    ; 00 00 30 6F FF

LMOUSE_DATA ENDS

        END
