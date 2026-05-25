; AUTO-GENERATED from original MSMOUSE1 segment 1
; segment_size=449 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSMOUSE1_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        jcxz    L_0018                          ; E3 08
        push    ax                              ; 50
        push    ax                              ; 50
        push    cx                              ; 51
        call    far KERNEL.LOCALINIT            ; 9A FF FF 00 00 [FIXUP]
L_0018:
        mov     byte ptr [0], 0                 ; C6 06 00 00 00
        call    L_0034                          ; E8 14 00
        or      ax, ax                          ; 0B C0
        je      L_0029                          ; 74 05
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
L_0029:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0034 -- offset 0x0034 -- 97 instr
; Iterador con instrucciones de string (movsb/scasb/...) (97 instr).
; tags: complex_iterator, far, loop, string_op
; callers: sub_0101
;----------------------------------------------------------------------
L_0034:
        mov     si, 0x11a                       ; BE 1A 01
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [0xe], ax              ; A3 0E 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x10], al             ; A2 10 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x11], al             ; A2 11 00
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 3                           ; 83 C2 03
        mov     al, 0x80                        ; B0 80
        out     dx, al                          ; EE
        sub     dx, 2                           ; 83 EA 02
        xor     al, al                          ; 32 C0
        jmp     L_0054                          ; EB 00
L_0054:
        out     dx, al                          ; EE
        dec     dx                              ; 4A
        mov     al, 0x60                        ; B0 60
        jmp     L_005A                          ; EB 00
L_005A:
        out     dx, al                          ; EE
        add     dx, 3                           ; 83 C2 03
        mov     al, 3                           ; B0 03
        jmp     L_0062                          ; EB 00
L_0062:
        out     dx, al                          ; EE
        sub     dx, 2                           ; 83 EA 02
        xor     al, al                          ; 32 C0
        jmp     L_006A                          ; EB 00
L_006A:
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 4                           ; 83 C2 04
        mov     al, 0xb                         ; B0 0B
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        xor     cx, cx                          ; 33 C9
L_007B:
        in      al, dx                          ; EC
        loop    L_007B                          ; E2 FD
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        inc     dx                              ; 42
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     bx, 0x400                       ; BB 00 04
        cmp     word ptr es:[bx], dx            ; 26 39 17
        je      L_009E                          ; 74 08
        add     bx, 2                           ; 83 C3 02
        cmp     word ptr es:[bx], dx            ; 26 39 17
        jne     L_00A2                          ; 75 04
L_009E:
        mov     word ptr [0x1e], bx             ; 89 1E 1E 00
L_00A2:
        mov     word ptr [4], 0x18              ; C7 06 04 00 18 00
        mov     al, 1                           ; B0 01
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
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
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr [0x16], bx             ; 89 1E 16 00
        mov     word ptr [0x18], es             ; 8C 06 18 00
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_0147                          ; 75 56
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, ah                          ; 0A C4
        out     0x21, al                        ; E6 21
        jmp     L_0102                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0101 -- offset 0x0101 -- 25 instr
; Llama a servicios DOS via INT 21h (25 instr).
; tags: dos_caller, int_21
; calls (intra): sub_0034
;----------------------------------------------------------------------
L_0101:
        iret                                    ; CF
L_0102:
        push    cs                              ; 0E
        call    L_0101                          ; E8 FB FF
        call    L_0034                          ; E8 2B FF
        mov     bx, word ptr [0x1e]             ; 8B 1E 1E 00
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        xchg    word ptr es:[bx], ax            ; 26 87 07
        mov     word ptr [0x20], ax             ; A3 20 00
        mov     ah, 0x35                        ; B4 35
        mov     al, byte ptr [0x10]             ; A0 10 00
        int     0x21                            ; CD 21
        mov     word ptr [0x1a], bx             ; 89 1E 1A 00
        mov     word ptr [0x1c], es             ; 8C 06 1C 00
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        mov     dx, 0x22                        ; BA 22 00
        int     0x21                            ; CD 21
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        and     al, byte ptr [0x11]             ; 22 06 11 00
        out     0x21, al                        ; E6 21
        mov     word ptr [0x12], 0xffff         ; C7 06 12 00 FF FF
        jmp     L_0143                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0142 -- offset 0x0142 -- 54 instr
; Llama a servicios DOS via INT 21h (54 instr).
; tags: dos_caller, far, int_21, int_33
;----------------------------------------------------------------------
L_0142:
        iret                                    ; CF
L_0143:
        push    cs                              ; 0E
        call    L_0142                          ; E8 FB FF
L_0147:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        pushf                                   ; 9C
        cli                                     ; FA
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_01AF                          ; 74 46
        mov     ax, 0x3533                      ; B8 33 35
        int     0x21                            ; CD 21
        mov     ax, es                          ; 8C C0
        or      ax, bx                          ; 0B C3
        je      L_017C                          ; 74 08
        xor     ax, ax                          ; 33 C0
        int     0x33                            ; CD 33
        or      ax, ax                          ; 0B C0
        jne     L_018A                          ; 75 0E
L_017C:
        in      al, 0x21                        ; E4 21
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        jmp     L_0188                          ; EB 00
L_0188:
        out     0x21, al                        ; E6 21
L_018A:
        mov     bx, word ptr [0x1e]             ; 8B 1E 1E 00
        or      bx, bx                          ; 0B DB
        je      L_019C                          ; 74 0A
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     word ptr es:[bx], ax            ; 26 89 07
L_019C:
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        push    ds                              ; 1E
        lds     dx, ptr [0x1a]                  ; C5 16 1A 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
L_01AF:
        jmp     L_01B2                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B1 -- offset 0x01B1 -- 11 instr
; Funcion sin clasificar definitiva (11 instr).
; tags: far, wrapper
;----------------------------------------------------------------------
L_01B1:
        iret                                    ; CF
L_01B2:
        push    cs                              ; 0E
        call    L_01B1                          ; E8 FB FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

MSMOUSE1_TEXT ENDS

        END
