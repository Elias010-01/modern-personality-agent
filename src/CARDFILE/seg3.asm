; AUTO-GENERATED from original CARDFILE segment 3
; segment_size=4455 bytes, flags=0xf170
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
        sub     sp, 0x128                       ; 81 EC 28 01
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        lea     ax, [bp - 0x124]                ; 8D 86 DC FE
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04D4                          ; E8 B3 04
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x124]                ; 8D 86 DC FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 7D 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        or      ax, ax                          ; 0B C0
        jge     L_0046                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0377                          ; E9 31 03
L_0046:
        mov     byte ptr [bp - 0x8d], 0         ; C6 86 73 FF 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 C2 10
        add     sp, 6                           ; 83 C4 06
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0081                          ; 74 0F
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_036B                          ; E9 EA 02
L_0081:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x128]                ; 8D 86 D8 FE
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 8C 10
        add     sp, 6                           ; 83 C4 06
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, word ptr [bp - 0x128]       ; 8B 86 D8 FE
        add     ax, word ptr [0x166]            ; 03 06 66 01
        mov     cx, 0x34                        ; B9 34 00
        mul     cx                              ; F7 E1
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_00CD                          ; 75 17
L_00B6:
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    far KERNEL._LCLOSE              ; 9A 70 03 00 00 [FIXUP]
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A FF FF 00 00 [FIXUP]
L_00CD:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A E4 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        or      ax, ax                          ; 0B C0
        je      L_00B6                          ; 74 D2
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A F4 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        mov     word ptr [bp - 0x8a], dx        ; 89 96 76 FF
        mov     word ptr [bp - 0x98], 0         ; C7 86 68 FF 00 00
        jmp     L_0341                          ; E9 46 02
L_00FB:
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 13 10
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 36 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xa0], ax        ; 89 86 60 FF
        mov     word ptr [bp - 0x9e], dx        ; 89 96 62 FF
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        push    word ptr [0x40e]                ; FF 36 0E 04
        push    word ptr [0x40c]                ; FF 36 0C 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 1D 02 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x530                       ; B8 30 05
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 CE 0F
        add     sp, 6                           ; 83 C4 06
        cmp     word ptr [0x530], 0             ; 83 3E 30 05 00
        jne     L_015C                          ; 75 03
        jmp     L_02AD                          ; E9 51 01
L_015C:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 B2 0F
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x52a                       ; B8 2A 05
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 A0 0F
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 8D 0F
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 61 0F
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x52e], ax            ; A3 2E 05
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x530]                ; FF 36 30 05
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_01F2                          ; 75 03
        jmp     L_0299                          ; E9 A7 00
L_01F2:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x96], ax        ; 89 86 6A FF
        mov     word ptr [bp - 0x94], dx        ; 89 96 6C FF
        push    word ptr [0x530]                ; FF 36 30 05
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_1103                          ; E8 F6 0E
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 5E 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     word ptr [bp - 0x9a], dx        ; 89 96 66 FF
        push    word ptr [0x528]                ; FF 36 28 05
        push    word ptr [0x52a]                ; FF 36 2A 05
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x94]            ; FF B6 6C FF
        push    word ptr [bp - 0x96]            ; FF B6 6A FF
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        or      ax, ax                          ; 0B C0
        je      L_024E                          ; 74 03
        mov     word ptr [0x532], ax            ; A3 32 05
L_024E:
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        push    word ptr [bp - 0x9a]            ; FF B6 66 FF
        push    word ptr [bp - 0x9c]            ; FF B6 64 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A A9 02 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0287                          ; 75 20
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0287                          ; 75 1B
        lea     ax, [bp - 0x124]                ; 8D 86 DC FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xa000                      ; B8 00 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A B7 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        jmp     L_024E                          ; EB C7
L_0287:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 53 03 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A 5C 03 00 00 [FIXUP]
        jmp     L_02AD                          ; EB 14
L_0299:
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x530]                ; FF 36 30 05
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 32 03 00 00 [FIXUP]
L_02AD:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x126]                ; 8D 86 DA FE
        push    ax                              ; 50
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_111D                          ; E8 60 0E
        add     sp, 6                           ; 83 C4 06
        cmp     word ptr [bp - 0x126], 0x1c3    ; 81 BE DA FE C3 01
        jb      L_02CE                          ; 72 06
        mov     word ptr [bp - 0x126], 0x1c2    ; C7 86 DA FE C2 01
L_02CE:
        push    word ptr [bp - 0x126]           ; FF B6 DA FE
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    L_1103                          ; E8 22 0E
        add     sp, 8                           ; 83 C4 08
        mov     bx, word ptr [bp - 0x126]       ; 8B 9E DA FE
        les     si, ptr [bp - 0x8c]             ; C4 B6 74 FF
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    es                              ; 06
        push    si                              ; 56
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B48                          ; E8 49 08
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        or      ax, ax                          ; 0B C0
        je      L_0312                          ; 74 08
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x18], ax             ; A3 18 00
L_0312:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0322                          ; 74 09
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_0322:
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        push    word ptr [bp - 0xa0]            ; FF B6 60 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x126], 0        ; 83 BE DA FE 00
        je      L_036B                          ; 74 2E
        inc     word ptr [bp - 0x98]            ; FF 86 68 FF
L_0341:
        mov     ax, word ptr [bp - 0x128]       ; 8B 86 D8 FE
        cmp     word ptr [bp - 0x98], ax        ; 39 86 68 FF
        jae     L_034E                          ; 73 03
        jmp     L_00FB                          ; E9 AD FD
L_034E:
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_036B:
        push    word ptr [bp - 0xa4]            ; FF B6 5C FF
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0377:
        pop     si                              ; 5E
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
        sub     sp, 0x112                       ; 81 EC 12 01
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04D4                          ; E8 31 01
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x90]                 ; 8D 86 70 FF
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x110]                ; 8D 86 F0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jge     L_03C7                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_04C9                          ; E9 02 01
L_03C7:
        mov     byte ptr [bp - 5], 0            ; C6 46 FB 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_111D                          ; E8 44 0D
        add     sp, 6                           ; 83 C4 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 90 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03FE                          ; 74 0F
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 38 06 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_04BE                          ; E9 C0 00
L_03FE:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x112]                ; 8D 86 EE FE
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_111D                          ; E8 10 0D
        add     sp, 6                           ; 83 C4 06
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, 0x34                        ; B8 34 00
        mul     word ptr [bp - 0x112]           ; F7 A6 EE FE
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A AE 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0442                          ; 75 16
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL._LCLOSE              ; 9A C2 04 00 00 [FIXUP]
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A C9 00 00 00 [FIXUP]
L_0442:
        mov     ax, word ptr [bp - 0x112]       ; 8B 86 EE FE
        mov     word ptr [0x166], ax            ; A3 66 01
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 60 07 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0484                          ; EB 25
L_045F:
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_111D                          ; E8 B0 0C
        add     sp, 6                           ; 83 C4 06
        les     ax, ptr [bp - 0xc]              ; C4 46 F4
        add     word ptr [bp - 0xc], 0x34       ; 83 46 F4 34
        mov     di, ax                          ; 8B F8
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_0484:
        mov     ax, word ptr [bp - 0x112]       ; 8B 86 EE FE
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_045F                          ; 72 D2
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 8B 02 00 00 [FIXUP]
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        mov     di, 0x200                       ; BF 00 02
        lea     si, [bp - 0x110]                ; 8D B6 F0 FE
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 0x40                        ; B9 40 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x208                       ; B8 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A EC 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_04BE:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL._LCLOSE              ; 9A 8D 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_04C9:
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
; sub_04D4 -- offset 0x04D4 -- 601 instr
; Dispatcher: tabla de decisiones cmp+jcc (601 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_10D8, sub_10F1, sub_1103, sub_111D, sub_1135, sub_114F
; calls (inter): KERNEL.ANSIPREV, KERNEL.ANSIUPPER, KERNEL.GETTEMPFILENAME, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK (+9 mas)
;----------------------------------------------------------------------
L_04D4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A D4 05 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 8]           ; 03 46 08
        jmp     L_051F                          ; EB 20
L_04FF:
        cmp     byte ptr [bp - 6], 0x5c         ; 80 7E FA 5C
        je      L_052D                          ; 74 28
        cmp     byte ptr [bp - 6], 0x3a         ; 80 7E FA 3A
        je      L_052D                          ; 74 22
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_052D                          ; 76 1A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
L_051F:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_04FF                          ; 75 D2
L_052D:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        je      L_0544                          ; 74 0F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
L_0544:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x270                       ; 81 EC 70 02
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x190], ax       ; 89 86 70 FE
        mov     word ptr [bp - 0x192], ax       ; 89 86 6E FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04D4                          ; E8 53 FF
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 6A 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_059D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_059F                          ; EB 02
L_059D:
        sub     ax, ax                          ; 2B C0
L_059F:
        mov     word ptr [bp - 0x1d6], ax       ; 89 86 2A FE
        or      ax, ax                          ; 0B C0
        je      L_05C7                          ; 74 20
        mov     al, byte ptr [0x35a]            ; A0 5A 03
        cwde                                    ; 98
        or      al, 0x80                        ; 0C 80
        push    ax                              ; 50
        mov     ax, 0x29                        ; B8 29 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05D8                          ; 75 13
        jmp     L_0633                          ; EB 6C
L_05C7:
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_05D8:
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x10e]                ; 8D 86 F2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 1D 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0600                          ; 74 08
        mov     word ptr [bp - 0x1c8], 0x35a    ; C7 86 38 FE 5A 03
        jmp     L_0606                          ; EB 06
L_0600:
        mov     word ptr [bp - 0x1c8], 0x45a    ; C7 86 38 FE 5A 04
L_0606:
        cmp     word ptr [0x1e], 0              ; 83 3E 1E 00 00
        jne     L_0633                          ; 75 26
        mov     ax, word ptr [bp - 0x1c8]       ; 8B 86 38 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 61 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x26a], ax       ; 89 86 96 FD
        or      ax, ax                          ; 0B C0
        jne     L_062E                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0630                          ; EB 02
L_062E:
        sub     ax, ax                          ; 2B C0
L_0630:
        inc     ax                              ; 40
        jne     L_0644                          ; 75 11
L_0633:
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 77 00 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_063F:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B3D                          ; E9 F9 04
L_0644:
        cmp     word ptr [bp - 0x8e], 0         ; 83 BE 72 FF 00
        jl      L_0691                          ; 7C 46
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0669                          ; 74 17
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa000                      ; B8 00 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 35 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x268], ax       ; 89 86 98 FD
L_0669:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 28 07 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_06E6                          ; 75 6A
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_06E6                          ; 75 65
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0691                          ; 74 09
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    far KERNEL._LCLOSE              ; 9A 96 06 00 00 [FIXUP]
L_0691:
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        call    far KERNEL._LCLOSE              ; 9A BB 00 00 00 [FIXUP]
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 0x25                        ; B8 25 00
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_13                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_063F                          ; E9 59 FF
L_06E6:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x2d                        ; B8 2D 00
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 5B 0A
        add     sp, 6                           ; 83 C4 06
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 49 0A
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x166                       ; B8 66 01
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 37 0A
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 1A 01 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x34                        ; B8 34 00
        mov     bx, dx                          ; 8B DA
        imul    word ptr [0x166]                ; F7 2E 66 01
        cdq                                     ; 99
        add     ax, cx                          ; 03 C1
        adc     dx, bx                          ; 13 D3
        mov     word ptr [bp - 0x1d2], ax       ; 89 86 2E FE
        mov     word ptr [bp - 0x1d0], dx       ; 89 96 30 FE
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A D8 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x1d8], ax       ; 89 86 28 FE
        or      ax, ax                          ; 0B C0
        jne     L_075E                          ; 75 03
        jmp     L_08AE                          ; E9 50 01
L_075E:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 71 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        mov     word ptr [bp - 0x8a], dx        ; 89 96 76 FF
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A E6 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x192], ax       ; 89 86 6E FE
        mov     word ptr [bp - 0x190], dx       ; 89 96 70 FE
        mov     word ptr [bp - 0x1de], ax       ; 89 86 22 FE
        mov     word ptr [bp - 0x1dc], dx       ; 89 96 24 FE
        mov     word ptr [bp - 0x1d4], 0        ; C7 86 2C FE 00 00
L_078B:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x1d4], ax       ; 39 86 2C FE
        jb      L_0797                          ; 72 03
        jmp     L_0A00                          ; E9 69 02
L_0797:
        les     bx, ptr [bp - 0x192]            ; C4 9E 6E FE
        test    byte ptr es:[bx + 0xa], 4       ; 26 F6 47 0A 04
        je      L_07A8                          ; 74 06
        mov     ax, word ptr [bp - 0x26a]       ; 8B 86 96 FD
        jmp     L_07AC                          ; EB 04
L_07A8:
        mov     ax, word ptr [bp - 0x268]       ; 8B 86 98 FD
L_07AC:
        mov     word ptr [bp - 0x1da], ax       ; 89 86 26 FE
        push    ax                              ; 50
        les     bx, ptr [bp - 0x192]            ; C4 9E 6E FE
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 21 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x192]       ; 8B 86 6E FE
        mov     dx, word ptr [bp - 0x190]       ; 8B 96 70 FE
        add     word ptr [bp - 0x192], 0x34     ; 83 86 6E FE 34
        lea     di, [bp - 0x1c6]                ; 8D BE 3A FE
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        mov     byte ptr [bp - 0x1bc], 0        ; C6 86 44 FE 00
        mov     ax, word ptr [bp - 0x1d2]       ; 8B 86 2E FE
        mov     dx, word ptr [bp - 0x1d0]       ; 8B 96 30 FE
        mov     word ptr [bp - 0x1c0], ax       ; 89 86 40 FE
        mov     word ptr [bp - 0x1be], dx       ; 89 96 42 FE
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1c6]                ; 8D 86 3A FE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_1135                          ; E8 2C 09
        add     sp, 8                           ; 83 C4 08
        cmp     ax, 0x34                        ; 3D 34 00
        jge     L_0814                          ; 7D 03
        jmp     L_0995                          ; E9 81 01
L_0814:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 3D 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x270], ax       ; 89 86 90 FD
        mov     word ptr [bp - 0x26e], dx       ; 89 96 92 FD
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        push    word ptr [bp - 0x1d0]           ; FF B6 30 FE
        push    word ptr [bp - 0x1d2]           ; FF B6 2E FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A D9 09 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x1da]           ; FF B6 26 FE
        call    L_111D                          ; E8 CC 08
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 EB 08
        add     sp, 6                           ; 83 C4 06
        cmp     word ptr [bp - 0x88], 0         ; 83 BE 78 FF 00
        jne     L_0871                          ; 75 03
        jmp     L_0938                          ; E9 C7 00
L_0871:
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x266]                ; 8D 86 9A FD
        push    ax                              ; 50
        push    word ptr [bp - 0x1da]           ; FF B6 26 FE
        call    L_111D                          ; E8 9C 08
        add     sp, 6                           ; 83 C4 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        lea     ax, [bp - 0x266]                ; 8D 86 9A FD
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 BB 08
        add     sp, 6                           ; 83 C4 06
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        call    far KERNEL.GLOBALALLOC          ; 9A 4F 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_08E4                          ; 75 36
L_08AE:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    far KERNEL._LCLOSE              ; 9A BC 08 00 00 [FIXUP]
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    far KERNEL._LCLOSE              ; 9A C5 08 00 00 [FIXUP]
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        call    far KERNEL._LCLOSE              ; 9A 9A 09 00 00 [FIXUP]
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10F1                          ; E8 1E 08
        add     sp, 2                           ; 83 C4 02
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A 3E 04 00 00 [FIXUP]
L_08E4:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALLOCK           ; 9A 4E 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x1cc], ax       ; 89 86 34 FE
        mov     word ptr [bp - 0x1ca], dx       ; 89 96 36 FE
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1da]           ; FF B6 26 FE
        call    L_1103                          ; E8 02 08
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x1ca]           ; FF B6 36 FE
        push    word ptr [bp - 0x1cc]           ; FF B6 34 FE
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_1135                          ; E8 1E 08
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0x1ce], ax       ; 89 86 32 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 1A 0B 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A 23 0B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        cmp     word ptr [bp - 0x1ce], ax       ; 39 86 32 FE
        jb      L_0995                          ; 72 5D
L_0938:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x26c]                ; 8D 86 94 FD
        push    ax                              ; 50
        push    word ptr [bp - 0x1da]           ; FF B6 26 FE
        call    L_111D                          ; E8 D5 07
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x26c]                ; 8D 86 94 FD
        push    ax                              ; 50
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_114F                          ; E8 F4 07
        add     sp, 6                           ; 83 C4 06
        cmp     ax, 2                           ; 3D 02 00
        jl      L_0995                          ; 7C 32
        push    word ptr [bp - 0x26c]           ; FF B6 94 FD
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0x1da]           ; FF B6 26 FE
        call    L_1103                          ; E8 8D 07
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp - 0x26c]           ; FF B6 94 FD
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    L_1135                          ; E8 A9 07
        add     sp, 8                           ; 83 C4 08
        cmp     ax, word ptr [bp - 0x26c]       ; 3B 86 94 FD
        jae     L_09CC                          ; 73 37
L_0995:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    far KERNEL._LCLOSE              ; 9A A3 09 00 00 [FIXUP]
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    far KERNEL._LCLOSE              ; 9A AC 09 00 00 [FIXUP]
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        call    far KERNEL._LCLOSE              ; 9A 05 0A 00 00 [FIXUP]
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10F1                          ; E8 37 07
        add     sp, 2                           ; 83 C4 02
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 8B 0B 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_0B0E                          ; E9 42 01
L_09CC:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A F5 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x1d2], ax       ; 89 86 2E FE
        mov     word ptr [bp - 0x1d0], dx       ; 89 96 30 FE
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        push    word ptr [bp - 0x26e]           ; FF B6 92 FD
        push    word ptr [bp - 0x270]           ; FF B6 90 FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 23 0A 00 00 [FIXUP]
        inc     word ptr [bp - 0x1d4]           ; FF 86 2C FE
        jmp     L_078B                          ; E9 8B FD
L_0A00:
        push    word ptr [bp - 0x8e]            ; FF B6 72 FF
        call    far KERNEL._LCLOSE              ; 9A 15 0A 00 00 [FIXUP]
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0A19                          ; 74 09
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    far KERNEL._LCLOSE              ; 9A 3D 0A 00 00 [FIXUP]
L_0A19:
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A AA 0A 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        call    L_114F                          ; E8 1A 07
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp - 0x26a]           ; FF B6 96 FD
        call    far KERNEL._LCLOSE              ; 9A FF 0A 00 00 [FIXUP]
        cmp     word ptr [bp - 0x1d6], 0        ; 83 BE 2A FE 00
        je      L_0A6B                          ; 74 23
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10F1                          ; E8 9F 06
        add     sp, 2                           ; 83 C4 02
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        push    ax                              ; 50
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
        push    ax                              ; 50
        call    L_10D8                          ; E8 76 06
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x25e]                ; 8D 86 A2 FD
        jmp     L_0A79                          ; EB 0E
L_0A6B:
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 4A 05 00 00 [FIXUP]
        lea     ax, [bp - 0x18e]                ; 8D 86 72 FE
L_0A79:
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 7C 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x268], ax       ; 89 86 98 FD
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x208                       ; B8 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B5 04 00 00 [FIXUP]
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        mov     ax, 5                           ; B8 05 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 73 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1de]       ; 8B 86 22 FE
        mov     dx, word ptr [bp - 0x1dc]       ; 8B 96 24 FE
        mov     word ptr [bp - 0x192], ax       ; 89 86 6E FE
        mov     word ptr [bp - 0x190], dx       ; 89 96 70 FE
        mov     word ptr [bp - 0x1d4], 0        ; C7 86 2C FE 00 00
        jmp     L_0AF1                          ; EB 2B
L_0AC6:
        mov     ax, 0x34                        ; B8 34 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1c6]                ; 8D 86 3A FE
        push    ax                              ; 50
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    L_111D                          ; E8 47 06
        add     sp, 6                           ; 83 C4 06
        les     ax, ptr [bp - 0x192]            ; C4 86 6E FE
        add     word ptr [bp - 0x192], 0x34     ; 83 86 6E FE 34
        mov     di, ax                          ; 8B F8
        lea     si, [bp - 0x1c6]                ; 8D B6 3A FE
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        inc     word ptr [bp - 0x1d4]           ; FF 86 2C FE
L_0AF1:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x1d4], ax       ; 39 86 2C FE
        jb      L_0AC6                          ; 72 CC
        push    word ptr [bp - 0x268]           ; FF B6 98 FD
        call    far KERNEL._LCLOSE              ; 9A 30 04 00 00 [FIXUP]
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_0B0E:
        cmp     word ptr [bp - 0x1d8], 0        ; 83 BE 28 FE 00
        je      L_0B27                          ; 74 12
        push    word ptr [bp - 0x1d8]           ; FF B6 28 FE
        call    far KERNEL.GLOBALUNLOCK         ; 9A 36 0B 00 00 [FIXUP]
        push    word ptr [bp - 0x1d8]           ; FF B6 28 FE
        call    far KERNEL.GLOBALFREE           ; 9A 93 02 00 00 [FIXUP]
L_0B27:
        mov     ax, word ptr [bp - 0x192]       ; 8B 86 6E FE
        or      ax, word ptr [bp - 0x190]       ; 0B 86 70 FE
        je      L_0B3A                          ; 74 09
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 92 04 00 00 [FIXUP]
L_0B3A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0B3D:
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
; sub_0B48 -- offset 0x0B48 -- 430 instr
; Dispatcher: tabla de decisiones cmp+jcc (430 instr).
; tags: calls_gdi, calls_kernel, dispatcher, far
; calls (intra): sub_1103, sub_111D, sub_1135, sub_114F
; calls (inter): GDI.CREATEBITMAP, GDI.GETBITMAPBITS, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK (+2 mas)
;----------------------------------------------------------------------
L_0B48:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0B68                          ; 74 07
        mov     word ptr [bp - 0xe], 0x35a      ; C7 46 F2 5A 03
        jmp     L_0B6D                          ; EB 05
L_0B68:
        mov     word ptr [bp - 0xe], 0x45a      ; C7 46 F2 5A 04
L_0B6D:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa802                      ; B8 02 A8
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A E9 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        inc     ax                              ; 40
        jne     L_0B97                          ; 75 11
        mov     ax, 0x1b                        ; B8 1B 00
L_0B89:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A F4 03 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        sub     ax, ax                          ; 2B C0
        jmp     L_0D8F                          ; E9 F8 01
L_0B97:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 7B 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_0BB9                          ; 75 03
        jmp     L_0D0F                          ; E9 56 01
L_0BB9:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 8]               ; FF 77 08
        call    far KERNEL.GLOBALALLOC          ; 9A C2 0E 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0BD2                          ; 75 03
        jmp     L_0D01                          ; E9 2F 01
L_0BD2:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A D2 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 60 05
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 50 05
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 3D 05
        add     sp, 6                           ; 83 C4 06
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0C1D                          ; 7D 03
        jmp     L_0D73                          ; E9 56 01
L_0C1D:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 10 05
        add     sp, 6                           ; 83 C4 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 EB 04
        add     sp, 6                           ; 83 C4 06
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0C6F                          ; 7D 03
        jmp     L_0D73                          ; E9 04 01
L_0C6F:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A A9 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0xa]             ; FF 77 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.GETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
L_0C9C:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 1A 0E 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0CCF                          ; 75 1D
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0CCF                          ; 75 18
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 05 0E 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        jmp     L_0C9C                          ; EB CD
L_0CCF:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_1135                          ; E8 54 04
        add     sp, 8                           ; 83 C4 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jbe     L_0CEF                          ; 76 03
        jmp     L_0D73                          ; E9 84 00
L_0CEF:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 22 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALFREE           ; 9A 2A 09 00 00 [FIXUP]
        jmp     L_0D20                          ; EB 1F
L_0D01:
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far KERNEL._LCLOSE              ; 9A 67 0D 00 00 [FIXUP]
        mov     ax, 0x19                        ; B8 19 00
        jmp     L_0B89                          ; E9 7A FE
L_0D0F:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 32 04
        add     sp, 6                           ; 83 C4 06
L_0D20:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRLEN              ; 9A F6 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     ax, 0x1c3                       ; 3D C3 01
        jb      L_0D38                          ; 72 05
        mov     word ptr [bp - 0x22], 0x1c2     ; C7 46 DE C2 01
L_0D38:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_114F                          ; E8 09 04
        add     sp, 6                           ; 83 C4 06
        cmp     ax, 2                           ; 3D 02 00
        jl      L_0D73                          ; 7C 25
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    L_1135                          ; E8 D8 03
        add     sp, 8                           ; 83 C4 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        call    far KERNEL._LCLOSE              ; 9A B3 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jae     L_0D79                          ; 73 06
L_0D73:
        mov     ax, 0x1a                        ; B8 1A 00
        jmp     L_0B89                          ; E9 10 FE
L_0D79:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      byte ptr [bx + 0xa], 4          ; 80 4F 0A 04
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 8], dx           ; 89 57 08
        mov     ax, 1                           ; B8 01 00
L_0D8F:
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
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0xa], 0          ; C7 47 0A 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx + 0xa], 1          ; F6 47 0A 01
        je      L_0DCB                          ; 74 0F
        mov     ax, 0x33                        ; B8 33 00
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     word ptr [bp + 0xc], ds         ; 8C 5E 0C
        mov     ax, 1                           ; B8 01 00
        jmp     L_0FF8                          ; E9 2D 02
L_0DCB:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx + 0xa], 4          ; F6 47 0A 04
        je      L_0DF6                          ; 74 22
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0DE2                          ; 74 07
        mov     word ptr [bp - 0xe], 0x35a      ; C7 46 F2 5A 03
        jmp     L_0DE7                          ; EB 05
L_0DE2:
        mov     word ptr [bp - 0xe], 0x45a      ; C7 46 F2 5A 04
L_0DE7:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
        jmp     L_0E03                          ; EB 0D
L_0DF6:
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa000                      ; B8 00 A0
L_0E03:
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 70 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bx + 6]               ; FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A F9 0E 00 00 [FIXUP]
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 EE 02
        add     sp, 6                           ; 83 C4 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 8], 0            ; 83 7F 08 00
        jne     L_0E3E                          ; 75 03
        jmp     L_0FB4                          ; E9 76 01
L_0E3E:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    bx                              ; 53
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 D4 02
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 C1 02
        add     sp, 6                           ; 83 C4 06
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 B0 02
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 84 02
        add     sp, 6                           ; 83 C4 06
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 8]               ; FF 77 08
        call    far KERNEL.GLOBALALLOC          ; 9A A3 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0ED0                          ; 75 03
        jmp     L_0F9A                          ; E9 CA 00
L_0ED0:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A E8 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 8]               ; FF 77 08
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_1103                          ; E8 19 02
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 37 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far GDI.CREATEBITMAP            ; 9A 3F 02 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        or      ax, ax                          ; 0B C0
        jne     L_0F2A                          ; 75 05
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0F2A:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A C1 07 00 00 [FIXUP]
        cmp     dx, -1                          ; 83 FA FF
        jne     L_0F88                          ; 75 48
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0F88                          ; 75 43
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx + 0xa], 4          ; F6 47 0A 04
        je      L_0F79                          ; 74 2B
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0F5C                          ; 74 07
        mov     word ptr [bp - 0xe], 0x35a      ; C7 46 F2 5A 03
        jmp     L_0F61                          ; EB 05
L_0F5C:
        mov     word ptr [bp - 0xe], 0x45a      ; C7 46 F2 5A 04
L_0F61:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa002                      ; B8 02 A0
L_0F6E:
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 85 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_0F2A                          ; EB B1
L_0F79:
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa000                      ; B8 00 A0
        jmp     L_0F6E                          ; EB E6
L_0F88:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A F3 0C 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A FB 0C 00 00 [FIXUP]
        jmp     L_0FB4                          ; EB 1A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F9A -- offset 0x0F9A -- 130 instr
; Dispatcher: tabla de decisiones cmp+jcc (130 instr).
; tags: calls_kernel, dispatcher
; calls (intra): sub_1103, sub_111D
; calls (inter): KERNEL.GETTEMPFILENAME, KERNEL.OPENFILE
;----------------------------------------------------------------------
L_0F9A:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bx + 8]               ; FF 77 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A A3 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0FB4:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_111D                          ; E8 5B 01
        add     sp, 6                           ; 83 C4 06
        cmp     word ptr [bp - 0x1c], 0x1c3     ; 81 7E E4 C3 01
        jb      L_0FD1                          ; 72 05
        mov     word ptr [bp - 0x1c], 0x1c2     ; C7 46 E4 C2 01
L_0FD1:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    L_1103                          ; E8 23 01
        add     sp, 8                           ; 83 C4 08
        mov     bx, word ptr [bp - 0x1c]        ; 8B 5E E4
        les     si, ptr [bp + 0xa]              ; C4 76 0A
        mov     byte ptr es:[bx + si], 0        ; 26 C6 00 00
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL._LCLOSE              ; 9A 46 10 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0FF8:
        pop     si                              ; 5E
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
        sub     sp, 4                           ; 83 EC 04
        mov     al, byte ptr [0x35a]            ; A0 5A 03
        cwde                                    ; 98
        push    ax                              ; 50
        mov     ax, 0x34                        ; B8 34 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x488                       ; B8 88 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETTEMPFILENAME      ; 9A BD 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_104C                          ; 74 22
        mov     ax, 0x488                       ; B8 88 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x2b0                       ; B8 B0 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A C6 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_104C                          ; 7C 08
        push    ax                              ; 50
        call    far KERNEL._LCLOSE              ; 9A 05 0D 00 00 [FIXUP]
        jmp     L_105E                          ; EB 12
L_104C:
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A C2 09 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [0x1e], 1              ; C7 06 1E 00 01 00
L_105E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_1079:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        and     ax, 0xf                         ; 25 0F 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     cl, 4                           ; B1 04
        shr     word ptr [bp + 4], cl           ; D3 6E 04
        cmp     ax, 0xa                         ; 3D 0A 00
        jae     L_1096                          ; 73 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        add     al, 0x30                        ; 04 30
        jmp     L_109E                          ; EB 08
L_1096:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        add     al, 0x37                        ; 04 37
L_109E:
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 6], 4            ; 83 7E FA 04
        jl      L_1079                          ; 7C CD
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_10B4:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 4            ; 83 7E FA 04
        jl      L_10B4                          ; 7C E7
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0                ; C6 07 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10D8 -- offset 0x10D8 -- 15 instr
; Llama a servicios DOS via INT 21h (15 instr).
; tags: dos_caller, int_21
; callers: sub_04D4
;----------------------------------------------------------------------
L_10D8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     ah, 0x56                        ; B4 56
        int     0x21                            ; CD 21
        jb      L_10EC                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_10EC:
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10F1 -- offset 0x10F1 -- 10 instr
; Llama a servicios DOS via INT 21h (10 instr).
; tags: dos_caller, far, int_21
; callers: sub_04D4
;----------------------------------------------------------------------
L_10F1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_10FF                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_10FF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1103 -- offset 0x1103 -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, int_21
; callers: sub_04D4, sub_0B48, sub_0F9A
;----------------------------------------------------------------------
L_1103:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x3f                        ; B4 3F
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        int     0x21                            ; CD 21
        jae     L_1118                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_1118:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_111D -- offset 0x111D -- 12 instr
; Llama a servicios DOS via INT 21h (12 instr).
; tags: dos_caller, int_21
; callers: sub_04D4, sub_0B48, sub_0F9A
;----------------------------------------------------------------------
L_111D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x3f                        ; B4 3F
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        int     0x21                            ; CD 21
        jae     L_1131                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_1131:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1135 -- offset 0x1135 -- 14 instr
; Llama a servicios DOS via INT 21h (14 instr).
; tags: dos_caller, int_21
; callers: sub_04D4, sub_0B48
;----------------------------------------------------------------------
L_1135:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x40                        ; B4 40
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        int     0x21                            ; CD 21
        jae     L_114A                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_114A:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_114F -- offset 0x114F -- 12 instr
; Llama a servicios DOS via INT 21h (12 instr).
; tags: dos_caller, int_21
; callers: sub_04D4, sub_0B48
;----------------------------------------------------------------------
L_114F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x40                        ; B4 40
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        int     0x21                            ; CD 21
        jae     L_1163                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_1163:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

CARDFILE_TEXT ENDS

        END
