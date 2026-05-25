; AUTO-GENERATED from original WRITE segment 73
; segment_size=1997 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 232 instr
; Dispatcher: tabla de decisiones cmp+jcc (232 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x36                        ; 83 EC 36
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 35 00 00 00 [FIXUP]
        mov     cx, 0xa                         ; B9 0A 00
        imul    cx                              ; F7 E9
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 49 00 00 00 [FIXUP]
        mov     cx, 0xa                         ; B9 0A 00
        imul    cx                              ; F7 E9
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 58 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 67 00 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x26                        ; B8 26 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        test    al, 4                           ; A8 04
        je      L_00A3                          ; 74 34
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        mov     cl, byte ptr [bp - 0x2e]        ; 8A 4E D2
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 1                           ; B8 01 00
        mov     cl, byte ptr [bp - 0x2c]        ; 8A 4E D4
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_00A3:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_00AF                          ; 7E 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jg      L_00BA                          ; 7F 0B
L_00AF:
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_021E                          ; E9 64 01
L_00BA:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_94                   ; 9A D5 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jle     L_00AF                          ; 7E CD
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_00AF                          ; 7E C7
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        jle     L_00AF                          ; 7E C1
        or      ax, ax                          ; 0B C0
        jle     L_00AF                          ; 7E BD
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        add     si, 2                           ; 83 C6 02
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        inc     di                              ; 47
        cmp     di, si                          ; 3B FE
        jge     L_0111                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_0113                          ; EB 02
L_0111:
        mov     ax, si                          ; 8B C6
L_0113:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x18]        ; 8B 4E E8
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        add     si, 2                           ; 83 C6 02
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        inc     di                              ; 47
        cmp     di, si                          ; 3B FE
        jge     L_0135                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_0137                          ; EB 02
L_0135:
        mov     ax, si                          ; 8B C6
L_0137:
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, 0x7fff                      ; B8 FF 7F
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        jmp     L_020B                          ; E9 B3 00
L_0158:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_01FA                          ; E9 99 00
L_0161:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x2a]            ; F7 6E D6
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        imul    word ptr [bp - 8]               ; F7 6E F8
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A 90 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A AB 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_022B                          ; E8 90 00
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A BE 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A CB 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_022B                          ; E8 62 00
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jg      L_01F4                          ; 7F 20
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0x32], ax        ; 39 46 CE
        jg      L_01F4                          ; 7F 18
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_01F4:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 8], ax           ; 01 46 F8
L_01FA:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0205                          ; 7D 03
        jmp     L_0161                          ; E9 5C FF
L_0205:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0x2a], ax        ; 01 46 D6
L_020B:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jge     L_0216                          ; 7D 03
        jmp     L_0158                          ; E9 42 FF
L_0216:
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
L_021E:
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
; sub_022B -- offset 0x022B -- 352 instr
; Dispatcher: tabla de decisiones cmp+jcc (352 instr).
; tags: dispatcher, far
; callers: sub_0000
; calls (intra): sub_059C, sub_0610, sub_06E6, sub_0720, sub_075A
;----------------------------------------------------------------------
L_022B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jb      L_0276                          ; 72 15
        ja      L_0268                          ; 77 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jbe     L_0276                          ; 76 0E
L_0268:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        sbb     dx, word ptr [bp + 8]           ; 1B 56 08
        jmp     L_0282                          ; EB 0C
L_0276:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sbb     dx, word ptr [bp + 0xc]         ; 1B 56 0C
L_0282:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        or      ax, word ptr [bp - 4]           ; 0B 46 FC
        jne     L_02A4                          ; 75 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jne     L_02B3                          ; 75 18
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_02B3                          ; 75 13
        sub     ax, ax                          ; 2B C0
        jmp     L_02D6                          ; EB 32
L_02A4:
        cmp     word ptr [bp - 8], 0x41         ; 83 7E F8 41
        jb      L_02B8                          ; 72 0E
        ja      L_02B3                          ; 77 07
        cmp     word ptr [bp - 0xa], 0x8937     ; 81 7E F6 37 89
        jbe     L_02B8                          ; 76 05
L_02B3:
        mov     ax, 0x3e8                       ; B8 E8 03
        jmp     L_02D6                          ; EB 1E
L_02B8:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x3e8                       ; B8 E8 03
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_368                  ; 9A 43 03 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_390                  ; 9A 7C 03 00 00 [FIXUP]
L_02D6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 8], 0x7fff       ; C7 46 F8 FF 7F
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_030D                          ; 75 05
L_0308:
        sub     ax, ax                          ; 2B C0
        jmp     L_03F4                          ; E9 E7 00
L_030D:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0318                          ; 75 03
        jmp     L_03B1                          ; E9 99 00
L_0318:
        jle     L_031D                          ; 7E 03
        jmp     L_03CA                          ; E9 AD 00
L_031D:
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0325                          ; 75 03
        jmp     L_03C5                          ; E9 A0 00
L_0325:
        cmp     ax, 2                           ; 3D 02 00
        je      L_0331                          ; 74 07
        cmp     ax, 3                           ; 3D 03 00
        je      L_039E                          ; 74 6F
        jmp     L_0308                          ; EB D7
L_0331:
        mov     word ptr [bp - 4], 0xa          ; C7 46 FC 0A 00
L_0336:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A 62 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A 69 03 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_368                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        adc     dx, word ptr [bp - 0x10]        ; 13 56 F0
        sub     ax, 1                           ; 2D 01 00
        sbb     dx, 0                           ; 83 DA 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jb      L_03F1                          ; 72 60
        jbe     L_0396                          ; 76 03
        jmp     L_0308                          ; E9 72 FF
L_0396:
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jbe     L_03F1                          ; 76 56
        jmp     L_0308                          ; E9 6A FF
L_039E:
        mov     word ptr [bp - 4], 0x64         ; C7 46 FC 64 00
        jmp     L_0336                          ; EB 91
L_03A5:
        mov     word ptr [bp - 0xe], 0xfe       ; C7 46 F2 FE 00
        mov     word ptr [bp - 4], 0x3840       ; C7 46 FC 40 38
        jmp     L_0336                          ; EB 85
L_03B1:
        mov     word ptr [bp - 0xe], 0x9ec      ; C7 46 F2 EC 09
L_03B6:
        mov     word ptr [bp - 4], 0x2710       ; C7 46 FC 10 27
        jmp     L_0336                          ; E9 78 FF
L_03BE:
        mov     word ptr [bp - 0xe], 0xfe       ; C7 46 F2 FE 00
        jmp     L_03B6                          ; EB F1
L_03C5:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_03F4                          ; EB 2A
L_03CA:
        cmp     ax, 6                           ; 3D 06 00
        je      L_03A5                          ; 74 D6
        jg      L_03D9                          ; 7F 08
        cmp     ax, 5                           ; 3D 05 00
        je      L_03BE                          ; 74 E8
        jmp     L_0308                          ; E9 2F FF
L_03D9:
        cmp     ax, 7                           ; 3D 07 00
        jge     L_03E1                          ; 7D 03
        jmp     L_0308                          ; E9 27 FF
L_03E1:
        cmp     ax, 8                           ; 3D 08 00
        jg      L_03E9                          ; 7F 03
        jmp     L_0308                          ; E9 1F FF
L_03E9:
        cmp     ax, 0x63                        ; 3D 63 00
        je      L_03C5                          ; 74 D7
        jmp     L_0308                          ; E9 17 FF
L_03F1:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_03F4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x40                        ; 83 EC 40
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_059C                          ; E8 6E 01
        cmp     word ptr [bp - 0x3c], 0x63      ; 83 7E C4 63
        jne     L_0456                          ; 75 22
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        je      L_0440                          ; 74 06
        cmp     word ptr [bp - 0x30], 0         ; 83 7E D0 00
        jne     L_0456                          ; 75 16
L_0440:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0610                          ; E8 BC 01
        jmp     L_0472                          ; EB 1C
L_0456:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E6                          ; E8 85 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075A                          ; E8 EB 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0472:
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        je      L_0494                          ; 74 1C
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     word ptr [0x334], 0             ; C7 06 34 03 00 00
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [0x34c], ax            ; A3 4C 03
        jmp     L_04FF                          ; EB 6B
L_0494:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     ax, 0x20                        ; 05 20 00
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jle     L_04E4                          ; 7E 41
        mov     ax, word ptr [0xed2]            ; A1 D2 0E
        mov     dx, word ptr [0xed4]            ; 8B 16 D4 0E
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     word ptr [0x334], 0             ; C7 06 34 03 00 00
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 4                           ; B9 04 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     si, ax                          ; 8B F0
        dec     si                              ; 4E
        or      si, si                          ; 0B F6
        jge     L_04D3                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_04D5                          ; EB 02
L_04D3:
        mov     ax, si                          ; 8B C6
L_04D5:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        sub     cx, ax                          ; 2B C8
        mov     word ptr [0x34c], cx            ; 89 0E 4C 03
        jmp     L_04FF                          ; EB 1B
L_04E4:
        mov     ax, word ptr [0x32e]            ; A1 2E 03
        inc     ax                              ; 40
        mov     word ptr [0x334], ax            ; A3 34 03
        mov     ax, word ptr [0x32a]            ; A1 2A 03
        mov     dx, word ptr [0x32c]            ; 8B 16 2C 03
        mov     word ptr [0x330], ax            ; A3 30 03
        mov     word ptr [0x332], dx            ; 89 16 32 03
        mov     word ptr [0x34c], 0x10          ; C7 06 4C 03 10 00
L_04FF:
        mov     ax, word ptr [0x34c]            ; A1 4C 03
        mov     word ptr [0x350], ax            ; A3 50 03
        mov     ax, word ptr [0xe26]            ; A1 26 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xb72]            ; A1 72 0B
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        and     ax, 3                           ; 25 03 00
        or      ax, ax                          ; 0B C0
        je      L_0528                          ; 74 0F
        cmp     ax, 1                           ; 3D 01 00
        je      L_0538                          ; 74 1A
        cmp     ax, 2                           ; 3D 02 00
        je      L_0557                          ; 74 34
        cmp     ax, 3                           ; 3D 03 00
        jne     L_052E                          ; 75 06
L_0528:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
L_052E:
        mov     ax, word ptr [0xb78]            ; A1 78 0B
        cmp     word ptr [bp - 0x3e], ax        ; 39 46 C2
        jge     L_056D                          ; 7D 37
        jmp     L_0570                          ; EB 38
L_0538:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0720                          ; E8 DD 01
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xb76]            ; 2B 0E 76 0B
        add     cx, word ptr [0xb78]            ; 03 0E 78 0B
        sar     cx, 1                           ; D1 F9
L_0552:
        mov     word ptr [bp - 0x3e], cx        ; 89 4E C2
        jmp     L_052E                          ; EB D7
L_0557:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0720                          ; E8 BE 01
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xb76]            ; 2B 0E 76 0B
        jmp     L_0552                          ; EB E5
L_056D:
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
L_0570:
        push    ax                              ; 50
        push    word ptr [bp - 0x40]            ; FF 76 C0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E6                          ; E8 6D 01
        mov     word ptr [0x340], ax            ; A3 40 03
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [0x340]            ; 03 06 40 03
        mov     word ptr [0x344], ax            ; A3 44 03
        mov     ax, word ptr [0x348]            ; A1 48 03
        and     al, 0                           ; 24 00
        or      al, 1                           ; 0C 01
        mov     word ptr [0x348], ax            ; A3 48 03
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_059C -- offset 0x059C -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: far, medium
; callers: sub_022B
;----------------------------------------------------------------------
L_059C:
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
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far _entry_301                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx], 0x80             ; F6 07 80
        je      L_05D6                          ; 74 05
        and     byte ptr [bx], 0x7f             ; 80 27 7F
        jmp     L_05EE                          ; EB 18
L_05D6:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bx + 0x20], ax        ; 89 47 20
        mov     word ptr [bx + 0x22], 0         ; C7 47 22 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 0x1e], 0x1e      ; C7 47 1E 1E 00
L_05EE:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx + 0x1e], 0x26      ; 83 7F 1E 26
        ja      L_0604                          ; 77 0D
        mov     word ptr [bx + 0x24], 0x3e8     ; C7 47 24 E8 03
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx + 0x26], 0x3e8     ; C7 47 26 E8 03
L_0604:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0610 -- offset 0x0610 -- 91 instr
; Funcion compleja: 91 instrucciones, 4 llamadas, 1 branches.
; tags: complex, far
; callers: sub_022B
; calls (intra): sub_06E6, sub_0720, sub_075A, sub_0794
;----------------------------------------------------------------------
L_0610:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x79e]                ; FF 36 9E 07
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 B5 F9
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        imul    word ptr [bp - 0x10]            ; F7 6E F0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06A1                          ; 75 30
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0720                          ; E8 A3 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E6                          ; E8 60 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0794                          ; E8 FF 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075A                          ; E8 BC 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_06A1:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x24]            ; FF 77 24
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        call    far _entry_94                   ; 9A C4 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0x26]            ; FF 77 26
        mov     ax, 0x3e8                       ; B8 E8 03
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 02 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bx], ax               ; 89 07
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06E6 -- offset 0x06E6 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: far, small
; callers: sub_022B, sub_0610
;----------------------------------------------------------------------
L_06E6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0708                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x10ee]               ; FF 36 EE 10
        push    word ptr [0xa5a]                ; FF 36 5A 0A
L_0701:
        call    far _entry_94                   ; 9A 3C 07 00 00 [FIXUP]
        jmp     L_0715                          ; EB 0D
L_0708:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        jmp     L_0701                          ; EB EC
L_0715:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0720 -- offset 0x0720 -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: wrapper
; callers: sub_022B, sub_0610
;----------------------------------------------------------------------
L_0720:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0742                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
L_073B:
        call    far _entry_94                   ; 9A 76 07 00 00 [FIXUP]
        jmp     L_074F                          ; EB 0D
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0742 -- offset 0x0742 -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: far, leaf
; callers: sub_02CF, sub_0318
;----------------------------------------------------------------------
L_0742:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        jmp     L_073B                          ; EB EC
L_074F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_075A -- offset 0x075A -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: far, small
; callers: sub_022B, sub_0610
;----------------------------------------------------------------------
L_075A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_077C                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
L_0775:
        call    far _entry_94                   ; 9A B0 07 00 00 [FIXUP]
        jmp     L_0789                          ; EB 0D
L_077C:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        jmp     L_0775                          ; EB EC
L_0789:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0794 -- offset 0x0794 -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: wrapper
; callers: sub_0610
;----------------------------------------------------------------------
L_0794:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_07B6                          ; 74 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
L_07AF:
        call    far _entry_94                   ; 9A C4 00 00 00 [FIXUP]
        jmp     L_07C3                          ; EB 0D
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07B6 -- offset 0x07B6 -- 12 instr
; Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_07B6:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        jmp     L_07AF                          ; EB EC
L_07C3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
