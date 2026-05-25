; AUTO-GENERATED from original REVERSI segment 1
; segment_size=9029 bytes, flags=0x0110
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

REVERSI_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0022                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A 4F 00 00 00 [FIXUP]
L_001D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_002B                          ; EB 09
L_0022:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_001D                          ; 74 F4
        sub     ax, ax                          ; 2B C0
L_002B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0058                          ; 75 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
L_0053:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0061                          ; EB 09
L_0058:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_0053                          ; 74 F4
        sub     ax, ax                          ; 2B C0
L_0061:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_006C -- offset 0x006C -- 55 instr
; Funcion mediana (55 instr, 7 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_1B6E
; calls (intra): sub_03F2, sub_0B27
; calls (inter): GDI.GETSTOCKOBJECT, GDI.GETTEXTMETRICS, GDI.SELECTOBJECT, USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_006C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        mov     word ptr [0x978], 0             ; C7 06 78 09 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 87 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [0x97e], ax            ; A3 7E 09
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x986], ax            ; A3 86 09
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A 3F 03 00 00 [FIXUP]
        cmp     word ptr [0x97a], 1             ; 83 3E 7A 09 01
        jne     L_00C9                          ; 75 0B
        mov     ax, word ptr [0x976]            ; A1 76 09
        mov     word ptr [0x9da], ax            ; A3 DA 09
        mov     ax, word ptr [0x9f2]            ; A1 F2 09
        jmp     L_00D2                          ; EB 09
L_00C9:
        mov     ax, word ptr [0x9fe]            ; A1 FE 09
        mov     word ptr [0x9da], ax            ; A3 DA 09
        mov     ax, word ptr [0x9f0]            ; A1 F0 09
L_00D2:
        mov     word ptr [0x9ec], ax            ; A3 EC 09
        mov     ax, 0x2d                        ; B8 2D 00
        imul    word ptr [0x9de]                ; F7 2E DE 09
        mov     word ptr [0x9dc], ax            ; A3 DC 09
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        call    L_0B27                          ; E8 41 0A
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [0x9f8], 0x14          ; C7 06 F8 09 14 00
        mov     word ptr [0xa42], 1             ; C7 06 42 0A 01 00
        mov     word ptr [0x9ee], 0x29          ; C7 06 EE 09 29 00
        mov     word ptr [0x97c], 1             ; C7 06 7C 09 01 00
        mov     ax, 0x29                        ; B8 29 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_03F2                          ; E8 E7 02
        add     sp, 4                           ; 83 C4 04
        mov     ax, 1                           ; B8 01 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0115 -- offset 0x0115 -- 109 instr
; Dispatcher: tabla de decisiones cmp+jcc (109 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_1B6E
; calls (intra): sub_08DD, sub_120D
; calls (inter): GDI.PATBLT, GDI.SETBKMODE, USER.GETCLIENTRECT
;----------------------------------------------------------------------
L_0115:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0xaa6], ax            ; A3 A6 0A
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 9D 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [0x9e0], ax            ; A3 E0 09
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        imul    word ptr [0x9de]                ; F7 2E DE 09
        cmp     ax, word ptr [bp - 0x1c]        ; 3B 46 E4
        jle     L_0182                          ; 7E 23
        mov     ax, word ptr [0x9dc]            ; A1 DC 09
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jge     L_016A                          ; 7D 03
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
L_016A:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [0x652], ax            ; A3 52 06
        cdq                                     ; 99
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        idiv    cx                              ; F7 F9
        mov     word ptr [0x654], ax            ; A3 54 06
        jmp     L_01A0                          ; EB 1E
L_0182:
        mov     ax, word ptr [0x28]             ; A1 28 00
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jge     L_018D                          ; 7D 03
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_018D:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [0x654], ax            ; A3 54 06
        imul    word ptr [0x9de]                ; F7 2E DE 09
        mov     word ptr [0x652], ax            ; A3 52 06
L_01A0:
        mov     ax, word ptr [0x654]            ; A1 54 06
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0x652]            ; A1 52 06
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cdq                                     ; 99
        mov     cx, 0x1e                        ; B9 1E 00
        idiv    cx                              ; F7 F9
        mov     word ptr [0x9e2], ax            ; A3 E2 09
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jle     L_01D3                          ; 7E 0D
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_01D5                          ; EB 02
L_01D3:
        sub     ax, ax                          ; 2B C0
L_01D5:
        mov     word ptr [0xa00], ax            ; A3 00 0A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jle     L_01ED                          ; 7E 0D
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_01EF                          ; EB 02
L_01ED:
        sub     ax, ax                          ; 2B C0
L_01EF:
        mov     word ptr [0xa04], ax            ; A3 04 0A
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        call    L_08DD                          ; E8 E4 06
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [0x978], 0             ; 83 3E 78 09 00
        je      L_022D                          ; 74 2A
        push    word ptr [0xa12]                ; FF 36 12 0A
        push    word ptr [0xa10]                ; FF 36 10 0A
        call    L_120D                          ; E8 FF 0F
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x9e0]                ; FF 36 E0 09
        push    word ptr [0x97e]                ; FF 36 7E 09
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
L_022D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0231 -- offset 0x0231 -- 23 instr
; Dispatcher: tabla de decisiones cmp+jcc (23 instr).
; tags: dispatcher
; callers: sub_1B6E
; calls (intra): sub_160A
;----------------------------------------------------------------------
L_0231:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_0241                          ; 74 03
        jmp     L_03EE                          ; E9 AD 01
L_0241:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0xaa6], ax            ; A3 A6 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x29                        ; 3D 29 00
        je      L_02C7                          ; 74 78
        jle     L_0254                          ; 7E 03
        jmp     L_03CE                          ; E9 7A 01
L_0254:
        cmp     ax, 0x14                        ; 3D 14 00
        jne     L_025C                          ; 75 03
        jmp     L_02FE                          ; E9 A2 00
L_025C:
        cmp     ax, 0x1e                        ; 3D 1E 00
        je      L_0270                          ; 74 0F
        jmp     L_03EE                          ; E9 8A 01
L_0264:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_160A                          ; E8 A0 13
        add     sp, 2                           ; 83 C4 02
        jmp     L_03EE                          ; E9 7E 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0270 -- offset 0x0270 -- 130 instr
; Dispatcher: tabla de decisiones cmp+jcc (130 instr).
; tags: calls_gdi, calls_user, dispatcher
; calls (intra): sub_03F2, sub_0429, sub_064B, sub_08DD, sub_0B27, sub_1349 (+1 mas)
; calls (inter): GDI.SETBKMODE, USER.DIALOGBOX, USER.GETDC, USER.RELEASEDC, USER.SETCURSOR, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_0270:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb22                       ; B8 22 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x97c], 1             ; C7 06 7C 09 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 0C 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 1C 03 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_1349                          ; E8 A2 10
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [0x9f8], 0x14          ; C7 06 F8 09 14 00
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        call    L_0B27                          ; E8 70 08
        add     sp, 2                           ; 83 C4 02
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        call    L_08DD                          ; E8 1C 06
        add     sp, 2                           ; 83 C4 02
        jmp     L_03A5                          ; E9 DE 00
L_02C7:
        mov     word ptr [0xa42], 1             ; C7 06 42 0A 01 00
        mov     ax, 0x29                        ; B8 29 00
L_02D0:
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_03F2                          ; E8 1B 01
        add     sp, 4                           ; 83 C4 04
        jmp     L_03EE                          ; E9 11 01
L_02DD:
        mov     word ptr [0xa42], 2             ; C7 06 42 0A 02 00
        mov     ax, 0x2a                        ; B8 2A 00
        jmp     L_02D0                          ; EB E8
L_02E8:
        mov     word ptr [0xa42], 4             ; C7 06 42 0A 04 00
        mov     ax, 0x2c                        ; B8 2C 00
        jmp     L_02D0                          ; EB DD
L_02F3:
        mov     word ptr [0xa42], 6             ; C7 06 42 0A 06 00
        mov     ax, 0x2e                        ; B8 2E 00
        jmp     L_02D0                          ; EB D2
L_02FE:
        cmp     word ptr [0x9f8], 0x14          ; 83 3E F8 09 14
        je      L_0308                          ; 74 03
        jmp     L_03B2                          ; E9 AA 00
L_0308:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 65 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [0xa10], ax            ; A3 10 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_1349                          ; E8 1D 10
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far USER.SETCURSOR              ; 9A 9B 03 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x8001                      ; B8 01 80
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        call    L_1E2A                          ; E8 C9 1A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [0xa32]                ; FF 36 32 0A
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_064B                          ; E8 C9 02
        push    word ptr [0xa32]                ; FF 36 32 0A
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0429                          ; E8 96 00
        add     sp, 8                           ; 83 C4 08
        push    word ptr [0x9fc]                ; FF 36 FC 09
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
L_03A5:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far USER.RELEASEDC              ; 9A B3 00 00 00 [FIXUP]
        jmp     L_03EE                          ; EB 3C
L_03B2:
        push    word ptr [0x650]                ; FF 36 50 06
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa82]                ; FF 36 82 0A
        push    word ptr [0xa80]                ; FF 36 80 0A
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03EE                          ; EB 20
L_03CE:
        cmp     ax, 0x2a                        ; 3D 2A 00
        jne     L_03D6                          ; 75 03
        jmp     L_02DD                          ; E9 07 FF
L_03D6:
        cmp     ax, 0x2c                        ; 3D 2C 00
        jne     L_03DE                          ; 75 03
        jmp     L_02E8                          ; E9 0A FF
L_03DE:
        cmp     ax, 0x2e                        ; 3D 2E 00
        jne     L_03E6                          ; 75 03
        jmp     L_02F3                          ; E9 0D FF
L_03E6:
        cmp     ax, 0x32                        ; 3D 32 00
        jne     L_03EE                          ; 75 03
        jmp     L_0264                          ; E9 76 FE
L_03EE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03F2 -- offset 0x03F2 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_user, small
; callers: sub_006C, sub_0270
; calls (inter): USER.CHECKMENUITEM, USER.GETMENU
;----------------------------------------------------------------------
L_03F2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        push    word ptr [0x9ee]                ; FF 36 EE 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A 1B 04 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x9ee], ax            ; A3 EE 09
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0429 -- offset 0x0429 -- 106 instr
; Dispatcher: tabla de decisiones cmp+jcc (106 instr).
; tags: dispatcher
; callers: sub_0270, sub_1479
; calls (intra): sub_0BE0, sub_2082
;----------------------------------------------------------------------
L_0429:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0x2a       ; C7 46 F6 2A 00
        mov     word ptr [0x9f8], 0x14          ; C7 06 F8 09 14 00
        mov     word ptr [bp - 4], 0x14         ; C7 46 FC 14 00
        jmp     L_047A                          ; EB 38
L_0442:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2082                          ; E8 2F 1C
        or      ax, ax                          ; 0B C0
        je      L_045F                          ; 74 08
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x9f8], ax            ; A3 F8 09
        jmp     L_047A                          ; EB 1B
L_045F:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_2082                          ; E8 12 1C
        or      ax, ax                          ; 0B C0
        je      L_047A                          ; 74 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_047A:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0442                          ; 75 B8
        cmp     word ptr [0x9f8], 0x14          ; 83 3E F8 09 14
        je      L_0494                          ; 74 03
        jmp     L_0518                          ; E9 84 00
L_0494:
        cmp     word ptr [bp + 0xa], 0x14       ; 83 7E 0A 14
        je      L_04A0                          ; 74 06
        cmp     word ptr [bp - 4], 0x14         ; 83 7E FC 14
        jne     L_050F                          ; 75 6F
L_04A0:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [bp - 8], 0xb          ; C7 46 F8 0B 00
L_04AF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     byte ptr [bx + si], 2           ; 80 38 02
        jne     L_04BF                          ; 75 05
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_04CD                          ; EB 0E
L_04BF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     byte ptr [bx + si], 3           ; 80 38 03
        jne     L_04CD                          ; 75 03
        inc     word ptr [bp - 2]               ; FF 46 FE
L_04CD:
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     word ptr [bp - 8], 0x58         ; 83 7E F8 58
        jle     L_04AF                          ; 7E D9
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_04EE                          ; 7E 10
        mov     ax, 0xa84                       ; B8 84 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        push    ax                              ; 50
        mov     ax, 0xb02                       ; B8 02 0B
        jmp     L_0525                          ; EB 37
L_04EE:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_0506                          ; 7D 10
        mov     ax, 0xa14                       ; B8 14 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        push    ax                              ; 50
        mov     ax, 0xa62                       ; B8 62 0A
        jmp     L_0525                          ; EB 1F
L_0506:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xaa8                       ; B8 A8 0A
        jmp     L_0525                          ; EB 16
L_050F:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xb36                       ; B8 36 0B
        jmp     L_0525                          ; EB 0D
L_0518:
        cmp     word ptr [bp + 0xa], 0x14       ; 83 7E 0A 14
        jne     L_0532                          ; 75 14
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xa44                       ; B8 44 0A
L_0525:
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0BE0                          ; E8 B1 06
        add     sp, 0xa                         ; 83 C4 0A
L_0532:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0537 -- offset 0x0537 -- 43 instr
; Funcion mediana (43 instr, 5 calls).
; tags: calls_user, medium
; callers: sub_0F70, sub_1E2A
; calls (intra): sub_223E
; calls (inter): USER.DISPATCHMESSAGE, USER.PEEKMESSAGE, USER.TRANSLATEACCELERATOR, USER.TRANSLATEMESSAGE
;----------------------------------------------------------------------
L_0537:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0563                          ; 74 0F
        cmp     word ptr [bp - 0x10], 0x12      ; 83 7E F0 12
        jne     L_0567                          ; 75 0D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_223E                          ; E8 DE 1C
        add     sp, 2                           ; 83 C4 02
L_0563:
        sub     ax, ax                          ; 2B C0
        jmp     L_0594                          ; EB 2D
L_0567:
        push    word ptr [0xaa6]                ; FF 36 A6 0A
        push    word ptr [0xb20]                ; FF 36 20 0B
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEACCELERATOR   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0591                          ; 75 14
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0591:
        mov     ax, 1                           ; B8 01 00
L_0594:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0598 -- offset 0x0598 -- 68 instr
; Dispatcher: tabla de decisiones cmp+jcc (68 instr).
; tags: calls_gdi, dispatcher
; callers: sub_08DD
; calls (inter): GDI.ELLIPSE, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0598:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_05A5:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_05AA:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 4]           ; 03 76 FC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + si + 0xb]    ; 8A 40 0B
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 1                           ; 3D 01 00
        je      L_062D                          ; 74 68
        cmp     ax, 3                           ; 3D 03 00
        jne     L_05D4                          ; 75 0A
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9da]                ; FF 36 DA 09
        jmp     L_05DC                          ; EB 08
L_05D4:
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9ec]                ; FF 36 EC 09
L_05DC:
        call    far GDI.SELECTOBJECT            ; 9A 6A 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [0x654]                ; F7 2E 54 06
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0xa04]            ; 03 36 04 0A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [0x9de]            ; A1 DE 09
        shl     ax, 1                           ; D1 E0
        add     di, ax                          ; 03 F8
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        mov     ax, word ptr [0x9de]            ; A1 DE 09
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        neg     ax                              ; F7 D8
        add     ax, word ptr [0x652]            ; 03 06 52 06
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        mov     ax, word ptr [0x654]            ; A1 54 06
        add     ax, si                          ; 03 C6
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A E7 06 00 00 [FIXUP]
L_062D:
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jge     L_0639                          ; 7D 03
        jmp     L_05AA                          ; E9 71 FF
L_0639:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jge     L_0645                          ; 7D 03
        jmp     L_05A5                          ; E9 60 FF
L_0645:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_064B -- offset 0x064B -- 166 instr
; Dispatcher: tabla de decisiones cmp+jcc (166 instr).
; tags: calls_gdi, dispatcher
; callers: sub_0270, sub_1479, sub_1E2A
; calls (intra): sub_0812
; calls (inter): GDI.ELLIPSE, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_064B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0x14         ; 83 7E 08 14
        jne     L_065B                          ; 75 03
        jmp     L_080B                          ; E9 B0 01
L_065B:
        cmp     word ptr [bp + 6], 3            ; 83 7E 06 03
        jne     L_0675                          ; 75 14
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9da]                ; FF 36 DA 09
        call    far GDI.SELECTOBJECT            ; 9A 7E 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0687                          ; EB 12
L_0675:
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9ec]                ; FF 36 EC 09
        call    far GDI.SELECTOBJECT            ; 9A 8F 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
L_0687:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        imul    word ptr [0x654]                ; F7 2E 54 06
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x652]            ; 03 06 52 06
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x654]            ; 03 06 54 06
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [0x654]            ; A1 54 06
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0x652]            ; A1 52 06
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xa10]                ; FF 36 10 0A
        call    L_0812                          ; E8 FB 00
        add     sp, 0x10                        ; 83 C4 10
        mov     word ptr [bp - 4], 0x14         ; C7 46 FC 14 00
        jmp     L_07ED                          ; E9 CB 00
L_0722:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        je      L_0740                          ; 74 03
        jmp     L_07ED                          ; E9 AD 00
L_0740:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        je      L_0740                          ; 74 EB
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_075D                          ; 74 03
        jmp     L_07ED                          ; E9 90 00
L_075D:
        jmp     L_07D5                          ; EB 76
L_075F:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx + si], al          ; 88 00
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     byte ptr [bx + 0x656], al       ; 88 87 56 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        imul    word ptr [0x654]                ; F7 2E 54 06
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, word ptr [0x652]            ; 03 06 52 06
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x654]            ; 03 06 54 06
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A 91 08 00 00 [FIXUP]
L_07D5:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     word ptr [bp - 0xc], ax         ; 29 46 F4
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_07ED                          ; 75 03
        jmp     L_075F                          ; E9 72 FF
L_07ED:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0800                          ; 74 03
        jmp     L_0722                          ; E9 22 FF
L_0800:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        mov     byte ptr [bx + si], al          ; 88 00
L_080B:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0812 -- offset 0x0812 -- 67 instr
; Dispatcher: tabla de decisiones cmp+jcc (67 instr).
; tags: calls_gdi, calls_user, dispatcher
; callers: sub_064B, sub_160A
; calls (inter): GDI.ELLIPSE, GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT, GDI.SETBKMODE, USER.SETCURSOR
;----------------------------------------------------------------------
L_0812:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_0830                          ; 74 12
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 89 00 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 69 08 00 00 [FIXUP]
L_0830:
        push    word ptr [0x9d8]                ; FF 36 D8 09
        call    far USER.SETCURSOR              ; 9A D5 08 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_0898                          ; EB 58
L_0840:
        cmp     word ptr [bp + 0xe], 1          ; 83 7E 0E 01
        jne     L_084D                          ; 75 07
        mov     word ptr [bp + 0xe], 2          ; C7 46 0E 02 00
        jmp     L_0852                          ; EB 05
L_084D:
        mov     word ptr [bp + 0xe], 1          ; C7 46 0E 01 00
L_0852:
        cmp     word ptr [bp + 0xe], 1          ; 83 7E 0E 01
        jne     L_0861                          ; 75 09
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x9da]                ; FF 36 DA 09
        jmp     L_0868                          ; EB 07
L_0861:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x9ec]                ; FF 36 EC 09
L_0868:
        call    far GDI.SELECTOBJECT            ; 9A AE 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 30 01 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A CA 08 00 00 [FIXUP]
        inc     word ptr [bp - 2]               ; FF 46 FE
L_0898:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0840                          ; 7C A0
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_08D0                          ; 74 2A
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa02]                ; FF 36 02 0A
        call    far GDI.SELECTOBJECT            ; 9A 08 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        push    ax                              ; 50
        call    far GDI.ELLIPSE                 ; 9A 29 06 00 00 [FIXUP]
        jmp     L_08D9                          ; EB 09
L_08D0:
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far USER.SETCURSOR              ; 9A 34 03 00 00 [FIXUP]
L_08D9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08DD -- offset 0x08DD -- 194 instr
; Dispatcher: tabla de decisiones cmp+jcc (194 instr).
; tags: calls_gdi, dispatcher
; callers: sub_0115, sub_0270
; calls (intra): sub_0598
; calls (inter): GDI.LINETO, GDI.MOVETO, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_08DD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, word ptr [0x654]            ; A1 54 06
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x652]            ; A1 52 06
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x9e2]            ; A1 E2 09
        imul    word ptr [0x9de]                ; F7 2E DE 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9fe]                ; FF 36 FE 09
        call    far GDI.SELECTOBJECT            ; 9A 40 09 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        push    ax                              ; 50
        mov     ax, word ptr [0x9e2]            ; A1 E2 09
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 5F 09 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0xa02]                ; FF 36 02 0A
        call    far GDI.SELECTOBJECT            ; 9A 6C 09 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0xa00]                ; FF 36 00 0A
        push    word ptr [0xa04]                ; FF 36 04 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 93 09 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9fe]                ; FF 36 FE 09
        call    far GDI.SELECTOBJECT            ; 9A FF 09 00 00 [FIXUP]
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_099D                          ; EB 25
L_0978:
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [0xa04]                ; FF 36 04 0A
        push    word ptr [0x9de]                ; FF 36 DE 09
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A CC 09 00 00 [FIXUP]
        mov     ax, word ptr [0x652]            ; A1 52 06
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_099D:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_0978                          ; 7D CF
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_09D6                          ; EB 25
L_09B1:
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0xa00]                ; FF 36 00 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 34 0A 00 00 [FIXUP]
        mov     ax, word ptr [0x654]            ; A1 54 06
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_09D6:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jge     L_09B1                          ; 7D CF
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0xa02]                ; FF 36 02 0A
        call    far GDI.SELECTOBJECT            ; 9A 89 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0A3B                          ; EB 31
L_0A0A:
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 71 0A 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0A3B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0A0A                          ; 7C C7
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_0A78                          ; EB 2E
L_0A4A:
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        imul    word ptr [0x9de]                ; F7 2E DE 09
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 29 02 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0A78:
        mov     ax, word ptr [0x9e2]            ; A1 E2 09
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0A4A                          ; 7C CA
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0x9fe]                ; FF 36 FE 09
        call    far GDI.SELECTOBJECT            ; 9A DD 05 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [0xa04]                ; FF 36 04 0A
        call    far GDI.MOVETO                  ; 9A 0A 0B 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        push    ax                              ; 50
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        add     ax, word ptr [0x9e2]            ; 03 06 E2 09
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A C9 0A 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x9e2]            ; 03 06 E2 09
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A E2 0A 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x9e2]            ; 03 06 E2 09
        push    ax                              ; 50
        call    far GDI.LINETO                  ; 9A F2 0A 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [0xa00]                ; FF 36 00 0A
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.LINETO                  ; 9A 19 0B 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x9e2]            ; 03 06 E2 09
        push    ax                              ; 50
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa10]                ; FF 36 10 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0598                          ; E8 75 FA
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B27 -- offset 0x0B27 -- 64 instr
; Dispatcher: tabla de decisiones cmp+jcc (64 instr).
; tags: dispatcher
; callers: sub_006C, sub_0270
;----------------------------------------------------------------------
L_0B27:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0B33:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0B38:
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 4]           ; 03 5E FC
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     byte ptr [bx + si], 0           ; C6 00 00
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 0x63         ; 83 7E FC 63
        jle     L_0B38                          ; 7E E6
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 6            ; 83 7E FE 06
        jle     L_0B33                          ; 7E D8
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0B60:
        mov     word ptr [bp - 4], 0xb          ; C7 46 FC 0B 00
L_0B65:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0B81                          ; EB 14
L_0B6D:
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 6]           ; 03 5E FA
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     byte ptr [bx + si], 1           ; C6 00 01
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0B81:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 8                           ; 05 08 00
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jg      L_0B6D                          ; 7F E1
        add     word ptr [bp - 4], 0xa          ; 83 46 FC 0A
        cmp     word ptr [bp - 4], 0x51         ; 83 7E FC 51
        jle     L_0B65                          ; 7E CF
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr [bx + si + 0x2d], 3    ; C6 40 2D 03
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr [bx + si + 0x36], 3    ; C6 40 36 03
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr [bx + si + 0x2c], 2    ; C6 40 2C 02
        mov     ax, 0x64                        ; B8 64 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr [bx + si + 0x37], 2    ; C6 40 37 02
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 6            ; 83 7E FE 06
        jle     L_0B60                          ; 7E 85
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BE0 -- offset 0x0BE0 -- 62 instr
; Dispatcher: tabla de decisiones cmp+jcc (62 instr).
; tags: dispatcher
; callers: sub_0429
; calls (intra): sub_120D, sub_12B8
;----------------------------------------------------------------------
L_0BE0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     word ptr [bp - 2], 0x988        ; C7 46 FE 88 09
        jmp     L_0BFE                          ; EB 10
L_0BEE:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
L_0BFE:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0BEE                          ; 75 E8
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0C39                          ; 74 2D
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0C25                          ; 74 0A
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        add     al, 0x30                        ; 04 30
        mov     byte ptr [bx], al               ; 88 07
L_0C25:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     byte ptr [bx], dl               ; 88 17
L_0C39:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_0C59                          ; 74 1A
        jmp     L_0C51                          ; EB 10
L_0C41:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        inc     word ptr [bp + 0xc]             ; FF 46 0C
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
L_0C51:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0C41                          ; 75 E8
L_0C59:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x988                       ; B8 88 09
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_120D                          ; E8 A4 05
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_12B8                          ; E8 46 06
        add     sp, 2                           ; 83 C4 02
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C7A -- offset 0x0C7A -- 228 instr
; Dispatcher: tabla de decisiones cmp+jcc (228 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_0F41
; calls (inter): GDI.CREATEBITMAP, GDI.CREATEPATTERNBRUSH, GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT, GDI.GETDEVICECAPS, GDI.GETSTOCKOBJECT (+6 mas)
;----------------------------------------------------------------------
L_0C7A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 90 0C 00 00 [FIXUP]
        mov     word ptr [0x982], ax            ; A3 82 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 9C 0C 00 00 [FIXUP]
        mov     word ptr [0x9f0], ax            ; A3 F0 09
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 26 08 00 00 [FIXUP]
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa02], ax            ; A3 02 0A
        or      ax, ax                          ; 0B C0
        jne     L_0CCC                          ; 75 05
L_0CC7:
        sub     ax, ax                          ; 2B C0
        jmp     L_0F3D                          ; E9 71 02
L_0CCC:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x97c], 1             ; C7 06 7C 09 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 7C 00 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 0A 0D 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jle     L_0CFC                          ; 7E 08
        mov     word ptr [0x97a], 1             ; C7 06 7A 09 01 00
        jmp     L_0D02                          ; EB 06
L_0CFC:
        mov     word ptr [0x97a], 0             ; C7 06 7A 09 00 00
L_0D02:
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xc8                        ; 3D C8 00
        jne     L_0D1B                          ; 75 08
        mov     word ptr [0x9de], 2             ; C7 06 DE 09 02 00
        jmp     L_0D21                          ; EB 06
L_0D1B:
        mov     word ptr [0x9de], 1             ; C7 06 DE 09 01 00
L_0D21:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A AC 03 00 00 [FIXUP]
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A 42 0D 00 00 [FIXUP]
        mov     word ptr [0x9f2], ax            ; A3 F2 09
        mov     ax, 0xff00                      ; B8 00 FF
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A 51 0D 00 00 [FIXUP]
        mov     word ptr [0x980], ax            ; A3 80 09
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x976], ax            ; A3 76 09
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0xb22                       ; B8 22 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 7E 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0xac6                       ; B8 C6 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 93 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0xa44                       ; B8 44 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A A8 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0xb36                       ; B8 36 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A BD 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0xaa8                       ; B8 A8 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A D2 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0xa62                       ; B8 62 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E7 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0xb02                       ; B8 02 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FC 0D 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xaee                       ; B8 EE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 11 0E 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0xa14                       ; B8 14 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 26 0E 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xa84                       ; B8 84 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa4                        ; B8 A4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xb20], ax            ; A3 20 0B
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0E51                          ; 75 03
        jmp     L_0CC7                          ; E9 76 FE
L_0E51:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f03                      ; B8 03 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 6C 0E 00 00 [FIXUP]
        mov     word ptr [0x984], ax            ; A3 84 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 7D 0E 00 00 [FIXUP]
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 8E 0E 00 00 [FIXUP]
        mov     word ptr [0x9fa], ax            ; A3 FA 09
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x9d8], ax            ; A3 D8 09
        cmp     word ptr [0x984], 0             ; 83 3E 84 09 00
        jne     L_0E9F                          ; 75 03
        jmp     L_0CC7                          ; E9 28 FE
L_0E9F:
        cmp     word ptr [0x9fc], 0             ; 83 3E FC 09 00
        jne     L_0EA9                          ; 75 03
        jmp     L_0CC7                          ; E9 1E FE
L_0EA9:
        cmp     word ptr [0x9fa], 0             ; 83 3E FA 09 00
        jne     L_0EB3                          ; 75 03
        jmp     L_0CC7                          ; E9 14 FE
L_0EB3:
        or      ax, ax                          ; 0B C0
        jne     L_0EBA                          ; 75 03
        jmp     L_0CC7                          ; E9 0D FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0EBA -- offset 0x0EBA -- 45 instr
; Funcion mediana (45 instr, 3 calls).
; tags: calls_kernel, calls_user, medium
; calls (inter): KERNEL.LOCALFREE, USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_0EBA:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, 0xac                        ; B8 AC 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        cmp     word ptr [0x97a], 0             ; 83 3E 7A 09 00
        je      L_0EE6                          ; 74 05
        mov     ax, word ptr [0x980]            ; A1 80 09
        jmp     L_0EE9                          ; EB 03
L_0EE6:
        mov     ax, word ptr [0x9f0]            ; A1 F0 09
L_0EE9:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F32                          ; 75 0B
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A 36 0F 00 00 [FIXUP]
        jmp     L_0CC7                          ; E9 95 FD
L_0F32:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0F3D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F41 -- offset 0x0F41 -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: small
; callers: sub_20A6
; calls (intra): sub_0C7A
;----------------------------------------------------------------------
L_0F41:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x650], ax            ; A3 50 06
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0F66                          ; 75 13
        push    ax                              ; 50
        call    L_0C7A                          ; E8 23 FD
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0F61                          ; 74 03
        jmp     L_1130                          ; E9 CF 01
L_0F61:
        sub     ax, ax                          ; 2B C0
        jmp     L_1207                          ; E9 A1 02
L_0F66:
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_0F70                          ; 74 03
        jmp     L_1207                          ; E9 97 02
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F70 -- offset 0x0F70 -- 258 instr
; Funcion compleja: 258 instrucciones, 8 llamadas, 1 branches.
; tags: calls_kernel, calls_user, complex
; calls (intra): sub_0537
; calls (inter): KERNEL.GETINSTANCEDATA, KERNEL.MAKEPROCINSTANCE, USER.CHANGEMENU, USER.CREATEWINDOW, USER.GETSYSTEMMENU, USER.SHOWWINDOW (+1 mas)
;----------------------------------------------------------------------
L_0F70:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9fe                       ; B8 FE 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 8C 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa02                       ; B8 02 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 9C 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x982                       ; B8 82 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A AC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9f0                       ; B8 F0 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A BC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x976                       ; B8 76 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A CC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9f2                       ; B8 F2 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A DC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x980                       ; B8 80 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A EC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9da                       ; B8 DA 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FC 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9ec                       ; B8 EC 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 0C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9fc                       ; B8 FC 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 1C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x984                       ; B8 84 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 2C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9fa                       ; B8 FA 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 3C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9d8                       ; B8 D8 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 4C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9ee                       ; B8 EE 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 5C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa42                       ; B8 42 0A
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 6C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 7C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 8C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xb22                       ; B8 22 0B
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 9C 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xac6                       ; B8 C6 0A
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A AC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa44                       ; B8 44 0A
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A BC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xb36                       ; B8 36 0B
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A CC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xaa8                       ; B8 A8 0A
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A DC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xa62                       ; B8 62 0A
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A EC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xb02                       ; B8 02 0B
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FC 10 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xaee                       ; B8 EE 0A
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 0C 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x97a                       ; B8 7A 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 1C 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x9de                       ; B8 DE 09
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 2C 11 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xb20                       ; B8 20 0B
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
L_1130:
        mov     ax, OFFSET _entry_2             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_2             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 5F 11 00 00 [FIXUP]
        mov     word ptr [0x9e8], ax            ; A3 E8 09
        mov     word ptr [0x9ea], dx            ; 89 16 EA 09
        mov     word ptr [0x28], 0x2d           ; C7 06 28 00 2D 00
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        mov     ax, OFFSET _entry_3             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_3             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 76 11 00 00 [FIXUP]
        mov     word ptr [0xaa2], ax            ; A3 A2 0A
        mov     word ptr [0xaa4], dx            ; 89 16 A4 0A
        mov     ax, OFFSET _entry_4             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_4             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa80], ax            ; A3 80 0A
        mov     word ptr [0xa82], dx            ; 89 16 82 0A
        mov     ax, 0xc4                        ; B8 C4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_1192                          ; 74 05
        mov     ax, 0xac6                       ; B8 C6 0A
        jmp     L_1195                          ; EB 03
L_1192:
        mov     ax, 0xb22                       ; B8 22 0B
L_1195:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A EB 11 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xaee                       ; B8 EE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x3e7                       ; B8 E7 03
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_1202:
        call    L_0537                          ; E8 32 F3
        jmp     L_1202                          ; EB FB
L_1207:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_120D -- offset 0x120D -- 67 instr
; Funcion mediana (67 instr, 8 calls).
; tags: calls_gdi, medium
; callers: sub_0115, sub_0BE0
; calls (intra): sub_1349, sub_1398
; calls (inter): GDI.GETSTOCKOBJECT, GDI.GETTEXTEXTENT, GDI.PATBLT, GDI.SELECTOBJECT, GDI.SETBKMODE, GDI.TEXTOUT
;----------------------------------------------------------------------
L_120D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0xa12], ax            ; A3 12 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1349                          ; E8 2A 01
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far GDI.SELECTOBJECT            ; 9A 64 12 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x9e0]                ; FF 36 E0 09
        push    word ptr [0x97e]                ; FF 36 7E 09
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 33 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 75 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 85 0C 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 2C 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1398                          ; E8 21 01
        add     sp, 2                           ; 83 C4 02
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x9e0]            ; A1 E0 09
        sub     ax, cx                          ; 2B C1
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_1398                          ; E8 FF 00
        add     sp, 2                           ; 83 C4 02
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x978], 1             ; C7 06 78 09 01 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 52 12 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12B8 -- offset 0x12B8 -- 47 instr
; Funcion mediana (47 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_0BE0
; calls (inter): GDI.PATBLT, USER.GETDC, USER.RELEASEDC, USER.SETTIMER
;----------------------------------------------------------------------
L_12B8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [0x9f6], 0             ; C7 06 F6 09 00 00
        mov     word ptr [0x9f4], 4             ; C7 06 F4 09 04 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x29a                       ; B8 9A 02
        push    ax                              ; 50
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        push    word ptr [0x9ea]                ; FF 36 EA 09
        push    word ptr [0x9e8]                ; FF 36 E8 09
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x9f4]            ; A1 F4 09
        cmp     word ptr [0x9f6], ax            ; 39 06 F6 09
        jg      L_1332                          ; 7F 36
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETDC                  ; 9A 50 15 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x9e0]                ; FF 36 E0 09
        push    word ptr [0x97e]                ; FF 36 7E 09
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 8A 13 00 00 [FIXUP]
        inc     word ptr [0x9f6]                ; FF 06 F6 09
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 68 15 00 00 [FIXUP]
        jmp     L_133E                          ; EB 0C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1332 -- offset 0x1332 -- 10 instr
; Wrapper que delega en USER.KILLTIMER.
; tags: calls_user, far, wrapper
; calls (inter): USER.KILLTIMER
;----------------------------------------------------------------------
L_1332:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x29a                       ; B8 9A 02
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
L_133E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1349 -- offset 0x1349 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_gdi, small
; callers: sub_0270, sub_120D, sub_1479
; calls (inter): GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_1349:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x978], 1             ; 83 3E 78 09 01
        jne     L_1394                          ; 75 41
        mov     ax, word ptr [0x9f4]            ; A1 F4 09
        inc     ax                              ; 40
        mov     word ptr [0x9f6], ax            ; A3 F6 09
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     word ptr [0x97a], 0             ; 83 3E 7A 09 00
        je      L_1369                          ; 74 05
        mov     ax, word ptr [0x980]            ; A1 80 09
        jmp     L_136C                          ; EB 03
L_1369:
        mov     ax, word ptr [0x9f0]            ; A1 F0 09
L_136C:
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 2A 12 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x9e0]                ; FF 36 E0 09
        push    word ptr [0x97e]                ; FF 36 7E 09
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 46 12 00 00 [FIXUP]
        mov     word ptr [0x978], 0             ; C7 06 78 09 00 00
L_1394:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1398 -- offset 0x1398 -- 14 instr
; Funcion hoja (no llama a otras, 14 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_120D
;----------------------------------------------------------------------
L_1398:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_13AB                          ; EB 06
L_13A5:
        inc     word ptr [bp - 2]               ; FF 46 FE
        inc     word ptr [bp + 4]               ; FF 46 04
L_13AB:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_13A5                          ; 75 F2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13BA -- offset 0x13BA -- 70 instr
; Dispatcher: tabla de decisiones cmp+jcc (70 instr).
; tags: calls_user, dispatcher
; callers: sub_160A, sub_17BD, sub_1905, sub_1B6E
; calls (intra): sub_2082
; calls (inter): USER.SETCURSOR
;----------------------------------------------------------------------
L_13BA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0x654]            ; A1 54 06
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x652]            ; A1 52 06
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x9e4], ax            ; A3 E4 09
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x9e6], ax            ; A3 E6 09
        cmp     word ptr [0x652], 0             ; 83 3E 52 06 00
        jne     L_13E8                          ; 75 03
        jmp     L_1475                          ; E9 8D 00
L_13E8:
        cmp     word ptr [0x654], 0             ; 83 3E 54 06 00
        jne     L_13F2                          ; 75 03
        jmp     L_1475                          ; E9 83 00
L_13F2:
        mov     ax, word ptr [0x9fc]            ; A1 FC 09
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_146D                          ; 7E 6D
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_146D                          ; 7E 61
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_146D                          ; 7E 59
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jle     L_146D                          ; 7E 4D
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2082                          ; E8 1F 0C
        or      ax, ax                          ; 0B C0
        je      L_146D                          ; 74 06
        mov     ax, word ptr [0x984]            ; A1 84 09
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_146D:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSOR              ; 9A 48 15 00 00 [FIXUP]
L_1475:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1479 -- offset 0x1479 -- 142 instr
; Dispatcher: tabla de decisiones cmp+jcc (142 instr).
; tags: calls_user, dispatcher
; callers: sub_1905, sub_1B6E
; calls (intra): sub_0429, sub_064B, sub_1349, sub_1E2A, sub_2082, sub_20A6
; calls (inter): USER.DIALOGBOX, USER.GETDC, USER.RELEASEDC, USER.SETCURSOR
;----------------------------------------------------------------------
L_1479:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        mov     ax, word ptr [0x654]            ; A1 54 06
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0x652]            ; A1 52 06
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x9e4], ax            ; A3 E4 09
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x9e6], ax            ; A3 E6 09
        cmp     word ptr [0x652], 0             ; 83 3E 52 06 00
        jne     L_14A7                          ; 75 03
        jmp     L_1606                          ; E9 5F 01
L_14A7:
        cmp     word ptr [0x654], 0             ; 83 3E 54 06 00
        jne     L_14B1                          ; 75 03
        jmp     L_1606                          ; E9 55 01
L_14B1:
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_14BC                          ; 7F 03
        jmp     L_1606                          ; E9 4A 01
L_14BC:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jg      L_14CB                          ; 7F 03
        jmp     L_1606                          ; E9 3B 01
L_14CB:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jg      L_14D6                          ; 7F 03
        jmp     L_1606                          ; E9 30 01
L_14D6:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jg      L_14E5                          ; 7F 03
        jmp     L_1606                          ; E9 21 01
L_14E5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2082                          ; E8 5A 0B
        or      ax, ax                          ; 0B C0
        jne     L_152F                          ; 75 03
        jmp     L_15EC                          ; E9 BD 00
L_152F:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     byte ptr [bx + 0x656], 2        ; C6 87 56 06 02
        mov     word ptr [0x97c], 0             ; C7 06 7C 09 00 00
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far USER.SETCURSOR              ; 9A E0 15 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 9F 15 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [0xa10], ax            ; A3 10 0A
        push    ax                              ; 50
        call    L_1349                          ; E8 EB FD
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.RELEASEDC              ; 9A D7 15 00 00 [FIXUP]
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x8001                      ; B8 01 80
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        call    L_1E2A                          ; E8 A1 08
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_20A6                          ; E8 0B 0B
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A DE 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [0xa10], ax            ; A3 10 0A
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [0xa32]                ; FF 36 32 0A
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_064B                          ; E8 8F F0
        push    word ptr [0xa32]                ; FF 36 32 0A
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0429                          ; E8 5C EE
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.RELEASEDC              ; 9A 28 0D 00 00 [FIXUP]
        push    word ptr [0x9fc]                ; FF 36 FC 09
        call    far USER.SETCURSOR              ; 9A 35 08 00 00 [FIXUP]
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        jmp     L_1606                          ; EB 1A
L_15EC:
        push    word ptr [0x650]                ; FF 36 50 06
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0xa82]                ; FF 36 82 0A
        push    word ptr [0xa80]                ; FF 36 80 0A
        call    far USER.DIALOGBOX              ; 9A C8 03 00 00 [FIXUP]
L_1606:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_160A -- offset 0x160A -- 154 instr
; Dispatcher: tabla de decisiones cmp+jcc (154 instr).
; tags: calls_user, dispatcher
; callers: sub_0231
; calls (intra): sub_0812, sub_13BA, sub_1B6E, sub_1E2A, sub_2082
; calls (inter): USER.GETDC, USER.RELEASEDC, USER.SETCURSOR, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_160A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [0x9f8], 0x14          ; 83 3E F8 09 14
        jne     L_1621                          ; 75 0A
        cmp     word ptr [0x97c], 0             ; 83 3E 7C 09 00
        jne     L_1621                          ; 75 03
        jmp     L_17B9                          ; E9 98 01
L_1621:
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_1635                          ; 75 0D
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xac6                       ; B8 C6 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A 79 02 00 00 [FIXUP]
L_1635:
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far USER.SETCURSOR              ; 9A 71 14 00 00 [FIXUP]
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
        cmp     word ptr [0x97c], 0             ; 83 3E 7C 09 00
        je      L_165E                          ; 74 0D
        mov     word ptr [bp - 0xc], 4          ; C7 46 F4 04 00
        mov     word ptr [bp - 2], 2            ; C7 46 FE 02 00
        jmp     L_16F7                          ; E9 99 00
L_165E:
        cmp     word ptr [0xa42], 1             ; 83 3E 42 0A 01
        jne     L_16BA                          ; 75 55
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 8], 0x2a         ; C7 46 F8 2A 00
        mov     ax, word ptr [0x2a]             ; A1 2A 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_16A0                          ; EB 29
L_1677:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2082                          ; E8 F1 09
        or      ax, ax                          ; 0B C0
        je      L_169C                          ; 74 07
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_16A0                          ; EB 04
L_169C:
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
L_16A0:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1677                          ; 74 D1
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_16EB                          ; EB 31
L_16BA:
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    word ptr [0xa32]                ; FF 36 32 0A
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x8001                      ; B8 01 80
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        call    L_1E2A                          ; E8 51 07
        mov     ax, word ptr [0xa34]            ; A1 34 0A
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [0xa34]            ; A1 34 0A
L_16EB:
        sub     ax, 0xb                         ; 2D 0B 00
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_16F7:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x652]            ; A1 52 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa00]            ; 03 0E 00 0A
        mov     word ptr [0x9e4], cx            ; 89 0E E4 09
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x654]                ; F7 2E 54 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x654]            ; A1 54 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa04]            ; 03 0E 04 0A
        mov     word ptr [0x9e6], cx            ; 89 0E E6 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1B6E                          ; E8 3B 04
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 00 13 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x654]                ; F7 2E 54 06
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, word ptr [0x654]            ; A1 54 06
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0x652]            ; A1 52 06
        mov     cx, word ptr [0x9de]            ; 8B 0E DE 09
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0812                          ; E8 7E F0
        add     sp, 0x10                        ; 83 C4 10
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.RELEASEDC              ; 9A 2C 13 00 00 [FIXUP]
        push    word ptr [0x9e6]                ; FF 36 E6 09
        push    word ptr [0x9e4]                ; FF 36 E4 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13BA                          ; E8 04 FC
        add     sp, 6                           ; 83 C4 06
L_17B9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_17BD -- offset 0x17BD -- 89 instr
; Dispatcher: tabla de decisiones cmp+jcc (89 instr).
; tags: dispatcher
; callers: sub_1905
; calls (intra): sub_13BA, sub_18B3, sub_18DC, sub_1B6E, sub_2082
;----------------------------------------------------------------------
L_17BD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [0x9f8], 0x14          ; 83 3E F8 09 14
        jne     L_17D4                          ; 75 0A
        cmp     word ptr [0x97c], 0             ; 83 3E 7C 09 00
        jne     L_17D4                          ; 75 03
        jmp     L_18AF                          ; E9 DB 00
L_17D4:
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_17FB:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_180E                          ; 74 0D
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_18B3                          ; E8 A7 00
        jmp     L_1819                          ; EB 0B
L_180E:
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_18DC                          ; E8 C3 00
L_1819:
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 0xc]             ; F7 6E F4
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 2]           ; 03 5E FE
        add     bx, 0xb                         ; 83 C3 0B
        mov     word ptr [bp - 0xa], bx         ; 89 5E F6
        cmp     byte ptr [bx + 0x656], 1        ; 80 BF 56 06 01
        jne     L_17FB                          ; 75 C7
        mov     word ptr [0x10], 1              ; C7 06 10 00 01 00
        mov     ax, 0x656                       ; B8 56 06
        push    ax                              ; 50
        push    bx                              ; 53
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_2082                          ; E8 38 08
        or      ax, ax                          ; 0B C0
        je      L_1853                          ; 74 05
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_1853:
        mov     word ptr [0x10], 0              ; C7 06 10 00 00 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_17FB                          ; 74 9C
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x652]            ; A1 52 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa00]            ; 03 0E 00 0A
        mov     word ptr [0x9e4], cx            ; 89 0E E4 09
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        imul    word ptr [0x654]                ; F7 2E 54 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x654]            ; A1 54 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa04]            ; 03 0E 04 0A
        mov     word ptr [0x9e6], cx            ; 89 0E E6 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1B6E                          ; E8 D3 02
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x9e6]                ; FF 36 E6 09
        push    word ptr [0x9e4]                ; FF 36 E4 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13BA                          ; E8 0E FB
        add     sp, 6                           ; 83 C4 06
L_18AF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_18B3 -- offset 0x18B3 -- 17 instr
; Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_17BD
;----------------------------------------------------------------------
L_18B3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bx]                   ; FF 07
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx], 7                ; 83 3F 07
        jle     L_18D8                          ; 7E 15
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bx]                   ; FF 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx], 7                ; 83 3F 07
        jle     L_18D8                          ; 7E 04
        mov     word ptr [bx], 0                ; C7 07 00 00
L_18D8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_18DC -- offset 0x18DC -- 17 instr
; Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_17BD
;----------------------------------------------------------------------
L_18DC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        dec     word ptr [bx]                   ; FF 0F
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx], 0                ; 83 3F 00
        jge     L_1901                          ; 7D 15
        mov     word ptr [bx], 7                ; C7 07 07 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     word ptr [bx]                   ; FF 0F
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx], 0                ; 83 3F 00
        jge     L_1901                          ; 7D 04
        mov     word ptr [bx], 7                ; C7 07 07 00
L_1901:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1905 -- offset 0x1905 -- 230 instr
; Iterador con instrucciones de string (movsb/scasb/...) (230 instr).
; tags: calls_user, complex_iterator, string_op
; callers: sub_1B6E
; calls (intra): sub_13BA, sub_1479, sub_17BD, sub_1B6E
; calls (inter): USER.GETKEYSTATE
;----------------------------------------------------------------------
L_1905:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, 9                           ; 2D 09 00
        cmp     ax, 0x1f                        ; 3D 1F 00
        jbe     L_1922                          ; 76 03
        jmp     L_1B6A                          ; E9 48 02
L_1922:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1a1c]       ; 2E FF A7 1C 1A
        mov     ax, word ptr [0x654]            ; A1 54 06
        add     word ptr [0x9e6], ax            ; 01 06 E6 09
        jmp     L_1A5C                          ; E9 28 01
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1945:
        mov     ax, word ptr [0x652]            ; A1 52 06
        sub     word ptr [0x9e4], ax            ; 29 06 E4 09
        jmp     L_1A5C                          ; E9 0D 01
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, cx                          ; 8B C1
        sub     word ptr [0x9e6], ax            ; 29 06 E6 09
        jmp     L_1A5C                          ; E9 F3 00
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x654]            ; A1 54 06
        sub     word ptr [0x9e6], ax            ; 29 06 E6 09
        jmp     L_1945                          ; EB B1
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, cx                          ; 8B C1
        sub     word ptr [0x9e6], ax            ; 29 06 E6 09
L_19AB:
        mov     ax, word ptr [0x652]            ; A1 52 06
        add     word ptr [0x9e4], ax            ; 01 06 E4 09
        jmp     L_1A5C                          ; E9 A7 00
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x654]            ; A1 54 06
        add     word ptr [0x9e6], ax            ; 01 06 E6 09
        jmp     L_1945                          ; E9 75 FF
        mov     ax, word ptr [0x654]            ; A1 54 06
        add     word ptr [0x9e6], ax            ; 01 06 E6 09
        jmp     L_19AB                          ; EB D2
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_19E3                          ; 74 03
        jmp     L_1B6A                          ; E9 87 01
L_19E3:
        push    word ptr [0x9e6]                ; FF 36 E6 09
        push    word ptr [0x9e4]                ; FF 36 E4 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1479                          ; E8 88 FA
        jmp     L_1B67                          ; E9 73 01
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jne     L_1A5C                          ; 75 61
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_1A17                          ; 7D 0F
        sub     ax, ax                          ; 2B C0
L_1A0A:
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_17BD                          ; E8 AC FD
        add     sp, 4                           ; 83 C4 04
        jmp     L_1B6A                          ; E9 53 01
L_1A17:
        mov     ax, 1                           ; B8 01 00
        jmp     L_1A0A                          ; EB EE
        hlt                                     ; F4
        sbb     word ptr [bp + si + 0x1b], bp   ; 19 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        fstp    dword ptr [bx + di]             ; D9 19
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        push    0x1b                            ; 6A 1B
        fstp    dword ptr [bx + di]             ; D9 19
        xchg    sp, ax                          ; 94
        sbb     ax, dx                          ; 19 D0
        sbb     word ptr [di + 0x6919], si      ; 19 B5 19 69
        sbb     word ptr [si], si               ; 19 34
        sbb     word ptr [bx + 0x19], cx        ; 19 4F 19
        stosw   word ptr es:[di], ax            ; AB
        sbb     word ptr [bp + si], bp          ; 19 2A
        sbb     word ptr [bx + di + 0x9e4], sp  ; 19 A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 7                           ; 3D 07 00
        jg      L_1A76                          ; 7F 04
        or      ax, ax                          ; 0B C0
        jg      L_1A85                          ; 7F 0F
L_1A76:
        mov     ax, word ptr [0x652]            ; A1 52 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa00]            ; 03 06 00 0A
        mov     word ptr [0x9e4], ax            ; A3 E4 09
L_1A85:
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jg      L_1A97                          ; 7F 0C
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_1AB2                          ; 75 21
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_1AB2                          ; 75 1B
L_1A97:
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0x652]                ; F7 2E 52 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x652]            ; A1 52 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa00]            ; 03 0E 00 0A
        mov     word ptr [0x9e4], cx            ; 89 0E E4 09
L_1AB2:
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 7                           ; 3D 07 00
        jg      L_1ACC                          ; 7F 04
        or      ax, ax                          ; 0B C0
        jg      L_1ADB                          ; 7F 0F
L_1ACC:
        mov     ax, word ptr [0x654]            ; A1 54 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [0xa04]            ; 03 06 04 0A
        mov     word ptr [0x9e6], ax            ; A3 E6 09
L_1ADB:
        cmp     word ptr [bp - 6], 8            ; 83 7E FA 08
        jg      L_1AED                          ; 7F 0C
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1B08                          ; 75 21
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_1B08                          ; 75 1B
L_1AED:
        mov     ax, 7                           ; B8 07 00
        imul    word ptr [0x654]                ; F7 2E 54 06
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x654]            ; A1 54 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa04]            ; 03 0E 04 0A
        mov     word ptr [0x9e6], cx            ; 89 0E E6 09
L_1B08:
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        sub     ax, word ptr [0xa00]            ; 2B 06 00 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x652]            ; 8B 0E 52 06
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x652]            ; A1 52 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa00]            ; 03 0E 00 0A
        mov     word ptr [0x9e4], cx            ; 89 0E E4 09
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        sub     ax, word ptr [0xa04]            ; 2B 06 04 0A
        cdq                                     ; 99
        mov     cx, word ptr [0x654]            ; 8B 0E 54 06
        idiv    cx                              ; F7 F9
        imul    cx                              ; F7 E9
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x654]            ; A1 54 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [0xa04]            ; 03 0E 04 0A
        mov     word ptr [0x9e6], cx            ; 89 0E E6 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_1B6E                          ; E8 18 00
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x9e6]                ; FF 36 E6 09
        push    word ptr [0x9e4]                ; FF 36 E4 09
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_13BA                          ; E8 53 F8
L_1B67:
        add     sp, 6                           ; 83 C4 06
L_1B6A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B6E -- offset 0x1B6E -- 244 instr
; Dispatcher: tabla de decisiones cmp+jcc (244 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_160A, sub_17BD, sub_1905
; calls (intra): sub_006C, sub_0115, sub_0231, sub_13BA, sub_1479, sub_1905
; calls (inter): GDI.DELETEOBJECT, KERNEL.GETMODULEUSAGE, USER.BEGINPAINT, USER.CLIENTTOSCREEN, USER.DEFWINDOWPROC, USER.DIALOGBOX (+12 mas)
;----------------------------------------------------------------------
L_1B6E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_1BE0                          ; 74 2F
        jbe     L_1BB6                          ; 76 03
        jmp     L_1DE2                          ; E9 2C 02
L_1BB6:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_1BBE                          ; 75 03
        jmp     L_1C3E                          ; E9 80 00
L_1BBE:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1BC6                          ; 75 03
        jmp     L_1C8B                          ; E9 C5 00
L_1BC6:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_1BCE                          ; 75 03
        jmp     L_1CE3                          ; E9 15 01
L_1BCE:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_1BD6                          ; 75 03
        jmp     L_1D58                          ; E9 82 01
L_1BD6:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_1BDE                          ; 75 03
        jmp     L_1CC8                          ; E9 EA 00
L_1BDE:
        jmp     L_1C57                          ; EB 77
L_1BE0:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0231                          ; E8 48 E6
L_1BE9:
        add     sp, 4                           ; 83 C4 04
L_1BEC:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1E1F                          ; E9 2D 02
L_1BF2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.GETMENU                ; 9A FC 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        je      L_1C23                          ; 74 1F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 1D 1C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x402                       ; B8 02 04
L_1C1B:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 2E 1C 00 00 [FIXUP]
        jmp     L_1BEC                          ; EB C9
L_1C23:
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        jmp     L_1C1B                          ; EB DD
L_1C3E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_006C                          ; E8 28 E4
        add     sp, 2                           ; 83 C4 02
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0xaa6], ax            ; A3 A6 0A
        jmp     L_1BEC                          ; EB 9D
L_1C4F:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 0x3e7                       ; 3D E7 03
        je      L_1C6E                          ; 74 17
L_1C57:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1E1F                          ; E9 B1 01
L_1C6E:
        push    word ptr [0x650]                ; FF 36 50 06
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0xaa4]                ; FF 36 A4 0A
        push    word ptr [0xaa2]                ; FF 36 A2 0A
        call    far USER.DIALOGBOX              ; 9A 02 16 00 00 [FIXUP]
        jmp     L_1BEC                          ; E9 61 FF
L_1C8B:
        push    word ptr [0x650]                ; FF 36 50 06
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_1CBD                          ; 75 24
        push    word ptr [0x980]                ; FF 36 80 09
        call    far GDI.DELETEOBJECT            ; 9A A7 1C 00 00 [FIXUP]
        push    word ptr [0xa02]                ; FF 36 02 0A
        call    far GDI.DELETEOBJECT            ; 9A D0 0C 00 00 [FIXUP]
        push    word ptr [0x976]                ; FF 36 76 09
        call    far GDI.DELETEOBJECT            ; 9A B9 1C 00 00 [FIXUP]
        push    word ptr [0x9f2]                ; FF 36 F2 09
        call    far GDI.DELETEOBJECT            ; 9A 9E 1C 00 00 [FIXUP]
L_1CBD:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1BEC                          ; E9 24 FF
L_1CC8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1CD7                          ; 74 03
        jmp     L_1E1F                          ; E9 48 01
L_1CD7:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1905                          ; E8 25 FC
        jmp     L_1BE9                          ; E9 06 FF
L_1CE3:
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1D3B                          ; 75 4B
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_1D33                          ; 74 3D
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_1D3B                          ; 74 3D
        mov     ax, word ptr [0x9e4]            ; A1 E4 09
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x9e6]            ; A1 E6 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 89 1B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.SETCURSORPOS           ; 9A 94 1B 00 00 [FIXUP]
        push    word ptr [0x9e6]                ; FF 36 E6 09
        push    word ptr [0x9e4]                ; FF 36 E4 09
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_13BA                          ; E8 8A F6
        add     sp, 6                           ; 83 C4 06
L_1D33:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
L_1D3B:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_1D44                          ; 75 03
        jmp     L_1BEC                          ; E9 A8 FE
L_1D44:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1D4D                          ; 74 03
        jmp     L_1BEC                          ; E9 9F FE
L_1D4D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1BEC                          ; E9 94 FE
L_1D58:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0115                          ; E8 A7 E3
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1BEC                          ; E9 6B FE
L_1D81:
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jne     L_1D9A                          ; 75 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_13BA                          ; E8 26 F6
        add     sp, 6                           ; 83 C4 06
        jmp     L_1BEC                          ; E9 52 FE
L_1D9A:
        push    word ptr [0x9fa]                ; FF 36 FA 09
        call    far USER.SETCURSOR              ; 9A 40 16 00 00 [FIXUP]
        jmp     L_1BEC                          ; E9 46 FE
L_1DA6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x26], 1              ; C7 06 26 00 01 00
        jmp     L_1BEC                          ; E9 35 FE
L_1DB7:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10], 0              ; 83 3E 10 00 00
        jne     L_1DD9                          ; 75 16
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        je      L_1DD9                          ; 74 0F
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1479                          ; E8 A3 F6
        add     sp, 6                           ; 83 C4 06
L_1DD9:
        mov     word ptr [0x26], 0              ; C7 06 26 00 00 00
        jmp     L_1BEC                          ; E9 0A FE
L_1DE2:
        cmp     ax, 0x115                       ; 3D 15 01
        ja      L_1E02                          ; 77 1B
        cmp     ax, 0x114                       ; 3D 14 01
        jb      L_1DEF                          ; 72 03
        jmp     L_1BEC                          ; E9 FD FD
L_1DEF:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_1DF7                          ; 75 03
        jmp     L_1C4F                          ; E9 58 FE
L_1DF7:
        cmp     ax, 0x113                       ; 3D 13 01
        jne     L_1DFF                          ; 75 03
        jmp     L_1BEC                          ; E9 ED FD
L_1DFF:
        jmp     L_1C57                          ; E9 55 FE
L_1E02:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_1E0A                          ; 75 03
        jmp     L_1BF2                          ; E9 E8 FD
L_1E0A:
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_1E12                          ; 75 03
        jmp     L_1D81                          ; E9 6F FF
L_1E12:
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_1DA6                          ; 74 8F
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_1DB7                          ; 74 9B
        jmp     L_1C57                          ; E9 38 FE
L_1E1F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1E2A -- offset 0x1E2A -- 136 instr
; Iterador con instrucciones de string (movsb/scasb/...) (136 instr).
; tags: calls_user, complex_iterator, string_op
; callers: sub_0270, sub_1479, sub_160A
; calls (intra): sub_0537, sub_064B, sub_1F72, sub_1F9B, sub_1FDA, sub_2046
; calls (inter): USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_1E2A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        call    L_0537                          ; E8 02 E7
        mov     bl, byte ptr [bp + 8]           ; 8A 5E 08
        xor     bh, bh                          ; 32 FF
        mov     al, bl                          ; 8A C3
        mov     cx, 0x64                        ; B9 64 00
        mul     cl                              ; F6 E1
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        mov     si, ax                          ; 8B F0
        add     ax, cx                          ; 03 C1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        add     si, 0xb                         ; 83 C6 0B
        mov     di, si                          ; 8B FE
        add     di, cx                          ; 03 F9
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     cx, 0x2c                        ; B9 2C 00
        cld                                     ; FC
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        shl     bx, 1                           ; D1 E3
        lea     ax, [bx + 0xa32]                ; 8D 87 32 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        sar     bx, 1                           ; D1 FB
        cmp     word ptr [bp + 0xe], 0x14       ; 83 7E 0E 14
        jne     L_1EA3                          ; 75 36
        cmp     bl, byte ptr [0xa42]            ; 3A 1E 42 0A
        mov     si, 0x2a                        ; BE 2A 00
        je      L_1E79                          ; 74 03
        jmp     L_1EDC                          ; EB 64
        nop                                     ; 90
L_1E79:
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        or      ax, ax                          ; 0B C0
        je      L_1E94                          ; 74 15
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        add     bx, ax                          ; 03 D8
        cmp     byte ptr [bx], 1                ; 80 3F 01
        jne     L_1E79                          ; 75 F0
        call    L_1F72                          ; E8 E6 00
        je      L_1E79                          ; 74 EB
L_1E8E:
        call    L_1FDA                          ; E8 49 01
        jmp     L_1F6A                          ; E9 D6 00
L_1E94:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2046                          ; E8 A6 01
        jmp     L_1F6A                          ; E9 C7 00
L_1EA3:
        or      bx, bx                          ; 0B DB
        jne     L_1ED1                          ; 75 2A
        push    word ptr [0xaa6]                ; FF 36 A6 0A
        call    far USER.GETDC                  ; 9A 3A 17 00 00 [FIXUP]
        mov     word ptr [0xa10], ax            ; A3 10 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_064B                          ; E8 89 E7
        push    word ptr [0xaa6]                ; FF 36 A6 0A
        push    word ptr [0xa10]                ; FF 36 10 0A
        call    far USER.RELEASEDC              ; 9A A4 17 00 00 [FIXUP]
        jmp     L_1EDC                          ; EB 0B
L_1ED1:
        mov     si, bx                          ; 8B F3
        call    L_1F9B                          ; E8 C5 00
        cmp     si, word ptr [0xa42]            ; 3B 36 42 0A
        je      L_1E8E                          ; 74 B2
L_1EDC:
        mov     si, 0x2a                        ; BE 2A 00
        mov     di, 0x14                        ; BF 14 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], di               ; 89 3F
L_1EE7:
        cld                                     ; FC
        lodsw   ax, word ptr [si]               ; AD
        or      ax, ax                          ; 0B C0
        je      L_1F32                          ; 74 45
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        add     bx, ax                          ; 03 D8
        cmp     byte ptr [bx], 1                ; 80 3F 01
        jne     L_1EE7                          ; 75 F0
        mov     cx, ax                          ; 8B C8
        call    L_1F72                          ; E8 76 00
        je      L_1EE7                          ; 74 E9
        mov     di, cx                          ; 8B F9
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        neg     bx                              ; F7 DB
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        neg     cx                              ; F7 D9
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        call    L_1E2A                          ; E8 0C FF
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_1EE7                          ; 7E C4
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], di               ; 89 3F
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jge     L_1F65                          ; 7D 35
        jmp     L_1EE7                          ; EB B5
L_1F32:
        cmp     di, 0x14                        ; 83 FF 14
        jne     L_1F65                          ; 75 2E
        cmp     word ptr [bp + 0xe], di         ; 39 7E 0E
        jne     L_1F3F                          ; 75 03
        jmp     L_1E94                          ; E9 55 FF
L_1F3F:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        neg     bx                              ; F7 DB
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        neg     cx                              ; F7 D9
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        call    L_1E2A                          ; E8 CD FE
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jle     L_1F65                          ; 7E 03
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_1F65:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
L_1F6A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F72 -- offset 0x1F72 -- 2 instr
; Stub trivial (2 instrucciones, sin logica significativa).
; tags: trivial_stub
; callers: sub_1E2A
;----------------------------------------------------------------------
L_1F72:
        mov     dl, byte ptr [bp + 0xa]         ; 8A 56 0A
        mov     dh, byte ptr [bp + 0xc]         ; 8A 76 0C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F78 -- offset 0x1F78 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_2082
;----------------------------------------------------------------------
L_1F78:
        push    di                              ; 57
        push    si                              ; 56
        mov     di, 0xcc                        ; BF CC 00
L_1F7D:
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        or      ax, ax                          ; 0B C0
        je      L_1F98                          ; 74 12
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bx + si], dh          ; 38 30
        jne     L_1F7D                          ; 75 F1
L_1F8C:
        add     si, ax                          ; 03 F0
        cmp     byte ptr [bx + si], dh          ; 38 30
        je      L_1F8C                          ; 74 FA
        cmp     byte ptr [bx + si], dl          ; 38 10
        jne     L_1F7D                          ; 75 E7
        or      ax, ax                          ; 0B C0
L_1F98:
        pop     si                              ; 5E
        pop     di                              ; 5F
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F9B -- offset 0x1F9B -- 6 instr
; Funcion hoja (no llama a otras, 6 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_1E2A
;----------------------------------------------------------------------
L_1F9B:
        mov     dh, byte ptr [bp + 0xa]         ; 8A 76 0A
        mov     dl, byte ptr [bp + 0xc]         ; 8A 56 0C
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_1FD8                          ; 74 2C
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1FAC -- offset 0x1FAC -- 24 instr
; Iterador con bucle (24 instr).
; tags: iterator, loop
; callers: sub_20A6
;----------------------------------------------------------------------
L_1FAC:
        push    si                              ; 56
        add     bx, ax                          ; 03 D8
        mov     di, 0xcc                        ; BF CC 00
L_1FB2:
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        or      ax, ax                          ; 0B C0
        je      L_1FD6                          ; 74 1B
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bx + si], dh          ; 38 30
        jne     L_1FB2                          ; 75 F1
        xor     cx, cx                          ; 33 C9
L_1FC3:
        inc     cx                              ; 41
        add     si, ax                          ; 03 F0
        cmp     byte ptr [bx + si], dh          ; 38 30
        je      L_1FC3                          ; 74 F9
        cmp     byte ptr [bx + si], dl          ; 38 10
        jne     L_1FB2                          ; 75 E4
L_1FCE:
        sub     si, ax                          ; 2B F0
        mov     byte ptr [bx + si], dl          ; 88 10
        loop    L_1FCE                          ; E2 FA
        jmp     L_1FB2                          ; EB DC
L_1FD6:
        mov     byte ptr [bx], dl               ; 88 17
L_1FD8:
        pop     si                              ; 5E
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1FDA -- offset 0x1FDA -- 45 instr
; Iterador con instrucciones de string (movsb/scasb/...) (45 instr).
; tags: iterator, loop, string_op
; callers: sub_1E2A
;----------------------------------------------------------------------
L_1FDA:
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        xor     bx, bx                          ; 33 DB
        or      bl, byte ptr [di + 0xb]         ; 0A 5D 0B
        and     bl, 2                           ; 80 E3 02
        shl     bx, 1                           ; D1 E3
        or      bl, byte ptr [di + 0x12]        ; 0A 5D 12
        and     bl, 6                           ; 80 E3 06
        shl     bx, 1                           ; D1 E3
        or      bl, byte ptr [di + 0x51]        ; 0A 5D 51
        and     bl, 0xe                         ; 80 E3 0E
        shl     bx, 1                           ; D1 E3
        or      bl, byte ptr [di + 0x58]        ; 0A 5D 58
        and     bl, 0x1e                        ; 80 E3 1E
        shr     bx, 1                           ; D1 EB
        mov     al, 0x4e                        ; B0 4E
        mul     bl                              ; F6 E3
        add     ax, 0xf2                        ; 05 F2 00
        mov     si, ax                          ; 8B F0
        add     di, 0xb                         ; 83 C7 0B
        mov     cx, 0x4e                        ; B9 4E 00
        xor     bx, bx                          ; 33 DB
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
        mov     word ptr [0xe8], ax             ; A3 E8 00
        mov     word ptr [0xe6], ax             ; A3 E6 00
        cld                                     ; FC
L_201B:
        lodsb   al, byte ptr [si]               ; AC
        cwde                                    ; 98
        mov     bl, byte ptr [di]               ; 8A 1D
        inc     di                              ; 47
        or      dl, byte ptr [bx + 0xde]        ; 0A 97 DE 00
        add     bx, bx                          ; 03 DB
        add     word ptr [bx + 0xe2], ax        ; 01 87 E2 00
        loop    L_201B                          ; E2 EF
        mov     ax, word ptr [0xe8]             ; A1 E8 00
        mov     bx, word ptr [0xe6]             ; 8B 1E E6 00
        cmp     word ptr [bp + 0xc], 3          ; 83 7E 0C 03
        je      L_203C                          ; 74 03
        xchg    bx, ax                          ; 93
        shr     dl, 1                           ; D0 EA
L_203C:
        sub     ax, bx                          ; 2B C3
        shr     dl, 1                           ; D0 EA
        jb      L_2045                          ; 72 03
        mov     ax, 0x7d00                      ; B8 00 7D
L_2045:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2046 -- offset 0x2046 -- 29 instr
; Iterador con bucle (29 instr).
; tags: iterator, loop
; callers: sub_1E2A
;----------------------------------------------------------------------
L_2046:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     di, 0xb                         ; BF 0B 00
        add     di, word ptr [bp + 8]           ; 03 7E 08
        mov     cx, 0x4e                        ; B9 4E 00
        mov     si, 0xea                        ; BE EA 00
        cmp     byte ptr [bp + 6], 3            ; 80 7E 06 03
        je      L_2064                          ; 74 05
        mov     si, 0xee                        ; BE EE 00
        xor     bx, bx                          ; 33 DB
L_2064:
        mov     bl, byte ptr [si]               ; 8A 1C
        inc     si                              ; 46
        add     al, byte ptr [bx + si]          ; 02 00
        loop    L_2064                          ; E2 F9
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        je      L_207A                          ; 74 0A
        mov     bx, 0x7d00                      ; BB 00 7D
        jns     L_2078                          ; 79 03
        mov     bx, 0x8300                      ; BB 00 83
L_2078:
        add     ax, bx                          ; 03 C3
L_207A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2082 -- offset 0x2082 -- 15 instr
; Wrapper que delega en sub_1F78.
; tags: wrapper
; callers: sub_0429, sub_13BA, sub_1479, sub_160A, sub_17BD
; calls (intra): sub_1F78
;----------------------------------------------------------------------
L_2082:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        add     bx, word ptr [bp + 0xa]         ; 03 5E 0A
        cmp     byte ptr [bx], 1                ; 80 3F 01
        jne     L_209E                          ; 75 0E
        mov     dh, byte ptr [bp + 4]           ; 8A 76 04
        mov     dl, byte ptr [bp + 6]           ; 8A 56 06
        call    L_1F78                          ; E8 DF FE
        mov     ax, 1                           ; B8 01 00
        jne     L_20A0                          ; 75 02
L_209E:
        xor     ax, ax                          ; 33 C0
L_20A0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_20A6 -- offset 0x20A6 -- 58 instr
; Llama a servicios DOS via INT 21h (58 instr).
; tags: calls_kernel, calls_user, dos_caller, int_21
; callers: sub_1479
; calls (intra): sub_0F41, sub_1FAC, sub_2274, sub_2306
; calls (inter): KERNEL.FATALEXIT, KERNEL.INITTASK, KERNEL.WAITEVENT, USER.INITAPP
;----------------------------------------------------------------------
L_20A6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x14                        ; 3D 14 00
        je      L_20BE                          ; 74 0C
        mov     dh, byte ptr [bp + 4]           ; 8A 76 04
        mov     dl, byte ptr [bp + 6]           ; 8A 56 06
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        call    L_1FAC                          ; E8 EE FE
L_20BE:
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_20ED                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_20E9                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_20E9:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_20ED:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        call    far KERNEL.INITTASK             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2130                          ; 74 2B
        mov     word ptr [0x5ee], 0             ; C7 06 EE 05 00 00
        mov     word ptr [0x5e0], cx            ; 89 0E E0 05
        push    di                              ; 57
        push    si                              ; 56
        push    es                              ; 06
        push    bx                              ; 53
        push    dx                              ; 52
        call    L_2274                          ; E8 5D 01
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        call    far KERNEL.WAITEVENT            ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    far USER.INITAPP                ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2130                          ; 74 07
        call    L_0F41                          ; E8 15 EE
        push    ax                              ; 50
        call    L_2306                          ; E8 D6 01
L_2130:
        mov     ax, 0x4cff                      ; B8 FF 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2135 -- offset 0x2135 -- 130 instr
; Funcion compleja: 130 instrucciones, 9 llamadas, 1 branches.
; tags: calls_kernel, complex
; callers: sub_223E
; calls (intra): sub_2316
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALCOMPACT, KERNEL.GLOBALFREE, KERNEL.GLOBALSIZE, KERNEL.LOCALALLOC, KERNEL.LOCALFREE (+2 mas)
;----------------------------------------------------------------------
L_2135:
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0xffff                      ; B8 FF FF
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A 67 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        imul    word ptr [bp + 6]               ; F7 6E 06
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 9E 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A AD 21 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALALLOC           ; 9A 43 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALFREE            ; 9A 2B 0F 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A 16 22 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     dx, ds                          ; 8C DA
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.LOCALSIZE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_2223                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2225                          ; EB 02
L_2223:
        sub     ax, ax                          ; 2B C0
L_2225:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL.GLOBALCOMPACT        ; 9A FF FF 00 00 [FIXUP]
        mov     cl, 4                           ; B1 04
        call    L_2316                          ; E8 DC 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_223E -- offset 0x223E -- 21 instr
; Llama a servicios DOS via INT 21h (21 instr).
; tags: dos_caller, int_21
; callers: sub_0537, sub_2306
; calls (intra): sub_2135, sub_2333
;----------------------------------------------------------------------
L_223E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_2333                          ; E8 EF 00
        call    L_2135                          ; E8 EE FE
        or      ah, ah                          ; 0A E4
        je      L_2255                          ; 74 0A
        cmp     byte ptr [bp + 4], 0            ; 80 7E 04 00
        jne     L_2255                          ; 75 04
        mov     byte ptr [bp + 4], 0xfe         ; C6 46 04 FE
L_2255:
        push    ds                              ; 1E
        lds     dx, ptr [0x5e2]                 ; C5 16 E2 05
        mov     ax, 0x2500                      ; B8 00 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     cx, word ptr [0x634]            ; 8B 0E 34 06
        jcxz    L_226D                          ; E3 07
        mov     bx, 2                           ; BB 02 00
        lcall   [0x632]                         ; FF 1E 32 06
L_226D:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     ah, 0x4c                        ; B4 4C
        int     0x21                            ; CD 21
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2274 -- offset 0x2274 -- 59 instr
; Llama a servicios DOS via INT 21h (59 instr).
; tags: complex_iterator, int_21, loop
; callers: sub_20A6
;----------------------------------------------------------------------
L_2274:
        mov     bx, 0x63e                       ; BB 3E 06
L_2277:
        cmp     bx, 0x644                       ; 81 FB 44 06
        jae     L_2285                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2277                          ; EB F2
L_2285:
        ret                                     ; C3
        mov     bx, 4                           ; BB 04 00
L_2289:
        mov     ax, 0x4400                      ; B8 00 44
        int     0x21                            ; CD 21
        jb      L_229A                          ; 72 0A
        test    dl, 0x80                        ; F6 C2 80
        je      L_229A                          ; 74 05
        or      byte ptr [bx + 0x612], 0x40     ; 80 8F 12 06 40
L_229A:
        dec     bx                              ; 4B
        jns     L_2289                          ; 79 EC
        ret                                     ; C3
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     word ptr [0x5f4], ax            ; A3 F4 05
        ret                                     ; C3
        mov     es, word ptr [0x5ee]            ; 8E 06 EE 05
        mov     si, word ptr es:[0x2c]          ; 26 8B 36 2C 00
        mov     ax, 0x3500                      ; B8 00 35
        int     0x21                            ; CD 21
        mov     word ptr [0x5e2], bx            ; 89 1E E2 05
        mov     word ptr [0x5e4], es            ; 8C 06 E4 05
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ax, 0x2500                      ; B8 00 25
        mov     dx, 0x20f0                      ; BA F0 20
        int     0x21                            ; CD 21
        mov     cx, word ptr ss:[0x634]         ; 36 8B 0E 34 06
        jcxz    L_22EF                          ; E3 22
        lds     ax, ptr ss:[0x636]              ; 36 C5 06 36 06
        mov     dx, ds                          ; 8C DA
        xor     bx, bx                          ; 33 DB
        lcall   ss:[0x632]                      ; 36 FF 1E 32 06
        jae     L_22E0                          ; 73 03
        jmp     L_20F3                          ; E9 13 FE
L_22E0:
        lds     ax, ptr ss:[0x63a]              ; 36 C5 06 3A 06
        mov     dx, ds                          ; 8C DA
        mov     bx, 3                           ; BB 03 00
        lcall   ss:[0x632]                      ; 36 FF 1E 32 06
L_22EF:
        push    ss                              ; 16
        pop     ds                              ; 1F
        ret                                     ; C3
        mov     cx, 0x14                        ; B9 14 00
        xor     bx, bx                          ; 33 DB
L_22F7:
        test    byte ptr [bx + 0x612], 1        ; F6 87 12 06 01
        je      L_2302                          ; 74 04
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_2302:
        inc     bx                              ; 43
        loop    L_22F7                          ; E2 F2
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2306 -- offset 0x2306 -- 8 instr
; Funcion sin clasificar definitiva (8 instr).
; tags: small
; callers: sub_20A6
; calls (intra): sub_223E, sub_2321
;----------------------------------------------------------------------
L_2306:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_2321                          ; E8 15 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_223E                          ; E8 2C FF
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2316 -- offset 0x2316 -- 6 instr
; Iterador con bucle (6 instr).
; tags: iterator, loop
; callers: sub_2135
;----------------------------------------------------------------------
L_2316:
        xor     ch, ch                          ; 32 ED
        jcxz    L_2320                          ; E3 06
L_231A:
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        loop    L_231A                          ; E2 FA
L_2320:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2321 -- offset 0x2321 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_2306
;----------------------------------------------------------------------
L_2321:
        mov     bx, 0x644                       ; BB 44 06
L_2324:
        cmp     bx, 0x644                       ; 81 FB 44 06
        jae     L_2332                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2324                          ; EB F2
L_2332:
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2333 -- offset 0x2333 -- 10 instr
; Funcion sin clasificar definitiva (10 instr).
; tags: wrapper
; callers: sub_223E
;----------------------------------------------------------------------
L_2333:
        mov     bx, 0x644                       ; BB 44 06
L_2336:
        cmp     bx, 0x646                       ; 81 FB 46 06
        jae     L_2344                          ; 73 08
        push    bx                              ; 53
        call    word ptr [bx]                   ; FF 17
        pop     bx                              ; 5B
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_2336                          ; EB F2
L_2344:
        ret                                     ; C3

REVERSI_TEXT ENDS

        END
