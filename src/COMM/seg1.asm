; AUTO-GENERATED from original COMM segment 1
; segment_size=2670 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

COMM_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; INICOM -- 15 instr
; Wrapper que delega en sub_01D1.
; tags: far, wrapper
; calls (intra): sub_01D1
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; INICOM  (offset 0x0000, size 27 bytes)
;-----------------------------------------------------------------------
INICOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_01D1                          ; E8 C1 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
INICOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETCOM -- 15 instr
; Setter: cambia com.
; tags: far, wrapper
; calls (intra): sub_044D
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETCOM  (offset 0x001B, size 27 bytes)
;-----------------------------------------------------------------------
SETCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_044D                          ; E8 22 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETCOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETQUE -- 16 instr
; Setter: cambia que.
; tags: far, small
; calls (intra): sub_06A3
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SETQUE  (offset 0x0036, size 30 bytes)
;-----------------------------------------------------------------------
SETQUE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_06A3                          ; E8 5A 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETQUE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; RECCOM -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: far, small
; calls (intra): sub_07EE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; RECCOM  (offset 0x0054, size 39 bytes)
;-----------------------------------------------------------------------
RECCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_07EE                          ; E8 8A 07
        mov     cx, ax                          ; 8B C8
        mov     ah, 0                           ; B4 00
        jne     L_0070                          ; 75 06
        mov     ax, 0xfffe                      ; B8 FE FF
        jcxz    L_0070                          ; E3 01
        inc     ax                              ; 40
L_0070:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
RECCOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SNDCOM -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: far, small
; calls (intra): sub_02E7
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SNDCOM  (offset 0x007B, size 30 bytes)
;-----------------------------------------------------------------------
SNDCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        call    L_02E7                          ; E8 59 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SNDCOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CTX -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: far, small
; calls (intra): sub_02C0
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CTX  (offset 0x0099, size 30 bytes)
;-----------------------------------------------------------------------
CTX PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        call    L_02C0                          ; E8 14 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CTX ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; TRMCOM -- 15 instr
; Wrapper que delega en sub_032D.
; tags: far, wrapper
; calls (intra): sub_032D
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; TRMCOM  (offset 0x00B7, size 27 bytes)
;-----------------------------------------------------------------------
TRMCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_032D                          ; E8 66 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
TRMCOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; STACOM -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: far, small
; calls (intra): sub_06F6
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; STACOM  (offset 0x00D2, size 34 bytes)
;-----------------------------------------------------------------------
STACOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_06F6                          ; E8 0F 06
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
STACOM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CEXTFCN -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: far, small
; calls (intra): sub_076C
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CEXTFCN  (offset 0x00F4, size 30 bytes)
;-----------------------------------------------------------------------
CEXTFCN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_076C                          ; E8 65 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEXTFCN ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CFLUSH -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: far, small
; calls (intra): sub_086F
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CFLUSH  (offset 0x0112, size 34 bytes)
;-----------------------------------------------------------------------
CFLUSH PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bh, byte ptr [bp + 6]           ; 8A 7E 06
        call    L_086F                          ; E8 48 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CFLUSH ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CEVT -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: far, small
; calls (intra): sub_06C8
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CEVT  (offset 0x0134, size 30 bytes)
;-----------------------------------------------------------------------
CEVT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_06C8                          ; E8 81 05
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEVT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CEVTGET -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: far, small
; calls (intra): sub_06DE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CEVTGET  (offset 0x0152, size 30 bytes)
;-----------------------------------------------------------------------
CEVTGET PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_06DE                          ; E8 79 05
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEVTGET ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CSETBRK -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: far, small
; calls (intra): sub_0741
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CSETBRK  (offset 0x0170, size 31 bytes)
;-----------------------------------------------------------------------
CSETBRK PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_0741                          ; E8 BF 05
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CSETBRK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CCLRBRK -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: far, small
; calls (intra): sub_0746
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CCLRBRK  (offset 0x018F, size 31 bytes)
;-----------------------------------------------------------------------
CCLRBRK PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_0746                          ; E8 A5 05
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CCLRBRK ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETDCB -- 19 instr
; Getter: devuelve dcb.
; tags: far, small
; calls (intra): sub_07DE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETDCB  (offset 0x01AE, size 31 bytes)
;-----------------------------------------------------------------------
GETDCB PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_07DE                          ; E8 1E 06
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETDCB ENDP

        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01D1 -- offset 0x01D1 -- 108 instr
; Llama a servicios DOS via INT 21h (108 instr).
; tags: dos_caller, int_21, int_2f
; callers: INICOM
; calls (intra): sub_03CD, sub_044D, sub_05C6, sub_0677
;----------------------------------------------------------------------
L_01D1:
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr es:[bx]            ; 26 8A 27
        call    L_0677                          ; E8 9E 04
        jae     L_01E1                          ; 73 06
        mov     ax, 0xffff                      ; B8 FF FF
L_01DE:
        jmp     L_02BD                          ; E9 DC 00
L_01E1:
        push    ds                              ; 1E
        mov     word ptr cs:[0x1cd], ds         ; 2E 8C 1E CD 01
        mov     di, word ptr [si + 0x1e]        ; 8B 7C 1E
        mov     ax, 0xffff                      ; B8 FF FF
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [0xe]              ; A0 0E 00
        xor     cx, cx                          ; 33 C9
        mov     ds, cx                          ; 8E D9
        xchg    word ptr [di], cx               ; 87 0D
        pop     ds                              ; 1F
        mov     byte ptr [0xfc], al             ; A2 FC 00
        mov     ax, 0xfff6                      ; B8 F6 FF
        jcxz    L_01DE                          ; E3 DD
        mov     word ptr [si + 0x1c], cx        ; 89 4C 1C
        test    di, 8                           ; F7 C7 08 00
        je      L_023F                          ; 74 35
        call    L_044D                          ; E8 40 02
        mov     ax, 0x1e                        ; B8 1E 00
        cmp     byte ptr [0xfc], 0xfc           ; 80 3E FC 00 FC
        je      L_021A                          ; 74 03
        mov     ax, 0xa                         ; B8 0A 00
L_021A:
        mov     word ptr [0xfd], ax             ; A3 FD 00
        call    L_05C6                          ; E8 A6 03
        jb      L_023D                          ; 72 1B
        mov     dl, byte ptr [si]               ; 8A 14
        and     dx, 3                           ; 81 E2 03 00
        mov     ax, 0x203                       ; B8 03 02
        int     0x2f                            ; CD 2F
        mov     ax, 0x201                       ; B8 01 02
        int     0x2f                            ; CD 2F
        xor     cx, cx                          ; 33 C9
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    ds                              ; 1E
        mov     ds, cx                          ; 8E D9
        mov     word ptr [bx], cx               ; 89 0F
        pop     ds                              ; 1F
L_023D:
        jmp     L_02B8                          ; EB 79
L_023F:
        push    es                              ; 06
        xor     di, di                          ; 33 FF
        mov     es, di                          ; 8E C7
        mov     di, 0x30                        ; BF 30 00
        mov     dx, 0x8a0                       ; BA A0 08
        mov     ax, 0xc10                       ; B8 10 0C
        cmp     ch, 3                           ; 80 FD 03
        je      L_025B                          ; 74 09
        mov     di, 0x2c                        ; BF 2C 00
        mov     dx, 0x89a                       ; BA 9A 08
        mov     ax, 0xb08                       ; B8 08 0B
L_025B:
        mov     word ptr [si + 0x48], ax        ; 89 44 48
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, byte ptr [si + 0x48]        ; 0A 44 48
        jmp     L_0266                          ; EB 00
L_0266:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        les     di, ptr es:[di]                 ; 26 C4 3D
        mov     word ptr [si + 0x4a], di        ; 89 7C 4A
        mov     word ptr [si + 0x4c], es        ; 8C 44 4C
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     al, ah                          ; 8A C4
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ah, 0x25                        ; B4 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     dx, cx                          ; 8B D1
        xor     ax, ax                          ; 33 C0
        inc     dx                              ; 42
        out     dx, al                          ; EE
        add     dl, 3                           ; 80 C2 03
        jmp     L_0288                          ; EB 00
L_0288:
        out     dx, al                          ; EE
        push    es                              ; 06
        push    ds                              ; 1E
        pop     es                              ; 07
        lea     di, [si + 0x32]                 ; 8D 7C 32
        mov     cx, 6                           ; B9 06 00
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     es                              ; 07
        mov     byte ptr [si + 0x42], al        ; 88 44 42
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        call    L_044D                          ; E8 AF 01
        je      L_02A7                          ; 74 07
        push    ax                              ; 50
        call    L_03CD                          ; E8 29 01
        pop     ax                              ; 58
        jmp     L_02BD                          ; EB 16
L_02A7:
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        mov     ah, byte ptr [si + 0x48]        ; 8A 64 48
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        mov     byte ptr [si + 0x3e], 0         ; C6 44 3E 00
L_02B8:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
L_02BD:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02C0 -- offset 0x02C0 -- 20 instr
; Funcion sin clasificar definitiva (20 instr).
; tags: small
; callers: CTX
; calls (intra): sub_02E7, sub_0656, sub_0677
;----------------------------------------------------------------------
L_02C0:
        push    si                              ; 56
        call    L_0677                          ; E8 B3 03
        jb      L_02E0                          ; 72 1A
        jns     L_02D1                          ; 79 09
        call    L_02E7                          ; E8 1C 00
        or      ax, ax                          ; 0B C0
        jne     L_02E2                          ; 75 13
        jmp     L_02DE                          ; EB 0D
L_02D1:
        test    byte ptr [si + 0x3e], 0x40      ; F6 44 3E 40
        jne     L_02E2                          ; 75 0B
        mov     ah, al                          ; 8A E0
        cli                                     ; FA
        call    L_0656                          ; E8 79 03
        sti                                     ; FB
L_02DE:
        xor     ax, ax                          ; 33 C0
L_02E0:
        pop     si                              ; 5E
        ret                                     ; C3
L_02E2:
        mov     ax, 0x4000                      ; B8 00 40
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02E7 -- offset 0x02E7 -- 32 instr
; Funcion mediana (32 instr, 4 calls).
; tags: medium
; callers: SNDCOM, sub_02C0
; calls (intra): sub_03E8, sub_05E6, sub_065D, sub_0677
;----------------------------------------------------------------------
L_02E7:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 8B 03
        jb      L_0321                          ; 72 33
        jns     L_02F7                          ; 79 07
        xor     ch, ch                          ; 32 ED
        call    L_05E6                          ; E8 F1 02
        jmp     L_0321                          ; EB 2A
L_02F7:
        push    ax                              ; 50
        call    L_03E8                          ; E8 ED 00
        pop     ax                              ; 58
        jne     L_0328                          ; 75 2A
        mov     cx, word ptr [si + 0x30]        ; 8B 4C 30
        cmp     cx, word ptr [si + 0x38]        ; 3B 4C 38
        jle     L_0324                          ; 7E 1E
        les     di, ptr [si + 0x2c]             ; C4 7C 2C
        mov     bx, word ptr [si + 0x3c]        ; 8B 5C 3C
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        cmp     bx, cx                          ; 3B D9
        jb      L_0316                          ; 72 02
        xor     bx, bx                          ; 33 DB
L_0316:
        mov     word ptr [si + 0x3c], bx        ; 89 5C 3C
        inc     word ptr [si + 0x38]            ; FF 44 38
        call    L_065D                          ; E8 3E 03
        xor     ax, ax                          ; 33 C0
L_0321:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_0324:
        or      byte ptr [si + 0x1b], 1         ; 80 4C 1B 01
L_0328:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        jmp     L_0321                          ; EB F4
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_032D -- offset 0x032D -- 40 instr
; Funcion mediana (40 instr, 5 calls).
; tags: calls_system, medium
; callers: TRMCOM
; calls (intra): sub_038D, sub_0677, sub_07EE
; calls (inter): SYSTEM.CREATESYSTEMTIMER, SYSTEM.KILLSYSTEMTIMER
;----------------------------------------------------------------------
L_032D:
        push    si                              ; 56
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        call    L_0677                          ; E8 43 03
        jb      L_038A                          ; 72 54
        js      L_0382                          ; 78 4A
        push    ax                              ; 50
        or      byte ptr [si + 0x42], 0x80      ; 80 4C 42 80
        mov     word ptr [si + 0x1a], cx        ; 89 4C 1A
        mov     word ptr [si + 0x32], cx        ; 89 4C 32
        call    L_07EE                          ; E8 A8 04
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0381                          ; E3 36
        mov     ax, 0x3e8                       ; B8 E8 03
        mov     bx, 0x5e0                       ; BB E0 05
        push    ax                              ; 50
        push    cs                              ; 0E
        push    bx                              ; 53
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A FF FF 00 00 [FIXUP]
L_0359:
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0375                          ; E3 17
        mov     word ptr cs:[0x1cf], 0x1e       ; 2E C7 06 CF 01 1E 00
L_0365:
        cmp     word ptr [si + 0x38], cx        ; 39 4C 38
        jne     L_0359                          ; 75 EF
        cmp     word ptr cs:[0x1cf], 0          ; 2E 83 3E CF 01 00
        jge     L_0365                          ; 7D F3
        mov     cx, 0xfffe                      ; B9 FE FF
L_0375:
        or      ax, ax                          ; 0B C0
        je      L_0381                          ; 74 08
        push    cx                              ; 51
        push    ax                              ; 50
        call    far SYSTEM.KILLSYSTEMTIMER      ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
L_0381:
        pop     ax                              ; 58
L_0382:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        call    L_038D                          ; E8 05 00
        mov     ax, cx                          ; 8B C1
L_038A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_038D -- offset 0x038D -- 31 instr
; Funcion mediana (31 instr, 1 calls).
; tags: int_2f, medium
; callers: sub_032D
; calls (intra): sub_05C6
;----------------------------------------------------------------------
L_038D:
        or      ah, ah                          ; 0A E4
        jns     L_03AB                          ; 79 1A
        call    L_05C6                          ; E8 32 02
        jb      L_03A6                          ; 72 10
        mov     dl, byte ptr [si]               ; 8A 14
        and     dx, 3                           ; 81 E2 03 00
        mov     ax, 0x202                       ; B8 02 02
        int     0x2f                            ; CD 2F
        mov     ax, 0x204                       ; B8 04 02
        int     0x2f                            ; CD 2F
L_03A6:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        jmp     L_03DC                          ; EB 31
L_03AB:
        inc     dx                              ; 42
        xor     ax, ax                          ; 33 C0
        out     dx, al                          ; EE
        add     dl, 4                           ; 80 C2 04
        jmp     L_03B4                          ; EB 00
L_03B4:
        in      al, dx                          ; EC
        and     al, 0x60                        ; 24 60
        cmp     al, 0x60                        ; 3C 60
        jne     L_03B4                          ; 75 F9
        dec     dx                              ; 4A
        xor     al, al                          ; 32 C0
        out     dx, al                          ; EE
        sub     dl, 4                           ; 80 EA 04
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, byte ptr [si + 0x48]        ; 0A 44 48
        jmp     L_03CA                          ; EB 00
L_03CA:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03CD -- offset 0x03CD -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, int_21
; callers: sub_01D1
;----------------------------------------------------------------------
L_03CD:
        push    ds                              ; 1E
        mov     al, byte ptr [si + 0x49]        ; 8A 44 49
        lds     dx, ptr [si + 0x4a]             ; C5 54 4A
        mov     ah, 0x25                        ; B4 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
L_03DC:
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    ds                              ; 1E
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        mov     word ptr [bx], dx               ; 89 17
        pop     ds                              ; 1F
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E8 -- offset 0x03E8 -- 47 instr
; Iterador con bucle (47 instr).
; tags: int_15, iterator, loop
; callers: sub_02E7
;----------------------------------------------------------------------
L_03E8:
        push    di                              ; 57
        xor     di, di                          ; 33 FF
L_03EB:
        mov     cx, 0xb                         ; B9 0B 00
L_03EE:
        xor     dh, dh                          ; 32 F6
        mov     al, byte ptr [si + 0x45]        ; 8A 44 45
        and     al, byte ptr [si + 0x46]        ; 22 44 46
        xor     al, byte ptr [si + 0x46]        ; 32 44 46
        je      L_0449                          ; 74 4E
        mov     ah, al                          ; 8A E0
        cmp     di, word ptr [si + 6]           ; 3B 7C 06
        jb      L_0409                          ; 72 07
        shl     ah, 1                           ; D0 E4
        jae     L_0409                          ; 73 03
        or      dh, 0x80                        ; 80 CE 80
L_0409:
        cmp     di, word ptr [si + 0xa]         ; 3B 7C 0A
        jb      L_0417                          ; 72 09
        shr     ah, 1                           ; D0 EC
        shr     ah, 1                           ; D0 EC
        jae     L_0417                          ; 73 03
        or      dh, 0x40                        ; 80 CE 40
L_0417:
        cmp     di, word ptr [si + 8]           ; 3B 7C 08
        jb      L_0423                          ; 72 07
        shr     ah, 1                           ; D0 EC
        jae     L_0423                          ; 73 03
        or      dh, 0x20                        ; 80 CE 20
L_0423:
        or      dh, dh                          ; 0A F6
        jne     L_0442                          ; 75 1B
        cmp     byte ptr [0xfc], 0xfc           ; 80 3E FC 00 FC
        je      L_0432                          ; 74 04
        loop    L_03EE                          ; E2 BE
        jmp     L_043F                          ; EB 0D
L_0432:
        push    bx                              ; 53
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        mov     dx, 0x3e8                       ; BA E8 03
        mov     ah, 0x86                        ; B4 86
        int     0x15                            ; CD 15
        pop     di                              ; 5F
        pop     bx                              ; 5B
L_043F:
        inc     di                              ; 47
        jmp     L_03EB                          ; EB A9
L_0442:
        xor     ah, ah                          ; 32 E4
        mov     al, dh                          ; 8A C6
        or      byte ptr [si + 0x1a], al        ; 08 44 1A
L_0449:
        or      al, al                          ; 0A C0
        pop     di                              ; 5F
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_044D -- offset 0x044D -- 95 instr
; Iterador con bucle (95 instr).
; tags: complex_iterator, loop
; callers: SETCOM, sub_01D1
; calls (intra): sub_050E, sub_0522, sub_0549, sub_056A, sub_0677
;----------------------------------------------------------------------
L_044D:
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr es:[bx]            ; 26 8A 27
        call    L_0677                          ; E8 22 02
        mov     ax, 0xffff                      ; B8 FF FF
        jb      L_0461                          ; 72 07
        jns     L_0466                          ; 79 0A
        call    L_050E                          ; E8 AF 00
L_045F:
        xor     ax, ax                          ; 33 C0
L_0461:
        or      ax, ax                          ; 0B C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_0466:
        call    L_0549                          ; E8 E0 00
        jcxz    L_0461                          ; E3 F6
        call    L_056A                          ; E8 FC 00
        jb      L_0461                          ; 72 F1
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        inc     dx                              ; 42
        xor     ax, ax                          ; 33 C0
        out     dx, al                          ; EE
        call    L_050E                          ; E8 94 00
        mov     bx, si                          ; 8B DE
        call    L_0522                          ; E8 A3 00
        xchg    ah, al                          ; 86 C4
        mov     word ptr [si + 0x46], ax        ; 89 44 46
        call    L_056A                          ; E8 E3 00
        push    ax                              ; 50
        inc     dx                              ; 42
        inc     dx                              ; 42
        or      al, 0x80                        ; 0C 80
        out     dx, al                          ; EE
        mov     byte ptr [si + 0x40], ah        ; 88 64 40
        mov     ax, di                          ; 8B C7
        and     byte ptr [si + 0xc], ah         ; 20 64 0C
        mov     byte ptr [si + 0x3f], al        ; 88 44 3F
        call    L_0549                          ; E8 AE 00
        sub     dl, 3                           ; 80 EA 03
        mov     al, cl                          ; 8A C1
        out     dx, al                          ; EE
        mov     al, ch                          ; 8A C5
        inc     dx                              ; 42
        jmp     L_04A6                          ; EB 00
L_04A6:
        out     dx, al                          ; EE
        inc     dx                              ; 42
        inc     dx                              ; 42
        pop     ax                              ; 58
        out     dx, al                          ; EE
        inc     dx                              ; 42
        mov     al, byte ptr [si + 0xc]         ; 8A 44 0C
        and     al, 0x82                        ; 24 82
        rol     al, 1                           ; D0 C0
        shr     al, 1                           ; D0 E8
        adc     al, 0                           ; 14 00
        mov     ah, al                          ; 8A E0
        xor     al, 0xb                         ; 34 0B
        out     dx, al                          ; EE
        mov     al, byte ptr [si + 0xd]         ; 8A 44 0D
        rol     al, 1                           ; D0 C0
        rol     al, 1                           ; D0 C0
        rol     al, 1                           ; D0 C0
        and     al, 3                           ; 24 03
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        mov     byte ptr [si + 0x43], al        ; 88 44 43
        mov     al, byte ptr [si + 0xc]         ; 8A 44 0C
        shl     al, 1                           ; D0 E0
        and     al, 0x30                        ; 24 30
        mov     byte ptr [si + 0x44], al        ; 88 44 44
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        sub     dl, 4                           ; 80 EA 04
        xor     cx, cx                          ; 33 C9
L_04E6:
        jmp     L_04E8                          ; EB 00
L_04E8:
        in      al, dx                          ; EC
        loop    L_04E6                          ; E2 FB
        add     dl, 6                           ; 80 C2 06
        jmp     L_04F0                          ; EB 00
L_04F0:
        in      al, dx                          ; EC
        jmp     L_04F3                          ; EB 00
L_04F3:
        in      al, dx                          ; EC
        mov     byte ptr [si + 0x45], al        ; 88 44 45
        sub     dl, 5                           ; 80 EA 05
        mov     al, 0xd                         ; B0 0D
        cli                                     ; FA
        out     dx, al                          ; EE
        add     dl, 4                           ; 80 C2 04
        jmp     L_0503                          ; EB 00
L_0503:
        in      al, dx                          ; EC
        sub     dl, 5                           ; 80 EA 05
        jmp     L_0509                          ; EB 00
L_0509:
        in      al, dx                          ; EC
        sti                                     ; FB
        jmp     L_045F                          ; E9 51 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_050E -- offset 0x050E -- 12 instr
; Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_044D
;----------------------------------------------------------------------
L_050E:
        push    si                              ; 56
        mov     di, si                          ; 8B FE
        mov     si, bx                          ; 8B F3
        push    es                              ; 06
        mov     ax, ds                          ; 8C D8
        pop     ds                              ; 1F
        mov     es, ax                          ; 8E C0
        mov     cx, 0x19                        ; B9 19 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ds, ax                          ; 8E D8
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0522 -- offset 0x0522 -- 7 instr
; Wrapper que delega en sub_0530.
; tags: wrapper
; callers: sub_044D
; calls (intra): sub_0530
;----------------------------------------------------------------------
L_0522:
        xor     ax, ax                          ; 33 C0
        xor     cx, cx                          ; 33 C9
        call    L_0530                          ; E8 07 00
        not     al                              ; F6 D0
        and     al, 0xb0                        ; 24 B0
        xchg    al, ah                          ; 86 E0
        dec     cx                              ; 49
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0530 -- offset 0x0530 -- 10 instr
; Funcion hoja (no llama a otras, 10 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0522
;----------------------------------------------------------------------
L_0530:
        cmp     word ptr es:[bx + 6], cx        ; 26 39 4F 06
        jne     L_0538                          ; 75 02
        or      al, 0x80                        ; 0C 80
L_0538:
        cmp     word ptr es:[bx + 8], cx        ; 26 39 4F 08
        jne     L_0540                          ; 75 02
        or      al, 0x10                        ; 0C 10
L_0540:
        cmp     word ptr es:[bx + 0xa], cx      ; 26 39 4F 0A
        jne     L_0548                          ; 75 02
        or      al, 0x20                        ; 0C 20
L_0548:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0549 -- offset 0x0549 -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_044D
;----------------------------------------------------------------------
L_0549:
        push    dx                              ; 52
        mov     cx, word ptr es:[bx + 1]        ; 26 8B 4F 01
        xor     ax, ax                          ; 33 C0
        cmp     cx, 0x32                        ; 83 F9 32
        jb      L_0563                          ; 72 0E
        cmp     cx, 0x4b01                      ; 81 F9 01 4B
        jae     L_0563                          ; 73 08
        mov     dx, 1                           ; BA 01 00
        mov     ax, 0xc200                      ; B8 00 C2
        div     cx                              ; F7 F1
L_0563:
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xfff4                      ; B8 F4 FF
        pop     dx                              ; 5A
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_056A -- offset 0x056A -- 43 instr
; Funcion mediana (43 instr, 0 calls).
; tags: medium
; callers: sub_044D
;----------------------------------------------------------------------
L_056A:
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        cmp     ah, 4                           ; 80 FC 04
        ja      L_05C1                          ; 77 4E
        mov     di, 0xff1e                      ; BF 1E FF
        or      ah, ah                          ; 0A E4
        jne     L_057E                          ; 75 04
        xor     di, 0x404                       ; 81 F7 04 04
L_057E:
        cmp     al, 8                           ; 3C 08
        ja      L_05BC                          ; 77 3A
        sub     al, 5                           ; 2C 05
        jb      L_05BC                          ; 72 36
        add     ah, ah                          ; 02 E4
        je      L_058C                          ; 74 02
        dec     ah                              ; FE CC
L_058C:
        shl     ah, 1                           ; D0 E4
        shl     ah, 1                           ; D0 E4
        shl     ah, 1                           ; D0 E4
        or      al, ah                          ; 0A C4
        or      al, 4                           ; 0C 04
        mov     ah, byte ptr es:[bx + 5]        ; 26 8A 67 05
        or      ah, ah                          ; 0A E4
        js      L_05C1                          ; 78 23
        je      L_05AB                          ; 74 0B
        sub     ah, 2                           ; 80 EC 02
        je      L_05AD                          ; 74 08
        jns     L_05C1                          ; 79 1A
        test    al, 3                           ; A8 03
        jne     L_05C1                          ; 75 16
L_05AB:
        and     al, 0xfb                        ; 24 FB
L_05AD:
        push    dx                              ; 52
        mov     cl, byte ptr es:[bx + 3]        ; 26 8A 4F 03
        mov     dx, 0xff                        ; BA FF 00
        shl     dx, cl                          ; D3 E2
        mov     ah, dh                          ; 8A E6
        pop     dx                              ; 5A
        clc                                     ; F8
        ret                                     ; C3
L_05BC:
        mov     ax, 0xfff5                      ; B8 F5 FF
        stc                                     ; F9
        ret                                     ; C3
L_05C1:
        mov     ax, 0xfffb                      ; B8 FB FF
        stc                                     ; F9
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05C6 -- offset 0x05C6 -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, far, int_21, int_2f
; callers: sub_01D1, sub_038D
;----------------------------------------------------------------------
L_05C6:
        mov     ax, 0x3000                      ; B8 00 30
        int     0x21                            ; CD 21
        cmp     al, 3                           ; 3C 03
        jne     L_05DE                          ; 75 0F
        mov     ax, 0xb800                      ; B8 00 B8
        int     0x2f                            ; CD 2F
        or      al, al                          ; 0A C0
        je      L_05DE                          ; 74 06
        test    bx, 0xc4                        ; F7 C3 C4 00
        je      L_05DF                          ; 74 01
L_05DE:
        stc                                     ; F9
L_05DF:
        ret                                     ; C3
        dec     word ptr cs:[0x1cf]             ; 2E FF 0E CF 01
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05E6 -- offset 0x05E6 -- 47 instr
; Funcion mediana (47 instr, 0 calls).
; tags: int_17, medium
; callers: sub_02E7, sub_076C
;----------------------------------------------------------------------
L_05E6:
        push    di                              ; 57
        push    ds                              ; 1E
        mov     di, word ptr [0xfd]             ; 8B 3E FD 00
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        xor     bx, bx                          ; 33 DB
        mov     ds, bx                          ; 8E DB
        mov     bl, ah                          ; 8A DC
        mov     ah, ch                          ; 8A E5
        shl     bl, 1                           ; D0 E3
        mov     word ptr [bx + 0x408], dx       ; 89 97 08 04
        mov     dx, bx                          ; 8B D3
        shr     dx, 1                           ; D1 EA
        or      ah, ah                          ; 0A E4
        jne     L_062E                          ; 75 29
        xchg    cx, ax                          ; 91
L_0606:
        mov     ah, 2                           ; B4 02
        int     0x17                            ; CD 17
        test    ah, 0x28                        ; F6 C4 28
        jne     L_0630                          ; 75 21
        test    ah, 0x10                        ; F6 C4 10
        je      L_0630                          ; 74 1C
        or      ah, ah                          ; 0A E4
        js      L_062D                          ; 78 15
        dec     di                              ; 4F
        jne     L_0606                          ; 75 EB
        mov     word ptr [bx + 0x408], 0        ; C7 87 08 04 00 00
        pop     ds                              ; 1F
        or      word ptr [si + 0x1a], 0x100     ; 81 4C 1A 00 01
        or      byte ptr [si + 0x42], 0x28      ; 80 4C 42 28
        pop     di                              ; 5F
        ret                                     ; C3
L_062D:
        xchg    cx, ax                          ; 91
L_062E:
        int     0x17                            ; CD 17
L_0630:
        mov     word ptr [bx + 0x408], 0        ; C7 87 08 04 00 00
        pop     ds                              ; 1F
        and     byte ptr [si + 0x42], 0xd7      ; 80 64 42 D7
        and     ax, 0x3900                      ; 25 00 39
        shr     ah, 1                           ; D0 EC
        adc     ah, al                          ; 12 E0
        xor     ah, 8                           ; 80 F4 08
        je      L_0654                          ; 74 0D
        or      byte ptr [si + 0x1b], ah        ; 08 64 1B
        test    byte ptr [si + 0x25], 2         ; F6 44 25 02
        je      L_0654                          ; 74 04
        or      byte ptr [si + 0x25], 2         ; 80 4C 25 02
L_0654:
        pop     di                              ; 5F
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0656 -- offset 0x0656 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_02C0
;----------------------------------------------------------------------
L_0656:
        or      byte ptr [si + 0x3e], 0x40      ; 80 4C 3E 40
        mov     byte ptr [si + 0x41], ah        ; 88 64 41
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_065D -- offset 0x065D -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_02E7, sub_07EE, sub_086F
;----------------------------------------------------------------------
L_065D:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        and     al, 0x20                        ; 24 20
        je      L_0676                          ; 74 0E
        sub     dl, 4                           ; 80 EA 04
        in      al, dx                          ; EC
        test    al, 2                           ; A8 02
        jne     L_0676                          ; 75 06
        or      al, 2                           ; 0C 02
        out     dx, al                          ; EE
        jmp     L_0675                          ; EB 00
L_0675:
        out     dx, al                          ; EE
L_0676:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0677 -- offset 0x0677 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_01D1, sub_02C0, sub_02E7, sub_032D, sub_044D, sub_06A3 (+8 mas)
;----------------------------------------------------------------------
L_0677:
        cmp     ah, 0x82                        ; 80 FC 82
        ja      L_069E                          ; 77 22
        mov     si, 0xdc                        ; BE DC 00
        je      L_068E                          ; 74 0D
        cmp     ah, 1                           ; 80 FC 01
        ja      L_0691                          ; 77 0B
        mov     si, 0x4e                        ; BE 4E 00
        je      L_068E                          ; 74 03
        mov     si, 0                           ; BE 00 00
L_068E:
        or      ah, ah                          ; 0A E4
        ret                                     ; C3
L_0691:
        mov     si, 0x9c                        ; BE 9C 00
        cmp     ah, 0x80                        ; 80 FC 80
        je      L_068E                          ; 74 F5
        mov     si, 0xbc                        ; BE BC 00
        ja      L_068E                          ; 77 F0
L_069E:
        mov     ax, 0x8000                      ; B8 00 80
        stc                                     ; F9
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06A3 -- offset 0x06A3 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: SETQUE
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_06A3:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 CF FF
        jb      L_06C5                          ; 72 1B
        js      L_06C5                          ; 78 19
        push    ds                              ; 1E
        push    es                              ; 06
        pop     ds                              ; 1F
        pop     es                              ; 07
        lea     di, [si + 0x26]                 ; 8D 7C 26
        mov     si, bx                          ; 8B F3
        mov     cx, 6                           ; B9 06 00
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        cli                                     ; FA
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     cl, 6                           ; B1 06
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        sti                                     ; FB
        push    es                              ; 06
        pop     ds                              ; 1F
L_06C5:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06C8 -- offset 0x06C8 -- 11 instr
; Wrapper que delega en sub_0677.
; tags: wrapper
; callers: CEVT
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_06C8:
        push    si                              ; 56
        xor     dx, dx                          ; 33 D2
        call    L_0677                          ; E8 A9 FF
        mov     ax, dx                          ; 8B C2
        jb      L_06DC                          ; 72 0A
        js      L_06DC                          ; 78 08
        mov     word ptr [si + 0x24], bx        ; 89 5C 24
        lea     ax, [si + 0x22]                 ; 8D 44 22
        mov     dx, ds                          ; 8C DA
L_06DC:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06DE -- offset 0x06DE -- 13 instr
; Wrapper que delega en sub_0677.
; tags: wrapper
; callers: CEVTGET
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_06DE:
        push    si                              ; 56
        call    L_0677                          ; E8 95 FF
        mov     ah, 0                           ; B4 00
        jb      L_06F4                          ; 72 0E
        js      L_06F4                          ; 78 0C
        cli                                     ; FA
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        not     bx                              ; F7 D3
        and     bx, ax                          ; 23 D8
        mov     word ptr [si + 0x22], bx        ; 89 5C 22
        sti                                     ; FB
L_06F4:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06F6 -- offset 0x06F6 -- 31 instr
; Funcion mediana (31 instr, 1 calls).
; tags: medium
; callers: STACOM
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_06F6:
        push    si                              ; 56
        call    L_0677                          ; E8 7D FF
        jb      L_073F                          ; 72 43
        mov     cx, es                          ; 8C C1
        or      cx, bx                          ; 0B CB
        je      L_073A                          ; 74 38
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        or      ah, ah                          ; 0A E4
        mov     ax, cx                          ; 8B C1
        js      L_072F                          ; 78 23
        mov     al, byte ptr [si + 0x45]        ; 8A 44 45
        and     al, byte ptr [si + 0x44]        ; 22 44 44
        xor     al, byte ptr [si + 0x44]        ; 32 44 44
        mov     cl, 4                           ; B1 04
        shr     al, cl                          ; D2 E8
        mov     ah, byte ptr [si + 0x42]        ; 8A 64 42
        and     ah, 0x18                        ; 80 E4 18
        or      al, ah                          ; 0A C4
        mov     ah, byte ptr [si + 0x3e]        ; 8A 64 3E
        and     ah, 0x60                        ; 80 E4 60
        or      al, ah                          ; 0A C4
        mov     cx, word ptr [si + 0x32]        ; 8B 4C 32
        mov     dx, word ptr [si + 0x38]        ; 8B 54 38
L_072F:
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     word ptr es:[bx + 1], cx        ; 26 89 4F 01
        mov     word ptr es:[bx + 3], dx        ; 26 89 57 03
L_073A:
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [si + 0x1a], ax        ; 87 44 1A
L_073F:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0741 -- offset 0x0741 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: CSETBRK
;----------------------------------------------------------------------
L_0741:
        mov     cx, 0xff40                      ; B9 40 FF
        jmp     L_0749                          ; EB 03
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0746 -- offset 0x0746 -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: small
; callers: CCLRBRK
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_0746:
        mov     cx, 0xbf00                      ; B9 00 BF
L_0749:
        push    si                              ; 56
        call    L_0677                          ; E8 2A FF
        jb      L_076A                          ; 72 1B
        js      L_0767                          ; 78 16
        cli                                     ; FA
        and     byte ptr [si + 0x42], ch        ; 20 6C 42
        or      byte ptr [si + 0x42], cl        ; 08 4C 42
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 3                           ; 80 C2 03
        in      al, dx                          ; EC
        and     al, ch                          ; 22 C5
        or      al, cl                          ; 0A C1
        jmp     L_0765                          ; EB 00
L_0765:
        out     dx, al                          ; EE
        sti                                     ; FB
L_0767:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
L_076A:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_076C -- offset 0x076C -- 61 instr
; Iterador con instrucciones de string (movsb/scasb/...) (61 instr).
; tags: complex_iterator, int_7, string_op
; callers: CEXTFCN
; calls (intra): sub_05E6, sub_0677
;----------------------------------------------------------------------
L_076C:
        push    si                              ; 56
        call    L_0677                          ; E8 07 FF
        jb      L_0791                          ; 72 1F
        jns     L_077B                          ; 79 07
        cmp     bl, 7                           ; 80 FB 07
        jne     L_078E                          ; 75 15
        jmp     L_0783                          ; EB 08
L_077B:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        cmp     bl, 7                           ; 80 FB 07
        jae     L_078E                          ; 73 0B
L_0783:
        xor     bh, bh                          ; 32 FF
        add     bx, bx                          ; 03 DB
        cli                                     ; FA
        call    word ptr cs:[bx + 0x793]        ; 2E FF 97 93 07
        sti                                     ; FB
L_078E:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
L_0791:
        pop     si                              ; 5E
        ret                                     ; C3
        xchg    dx, ax                          ; 92
        pop     es                              ; 07
        mov     word ptr [0xa807], ax           ; A3 07 A8
        pop     es                              ; 07
        scasw   ax, word ptr es:[di]            ; AF
        pop     es                              ; 07
        mov     cx, 0xc307                      ; B9 07 C3
        pop     es                              ; 07
        int     7                               ; CD 07
        xlatb                                   ; D7
        pop     es                              ; 07
        or      byte ptr [si + 0x42], 8         ; 80 4C 42 08
        ret                                     ; C3
        and     byte ptr [si + 0x42], 0xf7      ; 80 64 42 F7
        jmp     L_065D                          ; E9 AE FE
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, 2                           ; 0C 02
        jmp     L_07B7                          ; EB 00
L_07B7:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        and     al, 0xfd                        ; 24 FD
        jmp     L_07C1                          ; EB 00
L_07C1:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, 1                           ; 0C 01
        jmp     L_07CB                          ; EB 00
L_07CB:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        and     al, 0xfe                        ; 24 FE
        jmp     L_07D5                          ; EB 00
L_07D5:
        out     dx, al                          ; EE
        ret                                     ; C3
        sti                                     ; FB
        mov     ch, 1                           ; B5 01
        call    L_05E6                          ; E8 09 FE
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07DE -- offset 0x07DE -- 9 instr
; Wrapper que delega en sub_0677.
; tags: wrapper
; callers: GETDCB
; calls (intra): sub_0677
;----------------------------------------------------------------------
L_07DE:
        push    si                              ; 56
        xor     dx, dx                          ; 33 D2
        call    L_0677                          ; E8 93 FE
        mov     ax, dx                          ; 8B C2
        jb      L_07EC                          ; 72 04
        mov     ax, si                          ; 8B C6
        mov     dx, ds                          ; 8C DA
L_07EC:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07EE -- offset 0x07EE -- 57 instr
; Funcion mediana (57 instr, 2 calls).
; tags: medium
; callers: RECCOM, sub_032D, sub_086F
; calls (intra): sub_065D, sub_0677
;----------------------------------------------------------------------
L_07EE:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 84 FE
        jb      L_086A                          ; 72 75
        js      L_0868                          ; 78 71
        test    byte ptr [si + 0x42], 0x12      ; F6 44 42 12
        je      L_0831                          ; 74 34
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        cmp     ax, word ptr [si + 0x10]        ; 3B 44 10
        ja      L_0831                          ; 77 2C
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        mov     ah, byte ptr [si + 0x43]        ; 8A 64 43
        cli                                     ; FA
        mov     cl, byte ptr [si + 0x42]        ; 8A 4C 42
        or      ah, ah                          ; 0A E4
        je      L_081F                          ; 74 0C
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, ah                          ; 0A C4
        jmp     L_081B                          ; EB 00
L_081B:
        out     dx, al                          ; EE
        and     cl, 0xfd                        ; 80 E1 FD
L_081F:
        test    cl, 0x10                        ; F6 C1 10
        je      L_082D                          ; 74 09
        or      cl, 4                           ; 80 C9 04
        and     cl, 0xef                        ; 80 E1 EF
        call    L_065D                          ; E8 30 FE
L_082D:
        mov     byte ptr [si + 0x42], cl        ; 88 4C 42
        sti                                     ; FB
L_0831:
        xor     ax, ax                          ; 33 C0
        or      ax, word ptr [si + 0x1a]        ; 0B 44 1A
        jne     L_086A                          ; 75 32
        or      ax, word ptr [si + 0x32]        ; 0B 44 32
        je      L_0859                          ; 74 1C
        les     di, ptr [si + 0x26]             ; C4 7C 26
        mov     bx, word ptr [si + 0x34]        ; 8B 5C 34
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x2a]        ; 3B 5C 2A
        jb      L_084E                          ; 72 02
        xor     bx, bx                          ; 33 DB
L_084E:
        mov     word ptr [si + 0x34], bx        ; 89 5C 34
        dec     word ptr [si + 0x32]            ; FF 4C 32
L_0854:
        or      sp, sp                          ; 0B E4
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
L_0859:
        test    byte ptr [si + 0xc], 1          ; F6 44 0C 01
        jne     L_0868                          ; 75 09
        mov     al, byte ptr [si + 0x15]        ; 8A 44 15
        test    byte ptr [si + 0x3e], 0x20      ; F6 44 3E 20
        jne     L_0854                          ; 75 EC
L_0868:
        xor     ax, ax                          ; 33 C0
L_086A:
        xor     cx, cx                          ; 33 C9
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_086F -- offset 0x086F -- 217 instr
; Dispatcher: tabla de decisiones cmp+jcc (217 instr).
; tags: dispatcher
; callers: CFLUSH
; calls (intra): sub_065D, sub_0677, sub_07EE
;----------------------------------------------------------------------
L_086F:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 03 FE
        jb      L_0897                          ; 72 21
        js      L_0894                          ; 78 1C
        mov     cx, 6                           ; B9 06 00
        lea     di, [si + 0x32]                 ; 8D 7C 32
        or      bh, bh                          ; 0A FF
        jne     L_0884                          ; 75 02
        add     di, cx                          ; 03 F9
L_0884:
        cld                                     ; FC
        push    ds                              ; 1E
        pop     es                              ; 07
        xor     al, al                          ; 32 C0
        cli                                     ; FA
        rep stosb byte ptr es:[di], al          ; F3 AA
        sti                                     ; FB
        or      bh, bh                          ; 0A FF
        je      L_0894                          ; 74 03
        call    L_07EE                          ; E8 5A FF
L_0894:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
L_0897:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        push    si                              ; 56
        mov     si, 0x4e                        ; BE 4E 00
        jmp     L_08A4                          ; EB 04
        push    si                              ; 56
        mov     si, 0                           ; BE 00 00
L_08A4:
        push    ds                              ; 1E
        mov     ds, word ptr cs:[0x1cd]         ; 2E 8E 1E CD 01
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    di                              ; 57
        push    es                              ; 06
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 2                           ; 80 C2 02
        jmp     L_08B9                          ; EB 01
L_08B8:
        pop     dx                              ; 5A
L_08B9:
        in      al, dx                          ; EC
        test    al, 1                           ; A8 01
        jne     L_08C8                          ; 75 0A
        xor     ah, ah                          ; 32 E4
        mov     di, ax                          ; 8B F8
        push    dx                              ; 52
        jmp     word ptr cs:[di + 0x8dc]        ; 2E FF A5 DC 08
L_08C8:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        and     word ptr [si + 0x22], ax        ; 21 44 22
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        sti                                     ; FB
        pop     ax                              ; 58
        pop     ds                              ; 1F
        pop     si                              ; 5E
        iret                                    ; CF
        or      al, ah                          ; 36 0A C4
        or      ax, bp                          ; 09 E8
        or      ah, ah                          ; 08 E4
        or      byte ptr [bx + si + 0x224c], al ; 08 80 4C 22
        add     byte ptr [bx + si + 0x3c2], 0xec ; 80 80 C2 03 EC
        mov     ah, al                          ; 8A E0
        mov     bh, al                          ; 8A F8
        sub     dl, 5                           ; 80 EA 05
        in      al, dx                          ; EC
        test    ah, 0x10                        ; F6 C4 10
        je      L_08FD                          ; 74 04
        or      byte ptr [si + 0x22], 0x40      ; 80 4C 22 40
L_08FD:
        and     ah, byte ptr [si + 0x3f]        ; 22 64 3F
        or      byte ptr [si + 0x1a], ah        ; 08 64 1A
        shr     bh, 1                           ; D0 EF
        jae     L_0949                          ; 73 42
        or      byte ptr [si + 0x22], 1         ; 80 4C 22 01
        mov     cx, word ptr [si + 0x32]        ; 8B 4C 32
        cmp     cx, word ptr [si + 0x2a]        ; 3B 4C 2A
        jge     L_0945                          ; 7D 32
        test    byte ptr [si + 0x3e], 0x20      ; F6 44 3E 20
        jne     L_0945                          ; 75 2C
        test    bh, 2                           ; F6 C7 02
        je      L_0929                          ; 74 0B
        test    byte ptr [si + 0xd], 4          ; F6 44 0D 04
        je      L_0929                          ; 74 05
        mov     al, byte ptr [si + 0x14]        ; 8A 44 14
        jmp     L_096B                          ; EB 42
L_0929:
        and     al, byte ptr [si + 0x40]        ; 22 44 40
        jne     L_0934                          ; 75 06
        test    byte ptr [si + 0xd], 8          ; F6 44 0D 08
        jne     L_0949                          ; 75 15
L_0934:
        test    byte ptr [si + 0xc], 1          ; F6 44 0C 01
        jne     L_094C                          ; 75 12
        cmp     al, byte ptr [si + 0x15]        ; 3A 44 15
        jne     L_094C                          ; 75 0D
        or      byte ptr [si + 0x3e], 0x20      ; 80 4C 3E 20
        jmp     L_0949                          ; EB 04
L_0945:
        or      byte ptr [si + 0x1a], 1         ; 80 4C 1A 01
L_0949:
        jmp     L_08B8                          ; E9 6C FF
L_094C:
        test    byte ptr [si + 0xd], 1          ; F6 44 0D 01
        je      L_096B                          ; 74 19
        cmp     al, byte ptr [si + 0xf]         ; 3A 44 0F
        jne     L_095D                          ; 75 06
        or      byte ptr [si + 0x42], 8         ; 80 4C 42 08
        jmp     L_0949                          ; EB EC
L_095D:
        cmp     al, byte ptr [si + 0xe]         ; 3A 44 0E
        jne     L_096B                          ; 75 09
        and     byte ptr [si + 0x42], 0xf7      ; 80 64 42 F7
        call    L_065D                          ; E8 F4 FC
        jmp     L_0949                          ; EB DE
L_096B:
        cmp     al, byte ptr [si + 0x16]        ; 3A 44 16
        jne     L_0974                          ; 75 04
        or      byte ptr [si + 0x22], 2         ; 80 4C 22 02
L_0974:
        test    byte ptr [si + 0x42], 0x80      ; F6 44 42 80
        jne     L_0949                          ; 75 CF
        les     di, ptr [si + 0x26]             ; C4 7C 26
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x2a]        ; 3B 5C 2A
        jb      L_098B                          ; 72 02
        xor     bx, bx                          ; 33 DB
L_098B:
        mov     word ptr [si + 0x36], bx        ; 89 5C 36
        inc     cx                              ; 41
        mov     word ptr [si + 0x32], cx        ; 89 4C 32
        cmp     cx, word ptr [si + 0x20]        ; 3B 4C 20
        jb      L_09C1                          ; 72 2A
        mov     cl, byte ptr [si + 0x42]        ; 8A 4C 42
        test    cl, 0x13                        ; F6 C1 13
        jne     L_09C1                          ; 75 22
        mov     ah, byte ptr [si + 0x43]        ; 8A 64 43
        or      ah, ah                          ; 0A E4
        je      L_09B2                          ; 74 0C
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        or      cl, 2                           ; 80 C9 02
        out     dx, al                          ; EE
L_09B2:
        test    byte ptr [si + 0xd], 2          ; F6 44 0D 02
        je      L_09BE                          ; 74 06
        or      cl, 1                           ; 80 C9 01
        call    L_065D                          ; E8 9F FC
L_09BE:
        mov     byte ptr [si + 0x42], cl        ; 88 4C 42
L_09C1:
        jmp     L_08B8                          ; E9 F4 FE
        add     dl, 3                           ; 80 C2 03
        in      al, dx                          ; EC
        test    al, 0x20                        ; A8 20
        je      L_0A2C                          ; 74 60
        sub     dl, 5                           ; 80 EA 05
        mov     ah, byte ptr [si + 0x42]        ; 8A 64 42
        test    ah, 0x60                        ; F6 C4 60
        jne     L_0A30                          ; 75 59
        test    ah, 5                           ; F6 C4 05
        je      L_09F7                          ; 74 1B
        test    ah, 1                           ; F6 C4 01
        je      L_09EC                          ; 74 0B
        and     ah, 0xfe                        ; 80 E4 FE
        or      ah, 0x10                        ; 80 CC 10
        mov     al, byte ptr [si + 0xf]         ; 8A 44 0F
        jmp     L_09F2                          ; EB 06
L_09EC:
        and     ah, 0xeb                        ; 80 E4 EB
        mov     al, byte ptr [si + 0xe]         ; 8A 44 0E
L_09F2:
        mov     byte ptr [si + 0x42], ah        ; 88 64 42
        jmp     L_0A28                          ; EB 31
L_09F7:
        test    ah, 0x7f                        ; F6 C4 7F
        jne     L_0A30                          ; 75 34
        test    byte ptr [si + 0x3e], 0x40      ; F6 44 3E 40
        je      L_0A0B                          ; 74 09
        and     byte ptr [si + 0x3e], 0xbf      ; 80 64 3E BF
        mov     al, byte ptr [si + 0x41]        ; 8A 44 41
        jmp     L_0A28                          ; EB 1D
L_0A0B:
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0A2C                          ; E3 1C
        les     di, ptr [si + 0x2c]             ; C4 7C 2C
        mov     bx, word ptr [si + 0x3a]        ; 8B 5C 3A
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x30]        ; 3B 5C 30
        jb      L_0A21                          ; 72 02
        xor     bx, bx                          ; 33 DB
L_0A21:
        mov     word ptr [si + 0x3a], bx        ; 89 5C 3A
        dec     cx                              ; 49
        mov     word ptr [si + 0x38], cx        ; 89 4C 38
L_0A28:
        out     dx, al                          ; EE
        jmp     L_08B8                          ; E9 8C FE
L_0A2C:
        or      byte ptr [si + 0x22], 4         ; 80 4C 22 04
L_0A30:
        inc     dx                              ; 42
        in      al, dx                          ; EC
        and     al, 0xfd                        ; 24 FD
        jmp     L_0A28                          ; EB F2
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        mov     byte ptr [si + 0x45], al        ; 88 44 45
        mov     ch, al                          ; 8A E8
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ah, 1                           ; D0 EC
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        and     ax, 0x138                       ; 25 38 01
        or      word ptr [si + 0x22], ax        ; 09 44 22
        mov     al, byte ptr [si + 0x44]        ; 8A 44 44
        or      al, al                          ; 0A C0
        je      L_0A6B                          ; 74 13
        and     ch, al                          ; 22 E8
        cmp     ch, al                          ; 3A E8
        je      L_0A64                          ; 74 06
        or      byte ptr [si + 0x42], 0x20      ; 80 4C 42 20
        jmp     L_0A6B                          ; EB 07
L_0A64:
        and     byte ptr [si + 0x42], 0xdf      ; 80 64 42 DF
        call    L_065D                          ; E8 F2 FB
L_0A6B:
        jmp     L_08B8                          ; E9 4A FE

COMM_TEXT ENDS

        END
