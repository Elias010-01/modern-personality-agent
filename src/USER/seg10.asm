; AUTO-GENERATED from original USER segment 10
; segment_size=516 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; EXITWINDOWS -- 60 instr
; Termina Windows y devuelve a DOS.
; tags: calls_gdi, calls_kernel, far, medium
; calls (intra): sub_015B
; calls (inter): GDI.DEATH, KERNEL.EXITKERNEL
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; EXITWINDOWS  (offset 0x0000, size 152 bytes)
;-----------------------------------------------------------------------
EXITWINDOWS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [0x1e], 1              ; C7 06 1E 00 01 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_007C                          ; E8 62 00
        or      ax, ax                          ; 0B C0
        je      L_0023                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0025                          ; EB 02
L_0023:
        sub     ax, ax                          ; 2B C0
L_0025:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    L_007C                          ; E8 50 00
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0042                          ; 75 10
        mov     word ptr [0x1e], 0              ; C7 06 1E 00 00 00
        mov     word ptr [0x5a], 0              ; C7 06 5A 00 00 00
        sub     ax, ax                          ; 2B C0
        jmp     L_0071                          ; EB 2F
L_0042:
        call    far _SEG1_3781                  ; 9A FF FF 00 00 [FIXUP]
        call    L_015B                          ; E8 11 01
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        call    far GDI.DEATH                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_0064                          ; 75 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_0069                          ; EB 05
L_0064:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0069:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.EXITKERNEL           ; 9A FF FF 00 00 [FIXUP]
L_0071:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_007C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, OFFSET _entry_340           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_340           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_820C                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
EXITWINDOWS ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [0x54]             ; A1 54 00
        cmp     word ptr [bx + 0xc], ax         ; 39 47 0C
        jne     L_00B9                          ; 75 05
L_00B4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00DC                          ; EB 23
L_00B9:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        cmp     si, 2                           ; 83 FE 02
        jne     L_00C6                          ; 75 05
        mov     ax, 0x11                        ; B8 11 00
        jmp     L_00C9                          ; EB 03
L_00C6:
        mov     ax, 0x16                        ; B8 16 00
L_00C9:
        push    ax                              ; 50
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     si, 2                           ; 83 FE 02
        jne     L_00B4                          ; 75 D8
L_00DC:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00E8 -- offset 0x00E8 -- 49 instr
; Funcion mediana (49 instr, 2 calls).
; tags: calls_mouse, calls_system, far, medium
; callers: ENABLEOEMLAYER
; calls (inter): MOUSE.ENABLE, SYSTEM.ENABLESYSTEMTIMERS
;----------------------------------------------------------------------
L_00E8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        call    far SYSTEM.ENABLESYSTEMTIMERS   ; 9A FF FF 00 00 [FIXUP]
        mov     si, 0x182                       ; BE 82 01
        jmp     L_0107                          ; EB 07
L_0100:
        sub     si, 2                           ; 83 EE 02
        mov     word ptr [si], 0                ; C7 04 00 00
L_0107:
        cmp     si, 0x82                        ; 81 FE 82 00
        jne     L_0100                          ; 75 F3
        mov     ax, OFFSET _SEG1_57DA           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_57DA           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x82                        ; B8 82 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.2                  ; 9A FF FF 00 00 [FIXUP]
        mov     es, word ptr [0x310]            ; 8E 06 10 03
        mov     al, byte ptr [0x94]             ; A0 94 00
        and     al, 0x80                        ; 24 80
        xor     al, 0x80                        ; 34 80
        mov     byte ptr es:[0x57d3], al        ; 26 A2 D3 57
        mov     es, word ptr [0x312]            ; 8E 06 12 03
        mov     al, byte ptr [0x93]             ; A0 93 00
        and     al, 0x80                        ; 24 80
        xor     al, 0x80                        ; 34 80
        mov     byte ptr es:[0x57d4], al        ; 26 A2 D4 57
        cmp     word ptr [0x47c], 0             ; 83 3E 7C 04 00
        je      L_0151                          ; 74 0D
        mov     ax, OFFSET _SEG1_5BC2           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_5BC2           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far MOUSE.ENABLE                ; 9A FF FF 00 00 [FIXUP]
L_0151:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_015B -- offset 0x015B -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_mouse, calls_system, small
; callers: DISABLEOEMLAYER, EXITWINDOWS
; calls (inter): MOUSE.DISABLE, SYSTEM.DISABLESYSTEMTIMERS
;----------------------------------------------------------------------
L_015B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        cmp     word ptr [0x47c], 0             ; 83 3E 7C 04 00
        je      L_016D                          ; 74 05
        call    far MOUSE.DISABLE               ; 9A FF FF 00 00 [FIXUP]
L_016D:
        call    far KEYBOARD.3                  ; 9A FF FF 00 00 [FIXUP]
        call    far SYSTEM.DISABLESYSTEMTIMERS  ; 9A FF FF 00 00 [FIXUP]
L_0177:
        mov     es, word ptr [0x314]            ; 8E 06 14 03
        push    word ptr es:[0x57d5]            ; 26 FF 36 D5 57
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_5EEE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0177                          ; 75 DD
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DISABLEOEMLAYER -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_gdi, far, small
; calls (intra): sub_015B
; calls (inter): GDI.DEATH
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; DISABLEOEMLAYER  (offset 0x019E, size 39 bytes)
;-----------------------------------------------------------------------
DISABLEOEMLAYER PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        call    far _SEG1_3781                  ; 9A 43 00 00 00 [FIXUP]
        call    L_015B                          ; E8 AB FF
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        call    far GDI.DEATH                   ; 9A 52 00 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
DISABLEOEMLAYER ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENABLEOEMLAYER -- 35 instr
; Funcion mediana (35 instr, 2 calls).
; tags: calls_gdi, far, medium
; calls (intra): sub_00E8
; calls (inter): GDI.RESURRECTION
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ENABLEOEMLAYER  (offset 0x01C5, size 63 bytes)
;-----------------------------------------------------------------------
ENABLEOEMLAYER PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.RESURRECTION            ; 9A FF FF 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00E8                          ; E8 FD FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5743                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_376A                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
ENABLEOEMLAYER ENDP


USER_TEXT ENDS

        END
