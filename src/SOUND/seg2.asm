; AUTO-GENERATED from original SOUND segment 2
; segment_size=140 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

SOUND_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    bx                              ; 53
        dec     di                              ; 4F
        push    bp                              ; 55
        dec     si                              ; 4E
        inc     sp                              ; 44
        add     byte ptr [si - 0x6f28], cl      ; 00 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, 0                           ; B8 00 00
        push    cs                              ; 0E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     bx, 1                           ; BB 01 00
        push    ax                              ; 50
        push    bx                              ; 53
        call    far KERNEL.GETCODEHANDLE        ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xfffe                      ; B8 FE FF
        jcxz    L_0038                          ; E3 0B
        push    cs                              ; 0E
        mov     ax, 0x38                        ; B8 38 00
        push    ax                              ; 50
        push    cx                              ; 51
        mov     ax, 0x5d                        ; B8 5D 00
        push    ax                              ; 50
        retf                                    ; CB
L_0038:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        add     byte ptr [bp + di], dh          ; 00 33
        shr     byte ptr [0x6fe], 0x43          ; C0 2E FE 06 43
        add     byte ptr [0x3e80], ch           ; 00 2E 80 3E
        inc     bx                              ; 43
        add     byte ptr [bx + di], al          ; 00 01
        jne     L_0085                          ; 75 32
        mov     al, 0xb6                        ; B0 B6
        out     0x43, al                        ; E6 43
        mov     ax, 0x533                       ; B8 33 05
        out     0x42, al                        ; E6 42
        mov     al, ah                          ; 8A C4
        out     0x42, al                        ; E6 42
        jmp     L_0062                          ; EB 00
L_0062:
        in      al, 0x61                        ; E4 61
        mov     ah, al                          ; 8A E0
        or      al, 3                           ; 0C 03
        out     0x61, al                        ; E6 61
        mov     cx, 0x2400                      ; B9 00 24
L_006D:
        loop    L_006D                          ; E2 FE
        mov     cx, 0x633                       ; B9 33 06
        mov     al, cl                          ; 8A C1
        out     0x42, al                        ; E6 42
        mov     al, ch                          ; 8A C5
        out     0x42, al                        ; E6 42
        mov     cx, 0x3400                      ; B9 00 34
L_007D:
        loop    L_007D                          ; E2 FE
        mov     al, ah                          ; 8A C4
        out     0x61, al                        ; E6 61
        mov     al, 1                           ; B0 01
L_0085:
        dec     byte ptr cs:[0x43]              ; 2E FE 0E 43 00
        db      0cah                            ; CA
        db      002h                            ; 02

SOUND_TEXT ENDS

        END
