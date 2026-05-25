; AUTO-GENERATED from original ATTMOUSE segment 1
; segment_size=388 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

ATTMOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [0], al                ; A2 00 00
        mov     ax, 1                           ; B8 01 00
        mov     bx, 0xec                        ; BB EC 00
        mov     si, 0xf6                        ; BE F6 00
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0079                          ; 74 45
        mov     byte ptr [0], 0xff              ; C6 06 00 00 FF
        mov     word ptr [4], 0x32              ; C7 06 04 00 32 00
        mov     word ptr [2], 2                 ; C7 06 02 00 02 00
        mov     bx, 0xec                        ; BB EC 00
        mov     si, 0xfa                        ; BE FA 00
        push    ds                              ; 1E
        push    bx                              ; 53
        push    ds                              ; 1E
        push    si                              ; 56
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 2C 00 00 00 [FIXUP]
        cmp     ax, 3                           ; 3D 03 00
        jne     L_005D                          ; 75 03
        mov     word ptr [2], ax                ; A3 02 00
L_005D:
        mov     ax, 0x3533                      ; B8 33 35
        int     0x21                            ; CD 21
        cmp     word ptr es:[bx + 0x10], 0x4f4c ; 26 81 7F 10 4C 4F
        jne     L_0079                          ; 75 0F
        mov     word ptr [0x10], 0xffff         ; C7 06 10 00 FF FF
        mov     ax, 0x20                        ; B8 20 00
        int     0x33                            ; CD 33
        mov     word ptr [0x12], bx             ; 89 1E 12 00
L_0079:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
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
        mov     word ptr [0x14], bx             ; 89 1E 14 00
        mov     word ptr [0x16], es             ; 8C 06 16 00
        cmp     word ptr [0xe], 0               ; 83 3E 0E 00 00
        jne     L_0107                          ; 75 3D
        cmp     byte ptr [0], 0                 ; 80 3E 00 00 00
        je      L_0107                          ; 74 36
        mov     ax, 0x3509                      ; B8 09 35
        int     0x21                            ; CD 21
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     word ptr [0x1a], es             ; 8C 06 1A 00
        mov     ax, 0x2509                      ; B8 09 25
        mov     dx, 0x2e                        ; BA 2E 00
        int     0x21                            ; CD 21
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_00F7                          ; 74 0A
        mov     ax, 0x21                        ; B8 21 00
        xor     bx, bx                          ; 33 DB
        int     0x33                            ; CD 33
        jmp     L_0101                          ; EB 0B
        nop                                     ; 90
L_00F7:
        lea     bx, [0x1c]                      ; 8D 1E 1C 00
        mov     cx, 5                           ; B9 05 00
        call    L_0114                          ; E8 13 00
L_0101:
        mov     word ptr [0xe], 0xffff          ; C7 06 0E 00 FF FF
L_0107:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0114 -- offset 0x0114 -- 14 instr
; Iterador con bucle (14 instr).
; tags: iterator, loop
; callers: sub_012C
;----------------------------------------------------------------------
L_0114:
        pushf                                   ; 9C
        cli                                     ; FA
L_0116:
        in      al, 0x64                        ; E4 64
        test    al, 2                           ; A8 02
        jne     L_0116                          ; 75 FA
        push    cx                              ; 51
        mov     cx, 0x64                        ; B9 64 00
L_0120:
        loop    L_0120                          ; E2 FE
        pop     cx                              ; 59
        mov     al, byte ptr [bx]               ; 8A 07
        out     0x60, al                        ; E6 60
        inc     bx                              ; 43
        loop    L_0116                          ; E2 EC
        jmp     L_012D                          ; EB 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_012C -- offset 0x012C -- 40 instr
; Llama a servicios DOS via INT 21h (40 instr).
; tags: dos_caller, far, int_21, int_33
; calls (intra): sub_0114
;----------------------------------------------------------------------
L_012C:
        iret                                    ; CF
L_012D:
        push    cs                              ; 0E
        call    L_012C                          ; E8 FB FF
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
        cmp     word ptr [0xe], 0               ; 83 3E 0E 00 00
        je      L_0179                          ; 74 34
        cmp     byte ptr [0], 0                 ; 80 3E 00 00 00
        je      L_0179                          ; 74 2D
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_015E                          ; 74 0B
        mov     ax, 0x21                        ; B8 21 00
        mov     bx, word ptr [0x12]             ; 8B 1E 12 00
        int     0x33                            ; CD 33
        jmp     L_0168                          ; EB 0A
L_015E:
        lea     bx, [0x21]                      ; 8D 1E 21 00
        mov     cx, 0xa                         ; B9 0A 00
        call    L_0114                          ; E8 AC FF
L_0168:
        mov     ax, 0x2509                      ; B8 09 25
        push    ds                              ; 1E
        lds     dx, ptr [0x18]                  ; C5 16 18 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0xe], 0               ; C7 06 0E 00 00 00
L_0179:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

ATTMOUSE_TEXT ENDS

        END
