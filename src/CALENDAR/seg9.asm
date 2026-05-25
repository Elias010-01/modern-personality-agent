; AUTO-GENERATED from original CALENDAR segment 9
; segment_size=542 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CALENDAR_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x2fe], ax            ; A3 FE 02
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x152                       ; B8 52 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 52 00 00 00 [FIXUP]
        mov     word ptr [0x140], ax            ; A3 40 01
        test    byte ptr [bp + 6], 0x20         ; F6 46 06 20
        je      L_0036                          ; 74 08
        mov     word ptr [0x142], 1             ; C7 06 42 01 01 00
        jmp     L_0059                          ; EB 23
L_0036:
        test    byte ptr [bp + 6], 0x10         ; F6 46 06 10
        je      L_0044                          ; 74 08
        mov     word ptr [0x142], 0             ; C7 06 42 01 00 00
        jmp     L_0059                          ; EB 15
L_0044:
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x158                       ; B8 58 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 75 00 00 00 [FIXUP]
        mov     word ptr [0x142], ax            ; A3 42 01
L_0059:
        test    byte ptr [bp + 6], 4            ; F6 46 06 04
        je      L_0067                          ; 74 08
        mov     word ptr [0x144], 1             ; C7 06 44 01 01 00
        jmp     L_007C                          ; EB 15
L_0067:
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x15e                       ; B8 5E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 8A 00 00 00 [FIXUP]
        mov     word ptr [0x144], ax            ; A3 44 01
L_007C:
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x165                       ; B8 65 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x13e], ax            ; A3 3E 01
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x171                       ; B8 71 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x132                       ; B8 32 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C1 00 00 00 [FIXUP]
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x177                       ; B8 77 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A DE 00 00 00 [FIXUP]
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x17f                       ; B8 7F 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x17d                       ; B8 7D 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 01 01 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [0x130], al            ; A2 30 01
        mov     ax, 0x18e                       ; B8 8E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x187                       ; B8 87 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x185                       ; B8 85 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr [0x131], al            ; A2 31 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        mov     ax, 0x7fe                       ; B8 FE 07
        push    ax                              ; 50
        call    L_01D3                          ; E8 A9 00
        mov     ax, 0x7ff                       ; B8 FF 07
        push    ax                              ; 50
        call    L_01D3                          ; E8 A2 00
        mov     word ptr [0x224], 6             ; C7 06 24 02 06 00
        mov     ax, 0x7fe0                      ; B8 E0 7F
        push    ax                              ; 50
        mov     ax, 0x7feb                      ; B8 EB 7F
        push    ax                              ; 50
        call    L_0193                          ; E8 51 00
        add     word ptr [0x224], 5             ; 83 06 24 02 05
        mov     ax, 0x7fec                      ; B8 EC 7F
        push    ax                              ; 50
        mov     ax, 0x7ff2                      ; B8 F2 7F
        push    ax                              ; 50
        call    L_0193                          ; E8 41 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jne     L_0183                          ; 75 25
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 71 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x132                       ; B8 32 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x45e], ax            ; A3 5E 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_0183                          ; 7E 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x45e], ax            ; A3 5E 04
L_0183:
        add     word ptr [0x45e], 6             ; 83 06 5E 04 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0193 -- offset 0x0193 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_user, small
; calls (inter): USER.LOADSTRING
;----------------------------------------------------------------------
L_0193:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_01BF                          ; EB 20
L_019F:
        push    word ptr [0x2fe]                ; FF 36 FE 02
        push    word ptr [bp + 6]               ; FF 76 06
        inc     word ptr [bp + 6]               ; FF 46 06
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        jle     L_01BF                          ; 7E 02
        mov     si, di                          ; 8B F7
L_01BF:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jbe     L_019F                          ; 76 D8
        add     word ptr [0x224], si            ; 01 36 24 02
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01D3 -- offset 0x01D3 -- 33 instr
; Funcion mediana (33 instr, 3 calls).
; tags: calls_kernel, medium
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.GLOBALLOCK, KERNEL.LOADRESOURCE
;----------------------------------------------------------------------
L_01D3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x2fe]                ; FF 36 FE 02
        mov     ax, 0x7fe                       ; B8 FE 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_020A                          ; 74 18
        push    word ptr [0x2fe]                ; FF 36 FE 02
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_020A                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_020C                          ; EB 02
L_020A:
        sub     ax, ax                          ; 2B C0
L_020C:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0219                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
L_0219:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02

CALENDAR_TEXT ENDS

        END
