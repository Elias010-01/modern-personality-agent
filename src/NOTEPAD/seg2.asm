; AUTO-GENERATED from original NOTEPAD segment 2
; segment_size=1141 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 291 instr
; Dispatcher: tabla de decisiones cmp+jcc (291 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_02C9, sub_0351
; calls (inter): KERNEL.ANSIUPPER, KERNEL.LOCALALLOC, KERNEL.LOCALREALLOC, KERNEL.LSTRCPY, KERNEL.MAKEPROCINSTANCE, KERNEL.OPENFILE (+8 mas)
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A E8 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0024                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0084                          ; EB 60
L_0024:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0029:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x5a]        ; 8B 9F 5A 00
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x5a]        ; 8B 9F 5A 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jl      L_0029                          ; 7C C1
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x400                       ; B8 00 04
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x58]             ; 8B 1E 58 00
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x280], ax            ; A3 80 02
L_0084:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x106                       ; 81 EC 06 01
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    0                               ; E8 61 FF
        or      ax, ax                          ; 0B C0
        jne     L_00A8                          ; 75 05
L_00A3:
        sub     ax, ax                          ; 2B C0
        jmp     L_02BD                          ; E9 15 02
L_00A8:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A E9 02 00 00 [FIXUP]
        mov     word ptr [0x28a], ax            ; A3 8A 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x24e], ax            ; A3 4E 02
        cmp     word ptr [0x28a], 0             ; 83 3E 8A 02 00
        je      L_00A3                          ; 74 D3
        or      ax, ax                          ; 0B C0
        je      L_00A3                          ; 74 CF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_00EF                          ; 75 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02C9                          ; E8 DE 01
        or      ax, ax                          ; 0B C0
        je      L_00A3                          ; 74 B4
L_00EF:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x27e], ax            ; A3 7E 02
        mov     word ptr [bp - 0x106], 6        ; C7 86 FA FE 06 00
        jmp     L_011B                          ; EB 1E
L_00FD:
        mov     si, word ptr [bp - 0x106]       ; 8B B6 FA FE
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, 0x8c                        ; 81 C6 8C 00
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
L_011B:
        dec     word ptr [bp - 0x106]           ; FF 8E FA FE
        cmp     word ptr [bp - 0x106], 0        ; 83 BE FA FE 00
        jge     L_00FD                          ; 7D D7
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0351                          ; E8 26 02
        mov     ax, 0x22                        ; B8 22 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
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
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A 8A 01 00 00 [FIXUP]
        mov     word ptr [0x18], ax             ; A3 18 00
        or      ax, ax                          ; 0B C0
        jne     L_015C                          ; 75 03
        jmp     L_00A3                          ; E9 47 FF
L_015C:
        mov     ax, 0xbd                        ; B8 BD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xbc                        ; B8 BC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc4                        ; B8 C4 00
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x258                       ; B8 58 02
        push    ax                              ; 50
        mov     ax, 0x190                       ; B8 90 01
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1a], ax             ; A3 1A 00
        or      ax, ax                          ; 0B C0
        jne     L_0198                          ; 75 03
        jmp     L_00A3                          ; E9 0B FF
L_0198:
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A D5 01 00 00 [FIXUP]
        push    word ptr [bp - 0x104]           ; FF B6 FC FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x3e]             ; A1 3E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x256]            ; 8B 1E 56 02
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A D8 02 00 00 [FIXUP]
        mov     word ptr [0x284], ax            ; A3 84 02
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40c                       ; B8 0C 04
        push    ax                              ; 50
        push    word ptr [0x284]                ; FF 36 84 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A AF 02 00 00 [FIXUP]
        push    word ptr [0x32]                 ; FF 36 32 00
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0296                          ; 74 74
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 7F 02 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0286                          ; 75 34
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x2c]                 ; FF 36 2C 00
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0286                          ; 75 16
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
L_0286:
        cmp     word ptr [0x278], -1            ; 83 3E 78 02 FF
        je      L_0296                          ; 74 09
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
L_0296:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A B6 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_02BD:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02C9 -- offset 0x02C9 -- 50 instr
; Funcion mediana (50 instr, 5 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_0000
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, USER.LOADCURSOR, USER.LOADICON, USER.REGISTERCLASS
;----------------------------------------------------------------------
L_02C9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, 0x22                        ; B8 22 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 0x10], 6         ; C7 47 10 06 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0340                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_034B                          ; EB 0B
L_0340:
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_034B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0351 -- offset 0x0351 -- 123 instr
; Funcion compleja: 123 instrucciones, 2 llamadas, 3 branches.
; tags: calls_kernel, complex, far
; callers: sub_0000
; calls (inter): KERNEL.GETPROFILEINT, KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_0351:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, 0xc2                        ; B8 C2 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ds           ; 8C 5E F8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc7                        ; B8 C7 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 88 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xcd                        ; B8 CD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x126], ax            ; A3 26 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd3                        ; B8 D3 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C1 03 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd9                        ; B8 D9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x114                       ; B8 14 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xe1                        ; B8 E1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdf                        ; B8 DF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 04 04 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        mov     word ptr [0x10a], ax            ; A3 0A 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xe9                        ; B8 E9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe7                        ; B8 E7 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A A6 03 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        mov     word ptr [0x10c], ax            ; A3 0C 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xef                        ; B8 EF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 72 03 00 00 [FIXUP]
        mov     word ptr [0x128], ax            ; A3 28 01
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0438                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_044C                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        je      L_045A                          ; 74 24
        jmp     L_046C                          ; EB 34
L_0438:
        mov     word ptr [0x120], 0             ; C7 06 20 01 00 00
        mov     word ptr [0x122], 3             ; C7 06 22 01 03 00
L_0444:
        mov     word ptr [0x124], 6             ; C7 06 24 01 06 00
        jmp     L_046C                          ; EB 20
L_044C:
        mov     word ptr [0x120], 3             ; C7 06 20 01 03 00
        mov     word ptr [0x122], 0             ; C7 06 22 01 00 00
        jmp     L_0444                          ; EB EA
L_045A:
        mov     word ptr [0x120], 5             ; C7 06 20 01 05 00
        mov     word ptr [0x122], 8             ; C7 06 22 01 08 00
        mov     word ptr [0x124], 0             ; C7 06 24 01 00 00
L_046C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

NOTEPAD_TEXT ENDS

        END
