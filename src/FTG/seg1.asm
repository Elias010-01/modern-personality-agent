; AUTO-GENERATED from original FTG segment 1
; segment_size=385 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

FTG_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, 4                           ; B4 04
        mov     bx, 0x4654                      ; BB 54 46
        mov     cx, 0x4744                      ; B9 44 47
        mov     dx, 0x7461                      ; BA 61 74
        int     0x10                            ; CD 10
        cmp     ax, 0x4849                      ; 3D 49 48
        jne     L_0078                          ; 75 5A
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
        mov     word ptr [0x32], cx             ; 89 0E 32 00
        mov     word ptr [0x34], bx             ; 89 1E 34 00
        mov     es, bx                          ; 8E C3
        mov     bx, cx                          ; 8B D9
        mov     ax, word ptr es:[bx + 0x2f]     ; 26 8B 47 2F
        mov     word ptr [0x14], ax             ; A3 14 00
        mov     cl, byte ptr es:[bx + 0x2e]     ; 26 8A 4F 2E
        add     cl, 8                           ; 80 C1 08
        cmp     cl, 0xf                         ; 80 F9 0F
        jle     L_0045                          ; 7E 03
        add     cl, 0x60                        ; 80 C1 60
L_0045:
        mov     byte ptr [0xe], cl              ; 88 0E 0E 00
        cmp     cl, 0x64                        ; 80 F9 64
        jg      L_0057                          ; 7F 09
        mov     dx, 0x21                        ; BA 21 00
        sub     cl, 7                           ; 80 E9 07
        jmp     L_006C                          ; EB 16
        nop                                     ; 90
L_0057:
        mov     dx, 0xa1                        ; BA A1 00
        sub     cl, 0x6f                        ; 80 E9 6F
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        and     al, 0xfb                        ; 24 FB
        out     0x21, al                        ; E6 21
        jmp     L_0068                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0067 -- offset 0x0067 -- 52 instr
; Funcion mediana (52 instr, 0 calls).
; tags: far, medium
;----------------------------------------------------------------------
L_0067:
        iret                                    ; CF
L_0068:
        push    cs                              ; 0E
        call    L_0067                          ; E8 FB FF
L_006C:
        mov     ah, 0x7f                        ; B4 7F
        rol     ah, cl                          ; D2 C4
        mov     byte ptr [0xf], ah              ; 88 26 0F 00
        mov     word ptr [0x12], dx             ; 89 16 12 00
L_0078:
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
        mov     word ptr [0x2a], bx             ; 89 1E 2A 00
        mov     word ptr [0x2c], es             ; 8C 06 2C 00
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jne     L_0112                          ; 75 60
        mov     dx, word ptr [0x14]             ; 8B 16 14 00
        add     dx, 7                           ; 83 C2 07
        in      al, dx                          ; EC
        sub     dx, 3                           ; 83 EA 03
        in      al, dx                          ; EC
        mov     ax, word ptr [0x34]             ; A1 34 00
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [0x32]             ; 8B 3E 32 00
        mov     byte ptr es:[di + 0x43], 0      ; 26 C6 45 43 00
        mov     byte ptr es:[di + 0x44], 0xff   ; 26 C6 45 44 FF
        not     ah                              ; F6 D4
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, dx                          ; EC
        or      al, ah                          ; 0A C4
        out     dx, al                          ; EE
        jmp     L_00DC                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DB -- offset 0x00DB -- 20 instr
; Llama a servicios DOS via INT 21h (20 instr).
; tags: dos_caller, int_21
;----------------------------------------------------------------------
L_00DB:
        iret                                    ; CF
L_00DC:
        push    cs                              ; 0E
        call    L_00DB                          ; E8 FB FF
        mov     ah, 0x35                        ; B4 35
        mov     al, byte ptr [0xe]              ; A0 0E 00
        int     0x21                            ; CD 21
        mov     word ptr [0x2e], bx             ; 89 1E 2E 00
        mov     word ptr [0x30], es             ; 8C 06 30 00
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0xe]              ; A0 0E 00
        mov     dx, 0x36                        ; BA 36 00
        int     0x21                            ; CD 21
        mov     dx, word ptr [0x12]             ; 8B 16 12 00
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, dx                          ; EC
        and     al, byte ptr [0xf]              ; 22 06 0F 00
        out     dx, al                          ; EE
        mov     word ptr [0x10], 0xffff         ; C7 06 10 00 FF FF
        jmp     L_010E                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_010D -- offset 0x010D -- 47 instr
; Llama a servicios DOS via INT 21h (47 instr).
; tags: dos_caller, far, int_21
;----------------------------------------------------------------------
L_010D:
        iret                                    ; CF
L_010E:
        push    cs                              ; 0E
        call    L_010D                          ; E8 FB FF
L_0112:
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
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_016F                          ; 74 3B
        mov     dx, word ptr [0x12]             ; 8B 16 12 00
        in      al, dx                          ; EC
        mov     ah, byte ptr [0xf]              ; 8A 26 0F 00
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        jmp     L_0143                          ; EB 00
L_0143:
        out     dx, al                          ; EE
        mov     dx, word ptr [0x14]             ; 8B 16 14 00
        add     dx, 6                           ; 83 C2 06
        in      al, dx                          ; EC
        mov     ax, word ptr [0x34]             ; A1 34 00
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [0x32]             ; 8B 3E 32 00
        mov     ax, 0                           ; B8 00 00
        mov     word ptr es:[di + 0x43], ax     ; 26 89 45 43
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0xe]              ; A0 0E 00
        push    ds                              ; 1E
        lds     dx, ptr [0x2e]                  ; C5 16 2E 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
L_016F:
        jmp     L_0172                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0171 -- offset 0x0171 -- 11 instr
; Funcion sin clasificar definitiva (11 instr).
; tags: far, wrapper
;----------------------------------------------------------------------
L_0171:
        iret                                    ; CF
L_0172:
        push    cs                              ; 0E
        call    L_0171                          ; E8 FB FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

FTG_TEXT ENDS

        END
