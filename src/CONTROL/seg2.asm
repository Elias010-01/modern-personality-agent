; AUTO-GENERATED from original CONTROL segment 2
; segment_size=2078 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CONTROL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 1D 00 00 00 [FIXUP]
        mov     word ptr [0x778], ax            ; A3 78 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 29 00 00 00 [FIXUP]
        mov     word ptr [0xc52], ax            ; A3 52 0C
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 35 00 00 00 [FIXUP]
        mov     word ptr [0xc88], ax            ; A3 88 0C
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 41 00 00 00 [FIXUP]
        mov     word ptr [0x8d2], ax            ; A3 D2 08
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xaea], ax            ; A3 EA 0A
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0060                          ; 75 04
L_005C:
        sub     ax, ax                          ; 2B C0
        jmp     L_00CA                          ; EB 6A
L_0060:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x64                        ; B8 64 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, 0x6c                        ; B8 6C 00
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     word ptr [bx + 0x14], ds        ; 8C 5F 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 0x10], 6         ; C7 47 10 06 00
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     ax, 0x74                        ; B8 74 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_005C                          ; 74 9D
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_00CA:
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
        sub     sp, 0x24                        ; 83 EC 24
        mov     ax, OFFSET _entry_3             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_3             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 07 01 00 00 [FIXUP]
        mov     word ptr [0xae6], ax            ; A3 E6 0A
        mov     word ptr [0xae8], dx            ; 89 16 E8 0A
        mov     ax, OFFSET _entry_2             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_2             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 1F 01 00 00 [FIXUP]
        mov     word ptr [0x976], ax            ; A3 76 09
        mov     word ptr [0x978], dx            ; 89 16 78 09
        mov     ax, OFFSET _entry_20            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_20            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 37 01 00 00 [FIXUP]
        mov     word ptr [0x718], ax            ; A3 18 07
        mov     word ptr [0x71a], dx            ; 89 16 1A 07
        mov     ax, OFFSET _entry_4             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_4             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 4F 01 00 00 [FIXUP]
        mov     word ptr [0xc1a], ax            ; A3 1A 0C
        mov     word ptr [0xc1c], dx            ; 89 16 1C 0C
        mov     ax, OFFSET _entry_5             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_5             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 67 01 00 00 [FIXUP]
        mov     word ptr [0xb02], ax            ; A3 02 0B
        mov     word ptr [0xb04], dx            ; 89 16 04 0B
        mov     ax, OFFSET _entry_13            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_13            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 7F 01 00 00 [FIXUP]
        mov     word ptr [0x76a], ax            ; A3 6A 07
        mov     word ptr [0x76c], dx            ; 89 16 6C 07
        mov     ax, OFFSET _entry_6             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_6             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 97 01 00 00 [FIXUP]
        mov     word ptr [0x8ce], ax            ; A3 CE 08
        mov     word ptr [0x8d0], dx            ; 89 16 D0 08
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A AF 01 00 00 [FIXUP]
        mov     word ptr [0x8e6], ax            ; A3 E6 08
        mov     word ptr [0x8e8], dx            ; 89 16 E8 08
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A C7 01 00 00 [FIXUP]
        mov     word ptr [0x946], ax            ; A3 46 09
        mov     word ptr [0x948], dx            ; 89 16 48 09
        mov     ax, OFFSET _entry_9             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_9             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A DF 01 00 00 [FIXUP]
        mov     word ptr [0xa5c], ax            ; A3 5C 0A
        mov     word ptr [0xa5e], dx            ; 89 16 5E 0A
        mov     ax, OFFSET _entry_10            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_10            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A F7 01 00 00 [FIXUP]
        mov     word ptr [0xa60], ax            ; A3 60 0A
        mov     word ptr [0xa62], dx            ; 89 16 62 0A
        mov     ax, OFFSET _entry_15            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_15            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 0F 02 00 00 [FIXUP]
        mov     word ptr [0x816], ax            ; A3 16 08
        mov     word ptr [0x818], dx            ; 89 16 18 08
        mov     ax, OFFSET _entry_16            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_16            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x89c], ax            ; A3 9C 08
        mov     word ptr [0x89e], dx            ; 89 16 9E 08
        mov     ax, OFFSET _entry_17            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_17            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 3F 02 00 00 [FIXUP]
        mov     word ptr [0x8a0], ax            ; A3 A0 08
        mov     word ptr [0x8a2], dx            ; 89 16 A2 08
        mov     ax, OFFSET _entry_18            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_18            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 57 02 00 00 [FIXUP]
        mov     word ptr [0xa22], ax            ; A3 22 0A
        mov     word ptr [0xa24], dx            ; 89 16 24 0A
        mov     ax, OFFSET _entry_19            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_19            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 6F 02 00 00 [FIXUP]
        mov     word ptr [0xa26], ax            ; A3 26 0A
        mov     word ptr [0xa28], dx            ; 89 16 28 0A
        mov     ax, OFFSET _entry_11            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_11            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 87 02 00 00 [FIXUP]
        mov     word ptr [0xa06], ax            ; A3 06 0A
        mov     word ptr [0xa08], dx            ; 89 16 08 0A
        mov     ax, OFFSET _entry_12            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x8de]                ; FF 36 DE 08
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A EF 00 00 00 [FIXUP]
        mov     word ptr [0x8e2], ax            ; A3 E2 08
        mov     word ptr [0x8e4], dx            ; 89 16 E4 08
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A A3 02 00 00 [FIXUP]
        mov     word ptr [0x80c], ax            ; A3 0C 08
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A AF 02 00 00 [FIXUP]
        mov     word ptr [0x8a4], ax            ; A3 A4 08
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A BB 02 00 00 [FIXUP]
        mov     word ptr [0x732], ax            ; A3 32 07
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A C7 02 00 00 [FIXUP]
        mov     word ptr [0x734], ax            ; A3 34 07
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7ffd                      ; B8 FD 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A E9 02 00 00 [FIXUP]
        mov     word ptr [0x762], ax            ; A3 62 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7ffc                      ; B8 FC 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa0a], ax            ; A3 0A 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A 13 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x724], ax            ; A3 24 07
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 2C 03 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 46 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A 6F 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [0xa6a], ax            ; A3 6A 0A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0xc50], ax            ; A3 50 0C
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0xd9e], ax            ; A3 9E 0D
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.GETNEARESTCOLOR         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa02], ax            ; A3 02 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x73e], ax            ; A3 3E 07
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xae8]                ; FF 36 E8 0A
        push    word ptr [0xae6]                ; FF 36 E6 0A
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa20], ax            ; A3 20 0A
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_039F                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_03A2                          ; EB 03
L_039F:
        mov     ax, 1                           ; B8 01 00
L_03A2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x190                       ; B8 90 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A D1 03 00 00 [FIXUP]
        mov     word ptr [0x740], ax            ; A3 40 07
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x19a                       ; B8 9A 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A E0 03 00 00 [FIXUP]
        mov     word ptr [0xaec], ax            ; A3 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x195                       ; B8 95 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A EF 03 00 00 [FIXUP]
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x19f                       ; B8 9F 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FE 03 00 00 [FIXUP]
        mov     word ptr [0xd9c], ax            ; A3 9C 0D
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1a4                       ; B8 A4 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 0D 04 00 00 [FIXUP]
        mov     word ptr [0xa04], ax            ; A3 04 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1b8                       ; B8 B8 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 1C 04 00 00 [FIXUP]
        mov     word ptr [0x6cc], ax            ; A3 CC 06
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1c2                       ; B8 C2 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 2B 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1ae                       ; B8 AE 01
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [0x768], ax            ; A3 68 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [0x974], ax            ; A3 74 09
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x75a                       ; B8 5A 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x75a                       ; B8 5A 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x740]                ; FF 36 40 07
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ax                              ; 50
        call    L_07D8                          ; E8 5E 03
        push    word ptr [0xaec]                ; FF 36 EC 0A
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ax                              ; 50
        call    L_07D8                          ; E8 4F 03
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        call    L_07D8                          ; E8 41 03
        push    word ptr [bp - 0x18]            ; FF 76 E8
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        call    L_07D8                          ; E8 33 03
        mov     ax, word ptr [0x740]            ; A1 40 07
        mov     word ptr [0xc44], ax            ; A3 44 0C
        cmp     word ptr [0xc8a], 0             ; 83 3E 8A 0C 00
        jne     L_04CE                          ; 75 1C
        push    word ptr [0x6cc]                ; FF 36 CC 06
        mov     ax, 0xfff0                      ; B8 F0 FF
        push    ax                              ; 50
        push    word ptr [0x6cc]                ; FF 36 CC 06
        push    ax                              ; 50
        call    far USER.GETWINDOWLONG          ; 9A FF FF 00 00 [FIXUP]
        and     dl, 0xfc                        ; 80 E2 FC
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETWINDOWLONG          ; 9A FF FF 00 00 [FIXUP]
L_04CE:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A E6 04 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A F4 04 00 00 [FIXUP]
        mov     word ptr [0x9cc], ax            ; A3 CC 09
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 00 05 00 00 [FIXUP]
        mov     word ptr [0xa66], ax            ; A3 66 0A
        mov     word ptr [0xa68], dx            ; 89 16 68 0A
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A 61 03 00 00 [FIXUP]
        mov     word ptr [0xc7e], ax            ; A3 7E 0C
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 53 03 00 00 [FIXUP]
        mov     word ptr [0x8ee], ax            ; A3 EE 08
        mov     word ptr [0x8f0], dx            ; 89 16 F0 08
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [0x754], ax            ; A3 54 07
        mov     word ptr [0x74c], ax            ; A3 4C 07
        mov     word ptr [0x7b4], ax            ; A3 B4 07
        mov     word ptr [0x7ac], ax            ; A3 AC 07
        mov     word ptr [0x7a4], ax            ; A3 A4 07
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, 0x17                        ; 05 17 00
        mov     word ptr [0x758], ax            ; A3 58 07
        mov     word ptr [0x750], ax            ; A3 50 07
        mov     word ptr [0x7b8], ax            ; A3 B8 07
        mov     word ptr [0x7b0], ax            ; A3 B0 07
        mov     word ptr [0x7a8], ax            ; A3 A8 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 4                           ; 05 04 00
        mov     word ptr [0x7a2], ax            ; A3 A2 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [0x74a], ax            ; A3 4A 07
        mov     word ptr [0x7a6], ax            ; A3 A6 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [0x7aa], ax            ; A3 AA 07
        mov     word ptr [0x74e], ax            ; A3 4E 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 0x18                        ; 05 18 00
        mov     word ptr [0x752], ax            ; A3 52 07
        mov     word ptr [0x7ae], ax            ; A3 AE 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 0x1c                        ; 05 1C 00
        mov     word ptr [0x7b2], ax            ; A3 B2 07
        mov     word ptr [0x756], ax            ; A3 56 07
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 0x24                        ; 05 24 00
        mov     word ptr [0x7b6], ax            ; A3 B6 07
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x7a2                       ; B8 A2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 8D 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x74a                       ; B8 4A 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 9A 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x7aa                       ; B8 AA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A A7 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x752                       ; B8 52 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A B4 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x7b2                       ; B8 B2 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 45 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [0xad0], ax            ; A3 D0 0A
        mov     word ptr [0xac8], ax            ; A3 C8 0A
        mov     word ptr [0xac0], ax            ; A3 C0 0A
        mov     word ptr [0x6f2], ax            ; A3 F2 06
        mov     word ptr [0x6ea], ax            ; A3 EA 06
        mov     word ptr [0x6e2], ax            ; A3 E2 06
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, 0x17                        ; 05 17 00
        mov     word ptr [0xad4], ax            ; A3 D4 0A
        mov     word ptr [0xacc], ax            ; A3 CC 0A
        mov     word ptr [0xac4], ax            ; A3 C4 0A
        mov     word ptr [0x6f6], ax            ; A3 F6 06
        mov     word ptr [0x6ee], ax            ; A3 EE 06
        mov     word ptr [0x6e6], ax            ; A3 E6 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 4                           ; 05 04 00
        mov     word ptr [0x6e0], ax            ; A3 E0 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [0xabe], ax            ; A3 BE 0A
        mov     word ptr [0x6e4], ax            ; A3 E4 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [0x6e8], ax            ; A3 E8 06
        mov     word ptr [0xac2], ax            ; A3 C2 0A
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x18                        ; 05 18 00
        mov     word ptr [0xac6], ax            ; A3 C6 0A
        mov     word ptr [0x6ec], ax            ; A3 EC 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x1c                        ; 05 1C 00
        mov     word ptr [0x6f0], ax            ; A3 F0 06
        mov     word ptr [0xaca], ax            ; A3 CA 0A
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x24                        ; 05 24 00
        mov     word ptr [0x6f4], ax            ; A3 F4 06
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x26                        ; 05 26 00
        mov     word ptr [0xace], ax            ; A3 CE 0A
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0x32                        ; 05 32 00
        mov     word ptr [0xad2], ax            ; A3 D2 0A
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6e0                       ; B8 E0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 52 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xabe                       ; B8 BE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 5F 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6e8                       ; B8 E8 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 6C 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xac6                       ; B8 C6 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 79 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x6f0                       ; B8 F0 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 86 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xace                       ; B8 CE 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A D3 06 00 00 [FIXUP]
        mov     ax, 0xd94                       ; B8 94 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x6e0]                ; FF 36 E0 06
        push    word ptr [0x6e2]                ; FF 36 E2 06
        push    word ptr [0x6f4]                ; FF 36 F4 06
        push    word ptr [0x6f6]                ; FF 36 F6 06
        call    far USER.SETRECT                ; 9A C6 06 00 00 [FIXUP]
        mov     ax, 0xb7c                       ; B8 7C 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, 0x21                        ; 05 21 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 0x26                        ; 05 26 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, 0x22                        ; 05 22 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, 0x2e                        ; 05 2E 00
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb7c                       ; B8 7C 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A 04 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [0x710], ax            ; A3 10 07
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, 0x2e                        ; 05 2E 00
        mov     word ptr [0x714], ax            ; A3 14 07
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, 0x24                        ; 05 24 00
        mov     word ptr [0x712], ax            ; A3 12 07
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, 0x30                        ; 05 30 00
        mov     word ptr [0x716], ax            ; A3 16 07
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x710                       ; B8 10 07
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.MAPDIALOGRECT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x8de]                ; FF 36 DE 08
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x7ba                       ; B8 BA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x8d                        ; B8 8D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7d                        ; B8 7D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2bc                       ; B8 BC 02
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 4D 07 00 00 [FIXUP]
        sub     ax, 0x578                       ; 2D 78 05
        neg     ax                              ; F7 D8
        mov     word ptr [0xb0e], ax            ; A3 0E 0B
        mov     ax, 0xa6                        ; B8 A6 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x95                        ; B8 95 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        sub     ax, 0x3e8                       ; 2D E8 03
        neg     ax                              ; F7 D8
        mov     word ptr [0x6ce], ax            ; A3 CE 06
        push    word ptr [0xa04]                ; FF 36 04 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        mov     ax, 0x4b0                       ; B8 B0 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 85 07 00 00 [FIXUP]
        push    word ptr [0x6cc]                ; FF 36 CC 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        mov     ax, 0x384                       ; B8 84 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xa04]                ; FF 36 04 0A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0xb0e]                ; FF 36 0E 0B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A AF 07 00 00 [FIXUP]
        push    word ptr [0x6cc]                ; FF 36 CC 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [0x6ce]                ; FF 36 CE 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x578                       ; B8 78 05
        sub     ax, word ptr [0xb0e]            ; 2B 06 0E 0B
        push    ax                              ; 50
        call    far USER.SETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x3e8                       ; B8 E8 03
        sub     ax, word ptr [0x6ce]            ; 2B 06 CE 06
        push    ax                              ; 50
        call    far USER.SETDOUBLECLICKTIME     ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07D8 -- offset 0x07D8 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_user, small
; calls (inter): USER.GETWINDOWRECT
;----------------------------------------------------------------------
L_07D8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETWINDOWRECT          ; 9A 3B 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [0x75a]            ; 2B 06 5A 07
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        mov     cx, word ptr [0xd9e]            ; 8B 0E 9E 0D
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x75c]            ; 2B 06 5C 07
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        cdq                                     ; 99
        mov     cx, word ptr [0xa6a]            ; 8B 0E 6A 0A
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

CONTROL_TEXT ENDS

        END
