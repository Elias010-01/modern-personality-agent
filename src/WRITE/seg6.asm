; AUTO-GENERATED from original WRITE segment 6
; segment_size=2843 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 21 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [0x784]            ; A1 84 07
        mov     dx, word ptr [0x786]            ; 8B 16 86 07
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        jne     L_0052                          ; 75 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0052                          ; 75 16
        mov     ax, word ptr [0x788]            ; A1 88 07
        mov     dx, word ptr [0x78a]            ; 8B 16 8A 07
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jne     L_0052                          ; 75 0A
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_0052                          ; 75 05
L_004D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0102                          ; E9 B0 00
L_0052:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETDC                  ; 9A 3B 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_004D                          ; 74 EC
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.GETNEARESTCOLOR         ; 9A 7E 00 00 00 [FIXUP]
        mov     word ptr [0x784], ax            ; A3 84 07
        mov     word ptr [0x786], dx            ; 89 16 86 07
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.GETNEARESTCOLOR         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x788], ax            ; A3 88 07
        mov     word ptr [0x78a], dx            ; 89 16 8A 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.RELEASEDC              ; 9A D2 01 00 00 [FIXUP]
        push    word ptr [0x786]                ; FF 36 86 07
        push    word ptr [0x784]                ; FF 36 84 07
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x78c], ax            ; A3 8C 07
        or      ax, ax                          ; 0B C0
        jne     L_00BF                          ; 75 17
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x78c], ax            ; A3 8C 07
        mov     word ptr [0x784], 0xffff        ; C7 06 84 07 FF FF
        mov     word ptr [0x786], 0xff          ; C7 06 86 07 FF 00
L_00BF:
        cmp     word ptr [0x786], 0xff          ; 81 3E 86 07 FF 00
        jne     L_00DC                          ; 75 15
        cmp     word ptr [0x784], -1            ; 83 3E 84 07 FF
        jne     L_00DC                          ; 75 0E
        mov     word ptr [0x78e], 0x62          ; C7 06 8E 07 62 00
        mov     word ptr [0x790], 0xff          ; C7 06 90 07 FF 00
        jmp     L_00FF                          ; EB 23
L_00DC:
        mov     ax, word ptr [0x784]            ; A1 84 07
        or      ax, word ptr [0x786]            ; 0B 06 86 07
        jne     L_00F3                          ; 75 0E
        mov     word ptr [0x78e], 0x42          ; C7 06 8E 07 42 00
        mov     word ptr [0x790], 0             ; C7 06 90 07 00 00
        jmp     L_00FF                          ; EB 0C
L_00F3:
        mov     word ptr [0x78e], 0x21          ; C7 06 8E 07 21 00
        mov     word ptr [0x790], 0xf0          ; C7 06 90 07 F0 00
L_00FF:
        mov     ax, 1                           ; B8 01 00
L_0102:
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
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xe06], ax            ; A3 06 0E
        or      ax, ax                          ; 0B C0
        jne     L_0136                          ; 75 05
L_0131:
        sub     ax, ax                          ; 2B C0
        jmp     L_02E6                          ; E9 B0 01
L_0136:
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0131                          ; 74 EB
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 5B 01 00 00 [FIXUP]
        mov     word ptr [0xe9a], ax            ; A3 9A 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x58                        ; B8 58 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 6A 01 00 00 [FIXUP]
        mov     word ptr [0xe0e], ax            ; A3 0E 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 0x5a                        ; B8 5A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xe16], ax            ; A3 16 0E
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x237                       ; B8 37 02
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 92 01 00 00 [FIXUP]
        mov     word ptr [0x1212], ax           ; A3 12 12
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x237                       ; B8 37 02
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A AF 01 00 00 [FIXUP]
        mov     word ptr [0x121a], ax           ; A3 1A 12
        mov     word ptr [bp - 4], 0x2370       ; C7 46 FC 70 23
        mov     ax, word ptr [0x1212]           ; A1 12 12
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        call    far _entry_94                   ; 9A E3 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 4                           ; B9 04 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1020], ax           ; A3 20 10
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x120                       ; B8 20 01
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A F7 01 00 00 [FIXUP]
        mov     word ptr [0x1112], ax           ; A3 12 11
        mov     ax, 0x7bc0                      ; B8 C0 7B
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 3C 02 00 00 [FIXUP]
        mov     word ptr [0x13b8], ax           ; A3 B8 13
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 0E 02 00 00 [FIXUP]
        mov     cx, 2                           ; B9 02 00
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far USER.GETSYSTEMMETRICS       ; 9A 19 02 00 00 [FIXUP]
        mov     cx, 0x10                        ; B9 10 00
        push    cx                              ; 51
        mov     di, ax                          ; 8B F8
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [0x13b8]           ; 8B 0E B8 13
        sub     cx, ax                          ; 2B C8
        add     cx, di                          ; 03 CF
        sub     cx, si                          ; 2B CE
        add     cx, word ptr [0x1112]           ; 03 0E 12 11
        mov     word ptr [0x12ae], cx           ; 89 0E AE 12
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 50 02 00 00 [FIXUP]
        mov     word ptr [0x1286], ax           ; A3 86 12
        mov     ax, 0x708                       ; B8 08 07
        push    ax                              ; 50
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 64 02 00 00 [FIXUP]
        mov     word ptr [0x13d8], ax           ; A3 D8 13
        mov     ax, 0x15cc                      ; B8 CC 15
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 78 02 00 00 [FIXUP]
        mov     word ptr [0x1138], ax           ; A3 38 11
        mov     ax, 0x4e20                      ; B8 20 4E
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 8C 02 00 00 [FIXUP]
        mov     word ptr [0x13a4], ax           ; A3 A4 13
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A A0 02 00 00 [FIXUP]
        mov     word ptr [0x1c06], ax           ; A3 06 1C
        mov     ax, 0x140                       ; B8 40 01
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A B4 02 00 00 [FIXUP]
        mov     word ptr [0xe08], ax            ; A3 08 0E
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A C8 02 00 00 [FIXUP]
        mov     word ptr [0xa56], ax            ; A3 56 0A
        mov     ax, 0xf0                        ; B8 F0 00
        push    ax                              ; 50
        push    word ptr [0xe16]                ; FF 36 16 0E
        mov     ax, 0x5a0                       ; B8 A0 05
        push    ax                              ; 50
        call    far _entry_94                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1068], ax           ; A3 68 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02F1                          ; E8 1D 00
        or      ax, ax                          ; 0B C0
        jne     L_02DB                          ; 75 03
        jmp     L_0131                          ; E9 56 FE
L_02DB:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0703                          ; E8 20 04
        mov     ax, 1                           ; B8 01 00
L_02E6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02F1 -- offset 0x02F1 -- 217 instr
; Dispatcher: tabla de decisiones cmp+jcc (217 instr).
; tags: calls_kernel, dispatcher
; calls (intra): sub_054B
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_02F1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x212                       ; 81 EC 12 02
        mov     byte ptr [bp - 0x10a], 0        ; C6 86 F6 FE 00
        cmp     word ptr [0x6e], 0              ; 83 3E 6E 00 00
        je      L_030E                          ; 74 03
        jmp     L_03B9                          ; E9 AB 00
L_030E:
        cmp     word ptr [0x1bc8], 0            ; 83 3E C8 1B 00
        jne     L_0318                          ; 75 03
        jmp     L_03B9                          ; E9 A1 00
L_0318:
        cmp     word ptr [0xf94], 0             ; 83 3E 94 0F 00
        jne     L_0322                          ; 75 03
        jmp     L_03B9                          ; E9 97 00
L_0322:
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ax                              ; 50
        lea     ax, [bp - 0x20c]                ; 8D 86 F4 FD
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_054B                          ; E8 E2 01
        mov     word ptr [bp - 0x20e], ax       ; 89 86 F2 FD
        mov     word ptr [bp - 0x210], 0        ; C7 86 F0 FD 00 00
        mov     ax, word ptr [bp - 0x20c]       ; 8B 86 F4 FD
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
L_037B:
        mov     ax, word ptr [bp - 0x20e]       ; 8B 86 F2 FD
        cmp     word ptr [bp - 0x210], ax       ; 39 86 F0 FD
        jl      L_0388                          ; 7C 03
        jmp     L_0456                          ; E9 CE 00
L_0388:
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03A6                          ; 75 0B
        mov     ax, word ptr [bp - 0x108]       ; 8B 86 F8 FE
        mov     word ptr [bp - 0x20c], ax       ; 89 86 F4 FD
        jmp     L_0490                          ; E9 EA 00
L_03A6:
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far _entry_61                   ; 9A 96 04 00 00 [FIXUP]
        add     word ptr [bp - 0x108], ax       ; 01 86 F8 FE
        inc     word ptr [bp - 0x210]           ; FF 86 F0 FD
        jmp     L_037B                          ; EB C2
L_03B9:
        mov     ax, 0x120                       ; B8 20 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x128                       ; B8 28 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 3A 04 00 00 [FIXUP]
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ax                              ; 50
        mov     ax, 0x2c                        ; B8 2C 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A 07 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
        or      ax, ax                          ; 0B C0
        je      L_0419                          ; 74 2B
        mov     word ptr [bp - 0x212], ax       ; 89 86 EE FD
        jmp     L_0402                          ; EB 0E
L_03F4:
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        cmp     word ptr [bp - 0x212], ax       ; 39 86 EE FD
        jbe     L_040B                          ; 76 0D
        dec     word ptr [bp - 0x212]           ; FF 8E EE FD
L_0402:
        mov     bx, word ptr [bp - 0x212]       ; 8B 9E EE FD
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_03F4                          ; 74 E9
L_040B:
        mov     bx, word ptr [bp - 0x212]       ; 8B 9E EE FD
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp - 0x108]       ; 8B 86 F8 FE
        inc     ax                              ; 40
        jmp     L_0481                          ; EB 68
L_0419:
        cmp     byte ptr [bp - 0x20a], 0        ; 80 BE F6 FD 00
        jne     L_0456                          ; 75 36
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 72 04 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x20a], 0        ; 80 BE F6 FD 00
        jne     L_0456                          ; 75 11
L_0445:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xf94], ax            ; A3 94 0F
        mov     word ptr [0x1010], ax           ; A3 10 10
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
L_0450:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0542                          ; E9 EC 00
L_0456:
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10a]                ; 8D 86 F6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 52 03 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x20a], 0        ; 80 BE F6 FD 00
        je      L_0445                          ; 74 C8
        lea     ax, [bp - 0x106]                ; 8D 86 FA FE
L_0481:
        push    ax                              ; 50
        lea     ax, [bp - 0x20c]                ; 8D 86 F4 FD
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_054B                          ; E8 BB 00
L_0490:
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ax                              ; 50
        call    far _entry_61                   ; 9A C6 04 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far _entry_64                   ; 9A D5 04 00 00 [FIXUP]
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
        inc     ax                              ; 40
        je      L_0520                          ; 74 71
        lea     ax, [bp - 0x20a]                ; 8D 86 F6 FD
        push    ax                              ; 50
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_62                   ; 9A EC 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_61                   ; 9A F5 04 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 04 05 00 00 [FIXUP]
        mov     word ptr [0x1010], ax           ; A3 10 10
        inc     ax                              ; 40
        je      L_0517                          ; 74 38
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [0x1010]           ; 8B 1E 10 10
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_62                   ; 9A 3B 05 00 00 [FIXUP]
        push    word ptr [bp - 0x20c]           ; FF B6 F4 FD
        call    far _entry_61                   ; 9A EE 05 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xf94], ax            ; A3 94 0F
        inc     ax                              ; 40
        jne     L_052D                          ; 75 1F
        push    word ptr [0x1010]               ; FF 36 10 10
        call    far KERNEL.LOCALFREE            ; 9A 1C 05 00 00 [FIXUP]
L_0517:
        push    word ptr [0x1bc8]               ; FF 36 C8 1B
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0520:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xf94], ax            ; A3 94 0F
        mov     word ptr [0x1010], ax           ; A3 10 10
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
        jmp     L_0542                          ; EB 15
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_052D -- offset 0x052D -- 12 instr
; Funcion sin clasificar definitiva (12 instr).
; tags: far, wrapper
;----------------------------------------------------------------------
L_052D:
        push    word ptr [bp - 0x20c]           ; FF B6 F4 FD
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0450                          ; E9 0E FF
L_0542:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_054B -- offset 0x054B -- 107 instr
; Dispatcher: tabla de decisiones cmp+jcc (107 instr).
; tags: dispatcher, far
; callers: sub_02F1, sub_03AB
;----------------------------------------------------------------------
L_054B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        jmp     L_0565                          ; EB 01
L_0564:
        inc     si                              ; 46
L_0565:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_0564                          ; 74 FA
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], si               ; 89 37
        jmp     L_057C                          ; EB 0B
L_0571:
        cmp     byte ptr [si], 0x2c             ; 80 3C 2C
        je      L_0581                          ; 74 0B
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_0581                          ; 74 06
        inc     si                              ; 46
L_057C:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        jne     L_0571                          ; 75 F0
L_0581:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_0594                          ; 75 0E
L_0586:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], 0x1114           ; C7 07 14 11
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_05FD                          ; EB 69
L_0594:
        cmp     byte ptr [si], 0x2c             ; 80 3C 2C
        jne     L_05AE                          ; 75 15
        mov     byte ptr [si], 0                ; C6 04 00
L_059C:
        inc     si                              ; 46
L_059D:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_059C                          ; 74 FA
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_0586                          ; 74 DF
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx], si               ; 89 37
        jmp     L_05F8                          ; EB 4A
L_05AE:
        mov     byte ptr [si], 0                ; C6 04 00
        jmp     L_05B8                          ; EB 05
L_05B3:
        cmp     byte ptr [si], 0                ; 80 3C 00
        je      L_05BE                          ; 74 06
L_05B8:
        inc     si                              ; 46
        cmp     byte ptr [si], 0x2c             ; 80 3C 2C
        jne     L_05B3                          ; 75 F5
L_05BE:
        cmp     byte ptr [si], 0x2c             ; 80 3C 2C
        jne     L_059D                          ; 75 DA
        jmp     L_059C                          ; EB D7
L_05C5:
        mov     di, si                          ; 8B FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_05D7                          ; EB 0B
L_05CC:
        cmp     byte ptr [di], 0x2c             ; 80 3D 2C
        je      L_05DC                          ; 74 0B
        cmp     byte ptr [di], 0                ; 80 3D 00
        je      L_05FD                          ; 74 27
        inc     di                              ; 47
L_05D7:
        cmp     byte ptr [di], 0x20             ; 80 3D 20
        jne     L_05CC                          ; 75 F0
L_05DC:
        mov     byte ptr [di], 0                ; C6 05 00
        inc     di                              ; 47
        mov     si, di                          ; 8B F7
        jmp     L_05E5                          ; EB 01
L_05E4:
        inc     di                              ; 47
L_05E5:
        cmp     byte ptr [di], 0x20             ; 80 3D 20
        je      L_05E4                          ; 74 FA
        push    di                              ; 57
        push    si                              ; 56
        push    di                              ; 57
        call    far _entry_61                   ; 9A 18 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 32 03 00 00 [FIXUP]
L_05F8:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_05C5                          ; 75 C8
L_05FD:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_062A                          ; 74 19
        push    si                              ; 56
        mov     ax, 0xb2                        ; B8 B2 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_66                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_062A                          ; 74 03
        mov     byte ptr [si], 0                ; C6 04 00
L_062A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_063A -- offset 0x063A -- 76 instr
; Funcion mediana (76 instr, 3 calls).
; tags: calls_gdi, far, medium
; callers: sub_0703
; calls (inter): GDI.DPTOLP, GDI.GETDEVICECAPS, GDI.SETMAPMODE
;----------------------------------------------------------------------
L_063A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        jne     L_0651                          ; 75 03
        jmp     L_06D1                          ; E9 80 00
L_0651:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 6D 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0x10ee], ax           ; A3 EE 10
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 4C 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x10fe], ax           ; A3 FE 10
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETMAPMODE              ; 9A CB 06 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0x79e]                ; FF 36 9E 07
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far GDI.DPTOLP                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [0xa5a], ax            ; A3 5A 0A
        or      ax, ax                          ; 0B C0
        jge     L_06B0                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [0xa5a], ax            ; A3 5A 0A
L_06B0:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [0xa6c], ax            ; A3 6C 0A
        or      ax, ax                          ; 0B C0
        jge     L_06C2                          ; 7D 05
        neg     ax                              ; F7 D8
        mov     word ptr [0xa6c], ax            ; A3 6C 0A
L_06C2:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETMAPMODE              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_06E6                          ; EB 15
L_06D1:
        mov     ax, 0x5a0                       ; B8 A0 05
        mov     word ptr [0xa6c], ax            ; A3 6C 0A
        mov     word ptr [0xa5a], ax            ; A3 5A 0A
        mov     ax, word ptr [0xe0e]            ; A1 0E 0E
        mov     word ptr [0x10ee], ax           ; A3 EE 10
        mov     ax, word ptr [0xe16]            ; A1 16 0E
        mov     word ptr [0x10fe], ax           ; A3 FE 10
L_06E6:
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        push    word ptr [0x10fe]               ; FF 36 FE 10
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        call    far _entry_94                   ; 9A 7E 01 00 00 [FIXUP]
        mov     word ptr [0x1bec], ax           ; A3 EC 1B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0703 -- offset 0x0703 -- 92 instr
; Dispatcher: tabla de decisiones cmp+jcc (92 instr).
; tags: calls_user, dispatcher, far
; calls (intra): sub_063A, sub_07F7
; calls (inter): USER.GETDC
;----------------------------------------------------------------------
L_0703:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_0780                          ; 74 63
        cmp     word ptr [0x1bc8], 0            ; 83 3E C8 1B 00
        je      L_0780                          ; 74 5C
        cmp     word ptr [0x1010], 0            ; 83 3E 10 10 00
        je      L_0780                          ; 74 55
        cmp     word ptr [0xf94], 0             ; 83 3E 94 0F 00
        je      L_0780                          ; 74 4E
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0740                          ; 74 08
        mov     ax, OFFSET GDI.CREATEDC         ; B8 FF FF [FIXUP]
        mov     dx, OFFSET GDI.CREATEDC         ; BA FF FF [FIXUP]
        jmp     L_0746                          ; EB 06
L_0740:
        mov     ax, OFFSET GDI.CREATEIC         ; B8 FF FF [FIXUP]
        mov     dx, OFFSET GDI.CREATEIC         ; BA FF FF [FIXUP]
L_0746:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     bx, word ptr [0x1010]           ; 8B 1E 10 10
        mov     ax, word ptr [bx]               ; 8B 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        mov     ax, word ptr [bx]               ; 8B 07
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        mov     ax, word ptr [bx]               ; 8B 07
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lcall   [bp - 8]                        ; FF 5E F8
        mov     word ptr [0x79e], ax            ; A3 9E 07
        or      ax, ax                          ; 0B C0
        je      L_077A                          ; 74 08
        mov     word ptr [0x31c], 1             ; C7 06 1C 03 01 00
        jmp     L_07B3                          ; EB 39
L_077A:
        mov     ax, word ptr [0x31c]            ; A1 1C 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0780:
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.GETDC                  ; 9A 56 00 00 00 [FIXUP]
        mov     word ptr [0x79e], ax            ; A3 9E 07
        mov     word ptr [0x31c], 0             ; C7 06 1C 03 00 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_07B3                          ; 74 1B
        mov     ax, word ptr [0x38]             ; A1 38 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [0x38], 0              ; C7 06 38 00 00 00
        mov     ax, 0x2022                      ; B8 22 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [0x38], ax             ; A3 38 00
L_07B3:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_063A                          ; E8 82 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_07F7                          ; E8 3A 00
        mov     word ptr [0x70], 0              ; C7 06 70 00 00 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_339                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xf92], 0             ; 83 3E 92 0F 00
        je      L_07EB                          ; 74 18
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 0x12]   ; 8B 58 12
        mov     bx, word ptr [bx]               ; 8B 1F
        and     byte ptr [bx + 1], 0x7f         ; 80 67 01 7F
L_07EB:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07F7 -- offset 0x07F7 -- 277 instr
; Dispatcher: tabla de decisiones cmp+jcc (277 instr).
; tags: calls_gdi, dispatcher, far
; callers: sub_0703
; calls (inter): GDI.ESCAPE, GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_07F7:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        cmp     word ptr [0xf92], 0             ; 83 3E 92 0F 00
        jne     L_081A                          ; 75 03
        jmp     L_0B10                          ; E9 F6 02
L_081A:
        cmp     word ptr [0xf9e], 0             ; 83 3E 9E 0F 00
        jne     L_0824                          ; 75 03
        jmp     L_0B10                          ; E9 EC 02
L_0824:
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        jne     L_082E                          ; 75 03
        jmp     L_0915                          ; E9 E7 00
L_082E:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A CE 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0869                          ; 74 20
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A 80 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        jmp     L_089D                          ; EB 34
L_0869:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 90 08 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x3840                      ; B8 40 38
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
        call    far _entry_94                   ; 9A 9E 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 5A 06 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x3840                      ; B8 40 38
        push    ax                              ; 50
        mov     ax, 0xfe                        ; B8 FE 00
        push    ax                              ; 50
L_089D:
        call    far _entry_94                   ; 9A E2 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0xa5a]            ; A1 5A 0A
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jae     L_08B0                          ; 73 03
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
L_08B0:
        mov     ax, word ptr [0xa6c]            ; A1 6C 0A
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jae     L_08BB                          ; 73 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_08BB:
        push    word ptr [0x79e]                ; FF 36 9E 07
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_08FE                          ; 74 28
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [0xa5a]                ; FF 36 5A 0A
        push    word ptr [0x10ee]               ; FF 36 EE 10
        call    far _entry_94                   ; 9A F5 08 00 00 [FIXUP]
        mov     word ptr [0x107c], ax           ; A3 7C 10
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xa6c]                ; FF 36 6C 0A
        push    word ptr [0x10fe]               ; FF 36 FE 10
        call    far _entry_94                   ; 9A F3 06 00 00 [FIXUP]
L_08F9:
        mov     word ptr [0x10f6], ax           ; A3 F6 10
        jmp     L_0927                          ; EB 29
L_08FE:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        shr     ax, 1                           ; D1 E8
        mov     word ptr [0x107c], ax           ; A3 7C 10
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        shr     ax, 1                           ; D1 E8
        jmp     L_08F9                          ; EB E4
L_0915:
        mov     word ptr [bp - 0x12], 0x2fd0    ; C7 46 EE D0 2F
        mov     word ptr [bp - 0x14], 0x3de0    ; C7 46 EC E0 3D
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x10f6], ax           ; A3 F6 10
        mov     word ptr [0x107c], ax           ; A3 7C 10
L_0927:
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        sub     ax, word ptr [0xfb0]            ; 2B 06 B0 0F
        sub     ax, word ptr [0xfb2]            ; 2B 06 B2 0F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0xfac]            ; 2B 06 AC 0F
        sub     ax, word ptr [0xfae]            ; 2B 06 AE 0F
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0xfb8]            ; 2B 06 B8 0F
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_0994                          ; 74 40
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 7B 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [0x7aa], 0             ; 83 3E AA 07 00
        jne     L_098E                          ; 75 05
        mov     ax, word ptr [0x780]            ; A1 80 07
        jmp     L_0991                          ; EB 03
L_098E:
        mov     ax, word ptr [0x7aa]            ; A1 AA 07
L_0991:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0994:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [0xfa8], ax            ; A3 A8 0F
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_264                  ; 9A BF 09 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x12]        ; 8B 4E EE
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xfb0]            ; 2B 0E B0 0F
        mov     word ptr [0xfb2], cx            ; 89 0E B2 0F
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [0xfa6], ax            ; A3 A6 0F
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_264                  ; 9A D7 09 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [0xfac]            ; 2B 0E AC 0F
        mov     word ptr [0xfae], cx            ; 89 0E AE 0F
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_264                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        sub     cx, ax                          ; 2B C8
        mov     word ptr [0xfb8], cx            ; 89 0E B8 0F
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     si, word ptr [bx]               ; 8B 37
        jmp     L_0B05                          ; E9 13 01
L_09F2:
        cmp     word ptr [si], 0                ; 83 3C 00
        jne     L_09FA                          ; 75 03
        jmp     L_0AF7                          ; E9 FD 00
L_09FA:
        cmp     word ptr [si + 0xc], 0          ; 83 7C 0C 00
        jne     L_0A03                          ; 75 03
        jmp     L_0AF7                          ; E9 F4 00
L_0A03:
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     di, word ptr [bx]               ; 8B 3F
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        sub     ax, word ptr [di + 0xe]         ; 2B 45 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        sub     ax, word ptr [di + 8]           ; 2B 45 08
        sub     ax, word ptr [di + 0xa]         ; 2B 45 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        sub     ax, word ptr [di + 0x14]        ; 2B 45 14
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [0x70], 0              ; 83 3E 70 00 00
        jne     L_0A33                          ; 75 03
        jmp     L_0ACA                          ; E9 97 00
L_0A33:
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        jne     L_0A3D                          ; 75 03
        jmp     L_0ACA                          ; E9 8D 00
L_0A3D:
        mov     ax, word ptr [0xc20]            ; A1 20 0C
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0A48                          ; 75 03
        jmp     L_0ACA                          ; E9 82 00
L_0A48:
        mov     ax, word ptr [0x1bfc]           ; A1 FC 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_0ACA                          ; 74 7A
        mov     ax, word ptr [di + 0xc]         ; 8B 45 0C
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [0x107c]           ; 3B 06 7C 10
        jb      L_0A9B                          ; 72 3F
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [bp - 0x18]        ; 3B 46 E8
        jb      L_0A9B                          ; 72 34
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [0x10f6]           ; 3B 06 F6 10
        jb      L_0A9B                          ; 72 28
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        jb      L_0A9B                          ; 72 1D
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0ACA                          ; 74 46
        mov     ax, word ptr [di + 0x12]        ; 8B 45 12
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [0x10f6]           ; 3B 06 F6 10
        jb      L_0A9B                          ; 72 0B
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        jae     L_0ACA                          ; 73 2F
L_0A9B:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x107c]               ; FF 36 7C 10
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [0x10f6]               ; FF 36 F6 10
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x70], 0              ; C7 06 70 00 00 00
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     di, word ptr [bx]               ; 8B 3F
L_0ACA:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [di + 0xe], ax         ; 89 45 0E
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [di + 8]           ; 2B 45 08
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [di + 0xa], ax         ; 89 45 0A
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        mov     word ptr [di + 0x14], ax        ; 89 45 14
L_0AF7:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_262                  ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 6]               ; FF 46 FA
        add     si, 0x16                        ; 83 C6 16
L_0B05:
        mov     ax, word ptr [0xf9e]            ; A1 9E 0F
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_0B10                          ; 7D 03
        jmp     L_09F2                          ; E9 E2 FE
L_0B10:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
