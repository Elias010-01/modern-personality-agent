; AUTO-GENERATED from original USER segment 14
; segment_size=1609 bytes, flags=0xf130
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
; DRAWTEXT -- 399 instr
; Dispatcher: tabla de decisiones cmp+jcc (399 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (inter): GDI.GETDCORG, GDI.GETTEXTEXTENT, GDI.GETTEXTMETRICS, GDI.GETVIEWPORTEXT, GDI.GETWINDOWEXT, GDI.INTERSECTVISRECT (+5 mas)
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DRAWTEXT  (offset 0x0000, size 1091 bytes)
;-----------------------------------------------------------------------
DRAWTEXT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x52                        ; 83 EC 52
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr [0x606], ax            ; A3 06 06
        push    ax                              ; 50
        call    far GDI.GETVIEWPORTEXT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [0x606]                ; FF 36 06 06
        call    far GDI.GETWINDOWEXT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     word ptr [bp - 0x4e], dx        ; 89 56 B2
        mov     word ptr [0x486], 1             ; C7 06 86 04 01 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        xor     ax, word ptr [bp - 0x50]        ; 33 46 B0
        test    ax, 0x8000                      ; A9 00 80
        je      L_0047                          ; 74 06
        mov     word ptr [0x486], 0xffff        ; C7 06 86 04 FF FF
L_0047:
        mov     word ptr [0x48a], 1             ; C7 06 8A 04 01 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        xor     ax, word ptr [bp - 0x4e]        ; 33 46 B2
        test    ax, 0x8000                      ; A9 00 80
        je      L_005E                          ; 74 06
        mov     word ptr [0x48a], 0xffff        ; C7 06 8A 04 FF FF
L_005E:
        test    word ptr [bp + 6], 0x100        ; F7 46 06 00 01
        jne     L_00BE                          ; 75 59
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.LPTODP                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far GDI.GETDCORG                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x46], dx        ; 89 56 BA
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x48]            ; FF 76 B8
        push    dx                              ; 52
        call    far _SEG1_6515                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far GDI.SAVEVISRGN              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.INTERSECTVISRECT        ; 9A FF FF 00 00 [FIXUP]
L_00BE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, word ptr es:[bx]            ; 26 2B 07
        imul    word ptr [0x486]                ; F7 2E 86 04
        mov     word ptr [0x4da], ax            ; A3 DA 04
        or      ax, ax                          ; 0B C0
        jne     L_00D6                          ; 75 03
        jmp     L_02DD                          ; E9 07 02
L_00D6:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_00DF                          ; 75 03
        jmp     L_02DD                          ; E9 FE 01
L_00DF:
        cmp     word ptr [bp + 0xc], -1         ; 83 7E 0C FF
        jne     L_00F3                          ; 75 0E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
L_00F3:
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        test    word ptr [bp + 6], 0x200        ; F7 46 06 00 02
        je      L_010C                          ; 74 05
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        jmp     L_010E                          ; EB 02
L_010C:
        sub     ax, ax                          ; 2B C0
L_010E:
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        imul    word ptr [0x48a]                ; F7 2E 8A 04
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        test    byte ptr [bp + 6], 0x80         ; F6 46 06 80
        je      L_0129                          ; 74 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        sub     ah, ah                          ; 2A E4
        jmp     L_012C                          ; EB 03
L_0129:
        mov     ax, 8                           ; B8 08 00
L_012C:
        mov     cx, word ptr [bp - 0x2c]        ; 8B 4E D4
        mov     word ptr [0x36c], cx            ; 89 0E 6C 03
        mul     cx                              ; F7 E1
        mov     word ptr [0x508], ax            ; A3 08 05
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x3b0], ax            ; A3 B0 03
        mov     di, word ptr es:[bx + 2]        ; 26 8B 7F 02
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp + 0xe]         ; 03 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 0x4a], dx        ; 89 56 B6
        test    byte ptr [bp + 6], 0x20         ; F6 46 06 20
        je      L_01A4                          ; 74 4A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0xc                         ; 25 0C 00
        cmp     ax, 4                           ; 3D 04 00
        je      L_018A                          ; 74 25
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0177                          ; 75 0D
        mov     di, word ptr es:[bx + 6]        ; 26 8B 7F 06
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        imul    word ptr [0x48a]                ; F7 2E 8A 04
        sub     di, ax                          ; 2B F8
L_0177:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        jmp     L_02D7                          ; E9 4D 01
L_018A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr [bp - 0x36]        ; 2B 46 CA
        sub     ax, di                          ; 2B C7
        sar     ax, 1                           ; D1 F8
        imul    word ptr [0x48a]                ; F7 2E 8A 04
        add     ax, word ptr es:[bx + 2]        ; 26 03 47 02
        mov     di, ax                          ; 8B F8
        jmp     L_0177                          ; EB D3
L_01A4:
        sub     si, si                          ; 2B F6
        mov     word ptr [bp - 0x42], di        ; 89 7E BE
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
L_01BE:
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        mov     dx, word ptr [bp - 0x4a]        ; 8B 56 B6
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jne     L_01D1                          ; 75 08
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        jne     L_01D1                          ; 75 03
        jmp     L_02C5                          ; E9 F4 00
L_01D1:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0x10                        ; 25 10 00
        push    ax                              ; 50
        call    L_05DF                          ; E8 F8 03
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    dx                              ; 52
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_02F9                          ; E8 F1 00
        mov     si, ax                          ; 8B F0
        test    byte ptr [bp + 6], 0x10         ; F6 46 06 10
        je      L_0246                          ; 74 36
        cmp     word ptr [0x4da], si            ; 39 36 DA 04
        jge     L_0246                          ; 7D 30
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        cmp     word ptr [bp + 0x10], dx        ; 39 56 10
        jne     L_0226                          ; 75 05
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_0246                          ; 74 20
L_0226:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0232                          ; 75 03
        inc     word ptr [bp + 0xe]             ; FF 46 0E
L_0232:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     word ptr [bp - 0x3c], dx        ; 89 56 C4
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        jmp     L_0271                          ; EB 2B
L_0246:
        les     bx, ptr [bp - 0x3e]             ; C4 5E C2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_025A                          ; 74 05
        cmp     ax, 0xa                         ; 3D 0A 00
        jne     L_027B                          ; 75 21
L_025A:
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
        les     bx, ptr [bp - 0x3e]             ; C4 5E C2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     cx, word ptr [bp - 0x40]        ; 8B 4E C0
        xor     cl, 7                           ; 80 F1 07
        cmp     ax, cx                          ; 3B C1
        jne     L_0271                          ; 75 03
        inc     word ptr [bp - 0x3e]            ; FF 46 C2
L_0271:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        sub     si, si                          ; 2B F6
        add     di, word ptr [bp - 0x44]        ; 03 7E BC
L_027B:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     dx, word ptr [bp - 0x3c]        ; 8B 56 C4
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
        mov     word ptr [bp + 0x10], dx        ; 89 56 10
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0290                          ; 75 03
        jmp     L_01BE                          ; E9 2E FF
L_0290:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_02F9                          ; E8 51 00
        mov     word ptr [bp - 0x42], di        ; 89 7E BE
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], dx        ; 89 56 C8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_01BE                          ; E9 F9 FE
L_02C5:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
L_02D7:
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_02F9                          ; E8 1C 00
L_02DD:
        test    word ptr [bp + 6], 0x100        ; F7 46 06 00 01
        jne     L_02EC                          ; 75 08
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    far GDI.RESTOREVISRGN           ; 9A FF FF 00 00 [FIXUP]
L_02EC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
L_02F9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     di, word ptr [0x3b0]            ; 8B 3E B0 03
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        je      L_0340                          ; 74 32
        test    byte ptr [bp + 4], 3            ; F6 46 04 03
        je      L_0340                          ; 74 2C
        mov     di, word ptr [0x4da]            ; 8B 3E DA 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_02F9                          ; E8 CA FF
        sub     di, ax                          ; 2B F8
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_033C                          ; 75 02
        sar     di, 1                           ; D1 FF
L_033C:
        add     di, word ptr [0x3b0]            ; 03 3E B0 03
L_0340:
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        je      L_034F                          ; 74 09
        test    byte ptr [bp + 4], 0x40         ; F6 46 04 40
        jne     L_034F                          ; 75 03
        jmp     L_03DC                          ; E9 8D 00
L_034F:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0407                          ; E8 A9 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        je      L_038B                          ; 74 21
        push    word ptr [0x606]                ; FF 36 06 06
        mov     ax, word ptr [0x486]            ; A1 86 04
        imul    si                              ; F7 EE
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
L_038B:
        push    word ptr [0x606]                ; FF 36 06 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_03FD                          ; 73 4F
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     byte ptr es:[bx], 9             ; 26 80 3F 09
        jne     L_03CD                          ; 75 16
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [0x36c]            ; A1 6C 03
        sar     ax, 1                           ; D1 F8
        add     ax, si                          ; 03 C6
        cdq                                     ; 99
        mov     cx, word ptr [0x508]            ; 8B 0E 08 05
        idiv    cx                              ; F7 F9
        inc     ax                              ; 40
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
L_03CD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], dx         ; 89 56 0C
        jmp     L_034F                          ; E9 73 FF
L_03DC:
        push    word ptr [0x606]                ; FF 36 06 06
        mov     ax, word ptr [0x486]            ; A1 86 04
        imul    si                              ; F7 EE
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 87 03 00 00 [FIXUP]
L_03FD:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
L_0407:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
L_040A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_0437                          ; 73 22
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_51                   ; 9A 2D 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_042E                          ; 74 08
        inc     word ptr [bp + 8]               ; FF 46 08
L_0429:
        inc     word ptr [bp + 8]               ; FF 46 08
        jmp     L_040A                          ; EB DC
L_042E:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 9             ; 26 80 3F 09
        jne     L_0429                          ; 75 F2
L_0437:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
DRAWTEXT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; DIALOGBOX -- 120 instr
; Carga y ejecuta dialogo modal.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; DIALOGBOX  (offset 0x0443, size 300 bytes)
;-----------------------------------------------------------------------
DIALOGBOX PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_047F                          ; 74 28
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _SEG1_6092                  ; 9A 7D 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0468                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0563                          ; E9 FB 00
L_0468:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        sub     ah, ah                          ; 2A E4
        and     ax, 8                           ; 25 08 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_33FC                  ; 9A B0 04 00 00 [FIXUP]
L_047F:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_04BA                          ; 75 1E
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_04B4                          ; 74 12
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_04B4                          ; 75 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_33FC                  ; 9A 9C 05 00 00 [FIXUP]
L_04B4:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0563                          ; E9 A9 00
L_04BA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _SEG1_835A                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 0x54], ax        ; 89 44 54
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        sub     ah, ah                          ; 2A E4
        and     ax, 0x10                        ; 25 10 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_04D3:
        cmp     word ptr [si + 0x52], 0         ; 83 7C 52 00
        jne     L_0514                          ; 75 3B
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_050E                          ; 75 1E
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0507                          ; 75 11
L_04F6:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A C2 05 00 00 [FIXUP]
        jmp     L_04D3                          ; EB CC
L_0507:
        call    far _SEG1_2280                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04D3                          ; EB C5
L_050E:
        cmp     word ptr [bp - 0x1a], 0x12      ; 83 7E E6 12
        jne     L_0525                          ; 75 11
L_0514:
        mov     ax, word ptr [si + 0x56]        ; 8B 44 56
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        call    far _SEG1_07E5                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0563                          ; EB 3E
L_0525:
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6079                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0559                          ; 75 23
        push    si                              ; 56
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_90                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0559                          ; 75 14
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_23C2                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_247C                  ; 9A FF FF 00 00 [FIXUP]
L_0559:
        cmp     word ptr [bp - 0x1a], 0x118     ; 81 7E E6 18 01
        je      L_04F6                          ; 74 96
        jmp     L_04D3                          ; E9 70 FF
L_0563:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
DIALOGBOX ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENDDIALOG -- 90 instr
; Termina dialogo modal.
; tags: dispatcher, far
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; ENDDIALOG  (offset 0x056F, size 218 bytes)
;-----------------------------------------------------------------------
ENDDIALOG PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05D4                          ; 74 4F
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0x38], 0         ; 83 7F 38 00
        je      L_05BB                          ; 74 2D
        cmp     word ptr [bx + 0x54], 0         ; 83 7F 54 00
        jne     L_05BB                          ; 75 27
        push    word ptr [bx + 0x38]            ; FF 77 38
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_33FC                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx + 0x38]        ; 8B 5F 38
        test    byte ptr [bx + 0x33], 0x10      ; F6 47 33 10
        jne     L_05BB                          ; 75 0F
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x38]            ; FF 77 38
        mov     ax, 0x1003                      ; B8 03 10
        push    ax                              ; 50
        call    far _SEG1_2F79                  ; 9A FF FF 00 00 [FIXUP]
L_05BB:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0x52], 1         ; C7 47 52 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 0x56], ax        ; 89 47 56
L_05D4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
L_05DF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, 1                           ; BE 01 00
L_05E9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        ja      L_063C                          ; 77 48
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        cmp     ax, 9                           ; 3D 09 00
        jl      L_0621                          ; 7C 21
        cmp     ax, 0xa                         ; 3D 0A 00
        jle     L_0611                          ; 7E 0C
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_0611                          ; 74 07
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_061B                          ; 74 0C
        jmp     L_0621                          ; EB 10
L_0611:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, si                          ; 03 C6
        jmp     L_0643                          ; EB 28
L_061B:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0611                          ; 75 F0
L_0621:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0638                          ; 74 03
        inc     word ptr [bp + 0xa]             ; FF 46 0A
L_0638:
        sub     si, si                          ; 2B F6
        jmp     L_05E9                          ; EB AD
L_063C:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        dec     ax                              ; 48
L_0643:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A
ENDDIALOG ENDP


USER_TEXT ENDS

        END
