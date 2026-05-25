; AUTO-GENERATED from original USER segment 17
; segment_size=7994 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x401                       ; 3D 01 04
        jne     L_002E                          ; 75 03
        jmp     L_01B2                          ; E9 84 01
L_002E:
        jbe     L_0033                          ; 76 03
        jmp     L_035A                          ; E9 27 03
L_0033:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_003B                          ; 75 03
        jmp     L_00DA                          ; E9 9F 00
L_003B:
        jbe     L_0040                          ; 76 03
        jmp     L_0316                          ; E9 D6 02
L_0040:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0048                          ; 75 03
        jmp     L_02FB                          ; E9 B3 02
L_0048:
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0050                          ; 75 03
        jmp     L_0192                          ; E9 42 01
L_0050:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0058                          ; 75 03
        jmp     L_013A                          ; E9 E2 00
L_0058:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0060                          ; 74 03
        jmp     L_032B                          ; E9 CB 02
L_0060:
        mov     ax, di                          ; 8B C7
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        jne     L_0079                          ; 75 10
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
L_0079:
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03A9                          ; E8 24 03
        or      di, di                          ; 0B FF
        je      L_008C                          ; 74 03
        jmp     L_0396                          ; E9 0A 03
L_008C:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0396                          ; E9 FA 02
        push    si                              ; 56
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_517                  ; 9A BA 00 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x114                       ; B8 14 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_517                  ; 9A CA 00 00 00 [FIXUP]
        jmp     L_0396                          ; E9 D5 02
L_00C1:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_517                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_0396                          ; E9 BC 02
L_00DA:
        cmp     di, 0xd                         ; 83 FF 0D
        je      L_00E2                          ; 74 03
        jmp     L_0396                          ; E9 B4 02
L_00E2:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0521                          ; E8 3A 04
        jmp     L_0396                          ; E9 AC 02
L_00EA:
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        jne     L_00F3                          ; 75 03
        jmp     L_0396                          ; E9 A3 02
L_00F3:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
        dec     cx                              ; 49
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jge     L_0109                          ; 7D 03
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_0109:
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        mov     cx, word ptr [si + 0xe]         ; 8B 4C 0E
        sar     cx, 1                           ; D1 F9
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jge     L_011E                          ; 7D 03
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_011E:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_515                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 50 07
        jmp     L_0396                          ; E9 5C 02
L_013A:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 44 07
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_514                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0189                          ; 74 36
        push    si                              ; 56
        call    L_1D08                          ; E8 B1 1B
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 C5 0B
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1556                          ; E8 EA 13
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_510                  ; 9A DC 01 00 00 [FIXUP]
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        jne     L_0189                          ; 75 06
        push    si                              ; 56
        call    far _entry_513                  ; 9A FF FF 00 00 [FIXUP]
L_0189:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CA8                          ; E8 19 1B
        jmp     L_0396                          ; E9 04 02
L_0192:
        or      di, di                          ; 0B FF
        jne     L_019B                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_019D                          ; EB 02
L_019B:
        sub     ax, ax                          ; 2B C0
L_019D:
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfb                        ; 80 E1 FB
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        jmp     L_0396                          ; E9 E4 01
L_01B2:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jae     L_01BF                          ; 73 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_01C2                          ; EB 03
L_01BF:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
L_01C2:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 BB 06
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
L_01D7:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_510                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0189                          ; EB A7
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
L_01E5:
        cdq                                     ; 99
L_01E6:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0396                          ; E9 A7 01
        cmp     di, -1                          ; 83 FF FF
        jne     L_01FF                          ; 75 0B
        push    si                              ; 56
        push    word ptr [si + 0x10]            ; FF 74 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 81 05
        jmp     L_0201                          ; EB 02
L_01FF:
        mov     ax, di                          ; 8B C7
L_0201:
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp - 0x3a], ax        ; 39 46 C6
        jge     L_021A                          ; 7D 0E
        mov     bx, word ptr [bp - 0x3a]        ; 8B 5E C6
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [si + 0x38]        ; 03 5C 38
        mov     ax, word ptr [bx]               ; 8B 07
        sub     dx, dx                          ; 2B D2
        jmp     L_01E6                          ; EB CC
L_021A:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01E5                          ; EB C6
        push    si                              ; 56
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B09                          ; E8 E3 08
        jmp     L_01E5                          ; EB BD
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx]                   ; FF 37
        call    L_1ADE                          ; E8 A6 18
        jmp     L_01E5                          ; EB AB
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp + 8], ax           ; 89 46 08
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 C5 0A
        cmp     word ptr [bp + 0xc], 0x403      ; 81 7E 0C 03 04
        je      L_0269                          ; 74 03
        jmp     L_0396                          ; E9 2D 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0269 -- offset 0x0269 -- 139 instr
; Dispatcher: tabla de decisiones cmp+jcc (139 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0887, sub_09F4, sub_0D24, sub_1556, sub_1B7E, sub_1D08 (+2 mas)
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK, KERNEL.LSTRLEN
;----------------------------------------------------------------------
L_0269:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0396                          ; E9 1E 01
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 06 06
        mov     word ptr [si], di               ; 89 3C
        push    di                              ; 57
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        push    di                              ; 57
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_02AA                          ; 74 04
        push    si                              ; 56
        call    L_1D08                          ; E8 5E 1A
L_02AA:
        push    word ptr [si]                   ; FF 34
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_02C8                          ; 74 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
L_02C8:
        and     byte ptr [si + 6], 0xef         ; 80 64 06 EF
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 50 0A
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1556                          ; E8 75 12
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    ax                              ; 50
        push    ax                              ; 50
        jmp     L_01D7                          ; E9 EB FE
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, ds                          ; 8C DA
        jmp     L_01E6                          ; E9 F3 FE
        push    si                              ; 56
        push    di                              ; 57
        call    L_1D5C                          ; E8 64 1A
        jmp     L_01E5                          ; E9 EA FE
L_02FB:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_09F4                          ; E8 EF 06
        jmp     L_0396                          ; E9 8E 00
        push    si                              ; 56
        call    L_1B7E                          ; E8 72 18
        jmp     L_01E5                          ; E9 D6 FE
        push    si                              ; 56
        call    L_1EC6                          ; E8 B3 1B
        jmp     L_01E5                          ; E9 CF FE
L_0316:
        cmp     ax, 0x115                       ; 3D 15 01
        ja      L_0340                          ; 77 25
        cmp     ax, 0x114                       ; 3D 14 01
        jb      L_0323                          ; 72 03
        jmp     L_00C1                          ; E9 9E FD
L_0323:
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_032B                          ; 75 03
        jmp     L_00E2                          ; E9 B7 FD
L_032B:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01E6                          ; E9 A6 FE
L_0340:
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0348                          ; 75 03
        jmp     L_00EA                          ; E9 A2 FD
L_0348:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0350                          ; 75 03
        jmp     L_00F3                          ; E9 A3 FD
L_0350:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_0358                          ; 75 03
        jmp     L_00EA                          ; E9 92 FD
L_0358:
        jmp     L_032B                          ; EB D1
L_035A:
        sub     ax, 0x403                       ; 2D 03 04
        cmp     ax, 0x15                        ; 3D 15 00
        ja      L_032B                          ; 77 C9
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x36a]        ; 2E FF A7 6A 03
        cmp     al, byte ptr [bp + si]          ; 3A 02
        cmp     al, byte ptr [bp + si]          ; 3A 02
        sub     ax, word ptr [bp + di]          ; 2B 03
        pushf                                   ; 9C
        add     byte ptr [bp + di], ch          ; 00 2B
        add     bp, word ptr [bp + di]          ; 03 2B
        add     bp, word ptr [bp + di]          ; 03 2B
        add     sp, dx                          ; 03 E2
        add     di, bp                          ; 01 EF
        add     word ptr [bx + si + 2], di      ; 01 78 02
        in      al, dx                          ; EC
        add     ch, byte ptr [bp + di]          ; 02 2B
        add     bp, word ptr [bp + di]          ; 03 2B
        add     bp, word ptr [bp + di]          ; 03 2B
        add     bx, word ptr [bx]               ; 03 1F
        add     ch, byte ptr [bp + di]          ; 02 2B
        add     bp, word ptr [bp + di]          ; 03 2B
        add     bp, word ptr [bx + si]          ; 03 28
        add     ch, byte ptr [bp + di]          ; 02 2B
        add     cx, word ptr [bx]               ; 03 0F
        add     cx, word ptr [bx + si]          ; 03 08
        add     si, bx                          ; 03 F3
        add     cl, byte ptr [bp + di - 0x5ba]  ; 02 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
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
; sub_03A9 -- offset 0x03A9 -- 158 instr
; Funcion compleja: 158 instrucciones, 3 llamadas, 8 branches.
; tags: calls_gdi, calls_kernel, complex, far
; calls (intra): sub_0B93
; calls (inter): GDI.GETCLIPBOX, KERNEL.LOCALALLOC
;----------------------------------------------------------------------
L_03A9:
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
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        test    byte ptr [bx + 6], 4            ; F6 47 06 04
        je      L_03C4                          ; 74 03
        jmp     L_0471                          ; E9 AD 00
L_03C4:
        push    word ptr [bx + 2]               ; FF 77 02
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03F9                          ; 74 12
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far _SEG1_1AFF                  ; 9A FF FF 00 00 [FIXUP]
L_03F9:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_516                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETCLIPBOX              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        sub     ax, word ptr [bx + 0x18]        ; 2B 47 18
        cdq                                     ; 99
        mov     cx, word ptr [bx + 0xe]         ; 8B 4F 0E
        idiv    cx                              ; F7 F9
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jge     L_042A                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_042C                          ; EB 02
L_042A:
        mov     ax, si                          ; 8B C6
L_042C:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx + 0x20]        ; 8B 77 20
        dec     si                              ; 4E
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bx + 0x18]        ; 2B 47 18
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [bx + 0xe]         ; 8B 4F 0E
        idiv    cx                              ; F7 F9
        mov     di, ax                          ; 8B F8
        cmp     di, si                          ; 3B FE
        jle     L_044D                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_044F                          ; EB 02
L_044D:
        mov     ax, di                          ; 8B C7
L_044F:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp - 0x14]            ; FF 76 EC
        inc     ax                              ; 40
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B93                          ; E8 2D 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        push    word ptr [bx + 2]               ; FF 77 02
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
L_0471:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 3                           ; 25 03 00
        mov     word ptr [si + 8], ax           ; 89 44 08
        test    byte ptr [bp + 6], 0x40         ; F6 46 06 40
        je      L_04A0                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04A2                          ; EB 02
L_04A0:
        sub     ax, ax                          ; 2B C0
L_04A2:
        and     ax, 1                           ; 25 01 00
        mov     cl, 8                           ; B1 08
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     ch, 0xfe                        ; 80 E5 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        test    word ptr [si + 6], 0x200        ; F7 44 06 00 02
        jne     L_04C0                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_04C2                          ; EB 02
L_04C0:
        sub     ax, ax                          ; 2B C0
L_04C2:
        and     ax, 1                           ; 25 01 00
        mov     cl, 0xe                         ; B1 0E
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     ch, 0xbf                        ; 80 E5 BF
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FD 04 00 00 [FIXUP]
        mov     word ptr [si + 0x38], ax        ; 89 44 38
        mov     word ptr [si + 0x20], 1         ; C7 44 20 01 00
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     word ptr [bx + 2], 1            ; C7 47 02 01 00
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x36], ax        ; 89 44 36
        cmp     word ptr [si + 0x38], 0         ; 83 7C 38 00
        je      L_0513                          ; 74 09
        or      ax, ax                          ; 0B C0
        je      L_0513                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0515                          ; EB 02
L_0513:
        sub     ax, ax                          ; 2B C0
L_0515:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0521 -- offset 0x0521 -- 186 instr
; Dispatcher: tabla de decisiones cmp+jcc (186 instr).
; tags: calls_kernel, dispatcher
; calls (intra): sub_077E, sub_12EA, sub_1467, sub_1CA8
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0521:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        mov     word ptr [bp - 0x1e], 0         ; C7 46 E2 00 00
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 3B 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0568                          ; 74 0E
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_512                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_0568:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 8                           ; 3D 08 00
        je      L_0583                          ; 74 13
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0578                          ; 75 03
        jmp     L_068F                          ; E9 17 01
L_0578:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_0580                          ; 75 03
        jmp     L_06CA                          ; E9 4A 01
L_0580:
        jmp     L_06D3                          ; E9 50 01
L_0583:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CA8                          ; E8 1F 17
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_0596                          ; 75 05
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        jmp     L_0599                          ; EB 03
L_0596:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
L_0599:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 85 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_0605                          ; 7C 52
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_05BC                          ; 7F 03
        jmp     L_0650                          ; E9 94 00
L_05BC:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        dec     ax                              ; 48
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_05DC                          ; 74 0C
        push    si                              ; 56
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_496                  ; 9A 1E 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
L_05DC:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_1467                          ; E8 80 0E
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      ax, ax                          ; 0B C0
        je      L_0650                          ; 74 62
        dec     word ptr [bp - 0x22]            ; FF 4E DE
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_1467                          ; E8 6B 0E
        or      ax, ax                          ; 0B C0
        je      L_0650                          ; 74 50
        dec     word ptr [bp - 0x22]            ; FF 4E DE
        jmp     L_0650                          ; EB 4B
L_0605:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_062A                          ; 74 11
        push    si                              ; 56
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far _entry_496                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0x1e]        ; 3B 46 E2
        je      L_062A                          ; 74 03
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
L_062A:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        call    L_1467                          ; E8 33 0E
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      ax, ax                          ; 0B C0
        je      L_0650                          ; 74 15
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_1467                          ; E8 1E 0E
        or      ax, ax                          ; 0B C0
        je      L_0650                          ; 74 03
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
L_0650:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 9B 02 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_510                  ; 9A 79 01 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x22]            ; FF 76 DE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 0F 01
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
L_0677:
        push    si                              ; 56
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x16]            ; FF 76 EA
        cmp     word ptr [bp + 4], 8            ; 83 7E 04 08
        jne     L_06FA                          ; 75 70
        mov     ax, 1                           ; B8 01 00
        jmp     L_06FD                          ; EB 6E
L_068F:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0694:
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        mov     byte ptr [bp + di - 0xe], 0x20  ; C6 43 F2 20
        inc     word ptr [bp - 4]               ; FF 46 FC
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jl      L_0694                          ; 7C F0
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        sub     ax, word ptr [bx + di]          ; 2B 01
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        add     ax, 8                           ; 05 08 00
        and     al, 0xf8                        ; 24 F8
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
L_06C2:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], ss        ; 8C 56 E8
        jmp     L_0677                          ; EB AD
L_06CA:
        or      byte ptr [si + 6], 2            ; 80 4C 06 02
        mov     word ptr [bp + 4], 0xa0d        ; C7 46 04 0D 0A
L_06D3:
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jae     L_06E3                          ; 73 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_637F                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0703                          ; EB 20
L_06E3:
        test    word ptr [bp + 4], 0xff00       ; F7 46 04 00 FF
        jne     L_06EF                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_06F2                          ; EB 03
L_06EF:
        mov     ax, 2                           ; B8 02 00
L_06F2:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        lea     ax, [bp + 4]                    ; 8D 46 04
        jmp     L_06C2                          ; EB C8
L_06FA:
        mov     ax, 2                           ; B8 02 00
L_06FD:
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12EA                          ; E8 E7 0B
L_0703:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_070B -- offset 0x070B -- 52 instr
; Funcion mediana (52 instr, 2 calls).
; tags: far, medium
; callers: sub_07FE, sub_147F, sub_16A4, sub_19CB
; calls (intra): sub_077E, sub_10ED
;----------------------------------------------------------------------
L_070B:
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 58 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0755                          ; 7D 1E
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_10ED                          ; E8 AF 09
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        sub     ax, word ptr [bx + di]          ; 2B 01
        mul     word ptr [si + 0x1e]            ; F7 64 1E
        add     ax, cx                          ; 03 C1
        add     word ptr [bp - 8], ax           ; 01 46 F8
L_0755:
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, word ptr [si + 0x18]        ; 03 44 18
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
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
; sub_077E -- offset 0x077E -- 61 instr
; Dispatcher: tabla de decisiones cmp+jcc (61 instr).
; tags: dispatcher, far
; callers: sub_0521, sub_070B, sub_0887, sub_0B09, sub_0CC5, sub_147F (+3 mas)
;----------------------------------------------------------------------
L_077E:
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [si + 0x2e]        ; 8B 7C 2E
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        jne     L_079D                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_07F1                          ; EB 54
L_079D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [si + 0xc], ax         ; 39 44 0C
        jae     L_07AA                          ; 73 05
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        jmp     L_07F1                          ; EB 47
L_07AA:
        or      di, di                          ; 0B FF
        je      L_07C9                          ; 74 1B
        dec     di                              ; 4F
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [si + 0x2e], ax        ; 39 44 2E
        jg      L_07C7                          ; 7F 10
        mov     bx, word ptr [si + 0x38]        ; 8B 5C 38
        mov     ax, di                          ; 8B C7
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx], ax               ; 39 07
        jbe     L_07C9                          ; 76 02
L_07C7:
        sub     di, di                          ; 2B FF
L_07C9:
        mov     ax, word ptr [si + 0x38]        ; 8B 44 38
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        jmp     L_07DD                          ; EB 01
L_07DC:
        inc     di                              ; 47
L_07DD:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jbe     L_07DC                          ; 76 F0
        mov     word ptr [si + 0x2e], di        ; 89 7C 2E
        mov     ax, di                          ; 8B C7
L_07F1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07FE -- offset 0x07FE -- 56 instr
; Funcion mediana (56 instr, 2 calls).
; tags: medium
; callers: sub_0D24, sub_16A4
; calls (intra): sub_070B, sub_0987
;----------------------------------------------------------------------
L_07FE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0987                          ; E8 77 01
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [si + 0x38]        ; 03 5C 38
        mov     cx, word ptr [bx]               ; 8B 0F
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [si + 0x38]        ; 03 5C 38
        mov     di, word ptr [bx]               ; 8B 3F
        cmp     word ptr [bp + 0xa], di         ; 39 7E 0A
        jbe     L_0833                          ; 76 05
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_0835                          ; EB 02
L_0833:
        mov     ax, di                          ; 8B C7
L_0835:
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        ja      L_0843                          ; 77 03
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_0843:
        mov     word ptr [bp + 8], ax           ; 89 46 08
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jae     L_087D                          ; 73 32
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070B                          ; E8 B1 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mul     word ptr [si + 0x1e]            ; F7 64 1E
        add     ax, word ptr es:[bx]            ; 26 03 07
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, 1                           ; B8 01 00
        jmp     L_087F                          ; EB 02
L_087D:
        sub     ax, ax                          ; 2B C0
L_087F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0887 -- offset 0x0887 -- 109 instr
; Funcion compleja: 109 instrucciones, 1 llamadas, 7 branches.
; tags: complex, far
; callers: sub_0269, sub_12EA, sub_1B7E
; calls (intra): sub_077E
;----------------------------------------------------------------------
L_0887:
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
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 2]               ; FF 77 02
        call    far _SEG1_0E13                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08A7                          ; 75 03
        jmp     L_097B                          ; E9 D4 00
L_08A7:
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        jne     L_08B6                          ; 75 09
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_08B6:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 BD FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        add     ax, word ptr [bx + 0x22]        ; 03 47 22
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bx + 0x38]        ; 8B 5F 38
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [bx + si]          ; 2B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_08FC                          ; 7C 14
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        inc     ax                              ; 40
        jmp     L_0916                          ; EB 1A
L_08FC:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 0x24], ax        ; 39 47 24
        jle     L_091C                          ; 7E 15
        push    bx                              ; 53
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bx + 0x24]        ; 2B 47 24
L_0916:
        push    ax                              ; 50
        call    far _entry_517                  ; 9A 77 09 00 00 [FIXUP]
L_091C:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        test    word ptr [bx + 6], 0x200        ; F7 47 06 00 02
        je      L_097B                          ; 74 55
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bx + 0x2a]        ; 2B 47 2A
        sub     ax, word ptr [bx + 0x28]        ; 2B 47 28
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jle     L_094E                          ; 7E 18
        push    bx                              ; 53
        mov     ax, 0x114                       ; B8 14 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0x28]        ; 8B 47 28
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        push    ax                              ; 50
        jmp     L_0976                          ; EB 28
L_094E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, word ptr [bx + 0x2a]        ; 2B 47 2A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jge     L_097B                          ; 7D 1D
        push    bx                              ; 53
        mov     ax, 0x114                       ; B8 14 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0x28]        ; 8B 47 28
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     cx, word ptr [bp - 8]           ; 8B 4E F8
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
L_0976:
        call    far _entry_517                  ; 9A A9 00 00 00 [FIXUP]
L_097B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0987 -- offset 0x0987 -- 47 instr
; Funcion mediana (47 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_07FE, sub_0B09, sub_0FB6, sub_16A4, sub_17AC, sub_19CB (+1 mas)
; calls (intra): sub_1467
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0987:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        sub     ax, word ptr [di]               ; 2B 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 9F 05 00 00 [FIXUP]
        add     ax, word ptr [di + 2]           ; 03 45 02
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    L_1467                          ; E8 B2 0A
        or      ax, ax                          ; 0B C0
        je      L_09CC                          ; 74 13
        sub     word ptr [bp - 2], 2            ; 83 6E FE 02
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_1467                          ; E8 A2 0A
        or      ax, ax                          ; 0B C0
        je      L_09CC                          ; 74 03
        dec     word ptr [bp - 2]               ; FF 4E FE
L_09CC:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 53 06 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        dec     ax                              ; 48
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jg      L_09DF                          ; 7F 03
        dec     word ptr [bp - 2]               ; FF 4E FE
L_09DF:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_09E9                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_09EC                          ; EB 03
L_09E9:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_09EC:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09F4 -- offset 0x09F4 -- 116 instr
; Funcion compleja: 116 instrucciones, 1 llamadas, 5 branches.
; tags: complex
; callers: sub_0269
; calls (intra): sub_0D24
;----------------------------------------------------------------------
L_09F4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     di, word ptr [bp - 6]           ; 8B 7E FA
        sub     di, word ptr [si + 0x1e]        ; 2B 7C 1E
        cmp     word ptr [si + 0x1a], di        ; 39 7C 1A
        jge     L_0A22                          ; 7D 05
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        jmp     L_0A24                          ; EB 02
L_0A22:
        mov     ax, di                          ; 8B C7
L_0A24:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_5743                  ; 9A 66 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        sub     di, word ptr [si + 0xe]         ; 2B 7C 0E
        cmp     word ptr [si + 0x1c], di        ; 39 7C 1C
        jge     L_0A54                          ; 7D 05
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        jmp     L_0A56                          ; EB 02
L_0A54:
        mov     ax, di                          ; 8B C7
L_0A56:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_5743                  ; 9A F5 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    byte ptr [si + 6], 0x80         ; F6 44 06 80
        je      L_0AA5                          ; 74 2F
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     ax, 1                           ; 2D 01 00
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sub     ax, 1                           ; 2D 01 00
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _SEG1_6540                  ; 9A FF FF 00 00 [FIXUP]
L_0AA5:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
        idiv    cx                              ; F7 F9
        mov     word ptr [si + 0x28], ax        ; 89 44 28
        imul    cx                              ; F7 E9
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        inc     ax                              ; 40
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        cdq                                     ; 99
        mov     cx, word ptr [si + 0xe]         ; 8B 4C 0E
        idiv    cx                              ; F7 F9
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        or      ax, ax                          ; 0B C0
        jne     L_0AD6                          ; 75 05
        mov     word ptr [si + 0x22], 1         ; C7 44 22 01 00
L_0AD6:
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        imul    word ptr [si + 0x22]            ; F7 6C 22
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_0AF9                          ; 74 10
        push    word ptr [si + 2]               ; FF 74 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_5743                  ; 9A FF FF 00 00 [FIXUP]
L_0AF9:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 23 02
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B09 -- offset 0x0B09 -- 67 instr
; Funcion mediana (67 instr, 2 calls).
; tags: far, medium
; calls (intra): sub_077E, sub_0987
;----------------------------------------------------------------------
L_0B09:
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        je      L_0B34                          ; 74 13
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 53 FC
        push    ax                              ; 50
        call    L_0987                          ; E8 58 FE
L_0B2F:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0B83                          ; EB 4F
L_0B34:
        push    si                              ; 56
        push    word ptr [si + 0x10]            ; FF 74 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 41 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 35 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_0B60                          ; 75 0F
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0987                          ; E8 2F FE
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        add     ax, word ptr [si + 0x10]        ; 03 44 10
        jmp     L_0B2F                          ; EB CF
L_0B60:
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0987                          ; E8 20 FE
        mov     cx, word ptr [si + 0x10]        ; 8B 4C 10
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        sub     cx, word ptr [bx + di]          ; 2B 09
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        add     cx, word ptr [bx + di]          ; 03 09
        add     cx, ax                          ; 03 C8
        sub     cx, word ptr [si + 0x12]        ; 2B 4C 12
        mov     word ptr [bp - 4], cx           ; 89 4E FC
L_0B83:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B93 -- offset 0x0B93 -- 97 instr
; Iterador con instrucciones de string (movsb/scasb/...) (97 instr).
; tags: calls_gdi, calls_kernel, complex_iterator, far, string_op
; callers: sub_03A9, sub_12EA
; calls (intra): sub_147F, sub_16A4
; calls (inter): GDI.SELECTOBJECT, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0B93:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A DA 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 69 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A A5 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0C4A                          ; EB 7B
L_0BCF:
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jl      L_0C12                          ; 7C 3B
        push    si                              ; 56
        lea     di, [bp - 0xc]                  ; 8D 7E F4
        lea     si, [si + 0x16]                 ; 8D 74 16
        push    ss                              ; 16
        pop     es                              ; 07
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     si                              ; 5E
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        imul    word ptr [si + 0xe]             ; F7 6C 0E
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jge     L_0BF9                          ; 7D 05
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_0BF9:
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1B34                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C55                          ; EB 43
L_0C12:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, word ptr [bx + di]          ; 8B 01
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jge     L_0C3C                          ; 7D 12
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x12]            ; FF 76 EE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_16A4                          ; E8 68 0A
L_0C3C:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0C47                          ; 74 05
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
L_0C47:
        inc     word ptr [bp + 0xc]             ; FF 46 0C
L_0C4A:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jge     L_0C55                          ; 7D 03
        jmp     L_0BCF                          ; E9 7A FF
L_0C55:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A CF 09 00 00 [FIXUP]
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_147F                          ; E8 1D 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C7A -- offset 0x0C7A -- 31 instr
; Funcion mediana (31 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_0C55, sub_16A4
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0C7A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        add     si, word ptr [bp + 6]           ; 03 76 06
        dec     si                              ; 4E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
L_0C94:
        cmp     byte ptr [si], 0xd              ; 80 3C 0D
        je      L_0C9E                          ; 74 05
        cmp     byte ptr [si], 0xa              ; 80 3C 0A
        jne     L_0CA4                          ; 75 06
L_0C9E:
        dec     si                              ; 4E
        dec     word ptr [bp + 4]               ; FF 4E 04
        jmp     L_0C94                          ; EB F0
L_0CA4:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx]                ; 26 FF 37
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CC5 -- offset 0x0CC5 -- 44 instr
; Funcion mediana (44 instr, 1 calls).
; tags: far, medium
; callers: sub_17AC, sub_19CB
; calls (intra): sub_077E
;----------------------------------------------------------------------
L_0CC5:
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    si                              ; 56
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 99 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        sub     ax, word ptr [bx + di]          ; 2B 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     ax, word ptr [si + 0x26]        ; 3B 44 26
        jle     L_0D00                          ; 7E 03
        mov     word ptr [si + 0x26], ax        ; 89 44 26
L_0D00:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_509                  ; 9A FF FF 00 00 [FIXUP]
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
; sub_0D24 -- offset 0x0D24 -- 266 instr
; Dispatcher: tabla de decisiones cmp+jcc (266 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0269, sub_09F4, sub_1556, sub_17AC, sub_1D5C
; calls (intra): sub_07FE, sub_11D1, sub_1672
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0D24:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [si + 0x28], 0         ; 83 7C 28 00
        jne     L_0D4A                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0ECC                          ; E9 82 01
L_0D4A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0D55                          ; 75 05
        mov     word ptr [si + 0x26], 0         ; C7 44 26 00 00
L_0D55:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 4A 10 00 00 [FIXUP]
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_0D74:
        cmp     word ptr [bp - 0xa], 3          ; 83 7E F6 03
        jl      L_0D7D                          ; 7C 03
        jmp     L_0E3B                          ; E9 BE 00
L_0D7D:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp - 0xa], 1          ; 83 7E F6 01
        jne     L_0D99                          ; 75 11
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        cmp     byte ptr [bx + 1], 0xd          ; 80 7F 01 0D
        jne     L_0D99                          ; 75 03
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0D99:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0DAC                          ; 75 0D
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_0E08                          ; 74 62
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0E08                          ; 74 5C
L_0DAC:
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0DCC                          ; 7E 15
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1672                          ; E8 B4 08
        or      ax, ax                          ; 0B C0
        jne     L_0DCC                          ; 75 0A
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 35 0E 00 00 [FIXUP]
        jmp     L_0E62                          ; E9 96 00
L_0DCC:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        add     word ptr [bp - 2], ax           ; 01 46 FE
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_0E24                          ; 74 40
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [di], ax               ; 89 05
L_0DF0:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [di]               ; 8B 05
        sub     ax, word ptr [di - 2]           ; 2B 45 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, word ptr [si + 0x26]        ; 3B 44 26
        jle     L_0E08                          ; 7E 03
        mov     word ptr [si + 0x26], ax        ; 89 44 26
L_0E08:
        push    si                              ; 56
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        push    word ptr [bx + di]              ; FF 31
        call    L_11D1                          ; E8 B3 03
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_0D74                          ; E9 50 FF
L_0E24:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0DF0                          ; 74 C6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0DF0                          ; 7E BE
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 3E 0E 00 00 [FIXUP]
        jmp     L_0EAD                          ; EB 72
L_0E3B:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 58 0C 00 00 [FIXUP]
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [si + 0x20], ax        ; 39 44 20
        jle     L_0E90                          ; 7E 3D
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    ax                              ; 50
        call    L_1672                          ; E8 14 08
        or      ax, ax                          ; 0B C0
        jne     L_0E90                          ; 75 2E
L_0E62:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        push    word ptr [si + 4]               ; FF 74 04
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    word ptr [si + 2]               ; FF 74 02
        mov     ax, 0xfff4                      ; B8 F4 FF
        push    ax                              ; 50
        call    far _SEG1_6221                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     dx, dx                          ; 2B D2
        or      dh, 5                           ; 80 CE 05
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0ECC                          ; EB 3C
L_0E90:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_0EAD                          ; 74 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [di], ax               ; 89 05
L_0EAD:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [di]               ; 8B 05
        sub     ax, word ptr [di - 2]           ; 2B 45 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     ax, word ptr [si + 0x26]        ; 3B 44 26
        jle     L_0EC5                          ; 7E 03
        mov     word ptr [si + 0x26], ax        ; 89 44 26
L_0EC5:
        and     byte ptr [si + 6], 0xfd         ; 80 64 06 FD
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0ECC:
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
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        je      L_0EEF                          ; 74 03
        jmp     L_0FA9                          ; E9 BA 00
L_0EEF:
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_0EFF                          ; 75 0A
        test    word ptr [si + 6], 0x1000       ; F7 44 06 00 10
        jne     L_0EFF                          ; 75 03
        jmp     L_0FA9                          ; E9 AA 00
L_0EFF:
        push    word ptr [si + 2]               ; FF 74 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A 08 0A 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [si + 0x16]                 ; 8D 44 16
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A 5D 0F 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0F34                          ; 7E 03
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0F34:
        mov     di, word ptr [si + 0x24]        ; 8B 7C 24
        jmp     L_0FA4                          ; EB 6B
L_0F39:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_07FE                          ; E8 B5 F8
        or      ax, ax                          ; 0B C0
        je      L_0F6E                          ; 74 21
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A 92 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A 9F 0F 00 00 [FIXUP]
L_0F6E:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_07FE                          ; E8 80 F8
        or      ax, ax                          ; 0B C0
        je      L_0FA3                          ; 74 21
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A FF FF 00 00 [FIXUP]
L_0FA3:
        inc     di                              ; 47
L_0FA4:
        cmp     word ptr [bp - 0xc], di         ; 39 7E F4
        jg      L_0F39                          ; 7F 90
L_0FA9:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FB6 -- offset 0x0FB6 -- 136 instr
; Dispatcher: tabla de decisiones cmp+jcc (136 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_13C8
; calls (intra): sub_0987, sub_10ED, sub_1467
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0FB6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        jmp     L_0FD1                          ; EB 0B
L_0FC6:
        cmp     byte ptr [si], 0xd              ; 80 3C 0D
        jne     L_0FD0                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0FDD                          ; EB 0D
L_0FD0:
        inc     si                              ; 46
L_0FD1:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        or      ax, ax                          ; 0B C0
        jg      L_0FC6                          ; 7F EB
        sub     ax, ax                          ; 2B C0
L_0FDD:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_1008                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_10E0                          ; E9 D8 00
L_1008:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [si + 0x18]        ; 2B 44 18
        cdq                                     ; 99
        mov     cx, word ptr [si + 0xe]         ; 8B 4C 0E
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     di, word ptr [si + 0x20]        ; 8B 7C 20
        dec     di                              ; 4F
        cmp     ax, di                          ; 3B C7
        jl      L_102A                          ; 7C 0B
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 6], di           ; 89 7E FA
        jmp     L_1040                          ; EB 16
L_102A:
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0987                          ; E8 56 F9
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     cx, word ptr [bx + di]          ; 8B 09
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0xc], cx         ; 89 4E F4
L_1040:
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_1085                          ; 74 3E
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A C6 0B 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_1467                          ; E8 0E 04
        or      ax, ax                          ; 0B C0
        jne     L_107E                          ; 75 21
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        cmp     byte ptr [bx - 1], 0x20         ; 80 7F FF 20
        jne     L_107E                          ; 75 18
        mov     ax, 0x27                        ; B8 27 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A 96 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_107E                          ; 7C 0B
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_107E                          ; 7D 03
        dec     word ptr [bp - 0xc]             ; FF 4E F4
L_107E:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A C5 0D 00 00 [FIXUP]
L_1085:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jge     L_109F                          ; 7D 05
L_109A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_10E0                          ; EB 41
L_109F:
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_10ED                          ; E8 47 00
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [si + 0x16]        ; 2B 44 16
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_10CD                          ; 74 0A
        push    si                              ; 56
        push    ax                              ; 50
        call    far _entry_496                  ; 9A D5 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_10CD:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jg      L_10E0                          ; 7F 0B
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_109A                          ; 7C BD
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_10E0:
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
; sub_10ED -- offset 0x10ED -- 97 instr
; Funcion compleja: 97 instrucciones, 0 llamadas, 6 branches.
; tags: complex, far
; callers: sub_070B, sub_0FB6
;----------------------------------------------------------------------
L_10ED:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_1106                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1139                          ; EB 33
L_1106:
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        sub     ax, word ptr [di]               ; 2B 05
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        imul    word ptr [si + 0x1e]            ; F7 6C 1E
        mov     cx, word ptr [si + 0x1a]        ; 8B 4C 1A
        sub     cx, ax                          ; 2B C8
        sub     cx, word ptr [si + 0x16]        ; 2B 4C 16
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        cmp     word ptr [bp - 2], 1            ; 83 7E FE 01
        jne     L_1136                          ; 75 0C
        mov     cx, 2                           ; B9 02 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_1136:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_1139:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        test    word ptr [si + 6], 0x100        ; F7 44 06 00 01
        je      L_11C5                          ; 74 6C
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_853B                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x115                       ; B8 15 01
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1173                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_1176                          ; EB 03
L_1173:
        mov     ax, 3                           ; B8 03 00
L_1176:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_517                  ; 9A 18 09 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_518                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A AB 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_11B5                          ; 7D 17
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_11AC                          ; 74 08
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_11B2                          ; EB 06
L_11AC:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_11B2:
        mov     word ptr [si + 0x14], ax        ; 89 44 14
L_11B5:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_510                  ; 9A 62 06 00 00 [FIXUP]
L_11C5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_11D1 -- offset 0x11D1 -- 111 instr
; Dispatcher: tabla de decisiones cmp+jcc (111 instr).
; tags: dispatcher
; callers: sub_0D24
; calls (intra): sub_1467
;----------------------------------------------------------------------
L_11D1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_1202                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1204                          ; EB 02
L_1202:
        sub     ax, ax                          ; 2B C0
L_1204:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_121A                          ; 7C 06
        mov     ax, 3                           ; B8 03 00
        jmp     L_12E2                          ; E9 C8 00
L_121A:
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        jne     L_129C                          ; 75 7B
        cmp     byte ptr [di], 0xd              ; 80 3D 0D
        jne     L_122E                          ; 75 08
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_12D2                          ; E9 A4 00
L_122E:
        mov     al, byte ptr [di]               ; 8A 05
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_51                   ; 9A 80 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_123F                          ; 74 04
        inc     word ptr [bp - 2]               ; FF 46 FE
        inc     di                              ; 47
L_123F:
        inc     word ptr [bp - 2]               ; FF 46 FE
        inc     di                              ; 47
        jmp     L_12D2                          ; E9 8C 00
L_1246:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1269                          ; 74 1D
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_1276                          ; 7C 22
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_1261                          ; 7D 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_1264                          ; EB 03
L_1261:
        mov     ax, 3                           ; B8 03 00
L_1264:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_12B1                          ; EB 48
L_1269:
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_1276                          ; 7E 05
L_1271:
        mov     ax, 2                           ; B8 02 00
        jmp     L_12E2                          ; EB 6C
L_1276:
        cmp     byte ptr [di], 0x20             ; 80 3D 20
        je      L_12B1                          ; 74 36
        mov     al, byte ptr [di]               ; 8A 05
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_51                   ; 9A 52 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1292                          ; 74 0A
        inc     di                              ; 47
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        inc     word ptr [bp - 2]               ; FF 46 FE
L_1292:
        inc     di                              ; 47
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        inc     word ptr [bp - 2]               ; FF 46 FE
L_129C:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_12B1                          ; 7D 0D
        push    di                              ; 57
        call    L_1467                          ; E8 BF 01
        or      ax, ax                          ; 0B C0
        je      L_1246                          ; 74 9A
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
L_12B1:
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jg      L_1271                          ; 7F B8
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_12D2                          ; 75 13
        jmp     L_12CD                          ; EB 0C
L_12C1:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_12D2                          ; 7D 09
        inc     di                              ; 47
        inc     word ptr [bp - 2]               ; FF 46 FE
L_12CD:
        cmp     byte ptr [di], 0x20             ; 80 3D 20
        je      L_12C1                          ; 74 EF
L_12D2:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], di               ; 89 3F
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_12E2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12EA -- offset 0x12EA -- 95 instr
; Dispatcher: tabla de decisiones cmp+jcc (95 instr).
; tags: dispatcher, far
; callers: sub_0521, sub_1B7E
; calls (intra): sub_0887, sub_0B93, sub_17AC, sub_1B49
;----------------------------------------------------------------------
L_12EA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        call    far _entry_511                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_1349                          ; 74 27
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jg      L_133F                          ; 7F 17
        cmp     word ptr [bp - 8], 0x20         ; 83 7E F8 20
        je      L_133F                          ; 74 11
        cmp     byte ptr [bp - 8], 0xd          ; 80 7E F8 0D
        je      L_133F                          ; 74 0B
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jbe     L_1349                          ; 76 0A
L_133F:
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1B49                          ; E8 03 08
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
L_1349:
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_17AC                          ; E8 4E 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_13A6                          ; 7C 41
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_1376                          ; 7E 09
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1376:
        push    si                              ; 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp + 0xe]         ; 2B 46 0E
        cmp     ax, 1                           ; 3D 01 00
        jle     L_138F                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_139C                          ; EB 0D
L_138F:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        sub     ax, word ptr [bx + di]          ; 2B 01
L_139C:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B93                          ; E8 ED F7
L_13A6:
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_508                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 CC F4
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13C8 -- offset 0x13C8 -- 71 instr
; Funcion mediana (71 instr, 4 calls).
; tags: calls_kernel, far, medium
; callers: sub_17AC, sub_19CB
; calls (intra): sub_0FB6
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_13C8:
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1455                          ; 74 6E
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A C5 14 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        add     ax, di                          ; 03 C7
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FB6                          ; E8 B8 FB
        or      ax, ax                          ; 0B C0
        je      L_1406                          ; 74 04
        or      byte ptr [si + 6], 2            ; 80 4C 06 02
L_1406:
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        add     ax, di                          ; 03 C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        add     ax, di                          ; 03 C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     word ptr [si + 0xc], ax         ; 29 44 0C
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A D8 14 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        cmp     ax, 0x20                        ; 3D 20 00
        jle     L_144C                          ; 7E 14
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        add     ax, 0x10                        ; 05 10 00
        mov     word ptr [si + 0x2c], ax        ; 89 44 2C
        push    word ptr [si]                   ; FF 34
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 8C 16 00 00 [FIXUP]
L_144C:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0x14], ax        ; 89 44 14
L_1455:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1467 -- offset 0x1467 -- 11 instr
; Funcion hoja (no llama a otras, 11 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0521, sub_0987, sub_0FB6, sub_11D1, sub_147F
;----------------------------------------------------------------------
L_1467:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     byte ptr [bx], 0xd              ; 80 3F 0D
        jne     L_1477                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1479                          ; EB 02
L_1477:
        sub     ax, ax                          ; 2B C0
L_1479:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_147F -- offset 0x147F -- 88 instr
; Dispatcher: tabla de decisiones cmp+jcc (88 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0B93
; calls (intra): sub_070B, sub_077E, sub_1467
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_147F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_149A                          ; 75 03
        jmp     L_1549                          ; E9 AF 00
L_149A:
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_14A7                          ; 75 05
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        jmp     L_14AA                          ; EB 03
L_14A7:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
L_14AA:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 CA F2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1505                          ; 74 43
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A A6 15 00 00 [FIXUP]
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_1467                          ; E8 95 FF
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A FC 15 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jne     L_1505                          ; 75 23
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        je      L_1505                          ; 74 1C
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bx + di], ax          ; 39 01
        jne     L_1505                          ; 75 0D
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_1505                          ; 7D 05
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_1505:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070B                          ; E8 F8 F1
        test    word ptr [si + 6], 0x200        ; F7 44 06 00 02
        jne     L_152E                          ; 75 14
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_152E                          ; 7E 0C
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
L_152E:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        add     ax, word ptr [si + 0x22]        ; 03 44 22
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jg      L_153E                          ; 7F 05
        mov     word ptr [bp - 0xa], 0x7f00     ; C7 46 F6 00 7F
L_153E:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
L_1549:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1556 -- offset 0x1556 -- 114 instr
; Dispatcher: tabla de decisiones cmp+jcc (114 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0269, sub_17AC
; calls (intra): sub_0D24
; calls (inter): KERNEL.GLOBALHANDLE, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1556:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], ss        ; 8C 56 E6
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        dec     ax                              ; 48
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jge     L_158C                          ; 7D 06
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_158C:
        sub     di, di                          ; 2B FF
L_158E:
        mov     byte ptr [bp + di - 0x12], 0x20 ; C6 43 EE 20
        inc     di                              ; 47
        cmp     di, 7                           ; 83 FF 07
        jl      L_158E                          ; 7C F6
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL.GLOBALHANDLE         ; 9A 3E 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 24 16 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [si + 0x38]        ; 03 44 38
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_163D                          ; E9 82 00
L_15BB:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        sub     word ptr [bp - 0x16], 2         ; 83 6E EA 02
        mov     ax, word ptr [bx]               ; 8B 07
        dec     ax                              ; 48
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
L_15D0:
        cmp     word ptr [bp - 0x18], di        ; 39 7E E8
        jl      L_163D                          ; 7C 68
        mov     bx, word ptr [bp - 0x1e]        ; 8B 5E E2
        mov     al, byte ptr [bx + di]          ; 8A 01
        cwde                                    ; 98
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 9                           ; 3D 09 00
        jne     L_162D                          ; 75 4A
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        add     ax, 8                           ; 05 08 00
        and     al, 0xf8                        ; 24 F8
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        sub     ax, di                          ; 2B C7
        dec     ax                              ; 48
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     byte ptr [bx + di], 0x20        ; C6 01 20
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 4E 16 00 00 [FIXUP]
        lea     ax, [di + 1]                    ; 8D 45 01
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_509                  ; 9A 13 0D 00 00 [FIXUP]
        add     di, word ptr [bp - 0x14]        ; 03 7E EC
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bp - 0x18], ax        ; 01 46 E8
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 65 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        jmp     L_163A                          ; EB 0D
L_162D:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_51                   ; 9A 33 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_163A                          ; 74 01
        inc     di                              ; 47
L_163A:
        inc     di                              ; 47
        jmp     L_15D0                          ; EB 93
L_163D:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     word ptr [bp + 6]               ; FF 4E 06
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jle     L_164B                          ; 7E 03
        jmp     L_15BB                          ; E9 70 FF
L_164B:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 81 10 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0D24                          ; E8 BF F6
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
; sub_1672 -- offset 0x1672 -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_kernel, small
; callers: sub_0D24
; calls (inter): KERNEL.LOCALREALLOC
;----------------------------------------------------------------------
L_1672:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [si + 0x38]            ; FF 74 38
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A BA 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_169A                          ; 74 03
        mov     word ptr [si + 0x38], ax        ; 89 44 38
L_169A:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_16A4 -- offset 0x16A4 -- 114 instr
; Dispatcher: tabla de decisiones cmp+jcc (114 instr).
; tags: dispatcher, far
; callers: sub_0B93
; calls (intra): sub_070B, sub_07FE, sub_0987, sub_0C7A
;----------------------------------------------------------------------
L_16A4:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_16D0                          ; 74 0D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [di + 0x38]        ; 03 5D 38
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_16D0:
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0987                          ; E8 B0 F2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        shl     bx, 1                           ; D1 E3
        add     bx, word ptr [di + 0x38]        ; 03 5D 38
        mov     cx, word ptr [bx]               ; 8B 0F
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 0x1a], cx        ; 89 4E E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     cx, ax                          ; 3B C8
        ja      L_16F5                          ; 77 05
        mov     ax, cx                          ; 8B C1
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_16F5:
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070B                          ; E8 08 F0
        mov     ax, word ptr [di + 0x1a]        ; 8B 45 1A
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [di + 0xe]         ; 03 45 0E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [di + 0x1e]        ; 8B 45 1E
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_1729                          ; 74 05
        mov     word ptr [bp - 0x16], 0x8300    ; C7 46 EA 00 83
L_1729:
        push    word ptr [di + 4]               ; FF 75 04
        push    word ptr [di + 2]               ; FF 75 02
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1B34                  ; 9A 0C 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jle     L_1761                          ; 7E 17
        push    si                              ; 56
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        push    ax                              ; 50
        call    L_0C7A                          ; E8 19 F5
L_1761:
        test    word ptr [di + 6], 0x1000       ; F7 45 06 00 10
        jne     L_176E                          ; 75 06
        test    byte ptr [di + 6], 8            ; F6 45 06 08
        je      L_179F                          ; 74 31
L_176E:
        mov     ax, word ptr [di + 0x10]        ; 8B 45 10
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jbe     L_179F                          ; 76 29
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [di + 0x12], ax        ; 39 45 12
        jb      L_179F                          ; 72 21
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [di + 0x10]            ; FF 75 10
        push    word ptr [di + 0x12]            ; FF 75 12
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_07FE                          ; E8 6E F0
        or      ax, ax                          ; 0B C0
        je      L_179F                          ; 74 0B
        push    si                              ; 56
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A 6A 0F 00 00 [FIXUP]
L_179F:
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
; sub_17AC -- offset 0x17AC -- 151 instr
; Dispatcher: tabla de decisiones cmp+jcc (151 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_12EA
; calls (intra): sub_077E, sub_0987, sub_0CC5, sub_0D24, sub_13C8, sub_1556 (+4 mas)
; calls (inter): KERNEL.GLOBALHANDLE
;----------------------------------------------------------------------
L_17AC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_17D6                          ; 75 0D
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_17D6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_17D8                          ; EB 02
L_17D6:
        sub     ax, ax                          ; 2B C0
L_17D8:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 9A EF
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1805                          ; 74 17
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        inc     ax                              ; 40
        cmp     ax, word ptr [si + 0x12]        ; 3B 44 12
        jb      L_1805                          ; 72 0E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0xd           ; 26 80 3F 0D
        je      L_1805                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1807                          ; EB 02
L_1805:
        sub     ax, ax                          ; 2B C0
L_1807:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far KERNEL.GLOBALHANDLE         ; 9A 1F 1A 00 00 [FIXUP]
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_1824                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1826                          ; EB 02
L_1824:
        sub     ax, ax                          ; 2B C0
L_1826:
        push    ax                              ; 50
        call    L_190B                          ; E8 E1 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_1834                          ; 75 03
        jmp     L_18FC                          ; E9 C8 00
L_1834:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13C8                          ; E8 8E FB
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0CC5                          ; E8 79 F4
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        test    byte ptr [si + 6], 2            ; F6 44 06 02
        jne     L_1863                          ; 75 0E
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1F00                          ; E8 9D 06
L_1863:
        test    word ptr [si + 6], 0x4000       ; F7 44 06 00 40
        jne     L_1876                          ; 75 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1876                          ; 74 06
        test    byte ptr [si + 6], 2            ; F6 44 06 02
        je      L_1891                          ; 74 1B
L_1876:
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0D24                          ; E8 A4 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_1891                          ; 7E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_1891:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_18A4                          ; 75 0D
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1556                          ; E8 B2 FC
L_18A4:
        test    word ptr [si + 6], 0x100        ; F7 44 06 00 01
        jne     L_18C6                          ; 75 1B
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        cmp     word ptr [si + 0x20], ax        ; 39 44 20
        jg      L_18D4                          ; 7F 21
        cmp     word ptr [si + 0x20], ax        ; 39 44 20
        jne     L_18C6                          ; 75 0E
        push    si                              ; 56
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        dec     ax                              ; 48
        push    ax                              ; 50
        call    L_0987                          ; E8 C6 F0
        cmp     ax, word ptr [si + 0x28]        ; 3B 44 28
        jg      L_18D4                          ; 7F 0E
L_18C6:
        cmp     word ptr [si + 0x30], 0         ; 83 7C 30 00
        je      L_18FC                          ; 74 30
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        cmp     word ptr [si + 0xc], ax         ; 39 44 0C
        jle     L_18FC                          ; 7E 28
L_18D4:
        push    si                              ; 56
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_19CB                          ; E8 EA 00
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 3B F4
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_637F                  ; 9A DD 06 00 00 [FIXUP]
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1CA8                          ; E8 AC 03
L_18FC:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_190B -- offset 0x190B -- 69 instr
; Funcion mediana (69 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_17AC
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_190B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALLOCK            ; 9A 2C 19 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 7C 19 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALUNLOCK          ; 9A B6 19 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1961                          ; 74 08
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_19BA                          ; 75 59
L_1961:
        push    word ptr [si + 0x36]            ; FF 74 36
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 48 14 00 00 [FIXUP]
        mov     word ptr [si + 0x36], ax        ; 89 44 36
        or      ax, ax                          ; 0B C0
        je      L_19BA                          ; 74 40
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A ED 19 00 00 [FIXUP]
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _SEG1_5284                  ; 9A 33 1B 00 00 [FIXUP]
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALUNLOCK          ; 9A BD 19 00 00 [FIXUP]
L_19BA:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 48 1A 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x36]        ; 8B 44 36
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19CB -- offset 0x19CB -- 120 instr
; Dispatcher: tabla de decisiones cmp+jcc (120 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_17AC
; calls (intra): sub_070B, sub_077E, sub_0987, sub_0CC5, sub_13C8
; calls (inter): KERNEL.GLOBALHANDLE, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_19CB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_19E9                          ; 74 0E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     word ptr [si + 0x10], ax        ; 29 44 10
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13C8                          ; E8 E1 F9
        jmp     L_1A4C                          ; EB 63
L_19E9:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALLOCK            ; 9A F9 1A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        add     word ptr [bp - 8], 2            ; 83 46 F8 02
        mov     ax, word ptr [bx]               ; 8B 07
        sub     word ptr [si + 0x10], ax        ; 29 44 10
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        push    ds                              ; 1E
        call    far KERNEL.GLOBALHANDLE         ; 9A 9C 15 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13C8                          ; E8 9C F9
        push    si                              ; 56
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0CC5                          ; E8 8A F2
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LOCALUNLOCK          ; 9A 3A 1B 00 00 [FIXUP]
L_1A4C:
        pop     si                              ; 5E
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
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_1A72                          ; 75 05
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        jmp     L_1A75                          ; EB 03
L_1A72:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
L_1A75:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 FF EC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_1AA2                          ; 7D 15
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_1AD1                          ; 74 3E
        push    si                              ; 56
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     ax, word ptr [bx + di]          ; 8B 01
        dec     ax                              ; 48
        push    ax                              ; 50
        jmp     L_1AC8                          ; EB 26
L_1AA2:
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_1AD1                          ; 7D 27
        push    si                              ; 56
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0987                          ; E8 D6 EE
        imul    word ptr [si + 0x1e]            ; F7 6C 1E
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     ax, word ptr es:[bx]            ; 26 3B 07
        jge     L_1AD1                          ; 7D 15
        push    si                              ; 56
        mov     di, word ptr [bp - 6]           ; 8B 7E FA
        shl     di, 1                           ; D1 E7
        mov     bx, word ptr [si + 0x38]        ; 8B 5C 38
        push    word ptr [bx + di + 2]          ; FF 71 02
L_1AC8:
        push    es                              ; 06
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070B                          ; E8 3A EC
L_1AD1:
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
; sub_1ADE -- offset 0x1ADE -- 42 instr
; Funcion mediana (42 instr, 3 calls).
; tags: calls_kernel, medium
; calls (intra): sub_0987
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1ADE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jge     L_1B3E                          ; 7D 48
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A EA 13 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0x38]        ; 8B 7C 38
        mov     cx, word ptr [bx + di]          ; 8B 09
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0987                          ; E8 71 EE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jae     L_1B24                          ; 73 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1B24:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_5284                  ; 9A 1C 14 00 00 [FIXUP]
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 29 14 00 00 [FIXUP]
L_1B3E:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B49 -- offset 0x1B49 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_12EA
;----------------------------------------------------------------------
L_1B49:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1B73                          ; 74 1C
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        shl     di, 1                           ; D1 E7
        add     di, word ptr [si + 0x38]        ; 03 7C 38
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        add     ax, word ptr [di - 2]           ; 03 45 FE
        sub     ax, word ptr [di]               ; 2B 05
        mov     cx, word ptr [si + 0x10]        ; 8B 4C 10
        sub     cx, word ptr [di]               ; 2B 0D
        cmp     ax, cx                          ; 3B C1
        jl      L_1B73                          ; 7C 03
        dec     word ptr [bp + 4]               ; FF 4E 04
L_1B73:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B7E -- offset 0x1B7E -- 114 instr
; Funcion compleja: 114 instrucciones, 7 llamadas, 3 branches.
; tags: calls_kernel, complex
; callers: sub_0269
; calls (intra): sub_077E, sub_0887, sub_12EA
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1B7E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALLOCK            ; 9A FB 1B 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 2], -1           ; 83 7F 02 FF
        jne     L_1BA4                          ; 75 03
        jmp     L_1C95                          ; E9 F1 00
L_1BA4:
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        add     word ptr [bp - 0xe], 2          ; 83 46 F2 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jle     L_1BDC                          ; 7E 03
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_1BDC:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOCALALLOC           ; 9A DD 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_1BF2                          ; 75 03
        jmp     L_1C95                          ; E9 A3 00
L_1BF2:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALLOCK            ; 9A 4A 1C 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _SEG1_5284                  ; 9A ED 1D 00 00 [FIXUP]
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALUNLOCK          ; 9A 5E 1C 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_510                  ; 9A 7A 1C 00 00 [FIXUP]
        or      byte ptr [si + 6], 2            ; 80 4C 06 02
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [si + 0x10]            ; FF 74 10
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_077E                          ; E8 49 EB
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12EA                          ; E8 A4 F6
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALLOCK            ; 9A BD 1C 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, ax                          ; 8B D8
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALUNLOCK          ; 9A 99 1C 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    si                              ; 56
        push    ax                              ; 50
        push    word ptr [si + 0x12]            ; FF 74 12
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_510                  ; 9A C1 11 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0887                          ; E8 FF EB
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
L_1C95:
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALUNLOCK          ; 9A F8 1C 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1CA8 -- offset 0x1CA8 -- 38 instr
; Funcion mediana (38 instr, 2 calls).
; tags: calls_kernel, far, medium
; callers: sub_0521, sub_17AC
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1CA8:
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
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALLOCK            ; 9A 16 1D 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1CFC                          ; 74 34
        mov     bx, ax                          ; 8B D8
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     word ptr [bx], 0                ; C7 07 00 00
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     word ptr [bx], 0                ; C7 07 00 00
        push    word ptr [si + 0x36]            ; FF 74 36
        call    far KERNEL.LOCALUNLOCK          ; 9A 50 1D 00 00 [FIXUP]
L_1CFC:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D08 -- offset 0x1D08 -- 36 instr
; Iterador con instrucciones de string (movsb/scasb/...) (36 instr).
; tags: calls_kernel, iterator, string_op
; callers: sub_0269, sub_1D5C
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1D08:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALLOCK            ; 9A CD 1D 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     si, di                          ; 8B F7
        or      si, si                          ; 0B F6
        je      L_1D54                          ; 74 32
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        jmp     L_1D45                          ; EB 16
L_1D2F:
        cmp     word ptr [si], 0xd0d            ; 81 3C 0D 0D
        je      L_1D3B                          ; 74 06
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        jmp     L_1D45                          ; EB 0A
L_1D3B:
        add     si, 3                           ; 83 C6 03
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        sub     word ptr [bx + 0xc], 3          ; 83 6F 0C 03
L_1D45:
        cmp     word ptr [bp - 2], si           ; 39 76 FE
        ja      L_1D2F                          ; 77 E5
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALUNLOCK          ; 9A AD 1E 00 00 [FIXUP]
L_1D54:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D5C -- offset 0x1D5C -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0269
; calls (intra): sub_0D24, sub_1D08
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALREALLOC, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1D5C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_1D7F                          ; 75 15
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1D08                          ; E8 98 FF
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 AA EF
L_1D7A:
        sub     ax, ax                          ; 2B C0
        jmp     L_1EBE                          ; E9 3F 01
L_1D7F:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    word ptr [bx + 6], 0x4000       ; F7 47 06 00 40
        je      L_1D7A                          ; 74 F1
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [bx + 0x20]            ; F7 6F 20
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bx]                   ; FF 37
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bx + 0x2c], ax        ; 89 47 2C
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALREALLOC         ; 9A 6F 19 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1D7A                          ; 74 D0
        sub     word ptr [bp - 0xc], 3          ; 83 6E F4 03
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx + 0x38]        ; 8B 5F 38
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jle     L_1D7A                          ; 7E B0
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALLOCK            ; 9A D3 1E 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     di, ax                          ; 8B F8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        add     si, ax                          ; 03 F0
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _SEG1_5284                  ; 9A 8A 1E 00 00 [FIXUP]
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        add     ax, word ptr [bp - 2]           ; 03 46 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     di, word ptr [bp - 4]           ; 8B 7E FC
        add     di, word ptr [bp - 0x16]        ; 03 7E EA
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_1E94                          ; E9 86 00
L_1E0E:
        mov     bx, word ptr [bx + 0x38]        ; 8B 5F 38
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp - 2]           ; 03 76 FE
        cmp     word ptr [di - 2], 0xa0d        ; 81 7D FE 0D 0A
        je      L_1E56                          ; 74 2D
        jmp     L_1E45                          ; EB 1A
L_1E2B:
        cmp     word ptr [bp - 0xa], si         ; 39 76 F6
        jbe     L_1E4A                          ; 76 1A
        mov     al, byte ptr [si]               ; 8A 04
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_51                   ; 9A 31 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1E41                          ; 74 04
        inc     si                              ; 46
        inc     word ptr [bp - 0x14]            ; FF 46 EC
L_1E41:
        inc     si                              ; 46
        inc     word ptr [bp - 0x14]            ; FF 46 EC
L_1E45:
        cmp     byte ptr [si], 0x20             ; 80 3C 20
        je      L_1E2B                          ; 74 E1
L_1E4A:
        mov     byte ptr [di], 0xd              ; C6 05 0D
        inc     di                              ; 47
        mov     byte ptr [di], 0xd              ; C6 05 0D
        inc     di                              ; 47
        mov     byte ptr [di], 0xa              ; C6 05 0A
        inc     di                              ; 47
L_1E56:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx + 0x38]        ; 8B 5F 38
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jne     L_1E7E                          ; 75 03
        dec     word ptr [bp - 8]               ; FF 4E F8
L_1E7E:
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_5284                  ; 9A AE 19 00 00 [FIXUP]
        add     di, word ptr [bp - 8]           ; 03 7E F8
        inc     word ptr [bp - 6]               ; FF 46 FA
L_1E94:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bx + 0x20], ax        ; 39 47 20
        jle     L_1EA2                          ; 7E 03
        jmp     L_1E0E                          ; E9 6C FF
L_1EA2:
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALUNLOCK          ; 9A F3 1E 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D24                          ; E8 69 EE
        mov     ax, 1                           ; B8 01 00
L_1EBE:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1EC6 -- offset 0x1EC6 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: calls_kernel, small
; callers: sub_0269
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_1EC6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        push    word ptr [bx + 0x36]            ; FF 77 36
        call    far KERNEL.LOCALLOCK            ; 9A 22 19 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 2], -1           ; 83 7F 02 FF
        je      L_1EE7                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1EE9                          ; EB 02
L_1EE7:
        sub     ax, ax                          ; 2B C0
L_1EE9:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        push    word ptr [bx + 0x36]            ; FF 77 36
        call    far KERNEL.LOCALUNLOCK          ; 9A 4F 19 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1F00 -- offset 0x1F00 -- 35 instr
; Iterador con instrucciones de string (movsb/scasb/...) (35 instr).
; tags: iterator, loop, string_op
; callers: sub_17AC
;----------------------------------------------------------------------
L_1F00:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     si, word ptr [di + 0x38]        ; 8B 75 38
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     si, ax                          ; 03 F0
        add     si, ax                          ; 03 F0
        mov     cx, word ptr [di + 0x20]        ; 8B 4D 20
        mov     di, si                          ; 8B FE
        push    ds                              ; 1E
        pop     es                              ; 07
        inc     cx                              ; 41
        sub     cx, ax                          ; 2B C8
        jbe     L_1F2E                          ; 76 06
L_1F28:
        lodsw   ax, word ptr [si]               ; AD
        add     ax, dx                          ; 03 C2
        stosw   word ptr es:[di], ax            ; AB
        loop    L_1F28                          ; E2 FA
L_1F2E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

USER_TEXT ENDS

        END
