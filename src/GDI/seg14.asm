; AUTO-GENERATED from original GDI segment 14
; segment_size=2774 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 39 instr
; Funcion mediana (39 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 8]               ; FF 77 08
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], dx      ; 26 89 57 0C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        je      L_004D                          ; 74 10
        les     bx, ptr [bx + 0x26]             ; C4 5F 26
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     dx, word ptr es:[bx + 0x14]     ; 26 8B 57 14
        les     bx, ptr [bp - 8]                ; C4 5E F8
        jmp     L_0059                          ; EB 0C
L_004D:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        mov     dx, word ptr [si + 0x28]        ; 8B 54 28
L_0059:
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        mov     word ptr es:[bx + 0x14], dx     ; 26 89 57 14
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_006E -- offset 0x006E -- 944 instr
; Iterador con instrucciones de string (movsb/scasb/...) (944 instr).
; tags: calls_kernel, complex_iterator, far, string_op
; calls (intra): sub_0A23, sub_0AB0
; calls (inter): KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_006E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 8]               ; FF 77 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x82                        ; 81 EC 82 00
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0x6e], 0         ; C7 46 92 00 00
        lea     di, [bp - 0x62]                 ; 8D 7E 9E
        lea     si, [bp + 0x14]                 ; 8D 76 14
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
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        sub     ax, word ptr [bp - 0x62]        ; 2B 46 9E
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        sub     ax, word ptr [bp - 0x60]        ; 2B 46 A0
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        sub     ax, word ptr [bp + 0xc]         ; 2B 46 0C
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        je      L_0114                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0117                          ; EB 03
L_0114:
        mov     ax, 1                           ; B8 01 00
L_0117:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        je      L_0127                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_012A                          ; EB 03
L_0127:
        mov     ax, 1                           ; B8 01 00
L_012A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_014A                          ; 74 17
        or      ax, ax                          ; 0B C0
        je      L_014A                          ; 74 13
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     si, word ptr [bp - 0x30]        ; 8B 76 D0
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        cmp     word ptr [bx + 0x10], ax        ; 39 47 10
        je      L_014A                          ; 74 05
        sub     ax, ax                          ; 2B C0
        jmp     L_06C0                          ; E9 76 05
L_014A:
        mov     ax, word ptr [bp - 0x42]        ; 8B 46 BE
        cmp     word ptr [bp - 0x4a], ax        ; 39 46 B6
        jg      L_0155                          ; 7F 03
        jmp     L_0328                          ; E9 D3 01
L_0155:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        cmp     word ptr [bp - 0x48], ax        ; 39 46 B8
        jg      L_0160                          ; 7F 03
        jmp     L_0328                          ; E9 C8 01
L_0160:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x42]        ; 8B 4E BE
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_0170                          ; 74 03
        jmp     L_0328                          ; E9 B8 01
L_0170:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x40]        ; 8B 4E C0
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_0180                          ; 74 03
        jmp     L_0328                          ; E9 A8 01
L_0180:
        cmp     word ptr [bp - 0x42], 0         ; 83 7E BE 00
        jg      L_0189                          ; 7F 03
        jmp     L_0328                          ; E9 9F 01
L_0189:
        or      cx, cx                          ; 0B C9
        jg      L_0190                          ; 7F 03
        jmp     L_0328                          ; E9 98 01
L_0190:
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        cmp     byte ptr [bx + 0x7f], 1         ; 80 7F 7F 01
        je      L_019C                          ; 74 03
        jmp     L_0328                          ; E9 8C 01
L_019C:
        cmp     byte ptr [bx + 0x7e], 1         ; 80 7F 7E 01
        je      L_01A5                          ; 74 03
        jmp     L_0328                          ; E9 83 01
L_01A5:
        cmp     word ptr [bp + 8], 0xcc         ; 81 7E 08 CC 00
        jne     L_01C9                          ; 75 1D
        cmp     word ptr [bp + 6], 0x20         ; 83 7E 06 20
        jne     L_01C9                          ; 75 17
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jne     L_01C4                          ; 75 0A
        mov     si, bx                          ; 8B F3
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        cmp     word ptr [bx + 0x18], ax        ; 39 47 18
        je      L_01C9                          ; 74 05
L_01C4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_01CB                          ; EB 02
L_01C9:
        sub     ax, ax                          ; 2B C0
L_01CB:
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x42]        ; 8B 4E BE
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x40]        ; 8B 4E C0
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        jne     L_0202                          ; 75 16
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    cx                              ; 51
        call    far _SEG1_0BE4                  ; 9A 0D 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        or      ax, ax                          ; 0B C0
        jne     L_0202                          ; 75 03
        jmp     L_06BD                          ; E9 BB 04
L_0202:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x42]            ; FF 76 BE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_0BE4                  ; 9A 25 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
        or      ax, ax                          ; 0B C0
        jne     L_021B                          ; 75 03
        jmp     L_0319                          ; E9 FE 00
L_021B:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far _SEG1_0BE4                  ; 9A 8A 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        or      ax, ax                          ; 0B C0
        jne     L_0233                          ; 75 03
        jmp     L_0311                          ; E9 DE 00
L_0233:
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        je      L_0244                          ; 74 0B
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        mov     ax, word ptr [bx + 0x26]        ; 8B 47 26
        mov     dx, word ptr [bx + 0x28]        ; 8B 57 28
        jmp     L_024D                          ; EB 09
L_0244:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x72]            ; FF 76 8E
        call    0                               ; E8 B3 FD
L_024D:
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x74]            ; FF 76 8C
        call    0                               ; E8 A4 FD
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x76]            ; FF 76 8A
        call    0                               ; E8 95 FD
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        jne     L_02B9                          ; 75 42
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x44]            ; FF 76 BC
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x40]            ; FF 76 C0
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        add     ax, 0x3c                        ; 05 3C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx]                            ; FF 1F
        mov     word ptr [bp - 0x46], 0         ; C7 46 BA 00 00
        mov     word ptr [bp - 0x44], 0         ; C7 46 BC 00 00
L_02B9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _entry_362           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_362           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        push    bx                              ; 53
        call    far _SEG1_1E37                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        jne     L_02FD                          ; 75 06
        push    word ptr [bp - 0x72]            ; FF 76 8E
        call    L_006E                          ; E8 71 FD
L_02FD:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        call    L_006E                          ; E8 6B FD
        push    word ptr [bp - 0x76]            ; FF 76 8A
        call    L_006E                          ; E8 65 FD
        push    word ptr [bp - 0x76]            ; FF 76 8A
        call    far _SEG1_1212                  ; 9A 15 03 00 00 [FIXUP]
L_0311:
        push    word ptr [bp - 0x74]            ; FF 76 8C
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
L_0319:
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        je      L_0322                          ; 74 03
        jmp     L_06BD                          ; E9 9B 03
L_0322:
        push    word ptr [bp - 0x72]            ; FF 76 8E
        jmp     L_06B8                          ; E9 90 03
L_0328:
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        cmp     word ptr [bp - 0x62], ax        ; 39 46 9E
        jle     L_0342                          ; 7E 12
        mov     ax, word ptr [bp - 0x62]        ; 8B 46 9E
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     ax, word ptr [bp - 0x5e]        ; 8B 46 A2
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
L_0342:
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        cmp     word ptr [bp - 0x60], ax        ; 39 46 A0
        jle     L_035C                          ; 7E 12
        mov     ax, word ptr [bp - 0x60]        ; 8B 46 A0
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     ax, word ptr [bp - 0x5c]        ; 8B 46 A4
        mov     word ptr [bp - 0x60], ax        ; 89 46 A0
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
L_035C:
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        jl      L_0367                          ; 7C 05
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        jmp     L_036C                          ; EB 05
L_0367:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        neg     ax                              ; F7 D8
L_036C:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        jl      L_037A                          ; 7C 05
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        jmp     L_037F                          ; EB 05
L_037A:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        neg     ax                              ; F7 D8
L_037F:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_0BE4                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        or      ax, ax                          ; 0B C0
        jne     L_0398                          ; 75 03
        jmp     L_06BD                          ; E9 25 03
L_0398:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    ax                              ; 50
        call    0                               ; E8 61 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     ax, word ptr [bx + 0x7c]        ; 8B 47 7C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 2                           ; 3D 02 00
        jne     L_03C9                          ; 75 16
        push    dx                              ; 52
        push    word ptr [bp - 0x14]            ; FF 76 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0AB0                          ; E8 F3 06
        mov     word ptr [bp - 0x2e], 0x86      ; C7 46 D2 86 00
        mov     word ptr [bp - 0x2c], 0xee      ; C7 46 D4 EE 00
        jmp     L_03F8                          ; EB 2F
L_03C9:
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jne     L_03E8                          ; 75 19
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_0AB0                          ; E8 D4 06
        mov     word ptr [bp - 0x2e], 0xc6      ; C7 46 D2 C6 00
        mov     word ptr [bp - 0x2c], 0x88      ; C7 46 D4 88 00
        jmp     L_03F8                          ; EB 10
L_03E8:
        cmp     word ptr [bp - 8], 3            ; 83 7E F8 03
        jne     L_03F8                          ; 75 0A
        mov     word ptr [bp - 0x2e], 0x20      ; C7 46 D2 20 00
        mov     word ptr [bp - 0x2c], 0xcc      ; C7 46 D4 CC 00
L_03F8:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x54], ax        ; 89 46 AC
        mov     word ptr [bp - 0x56], 1         ; C7 46 AA 01 00
        mov     word ptr [bp - 0x58], 0         ; C7 46 A8 00 00
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        jge     L_041A                          ; 7D 06
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        add     word ptr [bp - 0x50], ax        ; 01 46 B0
L_041A:
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        add     ax, word ptr [bp - 0x42]        ; 03 46 BE
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        jge     L_0439                          ; 7D 0D
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
        jmp     L_0444                          ; EB 0B
L_0439:
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
L_0444:
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        mov     ax, word ptr [bx + 0x2a]        ; 8B 47 2A
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     ax, word ptr [bx + 0x26]        ; 8B 47 26
        mov     dx, word ptr [bx + 0x28]        ; 8B 57 28
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x34]            ; FF 76 CC
        mov     ax, OFFSET _entry_367           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_367           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_365                  ; 9A D6 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x54], 1         ; C7 46 AC 01 00
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        jl      L_0487                          ; 7C 05
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        jmp     L_048C                          ; EB 05
L_0487:
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        neg     ax                              ; F7 D8
L_048C:
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        jl      L_049A                          ; 7C 05
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        jmp     L_04A0                          ; EB 06
L_049A:
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        add     ax, word ptr [bp - 0x4a]        ; 03 46 B6
L_04A0:
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     word ptr [bp - 0x52], 0         ; C7 46 AE 00 00
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        jl      L_04BB                          ; 7C 0D
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        jmp     L_04C6                          ; EB 0B
L_04BB:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     word ptr [bp - 0x36], 0         ; C7 46 CA 00 00
L_04C6:
        mov     bx, word ptr [bp - 0x30]        ; 8B 5E D0
        cmp     byte ptr [bx + 0x7e], 1         ; 80 7F 7E 01
        jne     L_04D5                          ; 75 06
        cmp     byte ptr [bx + 0x7f], 1         ; 80 7F 7F 01
        je      L_04DA                          ; 74 05
L_04D5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_04DC                          ; EB 02
L_04DA:
        sub     ax, ax                          ; 2B C0
L_04DC:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        cmp     byte ptr [bx + 0x7e], 1         ; 80 7F 7E 01
        jne     L_04EE                          ; 75 06
        cmp     byte ptr [bx + 0x7f], 1         ; 80 7F 7F 01
        je      L_04F3                          ; 74 05
L_04EE:
        mov     ax, 1                           ; B8 01 00
        jmp     L_04F5                          ; EB 02
L_04F3:
        sub     ax, ax                          ; 2B C0
L_04F5:
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0507                          ; 74 09
        or      ax, ax                          ; 0B C0
        jne     L_0507                          ; 75 05
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        jmp     L_050A                          ; EB 03
L_0507:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
L_050A:
        add     ax, 0x3c                        ; 05 3C 00
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], ds        ; 8C 5E DA
        cmp     word ptr [bp - 0x40], 0         ; 83 7E C0 00
        jl      L_051E                          ; 7C 05
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        jmp     L_0523                          ; EB 05
L_051E:
        mov     ax, word ptr [bp - 0x40]        ; 8B 46 C0
        neg     ax                              ; F7 D8
L_0523:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jl      L_0530                          ; 7C 05
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        jmp     L_0535                          ; EB 05
L_0530:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        neg     ax                              ; F7 D8
L_0535:
        cmp     ax, si                          ; 3B C6
        jl      L_053C                          ; 7C 03
        jmp     L_0644                          ; E9 08 01
L_053C:
        mov     word ptr [bp - 0x5a], 0         ; C7 46 A6 00 00
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jl      L_0554                          ; 7C 0D
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        jmp     L_056C                          ; EB 18
L_0554:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jl      L_055F                          ; 7C 05
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        jmp     L_0564                          ; EB 05
L_055F:
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        neg     ax                              ; F7 D8
L_0564:
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     word ptr [bp - 0x34], 0         ; C7 46 CC 00 00
L_056C:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_0BE4                  ; 9A F4 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x80], ax        ; 89 46 80
        or      ax, ax                          ; 0B C0
        jne     L_0590                          ; 75 03
        jmp     L_06AF                          ; E9 1F 01
L_0590:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    ax                              ; 50
        call    0                               ; E8 69 FA
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [bp - 8], 2            ; 83 7E F8 02
        jne     L_05A9                          ; 75 06
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_05B8                          ; EB 0F
L_05A9:
        cmp     word ptr [bp - 8], 1            ; 83 7E F8 01
        jne     L_05BC                          ; 75 0D
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0xffff                      ; B8 FF FF
L_05B8:
        push    ax                              ; 50
        call    L_0AB0                          ; E8 F4 04
L_05BC:
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x34]            ; FF 76 CC
        mov     ax, OFFSET _entry_366           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_366           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_365                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x4a], 0         ; 83 7E B6 00
        jge     L_05E6                          ; 7D 06
        mov     ax, word ptr [bp - 0x4a]        ; 8B 46 B6
        add     word ptr [bp - 0x4e], ax        ; 01 46 B2
L_05E6:
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        jge     L_05F2                          ; 7D 06
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        add     word ptr [bp - 0x4c], ax        ; 01 46 B4
L_05F2:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_060D                          ; 74 09
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     ax, word ptr [bx + 0x2a]        ; 8B 47 2A
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
L_060D:
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _entry_364           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_364           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        push    bx                              ; 53
        call    far _SEG1_1E37                  ; 9A A6 06 00 00 [FIXUP]
        push    word ptr [bp - 0x80]            ; FF 76 80
        call    L_006E                          ; E8 34 FA
        push    word ptr [bp - 0x80]            ; FF 76 80
        call    far _SEG1_1212                  ; 9A B9 06 00 00 [FIXUP]
        jmp     L_06AA                          ; EB 66
L_0644:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        mov     ax, word ptr [bx + 0x26]        ; 8B 47 26
        mov     dx, word ptr [bx + 0x28]        ; 8B 57 28
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        add     ax, word ptr [bp - 0x48]        ; 03 46 B8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     word ptr [bp - 0x2c], dx        ; 89 56 D4
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0683                          ; 74 06
        mov     ax, word ptr [bx + 0x2a]        ; 8B 47 2A
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
L_0683:
        mov     bx, word ptr [bp - 0x32]        ; 8B 5E CE
        push    word ptr [bx + 0x2c]            ; FF 77 2C
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _entry_363           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_363           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        push    bx                              ; 53
        call    far _SEG1_1E37                  ; 9A E8 02 00 00 [FIXUP]
L_06AA:
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
L_06AF:
        push    word ptr [bp - 0x7e]            ; FF 76 82
        call    L_006E                          ; E8 B9 F9
        push    word ptr [bp - 0x7e]            ; FF 76 82
L_06B8:
        call    far _SEG1_1212                  ; 9A 0D 03 00 00 [FIXUP]
L_06BD:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_06C0:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x18                            ; CA 18 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x58]         ; 26 FF 77 58
        push    word ptr es:[bx + 0x56]         ; 26 FF 77 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x12]         ; 26 FF 77 12
        push    word ptr es:[bx + 0x54]         ; 26 FF 77 54
        push    word ptr es:[bx + 0x52]         ; 26 FF 77 52
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 0x1a]         ; 26 FF 77 1A
        push    word ptr es:[bx + 0x14]         ; 26 FF 77 14
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        push    word ptr es:[bx + 0x3e]         ; 26 FF 77 3E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        add     ax, 0x3c                        ; 05 3C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr es:[bx + 0x40]     ; 26 8B 5F 40
        lcall   [bx]                            ; FF 1F
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
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x58]         ; 26 FF 77 58
        push    word ptr es:[bx + 0x56]         ; 26 FF 77 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x54]         ; 26 FF 77 54
        push    word ptr es:[bx + 0x52]         ; 26 FF 77 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 0x14]         ; 26 FF 77 14
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        push    word ptr es:[bx + 0x3e]         ; 26 FF 77 3E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        add     ax, 0x3c                        ; 05 3C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr es:[bx + 0x40]     ; 26 8B 5F 40
        lcall   [bx]                            ; FF 1F
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
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_08A2                          ; E9 0B 01
L_0797:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x1c]     ; 26 8B 47 1C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 0x1e]     ; 26 8B 47 1E
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        add     ax, word ptr [bp - 0xe]         ; 03 46 F2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_1D7C                  ; 9A 35 09 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07DB                          ; 75 03
        jmp     L_0895                          ; E9 BA 00
L_07DB:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x4c]         ; 26 FF 77 4C
        push    word ptr es:[bx + 0x4a]         ; 26 FF 77 4A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr es:[bx + 0x48]         ; 26 FF 77 48
        push    word ptr es:[bx + 0x46]         ; 26 FF 77 46
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        mov     ax, word ptr es:[bx + 0x26]     ; 26 8B 47 26
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        push    ax                              ; 50
        push    word ptr es:[bx + 0x28]         ; 26 FF 77 28
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr es:[bx + 0x3a]     ; 26 8B 5F 3A
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx]                            ; FF 1F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x4c]         ; 26 FF 77 4C
        push    word ptr es:[bx + 0x4a]         ; 26 FF 77 4A
        push    word ptr es:[bx + 0x50]         ; 26 FF 77 50
        push    word ptr es:[bx + 0x4e]         ; 26 FF 77 4E
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    L_0A23                          ; E8 E5 01
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x50]         ; 26 FF 77 50
        push    word ptr es:[bx + 0x4e]         ; 26 FF 77 4E
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr es:[bx + 0xa]      ; 26 2B 47 0A
        cdq                                     ; 99
        mov     cx, word ptr es:[bx + 0x2e]     ; 26 8B 4F 2E
        idiv    cx                              ; F7 F9
        push    dx                              ; 52
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        push    word ptr es:[bx + 0x3e]         ; 26 FF 77 3E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr es:[bx + 0x38]     ; 26 8B 5F 38
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx]                            ; FF 1F
L_0895:
        inc     word ptr [bp - 6]               ; FF 46 FA
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        add     word ptr [bp - 4], ax           ; 01 46 FC
L_08A2:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr es:[bx + 0x2a], ax     ; 26 39 47 2A
        jle     L_08B1                          ; 7E 03
        jmp     L_0797                          ; E9 E6 FE
L_08B1:
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        push    word ptr es:[bx + 0x32]         ; 26 FF 77 32
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr es:[bx + 0x36]         ; 26 FF 77 36
        mov     ax, OFFSET _entry_369           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_369           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        call    far _entry_365                  ; 9A 73 04 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        call    far _SEG1_1D7C                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0992                          ; 74 55
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x58]         ; 26 FF 77 58
        push    word ptr es:[bx + 0x56]         ; 26 FF 77 56
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x54]         ; 26 FF 77 54
        push    word ptr es:[bx + 0x52]         ; 26 FF 77 52
        mov     ax, word ptr es:[bx + 0x18]     ; 26 8B 47 18
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr es:[bx + 0x3e]         ; 26 FF 77 3E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        mov     bx, word ptr es:[bx + 0x38]     ; 26 8B 5F 38
        mov     ax, word ptr [bx + 0x30]        ; 8B 47 30
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr es:[bx + 0x44]         ; 26 FF 77 44
        push    word ptr es:[bx + 0x42]         ; 26 FF 77 42
        mov     bx, word ptr es:[bx + 0x40]     ; 26 8B 5F 40
        lcall   [bx]                            ; FF 1F
L_0992:
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
        push    si                              ; 56
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x58]         ; 26 FF 77 58
        push    word ptr es:[bx + 0x56]         ; 26 FF 77 56
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        push    ax                              ; 50
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     ax, word ptr es:[bx + 0xa]      ; 26 2B 47 0A
        push    ax                              ; 50
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x3e]         ; 26 FF 77 3E
        push    word ptr es:[bx + 0x3c]         ; 26 FF 77 3C
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0x30]        ; 8B 47 30
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr es:[bx + 0x44]         ; 26 FF 77 44
        push    word ptr es:[bx + 0x42]         ; 26 FF 77 42
        mov     bx, word ptr es:[bx + 0x40]     ; 26 8B 5F 40
        lcall   [bx]                            ; FF 1F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A23 -- offset 0x0A23 -- 66 instr
; Iterador con instrucciones de string (movsb/scasb/...) (66 instr).
; tags: complex_iterator, loop, string_op
; callers: sub_006E
;----------------------------------------------------------------------
L_0A23:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        push    ds                              ; 1E
        les     di, ptr [bp + 8]                ; C4 7E 08
        lds     si, ptr [bp + 0xc]              ; C5 76 0C
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        add     si, 0x20                        ; 83 C6 20
        add     di, 0x20                        ; 83 C7 20
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        cmp     word ptr [bp + 6], 8            ; 83 7E 06 08
        jne     L_0A58                          ; 75 13
L_0A45:
        test    cl, 7                           ; F6 C1 07
        jne     L_0A4D                          ; 75 03
        lodsb   al, byte ptr [si]               ; AC
        mov     ah, al                          ; 8A E0
L_0A4D:
        xor     al, al                          ; 32 C0
        rcl     ah, 1                           ; D0 D4
        sbb     al, al                          ; 1A C0
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0A45                          ; E2 EF
        jmp     L_0A87                          ; EB 2F
L_0A58:
        mov     bl, 0x80                        ; B3 80
L_0A5A:
        test    cl, 7                           ; F6 C1 07
        jne     L_0A60                          ; 75 01
        lodsb   al, byte ptr [si]               ; AC
L_0A60:
        rcl     al, 1                           ; D0 D0
        mov     dx, cx                          ; 8B D1
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        jae     L_0A75                          ; 73 0C
L_0A69:
        or      byte ptr es:[di], bl            ; 26 08 1D
        ror     bl, 1                           ; D0 CB
        adc     di, 0                           ; 83 D7 00
        loop    L_0A69                          ; E2 F6
        jmp     L_0A83                          ; EB 0E
L_0A75:
        mov     bh, bl                          ; 8A FB
        not     bh                              ; F6 D7
        and     byte ptr es:[di], bh            ; 26 20 3D
        ror     bl, 1                           ; D0 CB
        adc     di, 0                           ; 83 D7 00
        loop    L_0A75                          ; E2 F2
L_0A83:
        mov     cx, dx                          ; 8B CA
        loop    L_0A5A                          ; E2 D3
L_0A87:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        dec     cx                              ; 49
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     ax, word ptr es:[di + 6]        ; 26 8B 45 06
        add     di, 0x20                        ; 83 C7 20
        add     di, ax                          ; 03 F8
L_0A97:
        lds     si, ptr [bp + 8]                ; C5 76 08
        add     si, 0x20                        ; 83 C6 20
        mov     dx, cx                          ; 8B D1
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     cx, dx                          ; 8B CA
        loop    L_0A97                          ; E2 F0
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0AB0 -- offset 0x0AB0 -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_006E
;----------------------------------------------------------------------
L_0AB0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        cld                                     ; FC
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     ax, word ptr es:[di + 0xe]      ; 26 8B 45 0E
        mov     dl, byte ptr es:[di + 8]        ; 26 8A 55 08
        xor     dh, dh                          ; 32 F6
        mul     dx                              ; F7 E2
        mov     cx, ax                          ; 8B C8
        shr     cx, 1                           ; D1 E9
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     di, 0x20                        ; 83 C7 20
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

GDI_TEXT ENDS

        END
