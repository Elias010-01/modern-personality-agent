; AUTO-GENERATED from original USER segment 16
; segment_size=1506 bytes, flags=0xf130
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
        sub     sp, 0x3a                        ; 83 EC 3A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_002E                          ; 75 03
        jmp     L_00E8                          ; E9 BA 00
L_002E:
        jbe     L_0033                          ; 76 03
        jmp     L_01C0                          ; E9 8D 01
L_0033:
        cmp     ax, 5                           ; 3D 05 00
        je      L_004B                          ; 74 13
        cmp     ax, 0xb                         ; 3D 0B 00
        jne     L_0040                          ; 75 03
        jmp     L_01A0                          ; E9 60 01
L_0040:
        cmp     ax, 0xc                         ; 3D 0C 00
        jne     L_0048                          ; 75 03
        jmp     L_0164                          ; E9 1C 01
L_0048:
        jmp     L_01D2                          ; E9 87 01
L_004B:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        test    byte ptr [si + 6], 0x80         ; F6 44 06 80
        je      L_008D                          ; 74 2F
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
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
L_008D:
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        sub     ax, word ptr [bp - 0x3a]        ; 2B 46 C6
        cdq                                     ; 99
        mov     cx, word ptr [si + 0x1e]        ; 8B 4C 1E
        idiv    cx                              ; F7 F9
        mov     word ptr [si + 0x28], ax        ; 89 44 28
        test    word ptr [si + 6], 0x200        ; F7 44 06 00 02
        jne     L_00C4                          ; 75 21
        cmp     word ptr [si + 0x30], ax        ; 39 44 30
        jle     L_00B3                          ; 7E 0B
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        mov     word ptr [si + 0x20], ax        ; 89 44 20
L_00AE:
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        jmp     L_00C1                          ; EB 0E
L_00B3:
        cmp     word ptr [si + 0x20], 0         ; 83 7C 20 00
        je      L_00C4                          ; 74 0B
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        cmp     word ptr [si + 0x28], ax        ; 39 44 28
        jl      L_00AE                          ; 7C ED
L_00C1:
        mov     word ptr [si + 0x30], ax        ; 89 44 30
L_00C4:
        mov     word ptr [si + 0x22], 1         ; C7 44 22 01 00
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        imul    word ptr [si + 0x1e]            ; F7 6C 1E
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        inc     ax                              ; 40
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        mov     word ptr [si + 0x1c], ax        ; 89 44 1C
L_00DF:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        jmp     L_0201                          ; E9 19 01
L_00E8:
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        jne     L_00DF                          ; 75 F1
        mov     ax, di                          ; 8B C7
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0107                          ; 75 10
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
L_0107:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [si + 0x34]            ; FF 74 34
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    si                              ; 56
        call    far _entry_516                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        push    word ptr [bp - 0x10]            ; FF 76 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0434                          ; E8 04 03
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
        or      di, di                          ; 0B FF
        jne     L_00DF                          ; 75 A3
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00DF                          ; EB 94
L_014B:
        push    si                              ; 56
        push    di                              ; 57
        call    L_020E                          ; E8 BE 00
        jmp     L_00DF                          ; EB 8D
L_0152:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_515                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00DF                          ; E9 7B FF
L_0164:
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B9                          ; E8 4C 02
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_514                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0180                          ; 75 03
        jmp     L_00DF                          ; E9 5F FF
L_0180:
        push    si                              ; 56
        call    far _entry_513                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00DF                          ; E9 56 FF
L_0189:
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_510                  ; 9A D0 02 00 00 [FIXUP]
        jmp     L_00DF                          ; E9 3F FF
L_01A0:
        or      di, di                          ; 0B FF
        jne     L_01A9                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01AB                          ; EB 02
L_01A9:
        sub     ax, ax                          ; 2B C0
L_01AB:
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfb                        ; 80 E1 FB
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        jmp     L_00DF                          ; E9 1F FF
L_01C0:
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_01ED                          ; 77 28
        cmp     ax, 0x200                       ; 3D 00 02
        jae     L_0152                          ; 73 88
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_01D2                          ; 75 03
        jmp     L_014B                          ; E9 79 FF
L_01D2:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_00DF                          ; E9 F2 FE
L_01ED:
        cmp     ax, 0x204                       ; 3D 04 02
        jb      L_01D2                          ; 72 E0
        cmp     ax, 0x205                       ; 3D 05 02
        ja      L_01FA                          ; 77 03
        jmp     L_0152                          ; E9 58 FF
L_01FA:
        cmp     ax, 0x401                       ; 3D 01 04
        je      L_0189                          ; 74 8A
        jmp     L_01D2                          ; EB D1
L_0201:
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
; sub_020E -- offset 0x020E -- 140 instr
; Dispatcher: tabla de decisiones cmp+jcc (140 instr).
; tags: calls_kernel, dispatcher
; callers: sub_01F1, sub_0346, sub_11CE
; calls (intra): sub_03B9, sub_0434, sub_050E
; calls (inter): KERNEL.GLOBALHANDLE
;----------------------------------------------------------------------
L_020E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_51                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0242                          ; 74 0E
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_512                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_0242:
        push    si                              ; 56
        call    far _entry_511                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      byte ptr [si + 6], 0x10         ; 80 4C 06 10
        or      byte ptr [si + 7], 8            ; 80 4C 07 08
        mov     di, word ptr [si + 0x10]        ; 8B 7C 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 8                           ; 3D 08 00
        je      L_0265                          ; 74 07
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_02DF                          ; 74 7C
        jmp     L_02E4                          ; EB 7F
L_0265:
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        cmp     word ptr [si + 0x10], ax        ; 39 44 10
        jne     L_0272                          ; 75 05
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        jmp     L_0275                          ; EB 03
L_0272:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
L_0275:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _SEG1_2E78                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_02A7                          ; 7C 22
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jle     L_02C7                          ; 7E 3C
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        dec     di                              ; 4F
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_02C7                          ; 74 2B
        push    si                              ; 56
        push    di                              ; 57
        call    far _entry_496                  ; 9A BB 02 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_02C7                          ; EB 20
L_02A7:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     di, word ptr [bp - 2]           ; 8B 7E FE
        test    word ptr [si + 6], 0x2000       ; F7 44 06 00 20
        je      L_02C7                          ; 74 0F
        push    si                              ; 56
        push    ax                              ; 50
        call    far _entry_496                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0x1a]        ; 3B 46 E6
        je      L_02C7                          ; 74 03
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
L_02C7:
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_510                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_050E                          ; E8 34 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        jmp     L_0351                          ; EB 72
L_02DF:
        mov     word ptr [bp + 4], 0x2e         ; C7 46 04 2E 00
L_02E4:
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jb      L_0349                          ; 72 5F
        cmp     word ptr [si + 0x30], 0         ; 83 7C 30 00
        je      L_02FE                          ; 74 0E
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        add     ax, word ptr [si + 0x10]        ; 03 44 10
        cmp     ax, word ptr [si + 0x30]        ; 3B 44 30
        jae     L_0349                          ; 73 4B
L_02FE:
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [si + 0xc], ax         ; 39 44 0C
        jne     L_030B                          ; 75 05
        mov     word ptr [bp - 0x1c], 1         ; C7 46 E4 01 00
L_030B:
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_050E                          ; E8 FD 01
        inc     ax                              ; 40
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp + 4]                    ; 8D 46 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], ss           ; 8C 56 FA
        push    ss                              ; 16
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    si                              ; 56
        test    word ptr [bp + 4], 0xff00       ; F7 46 04 00 FF
        jne     L_0334                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0337                          ; EB 03
L_0334:
        mov     ax, 2                           ; B8 02 00
L_0337:
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_509                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0351                          ; EB 08
L_0349:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_637F                  ; 9A FF FF 00 00 [FIXUP]
L_0351:
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    di                              ; 57
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0434                          ; E8 D6 00
        push    si                              ; 56
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_03B9                          ; E8 52 00
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _entry_508                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_037A -- offset 0x037A -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
; callers: sub_0434, sub_0579
;----------------------------------------------------------------------
L_037A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        mul     word ptr [bp + 0xa]             ; F7 66 0A
        add     ax, word ptr [si + 0x16]        ; 03 44 16
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03B9 -- offset 0x03B9 -- 59 instr
; Funcion mediana (59 instr, 1 calls).
; tags: calls_kernel, far, medium
; callers: sub_020E
; calls (inter): KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_03B9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [bp + 6], -1           ; 83 7E 06 FF
        jne     L_03D7                          ; 75 06
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_03D7:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        sub     di, word ptr [si + 0x2a]        ; 2B 7C 2A
        or      di, di                          ; 0B FF
        jge     L_03F9                          ; 7D 18
        push    si                              ; 56
        mov     ax, 0x114                       ; B8 14 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        sub     ax, di                          ; 2B C7
        neg     ax                              ; F7 D8
        jmp     L_0421                          ; EB 28
L_03F9:
        test    word ptr [si + 6], 0x200        ; F7 44 06 00 02
        je      L_0427                          ; 74 27
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        sub     di, word ptr [si + 0x2a]        ; 2B 7C 2A
        sub     di, word ptr [si + 0x28]        ; 2B 7C 28
        or      di, di                          ; 0B FF
        jle     L_0427                          ; 7E 1A
        push    si                              ; 56
        mov     ax, 0x114                       ; B8 14 01
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        add     ax, di                          ; 03 C7
L_0421:
        push    ax                              ; 50
        call    far _entry_517                  ; 9A FF FF 00 00 [FIXUP]
L_0427:
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
; sub_0434 -- offset 0x0434 -- 98 instr
; Iterador con instrucciones de string (movsb/scasb/...) (98 instr).
; tags: calls_gdi, calls_kernel, complex_iterator, far, string_op
; callers: sub_020E
; calls (intra): sub_037A, sub_0579
; calls (inter): GDI.SETBKMODE, GDI.TEXTOUT, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_0434:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        push    si                              ; 56
        push    di                              ; 57
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_037A                          ; E8 25 FF
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [si + 0xe]         ; 03 44 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0x7d00       ; C7 46 FA 00 7D
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        lea     si, [bp - 0xa]                  ; 8D 76 F6
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jge     L_0494                          ; 7D 05
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_0494:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_04B0                          ; 75 16
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1B34                  ; 9A FF FF 00 00 [FIXUP]
L_04B0:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A 2F 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        add     ax, di                          ; 03 C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A 5B 05 00 00 [FIXUP]
        test    word ptr [si + 6], 0x1000       ; F7 44 06 00 10
        jne     L_04F2                          ; 75 06
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        je      L_0501                          ; 74 0F
L_04F2:
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [si + 0x10]            ; FF 74 10
        push    word ptr [si + 0x12]            ; FF 74 12
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0579                          ; E8 78 00
L_0501:
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
; sub_050E -- offset 0x050E -- 47 instr
; Funcion mediana (47 instr, 2 calls).
; tags: calls_kernel, far, medium
; callers: sub_020E
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_050E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0568                          ; 74 3C
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        push    ax                              ; 50
        call    far _SEG1_5284                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     word ptr [si + 0xc], ax         ; 29 44 0C
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     word ptr [si + 0x14], ax        ; 89 44 14
L_0568:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0579 -- offset 0x0579 -- 51 instr
; Funcion mediana (51 instr, 1 calls).
; tags: medium
; callers: sub_0434
; calls (intra): sub_037A
;----------------------------------------------------------------------
L_0579:
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        test    byte ptr [si + 6], 4            ; F6 44 06 04
        jne     L_05D7                          ; 75 47
        test    byte ptr [si + 6], 8            ; F6 44 06 08
        jne     L_059D                          ; 75 07
        test    word ptr [si + 6], 0x1000       ; F7 44 06 00 10
        je      L_05D7                          ; 74 3A
L_059D:
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_037A                          ; E8 CF FD
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_037A                          ; E8 C1 FD
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        add     word ptr [bp - 4], ax           ; 01 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
L_05D7:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

USER_TEXT ENDS

        END
