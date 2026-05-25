; AUTO-GENERATED from original WRITE segment 50
; segment_size=2267 bytes, flags=0xf130
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
        sub     sp, 0x6c                        ; 83 EC 6C
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x6a], 0         ; C7 46 96 00 00
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [0x1218]           ; 8B 3E 18 12
        mov     di, word ptr [di]               ; 8B 3D
        push    word ptr [bx + di + 2]          ; FF 71 02
        push    word ptr [bx + di]              ; FF 31
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ax                              ; 50
        call    far _entry_327                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x52], 0         ; 83 7E AE 00
        je      L_00B2                          ; 74 63
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 18 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        inc     ax                              ; 40
        je      L_00B2                          ; 74 54
        mov     si, bp                          ; 8B F5
        sub     si, 0x52                        ; 83 EE 52
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        jmp     L_009B                          ; EB 31
L_006A:
        and     byte ptr [si + 2], 0xc7         ; 80 64 02 C7
        and     byte ptr [si + 2], 0x3f         ; 80 64 02 3F
        mov     byte ptr [si + 3], 0            ; C6 44 03 00
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        and     al, 7                           ; 24 07
        cmp     al, 1                           ; 3C 01
        jne     L_0085                          ; 75 06
        and     byte ptr [si + 2], 0xf8         ; 80 64 02 F8
        jmp     L_0098                          ; EB 13
L_0085:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        and     al, 7                           ; 24 07
        cmp     al, 2                           ; 3C 02
        jne     L_0098                          ; 75 0A
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        and     al, 0xf8                        ; 24 F8
        or      al, 3                           ; 0C 03
        mov     byte ptr [si + 2], al           ; 88 44 02
L_0098:
        add     si, 4                           ; 83 C6 04
L_009B:
        cmp     word ptr [si], 0                ; 83 3C 00
        jne     L_006A                          ; 75 CA
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x6a]        ; 8B 5E 96
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 36 01 00 00 [FIXUP]
L_00B2:
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [0x1218]           ; 8B 3E 18 12
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     bx, word ptr [di]               ; 8B 1D
        mov     cx, word ptr [bx + si + 0x12]   ; 8B 48 12
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        cmp     cx, ax                          ; 3B C8
        jne     L_00F7                          ; 75 05
L_00F2:
        sub     ax, ax                          ; 2B C0
        jmp     L_01F6                          ; E9 FF 00
L_00F7:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 46 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_00F2                          ; 74 DF
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 65 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_0128                          ; 75 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_01F6                          ; E9 CE 00
L_0128:
        mov     ax, 0xfa4                       ; B8 A4 0F
        push    ax                              ; 50
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A B4 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bx + 6]               ; FF 77 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    far _entry_50                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0164                          ; 75 03
        jmp     L_01F3                          ; E9 8F 00
L_0164:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 61 03 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        je      L_01BA                          ; 74 2E
        sub     ax, word ptr [bx + 4]           ; 2B 47 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        add     word ptr [bx + 4], ax           ; 01 47 04
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx + 0xe]         ; 8B 77 0E
        add     si, word ptr [bp - 0x12]        ; 03 76 EE
        cmp     si, 0x2d0                       ; 81 FE D0 02
        jbe     L_01A8                          ; 76 04
        mov     ax, si                          ; 8B C6
        jmp     L_01AB                          ; EB 03
L_01A8:
        mov     ax, 0x2d0                       ; B8 D0 02
L_01AB:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     word ptr [bx + 0x1c], ax        ; 01 47 1C
L_01BA:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_01F3                          ; 74 2E
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        add     word ptr [bx + 2], ax           ; 01 47 02
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        add     si, word ptr [bp - 0x14]        ; 03 76 EC
        cmp     si, 0x5a0                       ; 81 FE A0 05
        jbe     L_01E1                          ; 76 04
        mov     ax, si                          ; 8B C6
        jmp     L_01E4                          ; EB 03
L_01E1:
        mov     ax, 0x5a0                       ; B8 A0 05
L_01E4:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     word ptr [bx + 0x14], ax        ; 01 47 14
L_01F3:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_01F6:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [0x1218]           ; 8B 3E 18 12
        mov     ax, word ptr [bx + si + 0x16]   ; 8B 40 16
        mov     bx, word ptr [di]               ; 8B 1D
        mov     cx, word ptr [bx + si + 0x14]   ; 8B 48 14
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        cmp     cx, ax                          ; 3B C8
        jne     L_0238                          ; 75 05
L_0233:
        sub     ax, ax                          ; 2B C0
        jmp     L_02D0                          ; E9 98 00
L_0238:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A 9C 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0233                          ; 74 DB
        mov     ax, 3                           ; B8 03 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_0274                          ; 75 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_02D0                          ; EB 5C
L_0274:
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        cmp     word ptr [bp - 0x10], 0x40      ; 83 7E F0 40
        jle     L_02AF                          ; 7E 29
L_0286:
        mov     ax, 0x40                        ; B8 40 00
        jmp     L_02B2                          ; EB 27
L_028B:
        push    word ptr [bp + 6]               ; FF 76 06
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_212                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        add     word ptr [bp - 4], 0x80         ; 81 46 FC 80 00
        push    word ptr [bp - 4]               ; FF 76 FC
        cmp     word ptr [bp - 0x10], 0x40      ; 83 7E F0 40
        jg      L_0286                          ; 7F D7
L_02AF:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_02B2:
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        sub     word ptr [bp - 0x10], 0x40      ; 83 6E F0 40
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jg      L_028B                          ; 7F C9
        mov     bx, word ptr [bp - 0xc]         ; 8B 5E F4
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
L_02D0:
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
; sub_02DD -- offset 0x02DD -- 278 instr
; Dispatcher: tabla de decisiones cmp+jcc (278 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_05C6, sub_0778
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_02DD:
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_02F8                          ; 75 05
L_02F3:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_033A                          ; EB 42
L_02F8:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_02FD:
        mov     ax, word ptr [0xc18]            ; A1 18 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_02F3                          ; 7D EE
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        and     al, 0x7f                        ; 24 7F
        cmp     al, 0xb                         ; 3C 0B
        je      L_0335                          ; 74 16
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bx + 0x1e]        ; 8B 5F 1E
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05C6                          ; E8 9A 02
        or      ax, ax                          ; 0B C0
        jne     L_0335                          ; 75 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_033A                          ; EB 05
L_0335:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_02FD                          ; EB C3
L_033A:
        pop     si                              ; 5E
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
        sub     sp, 0xd2                        ; 81 EC D2 00
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 9], 0            ; C6 46 F7 00
        cmp     byte ptr [bp - 0x4a], 0         ; 80 7E B6 00
        jne     L_0375                          ; 75 06
L_036F:
        mov     ax, 0x7fff                      ; B8 FF 7F
        jmp     L_05BA                          ; E9 45 02
L_0375:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02DD                          ; E8 5F FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_038C                          ; 74 06
        push    ax                              ; 50
        call    far _entry_205                  ; 9A FF FF 00 00 [FIXUP]
L_038C:
        call    far _entry_326                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_036F                          ; 74 D6
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_036F                          ; 74 C7
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03C3                          ; 74 06
        mov     bx, ax                          ; 8B D8
        or      byte ptr [bx + 5], 0x80         ; 80 4F 05 80
L_03C3:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 8], 2            ; C7 47 08 02 00
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 6], ax           ; 89 44 06
        and     al, 0xf                         ; 24 0F
        mov     cl, 3                           ; B1 03
        shl     al, cl                          ; D2 E0
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     cl, byte ptr [si + 4]           ; 8A 4C 04
        and     cl, 0x87                        ; 80 E1 87
        or      al, cl                          ; 0A C1
        mov     byte ptr [bx + 4], al           ; 88 47 04
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0x1e], ax        ; 89 47 1E
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_330                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0418                          ; 75 19
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 0x1e]       ; FF 70 1E
L_0410:
        call    far KERNEL.LOCALFREE            ; 9A D3 06 00 00 [FIXUP]
        jmp     L_036F                          ; E9 57 FF
L_0418:
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0xca]                 ; 8D 86 36 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_328                  ; 9A F7 06 00 00 [FIXUP]
        cmp     ax, 0x80                        ; 3D 80 00
        jne     L_0440                          ; 75 0B
        cmp     word ptr [bp - 0xc6], 0xab00    ; 81 BE 3A FF 00 AB
        jne     L_0440                          ; 75 03
        jmp     L_04D5                          ; E9 95 00
L_0440:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xcc], ax        ; 89 86 34 FF
        mov     word ptr [bp - 0xce], ax        ; 89 86 32 FF
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_0488                          ; 74 39
        cmp     word ptr [bp + 8], 5            ; 83 7E 08 05
        je      L_0488                          ; 74 33
L_0455:
        mov     ax, 0x2006                      ; B8 06 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
L_045E:
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        add     bx, word ptr [si]               ; 03 1C
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        add     bx, 5                           ; 83 C3 05
        mov     word ptr [bp - 0xd2], bx        ; 89 9E 2E FF
        and     byte ptr [bx], 0x80             ; 80 27 80
        mov     bx, word ptr [bp - 0xd2]        ; 8B 9E 2E FF
        or      byte ptr [bx], 0xb              ; 80 0F 0B
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        push    word ptr [bx + 0x1e]            ; FF 77 1E
        jmp     L_0410                          ; EB 88
L_0488:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        and     byte ptr [bx + 4], 0xfe         ; 80 67 04 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_329                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xce], ax        ; 89 86 32 FF
        mov     word ptr [bp - 0xcc], dx        ; 89 96 34 FF
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        cmp     dx, -1                          ; 83 FA FF
        jne     L_04B1                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_045E                          ; 74 AD
L_04B1:
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xce]        ; 8B 86 32 FF
        mov     dx, word ptr [bp - 0xcc]        ; 8B 96 34 FF
        add     ax, 0x7f                        ; 05 7F 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A 2C 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        jmp     L_05B7                          ; E9 E2 00
L_04D5:
        cmp     word ptr [bp - 0xca], 0xbe31    ; 81 BE 36 FF 31 BE
        je      L_04E0                          ; 74 03
        jmp     L_0455                          ; E9 75 FF
L_04E0:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xc8], ax        ; 39 86 38 FF
        je      L_04F1                          ; 74 08
        cmp     ax, 5                           ; 3D 05 00
        je      L_04F1                          ; 74 03
        jmp     L_0455                          ; E9 64 FF
L_04F1:
        cmp     word ptr [bp - 0x6a], 0         ; 83 7E 96 00
        jne     L_04FE                          ; 75 07
        mov     ax, word ptr [bp - 0xae]        ; 8B 86 52 FF
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
L_04FE:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        or      byte ptr [bx + 4], 1            ; 80 4F 04 01
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xbc]        ; 8B 86 44 FF
        mov     dx, word ptr [bp - 0xba]        ; 8B 96 46 FF
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        mov     ax, 0x80                        ; B8 80 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xbc]        ; 8B 86 44 FF
        mov     dx, word ptr [bp - 0xba]        ; 8B 96 46 FF
        add     ax, 0x7f                        ; 05 7F 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_157                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xb8]        ; 8B 86 48 FF
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xb6]        ; 8B 86 4A FF
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xb4]        ; 8B 86 4C FF
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xb2]        ; 8B 86 4E FF
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xb0]        ; 8B 86 50 FF
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0xae]        ; 8B 86 52 FF
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        mov     word ptr [bx + 0x18], ax        ; 89 47 18
        cmp     word ptr [bp + 8], 3            ; 83 7E 08 03
        je      L_05B7                          ; 74 36
        lea     ax, [bp - 0xac]                 ; 8D 86 54 FF
        push    ax                              ; 50
        call    far _entry_167                  ; 9A 9E 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_0594                          ; 75 03
        jmp     L_045E                          ; E9 CA FE
L_0594:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + si + 0x20], ax   ; 89 40 20
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 C8 01
        or      ax, ax                          ; 0B C0
        jne     L_05B7                          ; 75 03
        jmp     L_045E                          ; E9 A7 FE
L_05B7:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
L_05BA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05C6 -- offset 0x05C6 -- 42 instr
; Funcion mediana (42 instr, 1 calls).
; tags: far, medium
; callers: sub_02DD
; calls (intra): sub_061B
;----------------------------------------------------------------------
L_05C6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        jmp     L_05DF                          ; EB 0A
L_05D5:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_05DF                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0610                          ; EB 31
L_05DF:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_061B                          ; E8 2C 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_061B                          ; E8 19 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_05D5                          ; 74 CB
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
L_0610:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_061B -- offset 0x061B -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: far, small
; callers: sub_05C6
;----------------------------------------------------------------------
L_061B:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_182                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_063E                          ; 74 0A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        add     ax, 0x20                        ; 05 20 00
        jmp     L_0643                          ; EB 05
L_063E:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
L_0643:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_064E -- offset 0x064E -- 114 instr
; Funcion compleja: 114 instrucciones, 1 llamadas, 6 branches.
; tags: calls_kernel, complex, far
; callers: sub_0778
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_064E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x92                        ; 81 EC 92 00
        push    si                              ; 56
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 0xa]             ; F7 6E 0A
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [0x1218]           ; 8B 36 18 12
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        inc     ax                              ; 40
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     word ptr [bp - 0x8c], 0xa       ; C7 86 74 FF 0A 00
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 54 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_0699                          ; 75 06
L_0693:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_076C                          ; E9 D3 00
L_0699:
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
L_069F:
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        cmp     word ptr [bp - 0x8e], ax        ; 39 86 72 FF
        jl      L_06D9                          ; 7C 30
        add     word ptr [bp - 0x8c], 0xa       ; 83 86 74 FF 0A
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x90], ax        ; 89 86 70 FF
        push    word ptr [bp - 4]               ; FF 76 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A 65 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06D9                          ; 75 0A
L_06CF:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0693                          ; EB BA
L_06D9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jae     L_072E                          ; 73 4C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_328                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        cdq                                     ; 99
        or      dx, dx                          ; 0B D2
        jne     L_06CF                          ; 75 CB
        cmp     ax, 0x80                        ; 3D 80 00
        jne     L_06CF                          ; 75 C6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp - 0x8e]        ; 8B B6 72 FF
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        mov     dx, word ptr [bp - 0x86]        ; 8B 96 7A FF
        mov     word ptr [bx + si], ax          ; 89 00
        mov     word ptr [bx + si + 2], dx      ; 89 50 02
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        inc     word ptr [bp - 0x8a]            ; FF 86 76 FF
        jmp     L_069F                          ; E9 71 FF
L_072E:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bp - 0x8e]        ; 8B B6 72 FF
        shl     si, 1                           ; D1 E6
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bx + si], ax          ; 89 00
        mov     word ptr [bx + si + 2], dx      ; 89 50 02
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_076C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0778 -- offset 0x0778 -- 146 instr
; Funcion compleja: 146 instrucciones, 2 llamadas, 3 branches.
; tags: calls_kernel, complex, far
; callers: sub_018A, sub_02DD
; calls (intra): sub_064E
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0778:
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
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [si + 0xa]             ; FF 74 0A
        push    word ptr [si + 0xc]             ; FF 74 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_064E                          ; E8 AB FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_07AD                          ; 75 04
L_07A9:
        sub     ax, ax                          ; 2B C0
        jmp     L_0812                          ; EB 65
L_07AD:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + di + 0x1a], ax   ; 89 41 1A
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [si + 0xc]             ; FF 74 0C
        push    word ptr [si + 0xe]             ; FF 74 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_064E                          ; E8 71 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_07FB                          ; 75 18
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     di, ax                          ; 8B F8
        push    word ptr [bx + di + 0x1a]       ; FF 71 1A
        call    far KERNEL.LOCALFREE            ; 9A 11 04 00 00 [FIXUP]
        jmp     L_07A9                          ; EB AE
L_07FB:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + si + 0x1c], ax   ; 89 40 1C
        mov     ax, 1                           ; B8 01 00
L_0812:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     byte ptr [bp - 0xa], 0x27       ; C6 46 F6 27
        mov     byte ptr [bp - 9], 5            ; C6 46 F7 05
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 52 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_331                  ; 9A 58 08 00 00 [FIXUP]
        mov     byte ptr [bp - 7], al           ; 88 46 F9
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 67 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_331                  ; 9A 6D 08 00 00 [FIXUP]
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 7C 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_331                  ; 9A 82 08 00 00 [FIXUP]
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A 91 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_331                  ; 9A 97 08 00 00 [FIXUP]
        mov     byte ptr [bp - 5], al           ; 88 46 FB
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_247                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_331                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 4]          ; FF 70 04
        push    word ptr [bx + si + 2]          ; FF 70 02
        call    far _entry_224                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_08CE                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_08D0                          ; EB 02
L_08CE:
        sub     ax, ax                          ; 2B C0
L_08D0:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
