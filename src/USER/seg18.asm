; AUTO-GENERATED from original USER segment 18
; segment_size=769 bytes, flags=0xf130
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x300                       ; 3D 00 03
        je      L_0036                          ; 74 1D
        cmp     ax, 0x301                       ; 3D 01 03
        je      L_002A                          ; 74 0C
        cmp     ax, 0x302                       ; 3D 02 03
        je      L_003E                          ; 74 1B
        cmp     ax, 0x303                       ; 3D 03 03
        je      L_0046                          ; 74 1E
        jmp     L_0031                          ; EB 07
L_002A:
        push    si                              ; 56
        call    L_005A                          ; E8 2C 00
L_002E:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0031:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_004E                          ; EB 18
L_0036:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0101                          ; E8 C5 00
        jmp     L_002E                          ; EB F0
L_003E:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_017F                          ; E8 3B 01
        jmp     L_002E                          ; EB E8
L_0046:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_012C                          ; E8 E0 00
        jmp     L_002E                          ; EB E0
L_004E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_005A -- offset 0x005A -- 61 instr
; Funcion mediana (61 instr, 5 calls).
; tags: calls_kernel, medium
; callers: sub_0101
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_005A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [si + 2]               ; FF 74 02
        call    far _entry_137                  ; 9A B0 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_007E                          ; 75 04
L_007A:
        sub     ax, ax                          ; 2B C0
        jmp     L_00F9                          ; EB 7B
L_007E:
        call    far _entry_139                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_00A1                          ; 75 07
        call    far _entry_138                  ; 9A F2 00 00 00 [FIXUP]
        jmp     L_007A                          ; EB D9
L_00A1:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALLOCK           ; 9A DD 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [si + 0x10]        ; 03 44 10
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        les     di, ptr [bp - 4]                ; C4 7E FC
        mov     byte ptr es:[bx + di], 0        ; 26 C6 01 00
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALUNLOCK         ; 9A 01 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_138                  ; 9A CD 01 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_00F9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0101 -- offset 0x0101 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: far, small
; calls (intra): sub_005A, sub_012C
;----------------------------------------------------------------------
L_0101:
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    L_005A                          ; E8 44 FF
        or      ax, ax                          ; 0B C0
        je      L_0120                          ; 74 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_012C                          ; E8 0C 00
L_0120:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_012C -- offset 0x012C -- 40 instr
; Funcion mediana (40 instr, 1 calls).
; tags: far, medium
; callers: sub_0101
; calls (intra): sub_02D2
;----------------------------------------------------------------------
L_012C:
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
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_0152                          ; 74 0F
        push    si                              ; 56
        call    far _entry_522                  ; 9A 85 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        call    L_02D2                          ; E8 82 01
        jmp     L_016B                          ; EB 19
L_0152:
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [si + 0x10]            ; FF 74 10
        call    far _entry_521                  ; 9A A5 01 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_520                  ; 9A BA 02 00 00 [FIXUP]
L_016B:
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_017F -- offset 0x017F -- 63 instr
; Funcion mediana (63 instr, 4 calls).
; tags: calls_kernel, far, medium
; calls (intra): sub_0216
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_017F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_01A0                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01A9                          ; EB 09
L_01A0:
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_521                  ; 9A A8 02 00 00 [FIXUP]
L_01A9:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [si + 2]               ; FF 74 02
        call    far _entry_137                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01BC                          ; 75 04
L_01B8:
        sub     ax, ax                          ; 2B C0
        jmp     L_020A                          ; EB 4E
L_01BC:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_142                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_01D3                          ; 75 07
        call    far _entry_138                  ; 9A 06 02 00 00 [FIXUP]
        jmp     L_01B8                          ; EB E5
L_01D3:
        push    si                              ; 56
        call    far _entry_497                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0216                          ; E8 1C 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_138                  ; 9A FF FF 00 00 [FIXUP]
L_020A:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0216 -- offset 0x0216 -- 74 instr
; Dispatcher: tabla de decisiones cmp+jcc (74 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_017F
; calls (intra): sub_02D2
; calls (inter): KERNEL.GLOBALHANDLE
;----------------------------------------------------------------------
L_0216:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_02A2                          ; 74 75
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
L_0244:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_0258                          ; 73 0C
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0xd           ; 26 80 3F 0D
        jne     L_0273                          ; 75 1B
L_0258:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     ax, word ptr [bp + 8]           ; 03 46 08
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        add     ax, word ptr [si + 0x10]        ; 03 44 10
        cmp     ax, word ptr [si + 0x30]        ; 3B 44 30
        jbe     L_0278                          ; 76 0F
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_637F                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02BE                          ; EB 4B
L_0273:
        inc     word ptr [bp + 8]               ; FF 46 08
        jmp     L_0244                          ; EB CC
L_0278:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        push    si                              ; 56
        call    far _entry_522                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_509                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    L_02D2                          ; E8 32 00
        jmp     L_02BE                          ; EB 1C
L_02A2:
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [si + 0x10]            ; FF 74 10
        call    far _entry_521                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_520                  ; 9A FF FF 00 00 [FIXUP]
L_02BE:
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02D2 -- offset 0x02D2 -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: small
; callers: sub_012C, sub_0216
;----------------------------------------------------------------------
L_02D2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        call    far _entry_511                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    si                              ; 56
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_519                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_508                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

USER_TEXT ENDS

        END
