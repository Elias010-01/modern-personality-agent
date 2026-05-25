; AUTO-GENERATED from original SYSTEM segment 1
; segment_size=1109 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

SYSTEM_TEXT SEGMENT BYTE PUBLIC 'CODE'

        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [si], al               ; 00 04
        add     ax, 0x5545                      ; 05 45 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jne     L_0021                          ; 75 09
        mov     dx, 0                           ; BA 00 00
        mov     ax, 0xd68d                      ; B8 8D D6
        jmp     L_0182                          ; E9 61 01
L_0021:
        dec     ax                              ; 48
        je      L_0027                          ; 74 03
        jmp     L_00CC                          ; E9 A5 00
L_0027:
        int     0x11                            ; CD 11
        mov     cl, 6                           ; B1 06
        shr     ax, cl                          ; D3 E8
        and     al, 3                           ; 24 03
        cwde                                    ; 98
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ah, 0x19                        ; B4 19
        call    far KERNEL.NOHOOKDOSCALL        ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     al, bl                          ; 3A C3
        je      L_0063                          ; 74 22
        push    ax                              ; 50
        mov     dx, bx                          ; 8B D3
        mov     ah, 0xe                         ; B4 0E
        call    far KERNEL.NOHOOKDOSCALL        ; 9A 36 00 00 00 [FIXUP]
        mov     ah, 0x19                        ; B4 19
        call    far KERNEL.NOHOOKDOSCALL        ; 9A 47 00 00 00 [FIXUP]
        mov     bh, al                          ; 8A F8
        pop     dx                              ; 5A
        mov     ah, 0xe                         ; B4 0E
        call    far KERNEL.NOHOOKDOSCALL        ; 9A 4E 00 00 00 [FIXUP]
        cmp     bh, bl                          ; 3A FB
        je      L_0063                          ; 74 03
        jmp     L_017E                          ; E9 1B 01
L_0063:
        mov     ax, 0x4408                      ; B8 08 44
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     bx                              ; 43
        call    far KERNEL.NOHOOKDOSCALL        ; 9A 58 00 00 00 [FIXUP]
        jb      L_00A6                          ; 72 35
        mov     cx, 3                           ; B9 03 00
        test    ax, 1                           ; A9 01 00
        jne     L_007C                          ; 75 03
        mov     cx, 2                           ; B9 02 00
L_007C:
        mov     ax, 0x440e                      ; B8 0E 44
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     bx                              ; 43
        call    far KERNEL.NOHOOKDOSCALL        ; 9A 6B 00 00 00 [FIXUP]
        jb      L_00BB                          ; 72 31
        or      al, al                          ; 0A C0
        je      L_00A0                          ; 74 12
        cmp     bl, al                          ; 3A D8
        je      L_00A0                          ; 74 0E
        xor     ah, ah                          ; 32 E4
        mov     dx, ax                          ; 8B D0
L_0096:
        xor     ax, ax                          ; 33 C0
        cmp     cx, 2                           ; 83 F9 02
        je      L_00A3                          ; 74 06
        inc     ax                              ; 40
        jmp     L_00A3                          ; EB 03
L_00A0:
        xchg    cx, ax                          ; 91
        xor     dx, dx                          ; 33 D2
L_00A3:
        jmp     L_0182                          ; E9 DC 00
L_00A6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_00AE                          ; 75 01
        inc     ax                              ; 40
L_00AE:
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        mov     cx, 3                           ; B9 03 00
        jb      L_007C                          ; 72 C6
        mov     cx, 2                           ; B9 02 00
        jmp     L_007C                          ; EB C1
L_00BB:
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_00A0                          ; 75 DF
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_00A0                          ; 75 D9
        mov     dx, 1                           ; BA 01 00
        jmp     L_0096                          ; EB CA
L_00CC:
        dec     ax                              ; 48
        je      L_00D2                          ; 74 03
        jmp     L_017E                          ; E9 AC 00
L_00D2:
        cmp     word ptr cs:[5], 0              ; 2E 83 3E 05 00 00
        jne     L_00E4                          ; 75 0A
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        xchg    al, ah                          ; 86 E0
        mov     word ptr cs:[5], ax             ; 2E A3 05 00
L_00E4:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0157                          ; 75 6D
        cmp     word ptr cs:[5], 0x314          ; 2E 81 3E 05 00 14 03
        jae     L_013C                          ; 73 49
        mov     ax, 0xfc00                      ; B8 00 FC
        mov     es, ax                          ; 8E C0
        cmp     word ptr es:[0x50], 0x4c4f      ; 26 81 3E 50 00 4F 4C
        jne     L_012C                          ; 75 2B
        mov     word ptr cs:[7], 0x14d0         ; 2E C7 06 07 00 D0 14
        cmp     word ptr cs:[5], 0x30a          ; 2E 81 3E 05 00 0A 03
        je      L_012C                          ; 74 1B
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     bx, 0x14a0                      ; BB A0 14
        mov     word ptr cs:[7], bx             ; 2E 89 1E 07 00
        cmp     word ptr es:[bx + 1], 0xa0d     ; 26 81 7F 01 0D 0A
        je      L_012C                          ; 74 07
        mov     word ptr cs:[7], 0x1670         ; 2E C7 06 07 00 70 16
L_012C:
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     bx, word ptr cs:[7]             ; 2E 8B 1E 07 00
        xchg    byte ptr es:[bx], al            ; 26 86 07
        mov     byte ptr cs:[0], al             ; 2E A2 00 00
L_013C:
        cmp     word ptr cs:[5], 0x300          ; 2E 81 3E 05 00 00 03
        jne     L_017E                          ; 75 39
        mov     ax, 0xf000                      ; B8 00 F0
        mov     es, ax                          ; 8E C0
        cmp     byte ptr es:[0xfffe], 0xfc      ; 26 80 3E FE FF FC
        jne     L_017E                          ; 75 2C
        call    L_018D                          ; E8 38 00
        jmp     L_017E                          ; EB 27
L_0157:
        cmp     word ptr cs:[5], 0x314          ; 2E 81 3E 05 00 14 03
        jae     L_0170                          ; 73 10
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     bx, word ptr cs:[7]             ; 2E 8B 1E 07 00
        mov     al, byte ptr cs:[0]             ; 2E A0 00 00
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0170:
        lds     dx, ptr cs:[1]                  ; 2E C5 16 01 00
        mov     cx, ds                          ; 8C D9
        jcxz    L_017E                          ; E3 05
        mov     ax, 0x2513                      ; B8 13 25
        int     0x21                            ; CD 21
L_017E:
        xor     dx, dx                          ; 33 D2
        xor     ax, ax                          ; 33 C0
L_0182:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_018D -- offset 0x018D -- 262 instr
; Interrupt Service Routine (262 instrucciones, posible manejador de INT).
; tags: int_21, isr, string_op
;----------------------------------------------------------------------
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_018D -- offset 0x018D -- 262 instr
; Interrupt Service Routine (262 instrucciones, posible manejador de INT).
; tags: int_21, isr, string_op
;----------------------------------------------------------------------
L_018D:
        mov     ax, 0x3513                      ; B8 13 35
        int     0x21                            ; CD 21
        mov     word ptr cs:[1], bx             ; 2E 89 1E 01 00
        mov     word ptr cs:[3], es             ; 2E 8C 06 03 00
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     dx, 0x1a7                       ; BA A7 01
        mov     ax, 0x2513                      ; B8 13 25
        int     0x21                            ; CD 21
        ret                                     ; C3
        cmp     ah, 2                           ; 80 FC 02
        jb      L_01CC                          ; 72 20
        cmp     ah, 0xc                         ; 80 FC 0C
        ja      L_01CC                          ; 77 1B
        test    dl, 0x80                        ; F6 C2 80
        je      L_01CC                          ; 74 16
        mov     byte ptr cs:[0x2e3], 0          ; 2E C6 06 E3 02 00
        sti                                     ; FB
        pushf                                   ; 9C
        lcall   cs:[1]                          ; 2E FF 1E 01 00
        mov     byte ptr cs:[0x2e3], 1          ; 2E C6 06 E3 02 01
        retf    2                               ; CA 02 00
L_01CC:
        ljmp    cs:[1]                          ; 2E FF 2E 01 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        db      0ffh                            ; FF
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     bh, bh                          ; 00 FF [FIXUP]
        inc     word ptr [bx + si]              ; FF 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     word ptr [bx + si], ax          ; 01 00
L_02E5:
        ljmp    cs:[0x2d6]                      ; 2E FF 2E D6 02
        cmp     byte ptr cs:[0x2e3], 0          ; 2E 80 3E E3 02 00
        je      L_02E5                          ; 74 F3
        cmp     byte ptr cs:[0x2e2], 1          ; 2E 80 3E E2 02 01
        jne     L_02E5                          ; 75 EB
        inc     byte ptr cs:[0x2e2]             ; 2E FE 06 E2 02
        pushf                                   ; 9C
        lcall   cs:[0x2d6]                      ; 2E FF 1E D6 02
        cli                                     ; FA
        mov     word ptr cs:[0x2e0], ss         ; 2E 8C 16 E0 02
        mov     word ptr cs:[0x2de], sp         ; 2E 89 26 DE 02
        push    cs                              ; 0E
        pop     ss                              ; 17
        mov     sp, 0x2d6                       ; BC D6 02
        sti                                     ; FB
        push    ax                              ; 50
        mov     al, 0xb                         ; B0 0B
        out     0x20, al                        ; E6 20
        jmp     L_031D                          ; EB 00
L_031D:
        in      al, 0x20                        ; E4 20
        or      al, al                          ; 0A C0
        jne     L_0362                          ; 75 3F
        push    bp                              ; 55
        push    ds                              ; 1E
        push    es                              ; 06
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        xor     bp, bp                          ; 33 ED
        lds     si, ptr cs:[0x2da]              ; 2E C5 36 DA 02
L_0332:
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        inc     ax                              ; 40
        jne     L_0340                          ; 75 09
        lodsw   ax, word ptr [si]               ; AD
        inc     ax                              ; 40
        je      L_035A                          ; 74 1F
        add     si, 4                           ; 83 C6 04
        jmp     L_0332                          ; EB F2
L_0340:
        dec     ax                              ; 48
        je      L_034C                          ; 74 09
        dec     word ptr [si]                   ; FF 0C
        je      L_034C                          ; 74 05
        add     si, 6                           ; 83 C6 06
        jmp     L_0332                          ; EB E6
L_034C:
        mov     word ptr [si], ax               ; 89 04
        inc     si                              ; 46
        inc     si                              ; 46
        lea     ax, [si - 4]                    ; 8D 44 FC
        lcall   [si]                            ; FF 1C
        add     si, 4                           ; 83 C6 04
        jmp     L_0332                          ; EB D8
L_035A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     es                              ; 07
        pop     ds                              ; 1F
        pop     bp                              ; 5D
L_0362:
        pop     ax                              ; 58
        cli                                     ; FA
        dec     byte ptr cs:[0x2e2]             ; 2E FE 0E E2 02
        mov     ss, word ptr cs:[0x2e0]         ; 2E 8E 16 E0 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENABLESYSTEMTIMERS -- 17 instr
; Llama a servicios DOS via INT 21h (17 instr).
; tags: dos_caller, far, int_21
;----------------------------------------------------------------------
        mov     sp, word ptr cs:[0x2de]         ; 2E 8B 26 DE 02
        iret                                    ; CF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENABLESYSTEMTIMERS -- 17 instr
; Llama a servicios DOS via INT 21h (17 instr).
; tags: dos_caller, far, int_21
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ENABLESYSTEMTIMERS  (offset 0x0374, size 44 bytes)
;-----------------------------------------------------------------------
ENABLESYSTEMTIMERS PROC FAR
        cmp     byte ptr cs:[0x2e2], 0          ; 2E 80 3E E2 02 00
        jne     L_039F                          ; 75 23
        mov     ah, 0x35                        ; B4 35
        mov     al, 8                           ; B0 08
        int     0x21                            ; CD 21
        mov     word ptr cs:[0x2d6], bx         ; 2E 89 1E D6 02
        mov     word ptr cs:[0x2d8], es         ; 2E 8C 06 D8 02
        mov     ah, 0x25                        ; B4 25
        mov     al, 8                           ; B0 08
        push    ds                              ; 1E
        push    cs                              ; 0E
        pop     ds                              ; 1F
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DISABLESYSTEMTIMERS -- 10 instr
; Llama a servicios DOS via INT 21h (10 instr).
; tags: dos_caller, far, int_21
;----------------------------------------------------------------------
        mov     dx, 0x2ea                       ; BA EA 02
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     byte ptr cs:[0x2e2], 1          ; 2E C6 06 E2 02 01
L_039F:
        retf                                    ; CB
ENABLESYSTEMTIMERS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATESYSTEMTIMER -- 35 instr
; Constructor: crea systemtimer.
; tags: far, medium
;----------------------------------------------------------------------
; tags: dos_caller, far, int_21
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DISABLESYSTEMTIMERS  (offset 0x03A0, size 28 bytes)
;-----------------------------------------------------------------------
DISABLESYSTEMTIMERS PROC FAR
        cmp     byte ptr cs:[0x2e2], 0          ; 2E 80 3E E2 02 00
        je      L_03BB                          ; 74 13
        mov     byte ptr cs:[0x2e2], 0          ; 2E C6 06 E2 02 00
        mov     ah, 0x25                        ; B4 25
        mov     al, 8                           ; B0 08
        push    ds                              ; 1E
        lds     dx, ptr cs:[0x2d6]              ; 2E C5 16 D6 02
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
L_03BB:
        retf                                    ; CB
DISABLESYSTEMTIMERS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATESYSTEMTIMER -- 35 instr
; Constructor: crea systemtimer.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CREATESYSTEMTIMER  (offset 0x03BC, size 79 bytes)
;-----------------------------------------------------------------------
CREATESYSTEMTIMER PROC FAR
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     bx, ptr cs:[0x2da]              ; 2E C5 1E DA 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_03D7                          ; 74 0A
        mov     cx, 0x3e8                       ; B9 E8 03
        mul     cx                              ; F7 E1
        mov     cx, 0xd68d                      ; B9 8D D6
        div     cx                              ; F7 F1
L_03D7:
        cmp     word ptr [bx], -1               ; 83 3F FF
        jne     L_03F6                          ; 75 1A
        cmp     word ptr [bx + 4], -1           ; 83 7F 04 FF
        je      L_03FB                          ; 74 19
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bx + 4], cx           ; 89 4F 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
; @ANALYSIS_v1
;----------------------------------------------------------------------
; KILLSYSTEMTIMER -- 34 instr
; Iterador con instrucciones de string (movsb/scasb/...) (34 instr).
; tags: far, iterator, string_op
;----------------------------------------------------------------------
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     word ptr [bx], ax               ; 89 07
        jmp     L_03FD                          ; EB 08
        nop                                     ; 90
L_03F6:
        add     bx, 8                           ; 83 C3 08
        jmp     L_03D7                          ; EB DC
L_03FB:
        xor     bx, bx                          ; 33 DB
L_03FD:
        mov     ax, bx                          ; 8B C3
        mov     cx, bx                          ; 8B CB
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
CREATESYSTEMTIMER ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; KILLSYSTEMTIMER -- 34 instr
; Iterador con instrucciones de string (movsb/scasb/...) (34 instr).
; tags: far, iterator, string_op
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; KILLSYSTEMTIMER  (offset 0x040C, size 64 bytes)
;-----------------------------------------------------------------------
KILLSYSTEMTIMER PROC FAR
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        push    di                              ; 57
        les     di, ptr cs:[0x2da]              ; 2E C4 3E DA 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_041A:
        cmp     word ptr es:[di], -1            ; 26 83 3D FF
        jne     L_042A                          ; 75 0A
        cmp     word ptr es:[di + 4], -1        ; 26 83 7D 04 FF
        jne     L_043B                          ; 75 14
        jmp     L_0440                          ; EB 17
        nop                                     ; 90
; @ANALYSIS_v1
;----------------------------------------------------------------------
; INQUIRELONGINTS -- 3 instr
; Stub trivial (3 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------
L_042A:
        cmp     di, ax                          ; 3B F8
        jne     L_043B                          ; 75 0D
        cld                                     ; FC
        mov     ax, 0xffff                      ; B8 FF FF
        stosw   word ptr es:[di], ax            ; AB
        not     ax                              ; F7 D0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_0440                          ; EB 06
        nop                                     ; 90
L_043B:
        add     di, 8                           ; 83 C7 08
        jmp     L_041A                          ; EB DA
L_0440:
        mov     cx, ax                          ; 8B C8
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
KILLSYSTEMTIMER ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; INQUIRELONGINTS -- 3 instr
; Stub trivial (3 instrucciones, sin logica significativa).
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; INQUIRELONGINTS  (offset 0x044E, size 7 bytes)
;-----------------------------------------------------------------------
INQUIRELONGINTS PROC FAR
        mov     ax, word ptr cs:[0x2e3]         ; 2E A1 E3 02
        mov     cx, ax                          ; 8B C8
        retf                                    ; CB
INQUIRELONGINTS ENDP


SYSTEM_TEXT ENDS

        END
