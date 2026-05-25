; AUTO-GENERATED from original EPSON segment 2
; segment_size=5204 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

EPSON_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x104], 0             ; 83 3E 04 01 00
        je      L_0019                          ; 74 05
L_0014:
        sub     ax, ax                          ; 2B C0
        jmp     L_00DF                          ; E9 C6 00
L_0019:
        mov     word ptr [0x104], 1             ; C7 06 04 01 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4c0                       ; B8 C0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_003C                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_003E                          ; EB 02
L_003C:
        sub     ax, ax                          ; 2B C0
L_003E:
        or      ax, ax                          ; 0B C0
        jne     L_0056                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x4c0                       ; B8 C0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0086                          ; 74 30
L_0056:
        mov     word ptr [0x4e0], 0xa           ; C7 06 E0 04 0A 00
        mov     word ptr [0x4e6], 0x10          ; C7 06 E6 04 10 00
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0070                          ; 74 05
        mov     ax, 0x14                        ; B8 14 00
        jmp     L_0073                          ; EB 03
L_0070:
        mov     ax, 0x15                        ; B8 15 00
L_0073:
        mov     word ptr [0x4e4], ax            ; A3 E4 04
        mov     ax, 0x4c0                       ; B8 C0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_0086:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xfc                        ; B8 FC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_00AC                          ; 75 09
        mov     word ptr [0x104], 0             ; C7 06 04 01 00 00
        jmp     L_0014                          ; E9 68 FF
L_00AC:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4c0                       ; B8 C0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x104], 0             ; C7 06 04 01 00 00
        mov     ax, 1                           ; B8 01 00
L_00DF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_010B                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0108                          ; 75 03
        jmp     L_019B                          ; E9 93 00
L_0108:
        jmp     L_0196                          ; E9 8B 00
L_010B:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, 0x4c0                       ; B8 C0 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        jmp     L_011E                          ; EB 03
L_011B:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_011E:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     byte ptr [bp + si - 0x3c], al   ; 88 42 C4
        or      al, al                          ; 0A C0
        jne     L_011B                          ; 75 EA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        lea     ax, [bp + si - 0x3c]            ; 8D 42 C4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4e0]                ; FF 36 E0 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 70 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4e4]                ; FF 36 E4 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 80 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4e6]                ; FF 36 E6 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x4e4]                ; FF 36 E4 04
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
L_0196:
        sub     ax, ax                          ; 2B C0
        jmp     L_022C                          ; E9 91 00
L_019B:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x15                        ; 3D 15 00
        ja      L_0196                          ; 77 F0
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1fd]        ; 2E FF A7 FD 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4e0], ax            ; A3 E0 04
        jmp     L_01E5                          ; EB 24
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4e4], ax            ; A3 E4 04
        jmp     L_01E5                          ; EB 11
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x4e6], ax            ; A3 E6 04
L_01E5:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0196                          ; EB A9
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_022C                          ; EB 2F
        in      ax, dx                          ; ED
        add     bp, bp                          ; 01 ED
        add     word ptr [bp - 0x69ff], dx      ; 01 96 01 96
        add     word ptr [bp - 0x69ff], dx      ; 01 96 01 96
        add     word ptr [bp - 0x69ff], dx      ; 01 96 01 96
        add     word ptr [bp - 0x51ff], dx      ; 01 96 01 AE
        add     word ptr [bp - 0x69ff], bp      ; 01 AE 01 96
        add     word ptr [bp - 0x69ff], dx      ; 01 96 01 96
        add     word ptr [bp - 0x2bff], dx      ; 01 96 01 D4
        add     sp, dx                          ; 01 D4
        add     word ptr [bp - 0x69ff], dx      ; 01 96 01 96
        add     cx, ax                          ; 01 C1
        add     cx, ax                          ; 01 C1
        add     cx, ax                          ; 01 C1
        add     cx, bp                          ; 01 E9
        push    -1                              ; 6A FF
L_022C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0238 -- offset 0x0238 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
; callers: sub_085F, sub_0B86, sub_0F99, sub_10AF
;----------------------------------------------------------------------
L_0238:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_0265                          ; 72 1C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 0xff                        ; 81 E6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 0x39e]  ; 8A 80 9E 03
        sub     ah, ah                          ; 2A E4
        jmp     L_0267                          ; EB 02
L_0265:
        sub     ax, ax                          ; 2B C0
L_0267:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0273 -- offset 0x0273 -- 44 instr
; Funcion mediana (44 instr, 0 calls).
; tags: medium
; callers: sub_0D7C, sub_10AF
;----------------------------------------------------------------------
L_0273:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_0297                          ; 7C 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2ee]            ; A1 EE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2f0]            ; A0 F0 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A BD 02 00 00 [FIXUP]
L_0297:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_02C1                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_02C1                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2f4]            ; A1 F4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2f6]            ; A0 F6 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A DD 02 00 00 [FIXUP]
L_02C1:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_02E1                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2e8]            ; A1 E8 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2ea]            ; A0 EA 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 07 03 00 00 [FIXUP]
L_02E1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02E7 -- offset 0x02E7 -- 308 instr
; Dispatcher: tabla de decisiones cmp+jcc (308 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0D7C, sub_10AF
; calls (intra): sub_05FB, sub_07A3, sub_085F
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.FREERESOURCE, KERNEL.GETMODULEHANDLE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE (+1 mas)
;----------------------------------------------------------------------
L_02E7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jle     L_030B                          ; 7E 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2f1]            ; A1 F1 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2f3]            ; A0 F3 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 31 03 00 00 [FIXUP]
L_030B:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0335                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0335                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2f7]            ; A1 F7 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2f9]            ; A0 F9 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 51 03 00 00 [FIXUP]
L_0335:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_0355                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2eb]            ; A1 EB 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2ed]            ; A0 ED 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
L_0355:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
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
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_07A3                          ; E8 28 04
        mov     word ptr [bp - 0xa], 0xa        ; C7 46 F6 0A 00
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, 0x17e                       ; BE 7E 01
        jmp     L_0439                          ; E9 A9 00
L_0390:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        cmp     byte ptr [bp - 0x19], al        ; 38 46 E7
        je      L_03A1                          ; 74 04
        add     byte ptr [bp - 5], 8            ; 80 46 FB 08
L_03A1:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        cmp     byte ptr [bp - 0x17], al        ; 38 46 E9
        je      L_03AD                          ; 74 04
        add     byte ptr [bp - 5], 0x10         ; 80 46 FB 10
L_03AD:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        cmp     byte ptr [bp - 0x18], al        ; 38 46 E8
        je      L_03B9                          ; 74 04
        add     byte ptr [bp - 5], 0x20         ; 80 46 FB 20
L_03B9:
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        je      L_03E6                          ; 74 27
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_03E6                          ; 74 14
        or      ax, ax                          ; 0B C0
        jle     L_03DA                          ; 7E 04
        mov     cl, 6                           ; B1 06
        jmp     L_03E1                          ; EB 07
L_03DA:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        mov     cl, 7                           ; B1 07
L_03E1:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_03E6:
        cmp     byte ptr [bp - 0x15], 0         ; 80 7E EB 00
        je      L_040C                          ; 74 20
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x15]        ; 8A 46 EB
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_040C                          ; 74 0D
        or      ax, ax                          ; 0B C0
        jg      L_0405                          ; 7F 02
        neg     ax                              ; F7 D8
L_0405:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_040C:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        cwde                                    ; 98
        xor     ax, cx                          ; 33 C1
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_0433                          ; 73 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0433:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 8                           ; 83 C6 08
L_0439:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0444                          ; 7D 03
        jmp     L_0390                          ; E9 4C FF
L_0444:
        mov     ax, 0x1de                       ; B8 DE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_047F                          ; 75 03
        jmp     L_0532                          ; E9 B3 00
L_047F:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_0496                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0535                          ; E9 9F 00
L_0496:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0x84          ; 26 C7 07 84 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x17e                       ; 05 7E 01
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_05FB                          ; E8 2D 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        or      al, al                          ; 0A C0
        je      L_04E5                          ; 74 05
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
L_04E5:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_04FC                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
L_04FC:
        cmp     byte ptr [0x2ea], 0             ; 80 3E EA 02 00
        je      L_0511                          ; 74 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
L_0511:
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bp - 0x13]            ; F6 6E ED
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
L_0532:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_0535:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5e                        ; 83 EC 5E
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_055E                          ; 75 06
L_0558:
        mov     ax, 1                           ; B8 01 00
        jmp     L_05F0                          ; E9 92 00
L_055E:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0589                          ; 74 23
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0589                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        call    L_085F                          ; E8 EB 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_0558                          ; 74 DE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x17e                       ; 05 7E 01
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        jmp     L_05A0                          ; EB 17
L_0589:
        mov     word ptr [bp - 0x3e], 0x17e     ; C7 46 C2 7E 01
        mov     word ptr [bp - 6], 0xa          ; C7 46 FA 0A 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
L_0598:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x3c], ax        ; 39 46 C4
        jge     L_05ED                          ; 7D 4D
L_05A0:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_05FB                          ; E8 4C 00
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_05FB                          ; E8 3D 00
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        je      L_05ED                          ; 74 11
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_05ED                          ; 75 09
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        add     word ptr [bp - 0x3e], 8         ; 83 46 C2 08
        jmp     L_0598                          ; EB AB
L_05ED:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
L_05F0:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05FB -- offset 0x05FB -- 132 instr
; Funcion compleja: 132 instrucciones, 1 llamadas, 3 branches.
; tags: calls_kernel, complex
; callers: sub_02E7
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_05FB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, di                          ; 8B C7
        or      ax, si                          ; 0B C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [si + 1]                    ; 8D 44 01
        or      ax, di                          ; 0B C7
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bx + 7]               ; F6 6F 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_0648                          ; 74 13
        cmp     ax, 2                           ; 3D 02 00
        jne     L_063D                          ; 75 03
        jmp     L_0717                          ; E9 DA 00
L_063D:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0645                          ; 75 03
        jmp     L_06C6                          ; E9 81 00
L_0645:
        jmp     L_079B                          ; E9 53 01
L_0648:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, si                          ; 8B DE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x1ce]       ; 8B 87 CE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 82 00 00 00 [FIXUP]
        jmp     L_079B                          ; E9 D5 00
L_06C6:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_079B                          ; E9 84 00
L_0717:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], 7         ; 26 C7 47 02 07 00
        mov     word ptr es:[bx + 4], 2         ; 26 C7 47 04 02 00
        mov     word ptr es:[bx + 8], 3         ; 26 C7 47 08 03 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        mov     byte ptr es:[bx + 0x13], 0x20   ; 26 C6 47 13 20
        mov     byte ptr es:[bx + 0x14], 0x7e   ; 26 C6 47 14 7E
        mov     byte ptr es:[bx + 0x15], 0x2e   ; 26 C6 47 15 2E
        mov     byte ptr es:[bx + 0x16], 0x20   ; 26 C6 47 16 20
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x48   ; 26 C7 47 1B 48 00
        mov     word ptr es:[bx + 0x1d], 0x78   ; 26 C7 47 1D 78 00
L_079B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07A3 -- offset 0x07A3 -- 69 instr
; Funcion mediana (69 instr, 1 calls).
; tags: medium
; callers: sub_02E7
; calls (intra): sub_085F
;----------------------------------------------------------------------
L_07A3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf                         ; 24 0F
        cmp     al, 2                           ; 3C 02
        jne     L_07B8                          ; 75 04
        mov     al, 1                           ; B0 01
        jmp     L_07BA                          ; EB 02
L_07B8:
        sub     al, al                          ; 2A C0
L_07BA:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 1], al        ; 26 88 47 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        or      al, al                          ; 0A C0
        jne     L_07E1                          ; 75 05
        mov     byte ptr es:[bx + 3], 3         ; 26 C6 47 03 03
L_07E1:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jle     L_07F2                          ; 7E 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, si                          ; 8B C6
        jmp     L_07FD                          ; EB 0B
L_07F2:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
        les     bx, ptr [bp + 4]                ; C4 5E 04
L_07FD:
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 2]        ; 26 8A 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 7], al        ; 26 88 47 07
        or      al, al                          ; 0A C0
        jne     L_082C                          ; 75 05
        mov     byte ptr es:[bx + 7], 4         ; 26 C6 47 07 04
L_082C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 6], al        ; 26 88 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_085F                          ; E8 17 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 2], al        ; 26 88 47 02
        inc     al                              ; FE C0
        jne     L_0858                          ; 75 05
        mov     byte ptr es:[bx + 2], 1         ; 26 C6 47 02 01
L_0858:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_085F -- offset 0x085F -- 225 instr
; Dispatcher: tabla de decisiones cmp+jcc (225 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_02E7, sub_07A3
; calls (intra): sub_0238, sub_0AB0, sub_0B86, sub_0D7C
; calls (inter): KERNEL.GLOBALFREE, KERNEL.LSTRCMP
;----------------------------------------------------------------------
L_085F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_086A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x1ce]       ; 8B 87 CE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 4E 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0889                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0895                          ; EB 0C
L_0889:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        jl      L_086A                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
L_0895:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_08BA                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_08BF                          ; EB 05
L_08BA:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        neg     ax                              ; F7 D8
L_08BF:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0B86                          ; E8 B4 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_08EA                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_08EA                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0AA3                          ; E9 B9 01
L_08EA:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_08FA                          ; 75 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_093E                          ; 74 44
L_08FA:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_093E                          ; EB 3D
L_0901:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0944                          ; 7E 3D
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D7C                          ; E8 50 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 0x18]            ; FF 46 18
        dec     word ptr [bp + 0x16]            ; FF 4E 16
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
L_093E:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_0901                          ; 7C BD
L_0944:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_095D                          ; 7E 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
L_095D:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D7C                          ; E8 F5 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_09A5                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_09A5:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jg      L_09B7                          ; 7F 0C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_09B4                          ; 75 03
        jmp     L_0A9D                          ; E9 E9 00
L_09B4:
        jmp     L_0A95                          ; E9 DE 00
L_09B7:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 0x10   ; 26 80 4F 26 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0AB0                          ; E8 E3 00
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_09DD                          ; 75 03
        jmp     L_0A9D                          ; E9 C0 00
L_09DD:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     di, word ptr es:[bx + 0x10]     ; 26 8B 7F 10
        sub     si, si                          ; 2B F6
L_09E6:
        cmp     word ptr [bp + 0x16], si        ; 39 76 16
        jg      L_09EE                          ; 7F 03
        jmp     L_0A8E                          ; E9 A0 00
L_09EE:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_0A15                          ; 74 19
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 2A F8
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0x20                        ; 3C 20
        ja      L_0A18                          ; 77 03
L_0A15:
        inc     si                              ; 46
        jmp     L_09E6                          ; EB CE
L_0A18:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D7C                          ; E8 38 03
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D7C                          ; E8 0C 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0AB0                          ; E8 27 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_0A15                          ; EB 87
L_0A8E:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x10], di     ; 26 89 7F 10
L_0A95:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0A9D:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
L_0AA3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0AB0 -- offset 0x0AB0 -- 74 instr
; Funcion mediana (74 instr, 5 calls).
; tags: calls_gdi, calls_kernel, medium
; callers: sub_085F
; calls (intra): sub_0CDB
; calls (inter): GDI.INSERTPQ, GDI.SIZEPQ, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_0AB0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_0CDB                          ; E8 15 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_0AD1                          ; 75 05
L_0ACC:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B80                          ; E9 AF 00
L_0AD1:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALLOCK           ; 9A 22 0C 00 00 [FIXUP]
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_106                  ; 9A AA 04 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A 6D 0B 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0B71                          ; 75 3E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0B5F                          ; 75 19
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A 79 0B 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        jmp     L_0ACC                          ; E9 6D FF
L_0B5F:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
L_0B71:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A CA 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_0B80:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B86 -- offset 0x0B86 -- 131 instr
; Dispatcher: tabla de decisiones cmp+jcc (131 instr).
; tags: calls_kernel, dispatcher
; callers: sub_085F, sub_10AF
; calls (intra): sub_0238
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_0B86:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_0BA4                          ; 75 0A
        mov     byte ptr [bp - 0xc], 0x7e       ; C6 46 F4 7E
        mov     byte ptr [bp - 2], 0x2e         ; C6 46 FE 2E
        jmp     L_0BB9                          ; EB 15
L_0BA4:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 2], al           ; 88 46 FE
L_0BB9:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_0BCA:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0BE8                          ; 7D 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_0BE8                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0BF9                          ; 72 11
L_0BE8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_0C01                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_0CD4                          ; E9 DB 00
L_0BF9:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0BCA                          ; EB C9
L_0C01:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 4C 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0C1E                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0CD4                          ; E9 B6 00
L_0C1E:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0CBB                          ; EB 7C
L_0C3F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_0C62                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0C6E                          ; 72 10
        cmp     al, 0xa0                        ; 3C A0
        jae     L_0C6E                          ; 73 0C
L_0C62:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_0C6E:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0CB5                          ; 72 3A
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 AF F5
        or      al, al                          ; 0A C0
        je      L_0C9B                          ; 74 0E
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 A1 F5
        cmp     al, 0x20                        ; 3C 20
        jb      L_0CB5                          ; 72 1A
L_0C9B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 8C F5
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_0CB5:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0CBB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0CC6                          ; 7D 03
        jmp     L_0C3F                          ; E9 79 FF
L_0CC6:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 26 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
L_0CD4:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CDB -- offset 0x0CDB -- 66 instr
; Funcion mediana (66 instr, 2 calls).
; tags: calls_kernel, far, medium
; callers: sub_0AB0
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALREALLOC
;----------------------------------------------------------------------
L_0CDB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x44]     ; 26 8B 77 44
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0xa                         ; 05 0A 00
        add     word ptr es:[bx + 0x44], ax     ; 26 01 47 44
        mov     ax, word ptr es:[bx + 0x44]     ; 26 8B 47 44
        cmp     ax, word ptr es:[bx + 0x42]     ; 26 3B 47 42
        jl      L_0D2D                          ; 7C 2F
        add     byte ptr es:[bx + 0x43], 2      ; 26 80 47 43 02
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D2D                          ; 75 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x44], si     ; 26 89 77 44
        sub     word ptr es:[bx + 0x42], 0x200  ; 26 81 6F 42 00 02
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0D2F                          ; EB 02
L_0D2D:
        mov     ax, si                          ; 8B C6
L_0D2F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x40], ax     ; 26 89 47 40
        or      ax, ax                          ; 0B C0
        jne     L_0D5F                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0D71                          ; EB 12
L_0D5F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x42], 0x200  ; 26 C7 47 42 00 02
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        mov     ax, 1                           ; B8 01 00
L_0D71:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D7C -- offset 0x0D7C -- 196 instr
; Dispatcher: tabla de decisiones cmp+jcc (196 instr).
; tags: dispatcher
; callers: sub_085F
; calls (intra): sub_0273, sub_02E7, sub_0F99, sub_1030, sub_10AF
;----------------------------------------------------------------------
L_0D7C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jle     L_0D8E                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D90                          ; EB 02
L_0D8E:
        sub     ax, ax                          ; 2B C0
L_0D90:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0DCA                          ; 74 33
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cx, word ptr [0x1e4]            ; 8B 0E E4 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x38]     ; 26 8A 47 38
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 7C 0F 00 00 [FIXUP]
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0273                          ; E8 AB F4
        jmp     L_0DD2                          ; EB 08
L_0DCA:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
L_0DD2:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0E65                          ; 74 7E
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_0E1A:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0E75                          ; 7D 53
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        mov     byte ptr [bp - 0x1c], al        ; 88 46 E4
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0E4A                          ; 72 18
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F99                          ; E8 51 01
        jmp     L_0E5D                          ; EB 13
L_0E4A:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_0E5D:
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0E1A                          ; EB B5
L_0E65:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0E75:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0E90                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0E9D                          ; 75 0D
L_0E90:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0E9D                          ; 75 03
        jmp     L_0F2F                          ; E9 92 00
L_0E9D:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_0F17                          ; EB 60
L_0EB7:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0EED                          ; 74 26
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_0EED                          ; 75 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_0EED                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_0EED:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F11                          ; 74 18
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_10AF                          ; E8 9E 01
L_0F11:
        dec     word ptr [bp + 0x10]            ; FF 4E 10
        inc     word ptr [bp + 0x12]            ; FF 46 12
L_0F17:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0EB7                          ; 75 9A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0F49                          ; 75 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_0F49                          ; EB 1A
L_0F2F:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F49                          ; 74 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1030                          ; E8 E7 00
L_0F49:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F86                          ; 74 37
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_02E7                          ; E8 89 F3
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x39]     ; 26 8B 47 39
        mov     cx, word ptr [0x1e4]            ; 8B 0E E4 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 62 10 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        jmp     L_0F92                          ; EB 0C
L_0F86:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
L_0F92:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F99 -- offset 0x0F99 -- 73 instr
; Dispatcher: tabla de decisiones cmp+jcc (73 instr).
; tags: dispatcher, far
; callers: sub_0D7C
; calls (intra): sub_0238
;----------------------------------------------------------------------
L_0F99:
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
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 7E F2
        or      ax, ax                          ; 0B C0
        je      L_100B                          ; 74 4D
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 6E F2
        cmp     ax, 0x20                        ; 3D 20 00
        jge     L_100B                          ; 7D 3C
        mov     si, 0x45e                       ; BE 5E 04
        mov     di, 0x4be                       ; BF BE 04
L_0FD5:
        cmp     si, di                          ; 3B F7
        jae     L_0FE0                          ; 73 07
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bp + 0xc], al         ; 38 46 0C
        jne     L_0FEB                          ; 75 0B
L_0FE0:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0FF0                          ; 74 0A
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        jmp     L_0FF3                          ; EB 08
L_0FEB:
        add     si, 3                           ; 83 C6 03
        jmp     L_0FD5                          ; EB E5
L_0FF0:
        mov     al, byte ptr [si + 1]           ; 8A 44 01
L_0FF3:
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x40], 0xc    ; 26 83 7F 40 0C
        jle     L_1006                          ; 7E 04
        shl     ax, 1                           ; D1 E0
        jmp     L_1023                          ; EB 1D
L_1006:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1023                          ; EB 18
L_100B:
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 1F F2
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp + 8]                ; C4 76 08
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_1023:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1030 -- offset 0x1030 -- 63 instr
; Funcion mediana (63 instr, 1 calls).
; tags: far, medium
; callers: sub_0D7C, sub_10AF
; calls (intra): sub_10AF
;----------------------------------------------------------------------
L_1030:
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
        sub     di, di                          ; 2B FF
        sub     si, si                          ; 2B F6
        jmp     L_1083                          ; EB 3E
L_1045:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx + si], 0xa0     ; 26 80 38 A0
        jb      L_1082                          ; 72 34
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, di                          ; 03 C7
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 9E 10 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_10AF                          ; E8 30 00
        mov     di, si                          ; 8B FE
        inc     di                              ; 47
L_1082:
        inc     si                              ; 46
L_1083:
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jg      L_1045                          ; 7F BD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, di                          ; 03 C7
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 0A 11 00 00 [FIXUP]
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
; sub_10AF -- offset 0x10AF -- 273 instr
; Dispatcher: tabla de decisiones cmp+jcc (273 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0D7C, sub_1030
; calls (intra): sub_0238, sub_0273, sub_02E7, sub_0B86, sub_1030, sub_1378 (+1 mas)
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------
L_10AF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jae     L_10BF                          ; 73 03
        jmp     L_1149                          ; E9 8A 00
L_10BF:
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 68 F1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, 0x20                        ; 3D 20 00
        jge     L_10FA                          ; 7D 22
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr [0x398], al            ; A2 98 03
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 51 F1
        mov     byte ptr [0x399], al            ; A2 99 03
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x396                       ; B8 96 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        jmp     L_1141                          ; EB 47
L_10FA:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 1E 11 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1e6                       ; B8 E6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 43 11 00 00 [FIXUP]
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0238                          ; E8 08 F1
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 2]                    ; 8D 46 FE
L_113C:
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_1141:
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 93 02 00 00 [FIXUP]
        jmp     L_116E                          ; EB 25
L_1149:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        jmp     L_113C                          ; EB E8
L_1154:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1e8                       ; B8 E8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 9D 11 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [bp + 4], ax           ; 29 46 04
L_116E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_1154                          ; 7D DE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_11C0                          ; 7E 44
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_11C0                          ; 74 3E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x2e0], ax            ; A3 E0 02
        mov     byte ptr [0x2df], 0x4c          ; C6 06 DF 02 4C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x2de                       ; B8 DE 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A B3 11 00 00 [FIXUP]
        jmp     L_11BA                          ; EB 17
L_11A3:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1ea                       ; B8 EA 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A EE 13 00 00 [FIXUP]
        dec     word ptr [bp + 4]               ; FF 4E 04
L_11BA:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_11A3                          ; 75 E3
L_11C0:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_13B2                          ; E8 CA 01
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x26], 2      ; 26 F6 47 26 02
        jne     L_11FB                          ; 75 03
        jmp     L_1331                          ; E9 36 01
L_11FB:
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        je      L_1204                          ; 74 03
        jmp     L_1331                          ; E9 2D 01
L_1204:
        mov     ax, word ptr es:[bx + 0x3c]     ; 26 8B 47 3C
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_120B:
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0B86                          ; E8 69 F9
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_1230                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_1230                          ; 75 03
        jmp     L_1346                          ; E9 16 01
L_1230:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jne     L_1240                          ; 75 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_1245                          ; 74 05
L_1240:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_1245:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_109                  ; 9A 72 12 00 00 [FIXUP]
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0273                          ; E8 0E F0
L_1265:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_1378                          ; E8 F6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cmp     word ptr es:[bx + 0x3c], 0x3c0  ; 26 81 7F 3C C0 03
        jg      L_130C                          ; 7F 71
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_12B1                          ; 7C 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1030                          ; E8 7F FD
L_12B1:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp + 0x1e], ax        ; 39 46 1E
        jge     L_12BC                          ; 7D 03
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_12BC:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        je      L_130C                          ; 74 03
        jmp     L_1265                          ; E9 59 FF
L_130C:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_02E7                          ; E8 CC EF
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_134A                          ; 75 23
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        and     byte ptr es:[bx + 0x26], 0xfd   ; 26 80 67 26 FD
        jmp     L_1352                          ; EB 21
L_1331:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1346                          ; 74 03
        jmp     L_120B                          ; E9 C5 FE
L_1346:
        sub     ax, ax                          ; 2B C0
        jmp     L_136D                          ; EB 23
L_134A:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 2      ; 26 80 4F 26 02
L_1352:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr es:[bx + 0x46], ax     ; 26 89 47 46
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_136A                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALFREE           ; 9A 99 0A 00 00 [FIXUP]
L_136A:
        mov     ax, 1                           ; B8 01 00
L_136D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1378 -- offset 0x1378 -- 26 instr
; Dispatcher: tabla de decisiones cmp+jcc (26 instr).
; tags: dispatcher
; callers: sub_10AF
;----------------------------------------------------------------------
L_1378:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_1390                          ; EB 0D
L_1383:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_13A4                          ; 74 18
        inc     si                              ; 46
        inc     word ptr [bp + 6]               ; FF 46 06
L_1390:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_1383                          ; 7F EE
        jmp     L_13A4                          ; EB 0D
L_1397:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_13A9                          ; 75 06
        inc     si                              ; 46
L_13A4:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_1397                          ; 7F EE
L_13A9:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13B2 -- offset 0x13B2 -- 63 instr
; Dispatcher: tabla de decisiones cmp+jcc (63 instr).
; tags: dispatcher
; callers: sub_10AF
;----------------------------------------------------------------------
L_13B2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_13D0                          ; 75 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_13D0:
        cmp     word ptr [bp - 2], 0xa          ; 83 7E FE 0A
        jge     L_13FD                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 7      ; 26 83 7F 38 07
        je      L_144F                          ; 74 6F
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2fd]            ; A1 FD 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2ff]            ; A0 FF 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 1B 14 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 7      ; 26 C7 47 38 07 00
        jmp     L_144F                          ; EB 52
L_13FD:
        cmp     word ptr [bp - 2], 0xc          ; 83 7E FE 0C
        jge     L_142A                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xa    ; 26 83 7F 38 0A
        je      L_144F                          ; 74 42
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x303]            ; A1 03 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x305]            ; A0 05 03
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 42 14 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xa    ; 26 C7 47 38 0A 00
        jmp     L_144F                          ; EB 25
L_142A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_144F                          ; 74 1B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x300]            ; A1 00 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x302]            ; A0 02 03
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A B5 0D 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
L_144F:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

EPSON_TEXT ENDS

        END
