; AUTO-GENERATED from original GDI segment 27
; segment_size=1061 bytes, flags=0xf130
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
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [0x3d8]                         ; FF 1E D8 03
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jle     L_0031                          ; 7E 03
        jmp     L_012C                          ; E9 FB 00
L_0031:
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0045                          ; 74 0B
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
L_0045:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        lcall   [0x3e0]                         ; FF 1E E0 03
        mov     si, ax                          ; 8B F0
        test    si, 0xf                         ; F7 C6 0F 00
        je      L_006A                          ; 74 0E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lcall   [0x3ec]                         ; FF 1E EC 03
L_006A:
        test    si, 0x1610                      ; F7 C6 10 16
        je      L_0074                          ; 74 04
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
L_0074:
        test    si, 0x800                       ; F7 C6 00 08
        je      L_00C3                          ; 74 49
        lcall   [0x3cc]                         ; FF 1E CC 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        or      ax, word ptr [bx + 6]           ; 0B 47 06
        je      L_00B4                          ; 74 25
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        sbb     dx, word ptr [bx + 6]           ; 1B 57 06
        or      dx, dx                          ; 0B D2
        jl      L_00C3                          ; 7C 27
        jg      L_00A3                          ; 7F 05
        cmp     ax, 0x3a98                      ; 3D 98 3A
        jb      L_00C3                          ; 72 20
L_00A3:
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        jmp     L_00C3                          ; EB 0F
L_00B4:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
L_00C3:
        test    si, 0x100                       ; F7 C6 00 01
        je      L_0137                          ; 74 6E
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        mov     dx, di                          ; 8B D7
        mov     cl, 3                           ; B1 03
        shr     dx, cl                          ; D3 EA
        and     dx, 1                           ; 81 E2 01 00
        or      ax, dx                          ; 0B C2
        mov     cx, di                          ; 8B CF
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        je      L_0137                          ; 74 4C
        lcall   [0x3cc]                         ; FF 1E CC 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        or      ax, word ptr [bx + 6]           ; 0B 47 06
        je      L_011B                          ; 74 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        sbb     dx, word ptr [bx + 6]           ; 1B 57 06
        cmp     dx, 1                           ; 83 FA 01
        jl      L_0137                          ; 7C 29
        jg      L_0115                          ; 7F 05
        cmp     ax, 0x5f90                      ; 3D 90 5F
        jb      L_0137                          ; 72 22
L_0115:
        or      byte ptr [bp - 0xd], 0x80       ; 80 4E F3 80
        jmp     L_012C                          ; EB 11
L_011B:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     word ptr [bx + 6], dx           ; 89 57 06
        jmp     L_0137                          ; EB 0B
L_012C:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
L_0137:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x20                        ; 83 EC 20
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        lcall   [0x390]                         ; FF 1E 90 03
        mov     si, ax                          ; 8B F0
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_0181                          ; 74 13
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_017C                          ; 74 09
        or      si, si                          ; 0B F6
        jge     L_0186                          ; 7D 0F
L_0177:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01CE                          ; EB 52
L_017C:
        mov     ax, 0x4000                      ; B8 00 40
        jmp     L_01CE                          ; EB 4D
L_0181:
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_01CE                          ; EB 48
L_0186:
        push    si                              ; 56
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        lcall   [0x3dc]                         ; FF 1E DC 03
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0248                          ; E8 AA 00
        or      ax, ax                          ; 0B C0
        je      L_01AF                          ; 74 0D
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        lcall   [0x3f0]                         ; FF 1E F0 03
        or      ax, ax                          ; 0B C0
        jne     L_0177                          ; 75 C8
L_01AF:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 2], si           ; 89 77 02
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, bx                          ; 8B C3
L_01CE:
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        je      L_01F0                          ; 74 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_01F5                          ; 75 05
L_01F0:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_020A                          ; EB 15
L_01F5:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        lcall   [0x3d0]                         ; FF 1E D0 03
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_020A:
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
        sub     sp, 4                           ; 83 EC 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lcall   [0x3ec]                         ; FF 1E EC 03
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lcall   [0x3e4]                         ; FF 1E E4 03
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0248 -- offset 0x0248 -- 148 instr
; Dispatcher: tabla de decisiones cmp+jcc (148 instr).
; tags: calls_kernel, dispatcher
; calls (intra): sub_03E1
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_0248:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
L_0269:
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        cmp     byte ptr [bp + si - 0xa], 0     ; 80 7A F6 00
        jne     L_0269                          ; 75 F4
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     byte ptr [bp + si - 0xa], 0     ; C6 42 F6 00
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     byte ptr [bp + si - 0xa], 0x3a  ; C6 42 F6 3A
        mov     ax, 0x36b                       ; B8 6B 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x36a                       ; B8 6A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02AC                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_03DA                          ; E9 2E 01
L_02AC:
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        mov     word ptr [bp - 0x36], 1         ; C7 46 CA 01 00
        jmp     L_02CF                          ; EB 13
L_02BC:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x2c          ; 26 80 3F 2C
        jne     L_02CC                          ; 75 07
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0x36]            ; FF 46 CA
L_02CC:
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
L_02CF:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_02BC                          ; 75 E4
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 0xe], 0x11    ; 26 C6 47 0E 11
        mov     byte ptr es:[bx + 0xf], 0x13    ; 26 C6 47 0F 13
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x38], ss        ; 8C 56 C8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_02F8:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0303                          ; 7C 03
        jmp     L_03DA                          ; E9 D7 00
L_0303:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0344                          ; 74 38
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        or      ax, ax                          ; 0B C0
        je      L_032C                          ; 74 19
        cmp     ax, 1                           ; 3D 01 00
        je      L_0355                          ; 74 3D
        cmp     ax, 2                           ; 3D 02 00
        je      L_0386                          ; 74 69
        cmp     ax, 3                           ; 3D 03 00
        je      L_03A0                          ; 74 7E
        cmp     ax, 4                           ; 3D 04 00
        jne     L_032A                          ; 75 03
        jmp     L_03B8                          ; E9 8E 00
L_032A:
        jmp     L_0344                          ; EB 18
L_032C:
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E1                          ; E8 AA 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0344                          ; 74 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 1], si        ; 26 89 77 01
L_0344:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0353                          ; 75 03
        jmp     L_03D4                          ; E9 81 00
L_0353:
        jmp     L_0344                          ; EB EF
L_0355:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x6e          ; 26 80 3F 6E
        je      L_0364                          ; 74 06
        cmp     byte ptr es:[bx], 0x4e          ; 26 80 3F 4E
        jne     L_0368                          ; 75 04
L_0364:
        sub     al, al                          ; 2A C0
        jmp     L_037D                          ; EB 15
L_0368:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x6f          ; 26 80 3F 6F
        je      L_0377                          ; 74 06
        cmp     byte ptr es:[bx], 0x4f          ; 26 80 3F 4F
        jne     L_037B                          ; 75 04
L_0377:
        mov     al, 1                           ; B0 01
        jmp     L_037D                          ; EB 02
L_037B:
        mov     al, 2                           ; B0 02
L_037D:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        jmp     L_0344                          ; EB BE
L_0386:
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03E1                          ; E8 50 00
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0344                          ; 74 AD
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        jmp     L_0344                          ; EB A4
L_03A0:
        les     bx, ptr [bp - 0x3a]             ; C4 5E C6
        cmp     byte ptr es:[bx], 0x31          ; 26 80 3F 31
        jne     L_03AD                          ; 75 04
        sub     al, al                          ; 2A C0
        jmp     L_03AF                          ; EB 02
L_03AD:
        mov     al, 2                           ; B0 02
L_03AF:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        jmp     L_0344                          ; EB 8C
L_03B8:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        or      byte ptr es:[bx + 0xc], 8       ; 26 80 4F 0C 08
        or      byte ptr es:[bx + 0xc], 0x10    ; 26 80 4F 0C 10
        jmp     L_0344                          ; E9 70 FF
L_03D4:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_02F8                          ; E9 1E FF
L_03DA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E1 -- offset 0x03E1 -- 32 instr
; Funcion mediana (32 instr, 0 calls).
; tags: medium
; callers: sub_0248
;----------------------------------------------------------------------
L_03E1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_040B                          ; EB 16
L_03F5:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cwde                                    ; 98
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     word ptr [bp + 6]               ; FF 46 06
L_040B:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        or      al, al                          ; 0A C0
        jne     L_03F5                          ; 75 DD
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

GDI_TEXT ENDS

        END
