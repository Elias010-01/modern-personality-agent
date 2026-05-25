; AUTO-GENERATED from original USER segment 3
; segment_size=3303 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_002D                          ; 75 0C
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_002D                          ; 74 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 8], ax           ; 89 47 08
L_002D:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        add     si, 0xc                         ; 83 C6 0C
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        jmp     L_01B1                          ; E9 5D 01
L_0054:
        cmp     word ptr [si + 0xe], 0          ; 83 7C 0E 00
        je      L_0071                          ; 74 17
        push    si                              ; 56
        call    far _entry_365                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        add     ax, word ptr [0x450]            ; 03 06 50 04
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, dx                          ; 8B C2
        jmp     L_0079                          ; EB 08
L_0071:
        mov     word ptr [si + 0xa], 0          ; C7 44 0A 00 00
        mov     ax, word ptr [0x452]            ; A1 52 04
L_0079:
        mov     word ptr [si + 8], ax           ; 89 44 08
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_0085                          ; 75 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_0085:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_0090                          ; 75 03
        jmp     L_014E                          ; E9 BE 00
L_0090:
        mov     al, byte ptr [si]               ; 8A 04
        and     ax, 0x60                        ; 25 60 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_00A8                          ; 75 0C
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        je      L_00A8                          ; 74 03
        jmp     L_0138                          ; E9 90 00
L_00A8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jne     L_00C8                          ; 75 0E
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [si + 0xa], ax         ; 39 44 0A
        jle     L_00C8                          ; 7E 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_00C8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x16]            ; FF 76 EA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_00D8                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_00DB                          ; EB 03
L_00D8:
        mov     ax, 1                           ; B8 01 00
L_00DB:
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0BD4                          ; E8 EC 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0126                          ; 74 35
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     di, word ptr [bp - 0x14]        ; 8B 7E EC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        inc     ax                              ; 40
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jne     L_0126                          ; 75 13
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0BD4                          ; E8 B1 0A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_0126:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jne     L_0138                          ; 75 06
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [bx + 8], ax           ; 89 47 08
L_0138:
        mov     word ptr [si + 4], di           ; 89 7C 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 6], ax           ; 89 44 06
        add     di, word ptr [si + 8]           ; 03 7C 08
        cmp     word ptr [bp - 0x1c], di        ; 39 7E E4
        jge     L_0185                          ; 7D 3C
        mov     word ptr [bp - 0x1c], di        ; 89 7E E4
        jmp     L_0185                          ; EB 37
L_014E:
        test    byte ptr [si], 0x60             ; F6 04 60
        jne     L_0167                          ; 75 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [si + 0xa]         ; 03 44 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     ax, word ptr [bx + 8]           ; 3B 47 08
        jle     L_0176                          ; 7E 15
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_0176                          ; 74 0F
L_0167:
        add     di, word ptr [bp - 0x12]        ; 03 7E EE
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_0176:
        mov     word ptr [si + 4], di           ; 89 7C 04
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        add     word ptr [bp - 8], ax           ; 01 46 F8
L_0185:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0190                          ; 7D 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0190:
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jge     L_019B                          ; 7D 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_019B:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_01AB                          ; 75 08
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, di                          ; 03 C7
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
L_01AB:
        add     si, 0x10                        ; 83 C6 10
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
L_01B1:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     word ptr [bx + 0xa], ax         ; 39 47 0A
        jle     L_01BF                          ; 7E 03
        jmp     L_0054                          ; E9 95 FE
L_01BF:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01E7 -- offset 0x01E7 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: DRAWMENUBAR, SETMENU
;----------------------------------------------------------------------
L_01E7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_020E                          ; 74 17
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        jne     L_0209                          ; 75 0C
        test    byte ptr [si + 0x33], 0x10      ; F6 44 33 10
        je      L_0209                          ; 74 06
        push    si                              ; 56
        call    far _SEG1_4CCC                  ; 9A FF FF 00 00 [FIXUP]
L_0209:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0210                          ; EB 02
L_020E:
        sub     ax, ax                          ; 2B C0
L_0210:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SETMENU -- 31 instr
; Asigna menu a ventana.
; tags: far, medium
; calls (intra): sub_01E7
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; SETMENU  (offset 0x0217, size 59 bytes)
;-----------------------------------------------------------------------
SETMENU PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A 62 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0244                          ; 74 15
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_0244                          ; 74 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x34], ax        ; 89 44 34
        push    si                              ; 56
        call    L_01E7                          ; E8 A5 FF
        jmp     L_0246                          ; EB 02
L_0244:
        sub     ax, ax                          ; 2B C0
L_0246:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DRAWMENUBAR -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: far, small
; calls (intra): sub_01E7
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DRAWMENUBAR  (offset 0x0252, size 40 bytes)
;-----------------------------------------------------------------------
DRAWMENUBAR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A CD 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_026E                          ; 74 04
        push    si                              ; 56
        call    L_01E7                          ; E8 79 FF
L_026E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
DRAWMENUBAR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; LOADACCELERATORS -- 28 instr
; Carga tabla de aceleradores.
; tags: calls_kernel, far, small
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.LOADRESOURCE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; LOADACCELERATORS  (offset 0x027A, size 59 bytes)
;-----------------------------------------------------------------------
LOADACCELERATORS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 9                           ; B8 09 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
LOADACCELERATORS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; TRANSLATEACCELERATOR -- 260 instr
; Dispatcher: tabla de decisiones cmp+jcc (260 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0979
; calls (inter): KERNEL.GLOBALUNLOCK, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK, KERNEL.LOCKRESOURCE
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; TRANSLATEACCELERATOR  (offset 0x02B5, size 700 bytes)
;-----------------------------------------------------------------------
TRANSLATEACCELERATOR PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02D8                          ; 75 03
        jmp     L_049D                          ; E9 C5 01
L_02D8:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far _SEG1_2E12                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_02FE                          ; 74 0A
        cmp     ax, 0x102                       ; 3D 02 01
        je      L_0317                          ; 74 1E
L_02F9:
        sub     ax, ax                          ; 2B C0
        jmp     L_04A0                          ; E9 A2 01
L_02FE:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
L_0303:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        or      ax, dx                          ; 0B C2
        jne     L_031E                          ; 75 09
        jmp     L_02F9                          ; EB E2
L_0317:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_0303                          ; EB E5
L_031E:
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        and     ax, 1                           ; 25 01 00
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        je      L_0334                          ; 74 03
        jmp     L_0488                          ; E9 54 01
L_0334:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        cmp     word ptr es:[bx + 1], ax        ; 26 39 47 01
        je      L_0347                          ; 74 03
        jmp     L_0488                          ; E9 41 01
L_0347:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        and     ax, 0xc                         ; 25 0C 00
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0355                          ; 75 03
        jmp     L_0430                          ; E9 DB 00
L_0355:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_035D                          ; 75 03
        jmp     L_0435                          ; E9 D8 00
L_035D:
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_04AC                          ; E8 27 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_03C1                          ; 75 35
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_03A8                          ; 75 12
        test    byte ptr [si + 0x32], 8         ; F6 44 32 08
        je      L_03A8                          ; 74 0C
        mov     ax, word ptr [0x420]            ; A1 20 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    si                              ; 56
        call    far _entry_362                  ; 9A FF FF 00 00 [FIXUP]
L_03A8:
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_04AC                          ; E8 F7 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_03C1                          ; 74 05
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
L_03C1:
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        sub     ah, ah                          ; 2A E4
        and     ax, 8                           ; 25 08 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_03F9                          ; 75 29
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jne     L_03F9                          ; 75 23
        test    byte ptr [bp - 0x1a], 2         ; F6 46 E6 02
        jne     L_03F9                          ; 75 1D
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_03F9                          ; 74 17
        cmp     word ptr [0x6a], 0              ; 83 3E 6A 00 00
        jne     L_03F9                          ; 75 10
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05E8                          ; E8 EF 01
L_03F9:
        test    byte ptr [bp - 0xa], 1          ; F6 46 F6 01
        jne     L_045A                          ; 75 5B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0411                          ; 74 0C
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        je      L_0411                          ; 74 06
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        je      L_045A                          ; 74 49
L_0411:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0424                          ; 74 0D
        cmp     word ptr [0x6a], 0              ; 83 3E 6A 00 00
        jne     L_045A                          ; 75 3C
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_045A                          ; 75 36
L_0424:
        push    si                              ; 56
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        je      L_0447                          ; 74 1C
        mov     ax, 0x112                       ; B8 12 01
        jmp     L_044A                          ; EB 1A
L_0430:
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_0438                          ; EB 03
L_0435:
        mov     ax, 0x11                        ; B8 11 00
L_0438:
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0445                          ; 7D 03
        jmp     L_035D                          ; E9 18 FF
L_0445:
        jmp     L_0488                          ; EB 41
L_0447:
        mov     ax, 0x111                       ; B8 11 01
L_044A:
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        mov     dx, 1                           ; BA 01 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A E6 04 00 00 [FIXUP]
L_045A:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0488                          ; 75 28
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jne     L_0488                          ; 75 22
        test    byte ptr [bp - 0x1a], 2         ; F6 46 E6 02
        jne     L_0488                          ; 75 1C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0488                          ; 74 16
        cmp     word ptr [0x6a], 0              ; 83 3E 6A 00 00
        jne     L_0488                          ; 75 0F
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05E8                          ; E8 60 01
L_0488:
        add     word ptr [bp - 0x1e], 5         ; 83 46 E2 05
        test    byte ptr [bp - 0x1a], 0x80      ; F6 46 E6 80
        jne     L_0495                          ; 75 03
        jmp     L_031E                          ; E9 89 FE
L_0495:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_049D:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
L_04A0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_04AC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_04C0                          ; 75 03
        jmp     L_0568                          ; E9 A8 00
L_04C0:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_063A                          ; E8 71 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_04D2                          ; 75 03
        jmp     L_0568                          ; E9 96 00
L_04D2:
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x116                       ; B8 16 01
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 1D 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALLOCK            ; 9A 50 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 0x10             ; F6 07 10
        je      L_0521                          ; 74 15
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x117                       ; B8 17 01
        push    ax                              ; 50
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
L_0521:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALUNLOCK          ; 9A 54 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 37 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A D5 05 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_0564                          ; 75 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0568                          ; 74 04
L_0564:
        or      byte ptr [bp - 6], 1            ; 80 4E FA 01
L_0568:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
TRANSLATEACCELERATOR ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETMENUSTRING -- 56 instr
; Getter: devuelve menustring.
; tags: calls_kernel, far, medium
; calls (intra): sub_0979
; calls (inter): KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETMENUSTRING  (offset 0x0571, size 119 bytes)
;-----------------------------------------------------------------------
GETMENUSTRING PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        dec     word ptr [bp + 8]               ; FF 4E 08
        or      ax, ax                          ; 0B C0
        je      L_05D9                          ; 74 4D
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x400                       ; 25 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 DB 03
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_05D9                          ; 74 35
        test    byte ptr [di], 4                ; F6 05 04
        jne     L_05D0                          ; 75 27
        mov     bx, word ptr [di + 0xe]         ; 8B 5D 0E
        mov     si, word ptr [bx]               ; 8B 37
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jge     L_05B6                          ; 7D 03
        mov     si, word ptr [bp + 8]           ; 8B 76 08
L_05B6:
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    si                              ; 56
        call    far _SEG1_5284                  ; 9A 45 07 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
L_05D0:
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A AC 06 00 00 [FIXUP]
L_05D9:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
GETMENUSTRING ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; HILITEMENUITEM -- 87 instr
; Dispatcher: tabla de decisiones cmp+jcc (87 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0979
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; HILITEMENUITEM  (offset 0x05E8, size 219 bytes)
;-----------------------------------------------------------------------
HILITEMENUITEM PROC FAR
L_05E8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_6092                  ; 9A 27 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_062F                          ; 74 2E
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_062F                          ; 74 28
        test    word ptr [bp + 6], 0x400        ; F7 46 06 00 04
        jne     L_061A                          ; 75 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_063A                          ; E8 23 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_061A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x80                        ; 25 80 00
        push    ax                              ; 50
        call    far _entry_367                  ; 9A FF FF 00 00 [FIXUP]
L_062F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_063A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALLOCK            ; 9A 13 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 14 03
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_06B0                          ; 74 45
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     si, ax                          ; 8B F0
        mov     cl, 4                           ; B1 04
        shl     si, cl                          ; D3 E6
        sub     si, 0x10                        ; 83 EE 10
        add     si, bx                          ; 03 F3
        add     si, 0xc                         ; 83 C6 0C
        jmp     L_069F                          ; EB 1B
L_0684:
        dec     word ptr [bp - 8]               ; FF 4E F8
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_06A7                          ; 7C 1A
        cmp     si, di                          ; 3B F7
        je      L_06A7                          ; 74 16
        test    byte ptr [si], 0x10             ; F6 04 10
        je      L_069C                          ; 74 06
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_069C:
        sub     si, 0x10                        ; 83 EE 10
L_069F:
        mov     ax, word ptr [0x62e]            ; A1 2E 06
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_0684                          ; 75 DD
L_06A7:
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A B4 06 00 00 [FIXUP]
L_06B0:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALUNLOCK          ; 9A 5B 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
HILITEMENUITEM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CHANGEMENU -- 211 instr
; Funcion compleja: 211 instrucciones, 6 llamadas, 19 branches.
; tags: calls_kernel, complex, far
; calls (intra): sub_0979, sub_0A29
; calls (inter): KERNEL.LOCALFREE, KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CHANGEMENU  (offset 0x06C3, size 559 bytes)
;-----------------------------------------------------------------------
CHANGEMENU PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_06E2                          ; 75 05
L_06DD:
        sub     ax, ax                          ; 2B C0
        jmp     L_08E5                          ; E9 03 02
L_06E2:
        test    word ptr [bp + 6], 0x800        ; F7 46 06 00 08
        je      L_06F1                          ; 74 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_06F1:
        test    word ptr [bp + 6], 0x100        ; F7 46 06 00 01
        je      L_06FD                          ; 74 05
        mov     word ptr [bp + 0xe], 0xffff     ; C7 46 0E FF FF
L_06FD:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x400                       ; 25 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 6A 02
        mov     di, ax                          ; 8B F8
        test    word ptr [bp + 6], 0x200        ; F7 46 06 00 02
        je      L_0774                          ; 74 5C
        or      di, di                          ; 0B FF
        je      L_06DD                          ; 74 C1
        mov     si, word ptr [0x64e]            ; 8B 36 4E 06
        push    di                              ; 57
        call    L_0B4B                          ; E8 27 04
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si + 6], ax           ; 89 44 06
        lea     ax, [di + 0x10]                 ; 8D 45 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, si                          ; 03 C6
        sub     ax, di                          ; 2B C7
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        dec     word ptr [si + 0xa]             ; FF 4C 0A
        sub     word ptr [si + 4], 0x10         ; 83 6C 04 10
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A D3 01 00 00 [FIXUP]
        push    word ptr [0x62e]                ; FF 36 2E 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
L_076E:
        mov     ax, 1                           ; B8 01 00
        jmp     L_08E5                          ; E9 71 01
L_0774:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_078D                          ; 74 0C
        test    byte ptr [bp + 6], 4            ; F6 46 06 04
        je      L_07B0                          ; 74 29
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_078D:
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        je      L_07D3                          ; 74 40
        or      di, di                          ; 0B FF
        je      L_0810                          ; 74 79
        mov     al, byte ptr [di]               ; 8A 05
        and     ax, 0x80                        ; 25 80 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    di                              ; 57
        call    L_0B4B                          ; E8 A8 03
        mov     si, word ptr [0x64e]            ; 8B 36 4E 06
        mov     ax, word ptr [0x62e]            ; A1 2E 06
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        jmp     L_0893                          ; E9 E3 00
L_07B0:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0A29                          ; E8 70 02
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_078D                          ; 75 CD
        or      di, di                          ; 0B FF
        jne     L_07C7                          ; 75 03
        jmp     L_06DD                          ; E9 16 FF
L_07C7:
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A FA 07 00 00 [FIXUP]
        jmp     L_06DD                          ; E9 0A FF
L_07D3:
        or      di, di                          ; 0B FF
        jne     L_07E3                          ; 75 0C
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far KERNEL.LOCALLOCK            ; 9A 40 08 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        jmp     L_07ED                          ; EB 0A
L_07E3:
        mov     ax, word ptr [0x62e]            ; A1 2E 06
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        mov     si, word ptr [0x64e]            ; 8B 36 4E 06
L_07ED:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far KERNEL.LOCALUNLOCK          ; 9A D6 08 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 6A 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0824                          ; 75 14
L_0810:
        test    byte ptr [bp + 6], 4            ; F6 46 06 04
        je      L_0819                          ; 74 03
        jmp     L_06DD                          ; E9 C4 FE
L_0819:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_06DD                          ; E9 B9 FE
L_0824:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x400                       ; 25 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 43 01
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0848                          ; 75 0C
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far KERNEL.LOCALLOCK            ; 9A C6 08 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        jmp     L_0852                          ; EB 0A
L_0848:
        mov     ax, word ptr [0x62e]            ; A1 2E 06
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        mov     si, word ptr [0x64e]            ; 8B 36 4E 06
L_0852:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [si + 4], ax           ; 89 44 04
        inc     word ptr [si + 0xa]             ; FF 44 0A
        or      di, di                          ; 0B FF
        je      L_087E                          ; 74 1F
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [di + 0x10]                 ; 8D 45 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, si                          ; 03 C6
        sub     ax, di                          ; 2B C7
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A C5 05 00 00 [FIXUP]
        jmp     L_0893                          ; EB 15
L_087E:
        cmp     word ptr [bp + 0xe], -1         ; 83 7E 0E FF
        jne     L_0893                          ; 75 0F
        mov     di, word ptr [si + 0xa]         ; 8B 7C 0A
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        sub     di, 0x10                        ; 83 EF 10
        add     di, si                          ; 03 FE
        add     di, 0xc                         ; 83 C7 0C
L_0893:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x7f                        ; 25 7F 00
        or      ax, word ptr [bp - 8]           ; 0B 46 F8
        mov     word ptr [di], ax               ; 89 05
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_08AA                          ; 75 06
        and     byte ptr [di], 3                ; 80 25 03
        or      byte ptr [di], 2                ; 80 0D 02
L_08AA:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [di + 0xe], ax         ; 89 45 0E
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [di + 2], ax           ; 89 45 02
        test    byte ptr [bp + 6], 0x10         ; F6 46 06 10
        je      L_08DA                          ; 74 16
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A EE 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        or      byte ptr [bx], 1                ; 80 0F 01
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALUNLOCK          ; 9A DE 08 00 00 [FIXUP]
L_08DA:
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far KERNEL.LOCALUNLOCK          ; 9A 30 05 00 00 [FIXUP]
        jmp     L_076E                          ; E9 89 FE
L_08E5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
CHANGEMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETSYSTEMMENU -- 63 instr
; Getter: devuelve systemmenu.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETSYSTEMMENU  (offset 0x08F2, size 135 bytes)
;-----------------------------------------------------------------------
GETSYSTEMMENU PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A F9 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0960                          ; 74 52
        or      di, di                          ; 0B FF
        je      L_092F                          ; 74 1D
        cmp     word ptr [si + 0x12], 0         ; 83 7C 12 00
        je      L_094D                          ; 74 35
        mov     ax, word ptr [0x420]            ; A1 20 04
        cmp     word ptr [si + 0x12], ax        ; 39 44 12
        je      L_094D                          ; 74 2D
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AAD                          ; E8 85 01
        mov     word ptr [si + 0x12], 0         ; C7 44 12 00 00
        jmp     L_094D                          ; EB 1E
L_092F:
        cmp     word ptr [si + 0x12], 0         ; 83 7C 12 00
        jne     L_094D                          ; 75 18
        test    byte ptr [si + 0x32], 8         ; F6 44 32 08
        je      L_094D                          ; 74 12
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_150                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x12], ax        ; 89 44 12
L_094D:
        cmp     word ptr [si + 0x12], 0         ; 83 7C 12 00
        je      L_0960                          ; 74 0D
        push    word ptr [si + 0x12]            ; FF 74 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B7A                          ; E8 1C 02
        jmp     L_0962                          ; EB 02
L_0960:
        sub     ax, ax                          ; 2B C0
L_0962:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_096F:
        mov     cl, 0x10                        ; B1 10
        mul     cl                              ; F6 E1
        lea     di, [si + 0xc]                  ; 8D 7C 0C
        add     di, ax                          ; 03 F8
        ret                                     ; C3
GETSYSTEMMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0979 -- offset 0x0979 -- 74 instr
; Dispatcher: tabla de decisiones cmp+jcc (74 instr).
; tags: calls_kernel, dispatcher, far
; callers: CHANGEMENU, GETMENUSTRING, HILITEMENUITEM, MENUITEMSTATE, TRANSLATEACCELERATOR
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------

L_0979:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [bp + 8], -1           ; 83 7E 08 FF
        jne     L_0993                          ; 75 05
L_098E:
        xor     ax, ax                          ; 33 C0
        jmp     L_0A1C                          ; E9 89 00
L_0993:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LOCALLOCK            ; 9A DB 07 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_09B5                          ; 74 12
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jl      L_098E                          ; 7C E4
        cmp     ax, word ptr [si + 0xa]         ; 3B 44 0A
        jae     L_09B5                          ; 73 06
        call    L_096F                          ; E8 BD FF
        jmp     L_09FA                          ; EB 46
        nop                                     ; 90
L_09B5:
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        call    L_096F                          ; E8 B4 FF
        jmp     L_0A08                          ; EB 4B
L_09BD:
        mov     ax, word ptr [di]               ; 8B 05
        and     ax, 0x10                        ; 25 10 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        je      L_09EB                          ; 74 24
        push    word ptr [di + 2]               ; FF 75 02
        push    word ptr [bp + 8]               ; FF 76 08
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 A4 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, 0                           ; 0D 00 00
        je      L_09EB                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A CC 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0A1C                          ; EB 32
        nop                                     ; 90
L_09EB:
        or      word ptr [bp - 6], 0            ; 81 4E FA 00 00
        jne     L_0A08                          ; 75 16
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jne     L_0A08                          ; 75 0E
L_09FA:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x62e], ax            ; A3 2E 06
        mov     word ptr [0x64e], si            ; 89 36 4E 06
        mov     ax, di                          ; 8B C7
        jmp     L_0A1C                          ; EB 14
L_0A08:
        sub     di, 0x10                        ; 83 EF 10
        lea     ax, [si + 0xc]                  ; 8D 44 0C
        cmp     di, ax                          ; 3B F8
        jae     L_09BD                          ; 73 AB
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LOCALUNLOCK          ; 9A E1 09 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
L_0A1C:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A29 -- offset 0x0A29 -- 32 instr
; Funcion mediana (32 instr, 3 calls).
; tags: calls_kernel, medium
; callers: CHANGEMENU
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LSTRCPY, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_0A29:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 4]           ; 0B 46 04
        je      L_0A68                          ; 74 33
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     bx, 0x40                        ; BB 40 00
        push    bx                              ; 53
        add     ax, 3                           ; 05 03 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0A68                          ; 74 15
        push    ax                              ; 50
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx], si               ; 89 37
        inc     bx                              ; 43
        inc     bx                              ; 43
        push    ds                              ; 1E
        push    bx                              ; 53
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        pop     ax                              ; 58
L_0A68:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CREATEMENU -- 29 instr
; Crea menu vacio.
; tags: calls_kernel, far, small
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; CREATEMENU  (offset 0x0A6F, size 62 bytes)
;-----------------------------------------------------------------------
CREATEMENU PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 4B 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0AA4                          ; 74 1A
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A 97 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 4], 0x1c         ; C7 47 04 1C 00
        mov     word ptr [bx + 2], 0xffff       ; C7 47 02 FF FF
        call    far KERNEL.LOCALUNLOCK          ; 9A 16 0A 00 00 [FIXUP]
        pop     ax                              ; 58
L_0AA4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
CREATEMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DESTROYMENU -- 37 instr
; Destruye menu y libera recursos.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.LOCALFREE, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DESTROYMENU  (offset 0x0AAD, size 76 bytes)
;-----------------------------------------------------------------------
DESTROYMENU PROC FAR
L_0AAD:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_0AEC                          ; 74 2C
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A 8E 0A 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        call    L_096F                          ; E8 9F FE
        jmp     L_0AD6                          ; EB 04
L_0AD2:
        push    di                              ; 57
        call    L_0B4B                          ; E8 75 00
L_0AD6:
        sub     di, 0x10                        ; 83 EF 10
        lea     ax, [si + 0xc]                  ; 8D 44 0C
        cmp     di, ax                          ; 3B F8
        jae     L_0AD2                          ; 73 F2
        call    far KERNEL.LOCALUNLOCK          ; 9A 9F 0A 00 00 [FIXUP]
        call    far KERNEL.LOCALFREE            ; 9A 1D 08 00 00 [FIXUP]
        mov     al, 1                           ; B0 01
L_0AEC:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
DESTROYMENU ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENABLEMENUITEM -- 2 instr
; Habilita/deshabilita item.
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ENABLEMENUITEM  (offset 0x0AF9, size 5 bytes)
;-----------------------------------------------------------------------
ENABLEMENUITEM PROC FAR
        mov     cx, 3                           ; B9 03 00
        jmp     L_0B01                          ; EB 03
ENABLEMENUITEM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; CHECKMENUITEM -- 1 instr
; Marca/desmarca item con check.
; tags: far, trivial_stub
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; CHECKMENUITEM  (offset 0x0AFE, size 3 bytes)
;-----------------------------------------------------------------------
CHECKMENUITEM PROC FAR
        mov     cx, 8                           ; B9 08 00
CHECKMENUITEM ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; MENUITEMSTATE -- 58 instr
; Funcion mediana (58 instr, 3 calls).
; tags: calls_kernel, far, medium
; calls (intra): sub_0979
; calls (inter): KERNEL.LOCALFREE, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; MENUITEMSTATE  (offset 0x0B01, size 121 bytes)
;-----------------------------------------------------------------------
MENUITEMSTATE PROC FAR
L_0B01:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    cx                              ; 51
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x400                       ; 25 00 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0979                          ; E8 5B FE
        pop     cx                              ; 59
        or      ax, ax                          ; 0B C0
        je      L_0B40                          ; 74 1D
        and     word ptr [bp + 6], cx           ; 21 4E 06
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        and     ax, cx                          ; 23 C1
        push    ax                              ; 50
        not     cx                              ; F7 D1
        and     word ptr [bx], cx               ; 21 0F
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      word ptr [bx], ax               ; 09 07
        push    word ptr [0x62e]                ; FF 36 2E 06
        call    far KERNEL.LOCALUNLOCK          ; 9A E1 0A 00 00 [FIXUP]
        pop     ax                              ; 58
L_0B40:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
L_0B4B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     ax, word ptr [di + 0xe]         ; 8B 45 0E
        or      ax, ax                          ; 0B C0
        je      L_0B65                          ; 74 0C
        test    word ptr [di], 4                ; F7 05 04 00
        jne     L_0B65                          ; 75 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A E6 0A 00 00 [FIXUP]
L_0B65:
        test    word ptr [di], 0x10             ; F7 05 10 00
        je      L_0B73                          ; 74 08
        push    word ptr [di + 2]               ; FF 75 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0AAD                          ; E8 3A FF
L_0B73:
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
MENUITEMSTATE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETSUBMENU -- 141 instr
; Getter: devuelve submenu.
; tags: calls_kernel, dispatcher, far
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETSUBMENU  (offset 0x0B7A, size 365 bytes)
;-----------------------------------------------------------------------
GETSUBMENU PROC FAR
L_0B7A:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    di                              ; 57
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        or      word ptr [bp + 8], 0            ; 81 4E 08 00 00
        je      L_0BC4                          ; 74 2F
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALLOCK            ; 9A C4 0A 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, word ptr [si + 0xa]         ; 3B 44 0A
        jae     L_0BBC                          ; 73 15
        cmp     ax, 0                           ; 3D 00 00
        jl      L_0BBC                          ; 7C 10
        call    L_096F                          ; E8 C0 FD
        mov     ax, word ptr [di]               ; 8B 05
        and     ax, 0x10                        ; 25 10 00
        je      L_0BBC                          ; 74 06
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0BBC:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALUNLOCK          ; 9A 3B 0B 00 00 [FIXUP]
L_0BC4:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_0BD4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.LOCALLOCK            ; 9A 99 0B 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        call    far _SEG1_38D1                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jl      L_0C04                          ; 7C 03
L_0C01:
        jmp     L_0CCD                          ; E9 C9 00
L_0C04:
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jg      L_0C01                          ; 7F F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        call    L_096F                          ; E8 60 FD
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0x4c]                 ; FF 36 4C 00
        push    word ptr [0x4e]                 ; FF 36 4E 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_52BE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x542], ax            ; A3 42 05
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0C98                          ; EB 6A
        nop                                     ; 90
L_0C2F:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
        mov     ax, word ptr [di]               ; 8B 05
        and     ax, 4                           ; 25 04 00
        jne     L_0C81                          ; 75 40
        mov     bx, word ptr [di + 0xe]         ; 8B 5D 0E
        or      bx, bx                          ; 0B DB
        je      L_0C81                          ; 74 39
        lea     ax, [bx + 2]                    ; 8D 47 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far _entry_369                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [di + 0xe]         ; 8B 5D 0E
        cmp     ax, word ptr [bx]               ; 3B 07
        je      L_0C81                          ; 74 21
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bx + 2]                    ; 8D 47 02
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        inc     ax                              ; 40
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_52BE                  ; 9A 1F 0C 00 00 [FIXUP]
        add     ax, word ptr [0x542]            ; 03 06 42 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0C81                          ; EB 00
L_0C81:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     ax, word ptr [bp - 8]           ; 3B 46 F8
        jbe     L_0C92                          ; 76 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0C92:
        add     di, 0x10                        ; 83 C7 10
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0C98:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_0CA2                          ; 7D 02
        jmp     L_0C2F                          ; EB 8D
L_0CA2:
        mov     ax, word ptr [0x450]            ; A1 50 04
        add     word ptr [bp - 8], ax           ; 01 46 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        call    L_096F                          ; E8 C1 FC
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        sub     cx, word ptr [bp + 4]           ; 2B 4E 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_0CC5                          ; EB 09
L_0CBC:
        mov     word ptr [di + 0xa], cx         ; 89 4D 0A
        add     di, 0x10                        ; 83 C7 10
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0CC5:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jb      L_0CBC                          ; 72 EF
L_0CCD:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.LOCALUNLOCK          ; 9A C0 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A
GETSUBMENU ENDP


USER_TEXT ENDS

        END
