; AUTO-GENERATED from original GDI segment 26
; segment_size=1577 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x124                       ; 81 EC 24 01
        mov     word ptr [bp - 0x7c], 0         ; C7 46 84 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_001C                          ; 75 03
        jmp     L_0192                          ; E9 76 01
L_001C:
        mov     ax, 0x338                       ; B8 38 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        or      ax, ax                          ; 0B C0
        jne     L_0036                          ; 75 09
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0036:
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0x6e                        ; B8 6E 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 55 00 00 00 [FIXUP]
        mov     word ptr [0x3d4], ax            ; A3 D4 03
        mov     word ptr [0x3d6], dx            ; 89 16 D6 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0x6f                        ; B8 6F 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 6A 00 00 00 [FIXUP]
        mov     word ptr [0x39c], ax            ; A3 9C 03
        mov     word ptr [0x39e], dx            ; 89 16 9E 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 7F 00 00 00 [FIXUP]
        mov     word ptr [0x396], ax            ; A3 96 03
        mov     word ptr [0x398], dx            ; 89 16 98 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xc8                        ; B8 C8 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 94 00 00 00 [FIXUP]
        mov     word ptr [0x390], ax            ; A3 90 03
        mov     word ptr [0x392], dx            ; 89 16 92 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xc9                        ; B8 C9 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A A9 00 00 00 [FIXUP]
        mov     word ptr [0x3f0], ax            ; A3 F0 03
        mov     word ptr [0x3f2], dx            ; 89 16 F2 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xca                        ; B8 CA 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A BE 00 00 00 [FIXUP]
        mov     word ptr [0x3dc], ax            ; A3 DC 03
        mov     word ptr [0x3de], dx            ; 89 16 DE 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xcb                        ; B8 CB 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A D3 00 00 00 [FIXUP]
        mov     word ptr [0x3e0], ax            ; A3 E0 03
        mov     word ptr [0x3e2], dx            ; 89 16 E2 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xcc                        ; B8 CC 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A E8 00 00 00 [FIXUP]
        mov     word ptr [0x3e8], ax            ; A3 E8 03
        mov     word ptr [0x3ea], dx            ; 89 16 EA 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xcd                        ; B8 CD 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FD 00 00 00 [FIXUP]
        mov     word ptr [0x3d8], ax            ; A3 D8 03
        mov     word ptr [0x3da], dx            ; 89 16 DA 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xcf                        ; B8 CF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 12 01 00 00 [FIXUP]
        mov     word ptr [0x3d0], ax            ; A3 D0 03
        mov     word ptr [0x3d2], dx            ; 89 16 D2 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xd6                        ; B8 D6 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 27 01 00 00 [FIXUP]
        mov     word ptr [0x3e4], ax            ; A3 E4 03
        mov     word ptr [0x3e6], dx            ; 89 16 E6 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xd7                        ; B8 D7 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A 3C 01 00 00 [FIXUP]
        mov     word ptr [0x3ec], ax            ; A3 EC 03
        mov     word ptr [0x3ee], dx            ; 89 16 EE 03
        push    word ptr [bp - 0x78]            ; FF 76 88
        mov     ax, 0xf                         ; B8 0F 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3cc], ax            ; A3 CC 03
        mov     word ptr [0x3ce], dx            ; 89 16 CE 03
        cmp     word ptr [0x308], 0             ; 83 3E 08 03 00
        jne     L_0153                          ; 75 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_037C                          ; E8 29 02
L_0153:
        mov     ax, 0x346                       ; B8 46 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x33e                       ; B8 3E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x33d                       ; B8 3D 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x11c]                ; 8D 86 E4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C6 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0192                          ; 74 1D
        lea     ax, [bp - 0x11c]                ; 8D 86 E4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x34e                       ; B8 4E 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0192                          ; 75 09
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x306], ax            ; A3 06 03
        mov     word ptr [0x30e], ax            ; A3 0E 03
L_0192:
        mov     word ptr [bp - 0x7a], 0         ; C7 46 86 00 00
L_0197:
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x3a4], 0        ; C7 87 A4 03 00 00
        inc     word ptr [bp - 0x7a]            ; FF 46 86
        cmp     word ptr [bp - 0x7a], 0xa       ; 83 7E 86 0A
        jl      L_0197                          ; 7C EA
        mov     ax, 0x352                       ; B8 52 03
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x351                       ; B8 51 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x11c]                ; 8D 86 E4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 25 02 00 00 [FIXUP]
        lea     ax, [bp - 0x11c]                ; 8D 86 E4 FE
        mov     word ptr [bp - 0x122], ax       ; 89 86 DE FE
        mov     word ptr [bp - 0x120], ss       ; 8C 96 E0 FE
        mov     word ptr [bp - 0x11e], 0        ; C7 86 E2 FE 00 00
        jmp     L_01F0                          ; EB 12
L_01DE:
        les     bx, ptr [bp - 0x122]            ; C4 9E DE FE
        inc     word ptr [bp - 0x122]           ; FF 86 DE FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_01DE                          ; 75 F2
        inc     word ptr [bp - 0x11e]           ; FF 86 E2 FE
L_01F0:
        les     bx, ptr [bp - 0x122]            ; C4 9E DE FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_01DE                          ; 75 E4
        lea     ax, [bp - 0x11c]                ; 8D 86 E4 FE
        mov     word ptr [bp - 0x122], ax       ; 89 86 DE FE
        mov     word ptr [bp - 0x120], ss       ; 8C 96 E0 FE
        jmp     L_02CE                          ; E9 C5 00
L_0209:
        mov     ax, 0x35b                       ; B8 5B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x120]           ; FF B6 E0 FE
        push    word ptr [bp - 0x122]           ; FF B6 DE FE
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A A3 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0230                          ; 75 03
        jmp     L_02BC                          ; E9 8C 00
L_0230:
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     word ptr [bp - 0x74], ss        ; 8C 56 8C
        jmp     L_0242                          ; EB 07
L_023B:
        cmp     al, 0x2c                        ; 3C 2C
        je      L_0250                          ; 74 11
        inc     word ptr [bp - 0x76]            ; FF 46 8A
L_0242:
        les     bx, ptr [bp - 0x76]             ; C4 5E 8A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x124], al       ; 88 86 DC FE
        or      al, al                          ; 0A C0
        jne     L_023B                          ; 75 EB
L_0250:
        les     bx, ptr [bp - 0x76]             ; C4 5E 8A
        inc     word ptr [bp - 0x76]            ; FF 46 8A
        cmp     byte ptr es:[bx], 0x2c          ; 26 80 3F 2C
        jne     L_02BC                          ; 75 60
        jmp     L_0261                          ; EB 03
L_025E:
        inc     word ptr [bp - 0x76]            ; FF 46 8A
L_0261:
        les     bx, ptr [bp - 0x76]             ; C4 5E 8A
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_025E                          ; 74 F4
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x72]                 ; 8D 46 8E
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_041C                          ; E8 A6 01
        lea     ax, [bp - 0x72]                 ; 8D 46 8E
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_433                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x7a], ax        ; 89 46 86
        inc     ax                              ; 40
        je      L_0242                          ; 74 B6
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        cmp     word ptr [bx + 0x3a4], 0        ; 83 BF A4 03 00
        je      L_029F                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_02DB                          ; EB 3C
L_029F:
        push    word ptr [bp - 0x120]           ; FF B6 E0 FE
        push    word ptr [bp - 0x122]           ; FF B6 DE FE
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x7a]        ; 8B 5E 86
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        mov     word ptr [bx + 0x3a4], ax       ; 89 87 A4 03
        inc     word ptr [bp - 0x7c]            ; FF 46 84
        jmp     L_0242                          ; EB 86
L_02BC:
        les     bx, ptr [bp - 0x122]            ; C4 9E DE FE
        inc     word ptr [bp - 0x122]           ; FF 86 DE FE
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_02BC                          ; 75 F2
        dec     word ptr [bp - 0x11e]           ; FF 8E E2 FE
L_02CE:
        cmp     word ptr [bp - 0x11e], 0        ; 83 BE E2 FE 00
        je      L_02D8                          ; 74 03
        jmp     L_0209                          ; E9 31 FF
L_02D8:
        mov     ax, word ptr [bp - 0x7c]        ; 8B 46 84
L_02DB:
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0307:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x3a2]           ; FF B7 A2 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp + 6], ax           ; 01 46 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GETATOMNAME          ; 9A 54 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp + 6]                ; C4 76 06
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x3a4]           ; FF B7 A4 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp + 6], ax           ; 01 46 06
        push    es                              ; 06
        push    word ptr [bp + 6]               ; FF 76 06
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GETATOMNAME          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        les     si, ptr [bp + 6]                ; C4 76 06
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        inc     word ptr [bp - 4]               ; FF 46 FC
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     word ptr [bp - 8], 0xa          ; 83 7E F8 0A
        jl      L_0307                          ; 7C 97
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_037C -- offset 0x037C -- 68 instr
; Funcion mediana (68 instr, 3 calls).
; tags: calls_kernel, far, medium
; calls (intra): sub_041C
; calls (inter): KERNEL.ADDATOM, KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_037C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xaa                        ; 81 EC AA 00
        mov     ax, 0x364                       ; B8 64 03
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x363                       ; B8 63 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        lea     ax, [bp - 0xa6]                 ; 8D 86 5A FF
        mov     word ptr [bp - 0xaa], ax        ; 89 86 56 FF
        mov     word ptr [bp - 0xa8], ss        ; 8C 96 58 FF
        mov     word ptr [bp - 4], 0x3a2        ; C7 46 FC A2 03
        jmp     L_03FF                          ; EB 42
L_03BD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, 0x3a2                       ; 2D A2 03
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        cmp     ax, 0xa                         ; 3D 0A 00
        jge     L_0409                          ; 7D 3D
        push    word ptr [bp - 0xa8]            ; FF B6 58 FF
        push    word ptr [bp - 0xaa]            ; FF B6 56 FF
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_041C                          ; E8 3E 00
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.ADDATOM              ; 9A A8 02 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx], ax               ; 89 07
L_03ED:
        les     bx, ptr [bp - 0xaa]             ; C4 9E 56 FF
        inc     word ptr [bp - 0xaa]            ; FF 86 56 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_03ED                          ; 75 F2
        add     word ptr [bp - 4], 4            ; 83 46 FC 04
L_03FF:
        les     bx, ptr [bp - 0xaa]             ; C4 9E 56 FF
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_03BD                          ; 75 B4
L_0409:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, 0x3a2                       ; 2D A2 03
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_041C -- offset 0x041C -- 194 instr
; Dispatcher: tabla de decisiones cmp+jcc (194 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_037C
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALSIZE, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_041C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        jmp     L_0449                          ; EB 1E
L_042B:
        cmp     byte ptr [bp - 4], 0x2c         ; 80 7E FC 2C
        je      L_0456                          ; 74 25
        cmp     byte ptr [bp - 4], 0x20         ; 80 7E FC 20
        je      L_0456                          ; 74 1F
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0449:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        or      al, al                          ; 0A C0
        jne     L_042B                          ; 75 D5
L_0456:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        dec     word ptr [bp + 6]               ; FF 4E 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_046D                          ; 75 04
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_046D:
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
        sub     sp, 0xe                         ; 83 EC 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALLOCK           ; 9A F1 04 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        test    word ptr es:[bx], 0x800         ; 26 F7 07 00 08
        jne     L_04A8                          ; 75 04
        or      ax, ax                          ; 0B C0
        jne     L_04B6                          ; 75 0E
L_04A8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALUNLOCK         ; 9A C2 04 00 00 [FIXUP]
L_04B0:
        mov     ax, 0xfffc                      ; B8 FC FF
        jmp     L_061F                          ; E9 69 01
L_04B6:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        or      byte ptr es:[bx + 1], 8         ; 26 80 4F 01 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALUNLOCK         ; 9A 1E 05 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_247                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jge     L_04DB                          ; 7D 06
L_04D5:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_061F                          ; E9 44 01
L_04DB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        cmp     dx, word ptr [0x30c]            ; 3B 16 0C 03
        jb      L_0528                          ; 72 43
        ja      L_04ED                          ; 77 06
        cmp     ax, word ptr [0x30a]            ; 3B 06 0A 03
        jbe     L_0528                          ; 76 3B
L_04ED:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALLOCK           ; 9A FB 05 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     word ptr [0x304], 0             ; 83 3E 04 03 00
        je      L_04A8                          ; 74 A6
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1003                      ; B8 03 10
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, 0xe                         ; 05 0E 00
        push    dx                              ; 52
        push    ax                              ; 50
        lcall   [0x39c]                         ; FF 1E 9C 03
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALUNLOCK         ; 9A 18 06 00 00 [FIXUP]
        mov     ax, 0xbffc                      ; B8 FC BF
        jmp     L_061F                          ; E9 F7 00
L_0528:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_246                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jl      L_04D5                          ; 7C 9E
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1003                      ; B8 03 10
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [0x3d4]                         ; FF 1E D4 03
        mov     ax, word ptr [0x30a]            ; A1 0A 03
        or      ax, word ptr [0x30c]            ; 0B 06 0C 03
        je      L_05AE                          ; 74 5A
        mov     ax, word ptr [0x30a]            ; A1 0A 03
        mov     dx, word ptr [0x30c]            ; 8B 16 0C 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_0561:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        sub     ax, word ptr [0x30a]            ; 2B 06 0A 03
        sbb     dx, word ptr [0x30c]            ; 1B 16 0C 03
        or      dx, dx                          ; 0B D2
        ja      L_05AE                          ; 77 3B
        jb      L_057A                          ; 72 05
        cmp     ax, 0x4e20                      ; 3D 20 4E
        jae     L_05AE                          ; 73 34
L_057A:
        mov     ax, word ptr [0x30a]            ; A1 0A 03
        or      ax, word ptr [0x30c]            ; 0B 06 0C 03
        je      L_05AE                          ; 74 2B
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 0xfffc                      ; B8 FC FF
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0596                          ; 75 03
        jmp     L_04B0                          ; E9 1A FF
L_0596:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jg      L_0561                          ; 7F BF
        jl      L_05A9                          ; 7C 05
        cmp     ax, 0x3c                        ; 3D 3C 00
        jae     L_0561                          ; 73 B8
L_05A9:
        mov     ax, 0xfffd                      ; B8 FD FF
        jmp     L_061F                          ; EB 71
L_05AE:
        push    word ptr [0x304]                ; FF 36 04 03
        mov     ax, 0x1003                      ; B8 03 10
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [0x3d4]                         ; FF 1E D4 03
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_05D8                          ; 75 13
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_241                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05E9                          ; EB 11
L_05D8:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_242                  ; 9A FF FF 00 00 [FIXUP]
L_05E9:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_05F7                          ; 74 03
        jmp     L_04D5                          ; E9 DE FE
L_05F7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        jne     L_060C                          ; 75 03
        jmp     L_04D5                          ; E9 C9 FE
L_060C:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        and     byte ptr es:[bx + 1], 0xf7      ; 26 80 67 01 F7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04D5                          ; E9 B6 FE
L_061F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

GDI_TEXT ENDS

        END
