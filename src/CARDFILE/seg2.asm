; AUTO-GENERATED from original CARDFILE segment 2
; segment_size=1650 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1f8                       ; B8 F8 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 26 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x482                       ; B8 82 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 36 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1fa                       ; B8 FA 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 46 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x43a                       ; B8 3A 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 56 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x296                       ; B8 96 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 66 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 76 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x53c                       ; B8 3C 05
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 86 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1ba                       ; B8 BA 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 96 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x28c                       ; B8 8C 02
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A A6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x440                       ; B8 40 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A B6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x508                       ; B8 08 05
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A C6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x164                       ; B8 64 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A D6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x1b8                       ; B8 B8 01
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x3e0                       ; B8 E0 03
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A F6 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x454                       ; B8 54 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A 06 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xa8                        ; B8 A8 00
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETINSTANCEDATA      ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x98                        ; 81 EC 98 00
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 4F 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 64 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0x45a                       ; B8 5A 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 79 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0x50a                       ; B8 0A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 8E 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A A4 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        lea     ax, [bp - 0x94]                 ; 8D 86 6C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A B9 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x170                       ; B8 70 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A CE 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_01D9                          ; 75 03
        jmp     L_0360                          ; E9 87 01
L_01D9:
        mov     ax, word ptr [bp - 0x94]        ; 8B 86 6C FF
        mov     word ptr [0x280], ax            ; A3 80 02
        mov     ax, OFFSET _entry_2             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_2             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 03 02 00 00 [FIXUP]
        mov     word ptr [0x290], ax            ; A3 90 02
        mov     word ptr [0x292], dx            ; 89 16 92 02
        mov     ax, OFFSET _entry_3             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_3             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 1A 02 00 00 [FIXUP]
        mov     word ptr [0x540], ax            ; A3 40 05
        mov     word ptr [0x542], dx            ; 89 16 42 05
        mov     ax, OFFSET _entry_4             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_4             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 31 02 00 00 [FIXUP]
        mov     word ptr [0x2a0], ax            ; A3 A0 02
        mov     word ptr [0x2a2], dx            ; 89 16 A2 02
        mov     ax, OFFSET _entry_9             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_9             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 48 02 00 00 [FIXUP]
        mov     word ptr [0x29c], ax            ; A3 9C 02
        mov     word ptr [0x29e], dx            ; 89 16 9E 02
        mov     ax, OFFSET _entry_5             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_5             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 5F 02 00 00 [FIXUP]
        mov     word ptr [0x1f2], ax            ; A3 F2 01
        mov     word ptr [0x1f4], dx            ; 89 16 F4 01
        mov     ax, OFFSET _entry_6             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_6             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 77 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x86], ax        ; 89 86 7A FF
        mov     word ptr [bp - 0x84], dx        ; 89 96 7C FF
        mov     ax, OFFSET _entry_8             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_8             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 8E 02 00 00 [FIXUP]
        mov     word ptr [0x2ac], ax            ; A3 AC 02
        mov     word ptr [0x2ae], dx            ; 89 16 AE 02
        mov     ax, OFFSET _entry_7             ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_7             ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x168], ax            ; A3 68 01
        mov     word ptr [0x16a], dx            ; 89 16 6A 01
        or      ax, dx                          ; 0B C2
        jne     L_02A0                          ; 75 03
        jmp     L_0360                          ; E9 C0 00
L_02A0:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x34                        ; B8 34 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1be], ax            ; A3 BE 01
        or      ax, ax                          ; 0B C0
        jne     L_02B9                          ; 75 03
        jmp     L_0360                          ; E9 A7 00
L_02B9:
        mov     word ptr [0x456], 0             ; C7 06 56 04 00 00
        mov     byte ptr [0x35a], 0             ; C6 06 5A 03 00
        mov     word ptr [0x166], 1             ; C7 06 66 01 01 00
        mov     byte ptr [0x411], 0             ; C6 06 11 04 00
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
        mov     byte ptr [0x410], 1             ; C6 06 10 04 01
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x98], ax        ; 89 86 68 FF
        mov     word ptr [bp - 0x96], dx        ; 89 96 6A FF
        les     bx, ptr [bp - 0x98]             ; C4 9E 68 FF
        mov     di, bx                          ; 8B FB
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x8e                        ; B8 8E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xaa                        ; B8 AA 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xfc                        ; BA FC 00
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
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A 55 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        or      ax, ax                          ; 0B C0
        je      L_0360                          ; 74 33
        mov     ax, 0xac                        ; B8 AC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xab                        ; B8 AB 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        mov     ax, 0xc8                        ; B8 C8 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x29a], ax            ; A3 9A 02
        or      ax, ax                          ; 0B C0
        jne     L_037B                          ; 75 1B
L_0360:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_0454                          ; E9 D9 00
L_037B:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0xfffc                      ; B8 FC FF
        push    ax                              ; 50
        call    far USER.GETWINDOWLONG          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x538], ax            ; A3 38 05
        mov     word ptr [0x53a], dx            ; 89 16 3A 05
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0xfffc                      ; B8 FC FF
        push    ax                              ; 50
        push    word ptr [bp - 0x84]            ; FF B6 7C FF
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        call    far USER.SETWINDOWLONG          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     word ptr [bp - 0x88], dx        ; 89 96 78 FF
        jmp     L_03E4                          ; EB 04
L_03E0:
        inc     word ptr [bp - 0x8a]            ; FF 86 76 FF
L_03E4:
        les     bx, ptr [bp - 0x8a]             ; C4 9E 76 FF
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_03E0                          ; 74 F2
        mov     word ptr [bp - 0x8c], 0x35a     ; C7 86 74 FF 5A 03
        mov     word ptr [bp - 0x90], 0         ; C7 86 70 FF 00 00
L_03FA:
        les     bx, ptr [bp - 0x8a]             ; C4 9E 76 FF
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jle     L_0424                          ; 7E 20
        mov     bx, word ptr [bp - 0x8c]        ; 8B 9E 74 FF
        inc     word ptr [bp - 0x8c]            ; FF 86 74 FF
        mov     si, word ptr [bp - 0x8a]        ; 8B B6 76 FF
        inc     word ptr [bp - 0x8a]            ; FF 86 76 FF
        mov     al, byte ptr es:[si]            ; 26 8A 04
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0x90]            ; FF 86 70 FF
        cmp     word ptr [bp - 0x90], 0x7f      ; 83 BE 70 FF 7F
        jl      L_03FA                          ; 7C D6
L_0424:
        mov     bx, word ptr [bp - 0x8c]        ; 8B 9E 74 FF
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0451                          ; 74 15
        mov     ax, 0x35a                       ; B8 5A 03
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0451                          ; 75 05
        mov     byte ptr [0x35a], 0             ; C6 06 5A 03 00
L_0451:
        mov     ax, 1                           ; B8 01 00
L_0454:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x32                        ; 83 EC 32
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 7D 04 00 00 [FIXUP]
        mov     word ptr [0x1f8], ax            ; A3 F8 01
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 89 04 00 00 [FIXUP]
        mov     word ptr [0x482], ax            ; A3 82 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1fa], ax            ; A3 FA 01
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEBRUSHINDIRECT     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1fa], ax            ; A3 FA 01
        or      ax, ax                          ; 0B C0
        jne     L_04B6                          ; 75 06
        mov     ax, word ptr [0x1f8]            ; A1 F8 01
        mov     word ptr [0x1fa], ax            ; A3 FA 01
L_04B6:
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A D6 04 00 00 [FIXUP]
        mov     word ptr [0x400], ax            ; A3 00 04
        or      ax, ax                          ; 0B C0
        jne     L_04CF                          ; 75 06
        mov     ax, word ptr [0x1f8]            ; A1 F8 01
        mov     word ptr [0x400], ax            ; A3 00 04
L_04CF:
        mov     ax, 0xff                        ; B8 FF 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x43a], ax            ; A3 3A 04
        or      ax, ax                          ; 0B C0
        jne     L_04E7                          ; 75 06
        mov     ax, word ptr [0x482]            ; A1 82 04
        mov     word ptr [0x43a], ax            ; A3 3A 04
L_04E7:
        mov     ax, 0xb1                        ; B8 B1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEIC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        or      ax, ax                          ; 0B C0
        jne     L_0505                          ; 75 05
L_0500:
        sub     ax, ax                          ; 2B C0
        jmp     L_0668                          ; E9 63 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0505 -- offset 0x0505 -- 131 instr
; Dispatcher: tabla de decisiones cmp+jcc (131 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; calls (inter): GDI.DELETEDC, GDI.GETDEVICECAPS, GDI.GETTEXTMETRICS, KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADACCELERATORS (+3 mas)
;----------------------------------------------------------------------
L_0505:
        push    word ptr [bp - 0x26]            ; FF 76 DA
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 1B 05 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        mov     cx, 0xc                         ; B9 0C 00
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        cmp     ax, 3                           ; 3D 03 00
        jge     L_0531                          ; 7D 0B
        mov     ax, word ptr [0x1fa]            ; A1 FA 01
        mov     word ptr [0x53c], ax            ; A3 3C 05
        mov     ax, word ptr [0x482]            ; A1 82 04
        jmp     L_0540                          ; EB 0F
L_0531:
        mov     word ptr [0xa8], 1              ; C7 06 A8 00 01 00
        mov     ax, word ptr [0x400]            ; A1 00 04
        mov     word ptr [0x53c], ax            ; A3 3C 05
        mov     ax, word ptr [0x43a]            ; A1 3A 04
L_0540:
        mov     word ptr [0x296], ax            ; A3 96 02
        push    word ptr [bp - 0x26]            ; FF 76 DA
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     word ptr [0x1ba], ax            ; A3 BA 01
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0x28e], ax            ; A3 8E 02
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0x28c], ax            ; A3 8C 02
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        inc     ax                              ; 40
        mov     word ptr [0x440], ax            ; A3 40 04
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        add     ax, 3                           ; 05 03 00
        mov     word ptr [0x508], ax            ; A3 08 05
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        add     ax, 5                           ; 05 05 00
        mov     word ptr [0x164], ax            ; A3 64 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A AD 05 00 00 [FIXUP]
        mov     word ptr [0x1b8], ax            ; A3 B8 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3e0], ax            ; A3 E0 03
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x454], ax            ; A3 54 04
        cmp     word ptr [0x1b8], 0             ; 83 3E B8 01 00
        jne     L_05E2                          ; 75 03
        jmp     L_0500                          ; E9 1E FF
L_05E2:
        cmp     word ptr [0x3e0], 0             ; 83 3E E0 03 00
        jne     L_05EC                          ; 75 03
        jmp     L_0500                          ; E9 14 FF
L_05EC:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_05F5                          ; 75 03
        jmp     L_0500                          ; E9 0B FF
L_05F5:
        or      ax, ax                          ; 0B C0
        jne     L_05FC                          ; 75 03
        jmp     L_0500                          ; E9 04 FF
L_05FC:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        or      ax, ax                          ; 0B C0
        jne     L_0613                          ; 75 03
        jmp     L_0500                          ; E9 ED FE
L_0613:
        mov     bx, ax                          ; 8B D8
        mov     ax, 0x8e                        ; B8 8E 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     ax, word ptr [0x1b8]            ; A1 B8 01
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 0x10], 0         ; C7 47 10 00 00
        mov     word ptr [bx], 9                ; C7 07 09 00
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     ax, word ptr [0x16e]            ; A1 6E 01
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_065D                          ; 75 03
        jmp     L_0500                          ; E9 A3 FE
L_065D:
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_0668:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

CARDFILE_TEXT ENDS

        END
