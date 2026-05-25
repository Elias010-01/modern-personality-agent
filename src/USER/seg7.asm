; AUTO-GENERATED from original USER segment 7
; segment_size=814 bytes, flags=0xf170
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
; REGISTERCLASS -- 89 instr
; Registra una clase de ventana.
; tags: calls_kernel, complex, far
; calls (inter): KERNEL.ADDATOM, KERNEL.DELETEATOM, KERNEL.GETMODULEHANDLE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LSTRCPY (+1 mas)
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; REGISTERCLASS  (offset 0x0000, size 217 bytes)
;-----------------------------------------------------------------------
REGISTERCLASS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        add     ax, 0x24                        ; 05 24 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 7C 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_002E                          ; 75 05
L_0029:
        sub     ax, ax                          ; 2B C0
        jmp     L_00CC                          ; E9 9E 00
L_002E:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [si + 0xa]                  ; 8D 44 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 0x22]            ; FF 74 22
        push    word ptr [si + 0x20]            ; FF 74 20
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 4], ax           ; 89 44 04
        or      ax, ax                          ; 0B C0
        je      L_008E                          ; 74 3A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        mov     dx, word ptr [si + 0x1e]        ; 8B 54 1E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        je      L_00AD                          ; 74 41
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0096                          ; 75 10
        push    word ptr [si + 4]               ; FF 74 04
        call    far KERNEL.DELETEATOM           ; 9A 3C 02 00 00 [FIXUP]
L_008E:
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A 4A 02 00 00 [FIXUP]
        jmp     L_0029                          ; EB 93
L_0096:
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, di                          ; 8B C7
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        mov     word ptr [si + 0x1e], ds        ; 8C 5C 1E
L_00AD:
        mov     word ptr [si + 2], 0x4b4e       ; C7 44 02 4E 4B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [si + 0x14]            ; FF 74 14
        call    far KERNEL.GETMODULEHANDLE      ; 9A 16 02 00 00 [FIXUP]
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     ax, word ptr [0x14]             ; A1 14 00
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [0x14], si             ; 89 36 14 00
        mov     ax, 1                           ; B8 01 00
L_00CC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
REGISTERCLASS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETCLASSNAME -- 75 instr
; Getter: devuelve classname.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.GETATOMNAME, KERNEL.GLOBALHANDLE, KERNEL.LSTRCMP
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETCLASSNAME  (offset 0x00D9, size 179 bytes)
;-----------------------------------------------------------------------
GETCLASSNAME PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0108                          ; 74 19
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     bx, word ptr [bx + 4]           ; 8B 5F 04
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GETATOMNAME          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010A                          ; EB 02
L_0108:
        sub     ax, ax                          ; 2B C0
L_010A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
L_0115:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x102                       ; 81 EC 02 01
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        jmp     L_017F                          ; EB 5A
L_0125:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0136                          ; 74 0B
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        jne     L_017D                          ; 75 47
L_0136:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        jne     L_0142                          ; 75 04
L_013E:
        mov     ax, si                          ; 8B C6
        jmp     L_0185                          ; EB 43
L_0142:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALHANDLE         ; 9A 61 01 00 00 [FIXUP]
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    si                              ; 56
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xff                        ; B8 FF 00
        push    ax                              ; 50
        call    far _SEG1_61DC                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x100]                ; 8D 86 00 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_013E                          ; 74 C1
L_017D:
        mov     si, word ptr [si]               ; 8B 34
L_017F:
        or      si, si                          ; 0B F6
        jne     L_0125                          ; 75 A2
        sub     ax, ax                          ; 2B C0
L_0185:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
GETCLASSNAME ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; FINDWINDOW -- 47 instr
; Busca ventana por clase y/o titulo.
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.FINDATOM
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; FINDWINDOW  (offset 0x018C, size 103 bytes)
;-----------------------------------------------------------------------
FINDWINDOW PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_01A7                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_01B2                          ; EB 0B
L_01A7:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
L_01B2:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     di, word ptr [0x51c]            ; 8B 3E 1C 05
        add     di, 5                           ; 83 C7 05
        mov     ax, word ptr [0x5d2]            ; A1 D2 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_01DD                          ; EB 19
L_01C4:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        add     word ptr [bp - 4], 0xe          ; 83 46 FC 0E
        call    L_0115                          ; E8 3E FF
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_01E6                          ; 75 09
L_01DD:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jne     L_01C4                          ; 75 E0
        sub     ax, ax                          ; 2B C0
L_01E6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
FINDWINDOW ENDP

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
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0262                          ; 75 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     di, 0x14                        ; BF 14 00
        jmp     L_025C                          ; EB 3A
L_0222:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 0x14], ax        ; 39 44 14
        jne     L_025A                          ; 75 30
        cmp     word ptr [si + 6], 0            ; 83 7C 06 00
        je      L_0238                          ; 74 08
        push    word ptr [si + 6]               ; FF 74 06
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_0238:
        push    word ptr [si + 4]               ; FF 74 04
        call    far KERNEL.DELETEATOM           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [si + 0x1e], 0         ; 83 7C 1E 00
        je      L_024E                          ; 74 08
        push    word ptr [si + 0x1c]            ; FF 74 1C
        call    far KERNEL.LOCALFREE            ; 9A 54 02 00 00 [FIXUP]
L_024E:
        mov     ax, word ptr [si]               ; 8B 04
        mov     word ptr [di], ax               ; 89 05
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_025C                          ; EB 02
L_025A:
        mov     di, si                          ; 8B FE
L_025C:
        mov     si, word ptr [di]               ; 8B 35
        or      si, si                          ; 0B F6
        jne     L_0222                          ; 75 C0
L_0262:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DESTROYTASKWINDOWS2 -- 34 instr
; Destructor: libera taskwindows2.
; tags: far, medium
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; DESTROYTASKWINDOWS2  (offset 0x026F, size 79 bytes)
;-----------------------------------------------------------------------
DESTROYTASKWINDOWS2 PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_02B3                          ; 75 2F
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0292                          ; 74 08
        push    bx                              ; 53
        call    far _SEG1_07E5                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02B3                          ; EB 21
L_0292:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     word ptr [bx + OFFSET _SEG1_679B], 0xffff ; C7 47 3C FF FF [FIXUP]
        mov     word ptr [bx + OFFSET _SEG1_679B], 0xffff ; C7 47 3E FF FF [FIXUP]
        push    bx                              ; 53
        mov     ax, OFFSET _entry_321           ; B8 C9 02 [FIXUP]
        mov     dx, OFFSET _entry_321           ; BA CC 02 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_8224                  ; 9A FF FF 00 00 [FIXUP]
L_02B3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
DESTROYTASKWINDOWS2 ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, OFFSET _entry_321           ; B8 DC 02 [FIXUP]
        mov     dx, OFFSET _entry_321           ; BA DF 02 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_820C                  ; 9A EE 02 00 00 [FIXUP]
        mov     ax, OFFSET _entry_321           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_321           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     dx, dx                          ; 2B D2
        or      dl, 1                           ; 80 CA 01
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_820C                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        jmp     L_031C                          ; EB 0B
L_0311:
        mov     si, word ptr [di]               ; 8B 35
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_08C2                  ; 9A FF FF 00 00 [FIXUP]
L_031C:
        mov     di, si                          ; 8B FE
        or      di, di                          ; 0B FF
        jne     L_0311                          ; 75 EF
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

USER_TEXT ENDS

        END
